IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XA_Welcome
	SAY @0 /*~Welcome home, Captain.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	TimeOfDay(DAY)
	RandomNum(2,1)
~ THEN BEGIN XA_Welcome1
	SAY @1 /*~Good day.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	!TimeOfDay(DAY)
	RandomNum(2,1)
~ THEN BEGIN XA_Welcome2
	SAY @2 /*~Good evening.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(2,2)
	IsGabber(Player1)
~ THEN BEGIN XA_Welcome3
	SAY @3 /* ~No tolls are necessary, hero.~*/
	
	IF ~~ THEN EXIT

END

IF ~
	RandomNum(2,2)
	!IsGabber(Player1)
~ THEN BEGIN XA_Welcome3
	SAY @4 /*~I'm afraid I can't chat while on duty.~*/
	
	IF ~~ THEN EXIT

END