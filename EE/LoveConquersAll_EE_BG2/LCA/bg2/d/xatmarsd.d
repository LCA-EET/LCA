BEGIN ~XATMARSD~

IF ~
	GlobalGT("XA_TM_ArcheryChallenge", "GLOBAL", 1)
~ THEN BEGIN XAA0
	SAY @9 /* ~Congratulations on winning the Archery Competition!~ */
	IF ~~ THEN
	EXIT
END

IF ~
	OR(2)
		Dead("celogan")
		Dead("trhmer01")
~ THEN BEGIN XA_LoganHighMerchantDead
	SAY @14 /* ~I'm sorry to inform you that this year's Archery Competition has been cancelled due to the untimely death of the competition's organizer.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	!Dead("cefald01")
~ THEN BEGIN XA_FaldornNotDead
	SAY @15 /* ~The Annual Archery Competition has been postponed due to the ongoing animal attacks. Come back once the attacks have stopped.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	!Global("geniesgone","GLOBAL",1)
~ THEN BEGIN XA_GeniesNotGone
	SAY @16 /* ~The Annual Archery Competition has been postponed due to the djinni lockdown of the city. Come back once the djinni have departed.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_TM_ArcheryChallenge", "GLOBAL", 1)
	!TimeOfDay(DAY)
~ THEN BEGIN XAA6
	SAY @10 /* ~The signup desk is closed for today. Please come back tomorrow to sign up for the Archery Competition!~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_TM_ArcheryChallenge", "GLOBAL", 1)
	TimeOfDay(DAY)
~ THEN BEGIN XAA1
	SAY @0 /* ~Hi! Are you here to sign up for the annual Archery Competition?~ */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!IsValidForPartyDialogue("Mazzy")
	~ THEN REPLY @11 /* ~(You remember that Mazzy also wanted to participate.) Yes, but one of our number is missing. We will come back later to sign in.~ */
	GOTO XAA2
	
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue("Mazzy")
	~ THEN REPLY @12 /* (You remember that Schael also wanted to participate.) Yes, but one of our number is missing. We will come back later to sign in.~  */
	GOTO XAA2
	
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
		!IsValidForPartyDialogue("Mazzy")
	~ THEN REPLY @13 /* ~(You remember that Mazzy and Schael wanted to participate.) Yes, but two from our group are missing. We will come back later to sign in.~  */
	GOTO XAA2
	
	IF ~~ THEN REPLY @4 /* ~We haven't decided if we will take part.~ */
	GOTO XAA2
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue("Mazzy")
	~ THEN REPLY @1 /* ~Yes, that's right.~ */
	GOTO XAA3
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue("Mazzy")
	~ THEN REPLY @7 /* ~That depends. What do we get if we win?~ */
	GOTO XAA5
END

IF ~~ THEN BEGIN XAA2
	SAY @5 /* @5 = ~I understand. Please come back when you are ready.~ */

	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XAA3
	SAY @2 /* ~Great! Who from your group will be taking part?~ */

	IF ~~ THEN REPLY @3 /* ~Mazzy Fentan and Schael Corwin would like to take part in the competition.~ */
	GOTO XAA4
END

IF ~~ THEN BEGIN XAA4
	SAY @6 /* @6 = ~Excellent! The competition is about to begin. Please make your way to the staging area.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive","GLOBAL", 2)
	~ THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("xacs06a")
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive","GLOBAL", 2)
	~ THEN 
	DO ~
		StartCutSceneMode()
		StartCutScene("xacs06c")
	~
	EXIT
END

IF ~~ THEN BEGIN XAA5
	SAY @8 /* ~I'm glad you asked. The winner will receive a commemorative trophy as well as a monetary award.~ */
	
	IF ~~ THEN REPLY @3 /* ~Mazzy Fentan and Schael Corwin would like to take part in the competition.~ */
	GOTO XAA4
	
	IF ~~ THEN REPLY @4 /* ~We haven't decided if we will take part.~ */
	GOTO XAA2
END
