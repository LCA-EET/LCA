BEGIN ~XATIMOTY~

IF ~
	GlobalLT("XA_LC_SavedTimotey", "GLOBAL", 1)
	CombatCounter(0)
~ THEN BEGIN XA_Intro
	SAY @0 /*~Hey, Percy, look what I ... wait ... who're you?~*/
	
	IF ~~ THEN REPLY @1 /*~I'm <GABBER>. You must be Timotey. Your mother sent me to rescue you from the basilisk. How are you feeling?~*/
	GOTO XA_HowAreYou
END

IF ~~ THEN BEGIN XA_HowAreYou
	SAY @2 /*~Uhh... I feel okay, I guess. I was playing with my brother, and I found this. I think... uh, I think you better take it.~*/
	
	IF ~~ THEN
	DO ~
		GiveItemCreate("xabasfig", Player1, 1,1,1)
	~
	GOTO XA_GoHome	
END

IF ~~ THEN BEGIN XA_GoHome
	SAY @3 /* ~Can I go home now?~*/

	IF ~~ THEN REPLY @4 /*~Yes. Your mother and brother are waiting for you outside. Let's go.~*/
	DO ~
		SetGlobal("XA_LC_SavedTimotey", "GLOBAL", 1)
	~
	EXIT
END