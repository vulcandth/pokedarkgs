GetMoveCategoryName:
; Copy the category name of move b to wStringBuffer1.

	ld a, b
	call GetMoveIndexFromID
;	dec hl
	ld b, h
	ld c, l
	ld a, BANK(Moves)
	ld hl, Moves
	call LoadIndirectPointer
	ld bc, MOVE_CATEGORY - 1
	add hl, bc
	call GetFarByte

	ld hl, CategoryNames
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wStringBuffer1
	ld bc, MOVE_NAME_LENGTH
	jp CopyBytes

INCLUDE "data/types/category_names.asm"
