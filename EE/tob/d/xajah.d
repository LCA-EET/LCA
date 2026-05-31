APPEND JAHEI25J

	IF ~
		Global("XA_LC_NightmareTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_Nightmare
		SAY @0 /* @0=~<CHARNAME>, is everything alright?~*/
		
		IF ~~ THEN REPLY @1 /* ~Pardon?~ */
		GOTO XA_Nightmares2
		
		IF ~~ THEN REPLY @2 /* ~I think you know the answer to that.~*/
		GOTO XA_Nightmares2
		
		IF ~~ THEN REPLY @3 /*~What would make you ask such a question, Jaheira?~ */
		GOTO XA_Nightmares2
	END

	IF ~~ THEN BEGIN XA_Nightmares2
		SAY @4 /* ~You seem anxious of late. Something is on your mind and it is troubling you greatly.~*/
		
		= @5 /* ~If I didn't know you better, I'd assume it concerned the threat posed by the Five... but I sense this is something far more personal.~*/
		
		IF ~~ THEN REPLY @6 /* ~I appreciate your concern, Jaheira. It is personal, and I'd rather not discuss it.~*/
		GOTO XA_Nightmares2_END
		
		IF ~~ THEN REPLY @7 /* ~I've been plagued by some disturbing nightmares of late. (Confide in her).~*/
		GOTO XA_Nightmares3
	END

	IF ~~ THEN BEGIN XA_Nightmares2_END
		SAY @32 /* ~I understand, and I did not mean to pry. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_NightmareTalk", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Nightmares3
		SAY @8 /* ~I see... you say these nightmares involve some difficult decision you're being forced to make? And that they started not long after we began the journey to Tethyr?~*/
		
		IF ~~ THEN REPLY @9 /* ~Do you think there's a deeper meaning?~*/
		GOTO XA_Nightmares4A
		
		IF ~~ THEN REPLY @10 /* ~That's right. I can never remember the details, but I know they all end the same way.~*/
		GOTO XA_Nightmares4B
	END

	IF ~~ THEN BEGIN XA_Nightmares4A
		SAY @15 /* ~Recurring dreams and nightmares... they can be warnings of what might happen, not necessarily what will happen.~*/
		
		IF ~~ THEN 
		GOTO XA_Nightmares4B
	END

	IF ~~ THEN BEGIN XA_Nightmares4B
		SAY @11 /* ~And Schael? Have you discussed these nightmares with her?~*/
		
		IF ~~ THEN REPLY @12 /* ~Of course. Unsurprisingly, she's confident that we will overcome whatever challenges lie ahead.~ */
		GOTO XA_Nightmares5
		
		IF ~~ THEN REPLY @30 /* ~Yes, during the caravan ride to Saradush. She's worried about how the nightmares are affecting me, rather than what they may portend.~*/
		GOTO XA_Nightmares5
	END

	IF ~~ THEN BEGIN XA_Nightmares5
		SAY @13 /* ~Do you have the sense that this 'difficult and painful decision' involves her, in some way?~ */
		
		IF ~~ THEN REPLY @14 /* ~That thought has crossed my mind. The Five may end up being a greater threat than even Irenicus was. For her own safety, I may be forced to send her back to Baldur's Gate. Maybe that's the difficult decision I have to make.~*/
		GOTO XA_Nightmares6A
		
		IF ~~ THEN REPLY @16 /* ~I... I hope not.~*/
		GOTO XA_Nightmares6B
		
		IF ~~ THEN REPLY @17 /* ~Any decision affecting me would necessarily impact her. In spite of her assuredness, I know she's concerned as well.~*/
		GOTO XA_Nightmares6B
	END

	IF ~~ THEN BEGIN XA_Nightmares6A
		SAY @22 /* @22=~I would caution you against sending her away. We will need her strength and leadership for the battles ahead, and you will need her love and support. This is... heh... this is reminiscent of some conversations that I had with Khalid...~*/
		
		IF ~~ THEN REPLY @25 /* @25=~Oh?~*/
		GOTO XA_Nightmares7
		
		IF ~~ THEN REPLY @31 /* @31=~In what way?~*/ 
		GOTO XA_Nightmares7
	END

	IF ~~ THEN BEGIN XA_Nightmares6B
		SAY @18 /* @18=~I wouldn't second guess your decision to have her join us. We will need her strength and leadership for the battles ahead, and you will need her love and support. This reminds me... heh... of a conversation I once had with Khalid.~*/
		
		IF ~~ THEN REPLY @25 /* @25=~Oh?~*/
		GOTO XA_Nightmares7
		
		IF ~~ THEN REPLY @31 /* @31=~In what way?~*/ 
		GOTO XA_Nightmares7
	END

	IF ~~ THEN BEGIN XA_Nightmares7
		SAY @26 /* @26=~From time to time we spoke of the importance of moving on should one of us die. Khalid was always adamant that he wanted to go first.~*/
		
		IF ~~ THEN REPLY @27 /* ~He adored you. I think it would have been harder for him than it has been for you.~*/
		GOTO XA_Nightmares8
		
		IF ~~ THEN REPLY @28 /* Schael and I haven't yet had that conversation, but I know it's coming.~*/
		GOTO XA_Nightmares8
	END

	IF ~~ THEN BEGIN XA_Nightmares8
		SAY @19 /*@19=~Though I will always miss him, I am at peace knowing that, one day, we will be reunited.~ */
		
		IF ~~ THEN REPLY @23 /* ~@23=~Until that day comes, I will remain honored to fight by your side.~*/
		GOTO XA_Nightmares9A
		
		IF ~~ THEN REPLY @20 /* @20=~I may be selfish in saying this, but I hope that day is a ways away, my friend.~*/
		GOTO XA_Nightmares9B
	END

	IF ~~ THEN BEGIN XA_Nightmares9A
		SAY @24 /*@24=~As will I, my friend. The others are waiting. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_NightmareTalk", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Nightmares9B
		SAY @21 /*@21=~Hah! As do I, <CHARNAME>. There is still a great deal of work to be done. Let's get to it.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_NightmareTalk", "GLOBAL", 2)
		~
		EXIT
	END
END