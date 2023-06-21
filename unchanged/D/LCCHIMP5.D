BEGIN ~LCCHIMP5~

IF ~  
	Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,1)
	!TimeOfDay(NIGHT)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Good day, Captain.~ */
  IF ~~ THEN EXIT
END

IF ~  
	Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,1)
	TimeOfDay(NIGHT)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Good day, Captain.~ */
  IF ~~ THEN EXIT
END

IF ~  
	Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY @1 /* ~Nothing unusual to report, Captain. If you're looking for Marshal Nederlok, he's upstairs in his office.~*/
  IF ~~ THEN EXIT
END

IF ~
	!Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,1)
~ THEN BEGIN 3
	SAY @2 /* ~Don't cause any trouble.~*/
	IF ~~ THEN EXIT
END

IF ~
	!Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,2)
	!TimeOfDay(NIGHT)
~ THEN BEGIN 4
	SAY @3 /* ~Good day to you.~*/
	IF ~~ THEN EXIT
END

IF ~
	!Name("LCCORWIN",LastTalkedToBy)
	RandomNum(2,2)
	TimeOfDay(NIGHT)
~ THEN BEGIN 4
	SAY @5 /* ~Good evening.~*/
	IF ~~ THEN EXIT
END