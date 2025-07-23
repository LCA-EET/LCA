//{ Altered Transitions	
	ADD_TRANS_TRIGGER HABREGA 13
	~
		!PartyHasItem("XASTDAG")
	~
	EXTEND_BOTTOM HABREGA 0
		IF ~
			GlobalGT("XA_LC_SlaveKidsFreed", "GLOBAL", 0)
			GlobalLT("XA_LC_SlavesBrega", "LOCALS", 1)
		~ THEN REPLY @328  /*~Inspector, we freed some children that were being held captive in the slaver stockade. Did they make it back here safely?~ */
		DO ~
			SetGlobal("XA_LC_SlavesBrega", "LOCALS", 1)
		~
		GOTO XA_KidsFreed1
	END
	EXTEND_BOTTOM HABREGA 13
		IF ~
			PartyHasItem("XASTDAG")
			Global("XA_LC_HelpBrega", "GLOBAL", 1)
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
			!Global("XA_LC_HelpBrega", "GLOBAL", 1)
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
	
	ADD_TRANS_ACTION BOY3 
	BEGIN 0 END
	BEGIN 0 END 
	~
		IncrementGlobal("XA_LC_SlaveKidsFreed", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION GIRL1 
	BEGIN 1 END
	BEGIN 0 END 
	~
		IncrementGlobal("XA_LC_SlaveKidsFreed", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION PPIRENI2
	BEGIN 36 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_RescueCorwin1516", "GLOBAL", 1)
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
//}	
//{ SALVANAS
	APPEND SALVANAS
		IF ~
			!InPartySlot(LastTalkedToBy,0)
			Name("XACORWIN", LastTalkedToBy)
		~ THEN BEGIN XA_MeetCorwin
			SAY @84 /*~My, oh my...~*/
			
			IF ~~ THEN 
			EXTERN XACORWIJ XA_SavanasCorwinChain
		END
	END
//}

//{ CALAHA
	EXTEND_BOTTOM CALAHA 15
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN 
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
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
			SAY @417 /* ~Is there somethin' that ye need, citizen?~ [BREGAX02] */
			
			COPY_TRANS HABREGA 0
			
			IF ~
				GlobalGT("XA_LC_SlaveKidsFreed", "GLOBAL", 0)
				GlobalLT("XA_LC_SlavesBrega", "LOCALS", 1)
			~ THEN REPLY @328  /*~Inspector, we freed some children that were being held captive in the slaver stockade. Did they make it back here safely?~ */
			DO ~
				SetGlobal("XA_LC_SlavesBrega", "LOCALS", 1)
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
				SetGlobal("XA_LC_Cromwell_CorwinBow", "GLOBAL", 1)
			~
			GOTO 56
			
			IF ~~ THEN REPLY #59787 /* ~No, I don't think so. Do I have anything else useful?~ */ 
			GOTO 38
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
		Global("XA_LC_41G", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinIrenicusStart
END

EXTEND_BOTTOM PPIRENI2 27
	IF ~
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 3)
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
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 4)
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
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinIrenicus
		SAY @336 /*~And you, young lady.~ */
		
		= @337 /* ~I trust, by the insignia on your armor, that you are here to affect some appropriate punishment for what I did to Skie Silvershield?~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinIrenicus", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_CorwinIrenicusChain
	END
	
	IF ~
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinIrenicus_Sleep2
		SAY @338 /*~Worry not.*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinIrenicus", "GLOBAL", 3)
			SetGlobal("XA_LC_SchaelBound", "GLOBAL", 1)
		~
		GOTO XA_CorwinIrenicus_Sleep2A
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinIrenicus_Sleep2A
		SAY @339 /*~Unlike you and the rest of your companions, she will live beyond these next few minutes. Once I am done with you, a geas will be placed on her. She'll then be returned to Baldur's Gate, where she will assassinate the Council of Four on my behalf.~ */
		
		COPY_TRANS PPIRENI2 3
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
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 4)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @340  /* ~Schael, too. He's planning to use her to assassinate the Dukes. I have to save her!~*/
	GOTO XA_ImoenSchaelSpellhold
	
	IF ~
		Global("XA_LC_CorwinIrenicus", "GLOBAL", 4)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @344  /* ~Schael, too. He's planning to use her to assassinate the Dukes. I have to stop him!~*/
	GOTO XA_ImoenSchaelSpellhold
END
//}

//{ SUELLE2
ADD_STATE_TRIGGER SUELLE2 0
~
	!Global("XA_LC_59AOverride", "GLOBAL", 1)
~

EXTEND_BOTTOM SUELLE2 0 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_0
END

EXTEND_BOTTOM SUELLE2 5 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_59AOverride","GLOBAL",1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59ATOB",FALSE)
	~
	EXIT

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_5
END

EXTEND_BOTTOM SUELLE2 8 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_59AOverride","GLOBAL",1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59ATOB",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
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
		Global("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
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
		Global("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
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
		SAY @60 /* ~I'm told that she never once left your side. I cannot tell you how uplifting it is to see love blossom in the aftermath of what has transpired here.~    */
		
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
		!Global("XA_LC_CorwinStopSvirFight", "GLOBAL", 1)
	~ THEN REPLY @58 /* ~Saying that was a mistake, fool! I will kill you and take the stone! Forget your deal!~  */
	EXTERN XACORWIJ XA_Svir
END
//}

//{ DADROW3
	ADD_TRANS_TRIGGER DADROW3 0
	~
		GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
	~
	DO 6
	
	ADD_TRANS_TRIGGER DADROW3 0
	~
		!IsValidForPartyDialogue("XACORWIN")
		!IsGabber("XACORWIN")
		GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
	~
	DO 4
	
	EXTEND_BOTTOM DADROW3 0
		IF ~
			IsGabber(Player1)
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			OR(2)
				!IsValidForPartyDialogue("Keldorn")
				!Global("KeldornOutrage","GLOBAL",0)
		~ THEN REPLY @348 /*~There are slaves here?! This is an outrage!~*/
		EXTERN XACORWIJ XA_PlayerSlaveComplain_3
		
		IF ~
			!IsGabber(Player1)
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
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
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @57 /*  ~My companion, Schael.~ */
	GOTO 110
END

ADD_TRANS_TRIGGER UDPHAE01 61
~
	GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
~
DO 1 2 3 4


//}

//{ BODHIAMB
EXTEND_BOTTOM BODHIAMB 5
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		InParty("XACORWIN")
	~ 
	THEN GOTO XAA0
END

ADD_TRANS_TRIGGER BODHIAMB 5
~
OR(2)
	!InParty("XACORWIN")
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
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
			StartCutSceneEx("xacs07B",FALSE)
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
		!Global("XA_LC_CorwinStopDeminFight", "GLOBAL", 1)
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
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	EXTERN XACORWIJ XA_CorwinMadam2
END

APPEND MADAM	
	IF ~~ THEN BEGIN XA_CorwinMadam3 // from:
		SAY #39396 /* ~I see. Perhaps you should reconsider where you are then... and remember not to bother other customers with your puerile attitude.~ */
		
		IF ~~ THEN
		EXIT
		
		IF ~
			Global("XA_LC_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_LC_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_LC_TimesHadSex", "GLOBAL", 1)
			Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~XACORWIJ~ XAA27A
		
		IF ~
			Global("XA_LC_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_LC_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_LC_TimesHadSex", "GLOBAL", 1)
			!Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinHitOnPlayer", "GLOBAL", 1)
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
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7B
END

EXTEND_BOTTOM HELLJON 8 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8B
END

EXTEND_BOTTOM HELLJON 9 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9B
END

EXTEND_BOTTOM HELLJON 10 /* OK */
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10B
END

//{ NEB
EXTEND_BOTTOM NEB 1
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2
	
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinNebAthkatla", "GLOBAL", 1)
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
		!Global("XA_LC_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2
	
	IF ~
		InMyArea("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinNebAthkatla", "GLOBAL", 1)
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2A
END

APPEND NEB
	IF ~~ THEN BEGIN XAA0
		SAY @50 /*~You look familiar... yes... Captain Corwin, is it? You had me arrested just before I could introduce myself to your sweet, precious little daughter.~*/
		= @51 /*   ~I don't know how you found me, but I promise that when I'm done with you, I'll be sure to pay her a visit!~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_NebRohma", "GLOBAL", 1)
			SetGlobal("XA_LC_NebFight", "GLOBAL", 1)
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
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 18 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 34 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END

EXTEND_TOP GORODR1 39 //OK	
	IF ~
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
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
		SetGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 100)
	~
	EXTERN GORODR1 XA_OdrenJudgeSOA
END

EXTEND_BOTTOM GORODR1 44 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END


APPEND GORODR1
	IF ~~ THEN BEGIN XA_OdrenDecision 
		SAY @42 /* ~Please, I ask you once again to forgive us, <CHARNAME>.~ */
		= @33  /* ~What is your decision?~ */
		IF ~
			GlobalGT("XA_LC_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~  */
		GOTO 45
		
		IF ~
			GlobalLT("XA_LC_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @44 /* ~We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~
			GlobalLT("XA_LC_OdrenShouldDie", "GLOBAL", 100)
		~ THEN REPLY @45 /* ~We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!~  */
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~
			Global("XA_LC_OdrenShouldDie", "GLOBAL", 100)
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
		SetGlobalTimer("XA_LC_CorwinEdwinThayTimer", "GLOBAL", TWO_ROUNDS)
		//SetGlobal("XA_LC_CorwinEdwinThay", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END
//}

//{ NALIAJ
EXTEND_BOTTOM NALIAJ 70
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_70 
END

EXTEND_BOTTOM NALIAJ 71
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_71 
END

EXTEND_BOTTOM NALIAJ 72
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_72 
END

EXTEND_BOTTOM NALIAJ 73
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~ THEN REPLY @334 /*~Schael? What do you think?~ */
	DO ~
		SetGlobal("XA_LC_NaliaShamMarriage", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NaliaShamMarriage_73 
END

APPEND ~NALIAJ~
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
END
//}

//{ KELDORJ

APPEND KELDORJ
	

	IF ~~ THEN BEGIN XA_CorwinStruckDelcia
		SAY @12 /* ~That's... not how I would have handled the matter, Captain, but at least the Lady is out of harm's way.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
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
			SetGlobal("XA_LC_DelciaEnd", "GLOBAL", 2)
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
	!Global("XA_LC_AttackedDrizztBG1", "GLOBAL", 1)
~

ADD_STATE_TRIGGER C6DRIZZ1 39
~
	!Global("XA_LC_AttackedDrizztBG1", "GLOBAL", 1)
~

EXTEND_BOTTOM C6DRIZZ1 1  //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_CorwinDrizz
END

APPEND C6DRIZZ1
	IF ~
		Global("XA_LC_AttackedDrizztBG1", "GLOBAL", 1)
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
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN XACORWIJ XA_DHARLOT2A

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
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
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~XACORWIJ~ XA_FFCUST04A
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
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
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("RASAAD")
		~
		@211  /* ~The willpower of even the most resolute can falter from time to time. Let us not be so quick to judge, lest we be judged ourselves. Let them live, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
				
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
		~
		@321 /* ~I'll not have their blood on my hands; I'd need to wash them before picking my turnips. Let them live, <CHARNAME>.*/
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
	
		== MINSCJ
		IF ~
			IsValidForPartyDialogue("MINSC")
		~
		@29 /* ~(Minsc is engaged in an animated discussion with Boo about the circumstances of Odren's betrayal. You decide to treat this as a vote for life, not just because you don't have the time for this nonsense, but because Minsc is completely insane. It would be wrong, after all, to have a person's life be decided by an abject fool.)~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("KORGAN")
		~
		@25 /* ~Death, I say. Me axe be waitin' to taste their squirrely innards.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@30 /* ~I ... I know what they did was wrong... maybe they can learn from this and do some good? They can at least tell o-others not to judge you just because you are a Bhaalspawn. I think we should let them live.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		@26 /* ~A great evil has been purged from this world. To restore balance, these warriors must be purged as well.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@32 /* ~We've experienced enough bloodshed for one lifetime. Let them go, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NEERAJ
		IF ~
			IsValidForPartyDialog("Neera")
		~
		@231  /* ~You're really gonna make me choose? Well... let's see...~*/
		= @224 /* ~They did lie to us, and they knowingly sent us to our doom. On the other hand, I'm REALLY hungry. Let's just make our way to the nearest taven and leave them be.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
		~
		@27 /* ~These treacherous dogs deserve death. They've shown me nothing to indicate otherwise.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@34 /* ~Life, I say. Think of the songs the bards will sing! <CHARNAME>, the mighty! <CHARNAME>, the merciful!~   */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
		~
		@28 /* ~Few things please me more than to shed the blood of sanctimonious hypocrites. Death to them all!~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
			
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
		~
		@35 /* ~They have betrayed not only us, but their god, and everything they believed in. Let us end their misery and put them to the sword.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MAZZYJ
		IF ~
			IsValidForPartyDialogue("Mazzy")
		~
		@36 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@38 /* ~Helmites hunt my kind for sport on the surface. I welcome the opportunity to help even the score.~  */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@37 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("CERND")
		~
		@40 /* ~Their foolishness could have easily led to the world being utterly ravaged at the hands of Demogorgon. As much as it pains me to say it, death is the only fitting punishment for these scoundrels.~  */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~
		@288 /* ~These false priests deserve death, yet... part of me wishes that they are one day able to redeem themselves in the eyes of Helm, and they cannot do that if they are dead. I will support whatever you decide.~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== EDWINJ
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@31 /* ~They must be punished! (Yes, severely!) Die, die, die, die, DIE!~ */
		DO ~
			IncrementGlobal("XA_LC_OdrenShouldDie", "GLOBAL", 1)
		~
END
++@41 GOTO XA_OdrenDecision 




