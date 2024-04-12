BEGIN ~XABRANDI~

IF ~
	IsGabber(Player1)
	GlobalLT("XA_LC_Intro", "LOCALS", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /* ~Ah, <CHARNAME>, it's good to see you again.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Intro", "LOCALS", 1)
	~
	GOTO XA_Welcome
END

IF ~
	True()
~ THEN BEGIN XA_Welcome
	SAY @1 /* ~Welcome to the Merchants' League. May your stay be a profitable one.~*/
	
	IF ~~ THEN EXIT
END