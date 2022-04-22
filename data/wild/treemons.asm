TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, EKANS
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Forest:
IF DEF(_GOLD)
; common
	dbbw 50, CATERPIE,   10
	dbbw 15, CATERPIE,   10
	dbbw 15, METAPOD,    10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, BUTTERFREE, 10
	db -1
; rare
	dbbw 50, CATERPIE,   10
	dbbw 15, PINECO,     10
	dbbw 15, PINECO,     10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, BUTTERFREE, 10
	db -1

ELIF DEF(_SILVER)
; common
	dbbw 50, WEEDLE,     10
	dbbw 15, WEEDLE,     10
	dbbw 15, KAKUNA,     10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, BEEDRILL,   10
	db -1
; rare
	dbbw 50, WEEDLE,     10
	dbbw 15, PINECO,     10
	dbbw 15, PINECO,     10
	dbbw 10, EXEGGCUTE,  10
	dbbw  5, EXEGGCUTE,  10
	dbbw  5, BEEDRILL,   10
	db -1
ENDC

TreeMonSet_Rock:
	dbbw 90, 15, KRABBY
	dbbw 10, 15, SHUCKLE
	db -1
