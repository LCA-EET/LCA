BEGIN ~XACAELAP~

IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_PC
	SAY @6 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_CaelarJoined", "LOCALS", 1)
	!Global("XA_AskedToRejoin", "LOCALS", 1)
	!ReputationLT(Player1,7)
~ THEN BEGIN XA_AskToRejoin
	SAY @0 /* ~Are you sure that you do not require my aid for the battles ahead?~*/
	
	IF ~~ THEN REPLY @1 /* ~I'm sure.~*/
	GOTO XA_Bye
	
	IF ~~ THEN REPLY @2 /* ~Wait here. I will come for you later.~*/
	DO ~
		SetGlobal("XA_AskedToRejoin", "LOCALS", 1)
	~
	GOTO XA_Wait
	
	IF ~~ THEN REPLY @3 /* ~Your assistance would be most welcome, Caelar.~*/
	DO ~
		ChangeAIScript("XACAESCR", OVERRIDE)
		SetGlobal("XA_CaelarRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	True()
~ THEN BEGIN XA_AskToJoin
	SAY @7 /* ~Yes?~*/
	
	IF ~~ THEN REPLY @8 /* ~I've need of your aid once again, Caelar.~*/
	GOTO XA_Join
	
	IF ~~ THEN REPLY @9 /* ~Nevermind.~*/
	EXIT
	
	IF ~~ THEN REPLY @10 /* ~This is where we part ways. Go home, Caelar.~*/
	GOTO XA_Bye
END

IF ~~ THEN BEGIN XA_Wait
	SAY @4  /* ~Understood.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_Bye
	SAY @11 /* ~Very well. Walk in the light, <CHARNAME>.~*/
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Join
	SAY @12  /* ~Then you shall have it. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACAESCR", OVERRIDE)
		SetGlobal("XA_CaelarRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END