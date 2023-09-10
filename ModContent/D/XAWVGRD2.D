BEGIN ~XAWVGRD2~

IF ~
	TimeOfDay(NIGHT)
	IsGabber("XACORWIN")
~ THEN BEGIN XA_CorwinGreet1
	SAY @4 /* ~Good evening, officer.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!TimeOfDay(NIGHT)
	IsGabber("XACORWIN")
~ THEN BEGIN XA_CorwinGreet1
	SAY @3 /* ~Good day, officer.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(3,1)
~ THEN BEGIN XA_GetLost1
	SAY @0 /* ~I'm watching you. Don't try anything.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(3,2)
~ THEN BEGIN XA_GetLost2
	SAY @1/* ~I'm watching you. Don't try anything.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(3,3)
~ THEN BEGIN XA_GetLost3
	SAY @2 /* ~I'm watching you. Don't try anything.~*/
	
	IF ~~ THEN EXIT
END