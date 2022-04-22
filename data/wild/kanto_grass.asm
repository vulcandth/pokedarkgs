; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	dbw 15, DIGLETT
	dbw 17, DIGLETT
	dbw 19, DIGLETT
	dbw 13, DIGLETT
	dbw 19, DUGTRIO
	dbw 24, DUGTRIO
	dbw 29, DUGTRIO
	; day
	dbw 15, DIGLETT
	dbw 17, DIGLETT
	dbw 19, DIGLETT
	dbw 13, DIGLETT
	dbw 19, DUGTRIO
	dbw 24, DUGTRIO
	dbw 29, DUGTRIO
	; nite
	dbw 15, DIGLETT
	dbw 17, DIGLETT
	dbw 19, DIGLETT
	dbw 13, DIGLETT
	dbw 19, DUGTRIO
	dbw 24, DUGTRIO
	dbw 29, DUGTRIO
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, SANDSHREW
	dbw 12, PARAS
	dbw 10, SANDSLASH
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	; day
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, SANDSHREW
	dbw 12, PARAS
	dbw 10, SANDSLASH
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	; nite
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, SANDSHREW
	dbw 12, PARAS
	dbw 10, SANDSLASH
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	ELIF DEF(_SILVER)
	; morn
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, ZUBAT
	dbw 12, PARAS
	dbw 10, GEODUDE
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	; day
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, ZUBAT
	dbw 12, PARAS
	dbw 10, GEODUDE
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	; nite
	dbw 6, ZUBAT
	dbw 8, GEODUDE
	dbw 8, ZUBAT
	dbw 12, PARAS
	dbw 10, GEODUDE
	dbw 8, CLEFAIRY
	dbw 8, CLEFAIRY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	dbw 10, CUBONE
	dbw 10, GEODUDE
	dbw 12, MACHOP
	dbw 8, ZUBAT
	dbw 14, MACHOKE
	dbw 13, CUBONE
	dbw 13, CUBONE
	; day
	dbw 10, CUBONE
	dbw 10, GEODUDE
	dbw 12, MACHOP
	dbw 8, ZUBAT
	dbw 14, MACHOKE
	dbw 13, CUBONE
	dbw 13, CUBONE
	; nite
	dbw 10, CUBONE
	dbw 10, GEODUDE
	dbw 12, MACHOP
	dbw 8, ZUBAT
	dbw 14, MACHOKE
	dbw 13, CUBONE
	dbw 13, CUBONE
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, CUBONE
	dbw 12, GEODUDE
	dbw 16, ONIX
	dbw 10, ZUBAT
	dbw 14, MAROWAK
	dbw 14, KANGASKHAN
	dbw 14, KANGASKHAN
	; day
	dbw 12, CUBONE
	dbw 12, GEODUDE
	dbw 16, ONIX
	dbw 10, ZUBAT
	dbw 14, MAROWAK
	dbw 14, KANGASKHAN
	dbw 14, KANGASKHAN
	; nite
	dbw 12, CUBONE
	dbw 12, GEODUDE
	dbw 16, ONIX
	dbw 10, ZUBAT
	dbw 14, MAROWAK
	dbw 14, KANGASKHAN
	dbw 14, KANGASKHAN
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, URSARING
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	; day
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, URSARING
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	; nite
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, URSARING
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	ELIF DEF(_SILVER)
	; morn
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, DONPHAN
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	; day
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, DONPHAN
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	; nite
	dbw 32, GRAVELER
	dbw 32, GOLBAT
	dbw 33, DONPHAN
	dbw 34, ONIX
	dbw 36, ONIX
	dbw 35, RHYHORN
	dbw 35, RHYHORN
	ENDC
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS
	IF DEF(_GOLD)
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	ELIF DEF(_SILVER)
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	ENDC
	; morn
	dbw 22, ZUBAT
	dbw 22, RATICATE
	dbw 22, GOLBAT
	dbw 21, SLOWPOKE
	dbw 20, RATTATA
	dbw 23, SLOWPOKE
	dbw 23, SLOWPOKE
	; day
	dbw 22, ZUBAT
	dbw 22, RATICATE
	dbw 22, GOLBAT
	dbw 21, SLOWPOKE
	dbw 20, RATTATA
	dbw 23, SLOWPOKE
	dbw 23, SLOWPOKE
	; nite
	dbw 22, ZUBAT
	dbw 22, RATICATE
	dbw 22, GOLBAT
	dbw 21, SLOWPOKE
	dbw 20, RATTATA
	dbw 23, SLOWPOKE
	dbw 23, SLOWPOKE
	end_grass_wildmons

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, PIDGEY
	dbw 2, RATTATA
	dbw 3, SENTRET
	dbw 3, PIDGEY
	dbw 6, FURRET
	dbw 4, PIDGEY
	dbw 4, PIDGEY
	; day
	dbw 2, PIDGEY
	dbw 2, RATTATA
	dbw 3, SENTRET
	dbw 3, PIDGEY
	dbw 6, FURRET
	dbw 4, PIDGEY
	dbw 4, PIDGEY
	; nite
	dbw 2, HOOTHOOT
	dbw 2, RATTATA
	dbw 3, RATTATA
	dbw 3, HOOTHOOT
	dbw 6, RATTATA
	dbw 4, HOOTHOOT
	dbw 4, HOOTHOOT
	end_grass_wildmons

	def_grass_wildmons ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 3, CATERPIE
	dbw 3, PIDGEY
	dbw 5, METAPOD
	dbw 7, BUTTERFREE
	dbw 7, PIDGEOTTO
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	; day
	dbw 3, CATERPIE
	dbw 3, PIDGEY
	dbw 5, METAPOD
	dbw 7, PIDGEY
	dbw 7, PIDGEOTTO
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	; nite
	dbw 3, HOOTHOOT
	dbw 3, SPINARAK
	dbw 5, HOOTHOOT
	dbw 7, NOCTOWL
	dbw 7, ARIADOS
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	ELIF DEF(_SILVER)
	; morn
	dbw 3, WEEDLE
	dbw 3, LEDYBA
	dbw 5, KAKUNA
	dbw 7, BEEDRILL
	dbw 7, LEDIAN
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	; day
	dbw 3, WEEDLE
	dbw 3, PIDGEY
	dbw 5, KAKUNA
	dbw 7, PIDGEY
	dbw 7, PIDGEOTTO
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	; nite
	dbw 3, HOOTHOOT
	dbw 3, HOOTHOOT
	dbw 5, HOOTHOOT
	dbw 7, NOCTOWL
	dbw 7, NOCTOWL
	dbw 4, PIKACHU
	dbw 4, PIKACHU
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, SPEAROW
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; day
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, SPEAROW
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; nite
	dbw 5, RATTATA
	dbw 5, ZUBAT
	dbw 8, RATTATA
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, RATTATA
	dbw 8, RATTATA
	ELIF DEF(_SILVER)
	; morn
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; day
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; nite
	dbw 5, RATTATA
	dbw 5, ZUBAT
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, RATTATA
	dbw 8, RATTATA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	IF DEF(_GOLD)
	; morn
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, SPEAROW
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; day
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, SPEAROW
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; nite
	dbw 5, SPEAROW
	dbw 5, ZUBAT
	dbw 8, RATTATA
	dbw 6, JIGGLYPUFF
	dbw 10, RATTATA
	dbw 8, RATTATA
	dbw 8, RATTATA
	ELIF DEF(_SILVER)
	; morn
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; day
	dbw 5, SPEAROW
	dbw 5, RATTATA
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, SPEAROW
	dbw 8, SPEAROW
	; nite
	dbw 5, RATTATA
	dbw 5, ZUBAT
	dbw 8, EKANS
	dbw 6, JIGGLYPUFF
	dbw 10, ARBOK
	dbw 8, RATTATA
	dbw 8, RATTATA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, PIDGEY
	dbw 15, PIDGEY
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; day
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, PIDGEY
	dbw 15, PIDGEY
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; nite
	dbw 13, ODDISH
	dbw 14, ODDISH
	dbw 13, BELLSPROUT
	dbw 15, GLOOM
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	ELIF DEF(_SILVER)
	; morn
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, MEOWTH
	dbw 15, PIDGEY
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; day
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, MEOWTH
	dbw 15, PIDGEY
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; nite
	dbw 13, ODDISH
	dbw 14, MEOWTH
	dbw 13, BELLSPROUT
	dbw 15, GLOOM
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, PIDGEY
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; day
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, PIDGEY
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; nite
	dbw 13, ODDISH
	dbw 14, ODDISH
	dbw 13, BELLSPROUT
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	ELIF DEF(_SILVER)
	; morn
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, MEOWTH
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; day
	dbw 13, PIDGEY
	dbw 13, BELLSPROUT
	dbw 14, MEOWTH
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	; nite
	dbw 13, ODDISH
	dbw 14, MEOWTH
	dbw 13, BELLSPROUT
	dbw 15, MAGNEMITE
	dbw 12, ABRA
	dbw 14, ABRA
	dbw 14, ABRA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 17, RATTATA
	dbw 17, SPEAROW
	dbw 18, GROWLITHE
	dbw 19, RATICATE
	dbw 19, RATTATA
	dbw 15, RATTATA
	dbw 15, RATTATA
	; day
	dbw 17, RATTATA
	dbw 17, SPEAROW
	dbw 18, GROWLITHE
	dbw 19, RATICATE
	dbw 19, RATTATA
	dbw 15, GROWLITHE
	dbw 15, GROWLITHE
	; nite
	dbw 17, RATTATA
	dbw 17, MURKROW
	dbw 18, GROWLITHE
	dbw 19, RATICATE
	dbw 19, MURKROW
	dbw 15, HOUNDOUR
	dbw 15, HOUNDOUR
	ELIF DEF(_SILVER)
	; morn
	dbw 17, MEOWTH
	dbw 17, SPEAROW
	dbw 18, VULPIX
	dbw 19, RATICATE
	dbw 19, PERSIAN
	dbw 15, RATTATA
	dbw 15, RATTATA
	; day
	dbw 17, MEOWTH
	dbw 17, SPEAROW
	dbw 18, VULPIX
	dbw 19, RATICATE
	dbw 19, PERSIAN
	dbw 15, VULPIX
	dbw 15, VULPIX
	; nite
	dbw 17, MEOWTH
	dbw 17, MURKROW
	dbw 18, VULPIX
	dbw 19, RATICATE
	dbw 19, PERSIAN
	dbw 15, HOUNDOUR
	dbw 15, HOUNDOUR
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 17, PIDGEOTTO
	dbw 19, PIDGEOTTO
	dbw 15, ABRA
	dbw 18, GROWLITHE
	dbw 17, PIDGEOTTO
	dbw 15, KADABRA
	dbw 15, KADABRA
	; day
	dbw 17, PIDGEOTTO
	dbw 19, PIDGEOTTO
	dbw 15, ABRA
	dbw 18, GROWLITHE
	dbw 17, PIDGEOTTO
	dbw 15, KADABRA
	dbw 15, KADABRA
	; nite
	dbw 17, NOCTOWL
	dbw 20, HAUNTER
	dbw 15, ABRA
	dbw 19, NOCTOWL
	dbw 18, GROWLITHE
	dbw 15, KADABRA
	dbw 15, KADABRA
	ELIF DEF(_SILVER)
	; morn
	dbw 17, MEOWTH
	dbw 19, PIDGEOTTO
	dbw 15, ABRA
	dbw 18, VULPIX
	dbw 17, PIDGEOTTO
	dbw 15, KADABRA
	dbw 15, KADABRA
	; day
	dbw 17, MEOWTH
	dbw 19, PIDGEOTTO
	dbw 15, ABRA
	dbw 18, VULPIX
	dbw 17, PIDGEOTTO
	dbw 15, KADABRA
	dbw 15, KADABRA
	; nite
	dbw 17, MEOWTH
	dbw 20, HAUNTER
	dbw 15, ABRA
	dbw 19, NOCTOWL
	dbw 18, VULPIX
	dbw 15, KADABRA
	dbw 15, KADABRA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 13, MANKEY
	dbw 15, RATTATA
	dbw 13, SPEAROW
	dbw 15, RATICATE
	dbw 15, FEAROW
	dbw 15, PRIMEAPE
	dbw 15, PRIMEAPE
	; day
	dbw 13, MANKEY
	dbw 15, RATTATA
	dbw 13, SPEAROW
	dbw 15, RATICATE
	dbw 15, FEAROW
	dbw 15, PRIMEAPE
	dbw 15, PRIMEAPE
	; nite
	dbw 13, MANKEY
	dbw 15, RATTATA
	dbw 15, RATICATE
	dbw 13, RATTATA
	dbw 15, RATICATE
	dbw 15, PRIMEAPE
	dbw 15, PRIMEAPE
	ELIF DEF(_SILVER)
	; morn
	dbw 13, RATTATA
	dbw 15, SPEAROW
	dbw 13, SPEAROW
	dbw 15, RATICATE
	dbw 15, FEAROW
	dbw 15, RATICATE
	dbw 15, RATICATE
	; day
	dbw 13, RATTATA
	dbw 15, SPEAROW
	dbw 13, SPEAROW
	dbw 15, RATICATE
	dbw 15, FEAROW
	dbw 15, RATICATE
	dbw 15, RATICATE
	; nite
	dbw 13, RATTATA
	dbw 15, RATTATA
	dbw 15, RATICATE
	dbw 13, RATTATA
	dbw 15, RATICATE
	dbw 15, RATICATE
	dbw 15, RATICATE
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 16, SPEAROW
	dbw 17, VOLTORB
	dbw 16, RATICATE
	dbw 18, FEAROW
	dbw 16, QUAGSIRE
	dbw 15, ELECTABUZZ
	dbw 15, ELECTABUZZ
	; day
	dbw 16, SPEAROW
	dbw 17, VOLTORB
	dbw 17, RATICATE
	dbw 18, FEAROW
	dbw 15, ELECTABUZZ
	dbw 17, ELECTABUZZ
	dbw 17, ELECTABUZZ
	; nite
	dbw 16, QUAGSIRE
	dbw 17, VOLTORB
	dbw 16, RATICATE
	dbw 17, QUAGSIRE
	dbw 18, RATICATE
	dbw 15, ELECTABUZZ
	dbw 15, ELECTABUZZ
	end_grass_wildmons

	def_grass_wildmons ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 14, DROWZEE
	dbw 15, RATTATA
	dbw 15, MAGNEMITE
	dbw 16, DROWZEE
	dbw 16, HYPNO
	dbw 16, HYPNO
	dbw 16, HYPNO
	; day
	dbw 14, DROWZEE
	dbw 15, RATTATA
	dbw 15, MAGNEMITE
	dbw 16, DROWZEE
	dbw 16, HYPNO
	dbw 16, HYPNO
	dbw 16, HYPNO
	; nite
	dbw 14, DROWZEE
	dbw 15, RATTATA
	dbw 15, MAGNEMITE
	dbw 16, DROWZEE
	dbw 16, HYPNO
	dbw 16, HYPNO
	dbw 16, HYPNO
	end_grass_wildmons

	def_grass_wildmons ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 24, HOPPIP
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 24, HOPPIP
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 24, HOPPIP
	dbw 26, SKIPLOOM
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 24, HOPPIP
	dbw 26, SKIPLOOM
	dbw 26, SKIPLOOM
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 24, HOPPIP
	dbw 26, SKIPLOOM
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 24, HOPPIP
	dbw 26, SKIPLOOM
	dbw 26, SKIPLOOM
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 24, HOPPIP
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINA
	dbw 23, NIDORINO
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 22, QUAGSIRE
	dbw 25, CHANSEY
	; day
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, PIDGEOTTO
	dbw 22, HOPPIP
	dbw 24, HOPPIP
	dbw 24, HOPPIP
	dbw 25, CHANSEY
	; nite
	dbw 23, NIDORINO
	dbw 23, NIDORINA
	dbw 25, NOCTOWL
	dbw 22, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 24, QUAGSIRE
	dbw 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 26, GRIMER
	dbw 27, FEAROW
	dbw 28, GRIMER
	dbw 29, FEAROW
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	; day
	dbw 26, GRIMER
	dbw 27, FEAROW
	dbw 28, GRIMER
	dbw 29, FEAROW
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	; nite
	dbw 26, GRIMER
	dbw 27, GRIMER
	dbw 28, GRIMER
	dbw 28, MURKROW
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 28, FEAROW
	dbw 27, GRIMER
	dbw 29, GRIMER
	dbw 30, FEAROW
	dbw 29, SLUGMA
	dbw 32, MUK
	dbw 32, MUK
	; day
	dbw 28, FEAROW
	dbw 27, SLUGMA
	dbw 29, GRIMER
	dbw 30, FEAROW
	dbw 25, SLUGMA
	dbw 32, MUK
	dbw 32, MUK
	; nite
	dbw 28, GRIMER
	dbw 27, GRIMER
	dbw 29, GRIMER
	dbw 30, MUK
	dbw 29, SLUGMA
	dbw 32, MUK
	dbw 32, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 26, GRIMER
	dbw 27, FEAROW
	dbw 28, GRIMER
	dbw 29, FEAROW
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	; day
	dbw 26, GRIMER
	dbw 27, FEAROW
	dbw 28, GRIMER
	dbw 29, FEAROW
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	; nite
	dbw 26, GRIMER
	dbw 27, GRIMER
	dbw 28, GRIMER
	dbw 28, MUK
	dbw 27, SLUGMA
	dbw 30, MUK
	dbw 30, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	dbw 30, TANGELA
	dbw 25, TANGELA
	dbw 35, TANGELA
	dbw 20, TANGELA
	dbw 30, TANGELA
	dbw 28, MR__MIME
	dbw 28, MR__MIME
	; day
	dbw 30, TANGELA
	dbw 25, TANGELA
	dbw 35, TANGELA
	dbw 20, TANGELA
	dbw 28, MR__MIME
	dbw 30, MR__MIME
	dbw 30, MR__MIME
	; nite
	dbw 30, TANGELA
	dbw 25, TANGELA
	dbw 35, TANGELA
	dbw 20, TANGELA
	dbw 30, TANGELA
	dbw 28, MR__MIME
	dbw 28, MR__MIME
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, RATTATA
	dbw 3, SPEAROW
	dbw 5, SPEAROW
	dbw 4, DODUO
	dbw 6, PONYTA
	dbw 7, FEAROW
	dbw 7, FEAROW
	; day
	dbw 3, RATTATA
	dbw 3, SPEAROW
	dbw 5, SPEAROW
	dbw 4, DODUO
	dbw 6, PONYTA
	dbw 7, FEAROW
	dbw 7, FEAROW
	; nite
	dbw 3, RATTATA
	dbw 3, RATTATA
	dbw 5, RATTATA
	dbw 4, RATTATA
	dbw 6, PONYTA
	dbw 7, RATTATA
	dbw 7, RATTATA
	end_grass_wildmons

	def_grass_wildmons ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 8, BELLSPROUT
	dbw 10, BELLSPROUT
	dbw 9, ABRA
	dbw 12, WEEPINBELL
	dbw 8, VENONAT
	dbw 14, WEEPINBELL
	dbw 14, WEEPINBELL
	; day
	dbw 8, BELLSPROUT
	dbw 10, SUNKERN
	dbw 9, ABRA
	dbw 12, WEEPINBELL
	dbw 10, BELLSPROUT
	dbw 14, WEEPINBELL
	dbw 14, WEEPINBELL
	; nite
	dbw 8, VENONAT
	dbw 10, ODDISH
	dbw 9, ABRA
	dbw 13, WEEPINBELL
	dbw 10, BELLSPROUT
	dbw 10, VENOMOTH
	dbw 10, VENOMOTH
	end_grass_wildmons

	def_grass_wildmons ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 8, PIDGEY
	dbw 10, BELLSPROUT
	dbw 8, VENONAT
	dbw 9, ABRA
	dbw 10, PIDGEOTTO
	dbw 14, WEEPINBELL
	dbw 14, WEEPINBELL
	; day
	dbw 8, PIDGEY
	dbw 10, BELLSPROUT
	dbw 10, PIDGEY
	dbw 9, ABRA
	dbw 12, PIDGEOTTO
	dbw 14, WEEPINBELL
	dbw 14, WEEPINBELL
	; nite
	dbw 8, VENONAT
	dbw 10, ODDISH
	dbw 10, VENOMOTH
	dbw 9, ABRA
	dbw 14, WEEPINBELL
	dbw 10, BELLSPROUT
	dbw 10, BELLSPROUT
	end_grass_wildmons

	def_grass_wildmons ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 28, DODUO
	dbw 28, SANDSLASH
	dbw 32, PONYTA
	dbw 30, DODUO
	dbw 30, DODRIO
	dbw 30, RATICATE
	dbw 30, QUAGSIRE
	; day
	dbw 28, DODUO
	dbw 28, SANDSLASH
	dbw 32, PONYTA
	dbw 30, DODUO
	dbw 30, RATICATE
	dbw 30, DODRIO
	dbw 30, DODRIO
	; nite
	dbw 28, RATICATE
	dbw 28, SANDSLASH
	dbw 32, PONYTA
	dbw 30, RATICATE
	dbw 30, QUAGSIRE
	dbw 32, QUAGSIRE
	dbw 32, QUAGSIRE
	ELIF DEF(_SILVER)
	; morn
	dbw 28, DODUO
	dbw 28, RATICATE
	dbw 32, PONYTA
	dbw 30, DODUO
	dbw 30, ARBOK
	dbw 30, RATICATE
	dbw 30, QUAGSIRE
	; day
	dbw 28, DODUO
	dbw 28, RATICATE
	dbw 32, PONYTA
	dbw 30, DODUO
	dbw 30, RATICATE
	dbw 30, ARBOK
	dbw 30, ARBOK
	; nite
	dbw 28, RATICATE
	dbw 28, RATICATE
	dbw 32, PONYTA
	dbw 30, RATICATE
	dbw 30, QUAGSIRE
	dbw 30, ARBOK
	dbw 30, ARBOK
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 28, DODUO
	dbw 28, RATICATE
	dbw 30, DODUO
	dbw 28, QUAGSIRE
	dbw 32, PONYTA
	dbw 30, SANDSLASH
	dbw 30, SANDSLASH
	; day
	dbw 28, DODUO
	dbw 28, RATICATE
	dbw 30, DODUO
	dbw 30, RATICATE
	dbw 32, PONYTA
	dbw 30, SANDSLASH
	dbw 30, SANDSLASH
	; nite
	dbw 28, QUAGSIRE
	dbw 28, RATICATE
	dbw 30, QUAGSIRE
	dbw 30, RATICATE
	dbw 32, PONYTA
	dbw 30, SANDSLASH
	dbw 30, SANDSLASH
	ELIF DEF(_SILVER)
	; morn
	dbw 28, DODUO
	dbw 28, ARBOK
	dbw 30, DODUO
	dbw 28, QUAGSIRE
	dbw 32, PONYTA
	dbw 30, DODRIO
	dbw 30, DODRIO
	; day
	dbw 28, DODUO
	dbw 28, ARBOK
	dbw 30, DODUO
	dbw 30, RATICATE
	dbw 32, PONYTA
	dbw 30, DODRIO
	dbw 30, DODRIO
	; nite
	dbw 28, QUAGSIRE
	dbw 28, ARBOK
	dbw 30, QUAGSIRE
	dbw 30, RATICATE
	dbw 32, PONYTA
	dbw 32, QUAGSIRE
	dbw 32, QUAGSIRE
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, URSARING
	dbw 42, RAPIDASH
	dbw 41, DODUO
	dbw 43, DODRIO
	dbw 43, DODRIO
	; day
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, URSARING
	dbw 42, RAPIDASH
	dbw 41, DODUO
	dbw 43, DODRIO
	dbw 43, DODRIO
	; nite
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, URSARING
	dbw 40, SNEASEL
	dbw 42, RAPIDASH
	dbw 42, RAPIDASH
	dbw 42, RAPIDASH
	ELIF DEF(_SILVER)
	; morn
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, DONPHAN
	dbw 42, RAPIDASH
	dbw 41, DODUO
	dbw 43, DODRIO
	dbw 43, DODRIO
	; day
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, DONPHAN
	dbw 42, RAPIDASH
	dbw 41, DODUO
	dbw 43, DODRIO
	dbw 43, DODRIO
	; nite
	dbw 39, TANGELA
	dbw 40, PONYTA
	dbw 40, DONPHAN
	dbw 40, SNEASEL
	dbw 42, RAPIDASH
	dbw 42, RAPIDASH
	dbw 42, RAPIDASH
	ENDC
	end_grass_wildmons

	db -1 ; end
