BEGIN ~XALCHOOK~

//{ Sex 1 & 2
IF ~
	Global("XA_LC_SleepInn", "GLOBAL", 1)
~ THEN BEGIN XA_SleepInn
	SAY @2  /* ~(You and Schael eagerly step into the room, and make your way to the bed...)~*/
	
	// 0
	IF ~
		Gender(Player1, FEMALE)
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX01EX")
	~
	EXIT
	
	// 1
	IF ~
		Gender(Player1, FEMALE)
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX02EX")
	~
	EXIT
	
	// 2
	IF ~
		Gender(Player1, MALE)
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~
	THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX01EX")
	~
	EXIT
	
	// 3
	IF ~
		Gender(Player1, MALE)
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX02EX")
	~
	EXIT
END
//}



//{ Sex 3
IF ~
	Global("XA_LC_SleepBG", "GLOBAL", 1)
~ THEN BEGIN XA_SleepBG
	SAY @0  /* ~(You make your way to your room and get comfortable while you wait for Schael to arrive...)~ */
	
	IF ~~ THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("XAEX03EX")
	~
	EXIT
END

//}
