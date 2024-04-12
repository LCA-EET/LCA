BEGIN ~XASAREVO~

IF ~
	Global("XA_LC_G2_Intro", "GLOBAL", 4)
~ THEN BEGIN XA_Intro
	SAY @2 /* ~Any final words?~ */
	
	IF ~~ THEN REPLY @3 /* ~Sarevok!?~ */
	GOTO XA_Execute
	
	IF ~~ THEN REPLY @5 /* ~This is a mistake! Citizens, listen! Sarevok and his lackeys are responsible for those murders, not me!~ */
	GOTO XA_Execute
	
	IF ~~ THEN REPLY @7 /* ~What the hells is this?~ */
	GOTO XA_Execute
END

IF ~~ THEN BEGIN XA_Execute
	SAY @6 /* ~Executioner! Carry out the sentence!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XACSG2B")
	~
	EXIT
END