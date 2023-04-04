//LCCORWIN
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~LCCORWIN~

IF ~
	!InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_PC
	SAY @49 /* ~I need to speak to <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("LCA_CorwinContinue", "GLOBAL", 2) 
	!Global("LCA_CorwinReunited", "GLOBAL", 1)
~ THEN BEGIN LCA0
	SAY @7 /* ~<CHARNAME>! Thank Tymora...~ */
	=@8 /* ~I've missed you... (You share a passionate embrace and kiss)~ */
	IF ~~ THEN REPLY @30 /* ~Schael! What are you doing here?~ */ 
	DO ~
		SetGlobal("LCA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA3
	  
	IF ~~ THEN REPLY @9 /* ~You're not here to have me arrested again, I hope?~ */ 
	DO ~
		SetGlobal("LCA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA2
END

IF ~
	Global("LCA_CorwinContinue", "GLOBAL", 1) // Friend
	!Global("LCA_CorwinReunited", "GLOBAL", 1)
~ THEN BEGIN LCA1
	SAY @7 /* ~<CHARNAME>! Thank Tymora...~ */
	IF ~~ THEN REPLY @30 /* ~Schael! What are you doing here?~ */ 
	DO ~
		SetGlobal("LCA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO LCA3
	  
	IF ~~ THEN REPLY @9 /* ~You're not here to have me arrested again, I hope?~ */ 
	DO ~
		SetGlobal("LCA_CorwinReunited", "GLOBAL", 1)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO LCA2
END

IF ~ 
	Global("LCA_CorwinReunited", "GLOBAL", 1)
~
THEN BEGIN LCAJoinAsk
	SAY @35	/* ~<CHARNAME> - what do you need?~ */
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!ReputationLT(Player1,8)
	~
	THEN REPLY @36 /* ~I need you by my side, as always my love. Join me~ */
	GOTO LCAJoinLove
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!ReputationLT(Player1,8)
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO LCAJoinFriend

	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		ReputationLT(Player1,8)
	~
	THEN REPLY @36 /* ~I need you by my side, as always my love. Join me~ */
	GOTO LCAJoin_RepLT7
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		ReputationLT(Player1,8)
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO LCAJoin_RepLT7
	
	IF ~~ THEN REPLY @37 /* ~Nothing at the moment, Schael.~ */
	GOTO LCARejectJoin
END

IF ~~ THEN BEGIN LCAJoin_RepLT7
	SAY @54 /* ~As much as I'd like to help you, I can't. Your reputation precedes you. If you ever clean up your act, you'll know where to find me.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCAJoinLove
	SAY @38 /* ~That's all I needed to hear. Let's go.~ [BD54525]*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCAJoinFriend
	SAY @39 /* ~Gladly, my friend.~ [BDCORP4] */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCARejectJoin
	SAY @46 /*  ~Very well. I'll remain here if you need anything.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA2
	SAY @10 /* ~What? No, of course not.~ */
	IF ~~ THEN
	GOTO LCA3
END

IF ~~ THEN BEGIN LCA3
	SAY @12 /* ~The Council has asked that I assist you in your hunt for Irenicus. They want him killed or captured for what he did to Skie.~ [BDCOR2] */

	IF ~~ THEN REPLY @31 /* ~Were the mages able to restore her?~ */
	GOTO LCA4
END

IF ~~ THEN BEGIN LCA4
	SAY @13 /* ~Yes hero, all thanks to you. As a reward, and to help you in the hunt for the wizard, the Dukes have asked me to give you this gold. ~ [BDCOR3] */
	=@43 /* ~(She hands you a small sack full of gold)~ */
	IF ~~ THEN
	DO ~
		GivePartyGold(10000)
		AddExperienceParty(35000)
	~
	GOTO LCA4A
END

IF ~~ THEN BEGIN LCA4A
	SAY @44 // ~I'm ready to leave when you are.~
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 2) /* Romance */
	~ THEN REPLY @32 /* ~Thank you, Schael. Irenicus is a powerful foe. I will need all of the help I can get. But what of Rohma?~ */
	GOTO LCA5
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 2) /* Romance */
	~ THEN REPLY @23 /* ~No, it's too dangerous. I appreciate your willingness to help my love, but I can't risk losing you. Return to Baldur's Gate, and tell the Dukes that vengeance against Irenicus will be mine and mine alone.~ */
	GOTO LCA8
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 1) /* Non-Romance */
	~ THEN REPLY @33 /* ~Thank you, Captain. Irenicus is a powerful foe. I will need all of the help I can get. But what of Rohma?~ */
	GOTO LCA5A
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 1) /* Non-Romance */
	~ THEN REPLY @15 /* ~I'll gladly take the gold, but I don't need your assistance at this time, Captain.~ */
	GOTO LCA8
END

IF ~~ THEN BEGIN LCA5
	SAY @34 /*  My father will look after her for the time being. It is difficult for me to be away from her, but I must fulfil my duty to the Fist and to Baldur's Gate... and to you, love.~ */
	=@17 /* ~<CHARNAME>, my heart broke when I read your letter... I am so sorry for what happened to you, and to Khalid and Dynaheir. If I left with you, maybe you wouldn't have been captured, maybe --~ */
	
	IF ~~ THEN REPLY @18 /* ~Stop it, Schael. There was nothing you could have done, and it is not your fault. Moreover, I shudder to think about what Irenicus would have done to you had you been captured as well.~ */
	GOTO LCA6
	
	IF ~~ THEN REPLY @19 /* ~You should have been at my side, but what matters is that you are here now.~~ */
	GOTO LCA6
END

IF ~~ THEN BEGIN LCA5A
	SAY @16 /*  ~My father will look after her for the time being. It's hard for me to be away from her, but I must fulfil my duty to the Fist and to my city.~ [BDCOR4] */
	IF ~~ THEN
	GOTO LCA6
END

IF ~~ THEN BEGIN LCA6
	SAY @20 /* ~So, what's your decision?~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2) /* Non-Romance */
	~ THEN REPLY @21 /* ~Your assistance, as always, is welcome Captain. Join me.~ */
	GOTO LCAJoinFriend
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2) /* Romance */
	~
	THEN REPLY @22 /* ~My love, with you at my side, nothing can stand against us.~ */
	GOTO LCAKiss
	
	IF ~~ THEN REPLY @23 /* ~No, it's too dangerous. I appreciate your willingness to help, but I can't risk losing you. Return to Baldur's Gate, and tell the Dukes that vengeance against Irenicus will be mine and mine alone.~ */
	GOTO LCA8

END

IF ~~ THEN BEGIN LCAKiss
	SAY @50 /* Come here, hero -~ */
	IF ~~ THEN
	GOTO LCAKissChain
END
IF ~~ THEN BEGIN LCA8
	SAY @45 /* ~<CHARNAME>, I can take care of myself. I thought that you would have recognized that by now. Are you sure that you don't want me to join you?~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2) /* Romance */
	~ 
	THEN REPLY @24 /* ~Yes, I'm sure. Return to Baldur's Gate. When this is over, we will be together my love, I swear it.~ */
	GOTO LCA9
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2) /* Non-Romance */
	~
	THEN REPLY @25 /* ~Yes, I'm sure my friend. Return to Baldur's Gate.~ */
	GOTO LCA10
	
	IF ~~ THEN REPLY @26 /* ~You're right - wait here while I take some time to think this through.~ */
	GOTO LCA11
END

IF ~~ THEN BEGIN LCA9
	SAY @40 /* ~Having to leave your side again.. it hurts. But I understand. ~ */
	=@47 /* ~Take my amulet. Wear it and know that I love you always, <CHARNAME>.~ */
	IF ~~ THEN REPLY @42 /* ~I will, dear.~ */
	DO ~
		GiveItemCreate("CorwAm",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA12
END

IF ~~ THEN BEGIN LCA10
	SAY @29 /* ~Farewell <CHARNAME>, and good hunting.~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA11
	SAY @27 /* ~Very well. I await your decision.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinJoined", "LOCALS", 0)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA12
	SAY @41 /* ~(You share a long and somber embrace) Be careful, my love. Come back to me soon.~ */
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCAKissEnd
	SAY @53 /* ~Gladly, my dear.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRejoinProcessed", "GLOBAL", 1)
	~
	EXIT
END

CHAIN
	IF ~~ THEN LCCORWIN LCAKissChain
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
END
++@52+ LCAKissEnd /* ~Let's go, love. We have work to do.~ */