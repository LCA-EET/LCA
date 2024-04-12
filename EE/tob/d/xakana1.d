BEGIN ~XAKANA1~

IF ~
	Global("XA_LC_VoiceSpawn", "GLOBAL", 1)
~ THEN BEGIN XA_Avernus
	SAY @14
	
	IF ~~ THEN REPLY @15
	GOTO XA_Avernus2
	
	IF ~~ THEN REPLY @16
	GOTO XA_Avernus2
END

IF ~~ THEN BEGIN XA_Avernus2
	SAY @17
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_VoiceSpawn", "GLOBAL", 2)
		SetGlobal("XA_LC_TowerUnlock", "GLOBAL", 1)
		DestroySelf()
	~
	EXIT
END

IF ~
	Global("XA_LC_KanaDream", "GLOBAL", 1)
~ THEN BEGIN XA_KanaDream_1_Intro
	SAY @0 /* ~<CHARNAME>...~ */
	
	= @1 /* ~I need your help. Something terrible has happened...~*/
	
	IF ~~ THEN REPLY @2 /* ~Am I dreaming?~*/
	DO ~
		SetGlobal("XA_LC_KanaDream", "GLOBAL", 2)
	~
	GOTO XA_KanaDream_1_2
	
	IF ~~ THEN REPLY @3 /* ~Who are you?~*/
	DO ~
		SetGlobal("XA_LC_KanaDream", "GLOBAL", 2)
	~
	GOTO XA_KanaDream_1_2
END

IF ~~ THEN BEGIN XA_KanaDream_1_2
	SAY @4 /* ~Only you can help me... together, we might be able to stop...~  */
	
	IF ~~ THEN REPLY @11 /* ~Stop who? Answer me!~*/
	GOTO XA_KanaDream_1_3
	
	IF ~~ THEN REPLY @13 /*~Tell me who you are!~ */
	GOTO XA_KanaDream_1_3
END

IF ~~ THEN BEGIN XA_KanaDream_1_3
	SAY @12 /*~...~  */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@5, INFO)
		StartCutSceneMode()
		StartCutScene("XADREAMX")
	~
	EXIT
END

IF ~
	Global("XA_LC_KanaDream", "GLOBAL", 3)
~ THEN BEGIN XA_KanaDream_2_Intro
	SAY @6 /* ~You must stop him, <CHARNAME>. I tried... but he was too powerful.~ */ 
	
	IF ~~ THEN REPLY @7 /* ~You again?~ */
	DO ~
		SetGlobal("XA_LC_KanaDream", "GLOBAL", 4)
	~
	GOTO XA_KanaDream_2_2
	
	IF ~~ THEN REPLY @8 /* ~Who is too strong? Who — where are you?~*/
	DO ~
		SetGlobal("XA_LC_KanaDream", "GLOBAL", 4)
	~
	GOTO XA_KanaDream_2_2
END

IF ~~ THEN BEGIN XA_KanaDream_2_2
	SAY @9 /* ~Go... go to Kanaglym... you must...~ */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@10, INFO)
		StartCutSceneMode()
		StartCutScene("XADREAMX")
	~
	EXIT
END