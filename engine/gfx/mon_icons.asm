SetMenuMonColor:
	push hl
	push de
	push bc
	push af

	ld a, [wTempIconSpecies]
	ld [wCurPartySpecies], a
	call GetMenuMonPalette
	ld hl, wShadowOAMSprite00Attributes
	jr _ApplyMenuMonColor

SetMenuMonColor_NoShiny:
	push hl
	push de
	push bc
	push af

	ld a, [wTempIconSpecies]
	ld [wCurPartySpecies], a
	and a
	call GetMenuMonPalette_PredeterminedShininess
	ld hl, wShadowOAMSprite00Attributes
	jr _ApplyMenuMonColor

LoadPartyMenuMonColors:
	push hl
	push de
	push bc
	push af

	ld a, [wPartyCount]
	sub c
	ld [wCurPartyMon], a
	ld e, a
	ld d, 0

	ld hl, wPartyMon1Item
	call GetPartyLocation
	ld a, [hl]
	ld [wCurMenuMonHasItemOrMail], a

	ld hl, wPartySpecies
	add hl, de
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld a, MON_SHINY
	call GetPartyParamLocation
	call GetMenuMonPalette
	ld hl, wShadowOAMSprite00Attributes
	push af
	ld a, [hl]
	and X_FLIP
	ld b, a
	pop af
	or b
	push af
	ld a, [wCurPartyMon]
	swap a
	ld d, 0
	ld e, a
	add hl, de
	pop af

	ld de, 4
	ld [hl], a ; top left
	add hl, de
	ld [hl], a ; top right
	add hl, de
	push hl
	add hl, de
	ld [hl], a ; bottom right
	pop hl
	ld d, a
	ld a, [wCurMenuMonHasItemOrMail]
	and a
	ld a, PAL_OW_RED ; item or mail color
	jr nz, .ok
	ld a, d
.ok
	ld [hl], a ; bottom left
	jr _FinishMenuMonColor

_ApplyMenuMonColor:
	ld c, 4
	ld de, 4
.loop
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	; fallthrough
_FinishMenuMonColor:
	pop af
	pop bc
	pop de
	pop hl
	ret

GetMonPalInBCDE:
; Sets BCDE to mon icon palette.
; Input: c = species, b = shininess (1=true, 0=false)
	ld a, c
	call GetPokemonIndexFromID
	dec hl
	ld d, h
	ld e, l

	ld hl, MenuMonPals

	; This sets z if mon is shiny.
	dec b
	ld b, 0
	add hl, de
	ld a, [hl]
	jr z, .shiny
	swap a
.shiny
	and $f

	; Now we have the target color. Get the palette (+ 2 to avoid white).
	ld hl, PartyMenuOBPals + 2
	ld bc, 1 palettes
	call AddNTimes

	push hl
	ld a, BANK(PartyMenuOBPals)
	call GetFarWord
	ld b, h
	ld c, l
	pop hl
	inc hl
	inc hl
	ld a, BANK(PartyMenuOBPals)
	call GetFarWord
	ld d, h
	ld e, l
	ret

GetMenuMonPalette:
	ld c, l
	ld b, h
	farcall CheckShininess
GetMenuMonPalette_PredeterminedShininess:
	push af
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	dec hl
	ld b, h
	ld c, l
	ld hl, MenuMonPals
	add hl, bc
	ld e, [hl]
	pop af
	ld a, e
	jr c, .shiny
	swap a
.shiny
	and $f
	ret

LoadMenuMonIcon:
	push hl
	push de
	push bc
	call .LoadIcon
	pop bc
	pop de
	pop hl
	ret

.LoadIcon:
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
; entries correspond to MONICON_* constants
	dw PartyMenu_InitAnimatedMonIcon    ; MONICON_PARTYMENU
	dw NamingScreen_InitAnimatedMonIcon ; MONICON_NAMINGSCREEN
	dw MoveList_InitAnimatedMonIcon     ; MONICON_MOVES
	dw Trade_LoadMonIconGFX             ; MONICON_TRADE
	dw Mobile_InitAnimatedMonIcon       ; MONICON_MOBILE1
	dw Mobile_InitPartyMenuBGPal71      ; MONICON_MOBILE2
	dw Unused_GetPartyMenuMonIcon       ; MONICON_UNUSED

Unused_GetPartyMenuMonIcon:
	call InitPartyMenuIcon
	call .GetPartyMonItemGFX
	jmp SetPartyMonIconAnimSpeed

.GetPartyMonItemGFX:
	push bc
	ldh a, [hObjectStructIndex]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	pop bc
	ld a, [hl]
	and a
	jr z, .no_item
	push hl
	push bc
	ld d, a
	callfar ItemIsMail
	pop bc
	pop hl
	jr c, .not_mail
	ld a, $06
	jr .got_tile
.not_mail
	ld a, $05
	; fallthrough

.no_item
	ld a, $04
.got_tile
	ld hl, SPRITEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ret

Mobile_InitAnimatedMonIcon:
	call PartyMenu_InitAnimatedMonIcon
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld a, SPRITE_ANIM_SEQ_NULL
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, 9 * 8
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, 9 * 8
	ld [hl], a
	ret

Mobile_InitPartyMenuBGPal71:
	call InitPartyMenuIcon
	call SetPartyMonIconAnimSpeed
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld a, SPRITE_ANIM_SEQ_NULL
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, 3 * 8
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld a, 12 * 8
	ld [hl], a
	ld a, c
	ld [wc608], a
	ld a, b
	ld [wc608 + 1], a
	ret

PartyMenu_InitAnimatedMonIcon:
	call InitPartyMenuIcon
	call .SpawnItemIcon
	jr SetPartyMonIconAnimSpeed

.SpawnItemIcon:
	push bc
	ldh a, [hObjectStructIndex]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	pop bc
	ld a, [hl]
	and a
	ret z
	push hl
	push bc
	ld d, a
	callfar ItemIsMail
	pop bc
	pop hl
	jr c, .mail
	ld a, SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_ITEM
	jr .okay

.mail
	ld a, SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_MAIL
.okay
	ld hl, SPRITEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ret

InitPartyMenuIcon:
	call LoadPartyMenuMonColors
	ld a, [wCurIconTile]
	push af
	ldh a, [hObjectStructIndex]
	ld hl, wPartySpecies
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	ld [wCurIcon], a
	call GetMemIconGFX
	ldh a, [hObjectStructIndex]
; y coord
	add a
	add a
	add a
	add a
	add $1c
	ld d, a
; x coord
	ld e, $10
; type is partymon icon
	ld a, SPRITE_ANIM_INDEX_PARTY_MON
	call _InitSpriteAnimStruct
	pop af
	ld hl, SPRITEANIMSTRUCT_TILE_ID
	add hl, bc
	ld [hl], a
	ret

SetPartyMonIconAnimSpeed:
	push bc
	ldh a, [hObjectStructIndex]
	ld b, a
	call .getspeed
	ld a, b
	pop bc
	ld hl, SPRITEANIMSTRUCT_DURATIONOFFSET
	add hl, bc
	ld [hl], a
	rlca
	rlca
	ld hl, SPRITEANIMSTRUCT_VAR2
	add hl, bc
	ld [hl], a
	ret

.getspeed
	farcall PlacePartymonHPBar
	call GetHPPal
	ld e, d
	ld d, 0
	ld hl, .speeds
	add hl, de
	ld b, [hl]
	ret

.speeds
	db $00 ; HP_GREEN
	db $40 ; HP_YELLOW
	db $80 ; HP_RED

NamingScreen_InitAnimatedMonIcon:
	ld hl, wTempMonShiny
	call SetMenuMonColor
	ld a, [wTempIconSpecies]
	ld [wCurIcon], a
	xor a
	call GetIconGFX
	depixel 4, 4, 4, 0
	ld a, SPRITE_ANIM_INDEX_PARTY_MON
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], SPRITE_ANIM_SEQ_NULL
	ret

MoveList_InitAnimatedMonIcon:
	ld a, MON_SHINY
	call GetPartyParamLocation
	call SetMenuMonColor
	ld a, [wTempIconSpecies]
	ld [wCurIcon], a
	xor a
	call GetIconGFX
	ld d, 3 * 8 + 2 ; depixel 3, 4, 2, 4
	ld e, 4 * 8 + 4
	ld a, SPRITE_ANIM_INDEX_PARTY_MON
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], SPRITE_ANIM_SEQ_NULL
	ret

Trade_LoadMonIconGFX:
	ld a, [wTempIconSpecies]
	ld [wCurIcon], a
	ld a, $62
	ld [wCurIconTile], a
	jr GetMemIconGFX

GetSpeciesIcon:
; Load species icon into VRAM at tile a
	push de
	ld a, MON_SHINY
	call GetPartyParamLocation
	call SetMenuMonColor
	ld a, [wTempIconSpecies]
	ld [wCurIcon], a
	pop de
	ld a, e
	jr GetIconGFX

FlyFunction_GetMonIcon:
	push de
	ld a, [wTempIconSpecies]
	ld [wCurIcon], a
	pop de
	ld a, e
	call GetIcon_a

	; Edit the OBJ 0 palette so that the flying Pokémon has the right colors.
	ld a, MON_SHINY
	call GetPartyParamLocation
	call GetMenuMonPalette
	add a
	add a
	add a
	ld e, a
	farcall SetFirstOBJPalette
	ret

GetMemIconGFX:
	ld a, [wCurIconTile]
GetIconGFX:
	call GetIcon_a
	ld de, 8 tiles
	add hl, de
	ld de, HeldItemIcons
	lb bc, BANK(HeldItemIcons), 2
	call GetGFXUnlessMobile
	ld a, [wCurIconTile]
	add 10
	ld [wCurIconTile], a
	ret

HeldItemIcons:
INCBIN "gfx/stats/mail.2bpp"
INCBIN "gfx/stats/item.2bpp"

GetIcon_de:
; Load icon graphics into VRAM starting from tile de.
	ld l, e
	ld h, d
	jr GetIcon

GetIcon_a:
; Load icon graphics into VRAM starting from tile a.
	ld l, a
	ld h, 0

GetIcon:
; Load icon graphics into VRAM starting from tile hl.

; One tile is 16 bytes long.
rept 4
	add hl, hl
endr

	ld de, vTiles0
	add hl, de
GetIconStorage:
	push hl

	ld a, [wCurIcon]
;	cp EGG
	push hl

	push af
	call GetPokemonIndexFromID
	dec hl
	ld b, h
	ld c, l

	ld hl, FollowingSpritePointers

	ld a, b
	cp HIGH(UNOWN - 1) ; we already decremented
	jr nz, .not_unown
	ld a, c

	cp LOW(UNOWN - 1) ; we already decremented
	jr nz, .not_unown
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Form
	call AddNTimes
	predef GetUnownLetter
	ld a, [wUnownLetter]
	dec a
	ld hl, UnownFollowingSpritePointers
	ld b, 0
	ld c, a

.not_unown
	add hl, bc
	add hl, bc
	add hl, bc
	assert BANK(FollowingSpritePointers) == BANK(UnownFollowingSpritePointers), \
			"FollowingSpritePointers Bank is not equal to UnownFollowingSpritePointers"
	ld a, BANK(FollowingSpritePointers)
	push af
	call GetFarByte
	ld b, a
	inc hl
	pop af
	call GetFarWord

	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push bc
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	pop bc
	ld de, wDecompressScratch

	pop af
	ldh [rSVBK], a

	ld c, 4
	pop af

	pop hl

	push bc
	call GetGFXUnlessMobile
	push hl
	ld hl, wMonIconFlags
	bit BILLS_PC_ICON_F, [hl]
	pop hl
	jr nz, .pc_storage_done
	ld bc, 16 * 4
	add hl, bc
	push hl
	ld h, d
	ld l, e
	ld de, 16 * 4 * 3
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	call GetGFXUnlessMobile

.done
	pop hl
	ret

.pc_storage_done
	ld hl, wMonIconFlags
	res BILLS_PC_ICON_F, [hl]
	pop bc
	pop hl
	ret

GetGFXUnlessMobile:
	ld a, [wLinkMode]
	cp LINK_MOBILE
	jr nz, .not_mobile
	jmp Get2bppViaHDMA

.not_mobile
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	call Request2bpp

	pop af
	ldh [rSVBK], a
	ret

GetStorageIcon_a:
; Load frame 1 icon graphics into VRAM starting from tile a
	ld l, a ; no-optimize hl|bc|de = a * 16 (rept)
	ld h, 0
rept 4
	add hl, hl
endr
	ld de, vTiles0
	add hl, de
	; fallthrough
GetStorageIcon:
	push hl
	ld hl, wMonIconFlags
	set BILLS_PC_ICON_F, [hl]
	pop hl
	ld a, [wCurIcon]
	jp GetIconStorage

FreezeMonIcons:
	ld hl, wSpriteAnimationStructs
	ld e, PARTY_LENGTH
	ld a, [wMenuCursorY]
	ld d, a
.loop
	ld a, [hl]
	and a
	jr z, .next
	cp d
	jr z, .loadwithtwo
	ld a, SPRITE_ANIM_SEQ_NULL
	jr .ok

.loadwithtwo
	ld a, SPRITE_ANIM_SEQ_PARTY_MON_SWITCH

.ok
	push hl
	ld c, l
	ld b, h
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], a
	pop hl

.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .loop
	ret

UnfreezeMonIcons:
	ld hl, wSpriteAnimationStructs
	ld e, PARTY_LENGTH
.loop
	ld a, [hl]
	and a
	jr z, .next
	push hl
	ld c, l
	ld b, h
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], SPRITE_ANIM_SEQ_PARTY_MON
	pop hl
.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .loop
	ret

HoldSwitchmonIcon:
	ld hl, wSpriteAnimationStructs
	ld e, PARTY_LENGTH
	ld a, [wSwitchMon]
	ld d, a
.loop
	ld a, [hl]
	and a
	jr z, .next
	cp d
	jr z, .is_switchmon
	ld a, SPRITE_ANIM_SEQ_PARTY_MON_SELECTED
	jr .join_back

.is_switchmon
	ld a, SPRITE_ANIM_SEQ_PARTY_MON_SWITCH
.join_back
	push hl
	ld c, l
	ld b, h
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], a
	pop hl
.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .loop
	ret

INCLUDE "data/pokemon/menu_mon_pals.asm"
