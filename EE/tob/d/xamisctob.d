//{ Altered Transitions
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

//{ AMBAR01
	EXTEND_TOP AMBAR01 3
		IF ~
			GlobalLT("XA_AskCourier", "LOCALS", 1)
			See("XAHAMZA")
		~ THEN REPLY @0 /*~I'm looking for a courier to deliver a message to the Sword Coast. Can you help?~ */
		DO ~
			SetGlobal("XA_AskCourier", "LOCALS", 1)
		~
		GOTO XA_AMBAR01_Hamza
	END
	
	EXTEND_TOP AMBAR01 21
		IF ~
			GlobalLT("XA_AskCourier", "LOCALS", 1)
			See("XAHAMZA")
		~ THEN REPLY @0 /* ~I'm looking for a courier to deliver a message to the Sword Coast. Can you help?~*/
		DO ~
			SetGlobal("XA_AskCourier", "LOCALS", 1)
		~
		GOTO XA_AMBAR01_Hamza
	END
	
	APPEND AMBAR01
		IF ~~ THEN BEGIN XA_AMBAR01_Hamza
			SAY @356 /* ~Hamza can help with that. He's right over here, at the bar.~ */
			
			IF ~~ THEN
			GOTO 21
		END
	END
//}

//{ AMTGEN01
	EXTEND_BOTTOM AMTGEN01 0
		IF ~
			IsValidForPartyDialog("XACORWIN")
		~ THEN EXTERN XACOR25J XA_GeneralTalk_Chain
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
		~ THEN REPLY @2  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			Global("XA_KanaDream", "GLOBAL", 4)
		~ THEN REPLY @2  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @3 /* ~Send me to Caelar Argent, in Avernus.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_Avernus
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_BringCaelar", "LOCALS", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @4 /* ~~Bring me Caelar Argent.~ */
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
		~ THEN REPLY @2  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			Global("XA_KanaDream", "GLOBAL", 4)
		~ THEN REPLY @2  /* ~I want to go to Kanaglym, in the caverns beneath Dragonspear.~ */
		GOTO XA_Kanaglym
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @3 /* ~Send me to Caelar Argent, in Avernus.~ */
		DO ~
			SetGlobal("XA_BringCaelar", "LOCALS", 1)
		~
		GOTO XA_Avernus
		
		IF ~
			GlobalGT("XA_AshatielSpirit", "GLOBAL", 1)
			GlobalLT("XA_BringCaelar", "LOCALS", 1)
			GlobalLT("XA_ReturnToAvernus", "GLOBAL", 1)
		~ THEN REPLY @4 /* ~~Bring me Caelar Argent.~ */
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
			SAY @5 /*~My, oh my...~*/
			
			IF ~~ THEN 
			EXTERN XACORWIB XA_SavanasCorwinChain
		END
	END
	APPEND PPGUY01
		IF ~~ THEN BEGIN XA_Avernus_KnowRisk
			SAY @6 /* ~As you wish.~*/
			
			IF ~~ THEN
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO4500")
			~
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_BringCaelar
			SAY @7 /*~Impossible. Though it is certain that she is in Avernus, her precise location cannot be determined.~*/
			
			IF ~~ THEN REPLY @8 /*~Then send me to Avernus. I'll find her and bring her back.~*/
			GOTO XA_Avernus
			
			IF ~~ THEN REPLY @9 /*~Nevermind, then.~*/
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_Avernus
			SAY @10 /* ~Though her precise location cannot be ascertained, she is likely being held in what was once Belhifet's tower. The tower is protected by a magical barrier that is fueled by the life force of an exceptionally powerful demonic presence. It is for this reason that you cannot be sent directly to her, nor can she be brought here. Be warned, child of Bhaal. Once you enter the tower, the barrier may interfere with your ability to teleport back to this Pocket Plane.~ */
			
			IF ~~ THEN REPLY @11 /* ~I understand the risk. Send me to Avernus.~*/
			GOTO XA_Avernus_2
			
			IF ~~ THEN REPLY @12 /*~On second thought, I don't want to go there.~*/
			EXIT
			
			IF ~
				GlobalLT("XA_CantGoBack", "LOCALS", 1)
			~ THEN REPLY @13 /*~If I destroy the presence, then I'll be able to return, right?~*/
			DO ~
				SetGlobal("XA_CantGoBack", "LOCALS", 1)
			~
			GOTO XA_AvernusReturn
		END
		
		IF ~~ THEN BEGIN XA_AvernusReturn
			SAY @14 /*~That is correct.~*/
			
			IF ~~ THEN REPLY @11 /* ~I understand the risk. Send me to Avernus.~*/
			GOTO XA_Avernus_2
			
			IF ~~ THEN REPLY @12 /*~On second thought, I don't want to go there.~*/
			EXIT
		END
		
		IF ~~ THEN BEGIN XA_Avernus_2
			SAY @15 /* ~As you wish. You will be sent to the steps leading up to the tower.~ */
			
			IF ~~ THEN
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO4500")
			~
			EXIT
		END
		
		IF ~~ THEN BEGIN XA_Kanaglym
			SAY @6 /*  ~As you wish.~ */
			
			IF ~~ THEN 
			DO ~
				StartCutSceneMode()
				StartCutScene("XAGO5300")
			~
			EXIT
		END
	END
	//}

//{ FINSOL01
	EXTEND_BOTTOM FINSOL01 5
		IF ~
			!Dead("XACORWIN")
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		~ THEN REPLY @16 /*~Before I decide anything, tell me — does my child also carry the essence?~*/
		GOTO XA_Twins
	END
	
	EXTEND_BOTTOM FINSOL01 27  /* Player must make a choice */
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ EXTERN XACOR25J XA_Choice_NonRomance
	
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ EXTERN XACOR25J XA_Choice
		
		IF ~
			IsValidForPartyDialogue("XACAELAR")
		~ EXTERN XACAELAJ XA_Choice
	END
	
	EXTEND_BOTTOM FINSOL01 29 /* Player chose godhood - evil */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 30 /* Player chose godhood - neutral */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 31 /* Player chose godhood - good */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_ChoiceThankYou
		
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouChild
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinTwins", "GLOBAL", 1)
			!Global("XA_CorwinPCGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCGod", "GLOBAL", 1)
		~ 
		EXTERN XACOR25J XA_ChoiceThankYouTwins
	END
	
	EXTEND_BOTTOM FINSOL01 32 /* Player chose to remain mortal */
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPCNotGod", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinPCNotGod", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_StayMortal
	END
	
	APPEND FINSOL01
		IF ~~ THEN BEGIN XA_Twins
			SAY @17 /* ~No. The children growing in your companion's womb are free of the taint of Bhaal.~ */
			
			IF ~~ THEN REPLY @18 /*~Wait... children? You mean...~*/
			GOTO XA_Twins3A
			
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN
			EXTERN XACOR25J XA_Twins2
		END
		
		IF ~~ THEN BEGIN XA_Twins3 
			SAY @19 /* ~Yes, I can see your future clearly, child. You will give birth to fraternal twins.~*/
			
			IF ~~ THEN
			DO ~
				SetGlobal("XA_CorwinTwins", "GLOBAL", 1)
			~
			EXTERN XACOR25J XA_Twins4
		END
		
		IF ~~ THEN BEGIN XA_Twins3A
			SAY @20 /* ~Yes, her future is clear to me, child. She will give birth to fraternal twins. Now, let us get back to the matter at hand. A choice lies before you — one that will shape the future of the planes.~*/
			COPY_TRANS FINSOL01 5
		END
		
		IF ~~ THEN BEGIN XA_Twins5
			SAY @21 /* ~Enough. Let us get back to the matter at hand. <CHARNAME>, a choice lies before you. One that will shape the future of the planes.~ */
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
		THEN REPLY @22  /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
		GOTO XA_LC_AstersEdge1
	END
	
	EXTEND_BOTTOM BOTSMITH 30  /* Has Eye and Avenger*/
		IF ~
			PartyHasItem("XASW1HCA")
		~
		THEN REPLY @22 /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
		GOTO XA_LC_AstersEdge2
	END
	
	EXTEND_BOTTOM BOTSMITH 78  /* Don't have Darkfire or Taralash */
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~ 
		THEN REPLY @23 /* ~Understood.~*/
		GOTO 82
	
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @24 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
		
	END

	EXTEND_BOTTOM BOTSMITH 79 /* Has both Darkfire and Taralash*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @24 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 80 /* Has Darkfire*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @24 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 81 /* Has Taralash*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @24 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 88 /* Has Firetooth*/
		IF ~
			OR(2)
				PartyHasItem("XACORBOW")
				PartyHasItem("XACORBO3")
		~
		THEN REPLY @24 /* ~What about Corwin's bow? Could the string be used to improve it?~ */
		GOTO XA_CorwinBowGond
	END
	
	EXTEND_BOTTOM BOTSMITH 2
		IF ~
			Global("XA_AskCespenarDagger", "GLOBAL", 1)
			OR(3)
				PartyHasItem("XASTDAG")
				PartyHasItem("XASTDAGB")
				PartyHasItem("XASTDAGD")
		~ THEN REPLY @25 /* ~Are you familiar with the Soultaker dagger?~ */
		GOTO XA_SoulTakerFamiliar
		
		IF ~
			PartyHasItem("XABROKEN")
			GlobalLT("XA_AskHowMuch", "LOCALS", 1)
		~
		THEN REPLY @26 /*~Take a look at this broken sword and armor. Can they be repaired?~*/
		DO ~
			SetGlobal("XA_AskHowMuch", "LOCALS", 1)
		~
		GOTO XA_FixCaelarArmor
		
		IF ~
			PartyHasItem("XABROKEN")
			Global("XA_AskHowMuch", "LOCALS", 1)
			PartyGoldGT(14999)
		~
		THEN REPLY @27 /* ~The broken armor and sword we discussed. Here's the gold you need to fix it. (Pay 15,000 gold.)~*/
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
			SAY @28 /*~Ooo let's me see... yuck! These stink like righteousness! Cespenar can fix, yes, but I needs lots and lots of gold... 15,000 gold!~*/
			
			IF ~
				PartyGoldGT(14999)
			~ THEN REPLY @29 /* ~Here. (Pay 15,000 gold.)~ */
			DO ~
				SetGlobal("XA_ItemMaker","GLOBAL",3)
				TakePartyGold(15000)
				TakePartyItemNum("XABROKEN", 1)
				DestroyItem("XABROKEN")
			~
			GOTO 11
			
			IF ~~ THEN REPLY @30 /*~Nevermind.~*/
			EXIT
		END
	
		IF ~~ THEN BEGIN XA_SoulTakerFamiliar
			SAY @31 /* ~Soul prison, yes. Very nasty. Why you ask? You gots dagger?~ */
			
			IF ~~ THEN REPLY @30 /* ~Nevermind.~*/
			EXIT
			
			IF ~~ THEN REPLY @32  /*~I do. How would I go about releasing the souls trapped inside?~*/
			GOTO XA_SoulTakerFamiliar2
		END
		
		IF ~~ THEN BEGIN XA_SoulTakerFamiliar2
			SAY @33 /* ~Go to Fugue Plane! Souls will break free of dagger there. But how to go to Fugue Plane if not dead? Thinking make Cespenar's head ache... oh, well. Would you like me to make you shiny ones? I look though items, yes?~*/
			
			IF ~
				Dead("bdkherr")
			~ THEN REPLY @34 /* ~No, not right now. Go back to doing whatever it was... you do.~*/
			DO ~
				AddJournalEntry(@36, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 2)
			~
			GOTO 3
			
			IF ~
				Dead("bdkherr")
			~ THEN REPLY @35 /* ~Go ahead.~*/
			DO ~
				AddJournalEntry(@36, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 2)
			~
			GOTO 4
			
			IF ~
				!Dead("bdkherr")
			~ THEN REPLY @34 /* ~No, not right now. Go back to doing whatever it was... you do.~*/
			DO ~
				AddJournalEntry(@38, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 3)
			~
			GOTO 3
			
			IF ~
				!Dead("bdkherr")
			~ THEN REPLY @35 /* ~Go ahead.~*/
			DO ~
				AddJournalEntry(@38, INFO)
				SetGlobal("XA_AskCespenarDagger", "GLOBAL", 3)
			~
			GOTO 4
		END
		
		IF ~
			GlobalGT("XA_ItemMaker", "GLOBAL", 0)
		~ THEN BEGIN XA_BowCreated
			SAY @37 /* ~Enjoy! Now Cespenar goes back to his duties, oh yes! Lots of goodies to find, lots to collect!~ [BOTSM10] */
			
			IF ~~ THEN
			DO ~
				SetGlobal("XA_ItemMaker", "GLOBAL", 0)
			~
			EXIT
		END
		
	
		IF ~~ THEN BEGIN XA_CorwinBowGond
			SAY @39  /*~Ooo! Lets me see, lets me see! Very nice.... yes! Cespenar can replace the string on this bow, with Bowstring of Gond! Make very powerful, for 5000 gold. You wants?~ */
			
			IF ~
				PartyGoldGT(4999)
				PartyHasItem("XACORBO3")
			~
			THEN REPLY @40 /* ~Sure, go ahead.~ */
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
			THEN REPLY @40 /* ~Sure, go ahead.~ */
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
			~ THEN REPLY @41 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY @42 /* ~No. What else?~ */ 
			GOTO 82
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge1
			SAY @43  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @44  /* ~Do it. (Pay 5,000 gold.)~*/
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
			~ THEN REPLY @41 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY @42 /* ~No. What else?~ */ 
			GOTO 23
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge2
			SAY @43  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @44  /* ~Do it. (Pay 5,000 gold.)~*/
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
			~ THEN REPLY @41 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY @42 /* ~No. What else?~ */ 
			GOTO 31
		END
		
		IF ~~ THEN BEGIN XA_LC_AstersEdge3
			SAY @43  /*~Eh? Yuck, it still stinks like righteousness! I nots have a recipe for it. Maybe jewel will make it better and less stinky, maybe not. Give me 5,000 gold and you finds out!~ */
			
			IF ~
				PartyGoldGT(4999)
			~ THEN REPLY @44  /* ~Do it. (Pay 5,000 gold.)~*/
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
			~ THEN REPLY @41 /* ~I don't have that much gold.~ */
			GOTO 10
			
			IF ~~ THEN REPLY @42 /* ~No. What else?~ */ 
			GOTO XA_LC_KeepLooking
		END
		
		IF ~~ THEN BEGIN XA_LC_Eye
			SAY @45 /* ~You have Eye of Tyr. Very shiny... Cespenar has recipe to make better Purifier or Holy Avenger with shiny pommel. If you finds them, bring and I makes sword better.~*/
			
			IF ~
				!PartyHasItem("XASW1HCA")
			~
			GOTO XA_LC_KeepLooking
			
			IF ~
				PartyHasItem("XASW1HCA")
			~ THEN REPLY @46  /* ~Could the jewel instead be used to improve Caelar's long sword, Aster's Edge?~ */
			GOTO XA_LC_AstersEdge3
		END 
		
		IF ~~ THEN BEGIN XA_LC_KeepLooking
			SAY @47  /*~I keeps looking... let's me see...~ */
			
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
		EXTERN XACOR25J XA_SARMEL01_68
	END

	APPEND SARMEL01
		IF ~~ THEN BEGIN XA_SARMEL01_68_2
			SAY @48 /* ~Oh, dear! I trust your daughter is alright?~ */
			
			IF ~~ THEN
			EXTERN XACOR25J XA_SARMEL01_68_3
		END
		
		IF ~~ THEN BEGIN XA_SARMEL01_68_4
			SAY @49 /* ~I'm glad to hear that your child is fine... but I've not heard of the Five before.~ */
			
			IF ~~ THEN REPLY @50 /* ~That's odd. I'd have thought that someone with as much knowledge on the matter would be familiar with them. In any case, with Illasera gone, what other Bhaalspawn should I be concerned with?~ */
			GOTO 69
		END
	END
//}

//{ SARPROVF
EXTEND_BOTTOM SARPROVF 0 /* OK */

	IF ~  
		PartyGoldGT(49)
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
		!Global("ToldVampires","GLOBAL",1)
		!GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN REPLY @51 /* ~Sounds good to me!~ */ 
	DO ~
		TakePartyGold(50)
	~ 
	EXTERN ~XACOR25J~ XA_SARPROVF_0
	
	IF ~  
		PartyGoldGT(49)
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
		!Global("ToldVampires","GLOBAL",1)
		GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN REPLY @51 /* ~Sounds good to me!~ */ 
	DO ~
		TakePartyGold(50)
	~ 
	EXTERN ~XACOR25J~ XA_SARPROVF_0_BodhiBite
END

ADD_TRANS_TRIGGER SARPROVF 5
~
	OR(2)
		!IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
~
DO 0

EXTEND_BOTTOM SARPROVF 5 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN
	EXTERN ~XACOR25J~ XA_SARPROVF_0_BodhiBite
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		!GlobalGT("XA_CorwinCleansed", "GLOBAL", 0)
	~ THEN
	EXTERN ~XACOR25J~ XA_SARPROVF_0
END
//}

//{ SARPRO01.D
EXTEND_BOTTOM SARPRO01 11 /* OK */
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @52  /* ~That sounds reasonable. You've got a deal.~*/
	EXTERN XACOR25J XA_SARPRO01_11
END
//}

//{ HGWRA01.D
EXTEND_BOTTOM HGWRA01 18 /* OK */
	IF ~
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN GOTO XA_Corwin
END

EXTEND_BOTTOM HGWRA01 24 /* OK */
	IF ~
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	EXTERN XACOR25J XA_Corwin_Wraith2
END

APPEND HGWRA01
	IF ~~ THEN BEGIN XA_Corwin
		SAY @53 /* ~What of the inevitable pain you must give to the one you love? The woman you call "Schael."~ */
		IF ~~ THEN
		EXTERN XACOR25J XA_Corwin_Wraith
	END
	
	IF ~~ THEN BEGIN XA_Corwin_Wraith3
		SAY @54 /*~Foolish woman. Behold, and learn how you have murdered she who is dearest to you.~*/
				
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
	~ THEN REPLY @55 /*~Tell me about Caelar.~*/
	GOTO XA_Caelar

	IF ~
		InParty("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @56 /* ~Tell me about Schael.~*/
	GOTO XA_Schael_Illasera
	
	IF ~
		InParty("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @57 /* ~Tell me about Corwin.~*/
	GOTO XA_Corwin_Illasera
	
	IF ~
		InParty("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @56 /* ~Tell me about Schael.~*/
	GOTO XA_Schael
	
	IF ~
		InParty("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_MeetIllasera", "GLOBAL", 1)
	~ THEN REPLY @57 /* ~Tell me about Corwin.~*/
	GOTO XA_Corwin
END

APPEND SARVOLO
	IF ~~ THEN BEGIN XA_Caelar
		SAY @58 /*~Caelar... Argent? By the gods, it IS her! I'd heard rumors that a glorious warrior matching her description was travelling with you, but I didn't think it possible! How — how did you manage to free her from Avernus?~*/
		
		IF ~~ THEN REPLY @59 /*~I'll spare you the bloody details. All that matters is that she is here now, and that we are fighting for the same cause.~*/
		GOTO XA_CaelarSarvolo2
		
		IF ~
			IsValidForPartyDialogue("XACAELAR")
			See("XACAELAR")
			GlobalLT("XA_CaelarVolo", "LOCALS", 1)
		~ THEN REPLY @60 /* ~She can explain.~ */
		DO ~
			SetGlobal("XA_CaelarVolo", "LOCALS", 1)
		~
		EXTERN XACAELAJ XA_CaelarSarvolo
	END

	IF ~~ THEN BEGIN XA_CaelarSarvolo2
		SAY @61 /*~Amazing! Remarkable! To willigly venture to Avernus again, this time to rescue the Shining Lady herself!~*/
		
		IF ~~ THEN
		GOTO 9
	END

	IF ~~ THEN BEGIN XA_Corwin_Illasera
		SAY @62 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		= @63 /* The pair have achieved feats that no one could have imagined, and her devotion to <CHARNAME>'s cause has only grown since <PRO_HESHE> helped rescue her daughter from Illasera the Quick. Though no one can say what the future has in store for this duo, one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~  */
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACOR25J XA_Corwin_Sarvolo
	END
	
	IF ~~ THEN BEGIN XA_Schael_Illasera
		SAY @64 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together.  */
		
		= @65 /*~<CHARNAME> was smitten by her beauty, and their relationship gradually evolved from friendship into something far more profound. Their fierce devotion toward one another was only strengthened after <CHARNAME> helped rescue her daughter from Illasera the Quick. Their love, to this point, has endured against all odds. Whether it will continue to do so, no one can say, though one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACOR25J XA_Schael_Sarvolo		
	END
	
	IF ~~ THEN BEGIN XA_Corwin
		SAY @66 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		=@67 /*~The pair have achieved feats that no one could have imagined, and her devotion to <CHARNAME>'s cause has only grown since <PRO_HESHE> saved the life of Skie Silvershield, the daughter of one of the Grand Dukes. Though no one can say what the future has in store for this duo, one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACOR25J XA_Corwin_Sarvolo
	END
	
	IF ~~ THEN BEGIN XA_Schael
		SAY @68 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. */
		
		= @69 /*~<CHARNAME> was smitten by her beauty, and their relationship gradually evolved from friendship into something far more profound. Their fierce devotion toward one another was only strengthened after <CHARNAME> saved the life of Skie Silvershield, the daughter of one of the Grand Dukes. Their love, to this point, has endured against all odds. Whether it will continue to do so, no one can say, though one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~*/
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_CorwinVolo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinVolo", "LOCALS", 1)
		~
		EXTERN XACOR25J XA_Schael_Sarvolo		
	END
	
	IF ~~ THEN BEGIN XA_Corwin_Sarvolo_END
		SAY @70 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty. You're as much a hero in this story as <PRO_HESHE> is.~   */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @72  /*~He's right, my friend.~ */
		GOTO 9
	END

	IF ~~ THEN BEGIN XA_Schael_Sarvolo_END
		SAY @71 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty, and more importantly, the love you two have for one another. You're as much a hero in this story as <PRO_HESHE> is.~     */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @73 /*~He's right, dear.~ */
		GOTO 9
	END	
END
//}

//{ RASAA25J
APPEND RASAA25J
	IF ~~ THEN BEGIN XA_AmkethranCourier_END
		SAY @74 /* ~Major, <CHARNAME> — long ago I rescued a courier based out of this village. He had been beset by brigands on the roads northwest of here. His name was Hamza. If he is here, he will surely help us.~ */
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ NEERA25J
APPEND NEERA25J
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @75 /* ~Eek! Oh, ewwww! Get it off me! Aah! You're covered in it worse than me!~ */
		
		= @76 /* ~Ohhhh! This village better have a bathhouse!~*/
		
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
		EXTERN XACOR25J XA_TimeToGrieveLater
	END
END
//}

//{ AERIE25J
APPEND AERIE25J
	IF ~
		Global("XA_AvernusChat", "GLOBAL", 1)
	~ THEN BEGIN XA_AvernusEntry
		SAY @79 /* ~Ohh... *cough* it's so h-hot down here! These poor souls!~ */
		
		IF ~~ THEN REPLY @80 /* ~We'll be out of here as soon as we find Caelar. Stay alert.~ */
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
		EXTERN XACOR25J XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~ THEN 
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN KELDO25J XA_AvernusEntry
	END

	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @77 /* ~Eek! Oh, ewwww! Get it off me!~ */
		
		= @78 /* ~Ohhhh! I hope this v-village has a bathhouse!~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_HowMany
		SAY @81 /* ~A-are you sure that's a good idea? It's been so long since he died...~ */
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_HowMany2
	END

	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @82 /* ~The city's been completely d-destroyed... all those people...~ */
		
		IF ~~ THEN
		EXTERN XACOR25J XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Aerie
		SAY @83 /* ~Of course. W-what do you need?~ */
		
		= @84 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @85 /* ~Oh, Schael! That's wonderf—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-74
	IF ~
		Global("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie
		SAY @86 /* ~<CHARNAME>, I'm so h-happy for you and Schael!~*/
		
		IF ~~ THEN REPLY @87 /* ~Thanks Aerie.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
		
		IF ~~ THEN REPLY @88 /* ~For what?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_Silly
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Silly
		SAY @89 /* ~Hee hee, she's pregnant with your child, silly!~ */
		
		IF ~~ THEN REPLY @87 /* ~Thanks Aerie.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_PickName
		SAY @90 /* Have you given any thought as to the baby's name?~*/
		
		IF ~~ THEN REPLY @91 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_GorionIlara

		IF ~~ THEN REPLY @92 /* ~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Ideas
		SAY @93 /* ~Hmm... a lot of people n-name their children after people who've had a profound impact on their life. If I ever have a baby boy, I'm going to name him Quayle. Oh, I'm so excited to see your baby!~*/
		
		IF ~~ THEN REPLY @94 /* ~There's still a long way to go. I'll be counting on you to help keep Schael and our unborn child healthy.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_GorionIlara
		SAY @95 /* ~Those are both beautiful n-names ... oh, I'm so excited to see your baby!*/
		
		IF ~~ THEN REPLY @94 /* ~There's still a long way to go. I'll be counting on you to keep Schael and our unborn child healthy.~ */
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown		
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_WontLetDown
		SAY @96 /* ~I won't let you down. I promise.~ */
		
		IF ~~ THEN REPLY @97 /*~Thank you, Aerie.~ */
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
		SAY @98 /* ~Hmph. I wasn't expecting to be back in the Hells so soon. I'd almost begun to miss the tortured screams of the damned.~ */
		
		IF ~~ THEN REPLY @80 /* ~We'll be out of here as soon as we find Caelar. Stay alert.~ */
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
		EXTERN XACOR25J XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~ THEN 
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN KELDO25J XA_AvernusEntry
		
		IF ~
			IsValidForPartyDialogue("Aerie")
		~ THEN
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXTERN AERIE25J XA_AvernusEntry
	
	END

	IF ~~ THEN BEGIN XA_SarevokBanter3Chain_END
		SAY @99 /* ~I realize now that I was wrong. Your skill in battle is considerable, as is your ability to lead others.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_Romance_Chain
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_NonRomance_Chain
	END
END
//}

//{ IMOEN25J
APPEND IMOEN25J
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @101  /* ~The city's been completely destroyed... all those people...~*/
		
		IF ~~ THEN
		EXTERN XACOR25J XA_TimeToGrieveLater
	END
	
	//{ Dialog J-73
	IF ~
		Global("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen
		SAY @102 /* ~Schael just told me the news. I'm so happy for you two!!~ */
		
		IF ~~ THEN REPLY @103 /* ~News?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_WhatNews
		
		IF ~~ THEN REPLY @104 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_WhatNews
		SAY @105 /* ~Yes, that she's pregnant! Sheesh!~*/
		
		IF ~~ THEN REPLY @104 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Dad
		SAY @90 /* ~Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @92 /*~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_Ideas
		
		IF ~~ THEN REPLY @91 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_GorionIlara
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Ideas
		SAY @106 /* ~Hmm... a lot of people name their children after people who've had a profound impact on their life.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil2
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_GorionIlara
		SAY @107 /* ~Those are great names. Oh, I'm so excited! Gorion would be *so* proud of you.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil
		SAY @108 /* ~And just so you know ... I'm going to spoil my niece or nephew rotten!~ */
		
		IF ~~ THEN REPLY @109 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil2
		SAY @110 /* ~Whatever you two decide ... I want you know that I'm going to spoil my niece or nephew rotten!~*/
		
		IF ~~ THEN REPLY @109 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_END
		SAY @111 /* ~You got that right.~ */
		
		IF ~~ THEN EXIT
	END
	//}
	
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @112 /* ~I'm covered in it, ugh. Don't laugh! You are too!~ */
		
		= @113 /* ~This is worse than the time we fell into the manure pile at Candlekeep. Come on. Maybe we'll get lucky and find a bathhouse in this village... this village in the middle of the desert. Gods, help us.~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END
END
//}

//{ JAHEI25J
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @114 /* ~You're covered as well! No, don't put your hands on me, they're filthy!~ */
		
		= @115 /* ~With luck, we'll find a hot spring to wash in. Let's go.~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_HowMany
		SAY @116 /* ~You mean to attempt a resurrection, after the body has been dead for this long? Nothing good can come from this.~*/
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_HowMany2
	END
	
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @101  /* ~The city's been completely destroyed... all those people...~*/
		
		IF ~~ THEN
		EXTERN XACOR25J XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Jaheira
		SAY @117 /* ~Of course. What do you need?~ */
		
		= @84 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @118 /* ~Schael! At a time like this? How could you allow yourself—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 1)
		~
		EXTERN XACOR25J XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-75
	IF ~
		Global("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira
		SAY @119 /*~<CHARNAME>. Congratulations.~*/ 
		
		IF ~~ THEN REPLY @120 /*~Thank you, Jaheira.~*/
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
		
		IF ~~ THEN REPLY @121 /* For? */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_For
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_For
		SAY @122 /*~Major Cor — Schael's pregancy, of course. It is wonderful news.~*/
		
		IF ~~ THEN REPLY @123 /* ~Is that so? I overheard parts of your conversation, and you didn't sound happy with her at all.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_NotHappy
		
		IF ~~ THEN REPLY @120 /*~Thank you, Jaheira.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_NotHappy
		SAY @124 /* ~Yes. I was surprised that Schael would allow herself to get pregnant under these circumstances. After thinking on it some more however, there was no way you or she could know what was to happen. I cannot in fairness fault her, or you, for the unfortunate timing.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_BabyName
		SAY @125 /* ~So, child. Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @91 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		
		IF ~~ THEN REPLY @92 /* ~I haven't. Do you have any ideas?~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_Ideas
		SAY @126 /* ~Hmm... many name their children after those who've had a profound impact on their life. Khalid and I often spoke of naming our child after the one who first introduced us to each other.~ */
		
		= @127 /* ~Khalid... he would be pleased to hear this news, and to learn that you've selected such good and strong woman as your mate. The two of you will do a wonderful job as parents.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		SAY @128 /* ~Gorion would be honored. He'd also be proud of the man you've become, and that you've chosen such a good and strong woman as your mate. The two of you will do a wonderful job as parents.~*/
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
		SAY @129 /*~It seems that just yesterday you walked in to the Friendly Arm inn, lost and confused after the murder of your foster father. So much has happened since then...~*/
		
		IF ~~ THEN REPLY @130 /* ~And you've stood by my side through all of it. Now, I must rely on you again to help ensure Schael's health, and the health of our unborn child.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_END
		SAY @131 /*~You can count on me, now and always, my friend.~*/
		
		IF ~~ THEN REPLY @132 /*~Thank you, Jaheira.~*/
		EXIT
	END
	//}
//}

//{ SAREV25A
EXTEND_BOTTOM SAREV25A 10 /* OK*/
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	EXTERN XACOR25J XA_SAREV_10
END

ADD_TRANS_TRIGGER SAREV25A 48
~
	False()
~

EXTEND_BOTTOM SAREV25A 48
	IF ~~ THEN 
	UNSOLVED_JOURNAL @134
	REPLY @133 /* ~I was already on my way to Saradush before I was dragged here.~ */
	FLAGS 128 GOTO 49
END
//}

//{ KELDO25J
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
		EXTERN XACOR25J XA_AvernusEntry
	END
//}
//{ GORODR1
EXTEND_BOTTOM GORODR1 17 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACOR25J XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 18 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACOR25J XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 34 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACOR25J XA_GORODR1_34_44
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
			IsValidForPartyDialogue("KORGA25J")
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
	THEN EXTERN XACOR25J XA_GORODR1_34_44
END


APPEND GORODR1
	IF ~~ THEN BEGIN XA_OdrenDecision 
		SAY @159 /* ~Please, I ask you once again to forgive us, <CHARNAME>.~ */
		= @160  /* ~What is your decision?~ */
		IF ~
			GlobalGT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @161 /* ~Prepare to die, you treacherous cowards!~  */
		GOTO 45
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @162 /* ~We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @163 /* ~We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!~  */
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
		SAY @164 /* (Your group is evenly split - half believe the priests should be executed, and the other half want to show them mercy. You must cast the deciding vote.)~ */
		
		IF ~~ THEN REPLY @165 /* We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~~ THEN REPLY @166 /* We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!*/
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~~ THEN REPLY @161 /* ~Prepare to die, you treacherous cowards!~ */
		GOTO 45
		
	END
END
//}


CHAIN 
	IF ~~ THEN GORODR1 XA_OdrenJudgeSOA
		@135 /* ~(Odren and his companions look at your party with hope in their eyes.)~ */
		
		== XACOR25J
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@136 /* ~They deserve to die. Not just for their treachery, but also for their cowardice. There's been so much death already, though... If you decide to spare them, I will understand.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== RASAA25J
		IF ~
			IsValidForPartyDialogue("RASAAD")
		~
		@137  /* ~The willpower of even the most resolute can falter from time to time. Let us not be so quick to judge, lest we be judged ourselves. Let them live, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== XACAELAJ
		IF ~
			IsValidForPartyDialogue("XACAELAR")
		~
		@138 /* ~Surely, there must be some way for these priests to find redemption. Life, I say.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAN25J
		IF ~
			IsValidForPartyDialogue("Jan")
		~
		@139 /* ~I'll not have their blood on my hands; I'd need to wash them before picking my turnips. Let them live, <CHARNAME>.*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== SAREV25J
		IF ~
			IsValidForPartyDialogue("SAREVOK")
		~
		@140  /* ~Must you even ask? Death. The more excruciating, the better.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MINSC25J
		IF ~
			IsValidForPartyDialogue("MINSC")
		~
		@141 /* ~(Minsc is engaged in an animated discussion with Boo about the circumstances of Odren's betrayal. You decide to treat this as a vote for life, not just because you don't have the time for this nonsense, but because Minsc is completely insane. It would be wrong, after all, to have a person's life be decided by an abject fool.)~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== KORGA25J
		IF ~
			IsValidForPartyDialogue("KORGA25J")
		~
		@142 /* ~Death, I say. Me axe be waitin' to taste their squirrely innards.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== AERIE25J
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@143 /* ~I ... I know what they did was wrong... maybe they can learn from this and do some good? They can at least tell o-others not to judge you just because you are a Bhaalspawn. I think we should let them live.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAHEI25J
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		@144 /* ~A great evil has been purged from this world. To restore balance, these warriors must be purged as well.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== IMOEN25J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@145 /* ~We've experienced enough bloodshed for one lifetime. Let them go, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NEERA25J
		IF ~
			IsValidForPartyDialog("Neera")
		~
		@147  /* ~You're really gonna make me choose? Well... let's see...~*/
		= @146 /* ~They did lie to us, and they knowingly sent us to our doom. On the other hand, I'm REALLY hungry. Let's just make our way to the nearest taven and leave them be.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VALYG25J
		IF ~
			IsValidForPartyDialogue("Valygar")
		~
		@148 /* ~These treacherous dogs deserve death. They've shown me nothing to indicate otherwise.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== HAERD25J
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@149 /* ~Life, I say. Think of the songs the bards will sing! <CHARNAME>, the mighty! <CHARNAME>, the merciful!~   */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== DORN25J
		IF ~
			IsValidForPartyDialogue("Dorn")
		~
		@150 /* ~Few things please me more than to shed the blood of sanctimonious hypocrites. Death to them all!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
			
		== ANOME25J
		IF ~
			IsValidForPartyDialogue("Anomen")
		~
		@151 /* ~They have betrayed not only us, but their god, and everything they believed in. Let us end their misery and put them to the sword.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MAZZY25J
		IF ~
			IsValidForPartyDialogue("Mazzy")
		~
		@152 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VICON25J
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@153 /* ~Helmites hunt my kind for sport on the surface. I welcome the opportunity to help even the score.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NALIA25J
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@154 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== CERND25J
		IF ~
			IsValidForPartyDialogue("CERND")
		~
		@155 /* ~Their foolishness could have easily led to the world being utterly ravaged at the hands of Demogorgon. As much as it pains me to say it, death is the only fitting punishment for these scoundrels.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== KELDO25J
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~
		@156 /* ~These false priests deserve death, yet... part of me wishes that they are one day able to redeem themselves in the eyes of Helm, and they cannot do that if they are dead. I will support whatever you decide.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== EDWIN25J
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@157 /* ~They must be punished! (Yes, severely!) Die, die, die, die, DIE!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
END
++@158 GOTO XA_OdrenDecision 