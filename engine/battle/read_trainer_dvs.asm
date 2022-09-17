GetTrainerDVs:
; Return the DVs of wOtherTrainerClass in bc

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc
	add hl, bc

	ld bc, wTempDVs + 2
	ld a, [hld]
	ld [bc], a
	dec bc
	ld a, [hld]
	ld [bc], a
	dec bc
	ld a, [hl]
	ld [bc], a

	pop hl
	ret

INCLUDE "data/trainers/dvs.asm"
