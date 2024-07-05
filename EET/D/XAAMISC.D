//Changes to miscellaneous dialogs (BG1 / SoA / ToB)
//Generally, this file will contain modifications less than 100 lines long. Modifications 100 lines or longer will typically have their own file.
//Daniel Valle
//dan@danielvalle.net

/* NOTE ON THE USE OF EXTEND_BOTTOM 
	When using EXTEND_BOTTOM to add reply options to a state that originally did not have a reply option, such as the following:
	
	IF ~~ THEN BEGIN StateLabel
		SAY @0  
		
		IF ~~ THEN
		GOTO OtherStateLabel
	END
	
	You need to ADD_TRANS_TRIGGER to the original transition. The trigger you add should be the negation of the trigger associated with your EXTEND_BOTTOM. For example:
	
	ADD_TRANS_TRIGGER DIALOG StateLabel
	~
		!Gender(Player1, MALE)
	~
	
	EXTEND_BOTTOM DIALOG StateLabel
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @1 
	END

	THIS IS NOT NECESSARY WHEN YOUR EXTEND_BOTTOM DOES NOT INCLUDE A REPLY.
*/

//{ Altered Transitions	

	ADD_TRANS_TRIGGER HABREGA 13
	~
		!PartyHasItem("XASTDAG")
	~
	EXTEND_BOTTOM HABREGA 0
		IF ~
			GlobalGT("XA_SlaveKidsFreed", "GLOBAL", 0)
			GlobalLT("XA_SlavesBrega", "LOCALS", 1)
		~ THEN REPLY @328  /*~Inspector, we freed some children that were being held captive in the slaver stockade. Did they make it back here safely?~ */
		DO ~
			SetGlobal("XA_SlavesBrega", "LOCALS", 1)
		~
		GOTO XA_KidsFreed1
	END
	EXTEND_BOTTOM HABREGA 13
		IF ~
			PartyHasItem("XASTDAG")
			Global("XA_HelpBrega", "GLOBAL", 1)
		~ THEN REPLY @324 /* ~About the dagger — you said you'd send it to Baldur's Gate if I helped solve your case.~*/
		DO ~
			AddexperienceParty(45000)
			ActionOverride("Faraji",DestroySelf())
			SetGlobal("MurdersSolved","GLOBAL",1)
			GiveGoldForce(500)
			ReputationInc(1)
		~
		GOTO M30
		
		IF ~
			PartyHasItem("XASTDAG")
			!Global("XA_HelpBrega", "GLOBAL", 1)
		~ THEN REPLY @325 /*~I need to send this dagger to Baldur's Gate. I believe it is the weapon used to murder the daughter of one of the Grand Dukes.~ */
		DO ~
			AddexperienceParty(45000)
			ActionOverride("Faraji",DestroySelf())
			SetGlobal("MurdersSolved","GLOBAL",1)
			GiveGoldForce(500)
			ReputationInc(1)
		~
		GOTO M30
	END
	
	ADD_TRANS_ACTION BDROHMA
	BEGIN 0 END
	BEGIN 0 1 2 3 END
	~
		SetGlobal("XA_MetRohma", "GLOBAL", 1)
	~

	ADD_TRANS_ACTION BDSCHAEL
	BEGIN 184 186 187 END
	BEGIN 0 END
	~
		SetGlobal("XA_LCA_StoppedNobles", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION BOY3 
	BEGIN 0 END
	BEGIN 0 END 
	~
		IncrementGlobal("XA_SlaveKidsFreed", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION GIRL1 
	BEGIN 1 END
	BEGIN 0 END 
	~
		IncrementGlobal("XA_SlaveKidsFreed", "GLOBAL", 1)
	~

	ADD_TRANS_ACTION BDCAELAR
	BEGIN 87 END
	BEGIN 0 END
	~
		SetGlobal("XA_CaelarStayedInAvernus","GLOBAL",1)
	~

	ADD_TRANS_ACTION BDCORWIJ
	BEGIN 280 END
	BEGIN 0 END
	~
		SetGlobal("XA_HappyEnding","GLOBAL",1)
	~
	
	ADD_TRANS_ACTION KERRAC
	BEGIN 3 4 5 6 END
	BEGIN 0 END
	~
		SetGlobal("XA_MetKerrac","GLOBAL",1)
	~
	
	ADD_TRANS_ACTION BDCORWIJ
	BEGIN 319 320 END
	BEGIN 0 END
	~
		SetGlobal("XA_CorwinGaveEarrings", "GLOBAL", 1)
		AddJournalEntry(@207, INFO)
	~
	
	ADD_TRANS_ACTION FORTHE
	BEGIN 9 11 END
	BEGIN 0 END
	~
		SetGlobal("XA_HelpedForthel_BG1", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION PPIRENI2
	BEGIN 36 END
	BEGIN 0 END
	~
		SetGlobal("XA_RescueCorwin1516", "GLOBAL", 1)
	~
	
	ADD_STATE_TRIGGER BDIMOEN 129
	~
		Global("bd_player_exiled","global",0)
	~
	
	EXTEND_BOTTOM JARLAXLE 0
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN
		EXTERN XACORWIJ XA_JARLAXLE_0
	END

	EXTEND_BOTTOM UDPHAE01 88
		IF ~
			!IsValidForPartyDialogue("Jaheira")
			!IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("XACORWIN")
		~ THEN 
		DO ~
			SetGlobal("SolaufeinJob","GLOBAL",8)
			SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
			SetGlobal("udPhaTimerOn","GLOBAL",1)
		~ 
		UNSOLVED_JOURNAL #23485
		EXTERN XACORWIJ XA_UDPHAE01_88
	END
	
	//{ WMART2
	EXTEND_BOTTOM WMART2 1
		IF ~
			OR(2)
				IsGabber(Player1)
				IsGabber("XACORWIN")
			IsValidForPartyDialog("XACORWIN")
			InMyArea("XACORWIN")
			GlobalLT("XA_LC_CorwinArtifacts", "LOCALS", 1)
		~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinArtifacts", "LOCALS", 1)
		~
		EXTERN XACORWIJ XA_CorwinArtifacts_Chain
	END
	//}

	
	//{ SHOP06_
	EXTEND_BOTTOM SHOP06_ 0
		IF ~
			GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
			Global("XA_WantToGetDoll", "GLOBAL", 1)
			InPartySlot(LastTalkedToBy, 0)
		~ 
		THEN REPLY @357 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
		GOTO M0
	END
	
	APPEND SHOP06_
		IF ~~ THEN BEGIN M0
			SAY @358 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
			IF ~
				PartyGoldGT(2)
			~
			THEN REPLY @359 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
			DO ~
				TakePartyGold(3)
				SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
			~
			GOTO M1
			
			IF ~
				PartyGoldLT(3)
			~
			THEN REPLY @360 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
			GOTO M2
			
			IF ~~ THEN REPLY @361 /* ~No thanks. Another time, perhaps.~ */
			GOTO M3
		END
	
		IF ~~ THEN BEGIN M1
			SAY @362 /* ~A pleasure doing business with you.~ */
			IF ~~ THEN
			DO ~
				GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
				SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
			~
			EXIT
		END
		
		IF ~~ THEN BEGIN M2
			SAY @363 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
			IF ~~ THEN
			EXIT
		END
		
		IF ~~ THEN BEGIN M3
			SAY @361 /* ~No thanks. Another time, perhaps.~ */
			IF ~~ THEN
			EXIT
		END
	END
	//}

	//{ SHOP08_
	EXTEND_BOTTOM SHOP08_ 0
		IF ~
			GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
			Global("XA_WantToGetDoll", "GLOBAL", 1)
			InPartySlot(LastTalkedToBy, 0)
		~ 
		THEN REPLY @357 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
		GOTO M0
	END
	
	
	
	APPEND SHOP08_
		IF ~~ THEN BEGIN M0
			SAY @358 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
			IF ~
				PartyGoldGT(2)
			~
			THEN REPLY @359 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
			DO ~
				TakePartyGold(3)
				SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
			~
			GOTO M1
			
			IF ~
				PartyGoldLT(3)
			~
			THEN REPLY @360 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
			GOTO M2
			
			IF ~~ THEN REPLY @361 /* ~No thanks. Another time, perhaps.~ */
			GOTO M3
		END
	
		IF ~~ THEN BEGIN M1
			SAY @362 /* ~A pleasure doing business with you.~ */
			IF ~~ THEN
			DO ~
				GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
				SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
			~
			EXIT
		END
		
		IF ~~ THEN BEGIN M2
			SAY @363 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
			IF ~~ THEN
			EXIT
		END
		
		IF ~~ THEN BEGIN M3
			SAY @361 /* ~No thanks. Another time, perhaps.~ */
			IF ~~ THEN
			EXIT
		END
	END
	//}
	
	//{ LUCKY
	EXTEND_BOTTOM LUCKY 0
		IF ~
			GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
			Global("XA_WantToGetDoll", "GLOBAL", 1)
			InPartySlot(LastTalkedToBy, 0)
		~ 
		THEN REPLY @357 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
		GOTO M0
	END
	
	APPEND LUCKY
		IF ~~ THEN BEGIN M0
			SAY @358 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
			IF ~
				PartyGoldGT(2)
			~
			THEN REPLY @359 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
			DO ~
				TakePartyGold(3)
				SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
			~
			GOTO M1
			
			IF ~
				PartyGoldLT(3)
			~
			THEN REPLY @360 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
			GOTO M2
			
			IF ~~ THEN REPLY @361 /* ~No thanks. Another time, perhaps.~ */
			GOTO M3
		END
	
		IF ~~ THEN BEGIN M1
			SAY @362 /* ~A pleasure doing business with you.~ */
			IF ~~ THEN
			DO ~
				GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
				SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
			~
			EXIT
		END
		
		IF ~~ THEN BEGIN M2
			SAY @363 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
			IF ~~ THEN
			EXIT
		END
		
		IF ~~ THEN BEGIN M3
			SAY @361 /* ~No thanks. Another time, perhaps.~ */
			IF ~~ THEN
			EXIT
		END
	END
	//}
	
	
	//{ AMBAR01
	EXTEND_TOP AMBAR01 3
		IF ~
			GlobalLT("XA_AskCourier", "LOCALS", 1)
			See("XAHAMZA")
		~ THEN REPLY @355
		DO ~
			SetGlobal("XA_AskCourier", "LOCALS", 1)
		~
		GOTO XA_AMBAR01_Hamza
	END
	
	EXTEND_TOP AMBAR01 21
		IF ~
			GlobalLT("XA_AskCourier", "LOCALS", 1)
			See("XAHAMZA")
		~ THEN REPLY @355
		DO ~
			SetGlobal("XA_AskCourier", "LOCALS", 1)
		~
		GOTO XA_AMBAR01_Hamza
	END
	
	APPEND AMBAR01
		IF ~~ THEN BEGIN XA_AMBAR01_Hamza
			SAY @356
			
			IF ~~ THEN
			GOTO 21
		END
	END
	//}
	
	//{ AMTGEN01
	EXTEND_BOTTOM AMTGEN01 0
		IF ~
			IsValidForPartyDialog("XACORWIN")
		~ THEN EXTERN XACORWIJ XA_GeneralTalk_Chain
	END
	//}
	
	//{ FLAMGG
	ADD_STATE_TRIGGER FLAMGG 0
	~
		GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
	~
	
	ADD_STATE_TRIGGER FLAMGG 3
	~
		GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
	~
	
	APPEND FLAMGG
		IF ~
			Global("XA_ReturnToBG", "GLOBAL", 1)
			GlobalLT("XA_TollPaid", "LOCALS", 1)
		~ THEN BEGIN XA_RBG
			SAY @349  /* ~Your entrance tax has been paid for by Duke Entar. Welcome back, <CHARNAME>.~*/
			
			IF ~~ THEN REPLY @350  /* ~Thank you.~*/
			DO ~
				SetGlobal("XA_TollPaid", "LOCALS", 1)
			~
			EXIT
			
			IF ~~ THEN REPLY @351  /* ~All six gold? How generous of him.~ */
			DO ~
				SetGlobal("XA_TollPaid", "LOCALS", 1)
			~
			EXIT
			
		END
		
		IF ~
			Global("XA_ReturnToBG", "GLOBAL", 1)
			Global("XA_TollPaid", "LOCALS", 1)
			TimeOfDay(NIGHT)
		~ THEN BEGIN XA_RBG_Paid
			SAY @352  /* ~Good evening.~*/
			
			IF ~~ THEN EXIT
		END
		IF ~
			Global("XA_ReturnToBG", "GLOBAL", 1)
			Global("XA_TollPaid", "LOCALS", 1)
			!TimeOfDay(NIGHT)
		~ THEN BEGIN XA_RBG_Paid
			SAY @353  /* ~Good day.~*/
			
			IF ~~ THEN EXIT
		END
	END
	//}
	
	//{ BDBELT
	ADD_TRANS_ACTION BDBELT
	BEGIN 0 1 END
	BEGIN 0 END
	~
		SetGlobal("XA_Trial","GLOBAL",1)
	~
	//}

	//{ BDCORWIJ
	ADD_TRANS_ACTION BDCORWIJ 
	BEGIN 235 END
	BEGIN 0 1 3 END
	~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION BDCORWIJ  
	BEGIN 245 END
	BEGIN 0 1 END
	~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	
	ALTER_TRANS BDCORWIJ
	BEGIN 297 END
	BEGIN 0 1 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_Kiss~
	END
	//}
	
	//{ LARZE
	ADD_TRANS_ACTION LARZE
	BEGIN 3 END
	BEGIN 1 END
	~
		SetGlobal("XA_TrickedLarze","GLOBAL",1)
	~
	//}
	
	//{ ALDETH
	ADD_TRANS_ACTION ALDETH
	BEGIN 23 END
	BEGIN 1 END
	~
		SetGlobal("XA_AldethFF","GLOBAL",1)
	~
	
	ADD_TRANS_ACTION ALDETH
	BEGIN 27 END
	BEGIN 0 END
	~
		SetGlobal("XA_HelpAldeth","GLOBAL",2)
	~
	//}
	
	
	//{ VAI
	ADD_TRANS_ACTION VAI
	BEGIN 6 END
	BEGIN 0 END
	~
		IncrementGlobal("XA_CorwinOpinionOfPlayer","GLOBAL",2)
	~
	//}

	//{ BDBENCE
	ALTER_TRANS BDBENCE
	BEGIN 85 END
	BEGIN 0 END
	BEGIN
		"ACTION"
		~
			SetGlobal("bd_plot","global",650)
			ActionOverride("bdschae2", SetDialog("XABDSCH2"))
			SetDialog("XABDBENC")
			ActionOverride("bdschae2", StartDialog("XABDSCH2", Player1))
		~
	END

	ALTER_TRANS BDBENCE
	BEGIN 85 END
	BEGIN 0 END
	BEGIN
		"EPILOGUE"
		~EXIT~
	END
	//}
	
//}	
	

	//{ CALAHA
	EXTEND_BOTTOM CALAHA 15
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN 
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_CALAHA_15
	END
	//}
	
	//{ HABREGA
	APPEND HABREGA
		IF ~
			True()
		~
		THEN BEGIN XA_BregaKidsFreed
			SAY #30605 /* ~Is there somethin' that ye need, citizen?~ [BREGAX02] */
			
			COPY_TRANS HABREGA 0
			
			IF ~
				GlobalGT("XA_SlaveKidsFreed", "GLOBAL", 0)
				GlobalLT("XA_SlavesBrega", "LOCALS", 1)
			~ THEN REPLY @328  /*~Inspector, we freed some children that were being held captive in the slaver stockade. Did they make it back here safely?~ */
			DO ~
				SetGlobal("XA_SlavesBrega", "LOCALS", 1)
			~
			GOTO XA_KidsFreed1
		END
		
		IF ~~ THEN BEGIN XA_KidsFreed1
			SAY @329  /* ~They did. Efforts are being made to locate their parents, though to be perfectly honest I doubt we'll be successful.~*/
			
			IF ~~ THEN REPLY @331 /* ~I see...~*/
			GOTO XA_KidsFreed_END
			
			IF ~~ THEN REPLY @330 /* ~What will happen to them if their families cannot be found?~*/
			GOTO XA_KidsFreed2
		END
		
		IF ~~ THEN BEGIN XA_KidsFreed2
			SAY @332 /* ~Worry not. The matriarch of one of the more respected families heard of their plight and has expressed a willingness to adopt them. They will be spared the foster system and be well taken care of.~*/
			
			IF ~~ THEN
			GOTO XA_KidsFreed_END
		END
		
		IF ~~ THEN BEGIN XA_KidsFreed_END
			SAY @333  /* ~Thank you for your service, citizen.~*/
			
			IF ~~ THEN
			DO ~
				AddexperienceParty(20000)
				ReputationInc(1)
			~
			EXIT
		END
	END
	
	//}
	
	//{ PPGUY01
	ADD_TRANS_TRIGGER PPGUY01 0
	~
		!Global("SaradushSacked","GLOBAL",1)
	~
	DO 4
	
	EXTEND_BOTTOM PPGUY01 0
		IF ~
			!Global("XA_KanaDream", "GLOBAL", 4)
			OR(2)
				Global("XA_ST_Kanaglym", "GLOBAL", 1)
				Global("XA_AskCespenarDagger", "GLOBAL", 2)
			OR(3)
				PartyHasItem("XASTDAG")
				PartyHasItem("XASTDAGB")
				PartyHasItem("XASTDAGD")
		~ THEN REPLY @92  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			Global("XA_KanaDream", "GLOBAL", 4)
		~ THEN REPLY @92  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @93 /* ~Send me to Caelar Argent, in Avernus.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_Avernus
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_BringCaelar", "LOCALS", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @100 /* ~~Bring me Caelar Argent.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_BringCaelar
	END
	
	EXTEND_BOTTOM PPGUY01 4
		IF ~
			!Global("XA_KanaDream", "GLOBAL", 4)
			OR(2)
				Global("XA_ST_Kanaglym", "GLOBAL", 1)
				Global("XA_AskCespenarDagger", "GLOBAL", 2)
			OR(3)
				PartyHasItem("XASTDAG")
				PartyHasItem("XASTDAGB")
				PartyHasItem("XASTDAGD")
		~ THEN REPLY @92  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			Global("XA_KanaDream", "GLOBAL", 4)
		~ THEN REPLY @92  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @93 /* ~Send me to Caelar Argent, in Avernus.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_Avernus
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_BringCaelar", "LOCALS", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @100 /* ~~Bring me Caelar Argent.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_BringCaelar
	END
	
	APPEND SALVANAS
		IF ~
			!InPartySlot(LastTalkedToBy,0)
			Name("XACORWIN", LastTalkedToBy)
		~ THEN BEGIN XA_MeetCorwin
			SAY @327 /*~My, oh my...~*/
			
			IF ~~ THEN 
			EXTERN XACORWIB XA_SavanasCorwinChain
		END
	END
	APPEND PPGUY01
		IF ~~ THEN BEGIN XA_Avernus_KnowRisk
			SAY @16
			
			IF ~~ THEN
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO4500")
			~
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_BringCaelar
			SAY @101 /*~Impossible. Though it is certain that she is in Avernus, her precise location cannot be determined.~*/
			
			IF ~~ THEN REPLY @102 /*~Then send me to Avernus. I'll find her and bring her back.~*/
			GOTO XA_Avernus
			
			IF ~~ THEN REPLY @103 /*~Nevermind, then.~*/
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_Avernus
			SAY @94 /* ~Though her precise location cannot be ascertained, she is likely being held in what was once Belhifet's tower. The tower is protected by a magical barrier that is fueled by the life force of an exceptionally powerful demonic presence. It is for this reason that you cannot be sent directly to her, nor can she be brought here. Be warned, child of Bhaal. Once you enter the tower, the barrier may interfere with your ability to teleport back to this Pocket Plane.~ */
			
			IF ~~ THEN REPLY @95 /* ~I understand the risk. Send me to Avernus.~*/
			GOTO XA_Avernus_2
			
			IF ~~ THEN REPLY @96 /*~On second thought, I don't want to go there.~*/
			EXIT
			
			IF ~
				GlobalLT("XA_CantGoBack", "LOCALS", 1)
			~ THEN REPLY @97 /*~If I destroy the presence, then I'll be able to return, right?~*/
			DO ~
				SetGlobal("XA_CantGoBack", "LOCALS", 1)
			~
			GOTO XA_AvernusReturn
		END
		
		IF ~~ THEN BEGIN XA_AvernusReturn
			SAY @98 /*~That is correct.~*/
			
			IF ~~ THEN REPLY @95 /* ~I understand the risk. Send me to Avernus.~*/
			GOTO XA_Avernus_2
			
			IF ~~ THEN REPLY @96 /*~On second thought, I don't want to go there.~*/
			EXIT
		END
		
		IF ~~ THEN BEGIN XA_Avernus_2
			SAY @99 /* ~As you wish. You will be sent to the steps leading up to the tower.~ */
			
			IF ~~ THEN
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO4500")
			~
			EXIT
		END
		
		IF ~~ THEN BEGIN XA_Kanaglym
			SAY #71071 /*  ~As you wish.~ */
			
			IF ~~ THEN 
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO5300")
			~
			EXIT
		END
	END
	//}
	
	//{ FATESP
		//{ FATESP State 6 Trans 24
		ALTER_TRANS FATESP
		BEGIN 6 END
		BEGIN 24 END
		BEGIN
			"TRIGGER"
			~
				Global("CORWINSummoned","GLOBAL",0)
				OR(2)
					Dead("Corwin")
					Dead("XACORWIN")
			~
		END
		//}
		
		//{ FATESP State 6 Trans 25
		ALTER_TRANS FATESP
		BEGIN 6 END
		BEGIN 25 END
		BEGIN
			"TRIGGER"
			~
				Global("CORWINSummoned","GLOBAL",0)
				GlobalLT("XA_CorwinInPartyBG2", "GLOBAL", 1)
				!Dead("Corwin")
				!Dead("XACORWIN")
			~
		END
		//}
		
		//{ FATESP State 6 Trans 26
		ALTER_TRANS FATESP
		BEGIN 6 END
		BEGIN 26 END
		BEGIN
			"TRIGGER"
			~
				Global("CORWINSummoned","GLOBAL",0)
				Global("XA_CorwinInPartyBG2", "GLOBAL", 1)
				!Dead("Corwin")
				!Dead("XACORWIN")
			~
		END
		//}
	//}
	

//}

	
	//{ WSMITH01
	ADD_TRANS_TRIGGER WSMITH01 36
	~
		!PartyHasItem("XACORBOW")
	~
	DO 0
	
	EXTEND_BOTTOM WSMITH01 36
		IF ~
			PartyHasItem("XACORBOW")
			IsGabber("XACORWIN")
		~ THEN REPLY @410  /* ~What about my bow? Can you replace the existing string with Gesen's?~*/
		GOTO XA_LC_CorwinBowGesen
		
		IF ~
			PartyHasItem("XACORBOW")
			!IsGabber("XACORWIN")
		~ THEN REPLY @411  /* ~What about Corwin's bow? Can you replace the existing string with Gesen's?*/
		GOTO XA_LC_CorwinBowGesen
	END
	
	EXTEND_BOTTOM WSMITH01 37
		IF ~
			PartyHasItem("XACORBOW")
			IsGabber("XACORWIN")
		~ THEN REPLY @410  /* ~What about my bow? Can you replace the existing string with Gesen's?~*/
		GOTO XA_LC_CorwinBowGesen
		
		IF ~
			PartyHasItem("XACORBOW")
			!IsGabber("XACORWIN")
		~ THEN REPLY @411  /* ~What about Corwin's bow? Can you replace the existing string with Gesen's?*/
		GOTO XA_LC_CorwinBowGesen
	END
	
	APPEND WSMITH01
		IF ~~ THEN BEGIN XA_LC_CorwinBowGesen
			SAY @412 /* ~Aye, let me have a look at that...~*/
			
			= @413 /* ~Hmm... 'tis a finely crafted weapon to be sure, but Gesen's string was meant for a short bow, not a long bow. I can replace the string, yes, but the weapon would lose some of it's range.~*/
			
			IF ~~ THEN REPLY @416  /* ~I'm interested — what would be involved in the replacement?~ */
			GOTO XA_LC_CorwinBowGesen_Replace
			
			IF ~~ THEN REPLY @414 /*~How much of it's range would be lost, do you think?~ */
			GOTO XA_LC_CorwinBowGesen_RangeLoss
			
			IF ~~ THEN REPLY #59755 /* ~No, I'm not interested. Anything else of use?~ */ 
			GOTO 38
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinBowGesen_RangeLoss
			SAY @415  /* ~A third, or thereabouts. A worthwhile trade-off, methinks.~ */
			
			IF ~~ THEN REPLY @416  /* ~I'm interested — what would be involved in the replacement?~ */
			GOTO XA_LC_CorwinBowGesen_Replace
			
			IF ~~ THEN REPLY #59755 /* ~No, I'm not interested. Anything else of use?~ */ 
			GOTO 38
		END
		
		IF ~~ THEN BEGIN XA_LC_CorwinBowGesen_Replace
			SAY #59784 /* ~Two things, me friend. It will cost ye 7,500 gp for the work, no less, and without an apprentice, ye'll have to stay here a full day and help me run the forge.~ */
			IF ~  
				PartyGoldGT(7499)
			~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ 
			DO ~
				TakePartyGold(7500)
				DestroyGold(7500)
				SetGlobal("XA_Cromwell_CorwinBow", "GLOBAL", 1)
			~
			GOTO 56
			
			IF ~~ THEN REPLY #59787 /* ~No, I don't think so. Do I have anything else useful?~ */ 
			GOTO 38
		END
	END
	//}
	
	

//{ FINSOL01
	EXTEND_BOTTOM FINSOL01 5
		IF ~
			!Dead("XACORWIN")
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		~ THEN REPLY @73 /*~Before I decide anything, tell me — does my child also carry the essence?~*/
		GOTO XA_Twins
	END
	
	EXTEND_BOTTOM FINSOL01 27  /* Player must make a choice */
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ EXTERN XACORWIJ XA_Choice_NonRomance
	
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ EXTERN XACORWIJ XA_Choice
		
		IF ~
			IsValidForPartyDialogue("XACAELAR")
		~ EXTERN XACAELAJ XA_Choice
	END
	
	EXTEND_BOTTOM FINSOL01 29 /* Player chose godhood - evil */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 30 /* Player chose godhood - neutral */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 31 /* Player chose godhood - good */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACORWIJ XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 32 /* Player chose to remain mortal */
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCNotGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCNotGod", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_StayMortal
	END
	
	APPEND FINSOL01
		IF ~~ THEN BEGIN XA_Twins
			SAY @74 /* ~No. The children growing in your companion's womb are free of the taint of Bhaal.~ */
			
			IF ~~ THEN REPLY @80 /*~Wait... children? You mean...~*/
			GOTO XA_Twins3A
			
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN
			EXTERN XACORWIJ XA_Twins2
		END
		
		IF ~~ THEN BEGIN XA_Twins3 
			SAY @76 /* ~Yes, I can see your future clearly, child. You will give birth to fraternal twins.~*/
			
			IF ~~ THEN
			DO ~
				SetGlobal("XA_CorwinTwins", "GLOBAL", 1)
			~
			EXTERN XACORWIJ XA_Twins4
		END
		
		IF ~~ THEN BEGIN XA_Twins3A
			SAY @79 /* ~Yes, her future is clear to me, child. She will give birth to fraternal twins. Now, let us get back to the matter at hand. A choice lies before you — one that will shape the future of the planes.~*/
			COPY_TRANS FINSOL01 5
		END
		
		IF ~~ THEN BEGIN XA_Twins5
			SAY @78 /* ~Enough. Let us get back to the matter at hand. <CHARNAME>, a choice lies before you. One that will shape the future of the planes.~ */
			COPY_TRANS FINSOL01 5
		END
	END
//}

//{ BOTSMITH
	ADD_STATE_TRIGGER BOTSMITH 2
	~
		Global("XA_ItemMaker","GLOBAL",0)
	~
	
	ADD_TRANS_TRIGGER BOTSMITH 78
	~
		!PartyHasItem("XACORBOW")
		!PartyHasItem("XACORBO3")
	~
	DO 0
	
	EXTEND_BOTTOM BOTSMITH 22  /* Has Eye and Purifier*/
		IF ~
			PartyHasItem("XASW1HCA")
		~
		THEN REPLY @405  /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
		GOTO XA_LC_AstersEdge1
	END
	
	EXTEND_BOTTOM BOTSMITH 30  /* Has Eye and Avenger*/
		IF ~
			PartyHasItem("XASW1HCA")
		~
		THEN REPLY @405  /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
		GOTO XA_LC_AstersEdge2
	END
	
	EXTEND_BOTTOM BOTSMITH 78  /* Don't have Darkfire or Taralash */
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~ 
		THEN REPLY @89 /* ~Understood.~*/
		GOTO 82
	
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @39 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
		
	END

	EXTEND_BOTTOM BOTSMITH 79 /* Has both Darkfire and Taralash*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @39 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 80 /* Has Darkfire*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @39 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 81 /* Has Taralash*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @39 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 88 /* Has Firetooth*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @39 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 2
		IF ~
			Global("XA_AskCespenarDagger", "GLOBAL", 1)
			OR(3)
				PartyHasItem("XASTDAG")
				PartyHasItem("XASTDAGB")
				PartyHasItem("XASTDAGD")
		~ THEN REPLY @259 /* ~Are you familiar with the Soultaker dagger?~ */
		GOTO XA_SoulTakerFamiliar
		
		IF ~
			PartyHasItem("XABROKEN")
			GlobalLT("XA_AskHowMuch", "LOCALS", 1)
		~
		THEN REPLY @310 /*~Take a look at this broken sword and armor. Can they be repaired?~*/
		DO ~
			SetGlobal("XA_AskHowMuch", "LOCALS", 1)
		~
		GOTO XA_FixCaelarArmor
		
		IF ~
			PartyHasItem("XABROKEN")
			Global("XA_AskHowMuch", "LOCALS", 1)
			PartyGoldGT(14999)
		~
		THEN REPLY @312 /* ~The broken armor and sword we discussed. Here's the gold you need to fix it. (Pay 15,000 gold.)~*/
		DO ~
			SetGlobal("XA_ItemMaker","GLOBAL",3)
			TakePartyGold(15000)
			TakePartyItemNum("XABROKEN", 1)
			DestroyItem("XABROKEN")
		~
		GOTO 11
	END
	
	EXTEND_BOTTOM BOTSMITH 4
		IF ~
			PartyHasItem("compon02")
			!PartyHasItem("sw1h64")
			!PartyHasItem("sw2h10")
		~
		GOTO XA_LC_Eye
	END
	
	APPEND BOTSMITH
		IF ~~ THEN BEGIN XA_FixCaelarArmor
			SAY @311 /*~Ooo let's me see... yuck! These stink like righteousness! Cespenar can fix, yes, but I needs lots and lots of gold... 15,000 gold!~*/
			
			IF ~
				PartyGoldGT(14999)
			~ THEN REPLY @313 /* ~Here. (Pay 15,000 gold.)~ */
			DO ~
				SetGlobal("XA_ItemMaker","GLOBAL",3)
				TakePartyGold(15000)
				TakePartyItemNum("XABROKEN", 1)
				DestroyItem("XABROKEN")
			~
			GOTO 11
			
			IF ~~ THEN REPLY @314 /*~Nevermind.~*/
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_SoulTakerFamiliar
			SAY @267 /* ~Soul prison, yes. Very nasty. Why you ask? You gots dagger?~ */
			
			IF ~~ THEN REPLY @218 /* ~Nevermind.~*/
			EXIT
			
			IF ~~ THEN REPLY @219  /*~I do. How would I go about releasing the souls trapped inside?~*/
			GOTO XA_SoulTakerFamiliar2
		END
		
		IF ~~ THEN BEGIN XA_SoulTakerFamiliar2
			SAY @223 /* ~Go to Fugue Plane! Souls will break free of dagger there. But how to go to Fugue Plane if not dead? Thinking make Cespenar's head ache... oh, well. Would you like me to make you shiny ones? I look though items, yes?~*/
			
			IF ~
				Dead("bdkherr")
			~ THEN REPLY #66556 /* ~No, not right now. Go back to doing whatever it was... you do.~*/
			DO ~
				AddJournalEntry(@220, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 2)
			~
			GOTO 3
			
			IF ~
				Dead("bdkherr")
			~ THEN REPLY @221 /* ~Go ahead.~*/
			DO ~
				AddJournalEntry(@220, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 2)
			~
			GOTO 4
			
			IF ~
				!Dead("bdkherr")
			~ THEN REPLY #66556 /* ~No, not right now. Go back to doing whatever it was... you do.~*/
			DO ~
				AddJournalEntry(@299, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 3)
			~
			GOTO 3
			
			IF ~
				!Dead("bdkherr")
			~ THEN REPLY @221 /* ~Go ahead.~*/
			DO ~
				AddJournalEntry(@299, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 3)
			~
			GOTO 4
		END
		
		IF ~
			GlobalGT("XA_ItemMaker", "GLOBAL", 0)
		~ THEN BEGIN XA_BowCreated
			SAY #70888 /* ~Enjoy! Now Cespenar goes back to his duties, oh yes! Lots of goodies to find, lots to collect!~ [BOTSM10] */
			
			IF ~~ THEN
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 0)
			~
			EXIT
		END
		
	
		IF ~~ THEN BEGIN XA_CorwinBowGond
			SAY @71  /*~Ooo! Lets me see, lets me see! Very nice.... yes! Cespenar can replace the string on this bow, with Bowstring of Gond! Make very powerful, for 5000 gold. You wants?~ */
			
			IF ~
				PartyGoldGT(4999)
				PartyHasItem("XACORBO3")
			~
			THEN REPLY #66862 /* ~Sure, go ahead.~ */
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 2)
				TakePartyGold(5000)
				TakePartyItemNum("XACORBO3",1)
				DestroyItem("XACORBO3")
				TakePartyItemNum("compon10",1)
				DestroyItem("compon10")
				DestroyGold(5000)
			~
			GOTO 11
			
			IF ~
				PartyGoldGT(4999)
				PartyHasItem("XACORBOW")
			~
			THEN REPLY #66862 /* ~Sure, go ahead.~ */
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 1)
				TakePartyGold(5000)
				TakePartyItemNum("XACORBOW",1)
				DestroyItem("XACORBOW")
				TakePartyItemNum("compon10",1)
				DestroyItem("compon10")
				DestroyGold(5000)
			~
			GOTO 11
			
			IF ~
				PartyGoldLT(5000)
			~ THEN REPLY #66606 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY #66787 /* ~No. What else?~ */ 
			GOTO 82
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge1
			SAY @406  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @407  /* ~Do it. (Pay 5,000 gold.)~*/
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 4)
				TakePartyGold(5000)
				TakePartyItemNum("XASW1HCA",1)
				DestroyItem("XASW1HCA")
				TakePartyItemNum("compon02",1)
				DestroyItem("compon02")
				DestroyGold(5000)
			~
			GOTO 11
			
			IF ~
				PartyGoldLT(5000)
			~ THEN REPLY #66606 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY #66787 /* ~No. What else?~ */ 
			GOTO 23
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge2
			SAY @406  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @407  /* ~Do it. (Pay 5,000 gold.)~*/
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 4)
				TakePartyGold(5000)
				TakePartyItemNum("XASW1HCA",1)
				DestroyItem("XASW1HCA")
				TakePartyItemNum("compon02",1)
				DestroyItem("compon02")
				DestroyGold(5000)
			~
			GOTO 11
			
			IF ~
				PartyGoldLT(5000)
			~ THEN REPLY #66606 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY #66787 /* ~No. What else?~ */ 
			GOTO 31
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge3
			SAY @406  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @407  /* ~Do it. (Pay 5,000 gold.)~*/
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 4)
				TakePartyGold(5000)
				TakePartyItemNum("XASW1HCA",1)
				DestroyItem("XASW1HCA")
				TakePartyItemNum("compon02",1)
				DestroyItem("compon02")
				DestroyGold(5000)
			~
			GOTO 11
			
			IF ~
				PartyGoldLT(5000)
			~ THEN REPLY #66606 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY #66787 /* ~No. What else?~ */ 
			GOTO XA_LC_KeepLooking
		END
		
		IF ~~ THEN BEGIN XA_LC_Eye
			SAY @408 /* ~You have Eye of Tyr. Very shiny... Cespenar has recipe to make better Purifier or Holy Avenger with shiny pommel. If you finds them, bring and I makes sword better.~*/
			
			IF ~
				!PartyHasItem("XASW1HCA")
			~
			GOTO XA_LC_KeepLooking
			
			IF ~
				PartyHasItem("XASW1HCA")
			~ THEN REPLY @405  /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
			GOTO XA_LC_AstersEdge3
		END 
		
		IF ~~ THEN BEGIN XA_LC_KeepLooking
			SAY @409  /*~I keeps looking... let's me see...~ */
			
			COPY_TRANS BOTSMITH 4
		END
	END
//}


//{ SARMEL01
EXTEND_BOTTOM SARMEL01 68 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_SARMEL01_68
END

APPEND SARMEL01
	IF ~~ THEN BEGIN XA_SARMEL01_68_2
		SAY @289 /* ~Oh, dear! I trust your daughter is alright?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_SARMEL01_68_3
	END
	
	IF ~~ THEN BEGIN XA_SARMEL01_68_4
		SAY @290 /* ~I'm glad to hear that your child is fine... but I've not heard of the Five before.~ */
		
		IF ~~ THEN REPLY @291 /* ~That's odd. I'd have thought that someone with as much knowledge on the matter would be familiar with them. In any case, with Illasera gone, what other Bhaalspawn should I be concerned with?~ */
		GOTO 69
	END
END
//}

//{ SARPROVF
EXTEND_BOTTOM SARPROVF 0 /* OK */

	IF ~  
		PartyGoldGT(49)
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
		!Global("ToldVampires","GLOBAL",1)
		!GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN REPLY #71341 /* ~Sounds good to me!~ */ 
	DO ~
		TakePartyGold(50)
	~ 
	EXTERN ~XACORWIJ~ XA_SARPROVF_0
	
	IF ~  
		PartyGoldGT(49)
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
		!Global("ToldVampires","GLOBAL",1)
		GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN REPLY #71341 /* ~Sounds good to me!~ */ 
	DO ~
		TakePartyGold(50)
	~ 
	EXTERN ~XACORWIJ~ XA_SARPROVF_0_BodhiBite
END

ADD_TRANS_TRIGGER SARPROVF 5
~
	OR(2)
		!IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive","GLOBAL",2)
~
DO 0

EXTEND_BOTTOM SARPROVF 5 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN
	EXTERN ~XACORWIJ~ XA_SARPROVF_0_BodhiBite
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		!GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN
	EXTERN ~XACORWIJ~ XA_SARPROVF_0
END
//}

//{ SARPRO01.D
EXTEND_BOTTOM SARPRO01 11 /* OK */
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY #71333
	EXTERN XACORWIJ XA_SARPRO01_11
END
//}

//{ HGWRA01.D
EXTEND_BOTTOM HGWRA01 18 /* OK */
	IF ~
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN GOTO XA_Corwin
END

EXTEND_BOTTOM HGWRA01 24 /* OK */
	IF ~
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	EXTERN XACORWIJ XA_Corwin_Wraith2
END

APPEND HGWRA01
	IF ~~ THEN BEGIN XA_Corwin
		SAY @287 /* ~What of the inevitable pain you must give to the one you love? The woman you call "Schael."~ */
		IF ~~ THEN
		EXTERN XACORWIJ XA_Corwin_Wraith
	END
	
	IF ~~ THEN BEGIN XA_Corwin_Wraith3
		SAY @20 /*~Foolish woman. Behold, and learn how you have murdered she who is dearest to you.~*/
				
		IF ~~ THEN
		DO ~
			ClearAllActions()
			StartCutSceneMode()
			StartCutSceneEx("XACSWRA1",FALSE)
		~
		EXIT
	END
END
//}

//{ SARVOLO.D
EXTEND_TOP SARVOLO 9 /* OK */
	IF ~
		InParty("XACAELAR")
	~ THEN REPLY @315 /*~Tell me about Caelar.~*/
	GOTO XA_Caelar

	IF ~
		InParty("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @279 /* ~Tell me about Schael.~*/
	GOTO XA_Schael_Illasera
	
	IF ~
		InParty("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @280 /* ~Tell me about Corwin.~*/
	GOTO XA_Corwin_Illasera
	
	IF ~
		InParty("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @279 /* ~Tell me about Schael.~*/
	GOTO XA_Schael
	
	IF ~
		InParty("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @280 /* ~Tell me about Corwin.~*/
	GOTO XA_Corwin
END

APPEND SARVOLO
	IF ~~ THEN BEGIN XA_Caelar
		SAY @316 /*~Caelar... Argent? By the gods, it IS her! I'd heard rumors that a glorious warrior matching her description was travelling with you, but I didn't think it possible! How — how did you manage to free her from Avernus?~*/
		
		IF ~~ THEN REPLY @318 /*~I'll spare you the bloody details. All that matters is that she is here now, and that we are fighting for the same cause.~*/
		GOTO XA_CaelarSarvolo2
		
		IF ~
			IsValidForPartyDialogue("XACAELAR")
			See("XACAELAR")
			GlobalLT("XA_CaelarVolo", "LOCALS", 1)
		~ THEN REPLY @319 /* ~She can explain.~ */
		DO ~
			SetGlobal("XA_CaelarVolo", "LOCALS", 1)
		~
		EXTERN XACAELAJ XA_CaelarSarvolo
	END

	IF ~~ THEN BEGIN XA_CaelarSarvolo2
		SAY @317 /*~Amazing! Remarkable! To willigly venture to Avernus again, this time to rescue the Shining Lady herself!~*/
		
		IF ~~ THEN
		GOTO 9
	END

	IF ~~ THEN BEGIN XA_Corwin_Illasera
		SAY @281 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		=@401 /* The pair have achieved feats that no one could have imagined, and her devotion to <CHARNAME>'s cause has only grown since <PRO_HESHE> helped rescue her daughter from Illasera the Quick. Though no one can say what the future has in store for this duo, one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~  */
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACORWIJ XA_Corwin_Sarvolo
	END
	
	IF ~~ THEN BEGIN XA_Schael_Illasera
		SAY @282 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together.  */
		
		= @402 /*~<CHARNAME> was smitten by her beauty, and their relationship gradually evolved from friendship into something far more profound. Their fierce devotion toward one another was only strengthened after <CHARNAME> helped rescue her daughter from Illasera the Quick. Their love, to this point, has endured against all odds. Whether it will continue to do so, no one can say, though one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACORWIJ XA_Schael_Sarvolo		
	END
	
	IF ~~ THEN BEGIN XA_Corwin
		SAY @90 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		=@404 /*~The pair have achieved feats that no one could have imagined, and her devotion to <CHARNAME>'s cause has only grown since <PRO_HESHE> saved the life of Skie Silvershield, the daughter of one of the Grand Dukes. Though no one can say what the future has in store for this duo, one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACORWIJ XA_Corwin_Sarvolo
	END
	
	IF ~~ THEN BEGIN XA_Schael
		SAY @91 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		= @403 /*~<CHARNAME> was smitten by her beauty, and their relationship gradually evolved from friendship into something far more profound. Their fierce devotion toward one another was only strengthened after <CHARNAME> saved the life of Skie Silvershield, the daughter of one of the Grand Dukes. Their love, to this point, has endured against all odds. Whether it will continue to do so, no one can say, though one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACORWIJ XA_Schael_Sarvolo		
	END
	
	IF ~~ THEN BEGIN XA_Corwin_Sarvolo_END
		SAY @283 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty. You're as much a hero in this story as <PRO_HESHE> is.~   */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @285
		GOTO 9
	END

	IF ~~ THEN BEGIN XA_Schael_Sarvolo_END
		SAY @284 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty, and more importantly, the love you two have for one another. You're as much a hero in this story as <PRO_HESHE> is.~     */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @285
		GOTO 9
	END	
END
//}

//{ RASAADJ
APPEND RASAADJ
	IF ~~ THEN BEGIN XA_AmkethranCourier_END
		SAY @278 /* ~Major, <CHARNAME> — long ago I rescued a courier based out of this village. He had been beset by brigands on the roads northwest of here. His name was Hamza. If he is here, he will surely help us.~ */
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ NEERAJ
APPEND NEERAJ
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @293 /* ~Eek! Oh, ewwww! Get it off me! Aah! You're covered in it worse than me!~ */
		
		= @297 /* ~Ohhhh! This village better have a bathhouse!~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
END
//}

//{ AERIEJ
APPEND AERIEJ
	IF ~
		Global("XA_AvernusChat", "GLOBAL", 1)
	~ THEN BEGIN XA_AvernusEntry
		SAY @305 /* ~Ohh... *cough* it's so h-hot down here! These poor souls!~ */
		
		IF ~~ THEN REPLY @303 /* ~We'll be out of here as soon as we find Caelar. Stay alert.~ */
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~ THEN 
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN KELDORJ XA_AvernusEntry
	END

	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @293 /* ~Eek! Oh, ewwww! Get it off me!~ */
		
		= @294 /* ~Ohhhh! I hope this v-village has a bathhouse!~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_HowMany
		SAY @300 /* ~A-are you sure that's a good idea? It's been so long since he died...~ */
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_HowMany2
	END

	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @234 /* ~The city's been completely d-destroyed... all those people...~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Aerie
		SAY @237 /* ~Of course. W-what do you need?~ */
		
		= @239 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @235 /* ~Oh, Schael! That's wonderf—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-74
	IF ~
		Global("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie
		SAY @253 /* ~<CHARNAME>, I'm so h-happy for you and Schael!~*/
		
		IF ~~ THEN REPLY @254 /* ~Thanks Aerie.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
		
		IF ~~ THEN REPLY @256 /* ~For what?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_Silly
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Silly
		SAY @257 /* ~Hee hee, she's pregnant with your child, silly!~ */
		
		IF ~~ THEN REPLY @254 /* ~Thanks Aerie.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_PickName
		SAY @255 /* Have you given any thought as to the baby's name?~*/
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_GorionIlara

		IF ~~ THEN REPLY @244 /* ~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Ideas
		SAY @258 /* ~Hmm... a lot of people n-name their children after people who've had a profound impact on their life. If I ever have a baby boy, I'm going to name him Quayle. Oh, I'm so excited to see your baby!~*/
		
		IF ~~ THEN REPLY @260 /* ~There's still a long way to go. I'll be counting on you to help keep Schael and our unborn child healthy.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_GorionIlara
		SAY @262 /* ~Those are both beautiful n-names ... oh, I'm so excited to see your baby!*/
		
		IF ~~ THEN REPLY @260 /* ~There's still a long way to go. I'll be counting on you to keep Schael and our unborn child healthy.~ */
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown		
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_WontLetDown
		SAY @261 /* ~I won't let you down. I promise.~ */
		
		IF ~~ THEN REPLY @263 /*~Thank you, Aerie.~ */
		EXIT
	
	END
	//}
	
	
END
//}

//{ SAREV25J
APPEND SAREV25J
	IF ~
		Global("XA_AvernusChat", "GLOBAL", 1)
	~ THEN BEGIN XA_AvernusEntry
		SAY @302 /* ~Hmph. I wasn't expecting to be back in the Hells so soon. I'd almost begun to miss the tortured screams of the damned.~ */
		
		IF ~~ THEN REPLY @303 /* ~We'll be out of here as soon as we find Caelar. Stay alert.~ */
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~ THEN 
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN KELDORJ XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Aerie")
		~ THEN
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN AERIEJ XA_AvernusEntry
	
	END

	IF ~~ THEN BEGIN XA_SarevokBanter3Chain_END
		SAY @232 /* ~I realize now that I was wrong. Your skill in battle is considerable, as is your ability to lead others.~ */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_Romance_Chain
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_NonRomance_Chain
	END
END
//}


//{ CONNOL
ADD_TRANS_TRIGGER CONNOL 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM CONNOL 0 /* OK */
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY #219533 /* ~Tell me what the common folk are talking about these days.~ */ 
	GOTO XAA1
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY #219619 /* ~What have you heard bandied about the bar lately?~ */ 
	GOTO XAA1
END

APPEND CONNOL 
	IF ~~ THEN BEGIN XAA1
		SAY @225 /* ~Aye, remember <CHARNAME>, the so-called hero of Baldur's Gate? The one who was arrested for killing the Duke's daughter? Well, the Dukes are now tellin' everyone now that <PRO_HESHE> was innocent the whole time! What's more, Skie Silvershield is up and about, healthy and lively as ever. Could you believe it? Word on the street is that <PRO_HESHE>'s on <PRO_HISHER> way back to the city as we speak. Good on <PRO_HIMHER>, I s'pose.~ */
		
		IF ~~ THEN 
		DO ~
			EscapeArea()
		~ 
		EXIT
	END
END
//}

//{ MCOOK4
ADD_STATE_TRIGGER MCOOK4 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
//}

//{ SUTHIE
ADD_STATE_TRIGGER SUTHIE 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SUTHIE 7
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SUTHIE 9
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND SUTHIE
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Intro
		SAY #203066 /* ~ 'Ere there, a word wit' you I would have. House rules you be needin' to know. This here be Sanctuary, and Silence be our patron saint. You do anythin' to harm either, an' every thief, assassin, and scoundrel within 1,000 leagues will want ye dead. I dunno the magics that keep this place secure, but 'taint nowhere else where a night-sneak can sleep sound. It's neutral ground, and you leave your fightin' outside. Be on yer best behavior, 'cuz banishment for life is the nicest punishment Silence knows.~ */
		  
		IF ~~ THEN EXIT
	END
END
//}

//{ BART8
EXTEND_BOTTOM BART8 0 /* OK */
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @213 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

EXTEND_BOTTOM BART8 1 /* OK */
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @213 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

APPEND BART8
	IF ~~ THEN BEGIN XA_Brevlik
		SAY @214 /* ~Does that little runt owe you money too? He hasn't been allowed here in months, and it'll stay that way so long as he doesn't pay his tab.~*/
		
		IF ~~ THEN REPLY @215 /* ~Do you know where he is?~ */
		GOTO XA_Brevlik2
	END
	
	IF ~~ THEN BEGIN XA_Brevlik2
		SAY @216  /* ~Alls I know is he ain't here, got it? Go check one of the other taverns 'round town.~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@217, QUEST)
		~
		EXIT
	END
END
//}

//{ PPIRENI1
	ADD_TRANS_TRIGGER PPIRENI1 34
	~
		False()
	~

	EXTEND_BOTTOM PPIRENI1 34
		IF ~
			True()
		~ THEN 
		DO ~
			SetGlobal("AsylumPlot","GLOBAL",20)
		~
		EXIT
	END
//}

//{ PPIRENI2
EXTEND_BOTTOM PPIRENI2 3
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LCA_41G", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinIrenicusStart
END

EXTEND_BOTTOM PPIRENI2 27
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 3)
	~ THEN
	DO ~
		EraseJournalEntry(7252)
		EraseJournalEntry(7253)
		EraseJournalEntry(22952)
		EraseJournalEntry(23306)
		SetGlobal("AsylumPlot","GLOBAL",40)
		StartCutSceneMode()
		StartCutSceneEx("XACUT41J",FALSE)
	~
	SOLVED_JOURNAL @345  /* ~The transformation and the dream

While Irenicus cast his spell on me to steal my divinity... my soul... I was mired in a dream in which I fought against the personification of my instinct and prevailed. I awoke. My victory in my dream, however, did not mean victory in reality. Irenicus had successfully taken my soul and stated that now both he and Bodhi were free of the curse which they had been subjected to... and that Imoen and I would both die a slow and withering death. As for Schael, she's alive, though he plans to use her in some plot to assassinate the leaders of Baldur's Gate.

What he plans to do next he would not say, but he left it to Bodhi to finish me off once and for all.~ */
	EXIT
END

EXTEND_BOTTOM PPIRENI2 31
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 4)
	~ THEN REPLY @346  /* ~Release Schael and return what you stole from us, or I swear that I'll bury you where you stand!~*/
	GOTO XA_Geas
END

APPEND PPIRENI2
	
	IF ~~ THEN BEGIN XA_Geas
		SAY @347  /* ~Fool! Do you not see that you're being here serves my will? Your companion has, to this point, resisted the geas. The sight of you and your army of madness falling by my hand is certain to break her spirit once and for all.~ */
		
		IF ~~ THEN
		GOTO 34
	END
	
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinIrenicus
		SAY @336 /*~And you, young lady.~ */
		
		= @337 /* ~I trust, by the insignia on your armor, that you are here to affect some appropriate punishment for what I did to Skie Silvershield?~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinIrenicus", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_CorwinIrenicusChain
	END
	
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinIrenicus_Sleep2
		SAY @338 /*~Worry not.*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinIrenicus", "GLOBAL", 3)
		~
		GOTO XA_CorwinIrenicus_Sleep2A
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinIrenicus_Sleep2A
		SAY @339 /*~Unlike you and the rest of your companions, she will live beyond these next few minutes. Once I am done with you, a geas will be placed on her. She'll then be returned to Baldur's Gate, where she will assassinate the Council of Four on my behalf.~ */
		
		COPY_TRANS PPIRENI2 3
	END
END
//}

//{ BDIMOEN
EXTEND_BOTTOM BDIMOEN 89 /* OK */
	
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("XA_CorwinContinue", "GLOBAL", 0)
	~ GOTO XA_CorwinLetter
	
	
END

APPEND BDIMOEN
	
	IF ~  
		AreaCheck("bd6100")
		GlobalLT("bd_plot","global",675)
		Global("bd_player_exiled","global",1)
	~ THEN BEGIN XA_EntarTrail // from:
		SAY @323 /* ~I'm pretty sure that Entar's men aren't on our trail. Can we take a break, just for a minute?~ */
		
		COPY_TRANS BDIMOEN 129
	END

	IF ~~ THEN BEGIN XA_CorwinLetter
		SAY @209 /* ~Oh! Before I forget — Captain Corwin came to see me. She asked that I give you this letter.~ */
		
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 2)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRSCH", LastTalkedToBy(Myself),0,0,0)
			GiveItemCreate("XAAMULET", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 2)
		~
		GOTO XA_GiveLetter_Schael
		
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 1)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRCOR", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 1)
		~
		GOTO XA_GiveLetter_Corwin
	END
	
	IF ~~ THEN BEGIN XA_GiveLetter_Schael
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		DO ~
			SetGlobal("XA_ReadCorwinLetter", "GLOBAL", 1)
			ActionOverride(Player1, StartDialog("PLAYER1", Player1))
		~
		EXIT
		
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY #269868 /* ~Imoen! How did you know where to find me?~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ 
		GOTO 91
		
		IF ~~ THEN REPLY #239701 /* ~You should never have doubted I would find a way to freedom. I never did.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 92
  
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY #269869 /* ~I thought I was leaving the city in secret.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 91
	END
	
	IF ~~ THEN BEGIN XA_GiveLetter_Corwin
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		DO ~
			SetGlobal("XA_ReadCorwinLetter", "GLOBAL", 1)
			ActionOverride(Player1, StartDialog("PLAYER1", Player1))
		~
		EXIT
		
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY #269868 /* ~Imoen! How did you know where to find me?~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ 
		GOTO 91
		
		IF ~~ THEN REPLY #239701 /* ~You should never have doubted I would find a way to freedom. I never did.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 92
  
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY #269869 /* ~I thought I was leaving the city in secret.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 91
	END
END
//}

//{ BDCORWIJ
EXTEND_BOTTOM BDCORWIJ 318  /* OK */
	IF ~~ THEN REPLY @202 /* ~Corwin, these are beautiful. This Neoma... you must be very special to her.~ */
	GOTO XA_Neoma
END

APPEND BDCORWIJ
	IF ~
		Global("XA_ProficiencyTalk", "GLOBAL", 4)
	~ THEN BEGIN XA_ProficiencyTalk6
		SAY @386 /*~You're a quick learner, <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @387 /* ~Well, it helps that you're an excellent instructor. The Fist is fortunate to have you.~ */
		DO ~
			SetGlobal("XA_ProficiencyTalk", "GLOBAL", 5)
		~
		GOTO XA_ProficiencyTalk7
		
		IF ~~ THEN REPLY @388 /* ~I appreciate the help, Captain.~ */
		DO ~
			SetGlobal("XA_ProficiencyTalk", "GLOBAL", 5)
		~
		GOTO XA_ProficiencyTalk7
	END

	IF ~~ THEN BEGIN XA_ProficiencyTalk7
		SAY @389  /* ~Come on. We better head back to camp.~ */
		
		IF ~~ THEN REPLY @390  /* ~Right. Let's go.~ */
		DO ~
			ChangeStat(Player1, XP, 5000, ADD)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
		
		IF ~
			TimeOfDay(DAY)
		~ THEN REPLY @391  /* ~It's a beautiful day... must we head back so soon?~ */
		GOTO XA_ProficiencyTalk8
		
		IF ~
			!TimeOfDay(DAY)
		~ THEN REPLY @393  /* ~It's a beautiful evening... must we head back so soon?~*/
		GOTO XA_ProficiencyTalk8
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk8
		SAY @392  /*~It is... but as much as I enjoy your company, duty calls. Time to go.~*/
		
		IF ~~ THEN
		DO ~
			ChangeStat(Player1, XP, 5000, ADD)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~
		Global("XA_ProficiencyTalk", "GLOBAL", 3)
	~ THEN BEGIN XA_ProficiencyTalk4
		SAY @381 /*~(She takes hold of your hand and traces your palm line with her finger.)~*/
		
		= @382 /*~See this crease in your palm? You need to grip the bow so that all of the pressure is on the thumb side this line. Also, be sure that your palm is facing the target. Never grip the bow with your hand outstretched, otherwise your wrist will move when you pull the string.~*/
		
		= @395  /* ~Now, to grip the bow properly, open the palm of your hand and stretch your arm out in front of you. The thumb should be stretched away from the index, parallel to the ground, to form an L shape.~*/ 
		
		IF ~~ THEN REPLY @396 /* ~Like this?~ */
		GOTO XA_ProficiencyTalk4A
		
		
		
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk4A
		SAY @397  /* ~Yes. Now, rotate your hand 45 degrees so that the L turns into a V shape. Yes, just like that. Take hold of the bow. Remember, keep all of the pressure between your thumb pad and your lifeline. Good.~  */
		
		= @383 /*~Lastly, your bow and draw arm should be level. If you need to adjust your aim upward or downward, do so by pivoting about your waist. Same thing if you wanted to aim a little to the left, or to the right. Turn your hips while keeping your arms steady. Just like that.~*/
		
		IF ~~ THEN REPLY @384 /*~I understand.~*/
		GOTO XA_ProficiencyTalk5
	END

	IF ~~ THEN BEGIN XA_ProficiencyTalk5
		SAY @385 /*~Good. Now try again.~*/
		
		IF ~~ THEN DO ~
			SetGlobal("XA_ProficiencyTalk", "GLOBAL", 4)
			StartCutSceneMode()
			StartCutScene("XALBPRO2")
		~
		EXIT
	END

	IF ~
		Global("XA_LCA_ProficiencyTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_ProficiencyTalk
		SAY @366 /* ~<CHARNAME>. A word?~ */
		
		IF ~~ THEN REPLY @367 /*~Of course. What can I do for you, Captain?~*/
		DO ~
			SetGlobal("XA_LCA_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalk2
		
		IF ~~ THEN REPLY @368 /*~What is it?~*/
		DO ~
			SetGlobal("XA_LCA_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalk2
		
		IF ~~ THEN REPLY @369 /*~Another one? Can't you see that I'm busy?~*/
		DO ~
			SetGlobal("XA_LCA_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk2
		SAY @371 /*~I noticed you have a bit of skill with the longbow. How long have you been practicing?~*/
		
		IF ~~ THEN REPLY @373 /*~Not too long, why do you ask?~ */
		GOTO XA_ProficiencyTalk3
		
		IF ~~ THEN REPLY @374 /*~I've dabbled in archery since I was a child, but I didn't treat it as anything other than a hobby... that is, until my foster father was killed.~*/
		GOTO XA_ProficiencyTalk3
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk3
		SAY @375 /*~I figured as much. Your draw and footwork look good, but your bow grip could use a little work. Mind if I give you a couple of pointers?~*/
		
		IF ~~ THEN REPLY @376 /*~Not at all.~*/
		GOTO XA_ProficiencyTalkCSStart
		
		IF ~~ THEN REPLY @377 /*~A free lesson from one as talented as yourself? How could I refuse?~*/
		GOTO XA_ProficiencyTalkCSStart
		
		IF ~~ THEN REPLY @378 /*~Somehow, I don't think you'd do this for just anyone. Why me?~*/
		GOTO XA_ProficiencyTalkWhy
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkWhy
		SAY @372 /*~Consider it a thank you for the care and concern you showed back in the Gate. The refugee crisis has been a strain on everyone, and every bit of help makes a difference.~*/
		
		= @398  /*~Besides, anything that can increase our chances of success is a worthwhile investment.~ [XA100130] */
		IF ~~ THEN REPLY @379 /*~Agreed. Let's get started.~*/
		GOTO XA_ProficiencyTalkCSStart
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkCSStart
		SAY @380 /*~Excellent. I spotted a clearing a few hundred meters south of the camp. It's perfect for what I had in mind. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XALBPROF")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkEnd
		SAY @370 /*~Fair enough. I'll leave you to it, then.~*/
		
		IF ~~ THEN
		EXIT
	END

	IF ~~ THEN XA_Neoma
		SAY @203 /*  ~We're good friends. Sometimes, a little more than that...~ */
	
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I see. I'm sure Voghiln will appreciate the thought.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I'm certain Voghiln will appreciate the thought.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
		
		IF ~~ THEN REPLY @205 /* ~Lucky her.~ */
		GOTO XA_Neoma2
	END
	
	IF ~~ THEN XA_Neoma2
		SAY @206 /* ~Sorry? I didn't catch that.~ */
		
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
	END
END
//}

//{ BAERIE
EXTEND_BOTTOM BAERIE 112
	IF ~
		GlobalGT("bd_asha_duel", "global", 0)
		!GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @196 /* ~I've met one of your kind before.~ */
	GOTO XA_Ashatiel
	
	IF ~
		GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @199 /* ~Schael's already told you of my experience with Ashatiel. Could you tell me more about your people? Your society?~ */
	GOTO 114
	
	IF ~
		GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @201 /* ~Schael's already told you of my experience with Ashatiel. We really should get moving.~ */
	GOTO 116
END

APPEND BAERIE
	IF ~~ THEN BEGIN XA_Ashatiel
		SAY @197 /* ~R-really? When? What were they l-like?~ */
		
		IF ~~ THEN REPLY @198 /* ~It was during the Dragonspear campaign. Aerie... I'm sorry. I'd rather not talk about it.~ */
		GOTO 116
		
		IF ~~ THEN REPLY @200 /* ~It doesn't matter. Could you tell me more about your people? Your society?~ */
		GOTO 114
	END
END

//}

//{ SAREV25A
EXTEND_BOTTOM SAREV25A 10 /* OK*/
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	EXTERN XACORWIJ XA_SAREV_10
END

ADD_TRANS_TRIGGER SAREV25A 48
~
	False()
~

EXTEND_BOTTOM SAREV25A 48
	IF ~~ THEN 
	UNSOLVED_JOURNAL #73856
	REPLY @183 /* ~I was already on my way to Saradush before I was dragged here.~ */
	FLAGS 128 GOTO 49
END
//}

//{ MAZZYJ
APPEND MAZZYJ
	IF ~~ THEN BEGIN BCorwinMazzy2_BREAK
		SAY @226 /* ~It's alright. I know you didn't mean anything by it. Besides, I'm quite happy with the crossbow.~*/
		
		IF ~
			GlobalGT("XA_ReturnToBG", "GLOBAL", 0)
		~ THEN GOTO BCorwinMazzy2_RBG
		
		IF ~
			GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
		~ THEN GOTO BCorwinMazzy2_RESUME		
	END
	
	IF ~~ THEN BEGIN BCorwinMazzy2_RBG
		SAY @227 /* ~Looks like the others are ready... let's get moving.~ */
		
		IF ~~ THEN 
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MazzyWonCompetition
		SAY @184 /* ~Thank you, Schael. You're one of the toughest competitors I've faced.~ */
		
		IF ~~ THEN REPLY @185 /* ~You both performed well. I'm glad to have such skilled companions at my side.~  */
		GOTO XA_MazzyWonCompetition2
	END
	
	IF ~
		Global("XA_TM_ArcheryChallenge", "GLOBAL", 2)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_Trademeet_Competition_SchaelWon
		SAY @186 /* ~Schael, congratulations on your victory. That was quite the performance.~ */
	
		IF ~~ THEN 
		EXTERN XACORWIB XA_CorwinWonCompetition
	END
END
//}

//{ RBALDU

ADD_STATE_TRIGGER RBALDU 5
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER RBALDU 14
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~


APPEND RBALDU
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA0
		SAY @178 /* ~The Duke's have proclaimed that <CHARNAME> was innocent after all. Word is <PRO_HESHE> may be coming back to the city. That would be something, wouldn't it?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA1
		SAY @179 /* ~Been hearing that there's trouble brewing far to the southeast. Fire giants are said to be laying siege to a city... Saradush, I think it was.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA2
		SAY @180 /* ~Lord Winston did a great job in clearing out the refugees from Caelar's crusade, don't you think?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA3
		SAY @181 /* ~You didn't hear it from me, but there's word that Duke Silvershield's daughter hasn't fully recovered from her ordeal.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA4
		SAY @182 /* ~Word is that <CHARNAME>, the hero of Baldur's Gate, is romantically involved with an officer of the Flaming Fist.~*/
		IF ~~ THEN EXIT
	END
END
//}

//{ DORNJ
APPEND DORNJ
	IF ~~ THEN BEGIN XA_CorwinDornConflict2
		SAY @229 /* ~It is not your concern.~ */
		
		IF ~~ THEN 
		EXTERN XACORWIB XA_CorwinDornConflict3
	END
	
	IF ~~ THEN BEGIN XA_CorwinDornConflict4
		SAY @193 /* ~Laughable, woman. Stand in my way, and your neck will snap as easily as a tree in the midst of a hurricane.~ */
		
		IF ~~ THEN REPLY @194 /* ~That's enough. Dorn, I don't know what you think exists between us, but I love Schael and nothing is going to change that.~  */
		DO ~
			SetGlobal("XA_CorwinDornConflict", "GLOBAL", 2)
		~
		GOTO XA_ChooseCorwin
		
		IF ~~ THEN REPLY @195 /* ~Stop it, Dorn. You know my affections lie with you.~ */
		DO ~
			SetGlobal("XA_CorwinDornConflict", "GLOBAL", 2)
		~
		EXTERN XACORWIB XA_ChooseDorn
	END
	
	IF ~~ THEN BEGIN XA_ChooseCorwin
		SAY @230 /* ~Bah! To hell with the lot of you!~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("OHD_corwinconflict","GLOBAL",4)
			SetGlobal("DornRomanceActive", "GLOBAL", 3)
		~
		EXIT
	END
END
//}

//{ HOUSG3
ADD_STATE_TRIGGER HOUSG3 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER HOUSG3 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND HOUSG3
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @174 /* ~<CHARNAME> - Lady Silvershield is expecting you.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_DefaultGreeting
		SAY @173 /* ~Behave yourselves - you are in the home of Duke Entar Silvershield.~*/
		
		IF ~~ THEN EXIT
	END
	
	
END
//}

//{ SERVA2
ADD_STATE_TRIGGER SERVA2 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SERVA2 11
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND SERVA2
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @168 /* ~Oh, it's you, the hero. Entar Silvershield's daughter told us you may be stopping by.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting2
		SAY @169 /* ~I'm just a servant.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,3)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting3
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting1
		SAY @169 /* ~I'm just a servant.~ */
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting2
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END
END
//}

//{ LOBAR
ADD_STATE_TRIGGER LOBAR 7
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER LOBAR 0
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER LOBAR 8
~
	!IsGabber("XACORWIN")
~

EXTEND_BOTTOM LOBAR 0
	IF ~
		IsValidForPartyDialog("XACORWIN")
		!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("XA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinLobar
END

EXTEND_BOTTOM LOBAR 8
	IF ~
		IsValidForPartyDialog("XACORWIN")
		!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("XA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinLobar
END

APPEND LOBAR
	IF ~
		IsGabber("XACORWIN")
		Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @163 /* ~Hello again, officer. How can the Low Lantern be of assistance?~ */
		
		IF ~~ THEN REPLY @164 /* ~I don't need anything at the moment.~ */
		EXIT
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
	
	IF ~
		IsGabber("XACORWIN")
		!Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting
		SAY @155 /*  ~Greetings officer, and welcome to the Low Lantern. Are you here for business, or for pleasure? Perhaps a little of both?~  */
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	
	END
	
	IF ~~ THEN BEGIN XA_LobarTianna
		SAY @161 /* ~Ah, yes. She's downstairs. Shall I tell her to expect you?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinLobarTiannaEnd
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation
		SAY @157 /* ~No, I don't know anything about that. All of the workers here are of their own volition, I assure you.~ */
		
		IF ~~ THEN REPLY @158
		GOTO XA_SlaverInvestigation2
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation2
		SAY @159 /* ~Not at all. We run a.. ah.. reputable establishment.~  */
		
		IF ~~ THEN EXIT
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
END
//}

//{ NOBW9
ADD_STATE_TRIGGER NOBW9 6
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_TRANS_TRIGGER NOBW9 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
DO 3

EXTEND_BOTTOM NOBW9 0
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @153 /* ~We've just returned after a long adventure in Amn.~*/
	GOTO XAA1
END

APPEND NOBW9
	IF ~
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @152 /* ~I've heard quite a bit about what's been going on around town. There are rumors that <CHARNAME> will return, now that <PRO_HISHER> innocence has been established.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @154 /* ~Adventurers! So you must be in the business of fighting dreadful beasts and such things. All of you must be so very brave to take up such a profession.~*/
		
		IF ~~ THEN EXIT
	END
END
//}

//{ BART0133
ADD_STATE_TRIGGER BART0133 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND BART0133
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @149 /* ~Business has been slow since the refugees left. If you've need of anything, don't hesitate to ask.~  */
		
		 IF ~~ THEN REPLY @150 /* ~It's been a long journey back from Amn. What do you have to ease our spirits?~ */ 
		 DO ~
			StartStore("tav0133",LastTalkedToBy(Myself))
		~ EXIT
  
		IF ~~ THEN REPLY @151 /* ~I need nothing at the moment, though your offer is appreciated.~ */ 
		EXIT
	END
END
//}

//{ PROST3
ADD_STATE_TRIGGER PROST3 2
~
	InMyArea("YAGO")
~

APPEND PROST3
	IF ~
		!Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA0
		SAY @147 /* ~I haven't seen one of our old regulars, Yago, in some time. I wonder how he's doing?~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA1
		SAY @148 /* ~It's a shame what happened to Yago. Can't say I'm surprised though.~ */
		
		IF ~~ THEN EXIT
	END
END
//}

//{ DILLAR
ADD_STATE_TRIGGER DILLAR 7
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM DILLAR 0
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
	GOTO XA_Jasper
END

APPEND DILLAR
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @146 /* ~Please, all of my girls are available for friends of mine, so long as they behave themselves.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN BEGIN XA_AskAboutJasper
		SAY @167 /* ~Can I help you?~ */
		IF ~~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
		GOTO XA_Jasper
	END
	
	IF ~~ THEN BEGIN XA_Jasper
		SAY @166 /* ~Jasper, yes. He and his girls are set up to the southwest. He wears a bright green coat, you can't miss him.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AskedAboutJasper", "LOCALS", 1)
		~
		EXIT
	END
END
//}

//{ PROST8
ADD_STATE_TRIGGER PROST8 3
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST8
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST7
ADD_STATE_TRIGGER PROST7 6
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST7
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST6
ADD_STATE_TRIGGER PROST6 2
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST6
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST5
ADD_STATE_TRIGGER PROST5 4
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST5
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ KESHEE
ADD_TRANS_TRIGGER KESHEE 2
~
	!Dead("HAISH2")
~

EXTEND_BOTTOM KESHEE 2
	IF ~~ THEN REPLY @134 /* ~I found out what happened to Balduran... or his ship and crew, anyway.~*/
	GOTO XAA0
END

APPEND KESHEE
	IF ~~ THEN BEGIN XAA0
		SAY @135 /* ~Oh, is that so?~*/
		
		IF ~~ THEN REPLY @136 /* ~Yes. (Tell him the story of the wolfwere island.)~ */
		GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @137 /* ~Har har... you mean to tell me Balduran and his men were transformed into beasts? That's a tall tale if I ever heard one.~*/
		
		IF ~
			PartyHasItem("BOOK87")
		~ THEN REPLY @138 /* ~It's true. Look, here's his logbook.~ */
		GOTO XA_LogBook
		
		IF ~
			!PartyHasItem("BOOK87")
		~ THEN REPLY @142 /* ~It's true.~*/
		GOTO XA_NoEvidence
	END

	IF ~~ THEN BEGIN XA_NoEvidence
		SAY @143 /* ~Oh sure, hah! Thanks for the laughs, friend. You have quite the imagination. I'll let you be on your way.~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LogBook
		SAY @139 /* ~Let me see that... it seems to be... wow.~*/
		
		= @140 /* ~I can hardly believe it! Did you find out what happpened to Balduran himself?~*/
		
		IF ~~ THEN REPLY @141 /* ~Unfortunately no, none of the people on the island could offer any explanation as to what happened to him.~*/
		GOTO XA_LogBook_End
	
	END
	
	IF ~~ THEN BEGIN XA_LogBook_End
		SAY @144 /*  ~Tis a shame, then. Thank you for telling me the story. I'm going to go tell all me buddies how <CHARNAME> and his band of adventurers found what happened to Balduran's ship and crew.~*/
		
		IF ~~ THEN
		DO ~
			ReputationInc(2)
			AddExperienceParty(20000)
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ THIEFM
ADD_STATE_TRIGGER THIEFM 3
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND THIEFM
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(5,3)
	~ THEN BEGIN XAA3
		SAY @133 /* @133 = ~Never had such easy pickings as those refugees, I tell ya. It's a shame they're all gone.~*/
		IF ~~ THEN EXIT
	END
END
//}

//{ MERLEA
ADD_STATE_TRIGGER MERLEA 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
4 5 6

APPEND MERLEA
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,1)
	~ THEN BEGIN XAA0
		SAY @124 /* ~Leave me be, I've business to attend to.~ */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
		Global("XA_HelpAldeth","GLOBAL",2)
		!AreaCheck("BG0128")
		!Dead("Aldeth")
	~ THEN BEGIN XAA1
		SAY @125 /* ~If you're seeking Aldeth, he's upstairs.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
	~ THEN BEGIN XAA2
		SAY @126 /* ~Grain futures are lower, with the bandit activity down and all.~  */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,3)
	~ THEN BEGIN XAA3
		SAY @127 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,4)
	~ THEN BEGIN XAA4
		SAY @128 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,5)
	~ THEN BEGIN XAA5
		SAY @129 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
	*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,6)
	~ THEN BEGIN XAA6
		SAY @130 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~
	*/
		IF ~~ THEN
		EXIT
	END
END
//}

//{ BRIELB
ADD_STATE_TRIGGER BRIELB 3
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND BRIELB
	IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
	~  !InParty("Coran")
		NumTimesTalkedTo(0)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting // from:
		SAY @121 /* ~Oh my! You're the hero of Baldur's Gate - please, I need your help!~*/
		IF ~~ THEN REPLY @122 /* ~We've just returned from a long journey, and we're tired.~ */ 
		GOTO 4
		IF ~~ THEN REPLY @123 /* ~What is it?~ */ 
		GOTO 5
	END
END
//}

//{ VICONIJ
APPEND VICONIJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @120 /* ~No. I already know what is in store for me, and there is nothing I can do to escape it.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ViconiaAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
END
//}

//{ ANOMENJ
APPEND ANOMENJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @115 /* ~No. Let us not waste any of our time and money on this charlatan.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AnomenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~~ THEN BEGIN BCorwinAnomen1A
		SAY @187 /* ~A mother's place is at home with her child, not on the battlefield.~ */
	
		= @188 /* ~You're a poor example of a parent.~ */
		
		IF ~~ THEN REPLY @189 /* ~You're out of line Anomen. Knock it off.~ */
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~~ THEN REPLY @190 /* ~(Remain silent)~ */
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @191 /* ~You know little of what you speak. Captain Corwin is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			Global("XA_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @192 /* ~You know little of what you speak. Major Corwin is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @228 /* ~You know little of what you speak. Schael is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
	END
END
//}

//{ JAHEIRAJ
EXTEND_BOTTOM JAHEIRAJ 472
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	DO ~
		SetGlobal("SolaufeinJob","GLOBAL",8)
		SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
		SetGlobal("udPhaTimerOn","GLOBAL",1)
	~ 
	EXTERN XACORWIJ XA_UDPHAE01_IJ_88
END

APPEND JAHEIRAJ

	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @286 /* ~You're covered as well! No, don't put your hands on me, they're filthy!~ */
		
		= @298 /* ~With luck, we'll find a hot spring to wash in. Let's go.~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_HowMany
		SAY @301 /* ~You mean to attempt a resurrection, after the body has been dead for this long? Nothing good can come from this.~*/
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_HowMany2
	END
	
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @114 /* ~No. To know the future is unnatural and risks upsetting the balance.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_JaheiraAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Jaheira
		SAY @238 /* ~Of course. What do you need?~ */
		
		= @239 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @236 /* ~Schael! At a time like this? How could you allow yourself—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-75
	IF ~
		Global("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira
		SAY @264 /*~<CHARNAME>. Congratulations.~*/ 
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
		
		IF ~~ THEN REPLY @269 /* For? */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_For
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_For
		SAY @270 /*~Major Cor — Schael's pregancy, of course. It is wonderful news.~*/
		
		IF ~~ THEN REPLY @265 /* ~Is that so? I overheard parts of your conversation, and you didn't sound happy with her at all.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_NotHappy
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_NotHappy
		SAY @266 /* ~Yes. I was surprised that Schael would allow herself to get pregnant under these circumstances. After thinking on it some more however, there was no way you or she could know what was to happen. I cannot in fairness fault her, or you, for the unfortunate timing.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_BabyName
		SAY @268 /* ~So, child. Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		
		IF ~~ THEN REPLY @244 /* ~I haven't. Do you have any ideas?~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_Ideas
		SAY @276 /* ~Hmm... many name their children after those who've had a profound impact on their life. Khalid and I often spoke of naming our child after the one who first introduced us to each other.~ */
		
		= @277 /* ~Khalid... he would be pleased to hear this news, and to learn that you've selected such good and strong woman as your mate. The two of you will do a wonderful job as parents.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		SAY @271 /* ~Gorion would be honored. He'd also be proud of the man you've become, and that you've chosen such a good and strong woman as your mate. The two of you will do a wonderful job as parents.~*/
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
		SAY @272 /*~It seems that just yesterday you walked in to the Friendly Arm inn, lost and confused after the murder of your foster father. So much has happened since then...~*/
		
		IF ~~ THEN REPLY @273 /* ~And you've stood by my side through all of it. Now, I must rely on you again to help ensure Schael's health, and the health of our unborn child.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_END
		SAY @274 /*~You can count on me, now and always, my friend.~*/
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		EXIT
	END
	//}
END
//}

//{ IMOEN2J
EXTEND_BOTTOM IMOEN2J 23
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN 
		DO ~
			SetGlobal("SolaufeinJob","GLOBAL",8)
			SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
			SetGlobal("udPhaTimerOn","GLOBAL",1)
		~ 
		EXTERN XACORWIJ XA_UDPHAE01_IJ_88
	END

APPEND IMOEN2J
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @295 /* ~I'm covered in it, ugh. Don't laugh! You are too!~ */
		
		= @296 /* ~This is worse than the time we fell into the manure pile at Candlekeep. Come on. Maybe we'll get lucky and find a bathhouse in this village... this village in the middle of the desert. Gods, help us.~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @104 /* ~Thanks, but no. Knowing my future won't change it, and it will take away all of the surprise.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ImoenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	//{ Dialog J-73
	IF ~
		Global("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen
		SAY @240 /* ~Schael just told me the news. I'm so happy for you two!!~ */
		
		IF ~~ THEN REPLY @247 /* ~News?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_WhatNews
		
		IF ~~ THEN REPLY @249 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_WhatNews
		SAY @248 /* ~Yes, that she's pregnant! Sheesh!~*/
		
		IF ~~ THEN REPLY @249 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Dad
		SAY @241 /* ~Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @244 /*~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_Ideas
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_GorionIlara
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Ideas
		SAY @246 /* ~Hmm... a lot of people name their children after people who've had a profound impact on their life.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil2
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_GorionIlara
		SAY @243 /* ~Those are great names. Oh, I'm so excited! Gorion would be *so* proud of you.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil
		SAY @245 /* ~And just so you know ... I'm going to spoil my niece or nephew rotten!~ */
		
		IF ~~ THEN REPLY @250 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil2
		SAY @252 /* ~Whatever you two decide ... I want you know that I'm going to spoil my niece or nephew rotten!~*/
		
		IF ~~ THEN REPLY @250 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_END
		SAY @251 /* ~You got that right.~ */
		
		IF ~~ THEN EXIT
	END
	//}
	
	IF ~~ THEN BEGIN XA_ImoenSchaelSpellhold
		SAY @341  /* ~Captain Corwin? What's she doing here?~*/
		
		IF ~~ THEN REPLY @342  /* ~Join me, Imoen. I'll explain on the way.~ */
		GOTO 21
		
		IF ~~ THEN REPLY @343  /* ~It's a long story, and we don't have the time. Can you make it out of here on your own?~*/
		GOTO 22
	END
END
//}

//{ IMOEN2
APPEND IMOEN2
	IF ~~ THEN BEGIN XA_ImoenSchaelSpellhold
		SAY @341  /* ~Captain Corwin? What's she doing here?~*/
		
		IF ~~ THEN REPLY @342  /* ~Join me, Imoen. I'll explain on the way.~ */
		GOTO 21
		
		IF ~~ THEN REPLY @343  /* ~It's a long story, and we don't have the time. Can you make it out of here on your own?~*/
		GOTO 22
	END
END

EXTEND_BOTTOM IMOEN2 19
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 4)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @340  /* ~Schael, too. He's planning to use her to assassinate the Dukes. I have to save her!~*/
	GOTO XA_ImoenSchaelSpellhold
	
	IF ~
		Global("XA_CorwinIrenicus", "GLOBAL", 4)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @344  /* ~Schael, too. He's planning to use her to assassinate the Dukes. I have to stop him!~*/
	GOTO XA_ImoenSchaelSpellhold
END
//}

//{ KENT
ADD_STATE_TRIGGER KENT 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND KENT
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_KentGreeting", "LOCALS", 1)
	~
	THEN BEGIN XAA0
		SAY @87 /* ~Captain, <CHARNAME>, welcome home.~ */
		
		IF ~~ THEN REPLY @88 /* ~Thank you, Kent. It's good to see you again.~ */
		DO ~
			SetGlobal("XA_KentGreeting", "LOCALS", 1)
		~
		GOTO XAA1
	END
	
	IF ~
		Global("XA_KentGreeting", "LOCALS", 1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA1
		SAY @86 /* ~Marshal Nederlok is in his office if you need to see him. First door on my right.~*/
		IF ~~ THEN REPLY @89 /* ~Understood.~ */
		EXIT
	END
END
//}

//{ FLAMBG
ADD_STATE_TRIGGER FLAMBG 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
5 6

APPEND FLAMBG
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~
	THEN BEGIN XAA0
		SAY @83 /* ~Nothing unusual to report, Captain.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_DukesDebriefed", "GLOBAL", 1)
	~
	THEN BEGIN XAA1
		SAY @85 /* ~Good day <CHARNAME>, Captain. If you are looking for Marshal Nederlok, he is in his office upstairs.~ */
		
		IF ~~ THEN EXIT
	END
END
//}

//{ VALYGARJ
APPEND VALYGARJ
	IF ~~ THEN BEGIN XA_WYRM_VALYGAR3
		SAY @82 /* ~It's good to meet you too, sir.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_3
	END
END
//}

//{ THIEFG
ADD_TRANS_TRIGGER THIEFG 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM THIEFG 0 /* OK */
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN REPLY @70 /* ~Ya, I know the password.~ */
	GOTO XAA0
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_ThiefGuildEntry
	
	IF ~
		Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN GOTO XA_MoveAlong
END

APPEND THIEFG
	IF ~~ THEN BEGIN XAA0 // from: 0.1
		SAY @69 /* ~Well, if you know the password, then spill it.~ */
		IF ~~ THEN REPLY #216655 /* ~Darkwell.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216656 /* ~Ravenscar.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216657 /* ~Mask.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216658 /* ~Fafhrd.~ */ GOTO XAA2
		IF ~~ THEN REPLY #216659 /* ~Bodi.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216660 /* ~Mercury.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216661 /* ~Shadow.~ */ GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @68 /* ~Wrong answer. Git outta here 'fore ya get hurt. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA2
		SAY @64 /* ~That's the old password, you idiot! Give me the new password!~ */
		
		IF ~
			//!IsGabber(Player1)
			!IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO 1
		
		IF ~
			//IsGabber(Player1)
			IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO XAA2A
	END
	
	IF ~~ THEN BEGIN XAA2A
		SAY @66 /* ~(You hear someone yelling from the next room: "Don't you recognize who that is? It's <CHARNAME>, the hero of Baldur's Gate! Let them pass!")~*/
		= @67 /* ~Oh.. right, it's you. Ya all can go in now.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XAA2B
		SAY @131 /* ~(You hear someone yelling from the next room: "It's been a while, Captain! Go ahead, let them through!")~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MoveAlong
		SAY @132 /* ~Oh, it's you again. Well, what're you standin' round for? Go on through!~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ FATMBA
ADD_STATE_TRIGGER FATMBA 4
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND FATMBA
	IF ~  
		RandomNum(4,4)
	~ THEN BEGIN XAA0 // from:
		SAY @63 /* ~You know, I had a fall the other day. No one laughed, but the ground was cracking up.~ */
		IF ~~ THEN 
		EXIT
	END
END
//}

//{ MICK
ADD_STATE_TRIGGER MICK 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND MICK
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @62 /* ~Speedy delivery, speedy delivery coming through. Must inform the Grand Dukes that <CHARNAME> and <PRO_HISHER> companions have arrived. Speedy delivery, coming through!~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ OGRELEAD
ADD_STATE_TRIGGER OGRELEAD 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND OGRELEAD
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @61 /* ~Little pink ones, you shall all die. The Five have offered 25,000 gold for the head of <CHARNAME>, and we shall have it.~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
END
//}

/* 
	End of SoA - Ask who wants to go to Baldur's Gate
*/

//{ SUELLE2
ADD_STATE_TRIGGER SUELLE2 0
~
	!Global("XA_59AOverride", "GLOBAL", 1)
~

EXTEND_BOTTOM SUELLE2 0 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_0
END

EXTEND_BOTTOM SUELLE2 5 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_59AOverride","GLOBAL",1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59ATOB",FALSE)
	~
	EXIT

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_5
END

EXTEND_BOTTOM SUELLE2 8 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_59AOverride","GLOBAL",1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59ATOB",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_8
END

EXTEND_BOTTOM SUELLE2 13 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 14 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 18 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationLT(Player1,10)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100A",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationGT(Player1,9)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100B",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationLT(Player1,10)
		Global("XA_LeaveAfterSoA", "GLOBAL", 1)
		OR(4)
			Global("DornRomanceActive","GLOBAL",2)
			Global("HexxatRomanceActive","GLOBAL",2)
			Global("ViconiaRomanceActive","GLOBAL",2)
			Race(Player1, LICH)
	~
	THEN
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100C",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationGT(Player1,9)
		Global("XA_LeaveAfterSoA", "GLOBAL", 1)
		OR(4)
			Global("DornRomanceActive","GLOBAL",2)
			Global("HexxatRomanceActive","GLOBAL",2)
			Global("ViconiaRomanceActive","GLOBAL",2)
			Race(Player1, LICH)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100D",FALSE)
	~
	EXIT
END

APPEND SUELLE2
	IF ~~ THEN BEGIN XA_SUELLE2_0_D
		SAY @59 /* ~(She smiles as she looks at the two of you.)~ */
		= @60 /* ~She never once left your side. I cannot tell you how heartwarming it is to see love blossom in the aftermath of what transpired here.~ */
		
		IF ~  
			ReputationLT(Player1,10)
		~ 
		THEN GOTO 3
  
		IF ~  
			ReputationGT(Player1,9)
		~ 
		THEN GOTO 6
	END
	
END
//}

//{ SUJON
EXTEND_BOTTOM SUJON 14
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	DO ~
		Enemy()
	~
	EXTERN XACORWIJ XA_SUJON_14
END
//}

//{ UDSVIR03
ADD_TRANS_TRIGGER UDSVIR03 25 
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 0

EXTEND_BOTTOM UDSVIR03 25 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinStopSvirFight", "GLOBAL", 1)
	~ THEN REPLY @58 /* ~Saying that was a mistake, fool! I will kill you and take the stone! Forget your deal!~  */
	EXTERN XACORWIJ XA_Svir
END
//}

//{ DADROW3
	ADD_TRANS_TRIGGER DADROW3 0
	~
		GlobalLT("XA_CorwinCoverUD", "GLOBAL", 1)
	~
	DO 6
	
	ADD_TRANS_TRIGGER DADROW3 0
	~
		!IsValidForPartyDialogue("XACORWIN")
		!IsGabber("XACORWIN")
		GlobalLT("XA_CorwinCoverUD", "GLOBAL", 1)
	~
	DO 4
	
	EXTEND_BOTTOM DADROW3 0
		IF ~
			IsGabber(Player1)
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinCoverUD", "GLOBAL", 1)
			OR(2)
				!IsValidForPartyDialogue("Keldorn")
				!Global("KeldornOutrage","GLOBAL",0)
		~ THEN REPLY @348 /*~There are slaves here?! This is an outrage!~*/
		EXTERN XACORWIJ XA_PlayerSlaveComplain_3
		
		IF ~
			!IsGabber(Player1)
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinCoverUD", "GLOBAL", 1)
			OR(2)
				!IsValidForPartyDialogue("Keldorn")
				!Global("KeldornOutrage","GLOBAL",0)
		~ THEN REPLY @348 /*~There are slaves here?! This is an outrage!~*/
		EXTERN XACORWIJ XA_PlayerSlaveComplain_3A
	END
//}

//{ UDPHAE01
EXTEND_TOP ~UDPHAE01~ 106
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @57 /*  ~My companion, Schael.~ */
	GOTO 110
END

ADD_TRANS_TRIGGER UDPHAE01 61
~
	GlobalLT("XA_CorwinCoverUD", "GLOBAL", 1)
~
DO 1 2 3 4


//}

//{ BODHIAMB
EXTEND_BOTTOM BODHIAMB 5
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		InParty("XACORWIN")
	~ 
	THEN GOTO XAA0
END

ADD_TRANS_TRIGGER BODHIAMB 5
~
OR(2)
	!InParty("XACORWIN")
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ 
DO 0

APPEND BODHIAMB
	IF ~~ THEN BEGIN XAA0
		SAY @54 /* ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~ */
		
		IF ~~ THEN GOTO 6
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @55 /* ~Consider Captain Corwin here. How difficult will it be to lose her, and to know that you were responsible for her daugher growing up without a mother? Leave this place, and treasure what is left of your pathetic existence.~ */
		IF ~~ THEN
		EXTERN XACORWIJ XAA83
	END
	
	IF ~~ THEN BEGIN XAA2
		SAY @56 /* ~Arrogant child. Very well - if it is death you seek, then I will not deny you!~  */
		IF ~~ THEN
		DO ~
			ClearAllActions()
			StartCutSceneMode()
			StartCutSceneEx("XAACS07B",FALSE)
		~
		EXIT
	END
END
//}

//{ SUDEMIN
ADD_TRANS_TRIGGER SUDEMIN 39
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 0

EXTEND_BOTTOM SUDEMIN 39
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinStopDeminFight", "GLOBAL", 1)
	~ THEN REPLY @52 /* ~You asked for it, sister... time for you to die!~  */
	EXTERN XACORWIJ XA_Demin
END

APPEND SUDEMIN
	IF ~~ THEN BEGIN XA_Demin3
		SAY @53 /* ~Thank you for talking some sense into your comrade. Let us focus on the task at hand.~ */
		IF ~~ THEN
		GOTO 41
	END
END
//}

//{ MADAM
ADD_TRANS_TRIGGER MADAM 0
~
	!IsGabber("XACORWIN")	
~
DO 1 4

ADD_TRANS_TRIGGER MADAM 7
~
	!IsGabber("XACORWIN")
~
DO 3 4

EXTEND_BOTTOM MADAM 12	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	EXTERN XACORWIJ XA_CorwinMadam2
END

APPEND MADAM	
	IF ~~ THEN BEGIN XA_CorwinMadam3 // from:
		SAY #39396 /* ~I see. Perhaps you should reconsider where you are then... and remember not to bother other customers with your puerile attitude.~ */
		
		IF ~~ THEN
		EXIT
		
		IF ~
			Global("XA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
			Global("XA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~XACORWIJ~ XAA27A
		
		IF ~
			Global("XA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
			!Global("XA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~XACORWIJ~ XAA27
	END	
END
//}

//{ HELLJON
EXTEND_BOTTOM HELLJON 7 /* OK */

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7B
END

EXTEND_BOTTOM HELLJON 8 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8B
END

EXTEND_BOTTOM HELLJON 9 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9B
END

EXTEND_BOTTOM HELLJON 10 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10B
END

//{ NEB
EXTEND_BOTTOM NEB 1
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2
	
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2A
END

ADD_TRANS_TRIGGER NEB 2
~
	OR(2)
		!IsValidForPartyDialogue("XACORWIN")
		!InMyArea("XACORWIN")
~
DO 0

EXTEND_BOTTOM NEB 2
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2
	
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2A
END

APPEND NEB
	IF ~~ THEN BEGIN XAA0
		SAY @50 /*~You look familiar... yes... Captain Corwin, is it? You had me arrested just before I could introduce myself to your sweet, precious little daughter.~*/
		= @51 /*   ~I don't know how you found me, but I promise that when I'm done with you, I'll be sure to pay her a visit!~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_NebRohma", "GLOBAL", 1)
			SetGlobal("XA_NebFight", "GLOBAL", 1)
			Enemy()
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN EXTERN XACORWIJ XA_NebFight
		
	END
END
//}

//{ HAERDAJ
APPEND HAERDAJ
	IF ~~ THEN BEGIN XA_CorwinWantsSex5B
		SAY @49 /* ~Bah, hardly. You should read some of my earlier work.~ */
		IF ~~ THEN
		EXTERN XACORWIJ XAA29
	END
END
//}

//{ GORODR1
EXTEND_BOTTOM GORODR1 17 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 18 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 34 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END

EXTEND_TOP GORODR1 39 //OK	
	IF ~
		//GlobalLT("Chapter","GLOBAL",20)
		OR(20)
			IsValidForPartyDialogue("XACORWIN")
			IsValidForPartyDialogue("XACAELAR")
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Anomen")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Minsc")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("Valygar")
			IsValidForPartyDialogue("Mazzy")
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Dorn")
			IsValidForPartyDialogue("Cernd")
			IsValidForPartyDialogue("Edwin")
			IsValidForPartyDialogue("Sarevok")
			IsValidForPartyDialogue("Jan")
			IsValidForPartyDialogue("Rasaad")
			IsValidForPartyDialogue("Neera")
	~
	THEN REPLY @22 /* ~What say you, my loyal comrades? They wronged you as much as I. Should they be allowed to live, or must the treacherous cowards taste steel?~ */
	DO ~
		SetGlobal("XA_OdrenShouldDie", "GLOBAL", 100)
	~
	
	EXTERN GORODR1 XA_OdrenJudgeSOA
END

EXTEND_BOTTOM GORODR1 44 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END


APPEND GORODR1
	IF ~~ THEN BEGIN XA_OdrenDecision 
		SAY @42 /* ~Please, I ask you once again to forgive us, <CHARNAME>.~ */
		= @33  /* ~What is your decision?~ */
		IF ~
			GlobalGT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~  */
		GOTO 45
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @44 /* ~We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @45 /* ~We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!~  */
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~
			Global("XA_OdrenShouldDie", "GLOBAL", 100)
		~
		THEN GOTO XA_OdrenDecisionDecidingVote
	END
	
	IF ~~ THEN BEGIN XA_OdrenDecisionDecidingVote
		SAY @46 /* (Your group is evenly split - half believe the priests should be executed, and the other half want to show them mercy. You must cast the deciding vote.)~ */
		
		IF ~~ THEN REPLY @47 /* We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~~ THEN REPLY @48 /* We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!*/
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~ */
		GOTO 45
		
	END
END
//}

//{ DEGARD
ADD_TRANS_TRIGGER DEGARD 4 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 1
EXTEND_BOTTOM DEGARD 4 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @21 /* ~If I should happen across this "Edwin," I'll be sure to seek you out and let you know where he is.~ */
	DO ~
		SetGlobalTimer("XA_CorwinEdwinThayTimer", "GLOBAL", TWO_ROUNDS)
		//SetGlobal("XA_CorwinEdwinThay", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END
//}

//{ NALIAJ
EXTEND_BOTTOM NALIAJ 70
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_70 
END

EXTEND_BOTTOM NALIAJ 71
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_71 
END

EXTEND_BOTTOM NALIAJ 72
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_72 
END

EXTEND_BOTTOM NALIAJ 73
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_73 
END

APPEND NALIAJ
	IF ~~ THEN BEGIN XA_NaliaShamMarriage_70
		SAY @335 /*~She brings up a fair point, but I assure you that I'll shield you from as much of that nonsense as possible.~*/
		
		COPY_TRANS NALIAJ 70
	END
	
	IF ~~ THEN BEGIN XA_NaliaShamMarriage_71
		SAY @335 /*~She brings up a fair point, but I assure you that I'll shield you from as much of that nonsense as possible.~*/
		
		COPY_TRANS NALIAJ 71
	END
	
	IF ~~ THEN BEGIN XA_NaliaShamMarriage_72
		SAY @335 /*~She brings up a fair point, but I assure you that I'll shield you from as much of that nonsense as possible.~*/
		
		COPY_TRANS NALIAJ 72
	END
	
	IF ~~ THEN BEGIN XA_NaliaShamMarriage_73
		SAY @335 /*~She brings up a fair point, but I assure you that I'll shield you from as much of that nonsense as possible.~*/
		
		COPY_TRANS NALIAJ 73
	END
	IF ~~ THEN BEGIN XA_RefuseMeatballs
		SAY @176 /* ~I'll not take part in such decadance while there are poor people starving not 50 paces from this estate.~ */
		
		IF ~~ THEN EXTERN XACOOK XA_NaliaRefused
	END
	
END
//}

//{ KELDORJ

APPEND KELDORJ
	IF ~
		Global("XA_AvernusChat", "GLOBAL", 1)
	~ THEN BEGIN XA_AvernusEntry
		SAY @306 /*~In Torm's name... the Hells are far worse than I could've imagined!~ */
		
		IF ~~ THEN REPLY @303 /* ~We'll be out of here as soon as we find Caelar. Stay alert.~ */
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_AvernusEntry
	END

	IF ~~ THEN BEGIN XA_CorwinStruckDelcia
		SAY @12 /* ~That's... not how I would have handled the matter, Captain, but at least the Lady is out of harm's way.~ */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @18 /* ~She definitely deserved it. Well done, Captain.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
	END
END
//}

//{ DELCIA

ADD_TRANS_TRIGGER DELCIA 11 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 14 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 21 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 22 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM DELCIA 11 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 14 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 21 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 22  //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

APPEND DELCIA
	IF ~~ THEN BEGIN XA_CorwinLeave
		SAY @11 /* ~(She leaves in a hurry, with her hand covering the bruise on her face.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_DelciaEnd", "GLOBAL", 2)
			SetGlobal("DelceaMove","GLOBAL",1)
			ActionOverride("kpsold01",EscapeArea())
			SetGlobal("DelciaLeave","GLOBAL",2)
			EscapeAreaMove("AR1300",768,3310,N)
		~
		EXIT
	END
END
//}

//{ C6DRIZZ1
ADD_STATE_TRIGGER C6DRIZZ1 0
~
	!Global("XA_AttackedDrizztBG1", "GLOBAL", 1)
~

ADD_STATE_TRIGGER C6DRIZZ1 39
~
	!Global("XA_AttackedDrizztBG1", "GLOBAL", 1)
~

EXTEND_BOTTOM C6DRIZZ1 1  //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_CorwinDrizz
END

APPEND C6DRIZZ1
	IF ~
		Global("XA_AttackedDrizztBG1", "GLOBAL", 1)
	~ THEN BEGIN XA_DrizzMad
		SAY #53289 /* ~You there! I recognize you! You are the scoundrel that attacked me for no good reason near Baldur's Gate and made off with my equipment!~ [DRIZZT02] */
		
		IF ~~ THEN GOTO 1
	END
	
	IF ~~ THEN BEGIN XA_CorwinDrizz2
		SAY @14 /* ~A proposal? I will hear you out, <PRO_RACE>, but I will be wary. Speak, if you wish.~ */
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",1)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 32
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",0)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 33
		
		IF ~~ THEN REPLY @354 /* ~Never mind. We will be on my way.~ */ 
		GOTO 34
	END
END
//}

//{ IMOEN2
EXTEND_BOTTOM IMOEN2 21 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN GOTO XA_CorwinImoenReuniteChain	
END
//}

//{ INSPECT

ADD_TRANS_TRIGGER INSPECT 46 
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 1

EXTEND_BOTTOM INSPECT 46
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue("Edwin")
	~
	THEN EXTERN EDWINJ XA_EdwinFF1
END
//}

//{ EDWINJ

APPEND EDWINJ
	IF ~~ THEN BEGIN XA_EdwinFF1
		SAY @9 /* ~Oh yes... we've braved monsters, Flaming Fist --~ */
		IF ~~ THEN
		EXTERN XACORWIJ XA_EdwinFF2
	END
	
	IF ~~ THEN BEGIN XA_EdwinFF3
		SAY @10 /* ~Ah, yes. As I was saying, we've braved monsters, Sarevok's assorted minions, and fanatical crusaders only to fall to a sneak-thief with an over-fondness for flesh. Excellent deduction.~ */
		IF ~  
			!IsValidForPartyDialogue("Yoshimo")
		~ THEN EXIT
  
		IF ~  
			IsValidForPartyDialogue("Yoshimo")
		~ THEN EXTERN ~YOSHJ~ 54
	END
END
//}

// KORGANJ

EXTEND_BOTTOM KORGANJ 151 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN 
	EXTERN XACORWIJ XA_KORGANJ_151
END

// PIRMUR01

EXTEND_BOTTOM PIRMUR01 2
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	EXTERN XACORWIJ XA_PIRMUR01_2
END

// DELTOW01

APPEND DELTOW01
	IF WEIGHT #4 ~  
		IsValidForPartyDialogue("XACORWIB")
		Global("InteractCorwin","LOCALS",0)
		RandomNum(3,2)
	~ THEN BEGIN XA_InteractCorwin // from:
		SAY @7 /* ~A Flaming Fist officer, in Athkatla? You're very far from home! You looking for someone?~ */
		IF ~~ THEN 
		DO ~
			SetGlobal("InteractCorwin","LOCALS",1)
		~ 
		EXTERN ~XACORWIJ~ XA_InteractCorwin2
	END
	
	IF ~~ THEN BEGIN XA_InteractCorwin3
		SAY @8 /* ~I bet it's those bastard mercenaries upstairs. They're a real rude bunch. Good hunting, young lady.~ */
		IF ~~ THEN
		EXIT
	END
END

// BPROST2

APPEND BPROST2
	IF WEIGHT #4 ~  
		Global("BProst2Corwin","LOCALS",0)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~ THEN BEGIN XA_ProstCorwin // from:
		SAY @4 /* ~You there... I see you eying me, hon. You some kind of law officer or something?~ */
		= @5 /* ~Or are ye here for some action? I go both ways, ya know.~  */
		IF ~~ THEN 
		DO ~
			SetGlobal("BProst2Corwin","LOCALS",1)
		~ 
		EXTERN ~XACORWIJ~ XA_ProstCorwin2
	END
	
	IF ~~ THEN BEGIN XA_ProstCorwin3
		SAY @6 /* ~Then what are ye lookin at? Get lost!~   */
		IF ~~ THEN
		EXIT
	END
END

// HAEGAN

ADD_TRANS_TRIGGER HAEGAN 0
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM HAEGAN 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	EXTERN XACORWIJ XA_HAEGAN_0_5
END

ADD_TRANS_TRIGGER HAEGAN 5
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM HAEGAN 5
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	EXTERN XACORWIJ XA_HAEGAN_0_5
END

//{ DHARLOT2

ADD_TRANS_TRIGGER DHARLOT2 0
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM DHARLOT2 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN XACORWIJ XA_DHARLOT2A

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN XACORWIJ XA_DHARLOT2B
END
//}

//{ MAEVAR
EXTEND_BOTTOM MAEVAR 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		See("XACORWIN")
	~
	GOTO XA_LC_MaevarCorwin

END

APPEND MAEVAR
	IF ~~ THEN BEGIN XA_LC_MaevarCorwin
		SAY @399  /* ~More importantly, why have you brought an officer of Flaming Fist here? If I didn't know better, I'd think this was some sort of sting operation.~*/
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_LC_MaevarCorwin2
	END
	
	IF ~~ THEN BEGIN XA_LC_MaevarCorwin3
		SAY @400  /* ~Is that so? And why should I trust you? Perhaps it's time to give Lin a break and strap you to the rack instead?~*/
		
		IF ~~ THEN
		GOTO 6
	END
END
//}

// FFCUST04

APPEND FFCUST04
	IF WEIGHT #4 ~  
		Global("IKFFCustomer4Corwin","GLOBAL",0)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~ THEN BEGIN 8 // from:
		SAY @3 /* ~Wow... a beauty like you, in a place like this? Are ye lookin for someone? Perhaps a nice, strong man to keep you warm at night, eh?~  */
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~XACORWIJ~ XA_FFCUST04A
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~XACORWIJ~ XA_FFCUST04B
	END
END

// DALESON.D

ADD_TRANS_TRIGGER DALESON 9
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 10
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 11
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

EXTEND_BOTTOM DALESON 9
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @1 /* ~The de'Arnise keep has been invaded

Daleson told me that there were about thirty trolls within the keep, and one very large one that seemed to be in charge. He also mentioned the yuan-ti that seem to be here as well, though he did not know their numbers.~ */
	EXTERN XACORWIJ XA_Daleson
END

EXTEND_BOTTOM DALESON 10
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @2 /* ~The de'Arnise keep has been invaded

Daleson mentioned that Lord de'Arnise may still be alive, possibly in a dungeon that the man had boarded up long ago. Apparently he was caught trying to collect the pieces to a flail, the heads of which he kept apart throughout the keep, although Daleson didn't know why.~ */
	EXTERN XACORWIJ XA_Daleson
END

EXTEND_BOTTOM DALESON 11
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	EXTERN XACORWIJ XA_Daleson
END

CHAIN 
	IF ~~ THEN GORODR1 XA_OdrenJudgeSOA
		@23 /* ~(Odren and his companions look at your party with hope in their eyes.)~ */
		
		== XACORWIJ
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@24 /* ~They deserve to die. Not just for their treachery, but also for their cowardice. There's been so much death already, though... If you decide to spare them, I will understand.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("RASAAD")
		~
		@211  /* ~The willpower of even the most resolute can falter from time to time. Let us not be so quick to judge, lest we be judged ourselves. Let them live, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== XACAELAJ
		IF ~
			IsValidForPartyDialogue("XACAELAR")
		~
		@320 /* ~Surely, there must be some way for these priests to find redemption. Life, I say.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
		~
		@321 /* ~I'll not have their blood on my hands; I'd need to wash them before picking my turnips. Let them live, <CHARNAME>.*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== SAREV25J
		IF ~
			IsValidForPartyDialogue("SAREVOK")
		~
		@292  /* ~Must you even ask? Death. The more excruciating, the better.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MINSCJ
		IF ~
			IsValidForPartyDialogue("MINSC")
		~
		@29 /* ~(Minsc is engaged in an animated discussion with Boo about the circumstances of Odren's betrayal. You decide to treat this as a vote for life, not just because you don't have the time for this nonsense, but because Minsc is completely insane. It would be wrong, after all, to have a person's life be decided by an abject fool.)~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("KORGAN")
		~
		@25 /* ~Death, I say. Me axe be waitin' to taste their squirrely innards.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@30 /* ~I ... I know what they did was wrong... maybe they can learn from this and do some good? They can at least tell o-others not to judge you just because you are a Bhaalspawn. I think we should let them live.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		@26 /* ~A great evil has been purged from this world. To restore balance, these warriors must be purged as well.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@32 /* ~We've experienced enough bloodshed for one lifetime. Let them go, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NEERAJ
		IF ~
			IsValidForPartyDialog("Neera")
		~
		@231  /* ~You're really gonna make me choose? Well... let's see...~*/
		= @224 /* ~They did lie to us, and they knowingly sent us to our doom. On the other hand, I'm REALLY hungry. Let's just make our way to the nearest taven and leave them be.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
		~
		@27 /* ~These treacherous dogs deserve death. They've shown me nothing to indicate otherwise.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@34 /* ~Life, I say. Think of the songs the bards will sing! <CHARNAME>, the mighty! <CHARNAME>, the merciful!~   */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
		~
		@28 /* ~Few things please me more than to shed the blood of sanctimonious hypocrites. Death to them all!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
			
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
		~
		@35 /* ~They have betrayed not only us, but their god, and everything they believed in. Let us end their misery and put them to the sword.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MAZZYJ
		IF ~
			IsValidForPartyDialogue("Mazzy")
		~
		@36 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@38 /* ~Helmites hunt my kind for sport on the surface. I welcome the opportunity to help even the score.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@37 /* ~I choose life. People must be given the opportunity to learn from their mistakes, no matter how severe.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("CERND")
		~
		@40 /* ~Their foolishness could have easily led to the world being utterly ravaged at the hands of Demogorgon. As much as it pains me to say it, death is the only fitting punishment for these scoundrels.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~
		@288 /* ~These false priests deserve death, yet... part of me wishes that they are one day able to redeem themselves in the eyes of Helm, and they cannot do that if they are dead. I will support whatever you decide.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== EDWINJ
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@31 /* ~They must be punished! (Yes, severely!) Die, die, die, die, DIE!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
END
++@41 GOTO XA_OdrenDecision 

CHAIN
	IF ~~ THEN VALYGARJ XA_AskDiviner
		@108 /* ~Yes. If I had children, would my family's curse be passed to them?~ */
		
		== XADIVINE
		@105 /* ~You are not cursed. If you are referring to your blood's affinity for the magical arts, then yes, your children will possess the gift. That gift, that talent, can be nurtured or stifled. Support it and watch it blossom, or repress it and watch it wither and die.~ */
		
		== VALYGARJ
		@106 /* ~So, what you are saying is that it's my choice.~*/
		
		== XADIVINE
		@107 /* ~Yes.~*/
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN XACORWIJ XA_AskDiviner
		@109 /* ~Yes. Will my daugher understand why I need to be away from home so much?~ */
		
		== XADIVINE
		@110 /* ~Your daughter already understands the reasons for your sacrifice. She is wiser than you give her credit for. She is as proud of you as you are of her.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN AERIEJ XA_AskDiviner
		@111 /* ~Yes - Is my m-mother still alive?~ */
		
		== XADIVINE
		@112 /* ~Yes, and you will see her again.~ */
		
		== AERIEJ
		@113 /* ~Oh, I hope so... thank you.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN NALIAJ XA_AskDiviner
		@116 /* ~To this fraudster? No. How many poor people has this soothsayer swindled with his lies?~ */
		DO ~
			SetGlobal("XA_NaliaAskedDiviner", "GLOBAL", 1)
		~
		== XADIVINE
		@117 /* ~The only fraudster here is you, young lady.~ */
		
		== NALIAJ
		@118 /* ~I beg your pardon?~ */
		
		== XADIVINE
		@119 /* ~Continue with your virtue signaling if it makes you feel better. Just know that it does nothing to improve the situation of those you claim to care about.~ */
END XADIVINE XA_AlreadyAsked



