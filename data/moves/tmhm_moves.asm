; The add_tm, add_hm, and add_mt macros in constants/item_constants.asm simultaneously
; define constants for the item IDs and for the corresponding move values.

TMHMMoves:
; entries correspond to *_TMNUM constants (see constants/item_constants.asm)
	table_width 2, TMHMMoves

; TMs
for n, 1, NUM_TMS + 1
	dw TM{02d:n}_MOVE
endr
	assert_table_length NUM_TMS

; HMs
for n, 1, NUM_HMS + 1
	dw HM{02d:n}_MOVE
endr
	assert_table_length NUM_TMS + NUM_HMS

; Move tutors
DEF n = 1
for n, 1, NUM_TUTORS + 1
	dw MT{02d:n}_MOVE
endr
	assert_table_length NUM_TM_HM_TUTOR

	dw 0 ; end
