BEGIN ~XAAUDAM~

//{ Dialog M-0
IF ~
	Global("XA_CorwinFamilyTalk", "GLOBAL", 1)
~ THEN BEGIN XA_WelcomeHome
	SAY @9 /* ~Schael, I'm glad you're home.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinFamilyTalk", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_CorwinFamilyReunite2
END
//}
IF ~
	Global("XA_ByeRohma", "GLOBAL", 1)
~ THEN BEGIN XA_Sleeping
	SAY @7 /* ~Zzz...zzz...~ */
	=@8 /* ~(You decide against disturbing his rest.)~ */
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	Gender(Player1, MALE)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	!Global("XA_AudamCorwinPlayer", "LOCALS", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
~ THEN BEGIN XA_PlayerNewDad
	SAY @4 /* ~It's good to have you back, Schael.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AudamCorwinPlayer", "LOCALS", 1)
	~ 
	EXTERN XACORWIJ XA_AudamCorwinPlayerChain
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	!Global("XA_DukesDebriefed", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	IsGabber(Player1)
	RandomNum(2,1)
~ THEN XA_DontKeepDukesWaiting
	SAY @2 /* ~Make sure you arrive for the debriefing on time. The Dukes don't like to be kept waiting.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	!Global("XA_DukesDebriefed", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	IsGabber(Player1)
	RandomNum(2,2)
~ THEN XA_ThankYou
	SAY @3 /* ~Thank you for bringing Schael back safe and sound.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	!Global("XA_DukesDebriefed", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	!IsGabber(Player1)
~ THEN XA_DontKeepDukesWaiting2
	SAY @2 /* ~Make sure you arrive for the debriefing on time. The Dukes don't like to be kept waiting.~*/
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_RohmaKidnapped2A
	SAY @5/* ~...letter..~ */
	= @6 /* ~(He rolls to his side. A letter is nailed into his shoulder blade.)~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_RohmaKidnapped2B
END