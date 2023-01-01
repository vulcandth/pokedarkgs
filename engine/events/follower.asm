SECTION "Follower Script", ROMX
FollowerScript::
	faceplayer
	callasm DoFollowerInteraction
	end

MACRO interaction
	db \1 ; species
	db \2 ; type inclusion
	db \3 ; type exclusion
	db \4 ; landmark
	db \5 ; map id
	db \6 ; time
	db \7 ; status
	dw \8 ; event
	dw \9 ; script
ENDM

DEF FOLLOWER_INT_TABLE_ROW_LENGTH EQU 11

FollowerInteractionTable:
; uses the first interaction that matches all of its conditions.
;	interaction species     type-incl     type-excl landmark                 mapid                    time       status      event                        script
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       SLP_MASK,   -1,                          SleepInteraction
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       (1 << PSN), -1,                          PoisonInteraction
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       (1 << BRN), -1,                          BurnInteraction
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       (1 << FRZ), -1,                          FrozenInteraction
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       (1 << PAR), -1,                          ParalyzeInteraction
	interaction CHIKORITA,  -1,           -1,       LANDMARK_ROUTE_29,       -1,                       -1,       -1,         -1,                          ChikoritaRoute29Interaction
	interaction TOTODILE,   -1,           -1,       LANDMARK_ROUTE_30,       -1,                       -1,       -1,         -1,                          TotodileRoute30Interaction
	interaction CYNDAQUIL,  -1,           -1,       LANDMARK_ROUTE_31,       -1,                       -1,       -1,         -1,                          CyndaquilRoute31Interaction
	interaction -1,         ICE,          -1,       LANDMARK_DARK_CAVE,      -1,                       -1,       -1,         -1,                          DarkCaveInteraction
	interaction BELLSPROUT, -1,           -1,       LANDMARK_SPROUT_TOWER,   -1,                       -1,       -1,         -1,                          BellsproutSproutTowerInteraction
	interaction UNOWN,      -1,           -1,       LANDMARK_RUINS_OF_ALPH,  -1,                       -1,       -1,         -1,                          UnownRuinsOfAlphInteraction
	interaction -1,         FIRE,         -1,       LANDMARK_AZALEA_TOWN,    -1,                       -1,       -1,         -1,                          AzaleaTownInteraction
	interaction SLOWPOKE,   -1,           -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         EVENT_CLEARED_SLOWPOKE_WELL, SlowPokeWellInteraction
	interaction SLOWBRO,    -1,           -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         EVENT_CLEARED_SLOWPOKE_WELL, SlowPokeWellInteraction
	interaction SLOWPOKE,   -1,           -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         -1,                          SlowPokeWellRocketInteraction
	interaction SLOWBRO,    -1,           -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         -1,                          SlowPokeWellRocketInteraction
	interaction -1,         FIRE,         -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         -1,                          SlowPokeWellFireMonInteraction
	interaction -1,         WATER,        -1,       LANDMARK_SLOWPOKE_WELL,  -1,                       -1,       -1,         -1,                          SlowPokeWellWaterMonInteraction
	interaction FARFETCH_D, -1,           -1,       LANDMARK_ILEX_FOREST,    -1,                       -1,       -1,         -1,                          IlexForestFarfetchdInteraction
	interaction CELEBI,     -1,           -1,       LANDMARK_ILEX_FOREST,    -1,                       -1,       -1,         -1,                          IlexForestCelebiInteraction
	interaction HERACROSS,  -1,           -1,       LANDMARK_ILEX_FOREST,    -1,                       -1,       -1,         -1,                          HeracrossInteraction
	interaction SUDOWOODO,  -1,           -1,       LANDMARK_ROUTE_36,       -1,                       -1,       -1,         -1,                          Route36Interaction
	interaction CLEFAIRY,   -1,           -1,       LANDMARK_GOLDENROD_CITY, MAP_GOLDENROD_GYM,        -1,       -1,         -1,                          GoldenrodGymInteraction
	interaction -1,         ELECTRIC,     -1,       LANDMARK_RADIO_TOWER,    -1,                       -1,       -1,         -1,                          RadioTowerElectricInteraction
	interaction -1,         GHOST,        -1,       LANDMARK_RADIO_TOWER,    -1,                       -1,       -1,         -1,                          RadioTowerGhostInteraction
	interaction -1,         BUG,          -1,       LANDMARK_NATIONAL_PARK,  -1,                       -1,       -1,         -1,                          NationalParkInteraction
	interaction PICHU,      -1,           -1,       LANDMARK_ECRUTEAK_CITY,  MAP_DANCE_THEATER,        -1,       -1,         -1,                          DanceTheaterPichuInteraction
	interaction BELLOSSOM,  -1,           -1,       LANDMARK_ECRUTEAK_CITY,  MAP_DANCE_THEATER,        -1,       -1,         -1,                          DanceTheaterBellossomInteraction
	interaction RAIKOU,     -1,           -1,       LANDMARK_BURNED_TOWER,   -1,                       -1,       -1,         -1,                          BurnedTowerLegendaryDogInteraction
	interaction ENTEI,      -1,           -1,       LANDMARK_BURNED_TOWER,   -1,                       -1,       -1,         -1,                          BurnedTowerLegendaryDogInteraction
	interaction SUICUNE,    -1,           -1,       LANDMARK_BURNED_TOWER,   -1,                       -1,       -1,         -1,                          BurnedTowerLegendaryDogInteraction
	interaction HO_OH,      -1,           -1,       LANDMARK_BURNED_TOWER,   -1,                       -1,       -1,         -1,                          BurnedTowerHoOhInteraction
	interaction HO_OH,      -1,           -1,       LANDMARK_TIN_TOWER,      -1,                       -1,       -1,         -1,                          TinTowerInteraction
	interaction TAUROS,     -1,           -1,       LANDMARK_ROUTE_39,       -1,                       -1,       -1,         -1,                          Route39TaurosInteraction
	interaction MILTANK,    -1,           -1,       LANDMARK_ROUTE_39,       -1,                       -1,       -1,         -1,                          Route39MiltankInteraction
	interaction AMPHAROS,   -1,           -1,       LANDMARK_LIGHTHOUSE,     -1,                       -1,       -1,         -1,                          LighthouseInteraction
	interaction KRABBY,     -1,           -1,       LANDMARK_CIANWOOD_CITY,  -1,                       -1,       -1,         -1,                          CianwoodCityInteraction
	interaction POLIWAG,    -1,           -1,       LANDMARK_ROUTE_40,       -1,                       -1,       -1,         -1,                          PoliwagInteraction
	interaction POLIWAG,    -1,           -1,       LANDMARK_WHIRL_ISLANDS,  -1,                       -1,       -1,         -1,                          PoliwagInteraction
	interaction LUGIA,      -1,           -1,       LANDMARK_WHIRL_ISLANDS,  -1,                       -1,       -1,         -1,                          WhirlIslandsLugiaInteraction
	interaction -1,         WATER,        -1,       LANDMARK_WHIRL_ISLANDS,  -1,                       -1,       -1,         -1,                          WhirlIslandsWaterMonInteraction
	interaction -1,         ROCK,         -1,       LANDMARK_ROUTE_42,       -1,                       -1,       -1,         -1,                          Route42Interaction
	interaction DITTO,      -1,           -1,       LANDMARK_ROUTE_15,       -1,                       -1,       -1,         -1,                          Route15DittoInteraction
	interaction -1,         FLYING,       -1,       LANDMARK_ROUTE_18,       -1,                       -1,       -1,         -1,                          Route18FlyingInteraction
	interaction MAGIKARP,   -1,           -1,       LANDMARK_LAKE_OF_RAGE,   -1,                       -1,       -1,         -1,                          LakeOfRageMagikarpInteraction
	interaction GYARADOS,   -1,           -1,       LANDMARK_LAKE_OF_RAGE,   -1,                       -1,       -1,         -1,                          LakeOfRageGyradosInteraction
	interaction ELECTRODE,  -1,           -1,       LANDMARK_MAHOGANY_TOWN,  MAP_TEAM_ROCKET_BASE_B1F, -1,       -1,         -1,                          TeamRocketBaseInteraction
	interaction ELECTRODE,  -1,           -1,       LANDMARK_MAHOGANY_TOWN,  MAP_TEAM_ROCKET_BASE_B2F, -1,       -1,         -1,                          TeamRocketBaseInteraction
	interaction ELECTRODE,  -1,           -1,       LANDMARK_MAHOGANY_TOWN,  MAP_TEAM_ROCKET_BASE_B3F, -1,       -1,         -1,                          TeamRocketBaseInteraction
	interaction -1,         ICE,          -1,       LANDMARK_ICE_PATH,       -1,                       -1,       -1,         -1,                          ColdIceMonInteraction
	interaction -1,         GRASS,        -1,       LANDMARK_ICE_PATH,       -1,                       -1,       -1,         -1,                          ColdGrassMonInteraction
	interaction -1,         ICE,          -1,       LANDMARK_MAHOGANY_TOWN,  MAP_MAHOGANY_GYM,         -1,       -1,         -1,                          ColdIceMonInteraction
	interaction -1,         GRASS,        -1,       LANDMARK_MAHOGANY_TOWN,  MAP_MAHOGANY_GYM,         -1,       -1,         -1,                          ColdGrassMonInteraction
	interaction -1,         DRAGON,       -1,       LANDMARK_DRAGONS_DEN,    -1,                       -1,       -1,         -1,                          DragonsDenInteraction
	interaction MEGANIUM,   -1,           -1,       LANDMARK_VICTORY_ROAD,   -1,                       -1,       -1,         -1,                          VictoryRoadMeganiumInteraction
	interaction TYPHLOSION, -1,           -1,       LANDMARK_VICTORY_ROAD,   -1,                       -1,       -1,         -1,                          VictoryRoadTyphlosionInteraction
	interaction FERALIGATR, -1,           -1,       LANDMARK_VICTORY_ROAD,   -1,                       -1,       -1,         -1,                          VictoryRoadFeraligatrInteraction
	interaction BULBASAUR,  -1,           -1,       LANDMARK_ROUTE_1,        -1,                       -1,       -1,         -1,                          Route1Interaction
	interaction CHARMANDER, -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          Route2CharmanderInteraction
	interaction PICHU,      -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          Route2PikachuInteraction
	interaction PIKACHU,    -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          Route2PikachuInteraction
	interaction RAICHU,     -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          Route2PikachuInteraction
	interaction HERACROSS,  -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          HeracrossInteraction
	interaction SQUIRTLE,   -1,           -1,       LANDMARK_ROUTE_3,        -1,                       -1,       -1,         -1,                          Route3Interaction
	interaction CLEFFA,     -1,           -1,       LANDMARK_MT_MOON,        -1,                       -1,       -1,         -1,                          MtMoonInteraction
	interaction CLEFAIRY,   -1,           -1,       LANDMARK_MT_MOON,        -1,                       -1,       -1,         -1,                          MtMoonInteraction
	interaction CLEFABLE,   -1,           -1,       LANDMARK_MT_MOON,        -1,                       -1,       -1,         -1,                          MtMoonInteraction
	interaction PICHU,      -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          PowerPlantPikachuInteraction
	interaction PIKACHU,    -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          PowerPlantPikachuInteraction
	interaction RAICHU,     -1,           -1,       LANDMARK_ROUTE_2,        -1,                       -1,       -1,         -1,                          PowerPlantPikachuInteraction
	interaction ONIX,       -1,           -1,       LANDMARK_ROCK_TUNNEL,    -1,                       -1,       -1,         -1,                          RockTunnelOnixInteraction
	interaction STEELIX,    -1,           -1,       LANDMARK_ROCK_TUNNEL,    -1,                       -1,       -1,         -1,                          RockTunnelOnixInteraction
	interaction -1,         ROCK,         -1,       LANDMARK_ROCK_TUNNEL,    -1,                       -1,       -1,         -1,                          RockTunnelRockMonInteraction
	interaction DIGLETT,    -1,           -1,       LANDMARK_DIGLETTS_CAVE,  -1,                       -1,       -1,         -1,                          DiglettsCaveInteraction
	interaction DUGTRIO,    -1,           -1,       LANDMARK_DIGLETTS_CAVE,  -1,                       -1,       -1,         -1,                          DiglettsCaveInteraction
	interaction -1,         PSYCHIC_TYPE, -1,       LANDMARK_SAFFRON_CITY,   MAP_MR_PSYCHICS_HOUSE,    -1,       -1,         -1,                          MrPsychicsHouseInteraction
	interaction PORYGON,    -1,           -1,       LANDMARK_CELADON_CITY,   -1,                       -1,       -1,         -1,                          CeladonCityPorygonInteraction
	interaction -1,         GHOST,        -1,       LANDMARK_LAVENDER_TOWN,  -1,                       -1,       -1,         -1,                          LavendarTownInteraction
	; Note: the Default Interaction should always be last!
	interaction -1,         -1,           -1,       -1,                      -1,                       -1,       -1,         -1,                          DefaultInteraction

DoFollowerInteraction:
	call StoreFollowerNickInBuffer
	ld hl, FollowerInteractionTable
	ld a, [wFollowerSpriteID]
	ld [wCurSpecies], a
	ld c, a
	call GetBaseData
	ld a, [wBaseType1]
	ld d, a
	ld a, [wBaseType2]
	ld e, a
.get_row
	ld b, FOLLOWER_INT_TABLE_ROW_LENGTH
	ld a, [hli]
	dec b
	inc a
	jr z, .check_type_inclusion
	dec a
	cp c
	jp nz, .next_row
.check_type_inclusion
	ld a, [hli]
	dec b
	inc a
	jr z, .check_type_exclusion
	dec a
	cp d
	jr z, .check_type_exclusion
	cp e
	jp nz, .next_row
.check_type_exclusion
	ld a, [hli]
	dec b
	inc a
	jr z, .check_landmark
	dec a
	cp d
	jr z, .next_row
	cp e
	jr z, .next_row
.check_landmark
	ld a, [hli]
	dec b
	inc a
	jr z, .check_map_id
	dec a
	push bc
	ld c, a
	ld a, [wCurLandmark]
	cp c
	pop bc
	jr nz, .next_row
.check_map_id
	ld a, [hli]
	dec b
	inc a
	jr z, .check_time
	dec a
	push bc
	ld c, a
	ld a, [wMapNumber]
	cp c
	pop bc
	jr nz, .next_row
.check_time
	ld a, [hli]
	dec b
	inc a
	jr z, .check_status
	dec a
	push bc
	ld c, a
	ld a, [wTimeOfDay]
	and c
	pop bc
	jr z, .next_row
.check_status
	ld a, [hli]
	dec b
	inc a
	jr z, .check_event
	dec a
	push bc
	ld c, a
	ld a, [wFollowerPartyNum]
	ld [wCurPartyMon], a
	ld a, MON_STATUS
	push hl
	call GetPartyParamLocation
	ld a, [hl]
	pop hl
	and c
	pop bc
	jr z, .next_row
.check_event
	ld a, [hli]
	dec b
	dec b
	inc a
	ld a, [hli]
	jr nz, .continue
	inc a
	jr z, .run_script
	dec a
.continue
	dec hl
	dec hl
	push de
	ld d, a
	ld a, [hl]
	ld e, a
	inc hl
	inc hl
	push bc
	push hl
	ld b, CHECK_FLAG
	call EventFlagAction
	pop hl
	ld a, c
	pop bc
	pop de
	and a
	jr z, .next_row
.run_script
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ldh a, [hROMBank]
	ld b, a
	farcall ScriptCall
	ret

.next_row
	push bc
	ld c, b
	ld b, 0
	add hl, bc
	pop bc
	jp .get_row

StoreFollowerNickInBuffer:
	ld a, [wFollowerPartyNum]
	dec a
	ld hl, wPartyMon1Nickname
	and a
	jr z, .done
	ld de, MON_NAME_LENGTH
.loop
	add hl, de
	dec a
	jr nz, .loop
.done
	ld de, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	jp CopyBytes


; Common Text Interactions:
SeemsVeryHappyText:
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "to be very happy"
	done

ShookTheTowerText:
	text "@"
	text_ram wStringBuffer1
	text " shook"
	line "the tower with its"
	cont "voice!"
	done

HowledLoudlyText:
	text "@"
	text_ram wStringBuffer1
	text " howled"
	line "very loudly!"
	done

DancingHappilyText:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "dancing around"
	cont "happily!"
	done

DefaultInteraction:
	opentext
	followcry
	random 50
	ifequal 1, .give_item
	applymovement FOLLOWER, .followerjumptest
	writetext .text
	closetext
	end

.give_item
	writetext .found_item
	yesorno
	iffalse .done
	verbosegiveitem NUGGET
.done
	closetext
	end

.text
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "happy to be with"
	cont "you!"
	done

.found_item
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "to have found"
	cont "something."

	para "Take it?"
	done

.followerjumptest:
	jump_in_place
	jump_in_place
	jump_in_place
	step_end

SleepInteraction:
	showemote EMOTE_SLEEP, FOLLOWER, 40
	opentext
	followcry
	writetext .text
	closetext
	end

.text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "looking a little"
	cont "sleepy."
	done

PoisonInteraction:
	showemote EMOTE_SAD, FOLLOWER, 40
	opentext
	followcry
	writetext .text
	closetext
	end

.text:
	text "@"
	text_ram wStringBuffer1
	text " looks"
	line "rather ill."
	done

BurnInteraction:
	showemote EMOTE_SHOCK, FOLLOWER, 40
	opentext
	followcry
	writetext .text
	closetext
	end

.text:
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "to be in a little"
	cont "pain."
	done

FrozenInteraction:
	showemote EMOTE_SHOCK, PLAYER, 40
	opentext
	followcry
	writetext .text
	closetext
	end

.text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "covered in ice!"
	done

ParalyzeInteraction:
	showemote EMOTE_BOLT, FOLLOWER, 40
	writetext .text
	end

.text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "looking a little"
	cont "sluggish."
	done

ChikoritaRoute29Interaction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .waving_leaf
	closetext
	end

.interaction2
	writetext .leaf_twitch
	closetext
	end

.waving_leaf:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "waving its leaf"
	cont "around."
	done

.leaf_twitch:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "making its leaf"
	cont "twitch."
	done

TotodileRoute30Interaction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .moving_jaw
	closetext
	end

.interaction2
	writetext .open_close_mouth
	closetext
	end

.moving_jaw:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "moving its jaw."
	done

.open_close_mouth:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "opening and"
	cont "closing its mouth."
	done

CyndaquilRoute31Interaction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .blew_couple_fireballs
	closetext
	end

.interaction2
	writetext .blew_a_fireball
	closetext
	end

.blew_couple_fireballs:
	text "@"
	text_ram wStringBuffer1
	text " blew"
	line "out a couple of"
	cont "fireballs."
	done

.blew_a_fireball:
	text "@"
	text_ram wStringBuffer1
	line "blew out a"
	cont "fireball…"
	done

DarkCaveInteraction:
	opentext
	followcry
	writetext .DarkCaveText
	closetext
	end

.DarkCaveText:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "cheerful that it's"
	cont "become cold."
	done

BellsproutSproutTowerInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .danced_as_pleased
	closetext
	end

.interaction2
	writetext .danced_strange_manner
	closetext
	end

.danced_as_pleased:
	text "@"
	text_ram wStringBuffer1
	text " swayed"
	line "and danced around"
	cont "as it pleased."
	done

.danced_strange_manner:
	text "@"
	text_ram wStringBuffer1
	text " swayed"
	line "around, dancing in"
	cont "a strange manner."
	done

UnownRuinsOfAlphInteraction:
	opentext
	followcry
	random 5
	ifequal 1, .interaction2
	ifequal 2, .interaction3
	ifequal 3, .interaction4
	ifequal 4, .interaction5
	writetext .StrangeSoundText
	closetext
	end

.interaction2
	applymovement FOLLOWER, .FollowerSpinMovement
	faceplayer
	writetext .StartedSpinningText
	closetext
	end

.interaction3
	writetext .GrowlingText
	closetext
	end

.interaction4
	writetext .NotMovingText
	closetext
	end

.interaction5
	writetext .SingingText
	closetext
	end

.StrangeSoundText:
	text "A strange sound is"
	line "coming from"
	cont "@"
	text_ram wStringBuffer1
	text "…"
	done

.StartedSpinningText:
	text "@"
	text_ram wStringBuffer1
	text "…"
	line "started spinning"
	cont "around in circles."
	done

.FollowerSpinMovement:
	turn_head DOWN
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	turn_head UP
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	turn_head DOWN
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	turn_head UP
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	step_end

.GrowlingText:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "growling in a way"

	para "that sounds like"
	line "speech…"
	done

.NotMovingText:
	text "Your #MON"
	line "isn't moving."
	done

.SingingText:
	text "Your #MON"
	line "seems to be"
	cont "singing something?"
	done

AzaleaTownInteraction:
	opentext
	followcry
	writetext .AzaleaTownText
	closetext
	end

.AzaleaTownText:
	text "Your #MON"
	line "is hot and"
	cont "cheerful!"
	done

SlowPokeWellInteraction:
	opentext
	followcry
	writetext SeemsVeryHappyText
	closetext
	end

SlowPokeWellRocketInteraction:
	opentext
	followcry
	writetext .SlowPokeWellRocketText
	closetext
	end

.SlowPokeWellRocketText
	text "Your #MON"
	line "seems somehow"
	cont "unhappy."
	done

SlowPokeWellFireMonInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .SlowPokeFireMonText1
	closetext
	end

.interaction2
	writetext .SlowPokeFireMonText2
	closetext
	end

.SlowPokeFireMonText1:
	text "Your #MON"
	line "doesn't like"

	para "splashing around"
	line "on the ground."
	done

.SlowPokeFireMonText2
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "very unhappy to be"
	cont "wet…"
	done

SlowPokeWellWaterMonInteraction:
	opentext
	followcry
	writetext .SlowPokeWellWaterMonText
	closetext
	end

.SlowPokeWellWaterMonText
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "very happy and is"
	cont "jumping around!"
	done

IlexForestFarfetchdInteraction:
	opentext
	followcry
	writetext DancingHappilyText
	closetext
	end

IlexForestCelebiInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .Text1
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text1
	text "@"
	text_ram wStringBuffer1
	text " danced"
	line "happily!"
	done


.Text2
	text "@"
	text_ram wStringBuffer1
	text " danced"
	line "beautifully!"
	done

HeracrossInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "clinging to the"
	cont "tree!"
	done

Route36Interaction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "staying completely"
	cont "still…"

	para "It is imitating"
	line "a tree!"
	done

GoldenrodGymInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext SeemsVeryHappyText
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text2
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "waggling a finger"
	cont "and dancing!"
	done

RadioTowerElectricInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "to be getting an"

	para "electrifying"
	line "feeling!"
	done

RadioTowerGhostInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "feeling alert"

	para "because of"
	line "something…"
	done

NationalParkInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "a little excited."
	done

DanceTheaterPichuInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " danced"
	line "along with the"
	cont "Kimono Girls!"
	done

DanceTheaterBellossomInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text " danced"
	line "better than the"
	cont "Kimono Girls!"
	done

BurnedTowerLegendaryDogInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext ShookTheTowerText
	closetext
	end

.interaction2
	writetext HowledLoudlyText
	closetext
	end

BurnedTowerHoOhInteraction:
	opentext
	followcry
	writetext ShookTheTowerText
	closetext
	end

TinTowerInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext ShookTheTowerText
	closetext
	end

.interaction2
	writetext .LookingToSkyText
	closetext
	end

.LookingToSkyText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "looking to the sky"
	cont "and shouting!"
	done

Route39TaurosInteraction: ; Test this
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	line "suddenly roared!"
	done

Route39MiltankInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .Text1
	closetext
	end

.interaction2
	writetext SeemsVeryHappyText
	closetext
	end

.Text1
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "so happy, it"

	para "started rolling" 
	line "around."
	done

LighthouseInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text
	text "@"
	text_ram wStringBuffer1
	text ""
	line "sparkled in"

	para "concert with"
	line "Amphy!"
	done

CianwoodCityInteraction:
	opentext
	followcry
	writetext .Text1
	closetext
	end

.Text1
	text "@"
	text_ram wStringBuffer1
	text " moved"
	line "sideways!"
	done

PoliwagInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " swung"
	line "its belly around."
	done

WhirlIslandsLugiaInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " moved"
	line "its long body"

	para "and let out a"
	line "great big roar!"
	done

WhirlIslandsWaterMonInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "happy to be all"
	cont "wet!"
	done

Route42Interaction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "looking at the"

	para "mountain as if"
	line "anticipating"
	cont "climbing it."
	done

Route15DittoInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text: ; Test this
	text "…Oh? @'s"
	text_ram wStringBuffer1
	line "appearance… didn't"
	cont "change!"
	done

Route18FlyingInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "flying through the"
	cont "sky with grace!"
	done

LakeOfRageMagikarpInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "leaping around"
	cont "more than usual!"
	done

LakeOfRageGyradosInteraction:
	opentext
	followcry
	writetext HowledLoudlyText
	closetext
	end

TeamRocketBaseInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "trembling!"
	done

ColdIceMonInteraction:
	opentext
	followcry
	random 4
	ifequal 1, .interaction2
	ifequal 2, .interaction3
	ifequal 3, .interaction4
	writetext .ColdWindText
	closetext
	end

.interaction2
	writetext .CheerfulColdText
	closetext
	end

.interaction3
	writetext .CheeringHappyText
	closetext
	end

.interaction4
	writetext SeemsVeryHappyText
	closetext
	end

.ColdWindText
	text "Woah! A cold wind"
	line "suddenly blew!"

	para "And now it looks"
	line "happy?"
	done

.CheerfulColdText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "cheerful because"
	cont "of the cold!"
	done

.CheeringHappyText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "cheering happily"

	para "because of the"
	line "cold!"
	done

ColdGrassMonInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .Text1
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text1
	text "@"
	text_ram wStringBuffer1
	text " seems"
	line "unhappy about the"
	cont "cold…"
	done

.Text2
	text "@"
	text_ram wStringBuffer1
	text " made"
	line "its body slightly"
	cont "smaller,"

	para "because of the"
	line "cold…"
	done

DragonsDenInteraction: ; Test this
	opentext
	followcry
	random 5
	ifequal 1, .interaction2
	ifequal 2, .interaction3
	ifequal 3, .interaction4
	ifequal 4, .interaction5
	writetext .SuddenlyBarkedText
	closetext
	end

.interaction2
	writetext .LooksExcitedText
	closetext
	end

.interaction3
	writetext .SuddenlyHowled
	closetext
	end

.interaction4
	writetext .StaringText
	closetext
	end

.interaction5
	writetext .GrowlingText
	closetext
	end

.SuddenlyBarkedText
	text "@"
	text_ram wStringBuffer1
	line "suddenly barked!"
	done

.LooksExcitedText
	text "@"
	text_ram wStringBuffer1
	line "looks excited!"
	done

.SuddenlyHowled
	text "@"
	text_ram wStringBuffer1
	line "suddenly howled!"
	done

.StaringText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "staring into"
	cont "your eyes."
	done

.GrowlingText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "growling softly."
	done

VictoryRoadMeganiumInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " turned"
	line "its head and let"

	para "out a fighting"
	line "yell!"
	done

VictoryRoadTyphlosionInteraction: ; Test this
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	line "emmited fire"
	cont "and shouted!"
	done

VictoryRoadFeraligatrInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "swinging its arms"

	para "around and"
	line "shouting!"
	done

Route1Interaction: ; Test this
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .Text1
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text1:
	text "@"
	text_ram wStringBuffer1
	line "wiggled its vine!"
	done

.Text2:
	text "@"
	text_ram wStringBuffer1
	line "snapped its vine!"
	done


Route2CharmanderInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " flared"
	line "its fiery tail!"
	done

Route2PikachuInteraction:
	opentext
	followcry
	writetext DancingHappilyText
	closetext
	end

Route3Interaction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " fell"
	line "down and got a"
	cont "little frustrated!"
	done

MtMoonInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext .Text1
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text1:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "looking up at the"
	cont "sky!"
	done

.Text2
	text "@"
	text_ram wStringBuffer1
	line "suddenly started"
	cont "dancing!"
	done

PowerPlantPikachuInteraction:
	opentext
	followcry
	random 3
	ifequal 1, .interaction2
	ifequal 2, .interaction3
	writetext SeemsVeryHappyText
	closetext
	end

.interaction2
	writetext .HadFunDancingText
	closetext
	end

.interaction3
	writetext .IsSoHappyDanceText
	closetext
	end

.HadFunDancingText
	text "@"
	text_ram wStringBuffer1
	text " had"
	line "fun dancing a"
	cont "dance!"
	done

.IsSoHappyDanceText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "so happy,"
	cont "it began to dance!"
	done

RockTunnelOnixInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "happily digging"

	para "itself into the"
	line "ground!"
	done

RockTunnelRockMonInteraction:
	opentext
	followcry
	random 4
	ifequal 1, .interaction2
	ifequal 2, .interaction3
	ifequal 3, .interaction4
	writetext .RollingAroundText
	closetext
	end

.interaction2
	writetext .StartedGrindingText
	closetext
	end

.interaction3
	writetext .HittingRocksText
	closetext
	end

.interaction4
	writetext .PoundingGroundText
	closetext
	end

.RollingAroundText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "having fun"
	cont "rolling around!"
	done

.StartedGrindingText
	text "@"
	text_ram wStringBuffer1
	line "started grinding"
	cont "at the rocks!"
	done

.HittingRocksText
	text "@"
	text_ram wStringBuffer1
	text " is"
	line "having fun hitting"
	cont "rocks together!"
	done

.PoundingGroundText
	text "@"
	text_ram wStringBuffer1
	line "started pounding"
	cont "the ground flat!"
	done

DiglettsCaveInteraction:
	opentext
	followcry
	random 2
	iftrue .interaction2
	writetext SeemsVeryHappyText
	closetext
	end

.interaction2
	writetext .Text2
	closetext
	end

.Text2
	text "@"
	text_ram wStringBuffer1
	line "stretched out it's"

	para "body and is"
	line "relaxing!"
	done

MrPsychicsHouseInteraction: ; Test this
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "…… …… …… ……"
	line "…… …… …… ……"

	para "@"
	text_ram wStringBuffer1
	line "silently nodded!"
	done

CeladonCityPorygonInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	line "stammered"
	cont "something…"
	done

LavendarTownInteraction:
	opentext
	followcry
	writetext .Text
	closetext
	end

.Text:
	text "@"
	text_ram wStringBuffer1
	text " is "
	line "having fun"

	para "swaying back"
	line "and forth."
	done
