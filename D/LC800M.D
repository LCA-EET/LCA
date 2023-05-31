BEGIN ~LC800M~

IF ~
	!Global("LCA_800MW", "GLOBAL", 1)
~ THEN BEGIN LCA_Intro
	SAY @0 /* ~'Ey there. Did you hear the news? Another disappearance over at Elfsong.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_800MW", "GLOBAL", 1)
	~
	EXTERN LC800W LCA_END
END

IF ~~ THEN BEGIN LCA_End
	SAY @1 /* ~They say Alyth thinks one of the paintings in her tavern's haunted! Could you believe that?~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@2, INFO)
		EscapeArea()
		ActionOverride("LC800W", EscapeArea())
	~
	EXIT
END