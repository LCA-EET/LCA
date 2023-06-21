BEGIN ~XAALYTH~

IF ~
	Global("XA_SavedElfsong", "GLOBAL", 1)
~ THEN BEGIN XA_SavedElfsong
	SAY @29 /* ~Please, make yourselves at home my friends. You are always welcome in the Elfsong.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	GlobalGT("XA_SavedLyriel", "GLOBAL", 0)
~ THEN BEGIN XA_LyrielSaved
	SAY @21 /* ~Are my ears deceiving me?~*/
	
	= @22 /* ~I can hear her singing! Our maiden has returned!~ */
	
	IF ~~ THEN REPLY @23 /* ~(Tell her what happened.)~*/
	GOTO XA_TellWhatHappened
END

IF ~
	Global("XA_ExitPrison", "GLOBAL", 1)
~ THEN BEGIN XA_ExitPrison
	SAY @37 /* ~Oh, thank goodness you've returned! I heard a commotion upstairs, and when I went to check on you, you were gone!~ */
	
	IF ~~ THEN REPLY @23 /* ~(Tell her what happened.)~*/
	GOTO XA_TellWhatHappened
END


IF ~~ THEN BEGIN XA_TellWhatHappened
	SAY @24 /* ~It all makes sense now. I procured that painting just before all of these problems started.~ */
	
	= @25 /* ~Thank you, hero... were you able to find out what happened to the missing patrons?~ */
	
	IF ~
		!Global("XA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~Unfortunately, no. They were likely killed by the Incubus, or one of his creations.~*/
	GOTO XA_WhatHappened
	
	IF ~
		Global("XA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @31 /* ~Sufficeth to say, they won't be returning.~ */
	GOTO XA_WhatHappened
	
	IF ~
		Global("XA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @30 /* ~They were turned into dopplegangers by the Incubus' foul magic. I had no choice but to destroy them.~ */
	GOTO XA_WhatHappened
END

IF ~~ THEN BEGIN XA_WhatHappened
	SAY @27 /* ~That is very unfortunate... though at least no one else will be harmed. I will set up a memorial in their honor.~ */
	
	IF ~~ THEN 
	GOTO XA_End2
	
	IF ~
		GlobalGT("XA_SavedLyriel", "GLOBAL", 0)
	~ THEN GOTO XA_End1
END

IF ~~ THEN BEGIN XA_End2
	SAY @38 /* ~Since it's warded, I don't know how we'll rid ourselves of the painting... I think I'll have one of the local builders seal it off from the rest of the dining hall. That should keep us safe, at least until I can find a wizard strong enough to defeat the wards and destroy the painting for good.~*/
	
	IF ~~ THEN REPLY @40 /* ~That seems foolish. Destroy the wards, and the demon within may escape.~ */
	GOTO XA_End2A
	
	IF ~~ THEN REPLY @41 /* ~(Remain silent.)~*/
	GOTO XA_End3
END

IF ~~ THEN BEGIN XA_End2A
	SAY @42 /* ~Hm. You may be right. It would be better, on second thought, to seal off that section of the dining hall.~ */
	
	IF ~~ THEN GOTO XA_End3
END

IF ~~ THEN BEGIN XA_End3
	SAY @39 /*  ~You may have just saved my business and livelihood. Most importantly, you have made this place safe again for my clients. I wish I could do more to reward you, but I spent the last of my funds trying to keep this place open. Just know that you will always be welcome here at the Elfsong, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @35 /* ~Thank you.~ */
	DO ~
		SetGlobal("XA_SavedElfsong", "GLOBAL", 1)
		ReputationInc(1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_End1
	SAY @33 /* ~You, hero, have saved my business, my livelihood, and our maiden. Most importantly, you have made this place safe again for my clients.~ */
	
	= @32 /* ~I don't have much in the way of a reward for you, unfortunately. One of the patrons that went missing left me a magical girdle as payment on an old debt. I want you to have it.*/
	
	IF ~~ THEN REPLY @35 /* ~Thank you.~ */
	DO ~
		GiveItemCreate("BDBELT13", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("BDBELT13", IDENTIFIED,TRUE))
		ReputationInc(2)
	~
	GOTO XA_ThankYou
END

IF ~~ THEN BEGIN XA_ThankYou
	SAY @36 /* ~You will always be welcome here at the Elfsong, <CHARNAME>.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_SavedElfsong", "GLOBAL", 1)
	~	
	EXIT
END

IF ~
	!Global("XA_AlythIntro", "GLOBAL", 1)
~ THEN BEGIN XA_AlythIntro
	SAY @0 /* ~Ah, the hero of Baldur's Gate returns, and not a moment too soon.~ */
	
	IF ~~ THEN REPLY @1 /* ~Hello, Alyth.~ */
	DO ~
		SetGlobal("XA_AlythIntro", "GLOBAL", 1)
	~
	GOTO XA_Problem
	
	IF ~~ THEN REPLY @2 /* ~What seems to be the problem?~ */
	DO ~
		SetGlobal("XA_AlythIntro", "GLOBAL", 1)
	~
	GOTO XA_Problem
	
	IF ~
		Global("XA_800MW", "GLOBAL", 1)
	~ THEN REPLY @3 
	DO ~
		SetGlobal("XA_AlythIntro", "GLOBAL", 1)
	~
	GOTO XA_Problem
	
	IF ~~ THEN REPLY @10 /* ~Whatever it is, I'm not interested.~ */
	EXIT
END

IF ~
	Global("XA_AlythIntro", "GLOBAL", 1)
	GlobalLT("XA_HelpAlyth", "GLOBAL", 1)
~ THEN BEGIN XA_Intro2
	SAY @17 /* ~Have you reconsidered? If there's any help you can provide, I'd greatly appreciate it.~ */
	
	IF ~
		!Global("XA_WhatProblem", "LOCALS", 1)
	~ THEN REPLY @16 /* ~What was the problem again?~*/
	DO ~
		SetGlobal("XA_WhatProblem", "LOCALS", 1)
	~
	GOTO XA_Problem
	
	IF ~~ THEN REPLY @18 /* ~Yes — may I begin the investigation of the second floor?~ */
	GOTO XA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @19 /* ~Not right now.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_Problem
	SAY @4 /* ~You know the reason why this tavern is called the Elfsong, yes? Up until some months ago, we would be blessed by a strange phantom voice — the voice of an elvish maiden, lamenting a lost love drowned at sea.~*/
	
	= @5 /* ~It's been many months since we've heard that sweet, somber voice. The loss of our maiden pales in comparison, however, to the disappearances of our patrons.~ */
	
	IF ~~ THEN REPLY @6 /* ~How many have been lost?~ */
	GOTO XA_HowMany
	
	IF ~~ THEN REPLY @11 /* ~What do you mean, disappearances?~ */
	GOTO XA_Disappearances
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @7 /* ~Three thus far. The only thing they seem to have had in common is that they were staying on the second floor.~ */
	
	IF ~~ THEN
	GOTO XA_Investigation
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	EXTERN XACORWIJ XA_AlythReport
	
END

IF ~~ THEN BEGIN XA_Disappearances
	SAY @12 /* ~I mean exactly that. No body, no evidence of foul play. It's as though they just vanished.~ */
	
	IF ~~ THEN
	GOTO XA_Investigation
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	EXTERN XACORWIJ XA_AlythReport
END

IF ~~ THEN BEGIN XA_Investigation
	SAY @12 /* ~The Flaming Fist performed an investigation, but to no avail. Until the matter can be resolved, I've stopped our remaining patrons from going upstairs.~ */
	
	IF ~~ THEN REPLY @8 /* ~A wise precaution. May I investigate?~ */
	GOTO XA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @15 /* ~I'd like to help, but I don't have the time right now.~ */
	GOTO XA_CantHelpNow
END

IF ~~ THEN BEGIN XA_CantHelpNow
	SAY @20 /* ~I understand... you must be tired from your journey. If you have a change of heart, please see me.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_ReportToFF
	SAY @14 /* ~I did, Captain. They performed an investigation, but to no avail. Until the matter can be resolved, I've stopped our remaining patrons from going upstairs.~ */
	
	IF ~~ THEN REPLY @8 /* ~A wise precaution. May I investigate?~ */
	GOTO XA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @15 /* ~I'd like to help, but I don't have the time right now.~ */
	GOTO XA_CantHelpNow
END

IF ~~ THEN BEGIN XA_AgreeToInvestigate
	SAY @9 /* ~Of course, but please be careful. The Elfsong can ill afford to be known as the tavern where the hero of Baldur's Gate disappeared.~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_HelpAlyth", "GLOBAL", 1)
	~
	EXIT
END

