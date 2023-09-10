BEGIN ~XABELT~

IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 5)
~ THEN BEGIN XA_RohmaKidnapped
	SAY @0 /* ~Major, <CHARNAME>, be careful. From what I've heard of the Five, they are not to be taken lightly.~ */
	
	IF ~~ THEN EXIT
END
