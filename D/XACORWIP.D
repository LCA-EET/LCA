//XACORWIP
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~XACORWIP~

//{ Dialog P-0
IF ~
	Global("XA_CorwinJoinOverride", "GLOBAL", 1)
~ THEN BEGIN XA_JoinOverride
	SAY @40 /* ~Join Override triggered.~*/
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog P-1
IF ~
	AreaCheck("BG1316")
	Global("XA_CorwinWithFamily", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	IsGabber(Player1)
~ THEN BEGIN XA_SeeYouLater
	SAY @38 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	IF ~~ THEN EXIT
END
//}

//{ Dialog P-2
IF ~
	AreaCheck("BG1316")
	Global("XA_CorwinWithFamily", "GLOBAL", 1)
~ THEN BEGIN XA_SeeYouLater2
	SAY @39 /* ~<GABBER>, I'll see you at the debriefing.~ */
	
	IF ~~ THEN EXIT
END
//}

//{ Dialog P-3
IF ~
	!Global("XA_CanLeaveParty", "GLOBAL", 1)
~
THEN BEGIN XA_CantLeave
	SAY @33 /* ~No - we need to stick together if we're to find out way out of here. We can discuss this later.~ */
	
	IF ~~ THEN REPLY @34 /* ~Yes, you're right. Let's stay together, at least for the time being.~ */
	
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog P-4
IF ~
	Global("XA_ReturnToBG", "GLOBAL", 1)
	!Global("XA_CorwinWithFamily", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinReturnToBG
	SAY @37 /* ~Let's stick together for now.~*/
	
	IF ~~ THEN REPLY @34 /* ~Yes, you're right. Let's stay together, at least for the time being.~ */
	
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog P-5
IF ~
	GlobalGT("XA_CorwinBit", "GLOBAL", 0)
	!Global("XA_CorwinCleansed", "GLOBAL", 1)
~
THEN BEGIN XA_CorwinSick
	SAY @30 /* ~My love? This bite... I'm not feeling well, at all. Please, don't leave my side.~ */
	
	IF ~~ THEN REPLY @31 /* ~You're right, my dear. Stay with me. I'll look after you as best I can.~ */
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog P-6
IF ~
	GlobalGT("XA_CorwinBit", "GLOBAL", 0)
	Global("XA_CorwinCleansed", "GLOBAL", 1)
~
THEN BEGIN XA_CorwinCleansed
	SAY @15 /*~<CHARNAME>? I'm alive... but, how? ~*/
	
	IF ~~ THEN REPLY @16 /* ~Schael! Oh, thank goodness, I thought I had lost you. (You share a long embrace)~ */
	DO ~
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 2)
		SetGlobal("XA_CorwinBit", "GLOBAL", 0)
		SetGlobal("XA_PlayerRezzedCorwin", "GLOBAL", 1)
	~
	GOTO XAA4
END
//}

IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_PC
	SAY @13 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_CorwinJoined", "LOCALS", 1)
	!Global("XA_AskedToRejoin", "LOCALS", 1)
	!ReputationLT(Player1,7)
~ THEN BEGIN XA_AreYouSure
	SAY @0 /* ~<CHARNAME>? Are you sure you don't want me with you?~ [BDCORP6] */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1 /* ~I need you at my side, now more than ever. Join me.~ */
	GOTO XAA2
		
	IF ~~ THEN REPLY @2 /* ~I do, but not at the moment. Wait here, I will come for you later.~ */
	DO ~
		SetGlobal("XA_AskedToRejoin", "LOCALS", 1)
		SetGlobal("XA_CorwinJoined", "LOCALS", 0)
	~
	GOTO XAA3
END

IF ~
	Global("XA_CorwinJoined", "LOCALS", 1)
	!Global("XA_AskedToRejoin", "LOCALS", 1)
	ReputationLT(Player1,7)
~ THEN BEGIN XA_AreYouSure_RepLT7
	SAY @32 /* ~You want me out of here? Fine. If you ever clean up your act, you can find me in the Athkatla magistrate.~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA1
	SAY @4 /* ~Gladly, my friend.~ */
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA2
	SAY @3 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA3
	SAY @5 /* ~Very well. Don't take too long.~ [BDCORP5]*/ 
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA4
	SAY @17 /* ~I remember... dying, in your arms. W-what happened?~ */
	
	IF ~~ THEN REPLY @18 /* ~You died, just as you had transformed into a vampire. We resurrected you using Bodhi's heart and the magic of this temple.~ */
	GOTO XAA5
END

IF ~~ THEN BEGIN XAA5
	SAY @19 /* ~Bodhi's heart - she's dead, then? You recovered the Lanthorn?~ */
	
	IF ~~ THEN REPLY @20 /* ~Yes, love. Bodhi is dead, Imoen's soul was restored, and we are together again. Now, and forever.~ */
	GOTO XAA6
END

IF ~~ THEN BEGIN XAA6
	SAY @21 /* ~Thank you for saving me. I love you, <CHARNAME>. (You share a passionate kiss.)~ */
	= @22 /* ~Let's get going. You can fill me in on what I've missed along the way.~ */
	
	IF ~~ THEN REPLY @23 /* ~Gladly, my love.~ */
	GOTO XAA2
	
	IF ~~ THEN REPLY @24 /* ~We will get going soon - wait here a moment.~*/
	GOTO XAA3
	
	IF ~~ THEN REPLY @25 /* ~I nearly lost you once already, and I don't want to risk your life again so soon.~ */
	GOTO XAA7
END

IF ~~ THEN BEGIN XAA7
	SAY @0 /* ~<CHARNAME>? Are you sure you don't want me with you?~  */
	
	IF ~~ THEN REPLY @26 /* ~On second thought, yes - join me, love.~*/
	GOTO XAA2
	
	IF ~~ THEN REPLY @27 /* ~I need some time to decide - wait here for a moment.~ */
	GOTO XAA3
	
	IF ~~ THEN REPLY @28 /* ~Yes, I am sure. Meet me back at the Athkatla magistrate.~ */
	GOTO XAA8
END

IF ~~ THEN BEGIN XAA8
	SAY @29 /* ~(Sigh) Fair enough. I'll be waiting for you, love.~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
	~
	EXIT
END


