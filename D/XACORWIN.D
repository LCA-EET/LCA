//XACORWIN
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~XACORWIN~

//{ Dialog I-0
IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_PC
	SAY @49 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog I-1
IF ~
	Global("XA_CorwinContinue", "GLOBAL", 2) 
	!Global("XA_CorwinReunited", "GLOBAL", 1)
~ THEN BEGIN XAA0
	SAY @7 /* ~<CHARNAME>! There you are... thank the gods.~ [XA100085] */
	=@8 /* ~I've missed you...~ */
	= @60  /* ~(You share a warm and emotional embrace.)~*/
	IF ~~ THEN REPLY @30 /* ~Schael! What're you doing here?~ */ 
	DO ~
		SetGlobal("XA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XAA3
	  
	IF ~~ THEN REPLY @9 /* ~You're not here to have me arrested again, I hope?~ */ 
	DO ~
		SetGlobal("XA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XAA2
END
//}

//{ Dialog I-2
IF ~
	Global("XA_CorwinContinue", "GLOBAL", 1) // Friend
	!Global("XA_CorwinReunited", "GLOBAL", 1)
~ THEN BEGIN XAA1
	SAY @7 /* ~<CHARNAME>! Thank Tymora...~ */
	IF ~~ THEN REPLY @30 /* ~Schael! What are you doing here?~ */ 
	DO ~
		SetGlobal("XA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO XAA3
	  
	IF ~~ THEN REPLY @9 /* ~You're not here to have me arrested again, I hope?~ */ 
	DO ~
		SetGlobal("XA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO XAA2
END
//}

//{ Dialog I-3
IF ~ 
	Global("XA_CorwinReunited", "GLOBAL", 1)
~
THEN BEGIN XAAJoinAsk
	SAY @35	/* ~<CHARNAME> - what do you need?~ */
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!ReputationLT(Player1,8)
	~
	THEN REPLY @36 /* ~I need you by my side, as always my love. Join me~ */
	GOTO XAAJoinLove
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!ReputationLT(Player1,8)
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO XAAJoinFriend

	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		ReputationLT(Player1,8)
	~
	THEN REPLY @36 /* ~I need you by my side, as always my love. Join me~ */
	GOTO XAAJoin_RepLT7
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		ReputationLT(Player1,8)
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO XAAJoin_RepLT7
	
	IF ~~ THEN REPLY @37 /* ~Nothing at the moment, Schael.~ */
	GOTO XAARejectJoin
END
//}

IF ~~ THEN BEGIN XAAJoin_RepLT7
	SAY @54 /* ~As much as I'd like to help you, I can't. Your reputation precedes you. If you ever clean up your act, you'll know where to find me.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAAJoinLove
	SAY @38 /* ~That's all I needed to hear. Let's go.~ [BD54525]*/
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAAJoinFriend
	SAY @39 /* ~Gladly, my friend.~ [BDCORP4] */
	IF ~~ THEN
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAARejectJoin
	SAY @46 /*  ~Very well. I'll remain here if you need anything.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA2
	SAY @10 /* ~What? No, of course not.~ */
	IF ~~ THEN
	GOTO XAA3
END

IF ~~ THEN BEGIN XAA3
	SAY @12 /* ~The Council has asked that I assist you in your hunt for Irenicus. They want him killed or captured for what he did to Skie.~ [BDCOR2] */

	IF ~~ THEN REPLY @31 /* ~Were the mages able to restore her?~ */
	GOTO XAA4
END

IF ~~ THEN BEGIN XAA4
	SAY @13 /* ~Yes hero, all thanks to you. As a reward, and to help you in the hunt for the wizard, the Dukes have asked me to give you this gold. ~ [BDCOR3] */
	=@43 /* ~(She hands you a small sack full of gold)~ */
	IF ~~ THEN
	DO ~
		GivePartyGold(10000)
		AddExperienceParty(35000)
	~
	GOTO XAA4A
END

IF ~~ THEN BEGIN XAA4A
	SAY @44 // ~I'm ready to leave when you are.~
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 2) /* Romance */
	~ THEN REPLY @32 /* ~Thank you, Schael. Irenicus is a powerful foe. I will need all of the help I can get. But what of Rohma?~ */
	GOTO XAA5
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 2) /* Romance */
	~ THEN REPLY @23 /* ~No, it's too dangerous. I appreciate your willingness to help my love, but I can't risk losing you. Return to Baldur's Gate, and tell the Dukes that vengeance against Irenicus will be mine and mine alone.~ */
	GOTO XAA8
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 1) /* Non-Romance */
	~ THEN REPLY @33 /* ~Thank you, Captain. Irenicus is a powerful foe. I will need all of the help I can get. But what of Rohma?~ */
	GOTO XAA5A
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 1) /* Non-Romance */
	~ THEN REPLY @15 /* ~I'll gladly take the gold, but I don't need your assistance at this time, Captain.~ */
	GOTO XAA8
END

IF ~~ THEN BEGIN XAA5
	SAY @34 /*  My father will look after her for the time being. It is difficult for me to be away from her, but I must fulfil my duty to the Fist and to Baldur's Gate... and to you, love.~ */
	=@17 /* ~<CHARNAME>, my heart broke when I read your letter... I am so sorry for what happened to you, and to Khalid and Dynaheir. If I left with you, maybe you wouldn't have been captured, maybe --~ */
	
	IF ~~ THEN REPLY @18 /* ~Stop it, Schael. There was nothing you could have done, and it is not your fault. Moreover, I shudder to think about what Irenicus would have done to you had you been captured as well.~ */
	GOTO XAA6
	
	IF ~~ THEN REPLY @19 /* ~You should have been at my side, but what matters is that you are here now.~~ */
	GOTO XAA6
END

IF ~~ THEN BEGIN XAA5A
	SAY @16 /*  ~My father will look after her for the time being. It's hard for me to be away from her, but I must fulfil my duty to the Fist and to my city.~ [BDCOR4] */
	IF ~~ THEN
	GOTO XAA6
END

IF ~~ THEN BEGIN XAA6
	SAY @20 /* ~So, what's your decision?~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2) /* Non-Romance */
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO XAAJoinFriend
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2) /* Romance */
	~
	THEN REPLY @22 /* ~My love, with you at my side, nothing can stand against us.~ */
	GOTO XAAKiss
	
	IF ~~ THEN REPLY @23 /* ~No, it's too dangerous. I appreciate your willingness to help, but I can't risk losing you. Return to Baldur's Gate, and tell the Dukes that vengeance against Irenicus will be mine and mine alone.~ */
	GOTO XAA8

END

IF ~~ THEN BEGIN XAAKiss
	SAY @50 /* Come here, hero -~ */
	IF ~~ THEN
	GOTO XAAKissChain
END
IF ~~ THEN BEGIN XAA8
	SAY @45 /* ~<CHARNAME>, I can take care of myself. I thought that you would have recognized that by now. Are you sure that you don't want me to join you?~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2) /* Romance */
	~ 
	THEN REPLY @24 /* ~Yes, I'm sure. Return to Baldur's Gate. When this is over, we will be together my love, I swear it.~ */
	GOTO XAA9
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2) /* Non-Romance */
	~
	THEN REPLY @25 /* ~Yes, I'm sure my friend. Return to Baldur's Gate.~ */
	GOTO XAA10
	
	IF ~~ THEN REPLY @26 /* ~You're right - wait here while I take some time to think this through.~ */
	GOTO XAA11
END

IF ~~ THEN BEGIN XAA9
	SAY @40 /* ~Having to leave your side again.. it hurts. But I understand. ~ */
	
	IF ~
		!Global("XA_GaveCorwinLetter", "GLOBAL", 2)
	~ THEN 
	GOTO XAA9A
	
	IF ~
		Global("XA_GaveCorwinLetter", "GLOBAL", 2)
	~ THEN 
	GOTO XAA9B
END

IF ~~ THEN BEGIN XAA9A
	SAY @47 /* ~Take my amulet. Wear it and know that I love you always, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @42 /* ~I will, dear.~ */
	DO ~
		GiveItemCreate("XAAMULET",LastTalkedToBy(Myself),0,0,0)
	~
	GOTO XAA12
END

IF ~~ THEN BEGIN XAA9B
	SAY @59 /*  ~Wear my amulet and know that I love you always, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @42 /* ~I will, dear.~ */
	GOTO XAA12
END

IF ~~ THEN BEGIN XAA10
	SAY @29 /* ~Farewell <CHARNAME>, and good hunting.~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XAA11
	SAY @27 /* ~Very well. I await your decision.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinJoined", "LOCALS", 0)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA12
	SAY @41 /* ~(You share a long and somber embrace)~ */
	=@58 /* ~Be careful, my love. Come back to me soon.~ [BDCOR10]~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XAAKissEnd
	SAY @52 /* ~We have work to do. Let's go.~ [XA100015]*/
	
	IF ~~ THEN REPLY @53  /* ~Gladly, dear.~*/
	DO ~
		ChangeAIScript("XACORSCR", OVERRIDE)
		SetGlobal("XA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

CHAIN
	IF ~~ THEN XACORWIN XAAKissChain
		@51 /* ~(You share a passionate embrace and kiss.)~ */
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@55 /* ~Oh my... that's s-so romantic!~ */
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@56 /* ~Ah, the lovers' embrace - the inspiration for many a playwright, myself included.~  */
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@57 /* ~Gorion would be so happy for you, <CHARNAME>...~ */
END XACORWIN XAAKissEnd
