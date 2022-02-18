#ifndef TMC_DEATHFX_H
#define TMC_DEATHFX_H

#ifndef NENT_DEPRECATED
#error "deathFx.h requires new entities"
#endif
#include "entity.h"

typedef struct {
    Entity base;
    int filler68;
    u8 unk6c;
    u8 parentId;
    u8 item;
} DeathFxObject;

#endif // TMC_DEATHFX_H