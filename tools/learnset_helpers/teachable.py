import glob
import re
import json
import os

def parse_mon_name(name):
    return re.sub('(?!^)([A-Z]+)', r'_\1', name).upper()
    
tm_moves = []
tutor_moves = []

# scan incs
incs_to_check =  glob.glob('./data/scripts/*.inc') # all .incs in the script folder
incs_to_check += glob.glob('./data/maps/*/scripts.inc') # all map scripts
for file in incs_to_check:
    with open(file, 'r') as f2:
        raw = f2.read()
    if 'special ChooseMonForMoveTutor' in raw:
        for x in re.findall('setvar VAR_0x8005, (MOVE_.*)', raw):
            if not x in tutor_moves:
                tutor_moves.append(x)

# scan TMs and HMs
with open("./include/constants/tms_hms.h", 'r') as file:
    for x in re.findall('F\((.*)\)', file.read()):
        if not 'MOVE_' + x in tm_moves:
            tm_moves.append('MOVE_' + x)

# get compatibility from jsons
def construct_compatibility_dict(force_custom_check):
    dict_out = {}
    for pth in glob.glob('./tools/learnset_helpers/porymoves_files/*.json'):
        f = open(pth, 'r')
        data = json.load(f)
        for mon in data.keys():
            if not mon in dict_out:
                dict_out[mon] = []
            for move in data[mon]['LevelMoves']:
                if not move['Move'] in dict_out[mon]:
                    dict_out[mon].append(move['Move'])
            #for move in data[mon]['PreEvoMoves']:
            #    if not move in dict_out[mon]:
            #        dict_out[mon].append(move)
            for move in data[mon]['TMMoves']:
                if not move in dict_out[mon]:
                    dict_out[mon].append(move)
            for move in data[mon]['EggMoves']:
                if not move in dict_out[mon]:
                    dict_out[mon].append(move)
            for move in data[mon]['TutorMoves']:
                if not move in dict_out[mon]:
                    dict_out[mon].append(move)

    # if the file was not previously generated, check if there is custom data there that needs to be preserved
    with open("./src/data/pokemon/teachable_learnsets.h", 'r') as file:
        raw = file.read()
        if not "// DO NOT MODIFY THIS FILE!" in raw and force_custom_check == True:
            custom_teachable_compatibilities = {}
            for entry in re.findall("static const u16 s(.*)TeachableLearnset\[\] = {\n((.|\n)*?)\n};", raw):
                monname = parse_mon_name(entry[0])
                if monname == "NONE":
                    continue
                compatibility = entry[1].split("\n")
                if not monname in custom_teachable_compatibilities:
                    custom_teachable_compatibilities[monname] = []
                if not monname in dict_out:
                    # this mon is unknown, so all data needs to be preserved
                    for move in compatibility:
                        move = move.replace(",", "").strip()
                        if move == "" or move == "MOVE_UNAVAILABLE":
                            continue
                        custom_teachable_compatibilities[monname].append(move)
                else:
                    # this mon is known, so check if the moves in the old teachable_learnsets.h are not in the jsons
                    for move in compatibility:
                        move = move.replace(",", "").strip()
                        if move == "" or move == "MOVE_UNAVAILABLE":
                            continue
                        if not move in dict_out[monname]:
                            custom_teachable_compatibilities[monname].append(move)
            # actually store the data in custom.json
            if os.path.exists("./tools/learnset_helpers/porymoves_files/custom.json"):
                f2 = open("./tools/learnset_helpers/porymoves_files/custom.json", "r")
                custom_json = json.load(f2)
                f2.close()
            else:
                custom_json = {}
            for x in custom_teachable_compatibilities:
                if len(custom_teachable_compatibilities[x]) == 0:
                    continue
                if not x in custom_json:
                    custom_json[x] = {"LevelMoves": [], "PreEvoMoves": [], "TMMoves": [], "EggMoves": [], "TutorMoves": []}
                for move in custom_teachable_compatibilities[x]:
                    custom_json[x]["TutorMoves"].append(move)
                f2 = open("./tools/learnset_helpers/porymoves_files/custom.json", "w")
                f2.write(json.dumps(custom_json, indent=2))
                f2.close()
            print("FIRST RUN: Updated custom.json with teachable_learnsets.h's data")
            # rerun the process
            dict_out = construct_compatibility_dict(False)
    return dict_out

compatibility_dict = construct_compatibility_dict(True)

# actually prepare the file
with open("./src/data/pokemon/teachable_learnsets.h", 'r') as file:
    out = file.read()
    list_of_mons = re.findall('static const u16 s(.*)TeachableLearnset', out)
for mon in list_of_mons:
    mon_parsed = parse_mon_name(mon)
    tm_learnset = []
    tutor_learnset = []
    if mon_parsed == "NONE":
        continue
    if not mon_parsed in compatibility_dict:
        print("Unable to find %s in json" % mon)
        continue
    for move in tm_moves:
        if move in tm_learnset:
            continue
        if move in compatibility_dict[mon_parsed]:
            tm_learnset.append(move)
            continue
    for move in tutor_moves:
        if move in tutor_learnset:
            continue
        if move in compatibility_dict[mon_parsed]:
            tutor_learnset.append(move)
            continue
    tm_learnset.sort()
    tutor_learnset.sort()
    tm_learnset += tutor_learnset
    repl = "static const u16 s%sTeachableLearnset[] = {\n    " % mon
    if len(tm_learnset) > 0:
        repl += ",\n    ".join(tm_learnset) + ",\n    "
    repl += "MOVE_UNAVAILABLE,\n};"
    newout = re.sub('static const u16 s%sTeachableLearnset\[\] = {[\s\S]*?};' % mon, repl, out)
    if newout != out:
        out = newout
        print("Updated %s" % mon)

# add/update header
header = "//\n// DO NOT MODIFY THIS FILE!\n//\n\n"
if not "// DO NOT MODIFY THIS FILE!" in out:
    out = header + out
else:
    out = re.sub("\/\/\n\/\/ DO NOT MODIFY THIS FILE!(.|\n)*?\*\/", header, out)

with open("./src/data/pokemon/teachable_learnsets.h", 'w') as file:
    file.write(out)
