
// Includes
#include "global.h"
#include "task.h"
#include "cable_club.h"
#include "link.h"
#include "tv.h"
#include "battle_tower.h"
#include "mystery_event_script.h"
#include "secret_base.h"
#include "mauville_old_man.h"
#include "record_mixing.h"

// Static type declarations

struct RecordMixingData {
    /* 0x0000 */ struct SecretBaseRecord secretBases[20];
    /* 0x0c80 */ TVShow tvShows[25];
    /* 0x1004 */ PokeNews pokeNews[16];
    /* 0x1044 */ OldMan oldMan;
    /* 0x1084 */ struct EasyChatPair easyChatPair[5];
    /* 0x10ac */ u8 unk_10ac[0x78];
    /* 0x1124 */ u8 unk_1124[0xa4];
    /* 0x11c8 */ u16 unk_11c8;
    /* 0x11ca */ u8 filler_11ca[0x46];
    /* 0x1210 */ u16 unk_1210;
    /* 0x1214 */ LilycoveLady lilycoveLady;
    /* 0x1254 */ u8 unk_1254[0x88];
    /* 0x12dc */ u8 unk_12dc[0x168];
}; // 1444

// Static RAM declarations

IWRAM_DATA bool8 gUnknown_03001130;
IWRAM_DATA struct SecretBaseRecord *gUnknown_03001134;
IWRAM_DATA TVShow *gUnknown_03001138;
IWRAM_DATA PokeNews *gUnknown_0300113C;
IWRAM_DATA OldMan *gUnknown_03001140;
IWRAM_DATA struct EasyChatPair *gUnknown_03001144;
IWRAM_DATA struct DayCareMailRecordMixing *gUnknown_03001148;
IWRAM_DATA void *gUnknown_0300114C; // gSaveBlock2Ptr->field_64C
IWRAM_DATA LilycoveLady *gUnknown_03001150;
IWRAM_DATA void *gUnknown_03001154; // gSaveBlock2Ptr->field_0DC;
IWRAM_DATA void *gUnknown_03001158; // gSaveBlock2Ptr->field_64C
IWRAM_DATA u32 gUnknown_0300115C;
IWRAM_DATA u8 gUnknown_03001160[8];
IWRAM_DATA u32 gUnknown_03001168[3];

EWRAM_DATA struct DayCareMailRecordMixing gUnknown_02039F9C[2] = {};
EWRAM_DATA struct RecordMixingData *gUnknown_0203A014 = NULL;
EWRAM_DATA struct RecordMixingData *gUnknown_0203A018 = NULL;

// Static ROM declarations

void sub_80E715C(u8 taskId);
void sub_80E78C4(OldMan *, size_t, u8);
void sub_80E7948(void *, size_t, u8);
void sub_80E7A14(LilycoveLady *, size_t, u8);
void sub_80E7B2C(TVShow *);
void sub_80E7B60(void *, size_t, u8, TVShow *);
void sub_80E7F68(void *, u8);
void sub_80E8110(void *, void *);
void sub_80E8468(void *, size_t, u8);
void sub_80E89AC(void *, size_t, u8);
void sub_80E89F8(void *dest);
void sub_80E8A54(void *src);
void sub_80E8AC0(void *);
void sub_80EAF80(struct SecretBaseRecord *, size_t, u8);
void sub_80F01E8(void *, size_t, u8);
void sub_80F0C7C(PokeNews *, size_t, u8);
void sub_812287C(struct EasyChatPair *, size_t, u8);
void TaskDummy4(void *src);

// .rodata

// .text

void sub_80E6BE8(void)
{
    sub_80B37D4(sub_80E715C);
}

void sub_80E6BF8(void)
{
    gUnknown_03001134 = gSaveBlock1Ptr->secretBases;
    gUnknown_03001138 = gSaveBlock1Ptr->tvShows;
    gUnknown_0300113C = gSaveBlock1Ptr->pokeNews;
    gUnknown_03001140 = &gSaveBlock1Ptr->oldMan;
    gUnknown_03001144 = gSaveBlock1Ptr->easyChatPairs;
    gUnknown_03001148 = gUnknown_02039F9C;
    gUnknown_0300114C = gSaveBlock2Ptr->field_64C;
    gUnknown_03001150 = &gSaveBlock1Ptr->lilycoveLady;
    gUnknown_03001154 = gSaveBlock2Ptr->field_0DC;
    gUnknown_03001158 = gSaveBlock2Ptr->field_64C;
}

void sub_80E6CA0(struct RecordMixingData *dest)
{
    memcpy(dest->secretBases, gUnknown_03001134, sizeof(struct SecretBaseRecord) * 20);
    memcpy(dest->tvShows, gUnknown_03001138, sizeof(TVShow) * 25);
    sub_80F14F8(dest->tvShows);
    memcpy(dest->pokeNews, gUnknown_0300113C, sizeof(PokeNews) * 16);
    memcpy(&dest->oldMan, gUnknown_03001140, sizeof(OldMan));
    memcpy(dest->easyChatPair, gUnknown_03001144, sizeof(struct EasyChatPair) * 5);
    sub_80E89F8(dest->unk_10ac);
    sub_81659DC(gUnknown_0300114C, dest->unk_1124);
    if (GetMultiplayerId() == 0)
    {
        dest->unk_11c8 = sub_81539D4();
    }
}

void sub_80E6D54(struct RecordMixingData *dest)
{
    memcpy(dest->secretBases, gUnknown_03001134, sizeof(struct SecretBaseRecord) * 20);
    sub_80EB18C(dest->secretBases);
    memcpy(dest->tvShows, gUnknown_03001138, sizeof(TVShow) * 25);
    sub_80F1208(dest->tvShows);
    memcpy(dest->pokeNews, gUnknown_0300113C, sizeof(PokeNews) * 16);
    memcpy(&dest->oldMan, gUnknown_03001140, sizeof(OldMan));
    sub_8120B70(&dest->oldMan);
    memcpy(dest->easyChatPair, gUnknown_03001144, sizeof(struct EasyChatPair) * 5);
    sub_80E89F8(dest->unk_10ac);
    sub_80E8A54(dest->unk_10ac);
    sub_81659DC(gUnknown_0300114C, dest->unk_1124);
    TaskDummy4(dest->unk_1124);
    if (GetMultiplayerId() == 0)
    {
        dest->unk_11c8 = sub_81539D4();
    }
}

void sub_80E6E24(void)
{
    sub_80E9914();
    sub_80F0BB8();
    sub_80E6BF8();
    if (sub_800A064())
    {
        if (sub_800A03C() == FALSE)
        {
            sub_80E6CA0(gUnknown_0203A018);
        }
        else
        {
            sub_80E6D54(gUnknown_0203A018);
        }
    }
    else
    {
        memcpy(gUnknown_0203A018->secretBases, gUnknown_03001134, sizeof(struct SecretBaseRecord) * 20);
        memcpy(gUnknown_0203A018->tvShows, gUnknown_03001138, sizeof(TVShow) * 25);
        memcpy(gUnknown_0203A018->pokeNews, gUnknown_0300113C, sizeof(PokeNews) * 16);
        memcpy(&gUnknown_0203A018->oldMan, gUnknown_03001140, sizeof(OldMan));
        memcpy(&gUnknown_0203A018->lilycoveLady, gUnknown_03001150, sizeof(LilycoveLady));
        memcpy(gUnknown_0203A018->easyChatPair, gUnknown_03001144, sizeof(struct EasyChatPair) * 5);
        sub_80E89F8(gUnknown_0203A018->unk_10ac);
        memcpy(gUnknown_0203A018->unk_1124, gUnknown_0300114C, 0xec);
        sub_80E8AC0(gUnknown_0203A018->unk_1124);
        if (GetMultiplayerId() == 0)
        {
            gUnknown_0203A018->unk_1210 = sub_81539D4();
        }
        sub_80E8110(gUnknown_0203A018->unk_1254, gUnknown_03001154);
        sub_80E8260(gUnknown_0203A018->unk_12dc);
    }
}

void sub_80E6F60(u32 a0)
{
    if (sub_800A064())
    {
        // Ruby/Sapphire
        sub_80E7B2C(gUnknown_0203A014[0].tvShows);
        sub_80EAF80(gUnknown_0203A014[0].secretBases, 0x1230, a0);
        sub_80E7B60(gUnknown_0203A014[0].unk_10ac, 0x1230, a0, gUnknown_0203A014[0].tvShows);
        sub_80E7948(gUnknown_0203A014[0].unk_1124, 0x1230, a0);
        sub_80F01E8(gUnknown_0203A014[0].tvShows, 0x1230, a0);
        sub_80F0C7C(gUnknown_0203A014[0].pokeNews, 0x1230, a0);
        sub_80E78C4(&gUnknown_0203A014[0].oldMan, 0x1230, a0);
        sub_812287C(gUnknown_0203A014[0].easyChatPair, 0x1230, a0);
        sub_80E7F68(&gUnknown_0203A014[0].unk_11c8, a0);
    }
    else
    {
        // Emerald
        sub_80E7B2C(gUnknown_0203A014[0].tvShows);
        sub_80EAF80(gUnknown_0203A014[0].secretBases, 0x1444, a0);
        sub_80F01E8(gUnknown_0203A014[0].tvShows, 0x1444, a0);
        sub_80F0C7C(gUnknown_0203A014[0].pokeNews, 0x1444, a0);
        sub_80E78C4(&gUnknown_0203A014[0].oldMan, 0x1444, a0);
        sub_812287C(gUnknown_0203A014[0].easyChatPair, 0x1444, a0);
        sub_80E7B60(gUnknown_0203A014[0].unk_10ac, 0x1444, a0, gUnknown_0203A014[0].tvShows);
        sub_80E7948(gUnknown_0203A014[0].unk_1124, 0x1444, a0);
        sub_80E7F68(&gUnknown_0203A014[0].unk_1210, a0);
        sub_80E7A14(&gUnknown_0203A014[0].lilycoveLady, 0x1444, a0);
        sub_80E8468(gUnknown_0203A014[0].unk_1254, 0x1444, a0);
        sub_80E89AC(gUnknown_0203A014[0].unk_12dc, 0x1444, a0);
    }
}
