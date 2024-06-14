BEGIN ~XAFFOFCR~

	IF ~
		!IsGabber(Player1)
	~ THEN BEGIN XA_PC
		SAY @15 /* ~I need to speak with <CHARNAME> - does <PRO_HESHE> travel with your group?~ */
		
		IF ~~ THEN REPLY @1 /*  ~Perhaps - who is asking?~ */
		GOTO XAA1A //OK
		
		IF ~~ THEN REPLY @16 /*  ~No, <PRO_HESHE> does not.~ */
		GOTO XAA5 //OK
		
		IF ~~ THEN REPLY @18 /*  ~Yes, I will tell <PRO_HIMHER> to come and speak with you.~ */
		GOTO XAA8 //OK

	END

	IF ~
		!Global("XA_LC_RewardGiven", "LOCALS", 1)
		!Global("XA_LC_IDOfficer", "LOCALS", 1)
		!Global("XA_LC_TalkedToOfficer", "LOCALS", 1)
	~ 
	THEN BEGIN XAA0
		SAY @0 /* ~Excuse me, are you <CHARNAME>?~ */
		IF ~~ THEN REPLY @1 /*  ~Perhaps - who is asking?~ */
		DO ~
			SetGlobal("XA_LC_TalkedToOfficer", "LOCALS", 1)
		~
		GOTO XAA1 // OK
		
		IF ~~ THEN REPLY @2 /* ~No, I am not.~ */
		DO ~
			SetGlobal("XA_LC_TalkedToOfficer", "LOCALS", 1)
		~
		GOTO XAA5 //OK
		
		IF ~~ THEN REPLY @5 /* ~I am <PRO_HESHE>. What is it that you want?~ */
		DO ~
			SetGlobal("XA_LC_IDOfficer", "LOCALS", 1)
			SetGlobal("XA_LC_TalkedToOfficer", "LOCALS", 1)
		~
		GOTO XAA6 // OK
		
		IF ~~ THEN REPLY @10 /* ~I am <PRO_HESHE>. Are you here to arrest me for another crime I did not commit?~ */
		DO ~
			SetGlobal("XA_LC_IDOfficer", "LOCALS", 1)
			SetGlobal("XA_LC_TalkedToOfficer", "LOCALS", 1)
		~
		GOTO XAA7 // OK
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @4 /*~I am Corporal Allen of the Flaming Fist. I have been sent from Baldur's Gate to locate <CHARNAME>.~*/
		IF ~~ THEN REPLY @5 /* ~I am <PRO_HESHE>. What is it that you want?~ */
		DO ~
			SetGlobal("XA_LC_IDOfficer", "LOCALS", 1)
		~
		GOTO XAA2 // OK
		
		IF ~~ THEN REPLY @10 /* ~I am <PRO_HESHE>. Are you here to arrest me for another crime I did not commit?~ */
		DO ~
			SetGlobal("XA_LC_IDOfficer", "LOCALS", 1)
		~
		GOTO XAA7 // OK
		
		IF ~~ THEN REPLY @14 /* ~Sorry, I am not the person you are seeking.~ */
		GOTO XAA5 //OK
	END
	
	IF ~~ THEN BEGIN XAA1A
		SAY @4 /*~I am Corporal Allen of the Flaming Fist. I have been sent from Baldur's Gate to locate <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @19  /* ~I see - I will tell <PRO_HIMHER> to come and speak with you.~ */
		GOTO XAA8 //OK

		IF ~~ THEN REPLY @21 /* ~Sorry, I do not know the person whom you seek.~ */
		GOTO XAA5 //OK
		
	END

	IF ~
		Global("XA_LC_IDOfficer", "LOCALS", 1)
		!Global("XA_LC_RewardGiven", "LOCALS", 1)
	~ THEN BEGIN XAA2
		SAY @6 /* ~The Dukes sent me to express their thanks for your aid in restoring Skie Silvershield.~ */
		=@7 /* ~Also, they have provided a large sum of gold to help you in your hunt for the wizard, Irenicus.~ */
		
		IF ~~ THEN
		DO ~
			GivePartyGold(10000)
			AddExperienceParty(35000)
			SetGlobal("XA_LC_RewardGiven", "LOCALS", 1)
		~
		GOTO XAA3 //OK
		
	END
	
	IF ~~ THEN BEGIN XAA3
		SAY @8 /* ~Lastly, they want you to know that you will be welcome to return to Baldur's Gate, once you have killed or aprehended Irenicus.~ */
		IF ~~ THEN REPLY @9 /* ~I see. I am glad that Skie is okay. The gold will prove helpful - thank you.~ */
		GOTO XAA4 //OK
	END
	
	IF ~~THEN BEGIN XAA4
		SAY @12 /* ~Good hunting, <CHARNAME>.~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XAA5
		SAY @3 /* ~Well, should you see <PRO_HIMHER>, tell <PRO_HIMHER> to see me. I have an important message from the Grand Dukes.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN XAA6
		SAY @13 /* ~I am Corporal Allen of the Flaming Fist.~ */
		IF ~~ THEN
		GOTO XAA2 //OK
	END
	
	IF ~~ THEN BEGIN XAA7
		SAY @11 /* ~No, certainly not. I am Corporal Allen of the Flaming Fist.~ */
		IF ~~ THEN
		GOTO XAA2 //OK
	END

	IF ~~ THEN BEGIN XAA8
		SAY @17 /* ~Thank you, it is most urgent that I speak with <PRO_HIMHER>.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~
		!Global("XA_LC_IDOfficer", "LOCALS", 1)
		!Global("XA_LC_RewardGiven", "LOCALS", 1)
		Global("XA_LC_TalkedToOfficer", "LOCALS", 1)
	~ THEN BEGIN XAA9
		SAY @22 /* ~Ah, hello again. Have you found <CHARNAME>?~ */
		
		IF ~~ THEN REPLY @1 /* ~Perhaps - who is asking?~ */
		GOTO XAA1
		
		IF ~~ THEN REPLY @23 /* ~No, not yet.~ */
		GOTO XAA5
		
		IF ~~ THEN REPLY @5 /* ~I am <PRO_HESHE>. What is it that you want?~ */
		DO ~
			SetGlobal("XA_LC_IDOfficer", "LOCALS", 1)
			SetGlobal("XA_LC_TalkedToOfficer", "LOCALS", 1)
		~
		GOTO XAA6
		
	END
	