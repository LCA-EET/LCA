//XACORWIP
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~XACORWIP~

IF ~
	AreaCheck("XACS13")
~ THEN BEGIN XA_SoAEnd
	SAY @93  /* ~Talk to me when you're ready to leave.~ */
	
	IF ~~ THEN REPLY @95  /* ~Will do.~*/
	DO ~
		SetInterrupt(FALSE)
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
END

IF ~
	Global("XA_CorwinIrenicus", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinIrenicusRejoin
	SAY @75  /* ~Get me out of here!~ */
	
	IF ~
		NumInPartyLT(6)
	~ THEN REPLY @76 /* ~(Break the glass.)~*/
	DO ~
		SetInterrupt(FALSE)
		SetGlobal("XA_CorwinIrenicus", "GLOBAL", 6)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
		//DisplayStringHead(Myself, @98)
		JumpToPoint([810.945])
		SetInterrupt(TRUE)
	~
	EXIT
	
	IF ~
		NumInPartyGT(5)
	~ THEN REPLY @76 /* ~(Break the glass.)~*/
	DO ~
		SetInterrupt(FALSE)
		SetGlobal("XA_CorwinIrenicus", "GLOBAL", 5)
		SetGlobalTimer("XA_CorwinRejoinTimer", "LOCALS", ONE_ROUND)
		//DisplayStringHead(Myself, @99)
		JumpToPoint([810.945])
		Ally()
		SetInterrupt(TRUE)
	~
	EXIT
	
	IF ~~ THEN REPLY @77  /* ~(Leave her inside.)~*/
	EXIT
END

IF ~
	Global("XA_CorwinIrenicusTalk", "LOCALS", 1)
~ THEN BEGIN XA_CorwinIrenicusTalk
	SAY @78  /* ~Thanks for the help back there.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @79 /* ~Are you sure you're alright, love?~ */
	DO ~
		SetGlobal("XA_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @80 /* ~Are you sure you're alright, Captain?~ */
	DO ~
		SetGlobal("XA_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~~ THEN REPLY @81  /* ~That golem sure gave you a good squeeze.~*/
	DO ~
		SetGlobal("XA_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinRescueTalk2
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk2
	SAY @82 /* ~Yeah... nothing a nice, hot bath won't fix. How about you? What happened while I was out?~ */
	
	IF ~~ THEN REPLY @91  /* ~I don't have time to explain. Meet me back in Athkatla.~*/
	GOTO XA_AreYouSure
	
	IF ~~ THEN REPLY @83  /* ~I'll fill you in on the way. We need to get moving.~*/
	GOTO XA_CorwinRescueTalk4

	IF ~~ THEN REPLY @84  /* ~Nothing. Just the small matter of having my soul ripped out from me. Imoen too.~*/
	DO ~
		SetGlobal("XA_CorwinToldAboutSoul", "LOCALS", 1)
	~
	GOTO XA_CorwinRescueTalk3
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk3
	SAY @85  /* ~What!?~ */
	
	IF ~~ THEN REPLY @91  /* ~I don't have time to explain. Meet me back in Athkatla.~*/
	GOTO XA_AreYouSure
	
	IF ~~ THEN REPLY @86 /* ~I'll fill you in on the way. We need to get moving.~*/
	GOTO XA_CorwinRescueTalk4
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk4
	SAY @87  /* ~Right...~*/
	
	IF ~~ THEN
	DO ~
		SetInterrupt(FALSE)
		//ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinToldAboutSoul", "LOCALS", 1)
	~ THEN
	GOTO XA_CorwinRescueTalk5A
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_CorwinToldAboutSoul", "LOCALS", 1)
	~ THEN
	GOTO XA_CorwinRescueTalk5B
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk5A
	SAY @88  /* ~Come here.~*/
	
	= @89 /*  ~(You share a warm embrace.)~*/
	
	= @90 /* ~Whatever he did, we'll find a way to restore you and your sister. Let's go.~*/
	
	IF ~~ THEN
	DO ~
		SetInterrupt(FALSE)
		//ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk5B
	SAY @88  /* ~Come here.~*/
	
	= @89 /*  ~(You share a warm embrace.)~*/

	= @92  /* ~Let's go.~*/
	IF ~~ THEN
	DO ~
		SetInterrupt(FALSE)
		//ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
END
//{ Dialog P-7
IF ~
	Global("XA_CorwinSpawnPlane", "GLOBAL", 1)
	GlobalLT("XA_CorwinSpawnComplain", "GLOBAL", 1)
~ THEN BEGIN XA_JoinToB
	SAY @7 /* ~Wh... where... what the hells is this place? <CHARNAME>!? There better be a DAMN good explanation for this!~*/
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @8 /* ~Did I catch you at a bad time?~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_BadTime_NR
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @8 /* ~Did I catch you at a bad time?~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_BadTime_R
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @9 /* ~Hi, Captain.~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_Promoted
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @10 /* Hi, Schael.*/
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_HiMad
END

IF ~~ THEN BEGIN XA_JoinToB_BadTime_NR
	SAY @12 /* ~A *very* bad time. Now, are you going tell me what's going on, or do I need to beat it out of you?~ */
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_BadTime_R
	SAY @51 /* ~A *very* bad time... Bastard! You left me behind, then went off and killed Irenicus without me! Don't you know how worried I was!~~  */
	
	IF ~~ THEN REPLY @43 /* ~I'm sorry, I didn't want to risk losi—~ */
	GOTO XA_JoinToB_HiMad2
END

IF ~~ THEN BEGIN XA_JoinToB_HiMad
	SAY @42 /* ~Hi yourself. You left me behind, then went off and killed Irenicus without me! Don't you know how worried I was!~ */
	
	IF ~~ THEN REPLY @43 /* ~I'm sorry, I didn't want to risk losi—~ */
	GOTO XA_JoinToB_HiMad2
END

IF ~~ THEN XA_JoinToB_HiMad2
	SAY @44  /* ~I don't want to hear it! You didn't even come back to the city after it was over with! You couldn't even send a gods damn letter to let me know you were alright!~ */
	
	IF ~~ THEN REPLY @14 /*  ~I was wrong. I'm sorry, love.~ */
	GOTO XA_JoinToB_HiMad3
END

IF ~~ THEN XA_JoinToB_HiMad3
	SAY @36 /* ~(She calms herself down.)~*/
	
	= @35 /* ~Enough... that's in the past. Tell me why you've brought me here. Right. Now.~ */
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_Promoted
	SAY @11 /* ~That's *Major*. Now, are you going tell me what's going on, or do I need to beat it out of you?~*/
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_NeedHelp
	SAY @46 /*  ~I see. And did you think for one second to, I don't know, send for help, instead of abducting me? I can't just leave my family and the Fist without an explanation.~ */
	
	IF ~~ THEN REPLY @48 /* ~Good point. Let me clear it with your commander. (Bring Marshal Nederlok in through the gate.)~ */
	GOTO XA_GetNederlok
	
	IF ~~ THEN REPLY @49  /* ~You're right. This was a mistake. I'll send you back through the gate.~*/
	GOTO XA_SendHome
END

IF ~~ THEN BEGIN XA_GetNederlok
	SAY @52 /* ~N-no! Gods damnit!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XATOBNED")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SendHome
	SAY @50 /* ~You're unbelievable, do you know that? Send me home. Now.~ */
	
	IF ~~ THEN REPLY @71
	DO ~
		StartCutSceneMode()
		StartCutScene("XACOREX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NedToB2
	SAY @53 /* ~I'm sorry, sir. <CHARNAME> brought us here to discuss what <PRO_HESHE> believes is a significant threat to the Baldur's Gate, and the Sword Coast.~ */
	
	IF ~~ THEN REPLY @54 /*  ~(Explain the threat posed by the Five) */
	EXTERN XATOBNED XA_Threat
END

IF ~~ THEN BEGIN XA_Threat2
	SAY @59 /*~I understand, sir.~*/
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @60 /* ~So, Capt — excuse me, Major. What is your decision?~ */
	GOTO XA_Threat3
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @61 /* ~So, Schael. What is your decision?~ */
	GOTO XA_Threat3
END

IF ~~ THEN BEGIN XA_Threat3
	SAY @64 /*~...~*/
	
	IF ~~ THEN REPLY @66 /*~Well?~*/
	GOTO XA_Threat4
END

IF ~~ THEN BEGIN XA_Threat4
	SAY @65 /* ~I'm thinking.~ */
	
	IF ~
		!ReputationLT(Player1,7)
	~ THEN REPLY @67 /*~Listen, Schael. I was wrong to cast you aside, and I need your help. I can't do this without you. If not for me, do it for your city. The Five won't stop until the entire continent is in flames!~*/
	GOTO XA_Threat4_Join
	
	IF ~
		ReputationLT(Player1,7)
	~ THEN REPLY @67 /*~Listen, Schael. I was wrong to cast you aside, and I need your help. I can't do this without you. If not for me, do it for your city. The Five won't stop until the entire continent is in flames!~*/
	GOTO XA_Threat4_NoJoin
END

IF ~~ THEN BEGIN XA_Threat4_Join
	SAY @68 /* ~(Sigh.)~ */
	
	= @62 /* ~Sir, I'll accompany <CHARNAME>. We'll put an end to the Five. Please inform the Dukes... and please... let my family know that I'll be home as soon as I can.~ */
	
	IF ~~ THEN
	EXTERN XATOBNED XA_CorwinJoin
END

IF ~~ THEN BEGIN XA_Threat4_NoJoin
	SAY @69 /* ~You know... you almost had me convinced, <CHARNAME>. But I've been keeping tabs on you. You want me to help you defeat the Five? You're just as bad as they are, possibly worse. No. This is where we part ways, for the last time. Send us home.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@70, INFO)
		StartCutSceneMode()
		StartCutScene("XATWOHOM")
	~
	EXIT
END

//}


//{ Dialog P-1
IF ~
	AreaCheck("XAHOME")
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
	AreaCheck("XAHOME")
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
	GlobalLT("XA_CorwinWithFamily", "GLOBAL", 1)
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
	GlobalLT("XA_CorwinCleansed", "GLOBAL", 1)
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
	
	IF ~~ THEN REPLY @16 /* ~Schael! Oh, thank goodness, I thought I had lost you.~ */
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
		!Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @41 /* ~Your assistance would be welcome Major. Join me.~ */
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
	
	IF ~
		!AreaCheck("AR1002")
		GlobalLT("Chapter", "GLOBAL", 20)
	~ THEN REPLY @73  /* ~Go. I'll meet you back at the Athkatla magistrate.~*/
	GOTO XA_MeetAth
END

IF ~
	Global("XA_CorwinJoined", "LOCALS", 1)
	!Global("XA_AskedToRejoin", "LOCALS", 1)
	ReputationLT(Player1,7)
~ THEN BEGIN XA_AreYouSure_RepLT7
	SAY @32 /* ~You want me out of here? Fine. If you ever clean up your act, you can find me in the Athkatla magistrate.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
	~
	EXIT
END

IF ~
	Global("XA_AskedToRejoin", "LOCALS", 1)
~ THEN BEGIN XA_MadeDecision
	SAY @63  /*~<CHARNAME>. What do you need?~ [XA100032] */
	
	IF ~~ THEN REPLY @72  /* ~Nothing at the moment.~*/
	EXIT
	
	IF ~
		!Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @41 /* ~Your assistance would be welcome Major. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1 /* ~I need you at my side, now more than ever. Join me.~ */
	GOTO XAA2
	
	IF ~
		!AreaCheck("AR1002")
		GlobalLT("Chapter", "GLOBAL", 20)
	~ THEN REPLY @73  /* ~Go. I'll meet you back at the Athkatla magistrate.~*/
	GOTO XA_MeetAth
END

IF ~~ THEN BEGIN XA_MeetAth
	SAY @74  /*  ~Very well. Don't take too long.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
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
	SAY @96 /*  ~(You share a long and emotional embrace.)~ */
	
	= @17 /* ~I remember... dying, in your arms. Wh...what happened?~ */
	
	IF ~~ THEN REPLY @18 /* ~You died, just as you had transformed into a vampire. We resurrected you using Bodhi's heart and the magic of this temple.~ */
	GOTO XAA5
END

IF ~~ THEN BEGIN XAA5
	SAY @19 /* ~Bodhi's heart - she's dead, then? You recovered the Lanthorn?~ */
	
	IF ~~ THEN REPLY @20 /* ~Yes, love. Bodhi is dead, Imoen's soul was restored, and we are together again. Now, and forever.~ */
	GOTO XAA6
END

IF ~~ THEN BEGIN XAA6
	SAY @21 /* ~Thank you for saving me. I love you, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @56
	GOTO XAA6A
END

IF ~~ THEN BEGIN XAA6A
	SAY @97 /*~(You share a passionate kiss.)~*/
	
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
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
	~
	EXIT
END


