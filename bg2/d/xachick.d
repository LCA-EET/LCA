BEGIN ~XACHICK~

IF ~
	RandomNum(3,1)
~ THEN BEGIN XA_Intro1
	SAY @0
	
	IF ~~ THEN
	GOTO XA_TakeChicken
END

IF ~
	RandomNum(3,2)
~ THEN BEGIN XA_Intro2
	SAY @1
	
	IF ~~ THEN
	GOTO XA_TakeChicken
END

IF ~
	RandomNum(3,3)
~ THEN BEGIN XA_Intro3
	SAY @2
	
	IF ~~ THEN
	GOTO XA_TakeChicken
END

IF ~~ THEN BEGIN XA_TakeChicken
	SAY @3 /* ~(Take the hen with you?)~ */
	
	IF ~~ THEN REPLY @4 /*~Yes.~*/
	DO ~
		GiveItemCreate("XACHICK", LastTalkedToBy(Myself),1,0,0)
		SetGlobal("XA_PickUpGoose", "GLOBAL", 1)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACHICK", IDENTIFIED,TRUE))
		DestroySelf()
	~
	EXIT
	
	IF ~~ THEN REPLY @5 /*~No.~*/
	EXIT
END