ParryPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue .WantsRematch
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .WantsRematch
	checktime DAY
	iftrue ParryFridayDay

.WantsRematch:
	checkflag ENGINE_MARILL_SWARM
	iftrue .AlreadySwarming
	farsjump ParryBattleWithMeScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump ParryHaventYouGottenToScript

.AlreadySwarming:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump ParryHurryScript

ParryPhoneCallerScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .Swarm
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue .Swarm
	farscall PhoneScript_Random2
	ifequal 0, ParryWantsBattle
	ifequal 1, ParryWantsBattle

.Swarm:
	farscall PhoneScript_Random2
	ifequal 0, ParryMarillSwarm
	farsjump Phone_GenericCall_Male

ParryFridayDay:
	setflag ENGINE_PARRY_FRIDAY_AFTERNOON

ParryWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	setflag ENGINE_PARRY_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ParryMarillSwarm: ; start swarm
	checkflag ENGINE_MARILL_SWARM
	iftrue ParryMarillAlreadySwarming
	setflag ENGINE_MARILL_SWARM
	getmonname STRING_BUFFER_4, MARILL
	swarm SWARM_MARILL, MOUNT_MORTAR_1F_OUTSIDE
	getlandmarkname STRING_BUFFER_5, LANDMARK_MT_MORTAR
	farsjump ParrySwarmScript

ParryMarillAlreadySwarming:
	farsjump Phone_GenericCall_Male
