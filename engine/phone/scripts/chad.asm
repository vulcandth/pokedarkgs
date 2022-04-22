ChadPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue .NotFriday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checktime MORN
	iftrue ChadFridayMorning

.NotFriday:
	checkflag ENGINE_SNUBBULL_SWARM
	iftrue .AlreadySwarming
	farsjump ChadHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump ChadReminderScript

.AlreadySwarming:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump ChadHurryScript

ChadPhoneCallerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal 0, ChadOakGossip
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .Swarm
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue .Swarm
	farscall PhoneScript_Random2
	ifequal 0, ChadWantsBattle

.Swarm:
	farscall PhoneScript_Random2
	ifequal 0, ChadSnubbullSwarm
	farscall PhoneScript_Random3
	ifequal 0, ChadFoundRare
	farsjump Phone_GenericCall_Male

ChadFridayMorning:
	setflag ENGINE_CHAD_FRIDAY_MORNING

ChadWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	setflag ENGINE_CHAD_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

ChadSnubbullSwarm: ; start swarm
	checkflag ENGINE_SNUBBULL_SWARM
	iftrue ChadSnubbullAlreadySwarming
	setflag ENGINE_SNUBBULL_SWARM
	getmonname STRING_BUFFER_4, SNUBBULL
	swarm SWARM_SNUBBULL, ROUTE_38
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump ChadSwarmScript

ChadFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male

ChadSnubbullAlreadySwarming:
	farsjump Phone_GenericCall_Male

ChadOakGossip:
	farsjump ChadOakGossipScript
