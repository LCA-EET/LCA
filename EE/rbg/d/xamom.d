BEGIN ~XAMOM~

IF ~
	GlobalLT("XA_LC_HelpMother", "GLOBAL", 1)
~ THEN BEGIN XA_Intro
	SAY @0/*~Oh thank goodness, an adventurer! Please! You need to help my son!~ */
	
	IF ~~ THEN REPLY @1 /* ~Calm down and tell me what's wrong.~*/
	GOTO XA_WhatsWrong
	
	IF ~~ THEN REPLY @2 /* ~What's the problem?~*/
	GOTO XA_WhatsWrong
	
	IF ~~ THEN REPLY @3 /* ~Back off lady, I don't have the time for you.~*/
	EXIT
END

IF ~
	Global("XA_LC_HelpMother", "GLOBAL", 1)
~ THEN BEGIN XA_SaveTim
	SAY @12 /* ~Please, you must save my Timotey!~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_WhatsWrong
	SAY @4/*~My two sons, Percy and Timotey, were playing in the abandoned tower... I told them time and again to never go in there! Percy said that Timotey found some kind of figurine under a loose floorboard, and suddenly a giant lizard appeared! Percy was able to escape, but Timotey is still in there with the monster! You have to save him!~ */
	
	IF ~
		GlobalLT("XA_LC_DescribeLizard", "LOCALS", 1)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_DescribeLizard", "LOCALS", 1)
	~
	GOTO XA_Describe
	
	IF ~~ THEN REPLY @5 /* ~Abandoned tower? You mean Ramazith's tower?~*/
	GOTO XA_RamTower
	
	IF ~~ THEN REPLY @7 /* ~Of course. Stay here. I'll be back with your son.~*/
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @8 /* ~It sounds like a problem for the Flaming Fist to solve.~*/
	GOTO XA_FF
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @8 /* ~It sounds like a problem for the Flaming Fist to solve.~*/
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_TimoteyChain
END

IF ~~ THEN BEGIN XA_FF
	SAY @9/* ~But... but please! By the time they arrive it might be too late!~*/
	
	IF ~~ THEN REPLY @10 /* ~Sorry lady, not my problem.~*/
	EXIT
	
	IF ~~ THEN REPLY @11 /* ~Alright — stay here. I'll be back with your son.~*/
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RamTower
	SAY @6/* ~Yes! Please, save my Timotey!~ */
	
	IF ~~ THEN REPLY @10 /* ~Sorry lady, not my problem.~*/
	EXIT
	
	IF ~~ THEN REPLY @11 /* ~Alright — stay here. I'll be back with your son.~*/
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Describe
	SAY @18 /* ~Percy! Percy tell <PRO_HIMHER> what you saw!~*/
	
	IF ~~ THEN
	EXTERN XAPERCY XA_Describe
END

IF ~~ THEN BEGIN XA_Basilisk
	SAY @19/* ~A b-basilisk!~*/
	
	= @20 /* ~(She nearly faints.)~*/
	
	IF ~~ THEN REPLY @21 /* ~Percy, look after your mom while I go and rescue your brother.~*/
	EXTERN XAPERCY XA_BeCareful
END

IF ~~ THEN BEGIN XA_WillYouSave
	SAY @22 /* ~Will you save my son?~*/
	
	IF ~~ THEN REPLY @10 /* ~Sorry lady, not my problem.~*/
	EXIT
	
	IF ~~ THEN REPLY @11 /* ~Alright — stay here. I'll be back with your son.~*/
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXIT
END

CHAIN XACORWIJ XA_TimoteyChain
	@13 /*~Fortunately, the Flaming Fist is here to assist. We'll rescue your child, ma'am.~ */
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	== XAMOM
	@14 /* ~Oh, thank you officer!~*/
EXIT

