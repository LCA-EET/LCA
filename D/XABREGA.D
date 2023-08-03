//Modifications to HABREGA.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-25: Initial Commit

*/

ADD_STATE_TRIGGER HABREGA 0
~
	!PartyHasItem("XAORW1")
	!PartyHasItem("XAORW2")
	!PartyHasItem("XALDUNC")
~

APPEND_EARLY HABREGA
	IF ~
		!PartyHasItem("XASTDAG")
		OR(3)
		PartyHasItem("XAORW1")
		PartyHasItem("XAORW2")
		PartyHasItem("XALDUNC")
	~
	THEN BEGIN M42
		SAY @28 /* ~Ah, you've finished your letter. You said you wanted me to send a dagger as well - where is it? ~ */
		IF ~~ THEN REPLY @29 /* ~I seem to have misplaced it. I'll return once I have it, so that you can send it along with the letter.~ */
		EXIT
	END
	
	IF ~
		PartyHasItem("XASTDAG")
		PartyHasItem("XAORW1")
	~
	THEN BEGIN M39
		SAY @26 /* ~Ah, you've finished your letter. You want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		/*@14  = ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to my love, Captain Schael Corwin of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of. Maybe then, Schael and I can finally be together, once this business with Irenicus is over. It is that hope which gives the strength to move forward.~ */
		DO ~
			AddJournalEntry(@14, INFO) 
			SetGlobal("XA_LetterSent", "GLOBAL",1)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
	END
	
	IF ~
		PartyHasItem("XASTDAG")
		PartyHasItem("XAORW2")
	~
	THEN BEGIN M40
		SAY @26 /* ~Ah, you've finished your letter. You want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		 /* ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to Captain Schael Corwin of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of.~*/
		DO ~
			AddJournalEntry(@16, INFO)
			SetGlobal("XA_LetterSent", "GLOBAL", 2)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
	END
	
	IF ~
		PartyHasItem("XASTDAG")
		PartyHasItem("XALDUNC")
	~
	THEN BEGIN M41
		SAY @27 /* ~Ah, you've finished your letter. You want to send the letter and dagger to Corporal Bence Duncan of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		/* ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to Corporal Bence Duncan of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of.~
		*/
		DO ~
			AddJournalEntry(@18, INFO)
			SetGlobal("XA_LetterSent", "GLOBAL", 3)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
	END
END

EXTEND_BOTTOM HABREGA 0
	
	IF ~
		PartyHasItem("XASTDAG")
		Global("XA_DaggerCHROverride", "GLOBAL", 1)
	~
	THEN REPLY @34 /* ~You said you'd help me to send this dagger to Baldur's Gate.~ */
	GOTO M30
	
	IF ~  
		!Global("XA_HelpBrega", "GLOBAL", 1)
		PartyHasItem("XASTDAG")
		!Global("MurdersSolved","GLOBAL",1)
	~ 
	THEN REPLY @0 /* ~I need to send this dagger to Baldur's Gate. I believe it is the weapon used to murder the daughter of one of the Grand Dukes.~ */
	GOTO M0
	
	IF ~  
		PartyHasItem("XASTDAG")
		Global("MurdersSolved","GLOBAL",1)
		Global("XA_HelpBrega", "GLOBAL", 1)
		!PartyHasItem("XAORW1")
		!PartyHasItem("XAORW2")
		!PartyHasItem("XALDUNC")
	~ 
	THEN REPLY @23 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO M30

	IF ~  
		PartyHasItem("XASTDAG")
		Global("MurdersSolved","GLOBAL",1)
		!Global("XA_HelpBrega", "GLOBAL", 1)
		!PartyHasItem("XAORW1")
		!PartyHasItem("XAORW2")
		!PartyHasItem("XALDUNC")
	~ 
	THEN REPLY @0 /* ~I need to send this dagger to Baldur's Gate. I believe it is the weapon used to murder the daughter of one of the Grand Dukes.~ */
	GOTO M30 	
	
	IF ~  
		PartyHasItem("XASTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("XAORW1")
	~ 
	THEN REPLY @23 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO M36a 
	
	IF ~  
		PartyHasItem("XASTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("XAORW2")
	~ 
	THEN REPLY @23 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO M36b 
	
	IF ~  
		PartyHasItem("XASTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("XALDUNC")
	~ 
	THEN REPLY @23 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO M37 
END



APPEND HABREGA
	
	IF ~~ THEN BEGIN M0
		SAY @1 /* ~A murder weapon, you say? Let me see that.~ */
		=@2 /* ~Hm. Tell you what, since you are interested in investigating murders, why don't you see what you can do about a spate of murders we've had in our city? If you are able to help solve my case, I'll be happy to have one of my couriers deliver the dagger to Baldur's Gate.~ */
		IF ~~ THEN REPLY @3 /* ~That seems fair - I will see what I can do. Tell me what you know about these murders.~ */ 
		GOTO M38
		
		IF ~
			CheckStatGT(Player1, 16, CHR)
		~ THEN REPLY @30 /* ~Please, it is urgent. A young lady's life hangs in the balance.~ */
		GOTO M43
		
		IF ~~ THEN REPLY @4 /* ~Another time, perhaps. I have more pressing matters to attend to.~ */ 
		GOTO M28
		  
		IF ~~ THEN REPLY @5 /* ~Are the authorities in this gilded hellhole so incompetent as to rely on passerby to solve crimes? I don't have the time for this.~ */ 
		GOTO M29
	END
	
	IF ~~ THEN BEGIN M28 // from: 25.0
		SAY @7 /* ~Suit yourself. You know where to find me should you change your mind.~ */
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN M29 // from: 25.0
		SAY @8 /* ~There is no need to be rude, traveler. Best be on your way then.~ */
		IF ~~ THEN EXIT
	END	
	
	IF ~~ THEN BEGIN M30
		SAY @19 /* ~Yes, of course. Do you have a letter you'd like to include as well?~ */
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 2) // continues romance
			!Alignment(Player1,MASK_EVIL)
		~
		THEN REPLY @20 /* ~Yes, give me a moment. (Write a romantic letter to Captain Schael Corwin of the Flaming Fist).~ */
		GOTO M31
		
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 1) // friendship
			!Alignment(Player1,MASK_EVIL)
		~
		THEN REPLY @20 /* ~Yes, give me a moment. (Write a letter to Captain Schael Corwin of the Flaming Fist).~ */
		GOTO M32
		
		IF ~~ THEN REPLY @21 /* ~Yes, give me a moment. (Write a letter to Corporal Bence Duncan of the Flaming Fist).~ */ 
		GOTO M33
		
		IF ~~ THEN REPLY @22 /* ~No, I need some time to think about what I will write. I'll talk to you again when I am ready.~ */ 
		GOTO M35
	END
	
	IF ~~ THEN BEGIN M31
		SAY @24 /* ~Here's a pen and paper. Speak to me again when you are ready to send the letter.~ */
		IF ~~ THEN
		DO ~
			GiveItemCreate("XAORW1",LastTalkedToBy(Myself),1,0,0)
		~
		EXIT
	END

	IF ~~ THEN BEGIN M32
		SAY @24 /* ~Here's a pen and paper. Speak to me again when you are ready to send the letter.~*/
		IF ~~ THEN
		DO ~ 
			GiveItemCreate("XAORW2",LastTalkedToBy(Myself),1,0,0) 
		~
		EXIT
	END

	IF ~~ THEN BEGIN M33
		SAY @24 /* ~Here's a pen and paper. Speak to me again when you are ready to send the letter.~*/
		IF ~~ THEN
		DO ~ 
			GiveItemCreate("XALDUNC",LastTalkedToBy(Myself),1,0,0)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M34
		SAY @9  /* ~(You hand over the dagger and the letter to Brega)~ */
		= @35 /*  ~I'll have my courier pick these up first thing in the morning. It will take a few days for it to reach Baldur's Gate. Thank you again for your service, citizen.~	 */
		IF ~~ THEN
		DO ~
			TakePartyItem("XASTDAG")
			TakePartyItem("XAORW1")
			TakePartyItem("XAORW2")
			TakePartyItem("XALDUNC")
			DestroyItem("XASTDAG")
			DestroyItem("XAORW1")
			DestroyItem("XAORW2")
			DestroyItem("XALDUNC")
			SetGlobalTimer("XA_STtoBG","GLOBAL",TWO_DAYS)
			AddexperienceParty(35000)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M35 // from: 25.0
		SAY @11  /* ~~Take your time. You know where to find me.~.~ */
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN M36a
		SAY @12  /* ~Of course. You are sure that you want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		/*@14  = ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to my love, Captain Schael Corwin of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of. Maybe then, Schael and I can finally be together, once this business with Irenicus is over. It is that hope which gives the strength to move forward.~ */
		DO ~
			AddJournalEntry(@14, INFO) 
			SetGlobal("XA_LetterSent", "GLOBAL",1)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
		
		IF ~~ THEN EXIT
	END 

	IF ~~ THEN BEGIN M36b
		SAY @12  /* ~Of course. You are sure that you want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		 /* ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to Captain Schael Corwin of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of.~*/
		DO ~
			AddJournalEntry(@16, INFO)
			SetGlobal("XA_LetterSent", "GLOBAL", 2)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
		
		IF ~~ THEN EXIT
	END 
	IF ~~ THEN BEGIN M37
		SAY @17  /* ~Of course. You are sure that you want to send the letter and dagger to Corporal Bence Duncan of the Flaming Fist, correct?~ */
		IF ~~ THEN REPLY @13 /* ~Yes, that is correct.~ */
		/* ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, was kind enough to send the Soultaker dagger and a letter explaining my current situation to Corporal Bence Duncan of the Flaming Fist. I hope that the city's mages and priests can use the dagger to restore Skie Silvershield's soul to her body. If it works, Skie will be able to confirm that I am innocent of the crimes that I am accused of.~
		*/
		DO ~
			AddJournalEntry(@18, INFO)
			SetGlobal("XA_LetterSent", "GLOBAL", 3)
		~
		GOTO M34
		
		IF ~~ THEN REPLY @15 /* ~No, I need some more time to think about it.~ */ 
		GOTO M35
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN M38
		SAY @25 /* ~Thank you, citizen. Speak to Lieutenant Aegisfield in the Bridge District, he is the main investigator and will fill you in on the details.~*/
		IF ~~ THEN
		/* ~Restoring Skie Silvershield

		Brega, who works for the Athkatla magistrate, offered to send the Soultaker dagger to Baldur's gate, in exchange for helping him with the investiation of a series of murders in the Bridge District. The mages and priests in the city may be able to use the dagger to restore Skie Silvershield's soul to her body. I agreed to help him.~ */
		DO ~
			SetGlobal("XA_HelpBrega", "GLOBAL", 1)
			AddJournalEntry(@6, INFO)
		~
		
		EXIT
	END
	
	IF ~~ THEN BEGIN M43
		SAY @31 /* ~Well... if it's that urgent... sure, I'll have the dagger delivered.~ */
		IF ~~ THEN REPLY @33 /* ~I appreciate that, thank you.~ */
		DO ~
			SetGlobal("XA_DaggerCHROverride", "GLOBAL", 1)
		~
		GOTO M44
	END
	
	IF ~~ THEN BEGIN M44
		SAY @32 /* ~Do you have a letter you'd like to include as well?~ */
		
		IF ~~ THEN REPLY @20 /* ~Yes, give me a moment. (Write a letter to Captain Schael Corwin of the Flaming Fist).~ */
		GOTO M32
		
		IF ~~ THEN REPLY @21 /* ~Yes, give me a moment. (Write a letter to Corporal Bence Duncan of the Flaming Fist).~ */ 
		GOTO M33
		
		IF ~~ THEN REPLY @22 /* ~No, I need some time to think about what I will write. I'll talk to you again when I am ready.~ */ 
		GOTO M35
	END
END
