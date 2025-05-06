//APPEND ~XACOR25B~

//{ Sarevok Banters

	//{ Dialog B-89B
	CHAIN
		IF ~
			IsGabber("Sarevok")
			GlobalLT("ImoenGiveSoul","GLOBAL",2)
			Global("XA_LC_SarevokSoul", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			OR(2)
				Alignment("Sarevok",CHAOTIC_GOOD)
				Global("XA_LC_89BDebug", "GLOBAL", 1)
		~ THEN XACOR25B XA_SarevokBanter_Soul
			@870 /* ~So, what's it like?~ */
			== BSAREV25
			@879 /* ~Pardon?~ */
			DO ~
				SetGlobal("XA_LC_SarevokSoul", "GLOBAL", 2)
			~
			== XACOR25B
			@871 /* ~You're carrying part of <CHARNAME>'s soul. Maybe having <PRO_HIMHER> inside of you will make you a better person. But I expect that it won't.~ */
			== BSAREV25
			@872 /*  ~What do you wish to know, woman? What are you curious about?~ */
			= @873 /* ~Perhaps you would be interested to know that I can feel the triumph of Dragonspear, and the heat of Avernus. I've experienced the despair of that prison cell after being framed for murder. I remember the pain of our separation, and the sense of betrayal after being exiled from the city that I fought to defend.~ */
			== XACOR25B
			@882 /* ~Wait — you have <PRO_HISHER>'s memories?~ */
			== BSAREV25
			@874 /* ~I do. I can even feel the knives of Irenicus, slicing into my skin, torturing me. I can feel his hands and his breath... and... I can feel the unbridled joy of seeing you again, in Athkatla. I recall the fear of losing you to Bodhi, and Rohma to Illasera.~ */
			== XACOR25B
			@876 /* ~That's enough.~ */
			== BSAREV25
			@883 /* ~There's something else that you should know. Your <PRO_MANWOMAN> loves you with every fiber of <PRO_HISHER> being... I've never felt anything quite like it, in either of my lives...~*/
			== XACOR25B
			@885 /*~I said, enough... but, thank you. I feel the same way about <PRO_HIMHER>.~ */
			= @888 /*~Hrm. There may be more to you than I thought... Now let's get going.~ [XA100082]*/
	EXIT
	//}

	//{ Dialog B-89A
	CHAIN
		IF ~
			IsGabber("Sarevok")
			GlobalLT("ImoenGiveSoul","GLOBAL",2)
			Global("XA_LC_SarevokSoul", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			OR(2)
				!Alignment("Sarevok",CHAOTIC_GOOD)
				Global("XA_LC_89ADebug", "GLOBAL", 1)
		~ THEN XACOR25B XA_SarevokBanter_Soul
			@870 /* ~So, what's it like?~ */
			== BSAREV25
			@879 /* ~Pardon?~ */
			DO ~
				SetGlobal("XA_LC_SarevokSoul", "GLOBAL", 2)
			~
			== XACOR25B
			@871 /* ~You're carrying part of <CHARNAME>'s soul. Maybe having <PRO_HIMHER> inside of you will make you a better person. But I expect that it won't.~ */
			== BSAREV25
			@872 /*  ~What do you wish to know, woman? What are you curious about?~ */
			= @873 /* ~Perhaps you would be interested to know that I can feel the triumph of Dragonspear, and the heat of Avernus. I've experienced the despair of that prison cell after being framed for murder. I remember the pain of our separation, and the sense of betrayal after being exiled from the city that I fought to defend.~ */
			== XACOR25B
			@882 /* ~Wait — you have <PRO_HISHER>'s memories?~ */
			== BSAREV25
			IF ~
				Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
			~
			@874 /* ~I do. I can even feel the knives of Irenicus, slicing into my skin, torturing me. I can feel his hands and his breath... and... I can feel the unbridled joy of seeing you again, in Athkatla. I recall the fear of losing you to Bodhi, and Rohma to Illasera.~ */
			== BSAREV25
			IF ~
				GlobalLT("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
			~
			@154  /* ~I do.~ */
			== XACOR25B
			IF ~
				Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
			~
			@876 /* ~That's enough.~ */
			== BSAREV25
			IF ~
				Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
			~
			@877 /* ~And Schael... I remember us sharing some *very* intimate—~ */
			== XACOR25B
			@875 /*~I'm going to stop talking to you now. And I'm especially going to stop listening.~ [BD58915]*/
	EXIT
	//}

	//{ Dialog B-86A
	CHAIN
		IF ~
			IsGabber("Sarevok")
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanters", "LOCALS", 0))
			!Alignment("Sarevok",CHAOTIC_GOOD)
		~ THEN XACOR25B XA_SarevokBanter1
			@815 /* ~Sarevok.~ */
			== BSAREV25
			@816 /* ~Ah, Captain — excuse me, *Major* Corwin, to what do I owe the pleasure?~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@383 /*~I can't figure you out. What's the draw? What do you hope to gain from helping in this effort?~ [xalc1315]*/
			== BSAREV25
			@8/* ~Even though I no longer stand to benefit from it, I want to see Aluando's prophecy fulfilled. It's all I have left.~*/
			== XACOR25B
			@114 /*~Never forget that I'm watching you.~ [BD67545]*/
			=
			@810 /*~<CHARNAME> may be able to look past your crimes, but I'm not. If I even suspect that you're —~ */
			== BSAREV25
			@811 /*  ~Silence, woman. I should've had my lackeys kill you first, instead of Scar. ~   */
			== XACOR25B
			@812 /* ~Weren't man enough to do it yourself, eh? You'd rather rely on monsters and brigands to do your dirty work.~ */
			== BSAREV25
			@813 /*~I had more important matters to attend to. Consider yourself fortunate. Tell me, how has the city fared in my absence?~ */
			== XACOR25B
			@817 /* ~You needn't concern yourself with that. You'll never set foot in my city ever again.~ */
			== BSAREV25
			@818 /*~Rest assured Major, I've no further designs on Baldur's Gate, its citizens, or the Dukes ... or you, for that matter.~*/
	EXIT
	//}

	//{ Dialog B-86B
	CHAIN
		IF ~
			IsGabber("Sarevok")
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanters", "LOCALS", 0))
			Alignment("Sarevok",CHAOTIC_GOOD)
		~ THEN XACOR25B XA_SarevokBanter1
			@815 /* ~Sarevok.~ */
			== BSAREV25
			@816 /* ~Ah, Captain — excuse me, *Major* Corwin, to what do I owe the pleasure?~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@383 /*~I can't figure you out. What's the draw? What do you hope to gain from helping in this effort?~ [xalc1315]*/
			== BSAREV25
			@8/* ~Even though I no longer stand to benefit from it, I want to see Aluando's prophecy fulfilled. It's all I have left.~*/
			== XACOR25B
			@810 /*~<CHARNAME> may be able to look past your crimes, but I'm not. If I even suspect that you're —~ */
			== BSAREV25
			@869 /*  ~Enough. I know that I must atone for my sins. I've no wish to add to that burden by betraying <CHARNAME>, or any of you, for that matter.~  */
	EXIT
	//}

	//{ Dialog B-87
	CHAIN
		IF ~
			IsGabber("XACORWIN")
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanters", "LOCALS", 1))
		~ THEN BSAREV25 XA_SarevokBanter2
			@825 /* ~Major, a word please.~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@826 /* ~What is it?~ */
			== BSAREV25
			@827 /* ~Shortly before my attempted coup, Zhalimar informed me that a number of high ranking Flaming Fist officials, yourself included, left the city to take part in a training exercise. I always found the timing suspicious...~*/
			== XACOR25B
			@831 /* ... */
			== BSAREV25
			@828 /* ~Tell me ... what was the real reason you and the others were sent away?~ */
			== XACOR25B
			@403 /*You aren't going to let this go, are you [BD66686]*/
			=
			@832 /* ~All I will say is that the Council is wiser than you know.~  */
			== BSAREV25
			@830 /* ~There was no training exercise, was there? You were sent away, because they somehow knew or suspected that we would attempt to destroy the leadership of the Fist.~ */
			= @833 /* ~I suppose then that your orders were to take control of the city, in the event that I, or someone else associated with the Iron Throne, were to overtly usurp control.~ */
			= @835 /* ~Would you have been successful, I wonder? I doubt you'd have had the numbers, or the strength, to wrest control away from us.~*/
			== XACOR25B
			@418 /*= ~I disagree strenuously. Keep talking and I may start to disagree violently.~ [xalc1316]*/
			== BSAREV25
			@837 /* Hmph. */
	EXIT
	//}
	
	//{ Dialog B-88
	CHAIN
		IF ~
			IsGabber("Sarevok")
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Sarevok", Global("XA_LC_CorwinBanters", "LOCALS", 2))
		~ THEN XACOR25B XA_SarevokBanter3
			@838 /* ~What are you staring at?~ */
			== BSAREV25
			@840 /*~You.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@841 /* ~Huh?~ */
			== BSAREV25
			@842 /* ~Given your rank, as well as with your youth and allure, I naturally assumed that you had slept to the top. Certainly with Nederlok. Perhaps even with Duke Eltan himself.~*/
			== XACOR25B
			@527 /* ~For the love of the gods, save that filth for a chamberpot!~ [XA100003] */	
	END BSAREV25 XA_SarevokBanter3Chain_END

	CHAIN 
		IF ~~ THEN BSAREV25 XA_SarevokBanter3_Romance_Chain
			@844 /* ~In many ways, you remind me of my Tamoko — you are strong, fierce, and assertive.~ */
			== XACOR25B
			@846 /* ~If she was so valuable to you, why did you toss her to the curb?~ */
			== BSAREV25
			@847 /* ~She tried to keep me from what I thought, at the time, was my destiny... a foolish decision, as it turned out.~ */
			== BSAREV25
			@845 /* ~You and <CHARNAME> are fortunate to have found eachother. But as I'm sure you know, such things are not meant to last.~ */
			== XACOR25B
			@850 /* ~Enough ... It's none of your concern. Let's go.~ */
	EXIT

	CHAIN 
		IF ~~ THEN BSAREV25 XA_SarevokBanter3_NonRomance_Chain
			@848 /* ~You should have been at my side, instead of that fool Angelo.~ */
			== XACOR25B
			@849 /* ~Are you kidding? I'd never have joined you.~ */
			== BSAREV25
			@851 /* ~It would've been a trivial matter... you have a daughter, yes? She would've been all the leverage I needed to turn you, Major.~*/
			== XACOR25B
			@543 /*  ~Don't bring her into this. You won't like where that ends.~ [BD39644]~*/
			== BSAREV25
			@853 /* ~Relax, Major. As I told you before, I've no further interest in Baldur's Gate or its citizens. But others ... those who think like I do ... wouldn't hesitate to use your daughter against you.~ */
			== XACOR25B 
			@854 /* ~The Five already tried that, and <CHARNAME> and I stopped them.~ */
			== BSAREV25
			@855 /* ~There will be more. You must remain vigilant at all times.~ */
			== XACOR25B
			@856 /*~That's the first thing you've said that I agree with. Let's go.~*/
	EXIT
	//}
//}

//{ Caelar Banters
	//{ Dialog B-90
	CHAIN 
		IF ~
			IsGabber("XACORWIN")
			TriggerOverride("XACAELAR", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("XACAELAR", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACAELAB XA_CaelarCorwinBanter1Chain
		@858 /*~I can feel you staring at me. Is something on your mind, Major?~*/
		DO ~
			SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
			IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
		~
		== XACOR25B
		@544 /*~Scores, if not hundreds, of innocent people have been slain by those in your service.~ [BD56584]*/
		=
		@859 /* ~The Fist lost a lot of good people fighting against your crusade. Mothers, fathers, sons and daughters, many of whom I considered friends.~*/
		== XACAELAB
		@860 /* ~I understand, and I'm sorry. There's nothing I can do, however.~*/
		== XACOR25B
		@861 /*~I thought I'd hate you, but... I don't. The fact that you're here, helping <CHARNAME> and I with our mission is the reason why.~*/
		= @862 /* ~If we succeed, we'll vouch for your actions after your release from Avernus. The Dukes might be open to sparing your life, especially when they learn of what you've already suffered. You'd still have to worry about the Waterdhavian and Daggerford authorities, however.~*/
		== XACAELAB
		@863 /* ~I appreciate that Major, and I want to assure you that when the time comes, I'll accept whatever justice awaits me. Let's move out.~ */
	EXIT
	
	
	//}
//}
