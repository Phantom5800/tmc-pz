/**
 * @file frozenOctorok.c
 * @ingroup Objects
 *
 * @brief Frozen Octorok object
 */

#define NENT_DEPRECATED
#include "enemy/octorokBoss.h"
#include "global.h"
#include "object.h"
#include "functions.h"
#include "message.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xc];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c[2];
    /*0x7e*/ u16 unk_7e;
    /*0x7f*/ u8 unk_7f[4];
    /*0x84*/ OctorokBossHeap* heap;
} FrozenOctorokEntity;

void FrozenOctorok_Init(FrozenOctorokEntity*);
void FrozenOctorok_Action1(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction0(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction1(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction2(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction3(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction4(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction5(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction6(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction7(FrozenOctorokEntity*);
void FrozenOctorok_ChangeObjPaletteOfChildren(FrozenOctorokEntity*, u32);
void sub_0809CBE4(FrozenOctorokEntity*);
void sub_0809CB70(FrozenOctorokEntity*, s32, s32);

void FrozenOctorok(FrozenOctorokEntity* this) {
    static void (*const FrozenOctorok_Actions[])(FrozenOctorokEntity*) = {
        FrozenOctorok_Init,
        FrozenOctorok_Action1,
    };
    FrozenOctorok_Actions[super->action](this);
    super->spriteRendering.b3 = 3;
}

const u8 gUnk_08123DDC[] = {
    9, 4, 0, 0, 1, 5, 0, 0, 1, 4, 0, 0, 1, 3, 0, 0, 1, 2, 0, 0, 2, 1, 0, 0, 10, 4, 0, 0,
};

ASM_FUNC("asm/non_matching/frozenOctorok/FrozenOctorok_Init.inc", void FrozenOctorok_Init(FrozenOctorokEntity* this))

void (*const FrozenOctorok_Action1SubActions[])(FrozenOctorokEntity*) = {
    FrozenOctorok_Action1SubAction0, FrozenOctorok_Action1SubAction1, FrozenOctorok_Action1SubAction2,
    FrozenOctorok_Action1SubAction3, FrozenOctorok_Action1SubAction4, FrozenOctorok_Action1SubAction5,
    FrozenOctorok_Action1SubAction6, FrozenOctorok_Action1SubAction7,
};

const u8 gUnk_08123E18[] = {
    40,
    80,
    176,
    216,
};
const u8 gUnk_08123E1C[] = {
    128,
    0,
    0,
    128,
};

ASM_FUNC("asm/non_matching/frozenOctorok/FrozenOctorok_Action1.inc",
         void FrozenOctorok_Action1(FrozenOctorokEntity* this))

void FrozenOctorok_Action1SubAction0(FrozenOctorokEntity* this) {
    Entity* child;
    if (super->field_0xf != 0) {
        if (this->unk_7e == 0) {
            child = super->child;
            if (child->z.HALF.HI > -0x10) {
                child->z.WORD -= 0x4000;
            } else {
                child->z.WORD -= 0x1000;
                (super->child)->zVelocity = 0x3000;
                this->unk_7e = 0x200;
            }
        }
        if (this->unk_79-- == 0) {
            MessageFromTarget(0xb43);
            super->subAction = 1;
            this->unk_79 = 8;
        }
    }
}

void FrozenOctorok_Action1SubAction1(FrozenOctorokEntity* this) {
    Entity* obj;
    if ((gMessage.doTextBox & 0x7f) == 0) {
        if (this->unk_79-- == 0) {
            obj = CreateObjectWithParent(super, FROZEN_OCTOROK, 7, 0);
            if (obj != NULL) {
                obj->y.HALF.HI -= 0x50;
                gRoomControls.camera_target = obj;
            }
            if (super->field_0xf < 3) {
                super->subAction = 2;
                this->unk_79 = 0x1e;
                SoundReq(SFX_THUD_HEAVY);
            } else {
                super->subAction = 3;
                this->unk_79 = 0x78;
            }
        }
    }
}

void FrozenOctorok_Action1SubAction2(FrozenOctorokEntity* this) {
    if (this->unk_79-- == 0) {
        super->subAction = 1;
        this->unk_79 = 0x1e;
        super->field_0xf++;
        return;
    }
    switch (this->unk_79 & 3) {
        case 0:
        case 2:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
            break;
        case 1:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff8) + 4;
            break;
        case 3:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff8) - 4;
            break;
    }
}

void FrozenOctorok_Action1SubAction3(FrozenOctorokEntity* this) {
    if (this->unk_79-- != 0) {
        CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 6, 0);
    } else {
        super->subAction = 4;
        this->unk_79 = 0x3c;
        LoadFixedGFX(super, 0x115);
        LoadFixedGFX(super->parent, 0x115);
        ChangeObjPalette(super, 0xef);
        ChangeObjPalette(super->parent, 0xef);
        FrozenOctorok_ChangeObjPaletteOfChildren(this, 0xef);
        SoundReq(SFX_WIND2);
    }
}

void FrozenOctorok_Action1SubAction4(FrozenOctorokEntity* this) {
    u8 bVar1;
    s16 sVar2;
    u8* pbVar3;
    u8* puVar4;

    if (this->unk_79-- == 0) {
        super->subAction = 5;
        this->unk_79 = 0xb4;
        super->type2 = 3;
    } else {
        if ((gRoomTransition.frameCount & 8) != 0) {
            this->heap->mouthObject->unk_76 -= 4;
        } else {
            this->heap->mouthObject->unk_76 += 4;
        }
    }
}

NONMATCH("asm/non_matching/frozenOctorok/FrozenOctorok_Action1SubAction5.inc",
         void FrozenOctorok_Action1SubAction5(FrozenOctorokEntity* this)) {
    Entity* child;

    if ((gRoomTransition.frameCount & 2) != 0) {
        this->heap->mouthObject->unk_76 -= 8;
    } else {
        this->heap->mouthObject->unk_76 += 8;
    }
    if ((gRoomTransition.frameCount & 3) == 0) {
        CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 2, 0);
    }
    if (this->unk_79 == 0) {
        (super->child)->spriteOffsetX = 0;
        LinearMoveAngle(super->child, 0x200, -this->unk_7b);
        if (sub_0806FC80(super, super->child, 0x48) != 0) {
            super->subAction = 6;
            super->speed = 0xc0;
            super->type2 = 0;
            super->field_0xf = 0;
            child = super->child;
            child->spriteSettings.draw = 0;
            this->heap->mouthObject->unk_76 = 0x100;
            this->heap->unk_0 = 1;
            SoundReq(SFX_ED);
        }
    } else {
        this->unk_79--;
        switch ((gRoomTransition.frameCount & 3)) {
            case 0:
            case 2:
                (super->child)->spriteOffsetX = 0;
                break;
            case 1:
                (super->child)->spriteOffsetX = 0xfc;
                break;
            case 3:
                (super->child)->spriteOffsetX = 4;
                break;
        }
    }
}
END_NONMATCH

void FrozenOctorok_Action1SubAction6(FrozenOctorokEntity* this) {
    LinearMoveUpdate(super);
    if ((gRoomControls.origin_y + 0x1c8) < super->y.HALF.HI) {
        gRoomControls.unk5 = 4;
        gRoomControls.camera_target = &gPlayerEntity;
        SetLocalFlag(0x9b);
        DeleteEntity(super->parent);
        DeleteEntity(&this->heap->mouthObject->base);
        DeleteEntity(&this->heap->legObjects[0]->base);
        DeleteEntity(&this->heap->legObjects[1]->base);
        DeleteEntity(&this->heap->legObjects[2]->base);
        DeleteEntity(&this->heap->legObjects[3]->base);
        super->subAction = 7;
    }
    if ((gRoomTransition.frameCount & 0xf) == 0) {
        SoundReq(SFX_163);
    }
}

void FrozenOctorok_Action1SubAction7(FrozenOctorokEntity* this) {
    if ((gRoomControls.scroll_flags & 4) == 0) {
        CreateEzloHint(0xb44, 0);
        DeleteThisEntity();
    }
}

void sub_0809CB70(FrozenOctorokEntity* this, s32 angle, s32 radius) {
    s32 tmp;
    tmp = FixedMul(gSineTable[angle], radius);
    tmp = FixedDiv(tmp, 0x100);
    super->x.WORD = (super->parent)->x.WORD + ((tmp << 0x10) >> 8);
    tmp = FixedMul(gSineTable[angle + 0x40], radius);
    tmp = FixedDiv(tmp, 0x100);
    super->y.WORD = super->parent->y.WORD - ((tmp << 0x10) >> 8);
    super->z.WORD = super->parent->z.WORD;
}

NONMATCH("asm/non_matching/frozenOctorok/sub_0809CBE4.inc", void sub_0809CBE4(FrozenOctorokEntity* this)) {
    this->unk_79 += super->field_0xf;
    if ((s8)super->field_0xf < 0) {
        if (super->actionDelay < -(this->unk_79 << 0x18 >> 0x18)) {
            super->field_0xf = -super->field_0xf;
            SoundReq(SFX_19E);
        }
    } else if ((s8)this->unk_79 > super->actionDelay) {
        super->field_0xf = -super->field_0xf;
        SoundReq(SFX_19E);
    }
}
END_NONMATCH

void FrozenOctorok_ChangeObjPaletteOfChildren(FrozenOctorokEntity* this, u32 palette) {
    u32 index;

    ChangeObjPalette(&this->heap->mouthObject->base, palette);
    for (index = 0; index < 4; index++) {
        ChangeObjPalette(&this->heap->legObjects[index]->base, palette);
    }
}
