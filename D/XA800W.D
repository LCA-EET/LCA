BEGIN ~XA800W~

IF ~
	Global("XA_SavedElfsong", "GLOBAL", 1)
	!Global("XA_800MW", "GLOBAL", 1)
~ THEN BEGIN XA_GoodDay
	SAY @3 /* @3 = ~'Ey there. Did you hear the news? Elfsong's back in business.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_800MW", "GLOBAL", 1)
	~
	EXTERN XA800M XA_End2
END

IF ~
	!Global("XA_800MW", "GLOBAL", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /* ~'Ey there. Did you hear the news? Another disappearance over at Elfsong.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_800MW", "GLOBAL", 1)
	~
	EXTERN XA800M XA_End
END

IF ~~ THEN BEGIN XA_End
	SAY @1 /* ~They say Alyth thinks one of the paintings in her tavern's haunted! Could you believe that?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_ElfsongGossip", "GLOBAL", 1)
		EscapeArea()
		ActionOverride("XA800M", EscapeArea())
	~
	EXIT
END

IF ~~ THEN BEGIN XA_End2
	SAY @4 /* ~Is that so? Let's go see for ourselves.~*/
	
	IF ~~ THEN
	DO ~
		EscapeArea()
		ActionOverride("XA800M", EscapeArea())
	~
	EXIT
END