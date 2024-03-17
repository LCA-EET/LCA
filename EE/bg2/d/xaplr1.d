//Modifications to PLAYER1.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-09-26: Initial Commit

*/
APPEND ~PLAYER1~
	IF ~
		Global("XA_OdrenDebug", "GLOBAL", 1)
	~ THEN BEGIN XA_OdrenDebug
		SAY @194
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_OdrenDebug", "GLOBAL", 0)
		~
		EXTERN GORODR1 35
	END
	IF ~
		Global("XA_PromptToSendLetter", "GLOBAL", 1)
	~ THEN BEGIN XA_PromptCGS
		SAY @141  /* ~(Now that Skie's soul has been freed, it may be worthwhile to send a letter to Baldur's Gate. The Dukes or the Flaming Fist may be able to assist you in your hunt for Irenicus. Perhaps someone in the Athkatla magistrate can help.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_PromptToSendLetter", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~
		Global("XA_CheckWithBrega", "GLOBAL", 1)
	~ THEN BEGIN XA_Reminder
		SAY @178  /*~(It's been a few days since you sent the letter and dagger to Baldur's Gate. Perhaps it's worthwhile to visit Brega and see if there is any news concerning Skie.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CheckWithBrega", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~
		Global("XA_CheckWithBrega2", "GLOBAL", 1)
	~ THEN BEGIN XA_Reminder
		SAY @187 /*~(It's been a few days since you sent the letter and dagger to Baldur's Gate. Perhaps it's worthwhile to visit Brega and see if there is any news concerning Skie.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CheckWithBrega2", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~
		Global("XA_CorwinDiedFromBite", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinDiedFromBite
		SAY @138 /* ~(You are nearly overcome by grief and anger — not just toward Bodhi and Irenicus, but also yourself, for your failure to save the woman you love.)~ */
		
		= @139 /* ~(You examine her body. Her skin is pale, and cold to the touch. In her mouth, you notice what appear to be fangs partially emerged from her gumline. You surmise that Bodhi's bite was meant to turn her into a vampire, but Schael died before the transformation could complete. Perhaps there is still a way to revive her. You lift up her body and continue your search for Bodhi and the Lanthorn.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinDiedFromBite", "GLOBAL", 2)
			StartCutSceneMode()
			StartCutScene("xacs08x")
		~
		EXIT
	END
			
	IF ~~ THEN BEGIN XAA0
		SAY @1 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @6 /* ~Your love for one another has endured against all odds; as you gaze into each other's eyes, you suddenly remember your first meeting at Wyrm's Crossing, and how you were taken by her beauty. You recall how you professed your love for her during the Dragonspear campaign, your kiss after escaping Avernus, and the pain and anguish that you felt after being forced to leave her, after you were framed for the murder of Skie Silvershield. You then remember the inexpressible joy that filled your heart after re-uniting with her in Athkatla. Before you can ask, she stops you.~ */
		IF ~~ THEN
		EXTERN ~XACORWIJ~ XAA20 //OK
	END
	
	IF ~~ THEN BEGIN XAA0A
		SAY @1 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @8 /* ~Your love for one another has endured against all odds; as you gaze into each other's eyes, you suddenly remember your first meeting at Wyrm's Crossing, and how you were taken by her beauty. You recall the amazing success that you achieved together during the Dragonspear campaign, and the pain that you felt after being forced to leave her and Baldur's Gate, after you were framed for the murder of Skie Silvershield. It was while you were exiled that your feelings for her had changed, from friendship into something far more profound - love. You then remember the inexpressible joy that filled your heart after you proclaimed your love for one another after re-uniting in Athkatla. Before you can ask, she stops you.~ */
		IF ~~ THEN
		EXTERN ~XACORWIJ~ XAA20 //OK
	END

	IF ~~ THEN BEGIN XAA1
		SAY @0 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @5 /* ~You realize how much you rely on her, not just for what she does on the battlefield, but also for her counsel and friendship.~   */
		
		IF ~~ THEN REPLY @2 /* ~Schael, I cannot ask you to risk yourself any further. Think of your father. Think of Rohma.~ */
		EXTERN ~XACORWIJ~ XAA22 //OK
		
		IF ~~ THEN REPLY @3 /* ~Schael my friend. We have accomplished much together - I need your aid once again.~ */
		EXTERN ~XACORWIJ~ XAA23 //OK
		
		IF ~~ THEN REPLY @4 /* ~Captain - your assistance has proven invaluable. I would not be here were it not for your strength and fortitude. Let us put an end to this monster once and for all.~ */
		EXTERN ~XACORWIJ~ XAA24 //OK
	END
	
	IF ~~ THEN BEGIN XAAKiss
		SAY @7 /*   ~Let's go, love. ~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
			SetGlobal("AerieRomanceActive", "GLOBAL", 3)
			SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
			SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
			SetGlobal("DornRomanceActive", "GLOBAL", 3)
			SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
		~
		EXTERN ~XACORWIJ~ XAA37
	END
	
END	

ADD_TRANS_TRIGGER ~PLAYER1~ 3
~
	!IsValidForPartyDialogue("XACORWIN")
~

//EXTEND_TOP ~PLAYER1~ 3 #1
EXTEND_BOTTOM PLAYER1 3 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN 
	DO 
	~
		SetGlobal("SelfTalk", "GLOBAL", 2)
	~
	EXTERN ~XACORWIJ~ XAA4
END

ADD_TRANS_TRIGGER ~PLAYER1~ 5
~
	!IsValidForPartyDialogue("XACORWIN")
~

//EXTEND_TOP ~PLAYER1~ 5 #1
EXTEND_BOTTOM PLAYER1 5 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN 
	EXTERN ~XACORWIJ~ XAA8
END

EXTEND_BOTTOM ~PLAYER1~ 7 //OK
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO 54
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN 
	EXTERN ~XACORWIJ~ XAA12
END

ADD_TRANS_TRIGGER ~PLAYER1~ 15
~
	!IsValidForPartyDialogue("XACORWIN")
~

//EXTEND_TOP ~PLAYER1~ 15 #1
EXTEND_BOTTOM ~PLAYER1~ 15 
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN ~XACORWIJ~ XAA18 //OK
END

ADD_TRANS_TRIGGER ~PLAYER1~ 16
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM ~PLAYER1~ 16 
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN DO ~
		SetGlobal("IrenicusBeat","AR2806",2)
		SetGlobal("HadPeopleBeforeHell","LOCALS",1)
	~
	EXTERN ~XACORWIJ~ XAA19 //OK
END


EXTEND_BOTTOM ~PLAYER1~ 10
	IF ~
		Global("EndangerLovedOne","GLOBAL",80)
		!IsValidForPartyDialogue("XACORWIN")
	~
	THEN GOTO 12 //OK
	
	IF ~
		Global("EndangerLovedOne","GLOBAL",80)
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN ~XACORWIJ~ XAA14 //OK
END

EXTEND_BOTTOM ~PLAYER1~ 25
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinHell", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN
	DO ~
		SetGlobal("XA_CorwinHell", "GLOBAL", 1)
	~	
	EXTERN ~XACORWIJ~ XA_P1_25A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinHell", "GLOBAL", 1) 
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN
	DO ~
		SetGlobal("XA_CorwinHell", "GLOBAL", 1)
	~	
	EXTERN ~XACORWIJ~ XA_P1_25B
END

EXTEND_BOTTOM PLAYER1 33
	IF ~  
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		!Global("XA_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN GOTO XAA0 //OK
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		Global("XA_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN GOTO XAA0A //OK 
	
	IF ~  
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
	~ THEN GOTO XAA1 //OK
END

