; Pokémon swarms in grass

SwarmGrassWildMons:

; Yanma swarm
	def_grass_wildmons ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, NIDORAN_M
	dbw 12, NIDORAN_F
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 14, PIDGEY
	dbw 10, DITTO
	dbw 10, DITTO
	; day
	dbw 12, NIDORAN_M
	dbw 12, NIDORAN_F
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 14, PIDGEY
	dbw 10, DITTO
	dbw 10, DITTO
	; nite
	dbw 12, NIDORAN_M
	dbw 12, NIDORAN_F
	dbw 12, YANMA
	dbw 14, YANMA
	dbw 14, HOOTHOOT
	dbw 10, DITTO
	dbw 10, DITTO
	end_grass_wildmons

; Snubbull swarm
	def_grass_wildmons ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 16, SNUBBULL
	dbw 16, RATICATE
	dbw 16, MAGNEMITE
	dbw 16, FARFETCH_D
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	; day
	dbw 16, SNUBBULL
	dbw 16, RATICATE
	dbw 16, MAGNEMITE
	dbw 16, FARFETCH_D
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	; nite
	dbw 16, SNUBBULL
	dbw 16, RATICATE
	dbw 16, MAGNEMITE
	dbw 16, RATTATA
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	ELIF DEF(_SILVER)
	; morn
	dbw 16, SNUBBULL
	dbw 16, MEOWTH
	dbw 16, MAGNEMITE
	dbw 16, FARFETCH_D
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	; day
	dbw 16, SNUBBULL
	dbw 16, MEOWTH
	dbw 16, MAGNEMITE
	dbw 16, FARFETCH_D
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	; nite
	dbw 16, SNUBBULL
	dbw 16, MEOWTH
	dbw 16, MAGNEMITE
	dbw 16, MEOWTH
	dbw 13, MILTANK
	dbw 13, TAUROS
	dbw 13, TAUROS
	ENDC
	end_grass_wildmons

; Dunsparce swarm
	def_grass_wildmons DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, GEODUDE
	dbw 3, DUNSPARCE
	dbw 2, ZUBAT
	dbw 2, GEODUDE
	dbw 2, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 4, DUNSPARCE
	; day
	dbw 3, GEODUDE
	dbw 3, DUNSPARCE
	dbw 2, ZUBAT
	dbw 2, GEODUDE
	dbw 2, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 4, DUNSPARCE
	; nite
	dbw 3, GEODUDE
	dbw 3, DUNSPARCE
	dbw 2, ZUBAT
	dbw 2, GEODUDE
	dbw 2, DUNSPARCE
	dbw 4, DUNSPARCE
	dbw 4, DUNSPARCE
	end_grass_wildmons

; Marill swarm
	def_grass_wildmons MOUNT_MORTAR_1F_OUTSIDE
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, MARILL
	dbw 15, ZUBAT
	dbw 14, MACHOP
	dbw 15, MARILL
	dbw 14, GEODUDE
	dbw 16, RATTATA
	dbw 16, RATTATA
	; day
	dbw 13, MARILL
	dbw 15, ZUBAT
	dbw 14, MACHOP
	dbw 15, MARILL
	dbw 14, GEODUDE
	dbw 16, RATTATA
	dbw 16, RATTATA
	; nite
	dbw 13, MARILL
	dbw 15, ZUBAT
	dbw 14, MACHOP
	dbw 15, MARILL
	dbw 14, GEODUDE
	dbw 16, RATTATA
	dbw 16, RATTATA
	end_grass_wildmons

	db -1 ; end
