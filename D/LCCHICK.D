BEGIN ~LCCHICK~

IF ~
	RandomNum(3,1)
~ THEN BEGIN LCA_Intro1
	SAY @0
	
	IF ~~ THEN
	GOTO LCA_TakeChicken
END

IF ~
	RandomNum(3,2)
~ THEN BEGIN LCA_Intro2
	SAY @1
	
	IF ~~ THEN
	GOTO LCA_TakeChicken
END

IF ~
	RandomNum(3,3)
~ THEN BEGIN LCA_Intro3
	SAY @2
	
	IF ~~ THEN
	GOTO LCA_TakeChicken
END

IF ~~ THEN BEGIN LCA_TakeChicken
	SAY @3 /* ~(Take the hen with you?)~ */
	
	IF ~~ THEN REPLY @4 /*~Yes.~*/
	DO ~
		GiveItemCreate("LCCHICK", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCCHICK", IDENTIFIED,TRUE))
		DestroySelf()
	~
	EXIT
	
	IF ~~ THEN REPLY @5 /*~No.~*/
	EXIT
END