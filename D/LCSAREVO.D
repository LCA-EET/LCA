BEGIN ~LCSAREVO~

IF ~
	Global("LCA_G2Init", "GLOBAL", 2)
~ THEN BEGIN LCA_Intro
	SAY @2 /* ~Any final words?~ */
	
	IF ~~ THEN REPLY @3 /* ~Sarevok!?~ */
	GOTO LCA_Execute
	
	IF ~~ THEN REPLY @5 /* ~This is a mistake! Citizens, listen! Sarevok and his lackeys are responsible for those murders, not me!~ */
	GOTO LCA_Execute
	
	IF ~~ THEN REPLY @7 /* ~What the hells is this?~ */
	GOTO LCA_Execute
END

IF ~~ THEN BEGIN LCA_Execute
	SAY @6 /* ~Executioner! Carry out the sentence!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCCSG2B")
	~
	EXIT
END