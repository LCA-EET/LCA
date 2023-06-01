BEGIN ~LCALYTH~

IF ~
	!Global("LCA_AlythIntro", "LOCALS", 1)
~ THEN BEGIN LCA_AlythIntro
	SAY @0 /* ~Ah, the hero of Baldur's Gate returns, and not a moment too soon.~ */
	
	IF ~~ THEN REPLY @1 /* ~Hello, Alyth.~ */
	DO ~
		SetGlobal("LCA_AlythIntro", "LOCALS", 1)
	~
	GOTO LCA_Problem
	
	IF ~~ THEN REPLY @2 /* ~What seems to be the problem?~ */
	DO ~
		SetGlobal("LCA_AlythIntro", "LOCALS", 1)
	~
	GOTO LCA_Problem
	
	IF ~
		Global("LCA_800MW", "GLOBAL", 1)
	~ THEN REPLY @3 
	DO ~
		SetGlobal("LCA_AlythIntro", "LOCALS", 1)
	~
	GOTO LCA_Problem
	
	IF ~~ THEN REPLY @10 /* ~Whatever it is, I'm not interested.~ */
	EXIT
END

IF ~
	Global("LCA_AlythIntro", "LOCALS", 1)
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