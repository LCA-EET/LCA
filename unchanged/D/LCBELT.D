BEGIN ~LCBELT~

IF ~
	Global("LCA_RohmaKidnapped", "GLOBAL", 5)
~ THEN BEGIN LCA_RohmaKidnapped
	SAY @0 /* ~Major, <CHARNAME>, be careful. From what I've heard of the Five, they are not to be taken lightly.~ */
	
	IF ~~ THEN EXIT
END
