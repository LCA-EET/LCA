BEGIN ~LCAUDAM~
IF ~
	Global("LCA_CorwinFamilyTalk", "GLOBAL", 1)
~ THEN BEGIN LCA_WelcomeHome
	SAY @9 /* ~Schael, I'm glad you're home.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinFamilyTalk", "GLOBAL", 2)
	~
	EXTERN LCCORWIJ LCA_CorwinFamilyReunite2
END
IF ~
	Global("LCA_ByeRohma", "GLOBAL", 1)
~ THEN BEGIN LCA_Sleeping
	SAY @7 /* ~Zzz...zzz...~ */
	=@8 /* ~(You decide against disturbing his rest.)~ */
	
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	Gender(Player1, MALE)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	!Global("LCA_AudamCorwinPlayer", "LOCALS", 1)
	Global("LCA_CorwinFamilyTalk", "GLOBAL", 3)
~ THEN BEGIN LCA_PlayerNewDad
	SAY @4 /* ~It's good to have you back, Schael.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_AudamCorwinPlayer", "LOCALS", 1)
	~ 
	EXTERN LCCORWIJ LCA_AudamCorwinPlayerChain
END

IF ~
	Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	Global("LCA_CorwinFamilyTalk", "GLOBAL", 3)
	InPartySlot(LastTalkedToBy,0)
	RandomNum(2,1)
~ THEN LCA_DontKeepDukesWaiting
	SAY @2 /* ~Make sure you arrive for the debriefing on time. The Dukes don't like to be kept waiting.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	Global("LCA_CorwinFamilyTalk", "GLOBAL", 3)
	InPartySlot(LastTalkedToBy,0)
	RandomNum(2,2)
~ THEN LCA_ThankYou
	SAY @3 /* ~Thank you for bringing Schael back safe and sound.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	Global("LCA_CorwinFamilyTalk", "GLOBAL", 3)
	!InPartySlot(LastTalkedToBy,0)
~ THEN LCA_DontKeepDukesWaiting2
	SAY @2 /* ~Make sure you arrive for the debriefing on time. The Dukes don't like to be kept waiting.~*/
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_RohmaKidnapped2A
	SAY @5/* ~...letter..~ */
	= @6 /* ~(He rolls to his side. A letter is nailed into his shoulder blade.)~ */
	
	IF ~~ THEN EXTERN LCCORWIJ LCA_RohmaKidnapped2B
END