#include "global.h"
#include "battle.h"
#include "battle_anim.h"
#include "battle_controllers.h"
#include "battle_interface.h"
#include "battle_gimmick.h"
#include "battle_setup.h"
#include "item.h"
#include "palette.h"
#include "pokemon.h"
#include "sprite.h"
#include "util.h"
#include "test_runner.h"

static void SpriteCb_GimmickTrigger(struct Sprite *sprite);

#include "data/gimmicks.h"

// Populates gBattleStruct->gimmick.usableGimmick for each battler.
void AssignUsableGimmicks(void)
{
    u32 battler, gimmick;
    #ifdef TESTING
    for (battler = 0; battler < gBattlersCount; ++battler)
    {
        gimmick = TestRunner_Battle_GetChosenGimmick(battler);
        if (GetActiveGimmick(battler) == GIMMICK_NONE)
            gBattleStruct->gimmick.usableGimmick[battler] = gimmick;
        else
            gBattleStruct->gimmick.usableGimmick[battler] = GIMMICK_NONE;
    }
    #else
    for (battler = 0; battler < gBattlersCount; ++battler)
    {
        gBattleStruct->gimmick.usableGimmick[battler] = GIMMICK_NONE;
        for (gimmick = 0; gimmick < GIMMICKS_COUNT; ++gimmick)
        {
            if (CanActivateGimmick(battler, gimmick))
            {
                gBattleStruct->gimmick.usableGimmick[battler] = gimmick;
                break;
            }
        }
    }
    #endif
}

// Returns whether a battler is able to use a gimmick. Checks consumption and gimmick specific functions.
bool32 CanActivateGimmick(u32 battler, enum Gimmick gimmick)
{
    return gGimmicksInfo[gimmick].CanActivate != NULL && gGimmicksInfo[gimmick].CanActivate(battler);
}

// Returns whether the player has a gimmick selected while in the move selection menu.
bool32 IsGimmickSelected(u32 battler, enum Gimmick gimmick)
{
    #ifdef TESTING
    return (GetActiveGimmick(battler) == GIMMICK_NONE
            && !HasTrainerUsedGimmick(battler, gimmick)
            && (gBattleStruct->gimmick.toActivate & gBitTable[battler])
            && gBattleStruct->gimmick.usableGimmick[battler] == gimmick);
    #else
    return gBattleStruct->gimmick.usableGimmick[battler] == gimmick && gBattleStruct->gimmick.playerSelect;
    #endif
}

// Sets a battler as having a gimmick active using their party index.
void SetActiveGimmick(u32 battler, enum Gimmick gimmick)
{
    gBattleStruct->gimmick.activeGimmick[GetBattlerSide(battler)][gBattlerPartyIndexes[battler]] = gimmick;
}

// Returns a battler's active gimmick, if any.
enum Gimmick GetActiveGimmick(u32 battler)
{
    return gBattleStruct->gimmick.activeGimmick[GetBattlerSide(battler)][gBattlerPartyIndexes[battler]];
}

// Returns whether a trainer mon is intended to use an unrestrictive gimmick via .useGimmick (i.e Tera).
bool32 ShouldTrainerBattlerUseGimmick(u32 battler, enum Gimmick gimmick)
{
    if (GetBattlerSide(battler) == B_SIDE_PLAYER)
    {
        return TRUE; // the player can do whatever they want
    }
    else
    {
        bool32 isSecondTrainer = (GetBattlerPosition(battler) == B_POSITION_OPPONENT_RIGHT) && (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS) && !BATTLE_TWO_VS_ONE_OPPONENT;
        u16 trainerId = isSecondTrainer ? gTrainerBattleOpponent_B : gTrainerBattleOpponent_A;
        const struct TrainerMon *mon = &GetTrainerPartyFromId(trainerId)[isSecondTrainer ? gBattlerPartyIndexes[battler] - MULTI_PARTY_SIZE : gBattlerPartyIndexes[battler]];
        return mon->useGimmick == gimmick;
    }
}

// Returns whether a trainer has used a gimmick during a battle.
bool32 HasTrainerUsedGimmick(u32 battler, enum Gimmick gimmick)
{
    // Check whether partner battler has used gimmick or plans to during turn.
    if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE
        && IsPartnerMonFromSameTrainer(battler)
        && (gBattleStruct->gimmick.activated[BATTLE_PARTNER(battler)][gimmick]
        || ((gBattleStruct->gimmick.toActivate & gBitTable[BATTLE_PARTNER(battler)]
        && gBattleStruct->gimmick.usableGimmick[BATTLE_PARTNER(battler)] == gimmick))))
    {
        return TRUE;
    }
    // Otherwise, return whether current battler has used gimmick.
    else
    {
        return gBattleStruct->gimmick.activated[battler][gimmick];
    }
}

// Sets a gimmick as used by a trainer with checks for Multi Battles.
void SetGimmickAsActivated(u32 battler, enum Gimmick gimmick)
{
    gBattleStruct->gimmick.activated[battler][gimmick] = TRUE;
    if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE && IsPartnerMonFromSameTrainer(battler))
        gBattleStruct->gimmick.activated[BATTLE_PARTNER(battler)][gimmick] = TRUE;
}

#define SINGLES_GIMMICK_TRIGGER_POS_X_OPTIMAL (30)
#define SINGLES_GIMMICK_TRIGGER_POS_X_PRIORITY (31)
#define SINGLES_GIMMICK_TRIGGER_POS_X_SLIDE (15)
#define SINGLES_GIMMICK_TRIGGER_POS_Y_DIFF (-11)

#define DOUBLES_GIMMICK_TRIGGER_POS_X_OPTIMAL (30)
#define DOUBLES_GIMMICK_TRIGGER_POS_X_PRIORITY (31)
#define DOUBLES_GIMMICK_TRIGGER_POS_X_SLIDE (15)
#define DOUBLES_GIMMICK_TRIGGER_POS_Y_DIFF (-4)

#define tBattler    data[0]
#define tHide       data[1]

void ChangeGimmickTriggerSprite(u32 spriteId, u32 animId)
{
    StartSpriteAnim(&gSprites[spriteId], animId);
}

void CreateGimmickTriggerSprite(u32 battler)
{
    const struct GimmickInfo * gimmick = &gGimmicksInfo[gBattleStruct->gimmick.usableGimmick[battler]];

    // Exit if there shouldn't be a sprite produced.
    if (GetBattlerSide(battler) == B_SIDE_OPPONENT
        || gBattleStruct->gimmick.usableGimmick[battler] == GIMMICK_NONE
        || gimmick->triggerSheet == NULL)
    {
        return;
    }

    LoadSpritePalette(gimmick->triggerPal);
    if (GetSpriteTileStartByTag(TAG_GIMMICK_TRIGGER_TILE) == 0xFFFF)
    {
        LoadSpriteSheet(gimmick->triggerSheet);
    }

    if (gBattleStruct->gimmick.triggerSpriteId == 0xFF)
    {
        if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE)
            gBattleStruct->gimmick.triggerSpriteId = CreateSprite(gimmick->triggerTemplate,
                                                             gSprites[gHealthboxSpriteIds[battler]].x - DOUBLES_GIMMICK_TRIGGER_POS_X_SLIDE,
                                                             gSprites[gHealthboxSpriteIds[battler]].y - DOUBLES_GIMMICK_TRIGGER_POS_Y_DIFF, 0);
        else
            gBattleStruct->gimmick.triggerSpriteId = CreateSprite(gimmick->triggerTemplate,
                                                             gSprites[gHealthboxSpriteIds[battler]].x - SINGLES_GIMMICK_TRIGGER_POS_X_SLIDE,
                                                             gSprites[gHealthboxSpriteIds[battler]].y - SINGLES_GIMMICK_TRIGGER_POS_Y_DIFF, 0);
    }

    gSprites[gBattleStruct->gimmick.triggerSpriteId].tBattler = battler;
    gSprites[gBattleStruct->gimmick.triggerSpriteId].tHide = FALSE;

    ChangeGimmickTriggerSprite(gBattleStruct->gimmick.triggerSpriteId, 0);
}

bool32 IsGimmickTriggerSpriteActive(void)
{
    if (GetSpriteTileStartByTag(TAG_GIMMICK_TRIGGER_TILE) == 0xFFFF)
        return FALSE;
    else if (IndexOfSpritePaletteTag(TAG_GIMMICK_TRIGGER_PAL) != 0xFF)
        return TRUE;
    else
        return FALSE;
}

void HideGimmickTriggerSprite(void)
{
    if (gBattleStruct->gimmick.triggerSpriteId != 0xFF)
    {
        ChangeGimmickTriggerSprite(gBattleStruct->gimmick.triggerSpriteId, 0);
        gSprites[gBattleStruct->gimmick.triggerSpriteId].tHide = TRUE;
    }
}

void DestroyGimmickTriggerSprite(void)
{
    FreeSpritePaletteByTag(TAG_GIMMICK_TRIGGER_PAL);
    FreeSpriteTilesByTag(TAG_GIMMICK_TRIGGER_TILE);
    if (gBattleStruct->gimmick.triggerSpriteId != 0xFF)
        DestroySprite(&gSprites[gBattleStruct->gimmick.triggerSpriteId]);
    gBattleStruct->gimmick.triggerSpriteId = 0xFF;
}

static void SpriteCb_GimmickTrigger(struct Sprite *sprite)
{
    s32 xSlide, xPriority, xOptimal;
    s32 yDiff;

    if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE)
    {
        xSlide = DOUBLES_GIMMICK_TRIGGER_POS_X_SLIDE;
        xPriority = DOUBLES_GIMMICK_TRIGGER_POS_X_PRIORITY;
        xOptimal = DOUBLES_GIMMICK_TRIGGER_POS_X_OPTIMAL;
        yDiff = DOUBLES_GIMMICK_TRIGGER_POS_Y_DIFF;
    }
    else
    {
        xSlide = SINGLES_GIMMICK_TRIGGER_POS_X_SLIDE;
        xPriority = SINGLES_GIMMICK_TRIGGER_POS_X_PRIORITY;
        xOptimal = SINGLES_GIMMICK_TRIGGER_POS_X_OPTIMAL;
        yDiff = SINGLES_GIMMICK_TRIGGER_POS_Y_DIFF;
    }

    if (sprite->tHide)
    {
        if (sprite->x != gSprites[gHealthboxSpriteIds[sprite->tBattler]].x - xSlide)
            sprite->x++;

        if (sprite->x >= gSprites[gHealthboxSpriteIds[sprite->tBattler]].x - xPriority)
            sprite->oam.priority = 2;
        else
            sprite->oam.priority = 1;

        sprite->y = gSprites[gHealthboxSpriteIds[sprite->tBattler]].y - yDiff;
        sprite->y2 = gSprites[gHealthboxSpriteIds[sprite->tBattler]].y2 - yDiff;
        if (sprite->x == gSprites[gHealthboxSpriteIds[sprite->tBattler]].x - xSlide)
            DestroyGimmickTriggerSprite();
    }
    else
    {
        if (sprite->x != gSprites[gHealthboxSpriteIds[sprite->tBattler]].x - xOptimal)
            sprite->x--;

        if (sprite->x >= gSprites[gHealthboxSpriteIds[sprite->tBattler]].x - xPriority)
            sprite->oam.priority = 2;
        else
            sprite->oam.priority = 1;

        sprite->y = gSprites[gHealthboxSpriteIds[sprite->tBattler]].y - yDiff;
        sprite->y2 = gSprites[gHealthboxSpriteIds[sprite->tBattler]].y2 - yDiff;
    }
}
