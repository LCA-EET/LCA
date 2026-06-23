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
			@2052 /* @2052=~Edwin, I've noticed you never help carry supplies.~~*/
			
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
			@2065 /* @2065=~Rasaad, has anyone ever told you that your order attracts an unusual number of dramatic people?~*/
			
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
	CHAIN
		IF ~
			IsGabber("Valygar")
			TriggerOverride("Valygar", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Valygar", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_ValygarBanter1Chain
			@2077 /* @2077=~You know, most people become nervous when I catch them staring.~*/
			
			== BVALYG25
			@2078 /* @2078=~Most people are less observant than you.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2079 /* @2079=~That's not a denial.~*/
			== BVALYG25
			@2080 /* @2080=~Nor is it an admission.~*/

			== XACOR25B
			@2081 /* @2081=~You've spent too much time around mages. You're starting to answer like one.~*/
			== BVALYG25
			@2082 /* @2082=~An insult I do not deserve.~*/

			== XACOR25B
			@2083 /* @2083=~Good. I was worried I'd have to apologize.~*/
			== BVALYG25
			@2084 /* @2084=~You would not have.~*/
	EXIT
//}

//{ Jaheira Banter
	CHAIN
		IF ~
			IsGabber("Jaheira")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Jaheira", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Jaheira", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_JaheiraBanter1ChainRomance
			@2085 /* @2085=~Jaheira... may I ask you something plainly?~*/
			
			== BJAHEI25
			@2086 /* @2086=~If you are asking, then you already know I will answer plainly.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2087 /* @2087=~You knew <CHARNAME> before all of this. Before Irenicus, before Dragonspear... do you ever look at <PRO_HIMHER> now and struggle to see the person <PRO_HESHE> was?~*/
			== BJAHEI25
			@2088 /* @2088=~Every day. Yet I remind myself that the burden has changed <PRO_HIMHER>, not erased <PRO_HIMHER>.~*/

			== XACOR25B
			@2089 /* @2089=~I fear what waits at the end. Not for Faerûn — for <PRO_HIMHER>. Each victory seems to take something.~*/
			== BJAHEI25
			@2090 /* @2090=~That is the nature of power. The danger is not what it grants, but what it demands in return.~*/

			== XACOR25B
			@2091 /*@2091=~Then perhaps I am selfish. I do not care whether history remembers <PRO_HIMHER> as a hero or a god. I only want them to survive this.~ */
			== BJAHEI25
			@2092 /*@2092=~That is not selfishness. It is love.~ */

			== XACOR25B
			@2093 /* @2093=~And if love is not enough?~*/
			== BJAHEI25
			@2094 /* @2094=~Then stand beside them anyway. We cannot choose another's path, Schael. We can only ensure they do not walk it alone.~*/

			== XACOR25B
			@2095 /* @2095=~Sometimes that feels like a very small thing.*/
			== BJAHEI25
			@2096 /* @2096=~When the darkness closes in, it is often the greatest gift we can offer.~*/
	EXIT

	CHAIN
		IF ~
			IsGabber("Jaheira")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Jaheira", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Jaheira", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN XACOR25B XA_JaheiraBanter1ChainNonRomance
			@2097 /* @2097=~Saradush... a city can stand for generations and still fall in a single season.~*/
			
			== BJAHEI25
			@2098 /* @2098=~Yet people endure. They rebuild, grieve, and continue. Nature asks no less of us.~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			
			== XACOR25B
			@2099 /* @2099=~And what of <CHARNAME>? How long can one endure being treated as both savior and threat?~*/
			== BJAHEI25
			@2100 /* @2100=~Longer than they should have to. Every step on this journey seems to demand another sacrifice.~*/

			== XACOR25B
			@2101 /* @2101=~Sometimes I watch them and wonder whether any mortal should bear such a burden.~*/
			== BJAHEI25
			@2102 /* @2102=~No mortal should. But burdens do not choose their bearers.~*/

			== XACOR25B
			@2103 /* @2103=~Then all we can do is stand beside them until the end.~*/
			== BJAHEI25
			@2104 /* @2104=~Aye. Not to decide their fate for them, but to ensure they do not face it alone.~*/

			== XACOR25B
			@2105 /* @2105=~For what little comfort that may offer.~*/
			== BJAHEI25
			@2106 /* @2106=~In the darkest hours, Corwin, it is often the only comfort that matters.~*/
	EXIT	
//}

//{ Aerie Banters
	CHAIN
		IF WEIGHT #0~
			IsGabber("Aerie")
			TriggerOverride("Aerie", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Aerie", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BAERIE25 XA_AerieBanter1Chain
			@2107 /* @2107=~Schael... may I ask you something? You do not have to answer if it is painful.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2108 /* @2108=~After all we've faced, I think painful questions will be the easiest part of our day.~*/
			
			== BAERIE25
			@2109 /* @2109=~Are you afraid for <PRO_HIMHER>? For <CHARNAME>?~*/

			== XACOR25B
			@2110 /* @2110=~Of course. Not that <PRO_HESHE> will die — though that fear is there — but that <PRO_HESHE> will be forced to become something <PRO_HESHE> never wished to be.~*/
			
			== BAERIE25
			@2111 /* @2111=~I know that feeling. Sometimes I look at <PRO_HIMHER> and see how tired <PRO_HESHE is, and I wonder how much longer anyone can carry such weight.~*/

			== XACOR25B
			@2112 /* @2112=~Because <PRO_HESHE> believes others are depending on <PRO_HIMHER>. That is who <PRO_HESHE> is.~*/
			
			== BAERIE25
			@2113 /* @2113=~Then perhaps that is why <PRO_HESHE> needs us. Not to carry the burden, but to remind <PRO_HIMHER> that <PRO_HESHE> does not have to carry it alone.~*/

			== XACOR25B
			@2114 /* @2114=~You make it sound simple.~*/
			
			== BAERIE25
			IF ~
				Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			~
			@2115 /* @2115=~It is not simple. But love rarely is.~*/

			== BAERIE25
			IF ~
				!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			~
			@2115 /* @2115=~It is not simple. But love rarely is.~*/

			== XACOR25B
			@2116 /* @2116=~No. Yet for their sake, I hope it is enough.~*/
	EXIT
//}

//{ Viconia Banter
	CHAIN
		IF WEIGHT #0~
			IsGabber("Viconia")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Viconia", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Viconia", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BVICON25 XA_ViconiaBanter1ChainRomance
			@2118 /* @2118=~Tell me, rivvil, how does it feel to share a bed with destiny itself?~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2119 /* @2119=~Less comfortable than you'd think. Destiny snores after a hard march.~*/
			
			== BVICON25
			@2120 /* @2120=~Heh. You make light of it, yet the child of Bhaal stands mere steps from godhood.~*/

			== XACOR25B
			@2121 /* @2121=~That's exactly why I make light of it.~*/
			
			== BVICON25
			@2122 /* @2122=~I find it curious. The child of Bhaal could have power, worship, almost any lover <PRO_HESHE> desired... yet <PRO_HESHE> choose a soldier.~*/

			== XACOR25B
			@2123 /* @2123=~Maybe <PRO_HESHE>'s tired of people seeing a prophecy instead of a person.~*/
			
			== BVICON25
			@2124 /* @2124=~Hmph. A surprisingly wise answer.~*/

			== XACOR25B
			@2125 /* @2125=~Careful. Someone might mistake that for a compliment.~*/
			
			== BVICON25
			@2126 /* @2126=~Do not press thy luck. I simply understand the burden of being desired for what one is rather than who one is.~*/

			== XACOR25B
			@2127 /* @2127=~Then we understand each other more than either of us would like.~~*/
			
			== BVICON25
			@2128 /* @2128=~Perhaps. Though if you break <PRO_HISHER> heart, Corwin, I shall enjoy proving that strength and beauty are no defense against divine magic.~*/
	EXIT

	CHAIN
		IF WEIGHT #0~
			IsGabber("Viconia")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Viconia", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Viconia", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BVICON25 XA_ViconiaBanter1ChainNonRomance
			@2129 /* @2129=~Thou watchest the camp too closely, Corwin.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2130 /* @2130=~If I don't watch the camp, someone ends up summoning a demon, stealing from the supplies, or both.~*/

			== BVICON25
			@2131 /* @2131=~Heh. Fair. Our party is a peculiar collection of lunatics.~*/

			== XACOR25B
			@2132 /*@2132=~Including the drow priestess who insults everyone before breakfast?~ */

			== BVICON25
			@2133 /*@2133=~Especially her. At least she has standards.~ */

			== XACOR25B
			@2134 /* @2134=~Is that what you call it? Most people call it hostility.~*/

			== BVICON25
			@2135 /* @2135=~Most people are fools. If I disliked you, you would know it.~*/

			== XACOR25B
			@2136 /* @2136=~That's a strangely comforting thought.~*/

			== BVICON25
			@2137 /* @2137=~Do not become comfortable. Complacency gets warriors killed.~*/

			== XACOR25B
			@2138 /* @2138=~And suspicion gets them lonely.~*/

			== BVICON25
			@2139 /*@2139=~Better lonely than dead.~ */

			== XACOR25B
			@2140 /* @2140=~Maybe. But the best warriors learn how to avoid being both.~*/
	EXIT
//}

//{ Anomen Banters
	CHAIN
		IF WEIGHT #0~
			IsGabber("Anomen")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Anomen", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Anomen", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BANOME25 XA_AnomenBanter1Chain
			@2141 /* @2141=~Major, I must ask—do you ever fear that your attachment to <CHARNAME> clouds your judgment in matters of war?~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2142 /* @2142=~If it did, we’d all be dead by now.~*/

			== BANOME25
			@2143 /* @2143=~That is not an answer befitting one in your position.~*/

			== XACOR25B
			@2144 /* @2144=~It’s the honest one. I don’t confuse loving <PRO_HIMHER> with underestimating the battlefield.~*/

			== BANOME25
			@2145 /* @2145=~Love has led many capable commanders to ruin.~*/

			== XACOR25B
			@2146 /* @2146=~That’s why I rely on discipline, not feelings, when it matters.~*/

			== BANOME25
			@2147 /* @2147=~Yet you remain at <PRO_HIMHER>'s side as <PRO_HESHE> approaches godhood itself.~*/

			== XACOR25B
			@2148 /* @2148=~Because discipline says you stand by your unit when things get impossible.~*/

			== BANOME25
			@2149 /* @2149=~You speak of <PRO_HIMHER> as both lover and commander’s charge.~*/

			== XACOR25B
			@2150 /* @2150=When you're battling for the fate of the world, sometimes they’re the same thing.~~*/
	EXIT

//}

//{ Korgan
	CHAIN
		IF WEIGHT #0~
			IsGabber("Korgan")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Korgan", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Korgan", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BKORGA25 XA_KorganBanter1ChainRomance
			@2151 /* @2151=~So, Corwin, ye’ve got the Bhaalspawn’s heart, eh? Must be a right interestin’ way to earn yer keep.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2152 /*@2152=~I earn my keep with a bow and a blade, not with whoever I share my bedroll with.~ */

			== BKORGA25
			@2153 /*@2153=~Hah! Touchy. Didn’t mean offence—just callin’ it like I see it.~ */

			== XACOR25B
			@2154 /* @2154=~Then try seeing more than what you can mock.~*/

			== BKORGA25
			@2155 /* @2155=~Aye, but mockin’s half the fun o’ livin’. Tell me, lass, does it ever bother ye? Lovin’ somethin’ that might turn into a god or a corpse?~*/

			== XACOR25B
			@2156 /* @2156=~It bothers me every day. I just don’t let it decide my actions.~*/

			== BKORGA25
			@2157 /* @2157=~That’s the spirit. Waste o’ time worryin’ about doom when there’s fightin’ to be done.~*/
	EXIT

	CHAIN
		IF WEIGHT #0~
			IsGabber("Korgan")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Korgan", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Korgan", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BKORGA25 XA_KorganBanter1ChainNonRomance
			@2158 /* @2158=~Ye’ve got the arms of a smith and the glare of a magistrate, lass. Shame ye waste it on arrows instead of axes.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2159 /* @2159=~I prefer precision over splintering my own shield arm with every blocked blow.~*/

			== BKORGA25
			@2161 /* @2161=~Hah! Aye, but there’s somethin’ honest about a good axe. None o’ that dainty distance killin’.~*/

			== XACOR25B
			@2162 /*@2162=~Tell that to the things trying to kill us from beyond blade range.~ */

			== BKORGA25
			@2163 /* @2163=~Tch. Ye just like keepin’ yer lovely tush out o’ the mess.~*/

			== XACOR25B
			@2164 /*@2164=~I like keeping all my parts intact. It’s a habit that’s served me well.~ */

			== BKORGA25
			@2165 /* @2165=~Aye. Ye’re the one keepin’ the Bhaalspawn from gettin’ <PRO_HIMHER>self gutted.~*/

			== XACOR25B
			@2166 /* @2166=~Someone has to make sure they survive long enough for your complaints to remain relevant.~*/

			== BKORGA25
			@2167 /* @2167=~Har! I like ye more when ye’re insultin’ me.~*/
	EXIT
//}

//{ Imoen
	CHAIN
		IF WEIGHT #0~
			IsGabber("Imoen2")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Imoen2", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Imoen2", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BIMOEN25 XA_ImoenBanter1Chain
			@2168 /* @2168=~When we were kids, <CHARNAME> and I would sometimes discuss the qualities of a person we thought we could fall in love with. I don't remember <PRO_HIMHER> ever mentioning military discipline with abs.~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2169 /* @2169=~I’ll take that as a compliment. I think.~*/

			== BIMOEN25
			@2170 /* @2170=~Oh, it is! Mostly. I mean, you do glare at people like you’re trying to out-stare a dragon.~*/
			
			== XACOR25B
			@2171 /*@2171=~Maintaining that level of focus helps when the dangers we face include actual dragons.~ */

			== BIMOEN25
			@2172 /* @2172=~Fair point! Still, kinda weird seeing <PRO_HIMHER> all... soft-eyed around you.~*/

			== XACOR25B
			@2173 /* @2173=~"Soft-eyed" isn’t how I’d describe a <PRO_MANWOMAN> fighting to stave off an apocalypse.~*/

			== BIMOEN25
			@2174 /*@2174=~You know what I mean. The trust <PRO_HESHE> has in you. That’s rare for <PRO_HIMHER>. */

			== XACOR25B
			@2175 /* @2175=~I don’t blame <PRO_HIMHER> for not trusting easily.~*/

			== BIMOEN25
			@2176 /*@2176=~Yeah... <PRO_HESHE>'s had a lot of people wanting things from <PRO_HIMHER>. Power, destiny, <PRO_HISHER> head on a pike.~ */

			== XACOR25B
			@2177 /* @2177=~The only thing I want from <PRO_HIMHER> is <PRO_HISHER> love, and for us both to survive these next couple of weeks.~*/

			== BIMOEN25
			@2178 /*@2178=~Good. ‘Cause I’d have to steal your boots if you didn't, and I don’t think they’d fit me.~ */

			== XACOR25B
			@2179 /* @2179=~That’s reassuring on multiple levels.~~*/
	EXIT
//}

//{ Neera
	CHAIN
		IF WEIGHT #0~
			IsGabber("Neera")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("Neera", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Neera", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BNEERA25 XA_NeeraBanter1Chain
			@2180 /* @2180=~So, Schael... be honest. Is <CHARNAME>'s courtship more "epic destiny romance" or "constant near-death experiences with bonus feelings"?~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2181 /* @2181=~A lot of both, I guess. The last romantic evening we had together included my father being beaten to within an inch of his life, and my daughter being kidnapped by one of the Five.~*/

			== BNEERA25
			@2182 /* @2182=~Ugh, of course it did.~*/

			== XACOR25B
			@2183 /* @2183=~Ultimately, it ended well... in more ways than one.~*/

			== BNEERA25
			@2184 /* @2184=~Meaning?~*/

			== XACOR25B
			@2185 /* @2185=~Meaning I made certain that <CHARNAME> understood exactly how thankful I was for <PRO_HISHER> efforts in saving Rohma.~*/

			== BNEERA25
			@2186 /* @2186=~Well, don't stop! Spill the details!~*/

			== XACOR25B
			@2187 /* @2187=~Let's just say that my hero's as talented and... long lasting... in the bedroom as <PRO_HESHE> is on the battlefield.~*/

			== BNEERA25
			@2188 /* @2188=~Whew! It's getting a bit hot in here, isn't it?~*/

			== XACOR25B
			@2189 /* @2189=~That's nothing compared to the first night we—ugh. We're falling behind the others. Let's get moving.~ */

			== BNEERA25
			@2190 /* @2190=~Fine. But you'll have to tell me more, later!~*/
	EXIT
//}

//{ Nalia
	CHAIN
		IF WEIGHT #0~
			IsGabber("Nalia")
			TriggerOverride("Nalia", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("Nalia", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BNALIA25 XA_NaliaBanter1Chain
			@2191 /* @2191=~Major Corwin, have you noticed that people tend to listen when you speak?~*/
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2192 /* @2192=~That's usually the goal when giving orders, Nalia.~*/

			== BNALIA25
			@2193 /* @2193=~I don't mean soldiers. Merchants, nobles, refugees... even adventurers.~*/

			== XACOR25B
			@2194 /* @2194=~Adventurers rarely listen. They just nod until something explodes.~*/

			== BNALIA25
			@2195 /* @2195=~Heh. Fair enough. Still, you have a commanding presence.~*/

			== XACOR25B
			@2196 /* @2196=~That's a polite way of saying I look intimidating.~*/

			== BNALIA25
			@2197 /* @2197=~I was going to say confident.~*/

			== XACOR25B
			@2198 /* @2198=~Confidence is useful. Intimidation is a bonus.~*/

			== BNALIA25
			@2199 /* @2199=~You make it sound so simple.~*/

			== XACOR25B
			@2200 /* @2200=~Most things are simple. People are the ones who complicate them.~*/

			== BNALIA25
			@2201 /* @2201=~Coming from an adventurer, that's a remarkable statement.~*/

			== XACOR25B
			@2202 /* @2202=~I'm a soldier on a mission more than I am an adventurer, but the sentiment is appreciated.~*/
	EXIT
//}

//{ HaerDalis
CHAIN
		IF WEIGHT #0~
			IsGabber("HaerDalis")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			TriggerOverride("HaerDalis", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
			TriggerOverride("HaerDalis", Global("XA_LC_CorwinBanters", "LOCALS", 0))
		~ THEN BHAERD25 XA_HaerDalisBanter1Chain
			@2203 /*@2203=~Ah, the iron-willed huntress whose gaze strikes truer than many arrows. Tell me, has any balladeer yet captured thy legend?~ */
			DO ~
				SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
				IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
			~
			== XACOR25B
			@2204 /*@2204=~I hope not. Most balladeers I've met improved the truth until it became nonsense.~ */

			== BHAERD25
			@2205 /* @2205=~A cruel wound to my profession.~ */

			== XACOR25B
			@2206 /*@2206=~You'll survive. Bards usually do.~ */

			== BHAERD25
			@2207 /* @2207=~Then permit me a question. How does one such as thee endure at the side of a soul caught between mortality and divinity?~*/

			== XACOR25B
			@2208 /* @2208=~The same way I endure anything else. One day at a time.~*/

			== BHAERD25
			@2209 /* @2209=~Such practicality. Thou wouldst reduce an epic saga to a marching schedule.~*/

			== XACOR25B
			@2210 /* @2210=~Epics are easier to survive when someone remembers the supplies.~*/

			== BHAERD25
			@2211 /* @2211=~Heh. There is poetry in that, whether thou knowest it or not.~*/

			== XACOR25B
			@2212 /* @2212=~And there it is. A bard finding poetry where no one asked for it.~*/

			== BHAERD25
			@2213 /* @2213=~Nay, my raven. I merely observe that while others sing of destiny, thou concernest thyself with the traveler. It is a rarer devotion.~*/

			== XACOR25B
			@2214 /* @2214=~Then leave it unsung. Some things matter more than becoming a story.~*/
	EXIT
//}

//{ Cernd
CHAIN
	IF WEIGHT #0~
		IsGabber("Cernd")
		TriggerOverride("Cernd", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		TriggerOverride("Cernd", Global("XA_LC_CorwinBanters", "LOCALS", 0))
	~ THEN BCERND25 XA_CerndBanter1Chain
		@2215 /* ~The balance is troubled. I can feel it in every step we take on this journey.~ */
		DO ~
			SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
			IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
		~

		== XACOR25B
		@2216 /* @2216=~I can't speak to balance, but I've seen enough to know this is no ordinary threat.~*/

		== BCERND25
		@2217 /* @2217=~Yet you remain remarkably calm.~*/

		== XACOR25B
		@2218 /* @2218=~As do you. Calm is useful. Panic rarely improves a situation.~*/

		== BCERND25
		@2219 /* @2219=~A practical philosophy. Though I wonder if it shields you from your fears.~*/

		== XACOR25B
		@2220 /* @2220=~It doesn't. It just keeps them from making decisions for me.~*/

		== BCERND25
		@2221 /* @2221=~Is <CHARNAME> among those fears?~*/

		== XACOR25B
		@2222 /* @2222=~Every day.~*/

		== BCERND25
		@2223 /* @2223=~And still you walk beside them into the heart of the storm.~*/

		== XACOR25B
		@2224 /* @2224=~Because they're walking into it whether I'm there or not.~*/

		== BCERND25
		@2225 /* @2225=~Loyalty such as that is rare.~*/

		== XACOR25B
		@2226 /* @2226=~No. Rare is finding someone worth giving it to.~*/
	EXIT
//}

//{ Jan Banter

CHAIN
	IF ~
		IsGabber("Jan")
		TriggerOverride("Jan", Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		TriggerOverride("Jan", Global("XA_LC_CorwinBanters", "LOCALS", 0))
	~ THEN XACOR25B XA_JanBanter1Chain
		@2227 /*@2227=~Jan, I've noticed that every one of your plans begins with "trust me."~ */
		
		== BJAN25
		@2228 /* @2228=~Naturally. If I began with "this is a terrible idea," people would be much less cooperative.~*/
		DO ~
			SetGlobal("XA_LC_CorwinBanterPending", "LOCALS", 0)
			IncrementGlobal("XA_LC_CorwinBanters", "LOCALS", 1)
		~
		== XACOR25B
		@2229 /* @2229=~People are less cooperative. They just stop listening after the first minute.~*/

		== BJAN25
		@2230 /*@2230=~A useful filtering technique. It separates the sensible from the adventurous.~ */

		== XACOR25B
		@2231 /*@2231=~And which category survives longer?~ */

		== BJAN25
		@2232 /* @2232=~Usually neither. We're battling against Bhaalspawn, after all.~*/

		== XACOR25B
		@2233 /* @2233=~Fair point.~*/

		== BJAN25
		@2234 /* @2234=~Speaking of survival, my Uncle Gerhardt once escaped a basilisk by convincing it he was already a statue.~*/

		== XACOR25B
		@2235 /* @2235=~Did that actually happen?~*/

		== BJAN25
		@2236 /*@2236=~No, but you've learned to ask. I'm proud of you.~ */

		== XACOR25B
		@2237 /* @2237=~One day, Jan, I'm going to get a straight answer from you.~*/

		== BJAN25
		@2238 /* @2238=~Then the gods truly are doomed.~*/
	EXIT


//}