#include "constants/battle_anim.h"
	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2, 0










	.align 2
gUnknown_08595340:: @ 8595340
	.2byte 0x0010, 0x0004, 0x0020, 0x0004, 0x0030, 0x0004, 0xfffe, 0x0000

	.align 2
gUnknown_08595350:: @ 8595350
	.2byte 0x0010, 0x00c4, 0x0020, 0x00c4, 0x0030, 0x00c4, 0xfffe, 0x0000

	.align 2
gUnknown_08595360:: @ 8595360
	.4byte gUnknown_08595340
	.4byte gUnknown_08595350

	.align 2
gUnknown_08595368:: @ 8595368
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08595360, NULL, gDummySpriteAffineAnimTable, sub_8108EC8

	.align 2
gUnknown_08595380:: @ 8595380
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08595360, NULL, gDummySpriteAffineAnimTable, sub_8108F08

	.align 2
gUnknown_08595398:: @ 8595398
	.2byte 0x0000, 0x0003, 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003
	.2byte 0x0040, 0x0003, 0x0050, 0x0003, 0x0060, 0x0003, 0x0070, 0x0003
	.2byte 0xfffe, 0x0000

	.align 2
gUnknown_085953BC:: @ 85953BC
	.4byte gUnknown_08595398

	.align 2
gUnknown_085953C0:: @ 85953C0
	.2byte 0x0000, 0x0005, 0x0010, 0x0005, 0x0020, 0x0005, 0x0030, 0x0005
	.2byte 0x0040, 0x0005, 0xfffe, 0x0000

	.align 2
gUnknown_085953D8:: @ 85953D8
	.4byte gUnknown_085953C0

	.align 2
gUnknown_085953DC:: @ 85953DC
	.2byte 0x0032, 0x0100, 0x0000, 0x0000, 0x0020, 0x0000, 0x0700, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085953F4:: @ 85953F4
	.4byte gUnknown_085953DC

	.align 2
gUnknown_085953F8:: @ 85953F8
	spr_template ANIM_TAG_FIRE, ANIM_TAG_FIRE, gUnknown_08524974, gUnknown_085953BC, NULL, gUnknown_085953F4, sub_8108FBC

	.align 2
gUnknown_08595410:: @ 8595410
	spr_template ANIM_TAG_FIRE, ANIM_TAG_FIRE, gUnknown_08524914, gUnknown_085953BC, NULL, gDummySpriteAffineAnimTable, sub_8108FBC

	.align 2
gUnknown_08595428:: @ 8595428
	spr_template ANIM_TAG_FIRE_PLUME, ANIM_TAG_FIRE_PLUME, gUnknown_08524914, gUnknown_085953D8, NULL, gDummySpriteAffineAnimTable, sub_8108F4C

	.align 2
gUnknown_08595440:: @ 8595440
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085953D8, NULL, gDummySpriteAffineAnimTable, sub_8108F4C

	.align 2
gUnknown_08595458:: @ 8595458
	.2byte 0x0010, 0x0006, 0x0020, 0x0006, 0x0030, 0x0006, 0xfffe, 0x0000

	.align 2
gUnknown_08595468:: @ 8595468
	.4byte gUnknown_08595458

	.align 2
gUnknown_0859546C:: @ 859546C
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08595468, NULL, gDummySpriteAffineAnimTable, sub_8109064

	.align 2
gUnknown_08595484:: @ 8595484
	.2byte 0x0050, 0x0050, 0x0000, 0x0000, 0x0002, 0x0002, 0x010a, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_0859549C:: @ 859549C
	.4byte gUnknown_08595484

	.align 2
gUnknown_085954A0:: @ 85954A0
	spr_template ANIM_TAG_SUNLIGHT, ANIM_TAG_SUNLIGHT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_0859549C, sub_810916C

	.align 2
gUnknown_085954B8:: @ 85954B8
	.2byte 0x0000, 0x0004, 0x0010, 0x0004, 0x0020, 0x0004, 0x0030, 0x0004
	.2byte 0x0040, 0x0004, 0xfffe, 0x0000

	.align 2
gUnknown_085954D0:: @ 85954D0
	.4byte gUnknown_085954B8

	.align 2
gEmberSpriteTemplate:: @ 85954D4
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, TranslateAnimSpriteToTargetMonLocation

	.align 2
gEmberFlareSpriteTemplate:: @ 85954EC
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_8109198

	.align 2
gUnknown_08595504:: @ 8595504
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_8109200

	.align 2
gUnknown_0859551C:: @ 859551C
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_810921C

	.align 2
gUnknown_08595534:: @ 8595534
	.2byte 0x0020, 0x0006, 0x0030, 0x0006, 0xfffe, 0x0000

	.align 2
gUnknown_08595540:: @ 8595540
	.4byte gUnknown_08595534

	.align 2
gUnknown_08595544:: @ 8595544
	.2byte 0x0000, 0x0000, 0x0100, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595554:: @ 8595554
	.2byte 0x00a0, 0x00a0, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595564:: @ 8595564
	.4byte gUnknown_08595544
	.4byte gUnknown_08595554

	.align 2
gUnknown_0859556C:: @ 859556C
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08595540, NULL, gDummySpriteAffineAnimTable, sub_8109364

	.align 2
gBattleAnimSpriteTemplate_8595584:: @ 8595584
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_81093A4

	.align 2
gUnknown_0859559C:: @ 859559C
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_80A8EE4

	.align 2
gUnknown_085955B4:: @ 85955B4
	spr_template ANIM_TAG_WARM_ROCK, ANIM_TAG_WARM_ROCK, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81098EC

	.align 2
gUnknown_085955CC:: @ 85955CC
	.2byte 0xfffe, 0xfffb, 0xffff, 0xffff, 0x0003, 0xfffa, 0x0004, 0xfffe
	.2byte 0x0002, 0xfff8, 0xfffb, 0xfffb, 0x0004, 0xfff9

	.align 2
gUnknown_085955E8:: @ 85955E8
	spr_template ANIM_TAG_WARM_ROCK, ANIM_TAG_WARM_ROCK, gUnknown_08524914, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8109A10

	.align 2
gUnknown_08595600:: @ 8595600
	.2byte 0x0000, 0x0005, 0x0004, 0x0005, 0x0008, 0x0005, 0x000c, 0x0005, 0xfffe, 0x0000

	.align 2
gUnknown_08595614:: @ 8595614
	.2byte 0x0010, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_0859561C:: @ 859561C
	.2byte 0x0014, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_08595624:: @ 8595624
	.2byte 0x0014, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_0859562C:: @ 859562C
	.4byte gUnknown_08595600
	.4byte gUnknown_08595614
	.4byte gUnknown_0859561C
	.4byte gUnknown_08595624

	.align 2
gUnknown_0859563C:: @ 859563C
	spr_template ANIM_TAG_WISP_ORB, ANIM_TAG_WISP_ORB, gUnknown_0852490C, gUnknown_0859562C, NULL, gDummySpriteAffineAnimTable, sub_8109AFC

	.align 2
gUnknown_08595654:: @ 8595654
	.2byte 0x0000, 0x0005, 0x0010, 0x0005, 0x0020, 0x0005, 0x0030, 0x0005, 0xfffe, 0x0000

	.align 2
gUnknown_08595668:: @ 8595668
	.4byte gUnknown_08595654

	.align 2
gUnknown_0859566C:: @ 859566C
	spr_template ANIM_TAG_WISP_FIRE, ANIM_TAG_WISP_FIRE, gUnknown_08524914, gUnknown_08595668, NULL, gDummySpriteAffineAnimTable, sub_8109CB0

	.align 2
gUnknown_08595684:: @ 8595684
	.2byte 0xffff, 0x0100, 0x0001, 0xff00, 0x01ff, 0x0001, 0xff00, 0x0100

	.align 2
gUnknown_08595694:: @ 8595694
	.2byte 0x00ff, 0x0001, 0x01ff, 0xff00, 0x0100, 0xff00, 0x0100, 0x0100

	.align 2
gUnknown_085956A4:: @ 85956A4
	.2byte 0x0000, 0x0005, 0x0010, 0x0005, 0x0020, 0x0008, 0x0030, 0x0005
	.2byte 0x0040, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_085956BC:: @ 85956BC
	.4byte gUnknown_085956A4

	.align 2
gUnknown_085956C0:: @ 85956C0
	spr_template ANIM_TAG_LIGHTNING, ANIM_TAG_LIGHTNING, gUnknown_08524914, gUnknown_085956BC, NULL, gDummySpriteAffineAnimTable, sub_810A1A8

	.align 2
gUnknown_085956D8:: @ 85956D8
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0x0000, 0x0000, 0x1400, 0x0000
	.2byte 0x0000, 0x0000, 0x3cf0, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085956F8:: @ 85956F8
	.4byte gUnknown_085956D8

	.align 2
gUnknown_085956FC:: @ 85956FC
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524974, gDummySpriteAnimTable, NULL, gUnknown_085956F8, sub_810A214

	.align 2
gUnknown_08595714:: @ 8595714
	.2byte 0x0000, 0x0005, 0x0010, 0x0005, 0x0020, 0x0005, 0x0030, 0x0005
	.2byte 0x0040, 0x0005, 0x0050, 0x0005, 0xfffe, 0x0000

	.align 2
gUnknown_08595730:: @ 8595730
	.4byte gUnknown_08595714

	.align 2
gUnknown_08595734:: @ 8595734
	spr_template 0x275f, 0x275f, gUnknown_08524914, gUnknown_08595730, NULL, gDummySpriteAffineAnimTable, sub_810A274

	.align 2
gBattleAnimSpriteTemplate_859574C:: @ 859574C
	spr_template ANIM_TAG_SPARK_2, ANIM_TAG_SPARK_2, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810A308

	.align 2
gUnknown_08595764:: @ 8595764
	spr_template ANIM_TAG_BLACK_BALL_2, ANIM_TAG_BLACK_BALL_2, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, TranslateAnimSpriteToTargetMonLocation

	.align 2
gUnknown_0859577C:: @ 859577C
	.2byte 0x0000, 0x0000, 0x0114, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859578C:: @ 859578C
	.4byte gUnknown_0859577C

	.align 2
gUnknown_08595790:: @ 8595790
	spr_template ANIM_TAG_SPARK_2, ANIM_TAG_SPARK_2, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_0859578C, sub_810A46C

	.align 2
gUnknown_085957A8:: @ 85957A8
	.2byte 0x0000, 0x0006, 0x0010, 0x0006, 0x0020, 0x0006, 0xfffe, 0x0000

	.align 2
gUnknown_085957B8:: @ 85957B8
	.4byte gUnknown_085957A8

	.align 2
gUnknown_085957BC:: @ 85957BC
	.2byte 0x00e8, 0x00e8, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0a00, 0x0000
	.2byte 0x0008, 0x0008, 0x0a00, 0x0000, 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_085957DC:: @ 85957DC
	.4byte gUnknown_085957BC

	.align 2
gBattleAnimSpriteTemplate_85957E0:: @ 85957E0
	spr_template ANIM_TAG_SHOCK_3, ANIM_TAG_SHOCK_3, gUnknown_08524974, gUnknown_085957B8, NULL, gUnknown_085957DC, sub_810A5BC

	.align 2
gBattleAnimSpriteTemplate_85957F8:: @ 85957F8
	spr_template ANIM_TAG_SPARK_2, ANIM_TAG_SPARK_2, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_0859578C, sub_810A628

	.align 2
gElectricitySpriteTemplate:: @ 8595810
	spr_template ANIM_TAG_SPARK_2, ANIM_TAG_SPARK_2, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810A75C

	.align 2
gUnknown_08595828:: @ 8595828
	spr_template ANIM_TAG_SPARK, ANIM_TAG_SPARK, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810A9DC

	.align 2
gUnknown_08595840:: @ 8595840
	spr_template 0x27bd, 0x27bd, gUnknown_08524934, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810AA2C

	.align 2
gUnknown_08595858:: @ 8595858
	.byte 0x3a, 0xc4, 0xc8, 0xdc, 0x08, 0xc8, 0xf0, 0x38
	.byte 0x3a, 0xf6, 0xc6, 0x0a, 0x30, 0xee, 0xf8, 0x38
	.byte 0x10, 0xc8, 0xc6, 0xd6, 0x3a, 0x1e, 0xd0, 0x28
	.byte 0x0c, 0xd0, 0x30, 0xf4, 0xc8, 0x12, 0x30, 0x30

	.align 2
gUnknown_08595878:: @ 8595878
	.2byte 0x0003, 0x0001, 0x0002, 0x0001, 0x0001, 0x0001, 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_0859588C:: @ 859588C
	.2byte 0x0000, 0x0005, 0x0001, 0x0005, 0x0002, 0x0005, 0x0003, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_085958A0:: @ 85958A0
	.4byte gUnknown_08595878
	.4byte gUnknown_0859588C

	.align 2
gUnknown_085958A8:: @ 85958A8
	spr_template ANIM_TAG_ELECTRIC_ORBS, ANIM_TAG_ELECTRIC_ORBS, gUnknown_08524904, gUnknown_085958A0, NULL, gDummySpriteAffineAnimTable, SpriteCallbackDummy

	.align 2
gUnknown_085958C0:: @ 85958C0
	.2byte 0x0010, 0x0010, 0x0000, 0x0000, 0x0004, 0x0004, 0x3c00, 0x0000
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0x7ffd, 0x0000, 0x0000, 0x0000
	.2byte 0xfffc, 0xfffc, 0x0500, 0x0000, 0x0004, 0x0004, 0x0500, 0x0000
	.2byte 0x7ffd, 0x000a, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595900:: @ 8595900
	.2byte 0x0010, 0x0010, 0x0000, 0x0000, 0x0008, 0x0008, 0x1e00, 0x0000
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0xfffc, 0xfffc, 0x0500, 0x0000
	.2byte 0x0004, 0x0004, 0x0500, 0x0000, 0x7ffe, 0x0003, 0x0000, 0x0000

	.align 2
gUnknown_08595930:: @ 8595930
	.2byte 0x0010, 0x0010, 0x0000, 0x0000, 0x0008, 0x0008, 0x1e00, 0x0000
	.2byte 0xfff8, 0xfff8, 0x1e00, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595950:: @ 8595950
	.4byte gUnknown_085958C0
	.4byte gUnknown_08595900
	.4byte gUnknown_08595930

	.align 2
gUnknown_0859595C:: @ 859595C
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08595950, sub_810ACD8

	.align 2
gUnknown_08595974:: @ 8595974
	.2byte 0x0000, 0x0003, 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_08595988:: @ 8595988
	.4byte gUnknown_08595974

	.align 2
gUnknown_0859598C:: @ 859598C
	spr_template ANIM_TAG_ELECTRICITY, ANIM_TAG_ELECTRICITY, gUnknown_08524914, gUnknown_08595988, NULL, gDummySpriteAffineAnimTable, sub_810AD30

	.align 2
gUnknown_085959A4:: @ 85959A4
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08595950, sub_810AD98

	.align 2
gUnknown_085959BC:: @ 85959BC
	.2byte 0x0000, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_085959C4:: @ 85959C4
	.2byte 0x0002, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_085959CC:: @ 85959CC
	.2byte 0x0004, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_085959D4:: @ 85959D4
	.2byte 0x0006, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_085959DC:: @ 85959DC
	.4byte gUnknown_085959BC
	.4byte gUnknown_085959C4
	.4byte gUnknown_085959CC
	.4byte gUnknown_085959D4

	.align 2
gUnknown_085959EC:: @ 85959EC
	.2byte 0x0100, 0x0100, 0x0040, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085959FC:: @ 85959FC
	.4byte gUnknown_085959EC

	.align 2
gUnknown_08595A00:: @ 8595A00
	spr_template ANIM_TAG_SPARK, ANIM_TAG_SPARK, gUnknown_08524A04, gUnknown_085959DC, NULL, gUnknown_085959FC, sub_810B1F0

	.align 2
gUnknown_08595A18:: @ 8595A18
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08595950, sub_810B23C

	.align 2
gUnknown_08595A30:: @ 8595A30
	spr_template ANIM_TAG_SPARK, ANIM_TAG_SPARK, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810B51C

	.align 2
gUnknown_08595A48:: @ 8595A48
	.2byte 0x0000, 0x0045, 0x0001, 0x0045, 0xfffe, 0x0000

	.align 2
gUnknown_08595A54:: @ 8595A54
	.4byte gUnknown_08595A48

	.align 2
gUnknown_08595A58:: @ 8595A58
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810B6C4

	.align 2
gUnknown_08595A70:: @ 8595A70
	.2byte 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595A78:: @ 8595A78
	.2byte 0x0004, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595A80:: @ 8595A80
	.2byte 0x0006, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595A88:: @ 8595A88
	.2byte 0x0007, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595A90:: @ 8595A90
	.2byte 0x0008, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595A98:: @ 8595A98
	.2byte 0x000c, 0x0006, 0x000d, 0x0006, 0xfffe, 0x0000

	.align 2
gUnknown_08595AA4:: @ 8595AA4
	.4byte gUnknown_08595A70

	.align 2
gUnknown_08595AA8:: @ 8595AA8
	.4byte gUnknown_08595A78

	.align 2
gUnknown_08595AAC:: @ 8595AAC
	.4byte gUnknown_08595A80

	.align 2
gUnknown_08595AB0:: @ 8595AB0
	.4byte gUnknown_08595A88

	.align 2
gUnknown_08595AB4:: @ 8595AB4
	.4byte gUnknown_08595A90

	.align 2
gUnknown_08595AB8:: @ 8595AB8
	.4byte gUnknown_08595A98

	.align 2
gUnknown_08595ABC:: @ 8595ABC
	.2byte 0x0000, 0x0000, 0x0128, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595ACC:: @ 8595ACC
	.4byte gUnknown_08595ABC

	.align 2
gUnknown_08595AD0:: @ 8595AD0
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524B24, gUnknown_08595AA8, NULL, gUnknown_08595ACC, sub_810B8AC

	.align 2
gUnknown_08595AE8:: @ 8595AE8
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524A24, gUnknown_08595AAC, NULL, gDummySpriteAffineAnimTable, sub_810B8AC

	.align 2
gUnknown_08595B00:: @ 8595B00
	.2byte 0x0000, 0x0000, 0x010a, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595B10:: @ 8595B10
	.4byte gUnknown_08595B00

	.align 2
gUnknown_08595B14:: @ 8595B14
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524AC4, gUnknown_08595AA8, NULL, gUnknown_08595B10, sub_810B8EC

	.align 2
gUnknown_08595B2C:: @ 8595B2C
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524A24, gUnknown_08595AAC, NULL, gDummySpriteAffineAnimTable, sub_810B8EC

	.align 2
gUnknown_08595B44:: @ 8595B44
	.2byte 0x00ce, 0x00ce, 0x0000, 0x0000, 0x0005, 0x0005, 0x0a00, 0x0000
	.2byte 0x0000, 0x0000, 0x0600, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595B64:: @ 8595B64
	.4byte gUnknown_08595B44

	.align 2
gUnknown_08595B68:: @ 8595B68
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524AC4, gUnknown_08595AA8, NULL, gUnknown_08595B64, sub_810B974

	.align 2
gUnknown_08595B80:: @ 8595B80
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524A84, gUnknown_08595AAC, NULL, gUnknown_08595B64, sub_810B974

	.align 2
gUnknown_08595B98:: @ 8595B98
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524904, gUnknown_08595AB0, NULL, gDummySpriteAffineAnimTable, sub_810BA24

	.align 2
gUnknown_08595BB0:: @ 8595BB0
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_0852490C, gUnknown_08595AB4, NULL, gDummySpriteAffineAnimTable, sub_810BC94

	.align 2
gUnknown_08595BC8:: @ 8595BC8
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524904, gUnknown_08595AB0, NULL, gDummySpriteAffineAnimTable, sub_810BC94

	.align 2
gUnknown_08595BE0:: @ 8595BE0
	.2byte 0x0000, 0x0005, 0x0002, 0x0005, 0x0004, 0x0005, 0x0006, 0x0005
	.2byte 0x0004, 0x0005, 0x0002, 0x0005, 0x0000, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_08595C00:: @ 8595C00
	.4byte gUnknown_08595BE0

	.align 2
gUnknown_08595C04:: @ 8595C04
	spr_template ANIM_TAG_ICE_SPIKES, ANIM_TAG_ICE_SPIKES, gUnknown_08524A64, gUnknown_08595C00, NULL, gDummySpriteAffineAnimTable, sub_810BE48

	.align 2
gUnknown_08595C1C:: @ 8595C1C
	.2byte 0x0000, 0x0008, 0x0008, 0x0008, 0xfffe, 0x0000

	.align 2
gUnknown_08595C28:: @ 8595C28
	.4byte gUnknown_08595C1C

	.align 2
gUnknown_08595C2C:: @ 8595C2C
	spr_template ANIM_TAG_MIST_CLOUD, ANIM_TAG_MIST_CLOUD, gUnknown_08524A54, gUnknown_08595C28, NULL, gDummySpriteAffineAnimTable, sub_810BED0

	.align 2
gUnknown_08595C44:: @ 8595C44
	spr_template ANIM_TAG_PURPLE_GAS_CLOUD, ANIM_TAG_PURPLE_GAS_CLOUD, gUnknown_08524A54, gUnknown_08595C28, NULL, gDummySpriteAffineAnimTable, sub_810BED0

	.align 2
gUnknown_08595C5C:: @ 8595C5C
	.byte 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03, 0x04
	.byte 0x04, 0x04, 0x05, 0x06, 0x06, 0x06, 0x06, 0x07
	.byte 0x08, 0x08, 0x08, 0x09

	.align 2
gUnknown_08595C70:: @ 8595C70
	spr_template ANIM_TAG_SMALL_BUBBLES, ANIM_TAG_SMALL_BUBBLES, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810C2F0

	.align 2
gUnknown_08595C88:: @ 8595C88
	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02
	.byte 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04
	.byte 0x04, 0x04, 0x04, 0x05

	.align 2
gUnknown_08595C9C:: @ 8595C9C
	spr_template ANIM_TAG_PURPLE_GAS_CLOUD, ANIM_TAG_PURPLE_GAS_CLOUD, gUnknown_08524A54, gUnknown_08595C28, NULL, gDummySpriteAffineAnimTable, sub_810C560

	.align 2
gUnknown_08595CB4:: @ 8595CB4
	.byte 0x64, 0xe0, 0x01, 0x20, 0x55, 0xe0, 0x01, 0x00
	.byte 0xf2, 0xe0, 0x11, 0x10, 0x42, 0xe0, 0x21, 0x10
	.byte 0xb6, 0xe0, 0x31, 0x00, 0x3c, 0xe0, 0x01, 0x20
	.byte 0xd6, 0xe0, 0x11, 0x00, 0x71, 0xe0, 0x01, 0x10
	.byte 0xd2, 0xe0, 0x31, 0x10, 0x26, 0xe0, 0x21, 0x00

	.align 2
gUnknown_08595CDC:: @ 8595CDC
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595CEC:: @ 8595CEC
	.2byte 0x00f0, 0x00f0, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595CFC:: @ 8595CFC
	.2byte 0x00e0, 0x00e0, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595D0C:: @ 8595D0C
	.2byte 0x0150, 0x0150, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595D1C:: @ 8595D1C
	.4byte gUnknown_08595CDC
	.4byte gUnknown_08595CEC
	.4byte gUnknown_08595CFC

	.align 2
gUnknown_08595D28:: @ 8595D28
	.4byte gUnknown_08595D0C

	.align 2
gUnknown_08595D2C:: @ 8595D2C
	spr_template ANIM_TAG_HAIL, ANIM_TAG_HAIL, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_08595D1C, sub_810CB58

	.align 2
gUnknown_08595D44:: @ 8595D44
	spr_template ANIM_TAG_HAIL, ANIM_TAG_HAIL, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_08595D28, sub_80A8EE4

	.align 2
gUnknown_08595D5C:: @ 8595D5C
	.2byte 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595D64:: @ 8595D64
	.2byte 0x0010, 0x0004, 0x0020, 0x0004, 0x0030, 0x0004, 0x0040, 0x0004, 0xffff, 0x0000

	.align 2
gUnknown_08595D78:: @ 8595D78
	.4byte gUnknown_08595D5C
	.4byte gUnknown_08595D64

	.align 2
gUnknown_08595D80:: @ 8595D80
	.2byte 0x00e0, 0x00e0, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595D90:: @ 8595D90
	.2byte 0x0118, 0x0118, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595DA0:: @ 8595DA0
	.2byte 0x0150, 0x0150, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595DB0:: @ 8595DB0
	.2byte 0x0180, 0x0180, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595DC0:: @ 8595DC0
	.2byte 0x01c0, 0x01c0, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08595DD0:: @ 8595DD0
	.4byte gUnknown_08595D80
	.4byte gUnknown_08595D90
	.4byte gUnknown_08595DA0
	.4byte gUnknown_08595DB0
	.4byte gUnknown_08595DC0

	.align 2
gUnknown_08595DE4:: @ 8595DE4
	spr_template ANIM_TAG_ICE_CHUNK, ANIM_TAG_ICE_CHUNK, gUnknown_085249D4, gUnknown_08595D78, NULL, gUnknown_08595DD0, unc_080B06FC

	.align 2
gUnknown_08595DFC:: @ 8595DFC
	spr_template ANIM_TAG_ICE_CRYSTALS, ANIM_TAG_ICE_CRYSTALS, gUnknown_08524904, gUnknown_08595AAC, NULL, gDummySpriteAffineAnimTable, sub_810CD4C

	.align 2
gUnknown_08595E14:: @ 8595E14
	spr_template ANIM_TAG_HUMANOID_FOOT, ANIM_TAG_HUMANOID_FOOT, gUnknown_08524914, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, unc_080B08A0

	.align 2
gUnknown_08595E2C:: @ 8595E2C
	.2byte 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595E34:: @ 8595E34
	.2byte 0x0010, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595E3C:: @ 8595E3C
	.2byte 0x0020, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595E44:: @ 8595E44
	.2byte 0x0030, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08595E4C:: @ 8595E4C
	.2byte 0x0030, 0x0041, 0xffff, 0x0000

	.align 2
gUnknown_08595E54:: @ 8595E54
	.4byte gUnknown_08595E2C

	.align 2
gUnknown_08595E58:: @ 8595E58
	.4byte gUnknown_08595E34
	.4byte gUnknown_08595E3C

	.align 2
gUnknown_08595E60:: @ 8595E60
	.4byte gUnknown_08595E44
	.4byte gUnknown_08595E4C

	.align 2
gUnknown_08595E68:: @ 8595E68
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E54, NULL, gDummySpriteAffineAnimTable, sub_810CE68

	.align 2
gUnknown_08595E80:: @ 8595E80
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E54, NULL, gDummySpriteAffineAnimTable, sub_810CEB4

	.align 2
gFistFootSpriteTemplate:: @ 8595E98
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E54, NULL, gDummySpriteAffineAnimTable, sub_810CEE0

	.align 2
gUnknown_08595EB0:: @ 8595EB0
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E54, NULL, gDummySpriteAffineAnimTable, sub_810CF30

	.align 2
gUnknown_08595EC8:: @ 8595EC8
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E60, NULL, gDummySpriteAffineAnimTable, sub_810D10C

	.align 2
gUnknown_08595EE0:: @ 8595EE0
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E58, NULL, gDummySpriteAffineAnimTable, sub_810D1B4

	.align 2
gUnknown_08595EF8:: @ 8595EF8
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0114, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08595F10:: @ 8595F10
	.4byte gUnknown_08595EF8

	.align 2
gUnknown_08595F14:: @ 8595F14
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_085249D4, gUnknown_08595E54, NULL, gUnknown_08595F10, sub_810D278

	.align 2
gUnknown_08595F2C:: @ 8595F2C
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0xfffc, 0xfffc, 0x0114, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08595F44:: @ 8595F44
	.4byte gUnknown_08595F2C

	.align 2
gMegaPunchKickSpriteTemplate:: @ 8595F48
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_085249D4, gUnknown_08595E54, NULL, gUnknown_08595F44, sub_810D278

	.align 2
gUnknown_08595F60:: @ 8595F60
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E58, NULL, gDummySpriteAffineAnimTable, sub_810D2E4

	.align 2
gUnknown_08595F78:: @ 8595F78
	spr_template ANIM_TAG_DUCK, ANIM_TAG_DUCK, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810D37C

	.align 2
gUnknown_08595F90:: @ 8595F90
	spr_template ANIM_TAG_BLUE_LIGHT_WALL, ANIM_TAG_BLUE_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810D40C

	.align 2
gUnknown_08595FA8:: @ 8595FA8
	spr_template ANIM_TAG_TORN_METAL, ANIM_TAG_TORN_METAL, gUnknown_08524914, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810D4F4

	.align 2
gUnknown_08595FC0:: @ 8595FC0
	.2byte 0x0020, 0x0020, 0x0000, 0x0000, 0x0004, 0x0004, 0x4000, 0x0000
	.2byte 0xfffa, 0xfffa, 0x0800, 0x0000, 0x0006, 0x0006, 0x0800, 0x0000
	.2byte 0x7ffe, 0x0002, 0x0000, 0x0000

	.align 2
gUnknown_08595FE8:: @ 8595FE8
	.4byte gUnknown_08595FC0

	.align 2
gUnknown_08595FEC:: @ 8595FEC
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524AFC, gDummySpriteAnimTable, NULL, gUnknown_08595FE8, sub_810D608

	.align 2
gUnknown_08596004:: @ 8596004
	spr_template ANIM_TAG_FLAT_ROCK, ANIM_TAG_FLAT_ROCK, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810D714

	.align 2
gUnknown_0859601C:: @ 859601C
	spr_template ANIM_TAG_METEOR, ANIM_TAG_METEOR, gUnknown_0852491C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810D874

	.align 2
gUnknown_08596034:: @ 8596034
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_08524914, gUnknown_08595E54, NULL, gDummySpriteAffineAnimTable, sub_810D984

	.align 2
gUnknown_0859604C:: @ 859604C
	.2byte 0x0000, 0x0004, 0x0010, 0x0004, 0x0020, 0x0004, 0xffff, 0x0000

	.align 2
gUnknown_0859605C:: @ 859605C
	.2byte 0x0000, 0x0084, 0x0010, 0x0084, 0x0020, 0x0084, 0xffff, 0x0000

	.align 2
gUnknown_0859606C:: @ 859606C
	.2byte 0x0000, 0x0044, 0x0010, 0x0044, 0x0020, 0x0044, 0xffff, 0x0000

	.align 2
gUnknown_0859607C:: @ 859607C
	.4byte gUnknown_0859604C
	.4byte gUnknown_0859605C
	.4byte gUnknown_0859606C

	.align 2
gUnknown_08596088:: @ 8596088
	spr_template ANIM_TAG_PURPLE_SCRATCH, ANIM_TAG_PURPLE_SCRATCH, gUnknown_08524914, gUnknown_0859607C, NULL, gDummySpriteAffineAnimTable, sub_810DA10

	.align 2
gUnknown_085960A0:: @ 85960A0
	.2byte 0x0000, 0x0006, 0x0040, 0x0006, 0xffff, 0x0000

	.align 2
gUnknown_085960AC:: @ 85960AC
	.2byte 0x0000, 0x00c6, 0x0040, 0x00c6, 0xffff, 0x0000

	.align 2
gUnknown_085960B8:: @ 85960B8
	.2byte 0x0000, 0x0046, 0x0040, 0x0046, 0xffff, 0x0000

	.align 2
gUnknown_085960C4:: @ 85960C4
	.4byte gUnknown_085960A0
	.4byte gUnknown_085960AC
	.4byte gUnknown_085960B8

	.align 2
gUnknown_085960D0:: @ 85960D0
	spr_template ANIM_TAG_PURPLE_SWIPE, ANIM_TAG_PURPLE_SWIPE, gUnknown_0852491C, gUnknown_085960C4, NULL, gDummySpriteAffineAnimTable, sub_810DA10

	.align 2
gUnknown_085960E8:: @ 85960E8
	.2byte 0x0200, 0x0200, 0x0000, 0x0000, 0xffe0, 0xffe0, 0x0800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596100:: @ 8596100
	.4byte gUnknown_085960E8

	.align 2
gUnknown_08596104:: @ 8596104
	spr_template ANIM_TAG_HANDS_AND_FEET, ANIM_TAG_HANDS_AND_FEET, gUnknown_085249D4, gUnknown_08595E54, NULL, gUnknown_08596100, sub_810DA7C

	.align 2
gUnknown_0859611C:: @ 859611C
	.2byte 0x0000, 0x0005, 0x0008, 0x0005, 0x0010, 0x0005, 0x0018, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_08596130:: @ 8596130
	.4byte gUnknown_0859611C

	.align 2
gUnknown_08596134:: @ 8596134
	spr_template ANIM_TAG_TOXIC_BUBBLE, ANIM_TAG_TOXIC_BUBBLE, gUnknown_08524954, gUnknown_08596130, NULL, gDummySpriteAffineAnimTable, sub_80A77C8

	.align 2
gUnknown_0859614C:: @ 859614C
	.2byte 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596154:: @ 8596154
	.2byte 0x0004, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_0859615C:: @ 859615C
	.2byte 0x0008, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596164:: @ 8596164
	.4byte gUnknown_0859614C

	.align 2
gUnknown_08596168:: @ 8596168
	.4byte gUnknown_08596154

	.align 2
gUnknown_0859616C:: @ 859616C
	.4byte gUnknown_0859615C

	.align 2
gUnknown_08596170:: @ 8596170
	.2byte 0x0160, 0x0160, 0x0000, 0x0000, 0xfff6, 0xfff6, 0x0a00, 0x0000
	.2byte 0x000a, 0x000a, 0x0a00, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596190:: @ 8596190
	.2byte 0x00ec, 0x00ec, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085961A0:: @ 85961A0
	.4byte gUnknown_08596170

	.align 2
gUnknown_085961A4:: @ 85961A4
	.4byte gUnknown_08596190

	.align 2
gUnknown_085961A8:: @ 85961A8
	spr_template ANIM_TAG_POISON_BUBBLE, ANIM_TAG_POISON_BUBBLE, gUnknown_085249CC, gUnknown_08596164, NULL, gUnknown_085961A0, sub_810DBAC

	.align 2
gUnknown_085961C0:: @ 85961C0
	spr_template ANIM_TAG_POISON_BUBBLE, ANIM_TAG_POISON_BUBBLE, gUnknown_085249CC, gUnknown_08596164, NULL, gUnknown_085961A0, sub_810DC2C

	.align 2
gUnknown_085961D8:: @ 85961D8
	spr_template ANIM_TAG_POISON_BUBBLE, ANIM_TAG_POISON_BUBBLE, gUnknown_0852496C, gUnknown_0859616C, NULL, gUnknown_085961A4, sub_810DCD0

	.align 2
gUnknown_085961F0:: @ 85961F0
	.2byte 0xfff0, 0x0010, 0x0600, 0x0000, 0x0010, 0xfff0, 0x0600, 0x0000
	.2byte 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596208:: @ 8596208
	.4byte gUnknown_085961F0

	.align 2
gUnknown_0859620C:: @ 859620C
	spr_template ANIM_TAG_POISON_BUBBLE, ANIM_TAG_POISON_BUBBLE, gUnknown_085249CC, gUnknown_08596168, NULL, gUnknown_08596208, sub_810DD50

	.align 2
gUnknown_08596224:: @ 8596224
	.2byte 0x009c, 0x009c, 0x0000, 0x0000, 0x0005, 0x0005, 0x1400, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859623C:: @ 859623C
	.4byte gUnknown_08596224

	.align 2
gPoisonBubbleSpriteTemplate:: @ 8596240
	spr_template ANIM_TAG_POISON_BUBBLE, ANIM_TAG_POISON_BUBBLE, gUnknown_0852496C, gUnknown_08596164, NULL, gUnknown_0859623C, sub_810DDC4

	.align 2
gWaterBubbleSpriteTemplate:: @ 8596258
	spr_template ANIM_TAG_SMALL_BUBBLES, ANIM_TAG_SMALL_BUBBLES, gUnknown_08524A8C, gUnknown_08595200, NULL, gUnknown_0859623C, sub_810DDC4

	.align 2
gUnknown_08596270:: @ 8596270
	spr_template ANIM_TAG_GUST, ANIM_TAG_GUST, gUnknown_0852495C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810DE70

	.align 2
gUnknown_08596288:: @ 8596288
	.2byte 0x0010, 0x0100, 0x0000, 0x0000, 0x000a, 0x0000, 0x1800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085962A0:: @ 85962A0
	.4byte gUnknown_08596288

	.align 2
gBattleAnimSpriteTemplate_85962A4:: @ 85962A4
	spr_template ANIM_TAG_GUST, ANIM_TAG_GUST, gUnknown_085249BC, gDummySpriteAnimTable, NULL, gUnknown_085962A0, sub_810DFA8

	.align 2
gUnknown_085962BC:: @ 85962BC
	.2byte 0x0000, 0x0003, 0x0000, 0x0043, 0x0000, 0x0083, 0x0000, 0x00c3, 0xfffe, 0x0000

	.align 2
gUnknown_085962D0:: @ 85962D0
	.4byte gUnknown_085962BC

	.align 2
gUnknown_085962D4:: @ 85962D4
	spr_template ANIM_TAG_AIR_WAVE_2, ANIM_TAG_AIR_WAVE_2, gUnknown_08524934, gUnknown_085962D0, NULL, gDummySpriteAffineAnimTable, sub_810E044

	.align 2
gUnknown_085962EC:: @ 85962EC
	.2byte 0x0010, 0x0100, 0x0000, 0x0000, 0x0028, 0x0000, 0x0600, 0x0000
	.2byte 0x0000, 0xffe0, 0x0500, 0x0000, 0xfff0, 0x0020, 0x0a00, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596314:: @ 8596314
	.4byte gUnknown_085962EC

	.align 2
gUnknown_08596318:: @ 8596318
	.2byte 0x0000, 0x0000, 0x0132, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596328:: @ 8596328
	.2byte 0x0000, 0x0000, 0x01d8, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596338:: @ 8596338
	.4byte gUnknown_08596318
	.4byte gUnknown_08596328

	.align 2
gUnknown_08596340:: @ 8596340
	spr_template ANIM_TAG_ROUND_SHADOW, ANIM_TAG_ROUND_SHADOW, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gUnknown_08596314, sub_810E13C

	.align 2
gUnknown_08596358:: @ 8596358
	spr_template ANIM_TAG_ROUND_SHADOW, ANIM_TAG_ROUND_SHADOW, gUnknown_0852497C, gDummySpriteAnimTable, NULL, gUnknown_08596338, sub_810E1C8

	.align 2
gUnknown_08596370:: @ 8596370
	.2byte 0x0000, 0x0000, 0xffff, 0x0000

	.align 2
gUnknown_08596378:: @ 8596378
	.2byte 0x0010, 0x0040, 0xffff, 0x0000

	.align 2
gUnknown_08596380:: @ 8596380
	.4byte gUnknown_08596370
	.4byte gUnknown_08596378

	.align 2
gUnknown_08596388:: @ 8596388
	spr_template ANIM_TAG_WHITE_FEATHER, ANIM_TAG_WHITE_FEATHER, gUnknown_08524974, gUnknown_08596380, NULL, gDummySpriteAffineAnimTable, sub_810E314

	.align 2
gUnknown_085963A0:: @ 85963A0
	spr_template ANIM_TAG_SMALL_BUBBLES, ANIM_TAG_SMALL_BUBBLES, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810EA4C

	.align 2
gUnknown_085963B8:: @ 85963B8
	.2byte 0x0000, 0x0001, 0x0008, 0x0001, 0x0010, 0x0001, 0x0008, 0x0041
	.2byte 0x0000, 0x0041, 0xffff, 0x0000

	.align 2
gUnknown_085963D0:: @ 85963D0
	.4byte gUnknown_085963B8

	.align 2
gUnknown_085963D4:: @ 85963D4
	spr_template ANIM_TAG_WHIRLWIND_LINES, ANIM_TAG_WHIRLWIND_LINES, gUnknown_08524934, gUnknown_085963D0, NULL, gDummySpriteAffineAnimTable, sub_810EAA0

	.align 2
gUnknown_085963EC:: @ 85963EC
	.2byte 0x0010, 0x0100, 0x0000, 0x0000, 0x0028, 0x0000, 0x0600, 0x0000
	.2byte 0x0000, 0xffe0, 0x0500, 0x0000, 0xffec, 0x0000, 0x0700, 0x0000
	.2byte 0xffec, 0xffec, 0x0500, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859641C:: @ 859641C
	.4byte gUnknown_085963EC

	.align 2
gUnknown_08596420:: @ 8596420
	spr_template ANIM_TAG_ROUND_SHADOW, ANIM_TAG_ROUND_SHADOW, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gUnknown_0859641C, sub_810EC34

	.align 2
gUnknown_08596438:: @ 8596438
	.2byte 0x00a0, 0x0100, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596448:: @ 8596448
	.4byte gUnknown_08596438

	.align 2
gUnknown_0859644C:: @ 859644C
	spr_template ANIM_TAG_ROUND_SHADOW, ANIM_TAG_ROUND_SHADOW, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gUnknown_08596448, sub_810EC94

	.align 2
gUnknown_08596464:: @ 8596464
	.2byte 0x0010, 0x0100, 0x0000, 0x0000, 0x0028, 0x0000, 0x0600, 0x0000
	.2byte 0x0000, 0xffe0, 0x0500, 0x0000, 0xfff0, 0x0020, 0x0a00, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859648C:: @ 859648C
	.4byte gUnknown_08596464

	.align 2
gUnknown_08596490:: @ 8596490
	spr_template ANIM_TAG_ROUND_SHADOW, ANIM_TAG_ROUND_SHADOW, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gUnknown_0859648C, sub_810ED28

	.align 2
gUnknown_085964A8:: @ 85964A8
	.2byte 0x0100, 0x0000, 0x0000, 0x0000, 0x0000, 0x0020, 0x0c00, 0x0000
	.2byte 0x0000, 0xffe0, 0x0b00, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085964C8:: @ 85964C8
	.4byte gUnknown_085964A8

	.align 2
gUnknown_085964CC:: @ 85964CC
	spr_template ANIM_TAG_SPLASH, ANIM_TAG_SPLASH, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810EE14

	.align 2
gUnknown_085964E4:: @ 85964E4
	spr_template ANIM_TAG_SWEAT_BEAD, ANIM_TAG_SWEAT_BEAD, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810EEF8

	.align 2
gUnknown_085964FC:: @ 85964FC
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F004

	.align 2
gUnknown_08596514:: @ 8596514
	spr_template ANIM_TAG_BIRD, ANIM_TAG_BIRD, gUnknown_085249DC, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F084

	.align 2
gUnknown_0859652C:: @ 859652C
	.2byte 0x0100, 0x0100, 0x0000, 0x0000, 0xfffe, 0xfffe, 0x78f6, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596544:: @ 8596544
	.4byte gUnknown_0859652C

	.align 2
gUnknown_08596548:: @ 8596548
	spr_template ANIM_TAG_SPIRAL, ANIM_TAG_SPIRAL, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08596544, sub_80A77C8

	.align 2
gUnknown_08596560:: @ 8596560
	spr_template ANIM_TAG_GREEN_LIGHT_WALL, ANIM_TAG_GREEN_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F1EC

	.align 2
gUnknown_08596578:: @ 8596578
	spr_template ANIM_TAG_BLUE_LIGHT_WALL, ANIM_TAG_BLUE_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F1EC

	.align 2
gUnknown_08596590:: @ 8596590
	spr_template ANIM_TAG_RED_LIGHT_WALL, ANIM_TAG_RED_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F1EC

	.align 2
gUnknown_085965A8:: @ 85965A8
	spr_template ANIM_TAG_GRAY_LIGHT_WALL, ANIM_TAG_GRAY_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F1EC

	.align 2
gUnknown_085965C0:: @ 85965C0
	spr_template ANIM_TAG_ORANGE_LIGHT_WALL, ANIM_TAG_ORANGE_LIGHT_WALL, gUnknown_08524A3C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810F1EC

	.align 2
gUnknown_085965D8:: @ 85965D8
	.2byte 0x0000, 0x0003, 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003
	.2byte 0x0040, 0x0003, 0xffff, 0x0000

	.align 2
gUnknown_085965F0:: @ 85965F0
	.4byte gUnknown_085965D8

	.align 2
gUnknown_085965F4:: @ 85965F4
	spr_template ANIM_TAG_SPARKLE_4, ANIM_TAG_SPARKLE_4, gUnknown_08524914, gUnknown_085965F0, NULL, gDummySpriteAffineAnimTable, sub_810F58C

	.align 2
gUnknown_0859660C:: @ 859660C
	.2byte 0x0000, 0x0005, 0x0004, 0x0005, 0x0008, 0x0005, 0x000c, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_08596620:: @ 8596620
	.4byte gUnknown_0859660C

	.align 2
gUnknown_08596624:: @ 8596624
	spr_template ANIM_TAG_SPARKLE_3, ANIM_TAG_SPARKLE_3, gUnknown_0852490C, gUnknown_08596620, NULL, gDummySpriteAffineAnimTable, sub_810F58C

	.align 2
gUnknown_0859663C:: @ 859663C
	spr_template ANIM_TAG_GOLD_RING, ANIM_TAG_GOLD_RING, gUnknown_08524954, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, TranslateAnimSpriteToTargetMonLocation

	.align 2
gUnknown_08596654:: @ 8596654
	.2byte 0x0008, 0x007c, 0x0010, 0x0045, 0x0008, 0x0045, 0x0000, 0x0045
	.2byte 0x0008, 0x0056, 0xfffd, 0x0000, 0x0010, 0x0045, 0x0008, 0x0045
	.2byte 0x0000, 0x0045, 0x0008, 0x0045, 0xfffd, 0x0001, 0x0008, 0x0056
	.2byte 0x0018, 0x0043, 0x0020, 0x0043, 0x0028, 0x0056, 0xffff, 0x0000

	.align 2
gUnknown_08596694:: @ 8596694
	.2byte 0x0008, 0x003c, 0x0010, 0x0005, 0x0008, 0x0005, 0x0000, 0x0005
	.2byte 0x0008, 0x0016, 0xfffd, 0x0000, 0x0010, 0x0005, 0x0008, 0x0005
	.2byte 0x0000, 0x0005, 0x0008, 0x0005, 0xfffd, 0x0001, 0x0008, 0x0016
	.2byte 0x0018, 0x0003, 0x0020, 0x0003, 0x0028, 0x0016, 0xffff, 0x0000

	.align 2
gUnknown_085966D4:: @ 85966D4
	.4byte gUnknown_08596654
	.4byte gUnknown_08596694

	.align 2
gUnknown_085966DC:: @ 85966DC
	spr_template ANIM_TAG_BENT_SPOON, ANIM_TAG_BENT_SPOON, gUnknown_08524954, gUnknown_085966D4, NULL, gDummySpriteAffineAnimTable, sub_810F634

	.align 2
gUnknown_085966F4:: @ 85966F4
	.2byte 0x0000, 0x0006, 0x0010, 0x0006, 0x0020, 0x0006, 0x0030, 0x0006
	.2byte 0x0040, 0x0006, 0x0050, 0x0006, 0x0060, 0x0012, 0xffff, 0x0000

	.align 2
gUnknown_08596714:: @ 8596714
	.4byte gUnknown_085966F4

	.align 2
gUnknown_08596718:: @ 8596718
	.2byte 0x0000, 0x0000, 0x0404, 0x0000, 0x0000, 0x0000, 0x08fc, 0x0000
	.2byte 0x0000, 0x0000, 0x0404, 0x0000, 0x7ffd, 0x0002, 0x0000, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596740:: @ 8596740
	.4byte gUnknown_08596718

	.align 2
gUnknown_08596744:: @ 8596744
	spr_template ANIM_TAG_AMNESIA, ANIM_TAG_AMNESIA, gUnknown_08524914, gUnknown_08596714, NULL, gDummySpriteAffineAnimTable, sub_810F6B0

	.align 2
gUnknown_0859675C:: @ 859675C
	.2byte 0xfff8, 0x000a, 0x1000, 0x0000, 0x0012, 0xffee, 0x1000, 0x0000
	.2byte 0xffec, 0x0010, 0x0800, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859677C:: @ 859677C
	.2byte 0x0040, 0xfffc, 0x1400, 0x0000, 0x0000, 0x0000, 0xc800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596794:: @ 8596794
	spr_template ANIM_TAG_HOLLOW_ORB, ANIM_TAG_HOLLOW_ORB, gUnknown_08524A2C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, SpriteCallbackDummy

	.align 2
gUnknown_085967AC:: @ 85967AC
	spr_template ANIM_TAG_X_SIGN, ANIM_TAG_X_SIGN, gUnknown_0852491C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_810FBA8

	.align 2
gUnknown_085967C4:: @ 85967C4
	.2byte 0xfff8, 0xfff8, 0x0800, 0x0000, 0x0008, 0x0008, 0x0800, 0x0000
	.2byte 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085967DC:: @ 85967DC
	.2byte 0x00f0, 0x00f0, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0600, 0x0000
	.2byte 0x0008, 0x0008, 0x0800, 0x0000, 0xfff8, 0xfff8, 0x0200, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08596804:: @ 8596804
	.2byte 0x00d0, 0x00d0, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0400, 0x0000
	.2byte 0x0008, 0x0008, 0x0800, 0x0000, 0xfff8, 0xfff8, 0x0400, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_0859682C:: @ 859682C
	.2byte 0x00b0, 0x00b0, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0200, 0x0000
	.2byte 0x0008, 0x0008, 0x0800, 0x0000, 0xfff8, 0xfff8, 0x0600, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08596854:: @ 8596854
	.4byte gUnknown_085967C4
	.4byte gUnknown_085967DC
	.4byte gUnknown_08596804
	.4byte gUnknown_0859682C

	.align 2
gUnknown_08596864:: @ 8596864
	spr_template ANIM_TAG_BLUEGREEN_ORB, ANIM_TAG_BLUEGREEN_ORB, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_08596854, sub_810FDF0

	.align 2
gUnknown_0859687C:: @ 859687C
	.2byte 0x0020, 0x0020, 0x0000, 0x0000, 0x0004, 0x0004, 0x7800, 0x0000
	.2byte 0x7fff, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08596894:: @ 8596894
	.4byte gUnknown_0859687C

	.align 2
gUnknown_08596898:: @ 8596898
	spr_template ANIM_TAG_WHITE_CIRCLE_OF_LIGHT, ANIM_TAG_WHITE_CIRCLE_OF_LIGHT, gUnknown_08524AFC, gDummySpriteAnimTable, NULL, gUnknown_08596894, sub_80A77C8

	.align 2
gUnknown_085968B0:: @ 85968B0
	.2byte 0x0020, 0x0020, 0x0000, 0x0000, 0x0010, 0x0010, 0x1100, 0x0000
	.2byte 0x7ffd, 0x0000, 0x0000, 0x0000, 0xfff8, 0xfff8, 0x0a00, 0x0000
	.2byte 0x0008, 0x0008, 0x0a00, 0x0000, 0x7ffd, 0x0004, 0x0000, 0x0000
	.2byte 0x7ffd, 0x0000, 0x0000, 0x0000, 0xfff0, 0xfff0, 0x0500, 0x0000
	.2byte 0x0010, 0x0010, 0x0500, 0x0000, 0x7ffd, 0x0007, 0x0000, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596908:: @ 8596908
	.2byte 0xffec, 0x0018, 0x0f00, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596918:: @ 8596918
	.4byte gUnknown_085968B0
	.4byte gUnknown_08596908

	.align 2
gUnknown_08596920:: @ 8596920
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524AFC, gDummySpriteAnimTable, NULL, gUnknown_08596918, sub_8110240

	.align 2
gUnknown_08596938:: @ 8596938
	.2byte 0x0100, 0x0100, 0x001e, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596948:: @ 8596948
	.2byte 0x0100, 0x0100, 0x009d, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596958:: @ 8596958
	.2byte 0x0100, 0x0100, 0x005e, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596968:: @ 8596968
	.4byte gUnknown_08596938
	.4byte gUnknown_08596948
	.4byte gUnknown_08596958

	.align 2
gUnknown_08596974:: @ 8596974
	spr_template ANIM_TAG_HORN_HIT_2, ANIM_TAG_HORN_HIT_2, gUnknown_085249F4, gDummySpriteAnimTable, NULL, gUnknown_08596968, sub_8110368

	.align 2
gUnknown_0859698C:: @ 859698C
	.2byte 0x0000, 0x0000, 0x01df, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_0859699C:: @ 859699C
	.2byte 0x0000, 0x0000, 0x0160, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085969AC:: @ 85969AC
	.2byte 0x0000, 0x0000, 0x01a0, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085969BC:: @ 85969BC
	.4byte gUnknown_0859698C
	.4byte gUnknown_0859699C
	.4byte gUnknown_085969AC

	.align 2
gUnknown_085969C8:: @ 85969C8
	spr_template ANIM_TAG_NEEDLE, ANIM_TAG_NEEDLE, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_085969BC, sub_8110438

	.align 2
gUnknown_085969E0:: @ 85969E0
	spr_template ANIM_TAG_WEB_THREAD, ANIM_TAG_WEB_THREAD, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81104E4

	.align 2
gUnknown_085969F8:: @ 85969F8
	spr_template ANIM_TAG_STRING, ANIM_TAG_STRING, gUnknown_0852493C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81105B4

	.align 2
gUnknown_08596A10:: @ 8596A10
	.2byte 0x0010, 0x0010, 0x0000, 0x0000, 0x0006, 0x0006, 0x0100, 0x0000
	.2byte 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08596A28:: @ 8596A28
	.4byte gUnknown_08596A10

	.align 2
gUnknown_08596A2C:: @ 8596A2C
	spr_template ANIM_TAG_SPIDER_WEB, ANIM_TAG_SPIDER_WEB, gUnknown_08524AFC, gDummySpriteAnimTable, NULL, gUnknown_08596A28, sub_811067C

	.align 2
gLinearStingerSpriteTemplate:: @ 8596A44
	spr_template ANIM_TAG_NEEDLE, ANIM_TAG_NEEDLE, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8110720

	.align 2
gPinMissileSpriteTemplate:: @ 8596A5C
	spr_template ANIM_TAG_NEEDLE, ANIM_TAG_NEEDLE, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8110850

	.align 2
gIcicleSpearSpriteTemplate:: @ 8596A74
	spr_template ANIM_TAG_ICICLE_SPEAR, ANIM_TAG_ICICLE_SPEAR, gUnknown_08524974, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8110850

	.align 2
gUnknown_08596A8C:: @ 8596A8C
	.2byte 0x0010, 0x0010, 0x0000, 0x0000, 0x0008, 0x0008, 0x1200, 0x0000
	.2byte 0x7ffd, 0x0000, 0x0000, 0x0000, 0xfffb, 0xfffb, 0x0800, 0x0000
	.2byte 0x0005, 0x0005, 0x0800, 0x0000, 0x7ffd, 0x0005, 0x0000, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596AC4:: @ 8596AC4
	.4byte gUnknown_08596A8C

	.align 2
gUnknown_08596AC8:: @ 8596AC8
	spr_template ANIM_TAG_CIRCLE_OF_LIGHT, ANIM_TAG_CIRCLE_OF_LIGHT, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08596AC4, sub_8110994

	.align 2
gUnknown_08596AE0:: @ 8596AE0
	.2byte 0x0020, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596AE8:: @ 8596AE8
	.2byte 0x0030, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596AF0:: @ 8596AF0
	.2byte 0x0040, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596AF8:: @ 8596AF8
	.4byte gUnknown_08596AE0
	.4byte gUnknown_08596AE8
	.4byte gUnknown_08596AF0

	.align 2
gUnknown_08596B04:: @ 8596B04
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gUnknown_08596AF8, NULL, gDummySpriteAffineAnimTable, sub_81109F0

	.align 2
gUnknown_08596B1C:: @ 8596B1C
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gUnknown_08596AF8, NULL, gDummySpriteAffineAnimTable, sub_8110AB4

	.align 2
gUnknown_08596B34:: @ 8596B34
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8110B38

	.align 2
gUnknown_08596B4C:: @ 8596B4C
	.2byte 0x00c0, 0x00c0, 0x0000, 0x0000, 0x0002, 0xfffd, 0x0500, 0x0000
	.2byte 0xfffe, 0x0003, 0x0500, 0x0000, 0x7ffe, 0x0001, 0x0000, 0x0000

	.align 2
gUnknown_08596B6C:: @ 8596B6C
	.4byte gUnknown_08596B4C

	.align 2
gUnknown_08596B70:: @ 8596B70
	spr_template ANIM_TAG_WATER_ORB, ANIM_TAG_WATER_ORB, gUnknown_08524A8C, gUnknown_085950E0, NULL, gUnknown_08596B6C, sub_8110B38

	.align 2
gUnknown_08596B88:: @ 8596B88
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_085954D0, NULL, gDummySpriteAffineAnimTable, sub_8110B38

	.align 2
gBattleAnimSpriteTemplate_8596BA0:: @ 8596BA0
	spr_template ANIM_TAG_FLYING_DIRT, ANIM_TAG_FLYING_DIRT, gUnknown_08524934, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8110E4C

	.align 2
gUnknown_08596BB8:: @ 8596BB8
	.2byte 0x00f0, 0x4009, 0x0010, 0x4089

	.align 2
gUnknown_08596BC0:: @ 8596BC0
	.2byte 0x0002, 0x0000

	.align 2
gUnknown_08596BC4:: @ 8596BC4
	.4byte gUnknown_08596BB8

	.align 2
gUnknown_08596BC8:: @ 8596BC8
	.2byte 0x0000, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BD0:: @ 8596BD0
	.2byte 0x0010, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BD8:: @ 8596BD8
	.2byte 0x0020, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BE0:: @ 8596BE0
	.2byte 0x0030, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BE8:: @ 8596BE8
	.2byte 0x0040, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BF0:: @ 8596BF0
	.2byte 0x0050, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_08596BF8:: @ 8596BF8
	.4byte gUnknown_08596BC8
	.4byte gUnknown_08596BD0

	.align 2
gUnknown_08596C00:: @ 8596C00
	.4byte gUnknown_08596BD8
	.4byte gUnknown_08596BE0

	.align 2
gUnknown_08596C08:: @ 8596C08
	.4byte gUnknown_08596BE8
	.4byte gUnknown_08596BF0

	.align 2
gUnknown_08596C10:: @ 8596C10
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gUnknown_08596BF8, NULL, gDummySpriteAffineAnimTable, sub_8110F30

	.align 2
gUnknown_08596C28:: @ 8596C28
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_811131C

	.align 2
gUnknown_08596C40:: @ 8596C40
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_811131C

	.align 2
gUnknown_08596C58:: @ 8596C58
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gUnknown_08596BF8, NULL, gDummySpriteAffineAnimTable, sub_8111388

	.align 2
gUnknown_08596C70:: @ 8596C70
	.2byte 0x0000, 0x0000, 0x05fb, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596C80:: @ 8596C80
	.2byte 0x0000, 0x0000, 0x0505, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596C90:: @ 8596C90
	.4byte gUnknown_08596C70
	.4byte gUnknown_08596C80

	.align 2
gUnknown_08596C98:: @ 8596C98
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524974, gUnknown_08596BF8, NULL, gUnknown_08596C90, sub_8111418

	.align 2
gUnknown_08596CB0:: @ 8596CB0
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524974, gUnknown_08596BF8, NULL, gUnknown_08596C90, sub_8111444

	.align 2
gUnknown_08596CC8:: @ 8596CC8
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524914, gUnknown_08596C08, NULL, gUnknown_08596C90, sub_80FF268

	.align 2
gUnknown_08596CE0:: @ 8596CE0
	spr_template ANIM_TAG_ROCKS, ANIM_TAG_ROCKS, gUnknown_08524974, gUnknown_08596C00, NULL, gUnknown_08596C90, sub_80A8EE4

	.align 2
gUnknown_08596CF8:: @ 8596CF8
	.2byte 0x001e, 0x001e, 0x050a, 0x0000, 0xffe2, 0xffe2, 0x050a, 0x0000
	.2byte 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596D10:: @ 8596D10
	.4byte gUnknown_08596CF8

	.align 2
gUnknown_08596D14:: @ 8596D14
	spr_template ANIM_TAG_YELLOW_BALL, ANIM_TAG_YELLOW_BALL, gUnknown_085249CC, gDummySpriteAnimTable, NULL, gUnknown_08596D10, sub_811160C

	.align 2
gUnknown_08596D2C:: @ 8596D2C
	spr_template ANIM_TAG_YELLOW_BALL, ANIM_TAG_YELLOW_BALL, gUnknown_08524A2C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81117F4

	.align 2
gUnknown_08596D44:: @ 8596D44
	.2byte 0x0000, 0x0000, 0x010a, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596D54:: @ 8596D54
	.4byte gUnknown_08596D44

	.align 2
gUnknown_08596D58:: @ 8596D58
	spr_template ANIM_TAG_SHADOW_BALL, ANIM_TAG_SHADOW_BALL, gUnknown_08524974, gDummySpriteAnimTable, NULL, gUnknown_08596D54, sub_81119E0

	.align 2
gUnknown_08596D70:: @ 8596D70
	.2byte 0x0000, 0x0002, 0x0008, 0x0002, 0x0010, 0x0002, 0x0018, 0x0002
	.2byte 0x0020, 0x0002, 0xffff, 0x0000

	.align 2
gUnknown_08596D88:: @ 8596D88
	.4byte gUnknown_08596D70

	.align 2
gUnknown_08596D8C:: @ 8596D8C
	spr_template ANIM_TAG_LICK, ANIM_TAG_LICK, gUnknown_08524954, gUnknown_08596D88, NULL, gDummySpriteAffineAnimTable, sub_8111B9C

	.align 2
gUnknown_08596DA4:: @ 8596DA4
	.2byte 0x0200, 0x0200, 0x0000, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596DB4:: @ 8596DB4
	.4byte gUnknown_08596DA4

	.align 2
gUnknown_08596DB8:: @ 8596DB8
	spr_template ANIM_TAG_WHITE_SHADOW, ANIM_TAG_WHITE_SHADOW, gUnknown_08524A5C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8112264

	.align 2
gUnknown_08596DD0:: @ 8596DD0
	spr_template ANIM_TAG_NAIL, ANIM_TAG_NAIL, gUnknown_08524A54, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81129F0

	.align 2
gBattleAnimSpriteTemplate_8596DE8:: @ 8596DE8
	spr_template ANIM_TAG_GHOSTLY_SPIRIT, ANIM_TAG_GHOSTLY_SPIRIT, gUnknown_08524A34, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8112B78

	.align 2
gBattleAnimSpriteTemplate_8596E00:: @ 8596E00
	spr_template ANIM_TAG_DEVIL, ANIM_TAG_DEVIL, gUnknown_08524A34, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8112B78

	.align 2
gUnknown_08596E18:: @ 8596E18
	.2byte 0x0000, 0x0004, 0x0008, 0x0004, 0x0010, 0x0004, 0x0018, 0x0004, 0xfffe, 0x0000

	.align 2
gUnknown_08596E2C:: @ 8596E2C
	.4byte gUnknown_08596E18

	.align 2
gUnknown_08596E30:: @ 8596E30
	spr_template ANIM_TAG_PURPLE_FLAME, ANIM_TAG_PURPLE_FLAME, gUnknown_08524A74, gUnknown_08596E2C, NULL, gDummySpriteAffineAnimTable, sub_8112E9C

	.align 2
gUnknown_08596E48:: @ 8596E48
	spr_template 0x0000, 0x0000, gDummyOamData, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8112F60

	.align 2
gUnknown_08596E60:: @ 8596E60
	.2byte 0x0000, 0x0004, 0x0010, 0x0004, 0x0020, 0x0004, 0x0030, 0x0004
	.2byte 0x0040, 0x0004, 0xfffe, 0x0000

	.align 2
gUnknown_08596E78:: @ 8596E78
	.4byte gUnknown_08596E60

	.align 2
gBattleAnimSpriteTemplate_8596E7C:: @ 8596E7C
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08596E78, NULL, gDummySpriteAffineAnimTable, sub_8113064

	.align 2
gUnknown_08596E94:: @ 8596E94
	.2byte 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003, 0xfffe, 0x0000

	.align 2
gUnknown_08596EA4:: @ 8596EA4
	.2byte 0x0010, 0x00c3, 0x0020, 0x00c3, 0x0030, 0x00c3, 0xfffe, 0x0000

	.align 2
gUnknown_08596EB4:: @ 8596EB4
	.4byte gUnknown_08596E94
	.4byte gUnknown_08596EA4

	.align 2
gUnknown_08596EBC:: @ 8596EBC
	.2byte 0x0050, 0x0050, 0x007f, 0x0000, 0x000d, 0x000d, 0x6400, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596ED4:: @ 8596ED4
	.2byte 0x0050, 0x0050, 0x0000, 0x0000, 0x000d, 0x000d, 0x6400, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596EEC:: @ 8596EEC
	.4byte gUnknown_08596EBC
	.4byte gUnknown_08596ED4

	.align 2
gUnknown_08596EF4:: @ 8596EF4
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_085249D4, gUnknown_08596EB4, NULL, gUnknown_08596EEC, sub_8113224

	.align 2
gUnknown_08596F0C:: @ 8596F0C
	.2byte 0x0000, 0x0005, 0x0010, 0x0005, 0x0020, 0x0005, 0x0030, 0x0005
	.2byte 0x0040, 0x0005, 0xffff, 0x0000

	.align 2
gUnknown_08596F24:: @ 8596F24
	.4byte gUnknown_08596F0C

	.align 2
gUnknown_08596F28:: @ 8596F28
	spr_template ANIM_TAG_FIRE_PLUME, ANIM_TAG_FIRE_PLUME, gUnknown_08524914, gUnknown_08596F24, NULL, gDummySpriteAffineAnimTable, sub_81131B4

	.align 2
gUnknown_08596F40:: @ 8596F40
	.2byte 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003, 0xfffe, 0x0000

	.align 2
gUnknown_08596F50:: @ 8596F50
	.4byte gUnknown_08596F40
	.4byte gUnknown_08596F40

	.align 2
gUnknown_08596F58:: @ 8596F58
	.2byte 0x0064, 0x0064, 0x017f, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596F68:: @ 8596F68
	.2byte 0x0064, 0x0064, 0x0100, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596F78:: @ 8596F78
	.4byte gUnknown_08596F58
	.4byte gUnknown_08596F68

	.align 2
gUnknown_08596F80:: @ 8596F80
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_085249D4, gUnknown_08596F50, NULL, gUnknown_08596F78, sub_8113224

	.align 2
gUnknown_08596F98:: @ 8596F98
	spr_template ANIM_TAG_HOLLOW_ORB, ANIM_TAG_HOLLOW_ORB, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8113250

	.align 2
gUnknown_08596FB0:: @ 8596FB0
	spr_template ANIM_TAG_SMALL_EMBER, ANIM_TAG_SMALL_EMBER, gUnknown_08524914, gUnknown_08596E78, NULL, gDummySpriteAffineAnimTable, sub_81135EC

	.align 2
gUnknown_08596FC8:: @ 8596FC8
	spr_template ANIM_TAG_TIED_BAG, ANIM_TAG_TIED_BAG, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81138D4

	.align 2
gUnknown_08596FE0:: @ 8596FE0
	.2byte 0x0000, 0x0000, 0x0100, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08596FF0:: @ 8596FF0
	.2byte 0x0000, 0x0000, 0x0120, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597000:: @ 8597000
	.2byte 0x0000, 0x0000, 0x0140, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597010:: @ 8597010
	.2byte 0x0000, 0x0000, 0x0160, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597020:: @ 8597020
	.2byte 0x0000, 0x0000, 0x0180, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597030:: @ 8597030
	.2byte 0x0000, 0x0000, 0x01a0, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597040:: @ 8597040
	.2byte 0x0000, 0x0000, 0x01c0, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597050:: @ 8597050
	.2byte 0x0000, 0x0000, 0x01e0, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597060:: @ 8597060
	.4byte gUnknown_08596FE0
	.4byte gUnknown_08596FF0
	.4byte gUnknown_08597000
	.4byte gUnknown_08597010
	.4byte gUnknown_08597020
	.4byte gUnknown_08597030
	.4byte gUnknown_08597040
	.4byte gUnknown_08597050

	.align 2
gUnknown_08597080:: @ 8597080
	spr_template ANIM_TAG_SHARP_TEETH, ANIM_TAG_SHARP_TEETH, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08597060, sub_81139DC

	.align 2
gUnknown_08597098:: @ 8597098
	spr_template ANIM_TAG_CLAMP, ANIM_TAG_CLAMP, gUnknown_08524A9C, gDummySpriteAnimTable, NULL, gUnknown_08597060, sub_81139DC

	.align 2
gUnknown_085970B0:: @ 85970B0
	.2byte 0x00c0, 0x00c0, 0x0050, 0x0000, 0x0000, 0x0000, 0x08fe, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085970C8:: @ 85970C8
	.2byte 0x00c0, 0x00c0, 0x00b0, 0x0000, 0x0000, 0x0000, 0x0802, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_085970E0:: @ 85970E0
	.4byte gUnknown_085970B0
	.4byte gUnknown_085970C8

	.align 2
gUnknown_085970E8:: @ 85970E8
	spr_template ANIM_TAG_SMALL_BUBBLES, ANIM_TAG_SMALL_BUBBLES, gUnknown_0852496C, gDummySpriteAnimTable, NULL, gUnknown_085970E0, sub_8113A90

	.align 2
gUnknown_08597100:: @ 8597100
	.2byte 0x0000, 0x0004, 0x0010, 0x0004, 0x0020, 0x0004, 0x0030, 0x0004
	.2byte 0x0040, 0x0004, 0xffff, 0x0000

	.align 2
gUnknown_08597118:: @ 8597118
	.2byte 0x0000, 0x0044, 0x0010, 0x0044, 0x0020, 0x0044, 0x0030, 0x0044
	.2byte 0x0040, 0x0044, 0xffff, 0x0000

	.align 2
gUnknown_08597130:: @ 8597130
	.4byte gUnknown_08597100
	.4byte gUnknown_08597118

	.align 2
gBattleAnimSpriteTemplate_8597138:: @ 8597138
	spr_template ANIM_TAG_CLAW_SLASH, ANIM_TAG_CLAW_SLASH, gUnknown_08524914, gUnknown_08597130, NULL, gDummySpriteAffineAnimTable, sub_81144BC

	.align 2
gUnknown_08597150:: @ 8597150
	.2byte 0x0000, 0x0000, 0x010f, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597160:: @ 8597160
	.2byte 0x0000, 0x0000, 0x0114, 0x0000, 0x7ffe, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597170:: @ 8597170
	.4byte gUnknown_08597150

	.align 2
gUnknown_08597174:: @ 8597174
	.4byte gUnknown_08597160

	.align 2
gUnknown_08597178:: @ 8597178
	spr_template ANIM_TAG_BONE, ANIM_TAG_BONE, gUnknown_08524974, gDummySpriteAnimTable, NULL, gUnknown_08597170, sub_8114994

	.align 2
gUnknown_08597190:: @ 8597190
	spr_template ANIM_TAG_BONE, ANIM_TAG_BONE, gUnknown_08524974, gDummySpriteAnimTable, NULL, gUnknown_08597174, sub_8114A7C

	.align 2
gUnknown_085971A8:: @ 85971A8
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8114AF0

	.align 2
gUnknown_085971C0:: @ 85971C0
	.2byte 0x0001, 0x0001, 0xffff, 0x0000

	.align 2
gUnknown_085971C8:: @ 85971C8
	.4byte gUnknown_085971C0

	.align 2
gUnknown_085971CC:: @ 85971CC
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_0852490C, gUnknown_085971C8, NULL, gDummySpriteAffineAnimTable, sub_8114AF0

	.align 2
gUnknown_085971E4:: @ 85971E4
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_0852490C, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8114B80

	.align 2
gUnknown_085971FC:: @ 85971FC
	spr_template ANIM_TAG_MUD_SAND, ANIM_TAG_MUD_SAND, gUnknown_08524904, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81151A0

	.align 2
gUnknown_08597214:: @ 8597214
	spr_template ANIM_TAG_DIRT_MOUND, ANIM_TAG_DIRT_MOUND, gUnknown_08524934, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8115244

	.align 2
gUnknown_0859722C:: @ 859722C
	.2byte 0x0000, 0x0008, 0x0004, 0x0008, 0x0000, 0x0048, 0x0008, 0x0008, 0xfffe, 0x0000

	.align 2
gUnknown_08597240:: @ 8597240
	.2byte 0x0000, 0x0048, 0x0004, 0x0008, 0x0000, 0x0008, 0x0008, 0x0008, 0xfffe, 0x0000

	.align 2
gUnknown_08597254:: @ 8597254
	.4byte gUnknown_0859722C
	.4byte gUnknown_08597240

	.align 2
gConfusionDuckSpriteTemplate:: @ 859725C
	spr_template ANIM_TAG_DUCK, ANIM_TAG_DUCK, gUnknown_0852490C, gUnknown_08597254, NULL, gDummySpriteAffineAnimTable, sub_811572C

	.align 2
gSimplePaletteBlendSpriteTemplate:: @ 8597274
	spr_template 0x0000, 0x0000, gDummyOamData, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81157FC

	.align 2
gComplexPaletteBlendSpriteTemplate:: @ 859728C
	spr_template 0x0000, 0x0000, gDummyOamData, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81158A4

	.align 2
gUnknown_085972A4:: @ 85972A4
	.2byte 0x0000, 0x0003, 0x0010, 0x0003, 0x0020, 0x0003, 0x0030, 0x0003
	.2byte 0x0040, 0x0003, 0xfffe, 0x0000

	.align 2
gUnknown_085972BC:: @ 85972BC
	.4byte gUnknown_085972A4

	.align 2
gUnknown_085972C0:: @ 85972C0
	spr_template ANIM_TAG_SPARKLE_4, ANIM_TAG_SPARKLE_4, gUnknown_08524914, gUnknown_085972BC, NULL, gDummySpriteAffineAnimTable, sub_81159B4

	.align 2
gBattleAnimSpriteTemplate_85972D8:: @ 85972D8
	spr_template 0x0000, 0x0000, gDummyOamData, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_81160A4

	.align 2
gUnknown_085972F0:: @ 85972F0
	.2byte 0x0000, 0x0000, 0x0800, 0x0000, 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597300:: @ 8597300
	.2byte 0x00d8, 0x00d8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597318:: @ 8597318
	.2byte 0x00b0, 0x00b0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597330:: @ 8597330
	.2byte 0x0080, 0x0080, 0x0000, 0x0000, 0x0000, 0x0000, 0x0800, 0x0000
	.2byte 0x7fff, 0x0000, 0x0000, 0x0000

	.align 2
gUnknown_08597348:: @ 8597348
	.4byte gUnknown_085972F0
	.4byte gUnknown_08597300
	.4byte gUnknown_08597318
	.4byte gUnknown_08597330

	.align 2
gBasicHitSplatSpriteTemplate:: @ 8597358
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_8116388

	.align 2
gBattleAnimSpriteTemplate_8597370:: @ 8597370
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_8116420

	.align 2
gUnknown_08597388:: @ 8597388
	spr_template ANIM_TAG_WATER_IMPACT, ANIM_TAG_WATER_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_8116388

	.align 2
gUnknown_085973A0:: @ 85973A0
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_8116458

	.align 2
gBattleAnimSpriteTemplate_85973B8:: @ 85973B8
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_81164F0

	.align 2
gUnknown_085973D0:: @ 85973D0
	spr_template ANIM_TAG_CROSS_IMPACT, ANIM_TAG_CROSS_IMPACT, gUnknown_08524A34, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_8116560

	.align 2
gUnknown_085973E8:: @ 85973E8
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524974, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_81165A8

	.align 2
gUnknown_08597400:: @ 8597400
	spr_template ANIM_TAG_IMPACT, ANIM_TAG_IMPACT, gUnknown_08524A94, gDummySpriteAnimTable, NULL, gUnknown_08597348, sub_81163D0

gUnknown_08597418:: @ 8597418
	.2byte 0x7fff

gUnknown_0859741A:: @ 859741A
	.byte 0x08, 0x0a, 0x0c, 0x0e

gUnknown_0859741E:: @ 859741E
	.byte 0x08, 0x0a, 0x0c, 0x0e

	.align 2
gUnknown_08597424:: @ 8597424
	.4byte task_battle_intro_80BC47C
	.4byte task_battle_intro_80BC47C
	.4byte task00_battle_intro_80BC6C8
	.4byte task00_battle_intro_80BC6C8
	.4byte task00_battle_intro_80BC6C8
	.4byte task_battle_intro_80BC47C
	.4byte task_battle_intro_80BC47C
	.4byte task_battle_intro_80BC47C
	.4byte task_battle_intro_anim
	.4byte task_battle_intro_anim
