; overworld_sprite struct members (see data/sprites/sprites.asm)
rsreset
DEF SPRITEDATA_ADDR    rw ; 0
DEF SPRITEDATA_SIZE    rb ; 2
DEF SPRITEDATA_BANK    rb ; 3
DEF SPRITEDATA_TYPE    rb ; 4
DEF SPRITEDATA_PALETTE rb ; 5
DEF NUM_SPRITEDATA_FIELDS EQU _RS

; sprite types
	const_def 1
	const WALKING_SPRITE  ; 1
	const STANDING_SPRITE ; 2
	const STILL_SPRITE    ; 3

; sprite palettes
	const_def
	const PAL_OW_RED    ; 0
	const PAL_OW_BLUE   ; 1
	const PAL_OW_GREEN  ; 2
	const PAL_OW_BROWN  ; 3
	const PAL_OW_PINK   ; 4
	const PAL_OW_SILVER ; 5
	const PAL_OW_TREE   ; 6
	const PAL_OW_ROCK   ; 7
	const PAL_OW_PURPLE ; 8
	const PAL_OW_TEAL   ; 9
	const PAL_OW_GREY   ; a
DEF NUM_OW_PALS EQU const_value

; object_events set bit 3 so as not to use the sprite's default palette
; MapObjectPals indexes (see gfx/overworld/npc_sprites.pal)
	const_def
	const PAL_NPC_RED    ; 1
	const PAL_NPC_BLUE   ; 2
	const PAL_NPC_GREEN  ; 3
	const PAL_NPC_BROWN  ; 4
	const PAL_NPC_PINK   ; 5
	const PAL_NPC_SILVER ; 6
	const PAL_NPC_TREE   ; 7
	const PAL_NPC_ROCK   ; 8
	const PAL_NPC_PURPLE ; 9
	const PAL_NPC_TEAL   ; a
	const PAL_NPC_GREY   ; b
	assert const_value == NUM_OW_PALS
