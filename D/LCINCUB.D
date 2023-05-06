BEGIN ~LCINCUB~

IF ~
	Global("LCA_CompletedG1", "GLOBAL", 1)
~ THEN BEGIN LCA_CompletedG1
	SAY @0 /* ~Hm. Well done.~ */
	
	IF ~
		GlobalLT("LCA_MetIncubus", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_MetIncubus", "GLOBAL", 1)
		SetGlobal("LCA_CompletedG1", "GLOBAL", 2)
	~
	GOTO LCA_FirstMeeting
	
	
END

IF ~~ THEN LCA_FirstMeeting
	SAY @18 /*~Welcome, <CHARNAME>.~*/

	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	GOTO LCA_HaveSomethingDemonWants_Party
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	GOTO LCA_HaveSomethingDemonWants
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @2 /* ~You must be the demon Lyriel told me about.~*/
	GOTO LCA_HaveSomethingDemonWants_Party
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @2 /*~You must be the demon Lyriel told me about.~ */
	GOTO LCA_HaveSomethingDemonWants
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @3 /* ~Release me and my companions from this prison!~*/
	GOTO LCA_HaveSomethingDemonWants_Party
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @3 /*~Release me and my companions from this prison!~ */
	GOTO LCA_HaveSomethingDemonWants
END

IF ~~ THEN BEGIN LCA_HaveSomethingDemonWants
	SAY @5 /*~You have something I want. Give it to me, and you shall have your freedom.~*/
END

IF ~~ THEN BEGIN LCA_HaveSomethingDemonWants_Party
	SAY @6 /*~You have something I want. Give it to me, and you and your companions shall have your freedom.~*/
END

