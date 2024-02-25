/* This change will only be made if the Cost of One Girl's Soul Mod is not installed */

ADD_TRANS_ACTION IDJINNI
BEGIN 12 END
BEGIN 0 END
~
	GiveItemCreate("XASTDAG",LastTalkedToBy(Myself),1,0,0)
	AddJournalEntry(@0, INFO)
~

EXTEND_BOTTOM XACORWIJ 134
	IF
	~
		OR(2)
			IsValidForPartyDialogue("L#2SDSKIE")
			IsValidForPartyDialogue("L#2EDDRD")
	~
	GOTO XA_BackToBG_SkieMod
END

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_BackToBG_SkieMod
		SAY @0 /* ~Are you staying, or coming with us?~ */
		
		IF ~~ THEN
		GOTO XA_BackToBG_SkieModEnd
	END
	
	IF ~~ THEN BEGIN XA_BackToBG_SkieModEnd
		SAY @1  /* ~<CHARNAME> — Take a few minutes to gather your belongings. Come and talk to me when you're ready to leave.~ */
		
		IF ~~ THEN
		EXIT
	END
END
