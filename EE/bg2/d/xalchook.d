BEGIN ~XALCHOOK~

//{ Sex 1 & 2
IF ~
	Global("XA_LC_SleepInn", "GLOBAL", 1)
~ THEN BEGIN XA_SleepInn
	SAY @2  /* ~(You and Schael eagerly step into the room, and make your way to the bed...)~*/
	
	IF ~
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX01EX")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX02EX")
	~
	EXIT
	
	IF ~
		Gender(Player1, MALE)
		OR(2)
			Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
			Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	THEN GOTO XA_NeedExplicitMod
END
//}



//{ Sex 3
IF ~
	Global("XA_LC_SleepBG", "GLOBAL", 1)
~ THEN BEGIN XA_SleepBG
	SAY @0  /* ~(You make your way to your room and get comfortable while you wait for Schael to arrive...)~ */
	
	IF ~
		Global("XA_LC_CorwinSex_3", "GLOBAL", 1)
	~
	THEN
	DO ~
		SetGlobal("XA_LC_SleepBG", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutScene("XAEX03EX")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_3", "GLOBAL", 1)
		Gender(Player1, MALE)
	~
	THEN GOTO XA_NeedExplicitMod
END

//}

//{ Explicit Mod Needed
IF ~~ THEN BEGIN XA_NeedExplicitMod
	SAY @1  /* ~(Install the LCA_Explicit mod to experience this content.)~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_SleepBG", "GLOBAL", 0)
		SetGlobal("XA_LC_SleepInn", "GLOBAL", 0)
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX01EX")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX02EX")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinSex_3", "GLOBAL", 1)
	~
	THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX03EX")
	~
	EXIT
END
//}