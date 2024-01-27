BEGIN ~XAKENT~

IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XAA0
	SAY @1 /* ~Be careful, Captain.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN BEGIN XAA1
	SAY @0 /* ~Tread carefully.~*/
	
	IF ~~ THEN EXIT
END