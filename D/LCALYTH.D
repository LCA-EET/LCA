BEGIN ~LCALYTH~

IF ~
	Global("LCA_SavedElfsong", "GLOBAL", 1)
~ THEN BEGIN LCA_SavedElfsong
	SAY @29 /* ~Please, make yourselves at home my friends. You are always welcome in the Elfsong.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	Global("LCA_SavedLyriel", "GLOBAL", 1)
~ THEN BEGIN LCA_LyrielSaved
	SAY @21 /* ~Are my ears deceiving me?~*/
	
	= @22 /* ~I can hear her singing! Our maiden has returned!~ */
	
	IF ~~ THEN REPLY @23 /* ~(Tell her what happened.)~*/
	GOTO LCA_TellWhatHappened
END

IF ~
	Global("LCA_ExitPrison", "GLOBAL", 1)
~ THEN BEGIN LCA_ExitPrison
	SAY @37 /* ~Oh, thank goodness you've returned! I heard a commotion upstairs, and when I went to check on you, you were gone!~ */
	
	IF ~~ THEN REPLY @23 /* ~(Tell her what happened.)~*/
	GOTO LCA_TellWhatHappened
END


IF ~~ THEN BEGIN LCA_TellWhatHappened
	SAY @24 /* ~It all makes sense now. I procured that painting just before all of these problems started.~ */
	
	= @25 /* ~Thank you, hero... were you able to find out what happened to the missing patrons?~ */
	
	IF ~
		!Global("LCA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~Unfortunately, no. They were likely killed by the Incubus, or one of his creations.~*/
	GOTO LCA_WhatHappened
	
	IF ~
		Global("LCA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @31 /* ~Sufficeth to say, they won't be returning.~ */
	GOTO LCA_WhatHappened
	
	IF ~
		Global("LCA_AskedAboutPatrons", "GLOBAL", 1)
	~ THEN REPLY @30 /* ~They were turned into dopplegangers by the Incubus' foul magic. I had no choice but to destroy them.~ */
	GOTO LCA_WhatHappened
END

IF ~~ THEN BEGIN LCA_WhatHappened
	SAY @27 /* ~That is very unfortunate... though at least no one else will be harmed. I will set up a memorial in their honor.~ */
	
	IF ~~ THEN 
	GOTO LCA_End2
	
	IF ~
		Global("LCA_SavedLyriel", "GLOBAL", 1)
	~ THEN GOTO LCA_End1
END

IF ~~ THEN BEGIN LCA_End2
	SAY @38 /* ~Since it's warded, I don't know how we'll rid ourselves of the painting... I think I'll have one of the local builders seal it off from the rest of the dining hall. That should keep us safe, at least until I can find a wizard strong enough to defeat the wards and destroy the painting for good.~*/
	
	= @39 /*  ~You may have just saved my business and livelihood. Most importantly, you have made this place safe again for my clients. I wish I could do more to reward you, but I spent the last of my funds trying to keep this place open. Just know that you will always be welcome here at the Elfsong, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @35 /* ~Thank you.~ */
	DO ~
		SetGlobal("LCA_SavedElfsong", "GLOBAL", 1)
		ReputationInc(1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_End1
	SAY @33 /* ~You, hero, have saved my business, my livelihood, and our maiden. Most importantly, you have made this place safe again for my clients.~ */
	
	= @32 /* ~I don't have much in the way of a reward for you, unfortunately. One of the patrons that went missing left me a magical girdle as payment on an old debt. I want you to have it.*/
	
	IF ~~ THEN REPLY @35 /* ~Thank you.~ */
	DO ~
		ReputationInc(2)
	~
	GOTO LCA_ThankYou
END

IF ~~ THEN BEGIN LCA_ThankYou
	SAY @36 /* ~You will always be welcome here at the Elfsong, <CHARNAME>.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_SavedElfsong", "GLOBAL", 1)
	~	
	EXIT
END

IF ~
	!Global("LCA_AlythIntro", "GLOBAL", 1)
~ THEN BEGIN LCA_AlythIntro
	SAY @0 /* ~Ah, the hero of Baldur's Gate returns, and not a moment too soon.~ */
	
	IF ~~ THEN REPLY @1 /* ~Hello, Alyth.~ */
	DO ~
		SetGlobal("LCA_AlythIntro", "GLOBAL", 1)
	~
	GOTO LCA_Problem
	
	IF ~~ THEN REPLY @2 /* ~What seems to be the problem?~ */
	DO ~
		SetGlobal("LCA_AlythIntro", "GLOBAL", 1)
	~
	GOTO LCA_Problem
	
	IF ~
		Global("LCA_800MW", "GLOBAL", 1)
	~ THEN REPLY @3 
	DO ~
		SetGlobal("LCA_AlythIntro", "GLOBAL", 1)
	~
	GOTO LCA_Problem
	
	IF ~~ THEN REPLY @10 /* ~Whatever it is, I'm not interested.~ */
	EXIT
END

IF ~
	Global("LCA_AlythIntro", "GLOBAL", 1)
	GlobalLT("LCA_HelpAlyth", "GLOBAL", 1)
~ THEN BEGIN LCA_Intro2
	SAY @17 /* ~Have you reconsidered? If there's any help you can provide, I'd greatly appreciate it.~ */
	
	IF ~
		!Global("LCA_WhatProblem", "LOCALS", 1)
	~ THEN REPLY @16 /* ~What was the problem again?~*/
	DO ~
		SetGlobal("LCA_WhatProblem", "LOCALS", 1)
	~
	GOTO LCA_Problem
	
	IF ~~ THEN REPLY @18 /* ~Yes — may I begin the investigation of the second floor?~ */
	GOTO LCA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @19 /* ~Not right now.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_Problem
	SAY @4 /* ~You know the reason why this tavern is called the Elfsong, yes? Up until some months ago, we would be blessed by a strange phantom voice — the voice of an elvish maiden, lamenting a lost love drowned at sea.~*/
	
	= @5 /* ~It's been many months since we've heard that sweet, somber voice. The loss of our maiden pales in comparison, however, to the disappearances of our patrons.~ */
	
	IF ~~ THEN REPLY @6 /* ~How many have been lost?~ */
	GOTO LCA_HowMany
	
	IF ~~ THEN REPLY @11 /* ~What do you mean, disappearances?~ */
	GOTO LCA_Disappearances
END

IF ~~ THEN BEGIN LCA_HowMany
	SAY @7 /* ~Three thus far. The only thing they seem to have had in common is that they were staying on the second floor.~ */
	
	IF ~~ THEN
	GOTO LCA_Investigation
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN
	EXTERN LCCORWIJ LCA_AlythReport
	
END

IF ~~ THEN BEGIN LCA_Disappearances
	SAY @12 /* ~I mean exactly that. No body, no evidence of foul play. It's as though they just vanished.~ */
	
	IF ~~ THEN
	GOTO LCA_Investigation
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN
	EXTERN LCCORWIJ LCA_AlythReport
END

IF ~~ THEN BEGIN LCA_Investigation
	SAY @12 /* ~The Flaming Fist performed an investigation, but to no avail. Until the matter can be resolved, I've stopped our remaining patrons from going upstairs.~ */
	
	IF ~~ THEN REPLY @8 /* ~A wise precaution. May I investigate?~ */
	GOTO LCA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @15 /* ~I'd like to help, but I don't have the time right now.~ */
	GOTO LCA_CantHelpNow
END

IF ~~ THEN BEGIN LCA_CantHelpNow
	SAY @20 /* ~I understand... you must be tired from your journey. If you have a change of heart, please see me.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_ReportToFF
	SAY @14 /* ~I did, Captain. They performed an investigation, but to no avail. Until the matter can be resolved, I've stopped our remaining patrons from going upstairs.~ */
	
	IF ~~ THEN REPLY @8 /* ~A wise precaution. May I investigate?~ */
	GOTO LCA_AgreeToInvestigate
	
	IF ~~ THEN REPLY @15 /* ~I'd like to help, but I don't have the time right now.~ */
	GOTO LCA_CantHelpNow
END

IF ~~ THEN BEGIN LCA_AgreeToInvestigate
	SAY @9 /* ~Of course, but please be careful. The Elfsong can ill afford to be known as the tavern where the hero of Baldur's Gate disappeared.~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_HelpAlyth", "GLOBAL", 1)
	~
	EXIT
END

