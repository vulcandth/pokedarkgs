	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM
	const ROUTE14_EUSINE
	const ROUTE14_SUICUNE

Route14_MapScripts:
	def_scene_scripts
	scene_script Route14Noop1Script, SCENE_ROUTE14_NOOP
	scene_script Route14Noop2Script, SCENE_ROUTE14_SUICUNE_AND_EUSINE

	def_callbacks

Route14Noop1Script:
	end

Route14Noop2Script:
	end

Route14SuicuneScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	cry SUICUNE
	pause 20
	turnobject PLAYER, RIGHT
	playsound SFX_WARP_FROM
	applymovement ROUTE14_SUICUNE, Route14SuicuneSlideUpMovement
	applymovement PLAYER, Route14PlayerStepUpMovement
	playsound SFX_WARP_FROM
	applymovement ROUTE14_SUICUNE, Route14SuicuneRunAwayMovement
	disappear ROUTE14_SUICUNE
	appear ROUTE14_EUSINE
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	applymovement ROUTE14_EUSINE, Route14EusineRunUpMovement
	turnobject PLAYER, LEFT
	applymovement ROUTE14_EUSINE, Route14EusineWalkDownFacePlayerMovement
	opentext
	writetext Route14EusineText
	closetext
	applymovement ROUTE14_EUSINE, Route14EusineLeaveMovement
	disappear ROUTE14_EUSINE
	pause 20
	special FadeOutMusic
	special RestartMapMusic
	pause 10
	setscene SCENE_ROUTE14_NOOP
	clearevent EVENT_FOUGHT_SUICUNE_ON_ROUTE_25
	setmapscene ROUTE_25, SCENE_ROUTE25_SUICUNE_AND_EUSINE
	end

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

Route14SuicuneSlideUpMovement:
	set_sliding
	fast_jump_step UP
	remove_sliding
	step_end

Route14PlayerStepUpMovement:
	step UP
	step UP
	step_end

Route14SuicuneRunAwayMovement:
	set_sliding
	fast_jump_step UP
	fast_jump_step UP
	remove_sliding
	step_end

Route14EusineRunUpMovement:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

Route14EusineWalkDownFacePlayerMovement:
	step DOWN
	step RIGHT
	step_end

Route14EusineLeaveMovement:
	step LEFT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

PokefanmCarterSeenText:
	text "Let me tell you,"
	line "I had a hard time"

	para "catching my prized"
	line "#MON."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

PokefanmCarterAfterBattleText:
	text "SQUIRTLE, CHARMAN-"
	line "DER and BULBASAUR…"

	para "I think that's a"
	line "well-balanced mix."
	done

BirdKeeperRoySeenText:
	text "My dream is to fly"
	line "with my beloved"
	cont "bird #MON."
	done

BirdKeeperRoyBeatenText:
	text "I can dream, but I"
	line "can't ever fly…"
	done

BirdKeeperRoyAfterBattleText:
	text "You have #MON"
	line "that know the HM"

	para "move FLY, don't"
	line "you? I envy you."
	done

PokefanmTrevorSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"

	para "train them in a"
	line "place that they"
	cont "remember."
	done

PokefanmTrevorBeatenText:
	text "Where did I meet"
	line "this PSYDUCK?"
	done

PokefanmTrevorAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done

Route14EusineText:
	text "Eusine: <PLAYER>!"
	line "Not again!"

	para "I'll be there"
	line "first next time!"

	para "Having followed it"
	line "here, I'm starting"

	para "to understand what"
	line "SUICUNE is after."

	para "To be honest, I"
	line "would like to keep"

	para "this information"
	line "to myself."

	para "But I want to be"
	line "an honest Trainer"

	para "in front of"
	line "SUICUNE!"

	para "That's why I am"
	line "sharing a clue"
	cont "with you."

	para "It seems that…"
	line "SUICUNE prefers a"

	para "hilly place near"
	line "water…"
	cont "…Somewhere north."

	para "I don't know where"
	line "yet, but it will"

	para "be just you and"
	line "me!"

	para "Who'll find it"
	line "first? I challenge"
	cont "you!"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 16, 14, SCENE_ROUTE14_SUICUNE_AND_EUSINE, Route14SuicuneScript

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  6, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
	object_event 13, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_14_EUSINE
	object_event 19, 14, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_ON_ROUTE_14
