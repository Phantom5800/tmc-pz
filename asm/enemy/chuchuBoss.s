	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text













	thumb_func_start sub_080268EC
sub_080268EC: @ 0x080268EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xd0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026912
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_08027D20
_08026912:
	pop {r4, pc}

	thumb_func_start sub_08026914
sub_08026914: @ 0x08026914
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026942
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #4
	bl sub_08027B98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl InitAnimationForceUpdate
_08026942:
	adds r0, r4, #0
	bl sub_080277F8
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0802694C
sub_0802694C: @ 0x0802694C
	push {lr}
	ldr r2, _08026964 @ =gUnk_080CC26C
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08026964: .4byte gUnk_080CC26C

	thumb_func_start sub_08026968
sub_08026968: @ 0x08026968
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802698C
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080269C0
_0802698C:
	ldr r6, [r2, #0x54]
	ldr r4, [r2, #0x68]
	ldr r5, [r2, #0x50]
	ldrb r1, [r2, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r3, _080269C8 @ =0xFFFFFF00
	cmp r0, #0
	beq _080269A2
	movs r3, #0x80
	lsls r3, r3, #1
_080269A2:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_080269C0:
	adds r0, r2, #0
	bl sub_08027870
	pop {r4, r5, r6, pc}
	.align 2, 0
_080269C8: .4byte 0xFFFFFF00

	thumb_func_start sub_080269CC
sub_080269CC: @ 0x080269CC
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x68]
	mov sl, r0
	ldr r1, [r6, #0x50]
	mov sb, r1
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	cmp r0, #0
	beq _080269DC
	ldr r0, _080269FC @ =0xFFFFFD00
	mov r8, r0
_080269DC:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _08026A00
	mov r1, sl
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A02
	.align 2, 0
_080269FC: .4byte 0xFFFFFD00
_08026A00:
	movs r7, #1
_08026A02:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x44
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x87
	bhi _08026A20
	mov r1, sb
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A22
_08026A20:
	adds r7, #1
_08026A22:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	adds r0, #0x20
	cmp r0, #0x40
	bls _08026A62
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026A50
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	beq _08026A62
	adds r0, r5, #0
	movs r1, #6
	bl InitAnimationForceUpdate
	b _08026A62
_08026A50:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	beq _08026A62
	adds r0, r5, #0
	movs r1, #5
	bl InitAnimationForceUpdate
_08026A62:
	lsls r0, r4, #0x18
	cmp r0, #0
	blt _08026A74
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A76
_08026A74:
	adds r7, #1
_08026A76:
	cmp r7, #3
	beq _08026A7C
	b _08026B98
_08026A7C:
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	movs r0, #0x20
	movs r1, #0
	bl InitScreenShake
	ldr r0, _08026B24 @ =0x0000010B
	bl SoundReq
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08026B2E
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026B28
	ldrh r0, [r4, #0x2e]
	subs r0, #0x38
	b _08026B2C
	.align 2, 0
_08026B24: .4byte 0x0000010B
_08026B28:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x38
_08026B2C:
	strh r0, [r4, #0x2e]
_08026B2E:
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x54]
	ldr r0, [r6, #0x68]
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x84
	strb r1, [r2]
	adds r3, #0x84
	strb r1, [r3]
	mov r0, sb
	adds r0, #0x7a
	movs r1, #0x98
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	bl Random
	ldr r2, _08026B94 @ =gUnk_080CC278
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r7, r6, #0
	adds r7, #0x7c
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #0xa
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08026BB4
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r7]
	str r0, [r1]
	b _08026BB4
	.align 2, 0
_08026B94: .4byte gUnk_080CC278
_08026B98:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _08026BB4
	ldr r0, [r5, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	ldr r1, _08026BC4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r5, #0x78]
_08026BB4:
	adds r0, r6, #0
	bl sub_08027870
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026BC4: .4byte 0xFFFF8000
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x68]
	mov sl, r0
	ldr r1, [r6, #0x50]
	mov sb, r1
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	cmp r0, #0
	beq _080269F8
	ldr r0, _08026A18 @ =0xFFFFFD00
	mov r8, r0
_080269F8:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _08026A1C
	mov r1, sl
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A1E
	.align 2, 0
_08026A18: .4byte 0xFFFFFD00
_08026A1C:
	movs r7, #1
_08026A1E:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x44
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x87
	bhi _08026A3C
	mov r1, sb
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A3E
_08026A3C:
	adds r7, #1
_08026A3E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	adds r0, #0x20
	cmp r0, #0x40
	bls _08026A7E
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026A6C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #6
	bl InitAnimationForceUpdate
	b _08026A7E
_08026A6C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #5
	bl InitAnimationForceUpdate
_08026A7E:
	lsls r0, r4, #0x18
	cmp r0, #0
	blt _08026A90
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A92
_08026A90:
	adds r7, #1
_08026A92:
	cmp r7, #3
	beq _08026A98
	b _08026BB8
_08026A98:
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	movs r0, #0x20
	movs r1, #0
	bl InitScreenShake
	ldr r0, _08026B24 @ =0x0000010B
	bl SoundReq
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08026B4E
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026B28
	ldrh r0, [r4, #0x2e]
	subs r0, #0x38
	b _08026B2C
	.align 2, 0
_08026B24: .4byte 0x0000010B
_08026B28:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x38
_08026B2C:
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	movs r1, #0x3e
	bl LoadFixedGFX
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08026B46
	adds r0, r4, #0
	movs r1, #0x2b
	bl LoadObjPalette
	b _08026B4E
_08026B46:
	adds r0, r4, #0
	movs r1, #0x2c
	bl LoadObjPalette
_08026B4E:
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x54]
	ldr r0, [r6, #0x68]
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x84
	strb r1, [r2]
	adds r3, #0x84
	strb r1, [r3]
	mov r0, sb
	adds r0, #0x7a
	movs r1, #0x98
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	bl Random
	ldr r2, _08026BB4 @ =gUnk_080CC278
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r7, r6, #0
	adds r7, #0x7c
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #0xa
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08026BD4
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r7]
	str r0, [r1]
	b _08026BD4
	.align 2, 0
_08026BB4: .4byte gUnk_080CC278
_08026BB8:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _08026BD4
	ldr r0, [r5, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	ldr r1, _08026BE4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r5, #0x78]
_08026BD4:
	adds r0, r6, #0
	bl sub_08027870
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026BE4: .4byte 0xFFFF8000
.endif
	thumb_func_start sub_08026BE8
sub_08026BE8: @ 0x08026BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	adds r3, r5, #0
	adds r3, #0x3b
	ldrb r1, [r3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _08026C34
	movs r0, #7
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r2, [r0, #3]
	adds r1, #1
	movs r0, #0x2d
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08026C30 @ =0x00000155
	bl SoundReq
	b _08026C38
	.align 2, 0
_08026C30: .4byte 0x00000155
_08026C34:
	subs r0, #1
	strb r0, [r1]
_08026C38:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08026C40
sub_08026C40: @ 0x08026C40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	ldr r7, [r5, #0x68]
	ldr r6, [r5, #0x50]
	adds r2, r5, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	beq _08026CCC
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08026C9C
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08026C82
	ldr r0, [r4, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x78]
	b _08026E12
_08026C82:
	ldr r0, [r4, #0x74]
	ldr r3, _08026C94 @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	ldr r1, _08026C98 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E12
	.align 2, 0
_08026C94: .4byte 0xFFFE0000
_08026C98: .4byte 0xFFFF0000
_08026C9C:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026CBA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #8
	bl InitAnimationForceUpdate
	b _08026CCC
_08026CBA:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
_08026CCC:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _08026CF0
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026CEC @ =0xFFFFFD00
	cmp r0, #0
	beq _08026D00
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08026D00
	.align 2, 0
_08026CEC: .4byte 0xFFFFFD00
_08026CF0:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026D30 @ =0xFFFFFB80
	cmp r0, #0
	beq _08026D00
	movs r2, #0x90
	lsls r2, r2, #3
_08026D00:
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D34
	adds r1, r7, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
	.align 2, 0
_08026D30: .4byte 0xFFFFFB80
_08026D34:
	adds r0, r7, #0
	adds r0, #0x82
	movs r1, #0
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D60
	adds r1, r6, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
_08026D60:
	adds r0, r6, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D84
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r2, [r1]
_08026D7E:
	adds r0, r0, r2
	strh r0, [r1]
	b _08026D8A
_08026D84:
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
_08026D8A:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _08026DA4
	ldr r0, [r4, #0x74]
	ldr r3, _08026DA0 @ =0xFFFC0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	b _08026DA8
	.align 2, 0
_08026DA0: .4byte 0xFFFC0000
_08026DA4:
	movs r0, #0xa0
	strh r0, [r1]
_08026DA8:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x9f
	bhi _08026DBE
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E0C
_08026DBE:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl sub_080276F4
	adds r0, r4, #0
	adds r0, #0x7d
	movs r2, #0
	strb r2, [r0]
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026DEE
	adds r1, r6, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
_08026DEE:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #4
	mov r3, r8
	strb r0, [r3]
	strb r2, [r6, #0xf]
	strb r2, [r7, #0xf]
	strb r2, [r4, #0xf]
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #0x10
	bl sub_08027B98
_08026E0C:
	adds r0, r5, #0
	bl sub_08027870
_08026E12:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08026E1C
sub_08026E1C: @ 0x08026E1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _08026EE0
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xf]
	ldr r1, [r4, #0x50]
	ldrb r1, [r1, #0xf]
	ldr r2, [r4, #0x68]
	adds r0, r0, r1
	ldrb r2, [r2, #0xf]
	adds r0, r0, r2
	cmp r0, #0xa
	ble _08026EF2
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	mov r8, r1
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08027C54
	adds r5, r4, #0
	adds r5, #0x84
	cmp r0, #0
	beq _08026E72
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldr r0, [r4, #0x54]
	adds r0, #0x45
	movs r1, #0xff
	strb r1, [r0]
_08026E72:
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	cmp r0, #3
	bne _08026EA0
	adds r0, r4, #0
	adds r0, #0x45
	strb r6, [r0]
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	b _08026F14
_08026EA0:
	movs r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0x81
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x10]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x7d
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	strb r6, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl InitAnimationForceUpdate
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldr r1, [r5]
	movs r0, #0x21
	strb r0, [r1, #1]
	b _08026EF2
_08026EE0:
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	str r2, [r0, #8]
	ldr r0, [r1]
	strb r2, [r0, #6]
_08026EF2:
	adds r0, r4, #0
	bl sub_08027C54
	cmp r0, #0
	beq _08026F14
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026F14
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	bl sub_08078B48
_08026F14:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08026F1C
sub_08026F1C: @ 0x08026F1C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08026F70
	adds r0, r4, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026F68
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r2, #0
	strb r2, [r0, #3]
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5]
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldrb r0, [r5]
	cmp r0, #2
	bne _08026F68
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
_08026F68:
	adds r0, r4, #0
	bl sub_080277F8
	b _08026FA0
_08026F70:
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026FA0
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_08027B98
_08026FA0:
	add sp, #4
	pop {r4, r5, pc}

	thumb_func_start sub_08026FA4
sub_08026FA4: @ 0x08026FA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0x10]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r3, r4, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	cmp r0, #0
	beq _08026FD2
	movs r0, #1
	strb r0, [r3]
_08026FD2:
	ldr r2, [r4, #0x54]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x97
	bhi _08026FFE
	movs r1, #0x80
	lsls r1, r1, #9
	ldrb r0, [r3]
	lsls r1, r0
	ldr r0, [r2, #0x78]
	adds r0, r0, r1
	str r0, [r2, #0x78]
	ldr r2, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldrb r3, [r3]
	lsls r1, r3
	ldr r0, [r2, #0x74]
	subs r0, r0, r1
	str r0, [r2, #0x74]
	b _0802705C
_08026FFE:
	movs r0, #7
	strb r0, [r4, #0xd]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x2d
	strb r0, [r1]
	ldr r0, _08027044 @ =0x00000155
	bl SoundReq
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08027048
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802705C
	adds r0, r1, #0
	movs r1, #8
	bl InitAnimationForceUpdate
	b _0802705C
	.align 2, 0
_08027044: .4byte 0x00000155
_08027048:
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _0802705C
	adds r0, r1, #0
	movs r1, #7
	bl InitAnimationForceUpdate
_0802705C:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08027064
sub_08027064: @ 0x08027064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r0, [r5, #0x68]
	mov sb, r0
	ldr r1, [r5, #0x50]
	mov r8, r1
	movs r0, #0x60
	strh r0, [r5, #0x24]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027098
	ldr r0, _080270C8 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08027098
	movs r0, #0x7c
	bl SoundReq
_08027098:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r3, [r0]
	ldrb r1, [r3, #3]
	adds r7, r0, #0
	cmp r1, #0
	beq _080270E0
	ldr r0, _080270CC @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r4, [r5, r2]
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	cmp r4, r2
	beq _080270E0
	ldr r0, _080270C8 @ =gRoomTransition
	ldr r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080270D4
	cmp r4, r2
	ble _080270D0
	strb r1, [r3, #0xc]
	b _080270D4
	.align 2, 0
_080270C8: .4byte gRoomTransition
_080270CC: .4byte gPlayerEntity
_080270D0:
	movs r0, #0x10
	strb r0, [r3, #0xc]
_080270D4:
	ldr r0, [r7]
	ldrb r0, [r0, #0xc]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl ProcessMovement0
_080270E0:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _080270FC
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0802710E
	movs r0, #0x18
	b _08027110
_080270FC:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802710E
	movs r0, #0x18
	b _08027110
_0802710E:
	movs r0, #8
_08027110:
	strb r0, [r5, #0x15]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08027152
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	ldrh r1, [r1, #0xe]
	cmp r0, r1
	bne _0802714A
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080271FE
_0802714A:
	adds r0, r5, #0
	bl ProcessMovement0
	b _080271FE
_08027152:
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, sb
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, r8
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080271FE
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r3, #0
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #1
	bls _080271B2
	ldr r0, _080271DC @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	movs r3, #8
	cmp r1, r0
	ble _080271B2
	movs r3, #0x18
_080271B2:
	ldr r2, [r7]
	ldrb r1, [r2, #3]
	cmp r1, #5
	beq _080271C0
	ldrb r0, [r5, #0x15]
	cmp r0, r3
	bne _080271E0
_080271C0:
	movs r4, #0
	movs r0, #6
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r7]
	strb r4, [r0, #3]
	adds r1, r5, #0
	adds r1, #0x7d
	movs r0, #0xf
	b _080271FC
	.align 2, 0
_080271DC: .4byte gPlayerEntity
_080271E0:
	adds r0, r1, #1
	strb r0, [r2, #3]
	b _080271FE
_080271E6:
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #4
	beq _080271F6
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	b _080271FC
_080271F6:
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x3c
_080271FC:
	strb r0, [r1]
_080271FE:
	adds r0, r5, #0
	bl sub_08027870
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802720C
sub_0802720C: @ 0x0802720C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	bhi _080272CA
	lsls r0, r0, #2
	ldr r1, _08027228 @ =_0802722C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027228: .4byte _0802722C
_0802722C: @ jump table
	.4byte _080272C4 @ case 0
	.4byte _08027260 @ case 1
	.4byte _08027260 @ case 2
	.4byte _0802726E @ case 3
	.4byte _080272AA @ case 4
	.4byte _0802726E @ case 5
	.4byte _080272CA @ case 6
	.4byte _080272CA @ case 7
	.4byte _08027282 @ case 8
	.4byte _080272CA @ case 9
	.4byte _080272A0 @ case 10
	.4byte _080272CA @ case 11
	.4byte _08027260 @ case 12
_08027260:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _080272AA
_0802726E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _080272CA
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0
	strb r0, [r1]
	b _080272AA
_08027282:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _080272CA
	adds r0, r4, #0
	bl sub_0802757C
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080272CA
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _080272CA
_080272A0:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _080272B2
_080272AA:
	adds r0, r4, #0
	bl sub_0802757C
	b _080272CA
_080272B2:
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080272CA
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
	b _080272CA
_080272C4:
	adds r0, r4, #0
	bl sub_0802757C
_080272CA:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x34]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080272D4
sub_080272D4: @ 0x080272D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0xd]
	cmp r0, #0xc
	bls _080272E2
	b _08027532
_080272E2:
	lsls r0, r0, #2
	ldr r1, _080272EC @ =_080272F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080272EC: .4byte _080272F0
_080272F0: @ jump table
	.4byte _08027508 @ case 0
	.4byte _08027324 @ case 1
	.4byte _08027324 @ case 2
	.4byte _08027332 @ case 3
	.4byte _0802733E @ case 4
	.4byte _08027332 @ case 5
	.4byte _08027368 @ case 6
	.4byte _08027532 @ case 7
	.4byte _08027346 @ case 8
	.4byte _08027454 @ case 9
	.4byte _0802748C @ case 10
	.4byte _08027532 @ case 11
	.4byte _08027324 @ case 12
_08027324:
	adds r1, r6, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _0802733E
_08027332:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802733E
	b _08027532
_0802733E:
	adds r0, r6, #0
	bl sub_0802757C
	b _08027532
_08027346:
	ldrb r0, [r6, #0xf]
	cmp r0, #2
	bls _0802734E
	b _08027532
_0802734E:
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027360
	b _08027532
_08027360:
	ldrb r0, [r6, #0xf]
	adds r0, #1
	strb r0, [r6, #0xf]
	b _08027532
_08027368:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
	adds r0, r6, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080273A4
	b _08027532
_080273A4:
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027444
	adds r2, r6, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08027444
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x68]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x50]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	bl sub_08027D20
	adds r2, r0, #0
	cmp r2, #0
	beq _08027406
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r2, #0x2e]
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r0, #0x20
	adds r1, r2, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
_08027406:
	ldr r0, [r6, #0x54]
	bl sub_08027C54
	cmp r0, #0
	beq _0802741C
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	beq _08027428
_0802741C:
	ldr r0, _08027424 @ =0x00000127
	bl SoundReq
	b _08027444
	.align 2, 0
_08027424: .4byte 0x00000127
_08027428:
	bl sub_08078B48
	ldr r0, _0802744C @ =gRoomControls
	ldr r2, [r6, #0x54]
	str r2, [r0, #0x30]
	ldr r1, _08027450 @ =gPauseMenuOptions
	movs r0, #1
	strb r0, [r1]
	movs r0, #9
	strb r0, [r2, #0xd]
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
_08027444:
	adds r0, r6, #0
	bl sub_08027A60
	b _08027484
	.align 2, 0
_0802744C: .4byte gRoomControls
_08027450: .4byte gPauseMenuOptions
_08027454:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
_08027484:
	adds r0, r6, #0
	bl sub_0800445C
	b _08027532
_0802748C:
	adds r2, r6, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802749E
	adds r0, r6, #0
	bl sub_0802757C
	b _080274AE
_0802749E:
	adds r1, r6, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080274AE
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
_080274AE:
	adds r2, r6, #0
	adds r2, #0x83
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r1, [r0]
	lsrs r0, r1, #1
	ldrb r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _080274F4
	lsls r0, r2, #0x18
	cmp r0, #0
	ble _080274E0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xc
	bl InitAnimationForceUpdate
	b _08027532
_080274E0:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xb
	bl InitAnimationForceUpdate
	b _08027532
_080274F4:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xa
	bl InitAnimationForceUpdate
	b _08027532
_08027508:
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _08027532
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027532
	adds r1, r6, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08027532
	subs r0, #4
	strb r0, [r1]
_08027532:
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027548
sub_08027548: @ 0x08027548
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #8
	bl sub_08027B98
	adds r0, r4, #0
	adds r0, #0x7d
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_080276F4
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802757C
sub_0802757C: @ 0x0802757C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x7d
	ldrb r1, [r6]
	cmp r1, #0
	beq _080275BA
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080275AE
	ldr r0, [r5, #0x54]
	adds r0, #0x7d
	ldrb r0, [r0]
	movs r1, #0x83
	adds r1, r1, r5
	mov sl, r1
	cmp r0, #0
	beq _08027676
	movs r0, #0
	strb r0, [r6]
	b _08027676
_080275AE:
	subs r0, r1, #1
	strb r0, [r6]
	movs r2, #0x83
	adds r2, r2, r5
	mov sl, r2
	b _08027676
_080275BA:
	movs r0, #0x85
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	mov sb, r1
	cmp r1, #1
	bne _0802761E
	adds r1, r5, #0
	adds r1, #0x82
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	adds r2, r5, #0
	adds r2, #0x81
	movs r4, #0
	ldrsb r4, [r0, r4]
	movs r3, #0
	ldrsb r3, [r2, r3]
	mov r8, r1
	mov sl, r0
	adds r7, r2, #0
	cmp r4, r3
	blt _08027676
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08027616
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802761A
_08027616:
	mov r2, sb
	strb r2, [r6]
_0802761A:
	ldrb r0, [r7]
	b _08027670
_0802761E:
	adds r2, r5, #0
	adds r2, #0x82
	adds r1, r5, #0
	adds r1, #0x86
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x83
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r3, [r0]
	mov r8, r2
	mov sl, r1
	adds r7, r0, #0
	cmn r4, r3
	bgt _08027676
	movs r1, #1
	mov r2, ip
	strb r1, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0802766A
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802766C
_0802766A:
	strb r1, [r6]
_0802766C:
	ldrb r0, [r7]
	rsbs r0, r0, #0
_08027670:
	lsls r0, r0, #8
	mov r1, r8
	strh r0, [r1]
_08027676:
	ldr r2, [r5, #0x50]
	adds r0, r2, #0
	adds r0, #0x63
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0x62
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	mov r0, sl
	ldrb r2, [r0]
	adds r0, r5, #0
	bl LinearMoveAngle
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080276D2
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x2c]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x54]
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r2, [r2]
	bl LinearMoveAngle
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x54]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
_080276D2:
	ldr r0, [r5, #0x68]
	ldrb r2, [r5, #0xa]
	adds r1, r5, #0
	bl sub_080279AC
	mov r1, sl
	ldrb r0, [r1]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080276F4
sub_080276F4: @ 0x080276F4
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	ldr r5, [r0, #0x54]
	ldr r4, [r0, #0x68]
	ldr r0, [r0, #0x50]
	mov ip, r0
	adds r0, #0x84
	movs r2, #0
	strb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	strb r2, [r0]
	mov r0, ip
	adds r0, #0x7e
	movs r7, #0
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r2, [r0]
	mov r0, ip
	adds r0, #0x7d
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r7, [r0]
	ldr r0, _080277AC @ =gUnk_080CC27C
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r5, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r5, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B0 @ =gUnk_080CC2BC
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r4, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B4 @ =gUnk_080CC29C
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r2, ip
	adds r2, #0x86
	strh r0, [r2]
	ldrb r0, [r1, #2]
	mov r1, ip
	adds r1, #0x81
	strb r0, [r1]
	cmp r6, #0
	bne _080277AA
	mov r0, ip
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r5, #0
	adds r0, #0x85
	strb r7, [r0]
	mov r0, ip
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r5, #0
	adds r0, #0x82
	strh r6, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #7
	ldrh r1, [r2]
	bl __divsi3
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
_080277AA:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080277AC: .4byte gUnk_080CC27C
_080277B0: .4byte gUnk_080CC2BC
_080277B4: .4byte gUnk_080CC29C

	thumb_func_start sub_080277B8
sub_080277B8: @ 0x080277B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x54]
	adds r3, r1, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	cmp r4, r0
	bls _080277DC
	adds r0, r0, r2
	strh r0, [r3]
	ldr r0, [r1, #0x74]
	ldr r2, _080277D8 @ =0xFFFE8000
	adds r0, r0, r2
	str r0, [r1, #0x74]
	b _080277F0
	.align 2, 0
_080277D8: .4byte 0xFFFE8000
_080277DC:
	strh r4, [r3]
	adds r1, #0x7c
	movs r0, #8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080277F0:
	adds r0, r5, #0
	bl sub_080277F8
	pop {r4, r5, pc}

	thumb_func_start sub_080277F8
sub_080277F8: @ 0x080277F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r3, [r6, #0x54]
	ldr r5, [r6, #0x68]
	ldr r4, [r6, #0x50]
	ldrh r2, [r6, #0x2e]
	strh r2, [r5, #0x2e]
	movs r7, #0xe
	strb r7, [r5, #0xe]
	ldrh r0, [r6, #0x32]
	subs r0, #0xe
	strh r0, [r5, #0x32]
	strh r2, [r4, #0x2e]
	movs r0, #0x7a
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xe]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	strh r2, [r3, #0x2e]
	mov r1, ip
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _0802784E
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r3, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027850
	movs r0, #0
	strb r0, [r3, #0xe]
	b _08027850
_0802784E:
	strb r7, [r3, #0xe]
_08027850:
	ldrb r1, [r3, #0xe]
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r3, #0x32]
	ldr r0, [r3, #0x74]
	str r0, [r4, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r4, #0x78]
	ldr r0, [r3, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r5, #0x78]
	adds r0, r6, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027870
sub_08027870: @ 0x08027870
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [r7, #0x54]
	ldr r5, [r7, #0x68]
	ldr r6, [r7, #0x50]
	ldr r0, [r4, #0x74]
	str r0, [r6, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r6, #0x78]
	ldr r0, [r4, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r5, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r6, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278C2
	movs r0, #0xe
	b _080278CC
_080278C2:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r0, #0xe
_080278CC:
	strb r0, [r5, #0xe]
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278EA
	adds r2, r4, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r6, #0xe]
	b _080278FA
_080278EA:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r0, #0x12
	strb r0, [r6, #0xe]
	adds r2, r4, #0
	adds r2, #0x7a
_080278FA:
	adds r0, r2, #0
	ldrh r1, [r0]
	cmp r1, #0xa0
	bls _0802791A
	adds r0, r1, #0
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027934
	movs r0, #0
	b _08027932
_0802791A:
	cmp r1, #0x7f
	bhi _08027928
	ldrh r1, [r0]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	b _08027930
_08027928:
	ldrh r1, [r2]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #1
_08027930:
	adds r0, #0xe
_08027932:
	strb r0, [r4, #0xe]
_08027934:
	ldr r0, [r7, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r7, #0x30]
	str r0, [r5, #0x30]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r5, #0
	bl LinearMoveAngle
	ldr r0, [r5, #0x2c]
	str r0, [r6, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r6, #0x30]
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r6, #0
	bl LinearMoveAngle
	ldr r0, [r6, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r4, #0
	bl LinearMoveAngle
	adds r0, r7, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027984
sub_08027984: @ 0x08027984
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r5, [r4, #0x68]
	ldr r6, [r4, #0x50]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
	ldrb r2, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080279AC
	ldrb r2, [r6, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080279AC
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080279AC
sub_080279AC: @ 0x080279AC
	push {r4, r5, r6, lr}
	mov ip, r1
	movs r3, #4
	subs r3, r3, r2
	ldrh r1, [r1, #0x2e]
	ldrh r4, [r0, #0x2e]
	subs r1, r1, r4
	mov r6, ip
	adds r6, #0x62
	strb r1, [r6]
	mov r2, ip
	ldrh r1, [r2, #0x32]
	ldrh r2, [r0, #0x32]
	adds r0, r2, r3
	subs r1, r1, r0
	mov r5, ip
	adds r5, #0x63
	strb r1, [r5]
	mov r0, ip
	strh r4, [r0, #0x2e]
	adds r2, r2, r3
	strh r2, [r0, #0x32]
	ldr r1, [r0, #0x48]
	ldrb r0, [r6]
	strb r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x48]
	ldrb r0, [r5]
	strb r0, [r1, #1]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080279E8
sub_080279E8: @ 0x080279E8
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r4, [r2, #0x54]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08027A20
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #0xe
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r1, r1, r0
	cmp r1, #0x80
	bne _08027A58
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #1
	str r0, [sp]
	adds r0, r2, #0
	movs r2, #0xa0
	movs r3, #0x20
	bl sub_08027B98
	b _08027A58
_08027A20:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xa0
	bls _08027A30
	subs r0, r1, #4
	b _08027A32
_08027A30:
	movs r0, #0xa0
_08027A32:
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r1, r0, #0
	cmp r2, #0xa0
	bls _08027A44
	subs r0, r2, #4
	b _08027A46
_08027A44:
	movs r0, #0xa0
_08027A46:
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0xa0
	bne _08027A58
	ldrh r0, [r1]
	cmp r0, #0xa0
	bne _08027A58
	movs r0, #1
	b _08027A5A
_08027A58:
	movs r0, #0
_08027A5A:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027A60
sub_08027A60: @ 0x08027A60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027A78
	ldr r0, [r2, #0x74]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08027A7C
_08027A78:
	ldr r0, [r2, #0x74]
	ldr r1, _08027AA0 @ =0xFFFFC000
_08027A7C:
	adds r0, r0, r1
	str r0, [r2, #0x74]
	adds r3, r2, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	adds r2, r0, #1
	strb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x28
	bne _08027A9C
	movs r1, #0x80
	movs r0, #0x80
	ands r2, r0
	eors r2, r1
	strb r2, [r3]
_08027A9C:
	pop {pc}
	.align 2, 0
_08027AA0: .4byte 0xFFFFC000

	thumb_func_start sub_08027AA4
sub_08027AA4: @ 0x08027AA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027B94
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08027AC2
	cmp r0, #0x1b
	beq _08027B44
	b _08027B94
_08027AC2:
	movs r0, #0x84
	bl SoundReq
	ldrb r3, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #9
	bl CreateObjectWithParent
	ldr r0, _08027B3C @ =0x00000155
	bl SoundReq
	adds r0, r5, #0
	adds r0, #0x84
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	movs r1, #3
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x15
	ldrb r2, [r4, #5]
	cmp r0, r2
	beq _08027B06
	lsls r0, r1, #3
	strb r0, [r4, #5]
_08027B06:
	movs r0, #0xb4
	str r0, [r4, #8]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08027B94
	movs r0, #0x40
	strb r0, [r4, #1]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	bne _08027B2A
	adds r0, r5, #0
	bl sub_08027BBC
_08027B2A:
	adds r0, r5, #0
	bl sub_08027D20
	ldr r0, _08027B40 @ =0x00000127
	bl SoundReq
_08027B36:
	movs r0, #1
	b _08027B96
	.align 2, 0
_08027B3C: .4byte 0x00000155
_08027B40: .4byte 0x00000127
_08027B44:
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	ldr r0, [r5, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	cmp r0, #2
	beq _08027B74
	cmp r0, #2
	bgt _08027B60
	cmp r0, #1
	beq _08027B84
	b _08027B36
_08027B60:
	cmp r0, #3
	bne _08027B36
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x1a
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xe0
	lsls r0, r0, #1
	b _08027B90
_08027B74:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08027B90
_08027B84:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #4
	adds r0, #0xf0
_08027B90:
	strh r0, [r1]
	b _08027B36
_08027B94:
	movs r0, #0
_08027B96:
	pop {r4, r5, pc}

	thumb_func_start sub_08027B98
sub_08027B98: @ 0x08027B98
	push {r4, lr}
	mov ip, r0
	ldr r4, [sp, #8]
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r2, [r0]
	subs r0, #1
	strb r3, [r0]
	cmp r4, #0xff
	beq _08027BB4
	mov r0, ip
	strb r4, [r0, #0xe]
	b _08027BBA
_08027BB4:
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xe]
_08027BBA:
	pop {r4, pc}

	thumb_func_start sub_08027BBC
sub_08027BBC: @ 0x08027BBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r0, #0xa
	strb r0, [r6, #0xd]
	adds r5, r6, #0
	adds r5, #0x84
	ldr r0, [r5]
	strb r4, [r0, #1]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r6, #0x54]
	adds r0, #0x7d
	strb r4, [r0]
	movs r3, #0
	strh r4, [r6, #0x24]
	ldr r0, [r5]
	strb r3, [r0, #3]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r1, r0
	ble _08027C0A
	movs r0, #0x18
	strb r0, [r6, #0x15]
	ldr r2, [r6, #0x54]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	strb r3, [r0]
	adds r1, #0x85
	strb r3, [r1]
	adds r2, #0x85
	strb r3, [r2]
	b _08027C22
_08027C0A:
	movs r0, #8
	strb r0, [r6, #0x15]
	ldr r3, [r6, #0x54]
	ldr r2, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x85
	strb r1, [r2]
	adds r3, #0x85
	strb r1, [r3]
_08027C22:
	ldrb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldr r0, _08027C44 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _08027C52
	cmp r1, r0
	ble _08027C48
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	b _08027C50
	.align 2, 0
_08027C44: .4byte gPlayerEntity
_08027C48:
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0x10
_08027C50:
	strb r0, [r1, #0xc]
_08027C52:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027C54
sub_08027C54: @ 0x08027C54
	push {lr}
	ldr r2, _08027C74 @ =gUnk_080CC2DC
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #4]
	adds r1, r1, r2
	ldr r0, [r0, #0x54]
	adds r0, #0x45
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08027C78
	movs r0, #0
	b _08027C7A
	.align 2, 0
_08027C74: .4byte gUnk_080CC2DC
_08027C78:
	movs r0, #1
_08027C7A:
	pop {pc}

	thumb_func_start sub_08027C7C
sub_08027C7C: @ 0x08027C7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_08027C9C
	ldr r0, [r4, #0x68]
	adds r1, r5, #0
	bl sub_08027C9C
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl sub_08027C9C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027C9C
sub_08027C9C: @ 0x08027C9C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl Random
	ands r0, r4
	cmp r0, #0
	bne _08027D1E
	adds r0, r5, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D1E
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	bl Random
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	subs r0, r0, r1
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	bl Random
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08027D1E:
	pop {r4, r5, pc}

	thumb_func_start sub_08027D20
sub_08027D20: @ 0x08027D20
.ifdef EU
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r3, r0, #0
	cmp r3, #0
	beq _08027D44
	movs r0, #0xc9
	strh r0, [r3, #0x12]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r1, [r4, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r3, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	ldrh r0, [r3, #0x32]
	adds r0, #1
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
_08027D44:
	adds r0, r3, #0
	pop {r4, pc}
.else
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D66
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3e
	bl LoadFixedGFX
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08027D5E
	adds r0, r4, #0
	movs r1, #0x2b
	bl LoadObjPalette
	b _08027D66
_08027D5E:
	adds r0, r4, #0
	movs r1, #0x2c
	bl LoadObjPalette
_08027D66:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
.endif
