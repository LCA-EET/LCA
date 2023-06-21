BEGIN ~LCKENT~

IF ~
	IsGabber("LCCORWIN")
~ THEN BEGIN LCA0
	SAY @1 /* ~Be careful, Captain.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN BEGIN LCA1
	SAY @0 /* ~Tread carefully.~*/
	
	IF ~~ THEN EXIT
END