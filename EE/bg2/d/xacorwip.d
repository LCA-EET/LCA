BEGIN ~XACORWIP~

//{ Rilifane
IF ~
	AreaCheck("XACS13")
~ THEN BEGIN XA_SoAEnd
	SAY @93  /* ~Talk to me when you're ready to leave.~ */
	
	IF ~~ THEN
	DO ~
		SetInterrupt(FALSE)
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
END
//}

//{ Spellhold
IF ~
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	Global("XA_LC_CorwinIrenicus", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinIrenicusRejoin
	SAY @75  /* ~Get me out of here!~ */
	
	IF ~
		NumInPartyLT(6)
	~ THEN REPLY @76 /* ~(Break the glass.)~*/
	DO ~
		SetInterrupt(FALSE)
		SetGlobal("XA_LC_CorwinIrenicus", "GLOBAL", 6)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
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
		SetGlobal("XA_LC_CorwinIrenicus", "GLOBAL", 5)
		SetGlobalTimer("XA_LC_CorwinRejoinTimer", "LOCALS", ONE_ROUND)
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
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	Global("XA_LC_CorwinIrenicusTalk", "LOCALS", 1)
~ THEN BEGIN XA_CorwinIrenicusTalk
	SAY @78  /* ~Thanks for the help back there.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @79 /* ~Are you sure you're alright, love?~ */
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @80 /* ~Are you sure you're alright, Captain?~ */
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~~ THEN REPLY @81  /* ~That golem sure gave you a good squeeze.~*/
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
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
		SetGlobal("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
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
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
	~ THEN
	GOTO XA_CorwinRescueTalk5A
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
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
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
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
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
		SetInterrupt(TRUE)
	~
	EXIT
END
//}

//{ Return to Baldur's Gate Dialog P-1
IF ~
	AreaCheck("XAHOME")
	Global("XA_LC_CorwinWithFamily", "GLOBAL", 1)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	IsGabber(Player1)
	GlobalLT("XA_LC_CorwinSex_3", "GLOBAL", 7)
~ THEN BEGIN XA_SeeYouLater
	SAY @38 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	AreaCheck("XAHOME")
	Global("XA_LC_CorwinWithFamily", "GLOBAL", 1)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	IsGabber(Player1)
	Global("XA_LC_CorwinSex_3", "GLOBAL", 7)
~ THEN BEGIN XA_SeeYouLater2
	SAY @100 /* ~I'll see you at the debriefing, love.~ */
	
	IF ~~ THEN EXIT
END
//}

//{ Return to Baldur's Gate Dialog P-2
IF ~
	AreaCheck("XAHOME")
	Global("XA_LC_CorwinWithFamily", "GLOBAL", 1)
~ THEN BEGIN XA_SeeYouLater2
	SAY @39 /* ~<GABBER>, I'll see you at the debriefing.~ */
	
	IF ~~ THEN EXIT
END
//}

//{ Corwin Can't Leave - See XACORSCR for Conditions. Dialog P-3
IF ~
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	!Global("XA_LC_CanLeaveParty", "LOCALS", 1)
~
THEN BEGIN XA_CantLeave
	SAY @33 /* ~No - we need to stick together if we're to find out way out of here. We can discuss this later.~ */
	
	IF ~~ THEN REPLY @34 /* ~Yes, you're right. Let's stay together, at least for the time being.~ */
	
	DO ~
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Return to Baldur's Gate - Can't Leave. Dialog P-4
IF ~
	Global("XA_LC_ReturnToBG", "GLOBAL", 1)
	GlobalLT("XA_LC_CorwinWithFamily", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinReturnToBG
	SAY @37 /* ~Let's stick together for now.~*/
	
	IF ~~ THEN REPLY @34 /* ~Yes, you're right. Let's stay together, at least for the time being.~ */
	
	DO ~
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Bit By Bodhi - Can't Leave. Dialog P-5
IF ~
	GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	GlobalLT("XA_LC_CorwinCleansed", "GLOBAL", 1)
~
THEN BEGIN XA_CorwinSick
	SAY @30 /* ~My love? This bite... I'm not feeling well, at all. Please, don't leave my side.~ */
	
	IF ~~ THEN REPLY @31 /* ~You're right, my dear. Stay with me. I'll look after you as best I can.~ */
	DO ~
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Rejoin after resurrection from Bodhi episode. Dialog P-6
IF ~
	GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	Global("XA_LC_CorwinCleansed", "GLOBAL", 1)
~
THEN BEGIN XA_CorwinCleansed
	SAY @15 /*~<CHARNAME>? I'm alive... but, how? ~*/
	
	IF ~~ THEN REPLY @16 /* ~Schael! Oh, thank goodness, I thought I had lost you.~ */
	DO ~
		SetGlobal("XA_LC_CorwinCleansed", "GLOBAL", 2)
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 0)
		SetGlobal("XA_LC_PlayerRezzedCorwin", "GLOBAL", 1)
	~
	GOTO XAA4
END
//}

//{ Ask to Rejoin
IF ~
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	Global("XA_LC_CorwinJoined", "LOCALS", 1)
	GlobalLT("XA_LC_CorwinKickedOut", "LOCALS", 1)
	ReputationGT(Player1,6)
	!Race(Player1, LICH)
~ THEN BEGIN XA_AreYouSure
	SAY @0 /* ~<CHARNAME>? Are you sure you don't want me with you?~ [BDCORP6] */
	
	IF ~
		!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @41 /* ~Your assistance would be welcome Major. Join me.~ */
	GOTO XAA1
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1 /* ~I need you at my side, now more than ever. Join me.~ */
	GOTO XAA2
		
	IF ~~ THEN REPLY @2 /* ~I do, but not at the moment. Wait here, I will come for you later.~ */
	DO ~
		SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
	~
	GOTO XAA3
	
	IF ~
		!AreaCheck("AR1002")
		GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN REPLY @73  /* ~Go. I'll meet you back at the Athkatla magistrate.~*/
	GOTO XA_MeetAth
	
	IF ~
		!AreaCheck("AR4500")
		!AreaCheck("AR6200")
		Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY #65302 /* ~I'll send you back to the pocket plane. Wait for me there.~ */ 
	DO ~
		SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		CreateVisualEffectObject("SPDIMNDR",Myself)
		Wait(2)
		MoveBetweenAreas("AR4500",[1800.1465],S)
	~
	EXIT
	
	IF ~
		!AreaCheck("AR4500")
		!AreaCheck("AR6200")
		Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @101 /* ~I'll send you back to the pocket plane. Wait for me there, dear.~ */ 
	DO ~
		SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		CreateVisualEffectObject("SPDIMNDR",Myself)
		Wait(2)
		MoveBetweenAreas("AR4500",[1800.1465],S)
	~
	EXIT
END
//}

//{ Kicked from Party - Don't Ask to Rejoin
IF ~
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	Global("XA_LC_CorwinJoined", "LOCALS", 1)
	GlobalLT("XA_LC_CorwinKickedOut", "LOCALS", 1)
	ReputationLT(Player1,7)
	!Race(Player1, LICH)
~ THEN BEGIN XA_AreYouSure_RepLT7
	SAY @32 /* ~You want me out of here? Fine. If you ever clean up your act, you can find me in the Athkatla magistrate.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
	~
	EXIT
END
//}

//{ Only speak to player
IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_PC
	SAY @13 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END
//}

//{ Rejoin After Kicked Out Dialogs
	//{ Athkatla Magistrate - Rep OK
	IF ~
		Global("XA_LC_CorwinKickedOut", "LOCALS", 1)
		AreaCheck("AR1002")
		ReputationGT(Player1,6)
		!Race(Player1, LICH)
	~ THEN BEGIN XA_BackAtAthkatlaCouncil
		SAY @63  /*~<CHARNAME>. What do you need?~ [XA100032] */
		
		IF ~
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
		GOTO XAA1
		
		IF ~
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @41 /* ~Your assistance would be welcome Major. Join me.~ */
		GOTO XAA1
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1 /* ~I need you at my side, now more than ever. Join me.~ */
		GOTO XAA2
			
		IF ~~ THEN REPLY @2 /* ~I do, but not at the moment. Wait here, I will come for you later.~ */
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		~
		GOTO XAA3
		
		IF ~
			!AreaCheck("AR4500")
			!AreaCheck("AR6200")
			Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY #65302 /* ~I'll send you back to the pocket plane. Wait for me there.~ */ 
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
			CreateVisualEffectObject("SPDIMNDR",Myself)
			Wait(2)
			MoveBetweenAreas("AR4500",[1800.1465],S)
		~
		EXIT
		
		IF ~
			!AreaCheck("AR4500")
			!AreaCheck("AR6200")
			Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @101 /* ~I'll send you back to the pocket plane. Wait for me there, dear.~ */ 
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
			CreateVisualEffectObject("SPDIMNDR",Myself)
			Wait(2)
			MoveBetweenAreas("AR4500",[1800.1465],S)
		~
		EXIT
	END
	//}

	IF ~
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
		Global("XA_LC_CorwinKickedOut", "LOCALS", 1)
		!AreaCheck("AR1002")
		ReputationGT(Player1,6)
		!Race(Player1, LICH)
	~ THEN BEGIN XA_OutsideAthkatlaCouncil
		SAY @63  /*~<CHARNAME>. What do you need?~ [XA100032] */
		
		IF ~
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @6 /* ~Your assistance would be welcome Captain. Join me.~ */
		GOTO XAA1
		
		IF ~
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @41 /* ~Your assistance would be welcome Major. Join me.~ */
		GOTO XAA1
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1 /* ~I need you at my side, now more than ever. Join me.~ */
		GOTO XAA2
			
		IF ~~ THEN REPLY @2 /* ~I do, but not at the moment. Wait here, I will come for you later.~ */
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		~
		GOTO XAA3
		
		IF ~
			!AreaCheck("AR4500")
			!AreaCheck("AR6200")
			Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY #65302 /* ~I'll send you back to the pocket plane. Wait for me there.~ */ 
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
			CreateVisualEffectObject("SPDIMNDR",Myself)
			Wait(2)
			MoveBetweenAreas("AR4500",[1800.1465],S)
		~
		EXIT
		
		IF ~
			!AreaCheck("AR4500")
			!AreaCheck("AR6200")
			Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @101 /* ~I'll send you back to the pocket plane. Wait for me there, dear.~ */ 
		DO ~
			SetGlobal("XA_LC_CorwinJoined", "LOCALS", 0)
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
			CreateVisualEffectObject("SPDIMNDR",Myself)
			Wait(2)
			MoveBetweenAreas("AR4500",[1800.1465],S)
		~
		EXIT
		
		IF ~
			!AreaCheck("AR1002")
			GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
		~ THEN REPLY @73  /* ~Go. I'll meet you back at the Athkatla magistrate.~*/
		GOTO XA_MeetAth
	END
	//}

	//{ Athkatla Magistrate - Rep Bad
	IF ~
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
		Global("XA_LC_CorwinKickedOut", "LOCALS", 1)
		!Race(Player1, LICH)
		ReputationLT(Player1,7)
		OR(2)
			AreaCheck("AR1002")
			Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN BEGIN XA_BackAtAthkatlaCouncil_BadRep
		SAY @102 /* ~Your reputation precedes you, 'hero'. Come and see me when you've cleaned up your act.~  */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		~
		EXIT
	END 
	//}
	
	//{ Athkatla Magistrate - Rep Bad
	IF ~
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
		Global("XA_LC_CorwinKickedOut", "LOCALS", 1)
		!Race(Player1, LICH)
		!AreaCheck("AR1002")
		ReputationLT(Player1,7)
		GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN BEGIN XA_OutsideAthkatlaCouncil_BadRep
		SAY @103 /* ~Your reputation precedes you, 'hero'. Come and see me at the Athkatla magistrate once you've cleaned up your act.~  */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
			SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("", DEFAULT)
			EscapeArea()
		~
		EXIT
	END 
	//}
//}

IF ~~ THEN BEGIN XA_MeetAth
	SAY @74  /*  ~Very well. Don't take too long.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
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
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA2
	SAY @3 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORWIN", OVERRIDE)
		SetGlobal("XA_LC_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA3
	SAY @5 /* ~Very well. Don't take too long.~ [BDCORP5]*/ 
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
	~
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
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		EscapeArea()
	~
	EXIT
END

IF ~
	Race(Player1, LICH)
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinLeaveLich
	SAY @104 /*~I can't bear to fight at your side any longer. Listen, lich — set foot in Baldur's Gate again and I'll crush your bones to dust. Goodbye.~*/
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END
