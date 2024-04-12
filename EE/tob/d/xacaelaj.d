BEGIN ~XACAELAJ~

IF ~
	Global("XA_LC_CaelarLeftPoorRep", "GLOBAL", 1)
~ THEN BEGIN XA_RepBreak
	SAY #268343 /*This is wrong. I'll not stand by and watch you make a mockery of all the principles I hold to. We part ways here.*/
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		EscapeArea()
	~
	EXIT

END

IF ~
	Global("XA_LC_CaelarRepWarning", "GLOBAL", 2)
~ THEN BEGIN XA_RepWarning
	SAY #268342 /*We wander too far into darkness. Put me or another righteous soul in charge. I will soon steer us back on course.*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_CaelarRepWarning", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CaelarSarvolo
	SAY @0 /*~<CHARNAME> and <PRO_HISHER> companions freed me from the clutches of an extraordinarily powerful demon. An action that has earned them my eternal gratitude. I will support <CHARNAME> in any way that I can.~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_CaelarSarvolo2
END

IF ~~ THEN BEGIN XA_BenoBoom
	SAY @1  /* ~Ugh! By the light, it's everywhere!~ */
	
	= @2 /*~Perhaps someone in this village will be kind enough to allow us the use of their wash room.~ */
	
	IF ~~ THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("XALATHEX")
	~
	EXIT	
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @3 /* ~Brother, surely you're aware of the risks asssociated with performing a resurrection so long after the death of the subject?~*/
	
	IF ~~ THEN 
	EXTERN XALATH01 XA_HowMany2
END

IF ~~ THEN BEGIN XA_Choice
	SAY @4  /* ~I'm honored to have helped in your ascension to divinity, <CHARNAME>. There is no one more worthy of this transformation than you.~ */

	COPY_TRANS FINSOL01 27
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ EXTERN XACOR25J XA_Choice_NonRomance
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ EXTERN XACOR25J XA_Choice
END