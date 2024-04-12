BEGIN ~XACAELAR~

IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_PC
	SAY @4 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	True()
~ THEN BEGIN XA_AskToJoin
	SAY @0 /* ~Yes?~*/
	
	IF ~~ THEN REPLY @1 /* ~I've need of your aid once again, Caelar.~*/
	GOTO XA_Join
	
	IF ~~ THEN REPLY @2 /* ~Nevermind.~*/
	EXIT
	
	IF ~~ THEN REPLY @3 /* ~This is where we part ways. Go home, Caelar.~*/
	GOTO XA_Bye
END

IF ~~ THEN BEGIN XA_Bye
	SAY @5 /*~Very well. Walk in the light, <CHARNAME>.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Join
	SAY @6  /* ~Then you shall have it. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACAESCR", OVERRIDE)
		SetGlobal("XA_LC_CaelarRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END