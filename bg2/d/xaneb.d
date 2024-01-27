BEGIN ~XANEB~

IF ~~ THEN BEGIN XA_XANEB_2
	SAY @1 /*~You look familiar... yes... Captain Corwin, is it? You had me arrested just before I could introduce myself to your sweet, precious little daughter.~*/
	
	= @2 /*~I don't know how you found me, but I promise that when I'm done with you, I'll be sure to pay her a visit!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NebRohma", "GLOBAL", 1)
		SetGlobal("XA_NebFight", "GLOBAL", 1)
		Enemy()
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	DO ~
		SetGlobal("XA_NebRohma", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_XANebFight
END