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
		IF WEIGHT #0~
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
		IF WEIGHT #0~
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
	
	CHAIN 
		IF WEIGHT #0~
			IsGabber("XACORWIN")
			TriggerOverride("XACAELAR", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("XACAELAR", Global("XA_LC_CorwinBanters", "LOCALS", 1))
		~ THEN XACAELAB XA_CaelarCorwinBanter1Chain
		@2019 /* @2019=~Major, may I make an observation?~*/
		DO ~
			SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
			IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
		~
		== XACOR25B
		@2020 /* @2020=~That depends. Is it about my shooting?~*/

		== XACAELAB
		@2021 /* @2021=~Not this time. I was reflecting on how fortunate the Flaming Fist must be to have an archer of your skill in its ranks.~*/

		== XACOR25B
		@2022 /* @2022=~Flattery from the 'Shining Lady'? This should be interesting.~*/

		== XACAELAB
		@2023 /* @2023=~I merely speak the truth. You possess a commanding presence — striking features, unwavering confidence, and the physique of someone who has spent years mastering her craft.~*/

		== XACOR25B
		@2024 /* @2024=~That's a surprisingly thorough assessment.~*/

		== XACAELAB
		@2025 /* @2025=~Years of leadership teach one to notice exceptional people.~*/

		== XACOR25B
		@2026 /* @2026=~And here I thought people only noticed the bow.~*/

		== XACAELAB
		@2027 /* @2027=~False modesty in a woman of your caliber? You know as well as I that people notice far more than just the bow.~*/

		== XACOR25B
		@2028 /* @2028=~Remind me never to ask what you think of my marksmanship. At this rate, I'll be blushing for a tenday.~*/
	EXIT
	//}
//}

//{ Keldorn Banter
	CHAIN
		IF ~
			IsGabber("Keldorn")
			TriggerOverride("Keldorn", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Keldorn", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_KeldornBanter1Chain
			@2029 /* ~Tell me, Sir Keldorn — have you ever faced a foe who wasn't a demon, dragon, or avatar of some dark power?~*/
			
			== BKELDO25
			@2030 /* @2030=~Certainly. Once I spent three hours negotiating a property dispute in Athkatla.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2031 /* @2031=~More terrifying than Yaga-Shura?~*/

			== BKELDO25
			@2032 /* @2032=~Considerably.~*/
			
			== XACOR25B
			@2033 /* @2033=~Gods, I believe you.~*/

			== BKELDO25
			@2034 /* @2034=~Experience teaches that evil is predictable. Bureaucracy is not.~*/
			
			== XACOR25B
			@2035 /* @2035=~And here I thought paladins feared nothing.~*/

			== BKELDO25
			@2036 /* @2036=~We do not fear. We merely recognize threats.~*/
			
			== XACOR25B
			@2037 /* @2037=~Then I shall pray in Tymora's name that our next enemy carries a sword instead of legal documents.~*/

			== BKELDO25
			@2038 /* @2038=~A wise precaution, Major.~*/
			
			== XACOR25B
			@2039 /* @2039=~That's the first time I've heard "wise" and "major" in the same sentence.~*/

			== BKELDO25
			@2040 /* @2040=~Then your companions have been neglecting their duties.~*/
	EXIT
//}

//{ Mazzy Banter
	CHAIN
		IF ~
			IsGabber("Mazzy")
			TriggerOverride("Mazzy", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Mazzy", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_MazzyBanter1Chain
			@2041 /* @2041=~Mazzy, do halflings ever get tired of being compared to children?~*/
			
			== BMAZZY25
			@2042 /* @2042=~Constantly. Though it does make enemies underestimate me.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2043 /* @2043=~Until you charge them with a sword and a battle cry.~*/

			== BMAZZY25
			@2044 /* @2044=~Precisely. By then, it is too late for them to revise their assumptions~*/

			== XACOR25B
			@2045 /* @2045=~I admit, the first time I saw you challenge an ogre, I was concerned.~*/

			== BMAZZY25
			@2046 /*@2046=~And the second time?~ */

			== XACOR25B
			@2047 /* @2047=~I was concerned for the ogre.~*/

			== BMAZZY25
			@2048 /* @2048=~A reasonable adjustment.~*/

			== XACOR25B
			@2049 /* @2049=~Have you always been this confident?~*/

			== BMAZZY25
			@2050 /* @2050=~No. I simply learned that if one is only half as tall as everyone else, one must be twice as stubborn.~*/

			== XACOR25B
			@2051 /* @2051=~That explains why you've survived this long.~*/

	EXIT

//}

//{ Edwin Banter
	CHAIN
		IF ~
			IsGabber("Edwin")
			TriggerOverride("Edwin", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Edwin", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_EdwinBanter1Chain
			@2052 /* @2052=~Edwin, I've noticed you never help carry supplies.~~/
			
			== BEDWIN25
			@2053 /* @2053=~Of course not. Great wizards carry the burden of intellect. The rest is delegated.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2054 /* ~How convenient. I've got three bedrolls, a quiver, and enough rations for a week.~*/

			== BEDWIN25
			@2055 /* @2055=~And yet you remain infuriatingly unbowed beneath the weight.~*/

			== XACOR25B
			@2056 /* @2056=~Years of training.~*/
			= @2057 /* @2057=~(She flexes and taps her tensed bicep.)~*/

			== BEDWIN25
			@2058 /* @2058=~A tragic waste. Imagine if all that effort had been spent studying the arcane arts.~*/

			== XACOR25B
			@2059 /* @2059=~Then who would drag your ass out of danger when your spells fail to get the job done?~*/

			== BEDWIN25
			@2060 /* @2060=~My magic requires no such assistance.~*/

			== XACOR25B
			@2061 /* @2061=~That's not what happened during our last encounter with that marilith.~*/

			== BEDWIN25
			@2062 /* @2062=~The fiend's tactical decisions were highly irregular.~*/

			== XACOR25B
			@2063 /* @2063=~Is that Thayan for "I ran"?~*/

			== BEDWIN25
			@2064 /* @2064=~It is Thayan for "I repositioned with exceptional foresight."~*/

	EXIT

//}

//{ Rasaad Banter
	CHAIN
		IF ~
			IsGabber("Rasaad")
			TriggerOverride("Rasaad", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Rasaad", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_RasaadBanter1Chain
			@2065 /* @2065=~Rasaad, has anyone ever told you that your order attracts an unusual number of dramatic people?~/
			
			== BRASAA25
			@2066 /* @2066=~More than once. Why do you ask?~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2067 /* @2067=~Because every story you've told involves some grand revelation or prophecy, or the appearance of a long-lost relative.~*/

			== BRASAA25
			@2068 /* @2068=~The path of the Sun Soul is rarely simple.~*/

			== XACOR25B
			@2069 /* @2069=~Mine is. I see danger, I shoot danger.~*/

			== BRASAA25
			@2070 /*@2070=~An admirably direct philosophy.~ */

			== XACOR25B
			@2071 /* @2071=~It's served me well thus far, and it leaves little room for mysterious revelations.~*/

			== BRASAA25
			@2072 /* @2072=~Yet somehow you travel with a Bhaalspawn and several individuals who could fill a library with their personal tragedies.~ */

			== XACOR25B
			@2073 /*@2073=~That's different. I don't seek out dramatic people.~*/

			== BRASAA25
			@2074 /*@2074=~You simply attract them? Male, and female?~ */

			== XACOR25B
			@2075 /* @2075=~Like moths to a flame.~*/

			== BRASAA25
			@2076 /* @2076=~An analogy that may explain more than you intended.~*/
	EXIT

//}

//{ Valygar Banter

//}