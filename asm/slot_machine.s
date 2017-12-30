	.include "constants/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_81041AC
sub_81041AC: @ 81041AC
	push {r4,lr}
	adds r3, r0, 0
	ldrh r1, [r3, 0xA]
	adds r0, r1, 0x2
	lsls r0, 16
	lsrs r4, r0, 16
	movs r2, 0
	lsls r1, 16
	asrs r1, 16
	cmp r1, 0x1
	bne _081041C6
	movs r2, 0x1
	b _081041CC
_081041C6:
	cmp r1, 0x10
	bne _081041CC
	movs r2, 0x2
_081041CC:
	movs r1, 0xC
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _081041F0
	lsls r0, r4, 16
	asrs r0, 15
	ldr r1, _08104214 @ =0x0600e800
	adds r0, r1
	adds r0, 0x80
	ldr r1, _08104218 @ =gUnknown_083ECBC4
	lsls r2, 2
	adds r1, 0x2
	adds r2, r1
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r0, [r3, 0xA]
	subs r0, 0x1
	strh r0, [r3, 0xA]
_081041F0:
	ldrh r0, [r3, 0xC]
	adds r0, 0x1
	strh r0, [r3, 0xC]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x13
	ble _08104202
	movs r0, 0
	strh r0, [r3, 0xC]
_08104202:
	movs r1, 0xA
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _0810420E
	strh r0, [r3, 0x8]
	strh r0, [r3, 0x26]
_0810420E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104214: .4byte 0x0600e800
_08104218: .4byte gUnknown_083ECBC4
	thumb_func_end sub_81041AC

	thumb_func_start sub_810421C
sub_810421C: @ 810421C
	push {lr}
	movs r1, 0x2
	adds r2, r0, 0
	adds r2, 0x8
	movs r3, 0
_08104226:
	lsls r0, r1, 1
	adds r0, r2, r0
	strh r3, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bls _08104226
	pop {r0}
	bx r0
	thumb_func_end sub_810421C

	thumb_func_start sub_810423C
sub_810423C: @ 810423C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r2, 0x3
	ldr r6, _08104268 @ =0x0600e800
	movs r4, 0
	ldr r0, _0810426C @ =gTasks
	mov r8, r0
	ldr r1, _08104270 @ =gSharedMem
	mov r12, r1
	cmp r4, r5
	bge _081042A6
	ldr r7, _08104274 @ =gUnknown_083ECBC4
_0810425A:
	movs r3, 0
	lsls r0, r4, 16
	asrs r0, 16
	cmp r0, 0
	bne _08104278
	movs r3, 0x1
	b _0810427E
	.align 2, 0
_08104268: .4byte 0x0600e800
_0810426C: .4byte gTasks
_08104270: .4byte gSharedMem
_08104274: .4byte gUnknown_083ECBC4
_08104278:
	cmp r0, 0xF
	bne _0810427E
	movs r3, 0x2
_0810427E:
	lsls r2, 16
	asrs r2, 16
	lsls r1, r2, 1
	adds r1, r6
	adds r1, 0x80
	lsls r0, r3, 2
	adds r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r0, r4, 16
	movs r1, 0x80
	lsls r1, 9
	adds r0, r1
	adds r2, 0x1
	lsls r2, 16
	lsrs r2, 16
	lsrs r4, r0, 16
	asrs r0, 16
	cmp r0, r5
	blt _0810425A
_081042A6:
	lsls r1, r4, 16
	asrs r0, r1, 16
	cmp r0, 0xF
	bgt _081042F0
	ldr r7, _081042BC @ =gUnknown_083ECBC4 + 0x2
_081042B0:
	movs r3, 0
	asrs r0, r1, 16
	cmp r0, 0
	bne _081042C0
	movs r3, 0x1
	b _081042C6
	.align 2, 0
_081042BC: .4byte gUnknown_083ECBC4 + 0x2
_081042C0:
	cmp r0, 0xF
	bne _081042C6
	movs r3, 0x2
_081042C6:
	lsls r2, 16
	asrs r2, 16
	lsls r1, r2, 1
	adds r1, r6
	adds r1, 0x80
	lsls r0, r3, 2
	adds r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r0, r4, 16
	movs r1, 0x80
	lsls r1, 9
	adds r0, r1
	lsrs r4, r0, 16
	adds r2, 0x1
	lsls r2, 16
	lsrs r2, 16
	lsls r1, r4, 16
	asrs r0, r1, 16
	cmp r0, 0xF
	ble _081042B0
_081042F0:
	mov r0, r12
	adds r0, 0x3E
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	add r0, r8
	strh r5, [r0, 0xA]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_810423C

	thumb_func_start sub_810430C
sub_810430C: @ 810430C
	push {r4,lr}
	ldr r4, _08104328 @ =sub_810434C
	adds r0, r4, 0
	movs r1, 0x7
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104328: .4byte sub_810434C
	thumb_func_end sub_810430C

	thumb_func_start sub_810432C
sub_810432C: @ 810432C
	push {lr}
	ldr r0, _08104340 @ =sub_810434C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _08104344
	movs r0, 0
	b _08104346
	.align 2, 0
_08104340: .4byte sub_810434C
_08104344:
	movs r0, 0x1
_08104346:
	pop {r1}
	bx r1
	thumb_func_end sub_810432C

	thumb_func_start sub_810434C
sub_810434C: @ 810434C
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r3, _08104374 @ =gUnknown_083ECBD0
	ldr r2, _08104378 @ =gTasks
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r2, 0x8
	ldrsh r1, [r0, r2]
	lsls r1, 2
	adds r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08104374: .4byte gUnknown_083ECBD0
_08104378: .4byte gTasks
	thumb_func_end sub_810434C

	thumb_func_start sub_810437C
sub_810437C: @ 810437C
	push {lr}
	ldr r1, _081043DC @ =gSharedMem
	movs r2, 0
	strb r2, [r1, 0xA]
	strh r2, [r1, 0x14]
	strh r2, [r1, 0x16]
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	strh r2, [r0, 0xA]
	movs r1, 0x1E
	strh r1, [r0, 0xC]
	movs r1, 0xA0
	lsls r1, 3
	strh r1, [r0, 0x10]
	ldr r0, _081043E0 @ =gSpriteCoordOffsetX
	strh r2, [r0]
	ldr r0, _081043E4 @ =gSpriteCoordOffsetY
	strh r2, [r0]
	ldr r0, _081043E8 @ =REG_BG1HOFS
	strh r2, [r0]
	adds r0, 0x2
	strh r2, [r0]
	movs r0, 0x1E
	movs r1, 0
	bl sub_8104A40
	bl sub_81051C0
	bl sub_8105100
	bl sub_81052EC
	bl sub_81053A0
	bl sub_810545C
	bl sub_8102680
	bl StopMapMusic
	movs r0, 0xC4
	lsls r0, 1
	bl PlayNewMapMusic
	pop {r0}
	bx r0
	.align 2, 0
_081043DC: .4byte gSharedMem
_081043E0: .4byte gSpriteCoordOffsetX
_081043E4: .4byte gSpriteCoordOffsetY
_081043E8: .4byte REG_BG1HOFS
	thumb_func_end sub_810437C

	thumb_func_start sub_81043EC
sub_81043EC: @ 81043EC
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _0810445C @ =gSpriteCoordOffsetX
	ldrh r0, [r1]
	subs r0, 0x8
	strh r0, [r1]
	ldrh r2, [r4, 0xA]
	adds r2, 0x8
	strh r2, [r4, 0xA]
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	adds r0, 0xF0
	movs r1, 0xFF
	ands r0, r1
	lsrs r3, r0, 3
	ldr r1, _08104460 @ =REG_BG1HOFS
	ldr r0, _08104464 @ =0x000001ff
	ands r2, r0
	strh r2, [r1]
	adds r2, r3, 0
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	cmp r2, r0
	beq _08104438
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	cmp r0, 0x12
	bgt _08104438
	strh r3, [r4, 0xC]
	ldrh r0, [r4, 0xA]
	lsls r0, 16
	asrs r0, 19
	strh r0, [r4, 0xE]
	movs r0, 0xE
	ldrsh r1, [r4, r0]
	adds r0, r2, 0
	bl sub_8104A40
_08104438:
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	cmp r0, 0xC7
	ble _0810444A
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	movs r1, 0
	strh r0, [r4, 0x8]
	strh r1, [r4, 0xE]
_0810444A:
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810445C: .4byte gSpriteCoordOffsetX
_08104460: .4byte REG_BG1HOFS
_08104464: .4byte 0x000001ff
	thumb_func_end sub_81043EC

	thumb_func_start sub_8104468
sub_8104468: @ 8104468
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	ldrh r0, [r4, 0x12]
	adds r0, 0x1
	strh r0, [r4, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3B
	ble _08104492
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	bl sub_8105578
	bl sub_81056F0
_08104492:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8104468

	thumb_func_start sub_8104498
sub_8104498: @ 8104498
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x14
	adds r7, r0, 0
	ldr r1, _08104534 @ =gUnknown_083ECC1C
	mov r0, sp
	movs r2, 0x4
	bl memcpy
	add r0, sp, 0x4
	mov r8, r0
	ldr r1, _08104538 @ =gUnknown_083ECC20
	movs r2, 0x8
	bl memcpy
	add r6, sp, 0xC
	ldr r1, _0810453C @ =gUnknown_083ECC28
	adds r0, r6, 0
	movs r2, 0x8
	bl memcpy
	ldrh r0, [r7, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	ldrh r0, [r7, 0x10]
	subs r0, 0x4
	strh r0, [r7, 0x10]
	lsls r0, 16
	asrs r0, 24
	movs r5, 0x4
	subs r5, r0
	lsls r4, r5, 1
	add r8, r4
	mov r1, r8
	movs r2, 0
	ldrsh r0, [r1, r2]
	bl sub_8105688
	adds r6, r4
	movs r1, 0
	ldrsh r0, [r6, r1]
	bl sub_81057E8
	ldr r0, _08104540 @ =gSharedMem
	adds r0, 0x3F
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08104544 @ =gSprites
	adds r0, r1
	mov r2, sp
	adds r1, r2, r5
	ldrb r1, [r1]
	bl StartSpriteAnimIfDifferent
	movs r1, 0x10
	ldrsh r0, [r7, r1]
	movs r1, 0x80
	lsls r1, 1
	cmp r0, r1
	bgt _08104526
	ldrh r0, [r7, 0x8]
	adds r0, 0x1
	strh r0, [r7, 0x8]
	strh r1, [r7, 0x10]
	movs r0, 0
	strh r0, [r7, 0x12]
_08104526:
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08104534: .4byte gUnknown_083ECC1C
_08104538: .4byte gUnknown_083ECC20
_0810453C: .4byte gUnknown_083ECC28
_08104540: .4byte gSharedMem
_08104544: .4byte gSprites
	thumb_func_end sub_8104498

	thumb_func_start sub_8104548
sub_8104548: @ 8104548
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	ldrh r0, [r4, 0x12]
	adds r0, 0x1
	strh r0, [r4, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x4F
	ble _0810458A
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	movs r0, 0
	strh r0, [r4, 0x12]
	movs r0, 0x2
	bl sub_81057E8
	ldr r0, _08104590 @ =gSharedMem
	adds r0, 0x3F
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08104594 @ =gSprites
	adds r0, r1
	movs r1, 0x3
	bl StartSpriteAnimIfDifferent
_0810458A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104590: .4byte gSharedMem
_08104594: .4byte gSprites
	thumb_func_end sub_8104548

	thumb_func_start sub_8104598
sub_8104598: @ 8104598
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	ldrb r0, [r4, 0x10]
	adds r0, 0x80
	strh r0, [r4, 0x10]
	ldrh r0, [r4, 0x12]
	adds r0, 0x1
	strh r0, [r4, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x4F
	ble _081045C4
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	movs r0, 0
	strh r0, [r4, 0x12]
_081045C4:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8104598

	thumb_func_start sub_81045CC
sub_81045CC: @ 81045CC
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	ldrb r0, [r4, 0x10]
	adds r0, 0x40
	strh r0, [r4, 0x10]
	ldrh r0, [r4, 0x12]
	adds r0, 0x1
	strh r0, [r4, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x27
	ble _08104634
	movs r0, 0
	strh r0, [r4, 0x12]
	ldr r1, _0810460C @ =gSharedMem
	ldrb r0, [r1, 0x5]
	cmp r0, 0
	beq _08104610
	ldrb r1, [r1, 0xA]
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _0810462E
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	b _0810462C
	.align 2, 0
_0810460C: .4byte gSharedMem
_08104610:
	movs r1, 0x14
	ldrsh r0, [r4, r1]
	cmp r0, 0x3
	ble _0810461E
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	b _0810462C
_0810461E:
	ldrh r0, [r4, 0x14]
	bl sub_81026DC
	lsls r0, 24
	cmp r0, 0
	beq _0810462E
	movs r0, 0xE
_0810462C:
	strh r0, [r4, 0x8]
_0810462E:
	ldrh r0, [r4, 0x14]
	adds r0, 0x1
	strh r0, [r4, 0x14]
_08104634:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81045CC

	thumb_func_start sub_810463C
sub_810463C: @ 810463C
	push {r4-r6,lr}
	adds r4, r0, 0
	ldr r6, _08104660 @ =gSharedMem
	movs r1, 0x14
	ldrsh r0, [r6, r1]
	movs r1, 0x14
	bl __modsi3
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r0, 0
	beq _08104664
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D5C
	b _08104688
	.align 2, 0
_08104660: .4byte gSharedMem
_08104664:
	movs r0, 0x1
	bl sub_8102C48
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6, 0x5]
	cmp r0, r1
	beq _08104692
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 24
	bl sub_8102D28
	movs r1, 0x14
	ldrsh r0, [r6, r1]
	movs r1, 0x14
	bl __modsi3
_08104688:
	lsls r0, 16
	lsrs r5, r0, 16
	ldrb r0, [r4, 0x10]
	adds r0, 0x40
	strh r0, [r4, 0x10]
_08104692:
	lsls r0, r5, 16
	asrs r5, r0, 16
	cmp r5, 0
	bne _081046B4
	movs r0, 0x1
	bl sub_8102C48
	ldr r1, _081046BC @ =gSharedMem
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1, 0x5]
	cmp r0, r1
	bne _081046B4
	strh r5, [r4, 0x10]
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_081046B4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_081046BC: .4byte gSharedMem
	thumb_func_end sub_810463C

	thumb_func_start sub_81046C0
sub_81046C0: @ 81046C0
	push {r4-r7,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x10]
	adds r0, 0x1
	movs r7, 0
	strh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3B
	ble _08104758
	bl StopMapMusic
	bl sub_81056C0
	bl sub_8105804
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	ldr r5, _08104710 @ =gSharedMem
	ldrb r0, [r5, 0x5]
	cmp r0, 0
	bne _0810471C
	movs r0, 0xA0
	strh r0, [r4, 0x10]
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08104714 @ =gSprites
	adds r0, r1
	movs r1, 0x5
	bl StartSpriteAnimIfDifferent
	ldr r0, _08104718 @ =0x00000187
	bl PlayFanfare
	b _08104758
	.align 2, 0
_08104710: .4byte gSharedMem
_08104714: .4byte gSprites
_08104718: .4byte 0x00000187
_0810471C:
	movs r0, 0xC0
	strh r0, [r4, 0x10]
	adds r6, r5, 0
	adds r6, 0x3F
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, _08104760 @ =gSprites
	adds r0, r4
	movs r1, 0x4
	bl StartSpriteAnimIfDifferent
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x2B
	strb r7, [r0]
	ldrb r0, [r5, 0x2]
	cmp r0, 0
	beq _08104750
	bl sub_8104098
	strb r7, [r5, 0x2]
_08104750:
	movs r0, 0xC3
	lsls r0, 1
	bl PlayFanfare
_08104758:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08104760: .4byte gSprites
	thumb_func_end sub_81046C0

	thumb_func_start sub_8104764
sub_8104764: @ 8104764
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x10]
	movs r2, 0x10
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _0810477C
	subs r0, r1, 0x1
	strh r0, [r4, 0x10]
	lsls r0, 16
	cmp r0, 0
	bne _0810478C
_0810477C:
	bl sub_81040C8
	lsls r0, 24
	cmp r0, 0
	bne _0810478C
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0810478C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8104764

	thumb_func_start sub_8104794
sub_8104794: @ 8104794
	push {r4,lr}
	adds r3, r0, 0
	ldr r1, _081047D4 @ =gSpriteCoordOffsetX
	ldrh r0, [r1]
	subs r0, 0x8
	strh r0, [r1]
	ldrh r2, [r3, 0xA]
	adds r2, 0x8
	strh r2, [r3, 0xA]
	ldrh r0, [r3, 0xE]
	adds r0, 0x8
	strh r0, [r3, 0xE]
	movs r1, 0xA
	ldrsh r0, [r3, r1]
	subs r0, 0x8
	movs r1, 0xFF
	ands r0, r1
	lsrs r4, r0, 3
	ldr r1, _081047D8 @ =REG_BG1HOFS
	ldr r0, _081047DC @ =0x000001ff
	ands r2, r0
	strh r2, [r1]
	ldrh r0, [r3, 0xE]
	lsls r0, 16
	asrs r0, 19
	cmp r0, 0x19
	bgt _081047E0
	adds r0, r4, 0
	bl sub_8104A88
	b _081047E6
	.align 2, 0
_081047D4: .4byte gSpriteCoordOffsetX
_081047D8: .4byte REG_BG1HOFS
_081047DC: .4byte 0x000001ff
_081047E0:
	ldrh r0, [r3, 0x8]
	adds r0, 0x1
	strh r0, [r3, 0x8]
_081047E6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8104794

	thumb_func_start sub_81047EC
sub_81047EC: @ 81047EC
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r4, _08104834 @ =gSharedMem
	movs r6, 0
	strb r6, [r4, 0xB]
	ldrb r0, [r4, 0x5]
	strb r0, [r4, 0xA]
	ldr r0, _08104838 @ =gSpriteCoordOffsetX
	strh r6, [r0]
	ldr r0, _0810483C @ =REG_BG1HOFS
	strh r6, [r0]
	movs r0, 0x8
	strh r0, [r4, 0x1A]
	bl sub_810514C
	bl sub_81054B8
	bl sub_8105524
	adds r0, r4, 0
	adds r0, 0x60
	ldrh r0, [r0]
	bl PlayNewMapMusic
	ldrb r0, [r4, 0xA]
	cmp r0, 0
	bne _08104844
	ldr r0, _08104840 @ =sub_810434C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	b _0810485A
	.align 2, 0
_08104834: .4byte gSharedMem
_08104838: .4byte gSpriteCoordOffsetX
_0810483C: .4byte REG_BG1HOFS
_08104840: .4byte sub_810434C
_08104844:
	movs r0, 0x4
	bl sub_8104CAC
	bl dp15_jump_random_unknown
	strh r0, [r5, 0xA]
	strh r6, [r5, 0xC]
	strh r6, [r5, 0xE]
	ldrh r0, [r5, 0x8]
	adds r0, 0x1
	strh r0, [r5, 0x8]
_0810485A:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81047EC

	thumb_func_start sub_8104860
sub_8104860: @ 8104860
	push {r4-r6,lr}
	adds r4, r0, 0
	ldr r5, _0810487C @ =gSharedMem
	ldrh r0, [r5, 0x1A]
	lsls r6, r0, 16
	asrs r1, r6, 16
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08104880
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _081048A2
	.align 2, 0
_0810487C: .4byte gSharedMem
_08104880:
	movs r1, 0x1C
	ldrsh r0, [r5, r1]
	movs r1, 0x18
	bl __modsi3
	lsls r0, 16
	cmp r0, 0
	bne _081048A2
	ldrh r0, [r4, 0xC]
	adds r0, 0x1
	strh r0, [r4, 0xC]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _081048A2
	asrs r0, r6, 17
	strh r0, [r5, 0x1A]
_081048A2:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8104860

	thumb_func_start sub_81048A8
sub_81048A8: @ 81048A8
	push {lr}
	bl sub_8104E18
	lsls r0, 24
	cmp r0, 0
	beq _081048C2
	ldr r0, _081048C8 @ =sub_810434C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
_081048C2:
	pop {r0}
	bx r0
	.align 2, 0
_081048C8: .4byte sub_810434C
	thumb_func_end sub_81048A8

	thumb_func_start sub_81048CC
sub_81048CC: @ 81048CC
	push {r4,r5,lr}
	adds r4, r0, 0
	bl sub_81054B8
	bl sub_81056C0
	bl sub_8105804
	bl sub_8105854
	ldr r5, _08104934 @ =gSprites
	ldr r3, _08104938 @ =gSharedMem
	adds r0, r3, 0
	adds r0, 0x4E
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	adds r3, 0x3F
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x5
	bl StartSpriteAnimIfDifferent
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	movs r1, 0
	strh r0, [r4, 0x8]
	movs r0, 0x4
	strh r0, [r4, 0x10]
	strh r1, [r4, 0x12]
	bl StopMapMusic
	ldr r0, _0810493C @ =0x00000187
	bl PlayFanfare
	movs r0, 0xB2
	bl PlaySE
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08104934: .4byte gSprites
_08104938: .4byte gSharedMem
_0810493C: .4byte 0x00000187
	thumb_func_end sub_81048CC

	thumb_func_start sub_8104940
sub_8104940: @ 8104940
	push {r4,r5,lr}
	adds r4, r0, 0
	ldr r0, _081049B8 @ =gSpriteCoordOffsetY
	ldrh r1, [r4, 0x10]
	strh r1, [r0]
	ldr r0, _081049BC @ =REG_BG1VOFS
	strh r1, [r0]
	ldrh r1, [r4, 0x12]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0810495E
	ldrh r0, [r4, 0x10]
	negs r0, r0
	strh r0, [r4, 0x10]
_0810495E:
	ldrh r0, [r4, 0x12]
	adds r0, 0x1
	strh r0, [r4, 0x12]
	movs r1, 0x1F
	ands r0, r1
	cmp r0, 0
	bne _08104974
	ldrh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 17
	strh r0, [r4, 0x10]
_08104974:
	movs r0, 0x10
	ldrsh r5, [r4, r0]
	cmp r5, 0
	bne _081049B0
	bl sub_81058A0
	bl sub_81058C4
	bl sub_8105284
	bl sub_81059E8
	ldr r2, _081049C0 @ =gSprites
	ldr r0, _081049C4 @ =gSharedMem
	adds r0, 0x4E
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	strh r5, [r4, 0x12]
_081049B0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_081049B8: .4byte gSpriteCoordOffsetY
_081049BC: .4byte REG_BG1VOFS
_081049C0: .4byte gSprites
_081049C4: .4byte gSharedMem
	thumb_func_end sub_8104940

	thumb_func_start sub_81049C8
sub_81049C8: @ 81049C8
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _081049F0 @ =gSpriteCoordOffsetY
	movs r1, 0
	strh r1, [r0]
	ldr r0, _081049F4 @ =REG_BG1VOFS
	strh r1, [r0]
	bl sub_8105ACC
	lsls r0, 24
	cmp r0, 0
	beq _081049EA
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	bl sub_8105AEC
_081049EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081049F0: .4byte gSpriteCoordOffsetY
_081049F4: .4byte REG_BG1VOFS
	thumb_func_end sub_81049C8

	thumb_func_start sub_81049F8
sub_81049F8: @ 81049F8
	push {lr}
	ldr r0, _08104A30 @ =gSpriteCoordOffsetX
	movs r1, 0
	strh r1, [r0]
	ldr r0, _08104A34 @ =REG_BG1HOFS
	strh r1, [r0]
	ldr r0, _08104A38 @ =gSharedMem
	adds r0, 0x60
	ldrh r0, [r0]
	bl PlayNewMapMusic
	bl sub_810514C
	bl sub_8105554
	bl sub_8105524
	bl sub_81059B8
	ldr r0, _08104A3C @ =sub_810434C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	pop {r0}
	bx r0
	.align 2, 0
_08104A30: .4byte gSpriteCoordOffsetX
_08104A34: .4byte REG_BG1HOFS
_08104A38: .4byte gSharedMem
_08104A3C: .4byte sub_810434C
	thumb_func_end sub_81049F8

	thumb_func_start sub_8104A40
sub_8104A40: @ 8104A40
	push {r4-r7,lr}
	movs r3, 0x4
	ldr r7, _08104A80 @ =gReelTimeWindowTilemap
	lsls r1, 16
	asrs r5, r1, 16
	lsls r0, 16
	asrs r4, r0, 16
	ldr r6, _08104A84 @ =0x0600e000
_08104A50:
	lsls r2, r3, 16
	asrs r2, 16
	subs r1, r2, 0x4
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r5, r0
	lsls r0, 1
	adds r0, r7
	ldrh r1, [r0]
	lsls r0, r2, 5
	adds r0, r4
	lsls r0, 1
	adds r0, r6
	strh r1, [r0]
	adds r2, 0x1
	lsls r2, 16
	lsrs r3, r2, 16
	asrs r2, 16
	cmp r2, 0xE
	ble _08104A50
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08104A80: .4byte gReelTimeWindowTilemap
_08104A84: .4byte 0x0600e000
	thumb_func_end sub_8104A40

	thumb_func_start sub_8104A88
sub_8104A88: @ 8104A88
	push {r4,r5,lr}
	movs r2, 0x4
	lsls r0, 16
	asrs r3, r0, 16
	ldr r5, _08104AB4 @ =0x0600e000
	movs r4, 0
_08104A94:
	lsls r1, r2, 16
	asrs r1, 16
	lsls r0, r1, 5
	adds r0, r3
	lsls r0, 1
	adds r0, r5
	strh r4, [r0]
	adds r1, 0x1
	lsls r1, 16
	lsrs r2, r1, 16
	asrs r1, 16
	cmp r1, 0xE
	ble _08104A94
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08104AB4: .4byte 0x0600e000
	thumb_func_end sub_8104A88

	thumb_func_start sub_8104AB8
sub_8104AB8: @ 8104AB8
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, _08104AE4 @ =sub_8104B0C
	adds r0, r5, 0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08104AE8 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0xA]
	bl _call_via_r5
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08104AE4: .4byte sub_8104B0C
_08104AE8: .4byte gTasks
	thumb_func_end sub_8104AB8

	thumb_func_start sub_8104AEC
sub_8104AEC: @ 8104AEC
	push {lr}
	ldr r0, _08104B00 @ =sub_8104B0C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _08104B04
	movs r0, 0
	b _08104B06
	.align 2, 0
_08104B00: .4byte sub_8104B0C
_08104B04:
	movs r0, 0x1
_08104B06:
	pop {r1}
	bx r1
	thumb_func_end sub_8104AEC

	thumb_func_start sub_8104B0C
sub_8104B0C: @ 8104B0C
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r3, _08104B34 @ =gUnknown_083ECC30
	ldr r2, _08104B38 @ =gTasks
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r2, 0x8
	ldrsh r1, [r0, r2]
	lsls r1, 2
	adds r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08104B34: .4byte gUnknown_083ECC30
_08104B38: .4byte gTasks
	thumb_func_end sub_8104B0C

	thumb_func_start sub_8104B3C
sub_8104B3C: @ 8104B3C
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8104B3C

	thumb_func_start sub_8104B60
sub_8104B60: @ 8104B60
	push {lr}
	adds r2, r0, 0
	ldr r0, _08104B7C @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08104B76
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
_08104B76:
	pop {r0}
	bx r0
	.align 2, 0
_08104B7C: .4byte gPaletteFade
	thumb_func_end sub_8104B60

	thumb_func_start sub_8104B80
sub_8104B80: @ 8104B80
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	bl sub_8104DA4
	bl sub_81065DC
	ldr r0, _08104BC0 @ =gWindowConfig_81E7144
	bl BasicInitMenuWindow
	ldr r0, _08104BC4 @ =gOtherText_ReelTime
	movs r1, 0xA
	movs r2, 0x20
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104BC0: .4byte gWindowConfig_81E7144
_08104BC4: .4byte gOtherText_ReelTime
	thumb_func_end sub_8104B80

	thumb_func_start sub_8104BC8
sub_8104BC8: @ 8104BC8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldr r0, _08104BF8 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0
	beq _08104BF0
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_08104BF0:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104BF8: .4byte gMain
	thumb_func_end sub_8104BC8

	thumb_func_start sub_8104BFC
sub_8104BFC: @ 8104BFC
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	bl MenuZeroFillScreen
	ldr r0, _08104C3C @ =gWindowConfig_81E7128
	bl BasicInitMenuWindow
	bl sub_81064B8
	ldrb r0, [r4, 0xA]
	bl sub_8104CAC
	ldr r0, _08104C40 @ =gSharedMem
	ldrb r0, [r0, 0x2]
	bl sub_810423C
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08104C3C: .4byte gWindowConfig_81E7128
_08104C40: .4byte gSharedMem
	thumb_func_end sub_8104BFC

	thumb_func_start sub_8104C44
sub_8104C44: @ 8104C44
	push {lr}
	ldr r0, _08104C58 @ =sub_8104B0C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	pop {r0}
	bx r0
	.align 2, 0
_08104C58: .4byte sub_8104B0C
	thumb_func_end sub_8104C44

	thumb_func_start sub_8104C5C
sub_8104C5C: @ 8104C5C
	push {lr}
	ldr r0, _08104C9C @ =sub_8104E74
	movs r1, 0x3
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _08104CA0 @ =gSharedMem
	adds r0, 0x3D
	strb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _08104CA4 @ =gTasks
	adds r0, r1
	ldr r1, _08104CA8 @ =0x0000ffff
	strh r1, [r0, 0xA]
	movs r1, 0x4
	adds r2, r0, 0
	adds r2, 0x8
	movs r3, 0x40
_08104C86:
	lsls r0, r1, 1
	adds r0, r2, r0
	strh r3, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bls _08104C86
	pop {r0}
	bx r0
	.align 2, 0
_08104C9C: .4byte sub_8104E74
_08104CA0: .4byte gSharedMem
_08104CA4: .4byte gTasks
_08104CA8: .4byte 0x0000ffff
	thumb_func_end sub_8104C5C

.section .text_8104D30

	thumb_func_start sub_8104D30
sub_8104D30: @ 8104D30
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	mov r8, r1
	ldr r4, [sp, 0x1C]
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _08104D84 @ =gSharedMem
	adds r0, 0x3D
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _08104D88 @ =gTasks
	adds r0, r1
	mov r12, r0
	movs r5, 0x4
	lsls r4, 16
	asrs r6, r4, 16
	lsls r2, 16
	lsls r3, 16
_08104D5C:
	lsls r0, r5, 1
	mov r1, r12
	adds r1, 0x8
	adds r4, r1, r0
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	bne _08104D8C
	str r6, [sp]
	adds r0, r7, 0
	mov r1, r8
	asrs r2, 16
	asrs r3, 16
	bl sub_8105BF8
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	b _08104D96
	.align 2, 0
_08104D84: .4byte gSharedMem
_08104D88: .4byte gTasks
_08104D8C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0xF
	bls _08104D5C
_08104D96:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8104D30

	thumb_func_start sub_8104DA4
sub_8104DA4: @ 8104DA4
	push {r4-r6,lr}
	ldr r0, _08104E04 @ =gSharedMem
	adds r0, 0x3D
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _08104E08 @ =gTasks
	adds r4, r0, r1
	ldrh r1, [r4, 0xA]
	ldr r0, _08104E0C @ =0x0000ffff
	cmp r1, r0
	beq _08104DCE
	ldr r0, _08104E10 @ =gUnknown_083ED064
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_08104DCE:
	movs r5, 0x4
	adds r6, r4, 0
	adds r6, 0x8
_08104DD4:
	lsls r0, r5, 1
	adds r4, r6, r0
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	beq _08104DF4
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08104E14 @ =gSprites
	adds r0, r1
	bl DestroySprite
	movs r0, 0x40
	strh r0, [r4]
_08104DF4:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0xF
	bls _08104DD4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08104E04: .4byte gSharedMem
_08104E08: .4byte gTasks
_08104E0C: .4byte 0x0000ffff
_08104E10: .4byte gUnknown_083ED064
_08104E14: .4byte gSprites
	thumb_func_end sub_8104DA4

	thumb_func_start sub_8104E18
sub_8104E18: @ 8104E18
	push {r4,r5,lr}
	ldr r0, _08104E54 @ =gSharedMem
	adds r0, 0x3D
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _08104E58 @ =gTasks
	adds r0, r1
	movs r2, 0x4
	adds r3, r0, 0
	adds r3, 0x8
	ldr r4, _08104E5C @ =gSprites
_08104E32:
	lsls r0, r2, 1
	adds r1, r3, r0
	movs r5, 0
	ldrsh r0, [r1, r5]
	cmp r0, 0x40
	beq _08104E60
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r5, 0x3C
	ldrsh r0, [r1, r5]
	cmp r0, 0
	beq _08104E60
	movs r0, 0
	b _08104E6C
	.align 2, 0
_08104E54: .4byte gSharedMem
_08104E58: .4byte gTasks
_08104E5C: .4byte gSprites
_08104E60:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xF
	bls _08104E32
	movs r0, 0x1
_08104E6C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8104E18

	thumb_func_start sub_8104E74
sub_8104E74: @ 8104E74
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r3, _08104E9C @ =gUnknown_083ECC54
	ldr r2, _08104EA0 @ =gTasks
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r2, 0x8
	ldrsh r1, [r0, r2]
	lsls r1, 2
	adds r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08104E9C: .4byte gUnknown_083ECC54
_08104EA0: .4byte gTasks
	thumb_func_end sub_8104E74

	thumb_func_start nullsub_69
nullsub_69: @ 8104EA4
	bx lr
	thumb_func_end nullsub_69

	thumb_func_start sub_8104EA8
sub_8104EA8: @ 8104EA8
	push {r4-r7,lr}
	movs r6, 0
	movs r0, 0x30
_08104EAE:
	movs r4, 0
	lsls r5, r0, 16
	lsls r7, r6, 16
_08104EB4:
	ldr r0, _08104F0C @ =gSpriteTemplate_83ED414
	asrs r1, r5, 16
	movs r2, 0
	movs r3, 0xE
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r0, _08104F10 @ =gSprites
	adds r1, r0
	ldrb r0, [r1, 0x5]
	movs r2, 0xC
	orrs r0, r2
	strb r0, [r1, 0x5]
	strh r6, [r1, 0x2E]
	strh r4, [r1, 0x30]
	ldr r0, _08104F14 @ =0x0000ffff
	strh r0, [r1, 0x34]
	lsls r0, r4, 16
	movs r1, 0xC0
	lsls r1, 13
	adds r0, r1
	lsrs r4, r0, 16
	asrs r0, 16
	cmp r0, 0x77
	ble _08104EB4
	movs r2, 0x80
	lsls r2, 9
	adds r1, r7, r2
	movs r2, 0xA0
	lsls r2, 14
	adds r0, r5, r2
	lsrs r0, 16
	lsrs r6, r1, 16
	asrs r1, 16
	cmp r1, 0x2
	ble _08104EAE
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08104F0C: .4byte gSpriteTemplate_83ED414
_08104F10: .4byte gSprites
_08104F14: .4byte 0x0000ffff
	thumb_func_end sub_8104EA8

	thumb_func_start sub_8104F18
sub_8104F18: @ 8104F18
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, _08104F88 @ =gSharedMem
	movs r0, 0x2E
	ldrsh r1, [r5, r0]
	lsls r1, 1
	adds r0, r4, 0
	adds r0, 0x1C
	adds r1, r0
	ldrh r0, [r5, 0x30]
	ldrh r1, [r1]
	adds r0, r1
	strh r0, [r5, 0x32]
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0x78
	bl __modsi3
	strh r0, [r5, 0x32]
	movs r2, 0x2E
	ldrsh r1, [r5, r2]
	lsls r1, 1
	adds r4, 0x22
	adds r1, r4
	ldrh r1, [r1]
	adds r1, 0x1C
	adds r0, r1
	strh r0, [r5, 0x22]
	ldrh r4, [r5, 0x2E]
	lsls r4, 24
	lsrs r4, 24
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0x18
	bl __divsi3
	adds r1, r0, 0
	lsls r1, 16
	asrs r1, 16
	adds r0, r4, 0
	bl sub_8102BA4
	lsls r0, 24
	lsrs r0, 24
	bl GetSpriteTileStartByTag
	adds r1, r5, 0
	adds r1, 0x40
	strh r0, [r1]
	adds r0, r5, 0
	bl SetSpriteSheetFrameTileNum
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08104F88: .4byte gSharedMem
	thumb_func_end sub_8104F18

	thumb_func_start sub_8104F8C
sub_8104F8C: @ 8104F8C
	push {r4-r6,lr}
	movs r4, 0xCB
	movs r5, 0x1
	ldr r6, _08104FF0 @ =0x0000270f
_08104F94:
	lsls r4, 16
	asrs r4, 16
	lsls r5, 16
	asrs r5, 16
	adds r0, r4, 0
	movs r1, 0x17
	movs r2, 0
	adds r3, r5, 0
	bl sub_8104FF4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 17
	subs r4, 0x7
	lsls r4, 16
	lsrs r4, 16
	lsrs r5, r0, 16
	asrs r0, 16
	cmp r0, r6
	ble _08104F94
	movs r4, 0xEB
	movs r5, 0x1
	ldr r6, _08104FF0 @ =0x0000270f
_08104FC2:
	lsls r4, 16
	asrs r4, 16
	lsls r5, 16
	asrs r5, 16
	adds r0, r4, 0
	movs r1, 0x17
	movs r2, 0x1
	adds r3, r5, 0
	bl sub_8104FF4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 17
	subs r4, 0x7
	lsls r4, 16
	lsrs r4, 16
	lsrs r5, r0, 16
	asrs r0, 16
	cmp r0, r6
	ble _08104FC2
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08104FF0: .4byte 0x0000270f
	thumb_func_end sub_8104F8C

	thumb_func_start sub_8104FF4
sub_8104FF4: @ 8104FF4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r5, r0, 0
	adds r6, r1, 0
	mov r8, r2
	adds r4, r3, 0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08105060 @ =gSpriteTemplate_83ED42C
	lsls r5, 16
	asrs r5, 16
	lsls r6, 16
	asrs r6, 16
	adds r1, r5, 0
	adds r2, r6, 0
	movs r3, 0xD
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	ldr r0, _08105064 @ =gSprites
	adds r2, r0
	ldrb r1, [r2, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2, 0x5]
	mov r0, r8
	strh r0, [r2, 0x2E]
	strh r4, [r2, 0x30]
	lsls r4, 16
	asrs r4, 16
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 1
	strh r0, [r2, 0x32]
	ldr r0, _08105068 @ =0x0000ffff
	strh r0, [r2, 0x34]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08105060: .4byte gSpriteTemplate_83ED42C
_08105064: .4byte gSprites
_08105068: .4byte 0x0000ffff
	thumb_func_end sub_8104FF4

	thumb_func_start sub_810506C
sub_810506C: @ 810506C
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _081050C0 @ =gSharedMem
	ldrh r2, [r1, 0xC]
	movs r3, 0x2E
	ldrsh r0, [r4, r3]
	cmp r0, 0
	beq _0810507E
	ldrh r2, [r1, 0xE]
_0810507E:
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, r2
	beq _081050B8
	strh r2, [r4, 0x34]
	ldrh r1, [r4, 0x32]
	adds r0, r2, 0
	bl __umodsi3
	lsls r0, 16
	lsrs r2, r0, 16
	ldrh r1, [r4, 0x30]
	adds r0, r2, 0
	bl __udivsi3
	lsls r0, 16
	movs r3, 0xE0
	lsls r3, 11
	adds r0, r3
	lsrs r2, r0, 16
	adds r0, r2, 0
	bl GetSpriteTileStartByTag
	adds r1, r4, 0
	adds r1, 0x40
	strh r0, [r1]
	adds r0, r4, 0
	bl SetSpriteSheetFrameTileNum
_081050B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081050C0: .4byte gSharedMem
	thumb_func_end sub_810506C

	thumb_func_start sub_81050C4
sub_81050C4: @ 81050C4
	push {lr}
	ldr r0, _081050F4 @ =gSpriteTemplate_83ED444
	movs r1, 0x58
	movs r2, 0x48
	movs r3, 0xF
	bl CreateSprite
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r2, _081050F8 @ =gSprites
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x5]
	movs r2, 0xC
	orrs r1, r2
	strb r1, [r0, 0x5]
	ldr r1, _081050FC @ =gSubspriteTables_83ED704
	bl SetSubspriteTables
	pop {r0}
	bx r0
	.align 2, 0
_081050F4: .4byte gSpriteTemplate_83ED444
_081050F8: .4byte gSprites
_081050FC: .4byte gSubspriteTables_83ED704
	thumb_func_end sub_81050C4

	thumb_func_start sub_8105100
sub_8105100: @ 8105100
	push {lr}
	ldr r0, _08105140 @ =gSpriteTemplate_83ED45C
	movs r1, 0x8C
	lsls r1, 1
	movs r2, 0x50
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08105144 @ =gSprites
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	ldrb r3, [r2, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r3
	movs r3, 0x4
	orrs r1, r3
	strb r1, [r2, 0x5]
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r3, 0x2
	orrs r1, r3
	strb r1, [r2]
	ldr r1, _08105148 @ =gSharedMem
	adds r1, 0x3F
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08105140: .4byte gSpriteTemplate_83ED45C
_08105144: .4byte gSprites
_08105148: .4byte gSharedMem
	thumb_func_end sub_8105100

	thumb_func_start sub_810514C
sub_810514C: @ 810514C
	push {lr}
	ldr r0, _08105168 @ =gSharedMem
	adds r0, 0x3F
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0810516C @ =gSprites
	adds r0, r1
	bl DestroySprite
	pop {r0}
	bx r0
	.align 2, 0
_08105168: .4byte gSharedMem
_0810516C: .4byte gSprites
	thumb_func_end sub_810514C

	thumb_func_start sub_8105170
sub_8105170: @ 8105170
	push {lr}
	adds r2, r0, 0
	movs r0, 0
	strh r0, [r2, 0x24]
	strh r0, [r2, 0x26]
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _081051B6
	movs r0, 0x8
	strh r0, [r2, 0x24]
	strh r0, [r2, 0x26]
	adds r0, r2, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _081051A4
	adds r0, r2, 0
	adds r0, 0x2C
	ldrb r1, [r0]
	movs r0, 0x3F
	ands r0, r1
	cmp r0, 0
	bne _081051B2
	b _081051B6
_081051A4:
	adds r0, r2, 0
	adds r0, 0x2C
	ldrb r1, [r0]
	movs r0, 0x3F
	ands r0, r1
	cmp r0, 0
	bne _081051B6
_081051B2:
	ldr r0, _081051BC @ =0x0000fff8
	strh r0, [r2, 0x26]
_081051B6:
	pop {r0}
	bx r0
	.align 2, 0
_081051BC: .4byte 0x0000fff8
	thumb_func_end sub_8105170

	thumb_func_start sub_81051C0
sub_81051C0: @ 81051C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0810526C @ =gSpriteTemplate_83ED474
	movs r7, 0xB8
	lsls r7, 1
	adds r1, r7, 0
	movs r2, 0x34
	movs r3, 0x7
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _08105270 @ =gSprites
	mov r10, r1
	adds r2, r0, r1
	ldrb r1, [r2, 0x5]
	movs r5, 0xD
	negs r5, r5
	adds r0, r5, 0
	ands r0, r1
	movs r3, 0x4
	mov r9, r3
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, 0x5]
	adds r1, r2, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r3, 0x2
	mov r8, r3
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _08105274 @ =gSubspriteTables_83ED73C
	adds r0, r2, 0
	bl SetSubspriteTables
	ldr r6, _08105278 @ =gSharedMem
	adds r0, r6, 0
	adds r0, 0x49
	strb r4, [r0]
	ldr r0, _0810527C @ =gSpriteTemplate_83ED48C
	adds r1, r7, 0
	movs r2, 0x54
	movs r3, 0x7
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	mov r1, r10
	adds r2, r0, r1
	ldrb r0, [r2, 0x5]
	ands r5, r0
	mov r3, r9
	orrs r5, r3
	strb r5, [r2, 0x5]
	adds r1, r2, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _08105280 @ =gSubspriteTables_83ED75C
	adds r0, r2, 0
	bl SetSubspriteTables
	adds r6, 0x4A
	strb r4, [r6]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810526C: .4byte gSpriteTemplate_83ED474
_08105270: .4byte gSprites
_08105274: .4byte gSubspriteTables_83ED73C
_08105278: .4byte gSharedMem
_0810527C: .4byte gSpriteTemplate_83ED48C
_08105280: .4byte gSubspriteTables_83ED75C
	thumb_func_end sub_81051C0

	thumb_func_start sub_8105284
sub_8105284: @ 8105284
	push {r4,lr}
	ldr r0, _081052D8 @ =gSpriteTemplate_83ED4A4
	ldr r1, _081052DC @ =gSpriteCoordOffsetX
	ldrh r2, [r1]
	movs r1, 0xA8
	subs r1, r2
	lsls r1, 16
	asrs r1, 16
	movs r2, 0x50
	movs r3, 0x7
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _081052E0 @ =gSprites
	adds r0, r1
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0, 0x5]
	adds r3, r0, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _081052E4 @ =gSubspriteTables_83ED78C
	bl SetSubspriteTables
	ldr r0, _081052E8 @ =gSharedMem
	adds r0, 0x42
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081052D8: .4byte gSpriteTemplate_83ED4A4
_081052DC: .4byte gSpriteCoordOffsetX
_081052E0: .4byte gSprites
_081052E4: .4byte gSubspriteTables_83ED78C
_081052E8: .4byte gSharedMem
	thumb_func_end sub_8105284

	thumb_func_start sub_81052EC
sub_81052EC: @ 81052EC
	push {r4-r7,lr}
	movs r4, 0
	movs r5, 0
	ldr r6, _08105350 @ =gSharedMem + 0x4B
_081052F4:
	ldr r0, _08105354 @ =gSpriteTemplate_83ED4BC
	movs r1, 0xB8
	lsls r1, 1
	movs r2, 0
	movs r3, 0xA
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	ldr r1, _08105358 @ =gSprites
	adds r3, r1
	ldrb r2, [r3, 0x5]
	movs r7, 0xD
	negs r7, r7
	adds r1, r7, 0
	ands r2, r1
	movs r1, 0x4
	orrs r2, r1
	strb r2, [r3, 0x5]
	movs r1, 0x3E
	adds r1, r3
	mov r12, r1
	ldrb r1, [r1]
	movs r2, 0x2
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	strh r5, [r3, 0x3C]
	adds r1, r4, r6
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r5, 16
	movs r7, 0xA0
	lsls r7, 13
	adds r0, r7
	lsrs r5, r0, 16
	cmp r4, 0x2
	bls _081052F4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08105350: .4byte gSharedMem + 0x4B
_08105354: .4byte gSpriteTemplate_83ED4BC
_08105358: .4byte gSprites
	thumb_func_end sub_81052EC

	thumb_func_start sub_810535C
sub_810535C: @ 810535C
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _0810539C @ =gSharedMem
	ldrh r0, [r4, 0x3C]
	ldrh r1, [r1, 0x14]
	adds r0, r1
	lsls r0, 16
	asrs r0, 16
	movs r1, 0x28
	bl __modsi3
	lsls r0, 16
	asrs r0, 16
	adds r1, r0, 0
	adds r1, 0x3B
	strh r1, [r4, 0x22]
	movs r1, 0x14
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	bl sub_8102C48
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnimIfDifferent
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810539C: .4byte gSharedMem
	thumb_func_end sub_810535C

	thumb_func_start sub_81053A0
sub_81053A0: @ 81053A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r1, 0xB8
	lsls r1, 1
	ldr r0, _0810544C @ =gSpriteTemplate_83ED4D4
	movs r2, 0x64
	movs r3, 0x9
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r7, _08105450 @ =gSprites
	adds r2, r0, r7
	adds r1, r2, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r3, 0x2
	mov r10, r3
	mov r3, r10
	orrs r0, r3
	strb r0, [r1]
	ldrb r1, [r2, 0x5]
	movs r5, 0xD
	negs r5, r5
	adds r0, r5, 0
	ands r0, r1
	movs r1, 0x4
	mov r8, r1
	mov r3, r8
	orrs r0, r3
	strb r0, [r2, 0x5]
	ldr r0, _08105454 @ =gSubspriteTables_83ED7B4
	mov r9, r0
	adds r0, r2, 0
	mov r1, r9
	bl SetSubspriteTables
	ldr r6, _08105458 @ =gSharedMem
	adds r0, r6, 0
	adds r0, 0x4E
	strb r4, [r0]
	movs r1, 0x90
	lsls r1, 1
	ldr r0, _0810544C @ =gSpriteTemplate_83ED4D4
	movs r2, 0x68
	movs r3, 0x4
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r2, r0, r7
	adds r1, r2, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	mov r3, r10
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r2, 0x5]
	ands r5, r0
	mov r0, r8
	orrs r5, r0
	strb r5, [r2, 0x5]
	adds r0, r2, 0
	mov r1, r9
	bl SetSubspriteTables
	adds r6, 0x4F
	strb r4, [r6]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810544C: .4byte gSpriteTemplate_83ED4D4
_08105450: .4byte gSprites
_08105454: .4byte gSubspriteTables_83ED7B4
_08105458: .4byte gSharedMem
	thumb_func_end sub_81053A0

	thumb_func_start sub_810545C
sub_810545C: @ 810545C
	push {r4,lr}
	ldr r0, _081054A8 @ =gSpriteTemplate_83ED4EC
	movs r1, 0xB8
	lsls r1, 1
	movs r2, 0x4C
	movs r3, 0xB
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _081054AC @ =gSprites
	adds r0, r1
	adds r3, r0, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r3]
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0, 0x5]
	ldr r1, _081054B0 @ =gSubspriteTables_83ED7D4
	bl SetSubspriteTables
	ldr r0, _081054B4 @ =gSharedMem
	adds r0, 0x40
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081054A8: .4byte gSpriteTemplate_83ED4EC
_081054AC: .4byte gSprites
_081054B0: .4byte gSubspriteTables_83ED7D4
_081054B4: .4byte gSharedMem
	thumb_func_end sub_810545C

	thumb_func_start sub_81054B8
sub_81054B8: @ 81054B8
	push {r4,r5,lr}
	ldr r4, _08105518 @ =gSharedMem
	adds r0, r4, 0
	adds r0, 0x40
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0810551C @ =gSprites
	adds r0, r1
	bl DestroySprite
	movs r5, 0
	adds r4, 0x49
_081054D4:
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0810551C @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bls _081054D4
	movs r5, 0
	ldr r4, _08105520 @ =gSharedMem + 0x4B
_081054F4:
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0810551C @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081054F4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08105518: .4byte gSharedMem
_0810551C: .4byte gSprites
_08105520: .4byte gSharedMem + 0x4B
	thumb_func_end sub_81054B8

	thumb_func_start sub_8105524
sub_8105524: @ 8105524
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _0810554C @ =gSharedMem + 0x4E
_0810552A:
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08105550 @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0810552A
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810554C: .4byte gSharedMem + 0x4E
_08105550: .4byte gSprites
	thumb_func_end sub_8105524

	thumb_func_start sub_8105554
sub_8105554: @ 8105554
	push {lr}
	ldr r0, _08105570 @ =gSharedMem
	adds r0, 0x42
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08105574 @ =gSprites
	adds r0, r1
	bl DestroySprite
	pop {r0}
	bx r0
	.align 2, 0
_08105570: .4byte gSharedMem
_08105574: .4byte gSprites
	thumb_func_end sub_8105554

	thumb_func_start sub_8105578
sub_8105578: @ 8105578
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r0, _0810561C @ =gSpriteTemplate_83ED504
	mov r10, r0
	movs r1, 0x98
	movs r2, 0x20
	movs r3, 0x5
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r2, _08105620 @ =gSprites
	mov r9, r2
	adds r3, r1, r2
	ldrb r2, [r3, 0x5]
	movs r4, 0xD
	negs r4, r4
	adds r1, r4, 0
	ands r1, r2
	movs r2, 0x4
	mov r8, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r3, 0x5]
	adds r5, r3, 0
	adds r5, 0x3F
	ldrb r1, [r5]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r5]
	ldr r5, _08105624 @ =gSharedMem
	adds r1, r5, 0
	adds r1, 0x50
	strb r0, [r1]
	movs r0, 0x8
	strh r0, [r3, 0x2E]
	ldr r0, _08105628 @ =0x0000ffff
	strh r0, [r3, 0x30]
	movs r0, 0x1
	negs r0, r0
	strh r0, [r3, 0x32]
	movs r6, 0x20
	strh r6, [r3, 0x3C]
	mov r0, r10
	movs r1, 0xB8
	movs r2, 0x20
	movs r3, 0x5
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	mov r2, r9
	adds r3, r1, r2
	ldrb r1, [r3, 0x5]
	ands r4, r1
	mov r1, r8
	orrs r4, r1
	strb r4, [r3, 0x5]
	adds r5, 0x51
	strb r0, [r5]
	movs r0, 0x1
	strh r0, [r3, 0x30]
	subs r0, 0x2
	strh r0, [r3, 0x32]
	strh r6, [r3, 0x3C]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810561C: .4byte gSpriteTemplate_83ED504
_08105620: .4byte gSprites
_08105624: .4byte gSharedMem
_08105628: .4byte 0x0000ffff
	thumb_func_end sub_8105578

	thumb_func_start sub_810562C
sub_810562C: @ 810562C
	push {r4,lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x2E]
	movs r1, 0x2E
	ldrsh r4, [r2, r1]
	cmp r4, 0
	beq _08105650
	subs r0, 0x1
	movs r1, 0
	strh r0, [r2, 0x2E]
	strh r1, [r2, 0x24]
	strh r1, [r2, 0x26]
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	b _08105682
_08105650:
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	ldrh r0, [r2, 0x30]
	ldrh r1, [r2, 0x24]
	adds r0, r1
	strh r0, [r2, 0x24]
	ldrh r0, [r2, 0x32]
	ldrh r1, [r2, 0x26]
	adds r0, r1
	strh r0, [r2, 0x26]
	ldrh r0, [r2, 0x34]
	adds r0, 0x1
	strh r0, [r2, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7
	ble _08105682
	ldrh r0, [r2, 0x3C]
	strh r0, [r2, 0x2E]
	strh r4, [r2, 0x34]
_08105682:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_810562C

	thumb_func_start sub_8105688
sub_8105688: @ 8105688
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _081056B8 @ =gSprites
	ldr r3, _081056BC @ =gSharedMem
	adds r1, r3, 0
	adds r1, 0x50
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	strh r0, [r1, 0x3C]
	adds r3, 0x51
	ldrb r2, [r3]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	strh r0, [r1, 0x3C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081056B8: .4byte gSprites
_081056BC: .4byte gSharedMem
	thumb_func_end sub_8105688

	thumb_func_start sub_81056C0
sub_81056C0: @ 81056C0
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _081056E8 @ =gSharedMem + 0x50
_081056C6:
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _081056EC @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _081056C6
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_081056E8: .4byte gSharedMem + 0x50
_081056EC: .4byte gSprites
	thumb_func_end sub_81056C0

	thumb_func_start sub_81056F0
sub_81056F0: @ 81056F0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r0, _08105778 @ =gSpriteTemplate_83ED51C
	mov r8, r0
	movs r1, 0x48
	movs r2, 0x50
	movs r3, 0x3
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0810577C @ =gSprites
	mov r9, r1
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	add r2, r9
	ldrb r3, [r2, 0x5]
	movs r4, 0xD
	negs r4, r4
	adds r1, r4, 0
	ands r1, r3
	movs r6, 0x4
	orrs r1, r6
	strb r1, [r2, 0x5]
	movs r3, 0
	movs r1, 0x1
	strh r1, [r2, 0x2E]
	strh r3, [r2, 0x38]
	movs r1, 0x10
	strh r1, [r2, 0x3A]
	movs r1, 0x8
	strh r1, [r2, 0x3C]
	ldr r5, _08105780 @ =gSharedMem
	adds r1, r5, 0
	adds r1, 0x52
	strb r0, [r1]
	mov r0, r8
	movs r1, 0x68
	movs r2, 0x50
	movs r3, 0x3
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r9
	ldrb r2, [r1, 0x5]
	ands r4, r2
	orrs r4, r6
	strb r4, [r1, 0x5]
	adds r1, 0x3F
	ldrb r2, [r1]
	movs r3, 0x1
	orrs r2, r3
	strb r2, [r1]
	adds r5, 0x53
	strb r0, [r5]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08105778: .4byte gSpriteTemplate_83ED51C
_0810577C: .4byte gSprites
_08105780: .4byte gSharedMem
	thumb_func_end sub_81056F0

	thumb_func_start sub_8105784
sub_8105784: @ 8105784
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldr r1, _081057E0 @ =gUnknown_083ECC58
	mov r0, sp
	movs r2, 0x2
	bl memcpy
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _081057D6
	ldrh r0, [r4, 0x3A]
	subs r0, 0x1
	strh r0, [r4, 0x3A]
	lsls r0, 16
	cmp r0, 0
	bgt _081057D6
	movs r0, 0x7
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 4
	ldr r2, _081057E4 @ =0x01030000
	adds r0, r2
	lsrs r0, 16
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	add r1, sp
	ldrb r3, [r1]
	adds r1, r3, 0
	adds r2, r3, 0
	bl MultiplyInvertedPaletteRGBComponents
	ldrh r0, [r4, 0x38]
	adds r0, 0x1
	movs r1, 0x1
	ands r0, r1
	strh r0, [r4, 0x38]
	ldrh r0, [r4, 0x3C]
	strh r0, [r4, 0x3A]
_081057D6:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081057E0: .4byte gUnknown_083ECC58
_081057E4: .4byte 0x01030000
	thumb_func_end sub_8105784

	thumb_func_start sub_81057E8
sub_81057E8: @ 81057E8
	ldr r3, _081057FC @ =gSprites
	ldr r1, _08105800 @ =gSharedMem
	adds r1, 0x52
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r3
	strh r0, [r1, 0x3C]
	bx lr
	.align 2, 0
_081057FC: .4byte gSprites
_08105800: .4byte gSharedMem
	thumb_func_end sub_81057E8

	thumb_func_start sub_8105804
sub_8105804: @ 8105804
	push {r4,r5,lr}
	movs r0, 0x7
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 4
	ldr r1, _08105848 @ =0x01030000
	adds r0, r1
	lsrs r0, 16
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl MultiplyInvertedPaletteRGBComponents
	movs r4, 0
	ldr r5, _0810584C @ =gSharedMem + 0x52
_08105824:
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _08105850 @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _08105824
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08105848: .4byte 0x01030000
_0810584C: .4byte gSharedMem + 0x52
_08105850: .4byte gSprites
	thumb_func_end sub_8105804

	thumb_func_start sub_8105854
sub_8105854: @ 8105854
	push {lr}
	ldr r0, _08105888 @ =gSpriteTemplate_83ED534
	movs r1, 0xA8
	movs r2, 0x50
	movs r3, 0x6
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0810588C @ =gSprites
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r3, [r1, 0x5]
	movs r2, 0xD
	negs r2, r2
	ands r2, r3
	movs r3, 0x4
	orrs r2, r3
	strb r2, [r1, 0x5]
	ldr r1, _08105890 @ =gSharedMem
	adds r1, 0x41
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08105888: .4byte gSpriteTemplate_83ED534
_0810588C: .4byte gSprites
_08105890: .4byte gSharedMem
	thumb_func_end sub_8105854

	thumb_func_start sub_8105894
sub_8105894: @ 8105894
	ldr r1, _0810589C @ =gSpriteCoordOffsetY
	ldrh r1, [r1]
	strh r1, [r0, 0x26]
	bx lr
	.align 2, 0
_0810589C: .4byte gSpriteCoordOffsetY
	thumb_func_end sub_8105894

	thumb_func_start sub_81058A0
sub_81058A0: @ 81058A0
	push {lr}
	ldr r0, _081058BC @ =gSharedMem
	adds r0, 0x41
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _081058C0 @ =gSprites
	adds r0, r1
	bl DestroySprite
	pop {r0}
	bx r0
	.align 2, 0
_081058BC: .4byte gSharedMem
_081058C0: .4byte gSprites
	thumb_func_end sub_81058A0

	thumb_func_start sub_81058C4
sub_81058C4: @ 81058C4
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r1, _08105938 @ =gUnknown_083ECC5A
	mov r0, sp
	movs r2, 0x8
	bl memcpy
	movs r4, 0
	ldr r5, _0810593C @ =gSharedMem + 0x54
_081058D6:
	ldr r0, _08105940 @ =gSpriteCoordOffsetX
	ldrh r0, [r0]
	movs r1, 0x50
	subs r1, r0
	lsls r1, 16
	asrs r1, 16
	ldr r0, _08105944 @ =gSpriteTemplate_83ED54C
	movs r2, 0x44
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	ldr r1, _08105948 @ =gSprites
	adds r3, r1
	ldrb r2, [r3, 0x5]
	movs r6, 0xD
	negs r6, r6
	adds r1, r6, 0
	ands r2, r1
	movs r1, 0x4
	orrs r2, r1
	strb r2, [r3, 0x5]
	movs r1, 0x3E
	adds r1, r3
	mov r12, r1
	ldrb r1, [r1]
	movs r2, 0x2
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	lsls r1, r4, 1
	add r1, sp
	ldrh r1, [r1]
	strh r1, [r3, 0x2E]
	adds r1, r4, r5
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081058D6
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08105938: .4byte gUnknown_083ECC5A
_0810593C: .4byte gSharedMem + 0x54
_08105940: .4byte gSpriteCoordOffsetX
_08105944: .4byte gSpriteTemplate_83ED54C
_08105948: .4byte gSprites
	thumb_func_end sub_81058C4

	thumb_func_start sub_810594C
sub_810594C: @ 810594C
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrh r0, [r5, 0x2E]
	subs r0, 0x2
	movs r4, 0
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r5, 0x2E]
	movs r1, 0x2E
	ldrsh r0, [r5, r1]
	movs r1, 0x14
	bl Cos
	strh r0, [r5, 0x24]
	movs r2, 0x2E
	ldrsh r0, [r5, r2]
	movs r1, 0x6
	bl Sin
	strh r0, [r5, 0x26]
	adds r1, r5, 0
	adds r1, 0x43
	strb r4, [r1]
	movs r2, 0x2E
	ldrsh r0, [r5, r2]
	cmp r0, 0x7F
	ble _08105986
	movs r0, 0x2
	strb r0, [r1]
_08105986:
	ldrh r0, [r5, 0x30]
	adds r0, 0x1
	strh r0, [r5, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xF
	ble _081059B0
	adds r3, r5, 0
	adds r3, 0x3F
	ldrb r2, [r3]
	lsls r0, r2, 31
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, 0
	strh r0, [r5, 0x30]
_081059B0:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_810594C

	thumb_func_start sub_81059B8
sub_81059B8: @ 81059B8
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _081059E0 @ =gSharedMem + 0x54
_081059BE:
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _081059E4 @ =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081059BE
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_081059E0: .4byte gSharedMem + 0x54
_081059E4: .4byte gSprites
	thumb_func_end sub_81059B8

	thumb_func_start sub_81059E8
sub_81059E8: @ 81059E8
	push {r4,lr}
	ldr r0, _08105A2C @ =gSpriteTemplate_83ED564
	movs r1, 0xA8
	movs r2, 0x3C
	movs r3, 0x8
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _08105A30 @ =gSprites
	adds r0, r1
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0, 0x5]
	ldrb r1, [r0, 0x1]
	movs r2, 0x3
	orrs r1, r2
	strb r1, [r0, 0x1]
	bl InitSpriteAffineAnim
	ldr r0, _08105A34 @ =gSharedMem
	adds r0, 0x43
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08105A2C: .4byte gSpriteTemplate_83ED564
_08105A30: .4byte gSprites
_08105A34: .4byte gSharedMem
	thumb_func_end sub_81059E8

	thumb_func_start sub_8105A38
sub_8105A38: @ 8105A38
	push {lr}
	adds r3, r0, 0
	ldrh r2, [r3, 0x2E]
	movs r1, 0x2E
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _08105A5A
	adds r0, r3, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08105AB4
	adds r0, r2, 0x1
	strh r0, [r3, 0x2E]
	b _08105AB4
_08105A5A:
	cmp r0, 0x1
	bne _08105A96
	movs r0, 0x3E
	adds r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	ldrh r0, [r3, 0x32]
	adds r0, 0x1
	strh r0, [r3, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x17
	ble _08105AB4
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	movs r0, 0
	strh r0, [r3, 0x32]
	b _08105AB4
_08105A96:
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3, 0x32]
	adds r0, 0x1
	strh r0, [r3, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xF
	ble _08105AB4
	movs r0, 0x1
	strh r0, [r3, 0x3C]
_08105AB4:
	ldrh r0, [r3, 0x30]
	movs r1, 0xFF
	ands r1, r0
	adds r1, 0x10
	strh r1, [r3, 0x30]
	lsrs r1, 8
	ldrh r0, [r3, 0x26]
	subs r0, r1
	strh r0, [r3, 0x26]
	pop {r0}
	bx r0
	thumb_func_end sub_8105A38

	thumb_func_start sub_8105ACC
sub_8105ACC: @ 8105ACC
	ldr r2, _08105AE4 @ =gSprites
	ldr r0, _08105AE8 @ =gSharedMem
	adds r0, 0x43
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x3C]
	lsls r0, 24
	lsrs r0, 24
	bx lr
	.align 2, 0
_08105AE4: .4byte gSprites
_08105AE8: .4byte gSharedMem
	thumb_func_end sub_8105ACC

	thumb_func_start sub_8105AEC
sub_8105AEC: @ 8105AEC
	push {r4,lr}
	ldr r0, _08105B14 @ =gSharedMem
	adds r0, 0x43
	ldrb r0, [r0]
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _08105B18 @ =gSprites
	adds r4, r0
	ldrb r0, [r4, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	adds r0, r4, 0
	bl DestroySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08105B14: .4byte gSharedMem
_08105B18: .4byte gSprites
	thumb_func_end sub_8105AEC

	thumb_func_start sub_8105B1C
sub_8105B1C: @ 8105B1C
	push {r4,lr}
	adds r3, r0, 0
	adds r2, r1, 0
	ldr r0, _08105B68 @ =gSpriteTemplate_83ED6CC
	lsls r3, 16
	asrs r3, 16
	lsls r2, 16
	asrs r2, 16
	adds r1, r3, 0
	movs r3, 0xC
	bl CreateSprite
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _08105B6C @ =gSprites
	adds r0, r1
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0, 0x5]
	ldrb r1, [r0, 0x1]
	movs r2, 0x3
	orrs r1, r2
	strb r1, [r0, 0x1]
	bl InitSpriteAffineAnim
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08105B68: .4byte gSpriteTemplate_83ED6CC
_08105B6C: .4byte gSprites
	thumb_func_end sub_8105B1C

	thumb_func_start sub_8105B70
sub_8105B70: @ 8105B70
	push {lr}
	adds r2, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08105B84
	movs r0, 0x1
	strh r0, [r2, 0x3C]
_08105B84:
	pop {r0}
	bx r0
	thumb_func_end sub_8105B70

	thumb_func_start sub_8105B88
sub_8105B88: @ 8105B88
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _08105BB0 @ =gSprites
	adds r4, r0
	ldrb r0, [r4, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	adds r0, r4, 0
	bl DestroySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08105BB0: .4byte gSprites
	thumb_func_end sub_8105B88

	thumb_func_start sub_8105BB4
sub_8105BB4: @ 8105BB4
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	ldr r3, _08105BF0 @ =gUnknown_083ECF0C
	lsrs r1, 22
	adds r3, r1, r3
	ldr r5, [r3]
	ldr r3, _08105BF4 @ =gUnknown_083ECE7E
	adds r4, r1, r3
	movs r6, 0
	ldrsh r4, [r4, r6]
	adds r3, 0x2
	adds r1, r3
	movs r6, 0
	ldrsh r3, [r1, r6]
	lsls r2, 16
	asrs r2, 16
	str r2, [sp]
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_8105BF8
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08105BF0: .4byte gUnknown_083ECF0C
_08105BF4: .4byte gUnknown_083ECE7E
	thumb_func_end sub_8105BB4

	thumb_func_start sub_8105BF8
sub_8105BF8: @ 8105BF8
	push {r4-r7,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	adds r1, r2, 0
	adds r2, r3, 0
	ldr r5, [sp, 0x14]
	lsls r4, 24
	lsls r5, 16
	lsrs r5, 16
	ldr r0, _08105C58 @ =gUnknown_083EDB5C
	lsrs r4, 22
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, 16
	asrs r1, 16
	lsls r2, 16
	asrs r2, 16
	movs r3, 0x10
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r1, _08105C5C @ =gSprites
	adds r2, r0, r1
	ldrb r0, [r2, 0x5]
	movs r1, 0xC
	orrs r0, r1
	strb r0, [r2, 0x5]
	str r6, [r2, 0x1C]
	strh r5, [r2, 0x3A]
	movs r0, 0x1
	strh r0, [r2, 0x3C]
	ldr r0, _08105C60 @ =gUnknown_083EDBC4
	adds r4, r0
	ldr r1, [r4]
	cmp r1, 0
	beq _08105C50
	adds r0, r2, 0
	bl SetSubspriteTables
_08105C50:
	adds r0, r7, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08105C58: .4byte gUnknown_083EDB5C
_08105C5C: .4byte gSprites
_08105C60: .4byte gUnknown_083EDBC4
	thumb_func_end sub_8105BF8

	thumb_func_start sub_8105C64
sub_8105C64: @ 8105C64
	movs r1, 0
	strh r1, [r0, 0x3C]
	bx lr
	thumb_func_end sub_8105C64

	thumb_func_start sub_8105C6C
sub_8105C6C: @ 8105C6C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	ldr r1, _08105CE8 @ =gUnknown_083ECC62
	mov r0, sp
	movs r2, 0x8
	bl memcpy
	add r5, sp, 0x8
	ldr r1, _08105CEC @ =gUnknown_083ECC6A
	adds r0, r5, 0
	movs r2, 0x8
	bl memcpy
	ldrh r0, [r4, 0x30]
	adds r1, r0, 0x1
	strh r1, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xF
	ble _08105CB2
	adds r3, r4, 0
	adds r3, 0x42
	ldrb r2, [r3]
	lsls r0, r2, 26
	lsrs r0, 26
	movs r1, 0x1
	eors r1, r0
	movs r0, 0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, 0
	strh r0, [r4, 0x30]
_08105CB2:
	movs r0, 0
	strh r0, [r4, 0x24]
	strh r0, [r4, 0x26]
	adds r0, r4, 0
	adds r0, 0x42
	ldrb r1, [r0]
	movs r0, 0x3F
	ands r0, r1
	cmp r0, 0
	beq _08105CDE
	movs r1, 0x3A
	ldrsh r0, [r4, r1]
	lsls r0, 1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4, 0x24]
	movs r1, 0x3A
	ldrsh r0, [r4, r1]
	lsls r0, 1
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r4, 0x26]
_08105CDE:
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08105CE8: .4byte gUnknown_083ECC62
_08105CEC: .4byte gUnknown_083ECC6A
	thumb_func_end sub_8105C6C

	thumb_func_start sub_8105CF0
sub_8105CF0: @ 8105CF0
	push {lr}
	adds r3, r0, 0
	adds r3, 0x3F
	ldrb r1, [r3]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r3]
	bl sub_8105C6C
	pop {r0}
	bx r0
	thumb_func_end sub_8105CF0

	thumb_func_start sub_8105D08
sub_8105D08: @ 8105D08
	push {lr}
	adds r3, r0, 0
	adds r3, 0x3F
	ldrb r1, [r3]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r3]
	bl sub_8105C6C
	pop {r0}
	bx r0
	thumb_func_end sub_8105D08

	thumb_func_start sub_8105D20
sub_8105D20: @ 8105D20
	push {lr}
	adds r3, r0, 0
	adds r3, 0x3F
	ldrb r1, [r3]
	movs r2, 0x1
	orrs r1, r2
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r3]
	bl sub_8105C6C
	pop {r0}
	bx r0
	thumb_func_end sub_8105D20

	thumb_func_start sub_8105D3C
sub_8105D3C: @ 8105D3C
	push {lr}
	adds r2, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	beq _08105D70
	cmp r0, 0x1
	bgt _08105D52
	cmp r0, 0
	beq _08105D5C
	b _08105DA0
_08105D52:
	cmp r0, 0x2
	beq _08105D80
	cmp r0, 0x3
	beq _08105D9C
	b _08105DA0
_08105D5C:
	ldrh r0, [r2, 0x20]
	adds r0, 0x4
	strh r0, [r2, 0x20]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xCF
	ble _08105DA0
	movs r0, 0xD0
	strh r0, [r2, 0x20]
	b _08105D8E
_08105D70:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5A
	ble _08105DA0
	b _08105D8E
_08105D80:
	ldrh r0, [r2, 0x20]
	adds r0, 0x4
	strh r0, [r2, 0x20]
	lsls r0, 16
	ldr r1, _08105D98 @ =0x010f0000
	cmp r0, r1
	ble _08105DA0
_08105D8E:
	ldrh r0, [r2, 0x2E]
	adds r0, 0x1
	strh r0, [r2, 0x2E]
	b _08105DA0
	.align 2, 0
_08105D98: .4byte 0x010f0000
_08105D9C:
	movs r0, 0
	strh r0, [r2, 0x3C]
_08105DA0:
	pop {r0}
	bx r0
	thumb_func_end sub_8105D3C

	thumb_func_start sub_8105DA4
sub_8105DA4: @ 8105DA4
	push {lr}
	adds r1, r0, 0
	movs r2, 0x2E
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	beq _08105DD8
	cmp r0, 0x1
	bgt _08105DBA
	cmp r0, 0
	beq _08105DC4
	b _08105E02
_08105DBA:
	cmp r0, 0x2
	beq _08105DE8
	cmp r0, 0x3
	beq _08105DFE
	b _08105E02
_08105DC4:
	ldrh r0, [r1, 0x20]
	subs r0, 0x4
	strh r0, [r1, 0x20]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xD0
	bgt _08105E02
	movs r0, 0xD0
	strh r0, [r1, 0x20]
	b _08105DF6
_08105DD8:
	ldrh r0, [r1, 0x30]
	adds r0, 0x1
	strh r0, [r1, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5A
	ble _08105E02
	b _08105DF6
_08105DE8:
	ldrh r0, [r1, 0x20]
	subs r0, 0x4
	strh r0, [r1, 0x20]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x90
	bgt _08105E02
_08105DF6:
	ldrh r0, [r1, 0x2E]
	adds r0, 0x1
	strh r0, [r1, 0x2E]
	b _08105E02
_08105DFE:
	movs r0, 0
	strh r0, [r1, 0x3C]
_08105E02:
	pop {r0}
	bx r0
	thumb_func_end sub_8105DA4

	thumb_func_start sub_8105E08
sub_8105E08: @ 8105E08
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0x5
	bhi _08105EAE
	lsls r0, 2
	ldr r1, _08105E20 @ =_08105E24
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08105E20: .4byte _08105E24
	.align 2, 0
_08105E24:
	.4byte _08105E3C
	.4byte _08105E52
	.4byte _08105E70
	.4byte _08105E84
	.4byte _08105E94
	.4byte _08105EAA
_08105E3C:
	ldr r0, _08105E6C @ =gSharedMem
	ldrb r1, [r0, 0xA]
	subs r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
_08105E52:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _08105EAE
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	movs r0, 0
	strh r0, [r4, 0x30]
	b _08105EAE
	.align 2, 0
_08105E6C: .4byte gSharedMem
_08105E70:
	ldrh r0, [r4, 0x20]
	adds r0, 0x4
	strh r0, [r4, 0x20]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xCF
	ble _08105EAE
	movs r0, 0xD0
	strh r0, [r4, 0x20]
	b _08105EA2
_08105E84:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5A
	ble _08105EAE
	b _08105EA2
_08105E94:
	ldrh r0, [r4, 0x20]
	adds r0, 0x4
	strh r0, [r4, 0x20]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xF7
	ble _08105EAE
_08105EA2:
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	b _08105EAE
_08105EAA:
	movs r0, 0
	strh r0, [r4, 0x3C]
_08105EAE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8105E08

	thumb_func_start sub_8105EB4
sub_8105EB4: @ 8105EB4
	push {lr}
	adds r3, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r3, r1]
	cmp r0, 0x1
	beq _08105EE2
	cmp r0, 0x1
	bgt _08105ECA
	cmp r0, 0
	beq _08105ED0
	b _08105F50
_08105ECA:
	cmp r0, 0x2
	beq _08105F00
	b _08105F50
_08105ED0:
	adds r2, r3, 0
	adds r2, 0x2C
	ldrb r0, [r2]
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
_08105EE2:
	ldrh r0, [r3, 0x22]
	adds r0, 0x8
	strh r0, [r3, 0x22]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x6F
	ble _08105F50
	movs r0, 0x70
	strh r0, [r3, 0x22]
	movs r0, 0x10
	strh r0, [r3, 0x30]
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	b _08105F50
_08105F00:
	movs r0, 0x32
	ldrsh r2, [r3, r0]
	cmp r2, 0
	bne _08105F46
	ldrh r0, [r3, 0x22]
	ldrh r1, [r3, 0x30]
	subs r0, r1
	strh r0, [r3, 0x22]
	negs r1, r1
	strh r1, [r3, 0x30]
	ldrh r0, [r3, 0x34]
	adds r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	ble _08105F46
	lsls r0, r1, 16
	asrs r0, 18
	strh r0, [r3, 0x30]
	strh r2, [r3, 0x34]
	adds r1, r0, 0
	cmp r1, 0
	bne _08105F46
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	strh r1, [r3, 0x3C]
	adds r2, r3, 0
	adds r2, 0x2C
	ldrb r1, [r2]
	movs r0, 0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08105F46:
	ldrh r0, [r3, 0x32]
	adds r0, 0x1
	movs r1, 0x7
	ands r0, r1
	strh r0, [r3, 0x32]
_08105F50:
	pop {r0}
	bx r0
	thumb_func_end sub_8105EB4

	thumb_func_start sub_8105F54
sub_8105F54: @ 8105F54
	push {lr}
	adds r1, r0, 0
	movs r2, 0x2E
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _08105F66
	cmp r0, 0x1
	beq _08105F7C
	b _08105F98
_08105F66:
	ldrh r0, [r1, 0x30]
	adds r0, 0x1
	strh r0, [r1, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x8
	ble _08105F98
	ldrh r0, [r1, 0x2E]
	adds r0, 0x1
	strh r0, [r1, 0x2E]
	b _08105F98
_08105F7C:
	ldrh r0, [r1, 0x22]
	adds r0, 0x2
	strh r0, [r1, 0x22]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x2F
	ble _08105F98
	movs r0, 0x30
	strh r0, [r1, 0x22]
	ldrh r0, [r1, 0x2E]
	adds r0, 0x1
	strh r0, [r1, 0x2E]
	movs r0, 0
	strh r0, [r1, 0x3C]
_08105F98:
	pop {r0}
	bx r0
	thumb_func_end sub_8105F54

	thumb_func_start sub_8105F9C
sub_8105F9C: @ 8105F9C
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _08105FAE
	cmp r0, 0x1
	beq _08106000
	b _0810604E
_08105FAE:
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x20
	ble _0810604E
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	movs r0, 0x5
	strh r0, [r4, 0x30]
	ldrb r0, [r4, 0x1]
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, 0
	movs r1, 0x1
	bl StartSpriteAnim
	ldr r2, _08105FFC @ =REG_MOSAIC
	ldrh r1, [r4, 0x30]
	lsls r0, r1, 4
	orrs r0, r1
	lsls r0, 8
	strh r0, [r2]
	b _0810604E
	.align 2, 0
_08105FFC: .4byte REG_MOSAIC
_08106000:
	ldrh r1, [r4, 0x32]
	lsls r1, 16
	asrs r1, 24
	ldrh r0, [r4, 0x30]
	subs r0, r1
	strh r0, [r4, 0x30]
	lsls r0, 16
	cmp r0, 0
	bge _08106016
	movs r0, 0
	strh r0, [r4, 0x30]
_08106016:
	ldr r2, _08106054 @ =REG_MOSAIC
	ldrh r1, [r4, 0x30]
	lsls r0, r1, 4
	orrs r0, r1
	lsls r0, 8
	strh r0, [r2]
	ldrh r1, [r4, 0x32]
	movs r0, 0xFF
	ands r0, r1
	adds r0, 0x80
	strh r0, [r4, 0x32]
	movs r0, 0x30
	ldrsh r1, [r4, r0]
	cmp r1, 0
	bne _0810604E
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	strh r1, [r4, 0x3C]
	ldrb r1, [r4, 0x1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x1]
	adds r0, r4, 0
	movs r1, 0
	bl StartSpriteAnim
_0810604E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08106054: .4byte REG_MOSAIC
	thumb_func_end sub_8105F9C

	thumb_func_start sub_8106058
sub_8106058: @ 8106058
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r1, 0x30
	ldrsh r0, [r5, r1]
	cmp r0, 0x2
	bgt _081060A8
	ldr r1, _081060A4 @ =gUnknown_083EDE10
	lsls r0, 2
	adds r0, r1
	ldr r4, [r0]
	movs r0, 0x6
	bl IndexOfSpritePaletteTag
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 4
	movs r0, 0x80
	lsls r0, 17
	adds r1, r0
	lsrs r1, 16
	adds r0, r4, 0
	movs r2, 0x20
	bl LoadPalette
	ldrh r0, [r5, 0x32]
	adds r0, 0x1
	strh r0, [r5, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _081060E4
	ldrh r0, [r5, 0x30]
	adds r0, 0x1
	strh r0, [r5, 0x30]
	movs r0, 0
	strh r0, [r5, 0x32]
	b _081060E4
	.align 2, 0
_081060A4: .4byte gUnknown_083EDE10
_081060A8:
	ldr r1, _081060F8 @ =gUnknown_083EDE10
	movs r2, 0x30
	ldrsh r0, [r5, r2]
	lsls r0, 2
	adds r0, r1
	ldr r4, [r0]
	movs r0, 0x6
	bl IndexOfSpritePaletteTag
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 4
	movs r0, 0x80
	lsls r0, 17
	adds r1, r0
	lsrs r1, 16
	adds r0, r4, 0
	movs r2, 0x20
	bl LoadPalette
	ldrh r0, [r5, 0x32]
	adds r0, 0x1
	movs r1, 0
	strh r0, [r5, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x18
	ble _081060E4
	strh r1, [r5, 0x30]
	strh r1, [r5, 0x32]
_081060E4:
	adds r0, r5, 0
	movs r1, 0x1
	bl StartSpriteAnimIfDifferent
	movs r0, 0
	strh r0, [r5, 0x3C]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_081060F8: .4byte gUnknown_083EDE10
	thumb_func_end sub_8106058

	thumb_func_start sub_81060FC
sub_81060FC: @ 81060FC
	push {r4-r6,lr}
	sub sp, 0x30
	adds r4, r0, 0
	ldr r1, _08106138 @ =gUnknown_083ECC72
	mov r0, sp
	movs r2, 0x10
	bl memcpy
	add r6, sp, 0x10
	ldr r1, _0810613C @ =gUnknown_083ECC82
	adds r0, r6, 0
	movs r2, 0x10
	bl memcpy
	add r5, sp, 0x20
	ldr r1, _08106140 @ =gUnknown_083ECC92
	adds r0, r5, 0
	movs r2, 0x10
	bl memcpy
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _08106174
	cmp r0, 0x1
	bgt _08106144
	cmp r0, 0
	beq _0810614A
	b _081061C0
	.align 2, 0
_08106138: .4byte gUnknown_083ECC72
_0810613C: .4byte gUnknown_083ECC82
_08106140: .4byte gUnknown_083ECC92
_08106144:
	cmp r0, 0x2
	beq _08106188
	b _081061C0
_0810614A:
	movs r2, 0x3A
	ldrsh r0, [r4, r2]
	lsls r0, 1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4, 0x24]
	movs r1, 0x3A
	ldrsh r0, [r4, r1]
	lsls r0, 1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r4, 0x26]
	movs r2, 0x3A
	ldrsh r0, [r4, r2]
	lsls r0, 1
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
_08106174:
	ldrh r0, [r4, 0x30]
	subs r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	movs r1, 0x1
	negs r1, r1
	cmp r0, r1
	bne _081061C0
	b _081061BA
_08106188:
	ldrh r0, [r4, 0x24]
	movs r2, 0x24
	ldrsh r1, [r4, r2]
	cmp r1, 0
	ble _08106196
	subs r0, 0x4
	b _0810619C
_08106196:
	cmp r1, 0
	bge _0810619E
	adds r0, 0x4
_0810619C:
	strh r0, [r4, 0x24]
_0810619E:
	ldrh r0, [r4, 0x26]
	movs r2, 0x26
	ldrsh r1, [r4, r2]
	cmp r1, 0
	ble _081061AC
	subs r0, 0x4
	b _081061B2
_081061AC:
	cmp r1, 0
	bge _081061B4
	adds r0, 0x4
_081061B2:
	strh r0, [r4, 0x26]
_081061B4:
	ldr r0, [r4, 0x24]
	cmp r0, 0
	bne _081061C0
_081061BA:
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
_081061C0:
	add sp, 0x30
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81060FC

	thumb_func_start sub_81061C8
sub_81061C8: @ 81061C8
	push {r4,lr}
	sub sp, 0x10
	adds r4, r0, 0
	ldr r1, _0810622C @ =gUnknown_083ECCA2
	mov r0, sp
	movs r2, 0x10
	bl memcpy
	ldrh r1, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _081061EA
	adds r0, r1, 0x1
	strh r0, [r4, 0x2E]
	movs r0, 0xC
	strh r0, [r4, 0x30]
_081061EA:
	movs r1, 0x3A
	ldrsh r0, [r4, r1]
	lsls r0, 1
	add r0, sp
	movs r2, 0
	ldrsh r0, [r0, r2]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl Cos
	strh r0, [r4, 0x24]
	movs r1, 0x3A
	ldrsh r0, [r4, r1]
	lsls r0, 1
	add r0, sp
	movs r2, 0
	ldrsh r0, [r0, r2]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl Sin
	strh r0, [r4, 0x26]
	ldrh r1, [r4, 0x30]
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08106224
	subs r0, r1, 0x1
	strh r0, [r4, 0x30]
_08106224:
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810622C: .4byte gUnknown_083ECCA2
	thumb_func_end sub_81061C8

	thumb_func_start sub_8106230
sub_8106230: @ 8106230
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	beq _0810627A
	cmp r0, 0x1
	bgt _08106248
	cmp r0, 0
	beq _08106252
	b _0810634A
_08106248:
	cmp r0, 0x2
	beq _081062C4
	cmp r0, 0x3
	beq _081062FC
	b _0810634A
_08106252:
	ldr r2, _081062BC @ =gSharedMem
	adds r1, r2, 0
	adds r1, 0x5C
	movs r0, 0x2F
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0x3F
	strh r0, [r1]
	subs r1, 0x4
	ldr r0, _081062C0 @ =0x00002088
	strh r0, [r1]
	adds r2, r5, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, 0x2E]
	adds r0, 0x1
	strh r0, [r5, 0x2E]
_0810627A:
	ldrh r0, [r5, 0x30]
	adds r2, r0, 0x2
	strh r2, [r5, 0x30]
	adds r0, 0xB2
	strh r0, [r5, 0x32]
	movs r1, 0xF0
	subs r1, r2
	strh r1, [r5, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xD0
	ble _08106296
	movs r0, 0xD0
	strh r0, [r5, 0x32]
_08106296:
	movs r1, 0x34
	ldrsh r0, [r5, r1]
	cmp r0, 0xCF
	bgt _081062A2
	movs r0, 0xD0
	strh r0, [r5, 0x34]
_081062A2:
	ldr r2, _081062BC @ =gSharedMem
	ldrh r0, [r5, 0x32]
	lsls r0, 8
	ldrh r1, [r5, 0x34]
	orrs r0, r1
	adds r1, r2, 0
	adds r1, 0x58
	strh r0, [r1]
	movs r1, 0x30
	ldrsh r0, [r5, r1]
	cmp r0, 0x33
	ble _0810634A
	b _0810633C
	.align 2, 0
_081062BC: .4byte gSharedMem
_081062C0: .4byte 0x00002088
_081062C4:
	ldr r6, _08106354 @ =gSharedMem
	movs r1, 0x12
	ldrsh r0, [r6, r1]
	cmp r0, 0
	beq _0810634A
	ldr r1, _08106358 @ =SpriteCallbackDummy
	movs r4, 0
	str r4, [sp]
	movs r0, 0x5
	movs r2, 0xD0
	movs r3, 0x74
	bl sub_8104D30
	adds r1, r6, 0
	adds r1, 0x58
	ldr r0, _0810635C @ =0x0000c0e0
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0xD1
	lsls r0, 7
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0x2F
	strh r0, [r1]
	ldrh r0, [r5, 0x2E]
	adds r0, 0x1
	strh r0, [r5, 0x2E]
	strh r4, [r5, 0x30]
_081062FC:
	ldrh r0, [r5, 0x30]
	adds r2, r0, 0x2
	strh r2, [r5, 0x30]
	adds r0, 0xC2
	strh r0, [r5, 0x32]
	movs r1, 0xE0
	subs r1, r2
	strh r1, [r5, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xD0
	ble _08106318
	movs r0, 0xD0
	strh r0, [r5, 0x32]
_08106318:
	movs r1, 0x34
	ldrsh r0, [r5, r1]
	cmp r0, 0xCF
	bgt _08106324
	movs r0, 0xD0
	strh r0, [r5, 0x34]
_08106324:
	ldr r2, _08106354 @ =gSharedMem
	ldrh r0, [r5, 0x32]
	lsls r0, 8
	ldrh r1, [r5, 0x34]
	orrs r0, r1
	adds r1, r2, 0
	adds r1, 0x58
	strh r0, [r1]
	movs r1, 0x30
	ldrsh r0, [r5, r1]
	cmp r0, 0xF
	ble _0810634A
_0810633C:
	ldrh r0, [r5, 0x2E]
	adds r0, 0x1
	strh r0, [r5, 0x2E]
	adds r1, r2, 0
	adds r1, 0x5C
	movs r0, 0x3F
	strh r0, [r1]
_0810634A:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08106354: .4byte gSharedMem
_08106358: .4byte SpriteCallbackDummy
_0810635C: .4byte 0x0000c0e0
	thumb_func_end sub_8106230

	thumb_func_start nullsub_70
nullsub_70: @ 8106360
	bx lr
	thumb_func_end nullsub_70

	thumb_func_start sub_8106364
sub_8106364: @ 8106364
	ldr r1, _0810636C @ =REG_MOSAIC
	movs r0, 0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0810636C: .4byte REG_MOSAIC
	thumb_func_end sub_8106364

	thumb_func_start sub_8106370
sub_8106370: @ 8106370
	push {r4,lr}
	ldr r0, _08106398 @ =gUnknown_083EDE20
	ldr r4, [r0]
	movs r0, 0x6
	bl IndexOfSpritePaletteTag
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 4
	movs r0, 0x80
	lsls r0, 17
	adds r1, r0
	lsrs r1, 16
	adds r0, r4, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08106398: .4byte gUnknown_083EDE20
	thumb_func_end sub_8106370

	thumb_func_start sub_810639C
sub_810639C: @ 810639C
	ldr r2, _081063BC @ =gSharedMem
	adds r1, r2, 0
	adds r1, 0x58
	movs r0, 0xF0
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0xA0
	strh r0, [r1]
	adds r0, r2, 0
	adds r0, 0x5C
	movs r1, 0x3F
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	bx lr
	.align 2, 0
_081063BC: .4byte gSharedMem
	thumb_func_end sub_810639C

	thumb_func_start sub_81063C0
sub_81063C0: @ 81063C0
	push {r4,lr}
	bl sub_8106404
	ldr r0, _081063F0 @ =gSlotMachineReelTimeLights_Gfx
	ldr r4, _081063F4 @ =gSharedMem + 0x10000
	adds r1, r4, 0
	bl LZDecompressWram
	ldr r0, _081063F8 @ =gUnknown_083EDE8C
	movs r1, 0xC8
	lsls r1, 6
	adds r4, r1
	adds r1, r4, 0
	bl LZDecompressWram
	ldr r0, _081063FC @ =gUnknown_083EDC2C
	bl LoadSpriteSheets
	ldr r0, _08106400 @ =gSlotMachineSpritePalettes
	bl LoadSpritePalettes
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081063F0: .4byte gSlotMachineReelTimeLights_Gfx
_081063F4: .4byte gSharedMem + 0x10000
_081063F8: .4byte gUnknown_083EDE8C
_081063FC: .4byte gUnknown_083EDC2C
_08106400: .4byte gSlotMachineSpritePalettes
	thumb_func_end sub_81063C0

	thumb_func_start sub_8106404
sub_8106404: @ 8106404
	push {r4,r5,lr}
	ldr r3, _0810643C @ =gSharedMem + 0x10000
	movs r2, 0
	ldr r5, _08106440 @ =gUnknown_083EDCDC
	ldr r0, _08106444 @ =gUnknown_083EDCE4
	ldr r4, [r0]
_08106410:
	movs r1, 0
	adds r2, 0x1
_08106414:
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	adds r3, 0x1
	cmp r1, 0x1F
	bls _08106414
	lsls r0, r2, 24
	lsrs r2, r0, 24
	cmp r2, 0x3F
	bls _08106410
	adds r0, r5, 0
	bl LoadSpriteSheet
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810643C: .4byte gSharedMem + 0x10000
_08106440: .4byte gUnknown_083EDCDC
_08106444: .4byte gUnknown_083EDCE4
	thumb_func_end sub_8106404

	.align 2, 0 @ Don't pad with nop.
