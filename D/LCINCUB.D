BEGIN ~LCINCUB~

IF ~
	Global("LCA_ConfrontDemon", "GLOBAL", 1)
~ THEN BEGIN LCA_ConfrontDemon
	SAY @67 /* ~What's this?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ConfrontDemon", "GLOBAL", 2)
	~
	GOTO LCA_ConfrontDemon2
END

IF ~~ THEN BEGIN LCA_ConfrontDemon2
	SAY @70 /* ~How did you get past the wards?~ */
	
	IF ~~ THEN REPLY @66 /* ~Surprised?~ */
	GOTO LCA_ConfrontDemon3
	
	IF ~~ THEN REPLY @68 /* ~Your time has finally come, demon.~ */
	GOTO LCA_ConfrontDemon3
END

IF ~~ THEN BEGIN LCA_ConfrontDemon3
	SAY @70 /* ~You've made a grave mistake in coming here, child of Bhaal. I gave you the chance of leaving here with your life, but you instead have chosen death.~ */
	
	= @71 /* ~At least now I shall have the amulet, and with it, I will claim the love of my dear Lyriel.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		SetGlobal("LCA_DemonSpawn", "GLOBAL", 1)
	~
END

IF ~
	Global("LCA_ParleyAttack", "GLOBAL", 1)
~ THEN BEGIN LCA_ParleyAttack
	SAY @62 /* ~I invite you for parley, and this is how you respond? Do they no longer teach proper etiquette in the outside world? Begone!~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ParleyAttack", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutScene("LCPENT")
		DestroySelf()
	~
	EXIT
	
	IF ~
		Global("LCA_GaveTreasure", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_ParleyAttack", "GLOBAL", 0)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
		StartCutSceneMode()
		StartCutScene("LCPENT")
		DestroySelf()
	~
	EXIT
	
END

IF ~
	Global("LCA_GaveTreasure", "GLOBAL", 1)
~ THEN BEGIN LCA_GaveTreasure
	SAY @54 /* ~So? What've you decided?~ */
	
	IF ~
		Gender(Player1,MALE)
	~ THEN REPLY @55 /*~The amulet, and our freedom, in exchange for the axe.~*/
	DO ~
		SetGlobal("LCA_IncubusAxe", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1,FEMALE)
	~ THEN REPLY @55 /*~The amulet, and our freedom, in exchange for the axe.~*/
	DO ~
		SetGlobal("LCA_IncubusAxe", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_F
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @56 /* ~The amulet, and our freedom, in exchange for the golden goose.~ */
	DO ~
		SetGlobal("LCA_IncubusGoose", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @56 /* ~The amulet, and our freedom, in exchange for the golden goose.~ */
	DO ~
		SetGlobal("LCA_IncubusGoose", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_F
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @57 /* ~The amulet, and our freedom, in exchange for the girdle.~ */
	DO ~
		SetGlobal("LCA_IncubusGirdle", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @57 /* ~The amulet, and our freedom, in exchange for the girdle.~ */
	DO ~
		SetGlobal("LCA_IncubusGirdle", "GLOBAL", 1)
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	GOTO LCA_GiveAmuletToDemon_F
	
	IF ~~ THEN REPLY @60 /* ~I need more time to choose.~*/
	GOTO LCA_ComeBackLater
	
	IF ~~ THEN REPLY @58 /* ~These trinkets are worthless. No deal.~ */
	DO ~
		SetGlobal("LCA_GaveTreasure", "GLOBAL", 0)
	~
	GOTO LCA_DontWantTreasure
END

IF ~
	Global("LCA_MetIncubus", "GLOBAL", 1)
~ THEN BEGIN LCA_StartFirstMeet
	SAY @0 /* ~Hm. Well done.~ */
	
	IF ~
		Global("LCA_CompletedG1", "GLOBAL", 1)
		!Global("LCA_AskAboutDS", "GLOBAL", 1)
	~ THEN REPLY @4 /* ~Why did you send me to Dragonspear?~ */
	DO ~
		SetGlobal("LCA_AskAboutDS", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutDS //OK
	
	IF ~
		Global("LCA_CompletedG2", "GLOBAL", 1)
		!Global("LCA_AskAboutTrial", "GLOBAL", 1)
	~ THEN REPLY @34 /* ~That trial was not at all how I remembered it.~ */
	DO ~
		SetGlobal("LCA_AskAboutTrial", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutTrial //OK
	
	IF ~
		Global("LCA_CompletedG3", "GLOBAL", 1)
		!Global("LCA_AskAboutGorion", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~You'll pay for mocking the memory of my foster father!~ */
	DO ~
		SetGlobal("LCA_AskAboutGorion", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutGorion //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	DO ~
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_HaveSomethingDemonWants_Party
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	DO ~
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_HaveSomethingDemonWants
END

IF ~
	Global("LCA_MetIncubus", "GLOBAL", 3)
~ THEN BEGIN LCA_StartSecondMeet
	SAY @27 /*~Again, you succeed in besting my pets.~ */
	
	IF ~
		Global("LCA_CompletedG1", "GLOBAL", 1)
		!Global("LCA_AskAboutDS", "GLOBAL", 1)
	~ THEN REPLY @4 /* ~Why did you send me to Dragonspear?~ */
	DO ~
		SetGlobal("LCA_AskAboutDS", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutDS //OK
	
	IF ~
		Global("LCA_CompletedG2", "GLOBAL", 1)
		!Global("LCA_AskAboutTrial", "GLOBAL", 1)
	~ THEN REPLY @34 /* ~That trial was not at all how I remembered it.~ */
	DO ~
		SetGlobal("LCA_AskAboutTrial", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutTrial //OK
	
	IF ~
		Global("LCA_CompletedG3", "GLOBAL", 1)
		!Global("LCA_AskAboutGorion", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~You'll pay for mocking the memory of my foster father!~ */
	DO ~
		SetGlobal("LCA_AskAboutGorion", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutGorion //OK
	
	IF ~~ THEN REPLY @37 /* ~You. Again.~ */
	DO ~
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_SecondMeeting //OK
END

IF ~
	Global("LCA_MetIncubus", "GLOBAL", 5)
~ THEN BEGIN LCA_StartThirdMeet
	SAY @39 /*~Ah, you've returned.~ */
	
	IF ~
		Global("LCA_CompletedG1", "GLOBAL", 1)
		!Global("LCA_AskAboutDS", "GLOBAL", 1)
	~ THEN REPLY @4 /* ~Why did you send me to Dragonspear?~ */
	DO ~
		SetGlobal("LCA_AskAboutDS", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutDS //OK
	
	IF ~
		Global("LCA_CompletedG2", "GLOBAL", 1)
		!Global("LCA_AskAboutTrial", "GLOBAL", 1)
	~ THEN REPLY @34 /* ~That trial was not at all how I remembered it.~ */
	DO ~
		SetGlobal("LCA_AskAboutTrial", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutTrial //OK
	
	IF ~
		Global("LCA_CompletedG3", "GLOBAL", 1)
		!Global("LCA_AskAboutGorion", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~You'll pay for mocking the memory of my foster father!~ */
	DO ~
		SetGlobal("LCA_AskAboutGorion", "GLOBAL", 1)
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutGorion //OK
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @41 /* ~My patience is not without limits, beast. Free me, or you'll regret it.~ */
	DO ~
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_ThirdMeeting //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @42 /* ~Our patience is not without limits, beast. Free us, or you'll regret it.~ */
	DO ~
		IncrementGlobal("LCA_MetIncubus", "GLOBAL", 1)
	~
	GOTO LCA_ThirdMeeting //OK
END

IF ~~ THEN BEGIN LCA_AskAboutGorion
	SAY @40 /* ~Spare me the indignation, child.~ */

	= @65 /* You've always wondered what Gorion would think of the <PRO_MANWOMAN> you've become.~*/
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 2)
	~ THEN 
	GOTO LCA_FirstMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 4)
	~ THEN
	GOTO LCA_SecondMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 6)
	~ THEN
	GOTO LCA_ThirdMeeting //OK
END

IF ~~ THEN BEGIN LCA_AskAboutDS
	SAY @7 /* ~Dragonspear was a momentous experience in your life. I felt the intensity of that memory, and used it to create a little game for you.~ */
	
	= @8 /* ~I hope you enjoyed it as much as I enjoyed watching you do what you do best... though the skill and power of the pawns you defeated pale in comparison to my own.~ */
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 2)
	~ THEN 
	GOTO LCA_FirstMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 4)
	~ THEN
	GOTO LCA_SecondMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 6)
	~ THEN
	GOTO LCA_ThirdMeeting //OK
END

IF ~~ THEN BEGIN LCA_AskAboutTrial
	SAY @33 /* ~I wanted to explore what might've happened had you not destroyed your brother's plan to become one of the leaders of the city.~ */
	
	= @35 /*  ~Think of what you saw as one possible outcome... one of many.~ */
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 2)
	~ THEN 
	GOTO LCA_FirstMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 4)
	~ THEN
	GOTO LCA_SecondMeeting //OK
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 6)
	~ THEN
	GOTO LCA_ThirdMeeting //OK
	
END

IF ~~ THEN LCA_FirstMeeting
	SAY @18 /*~I'm sure you have questions, <CHARNAME>.~*/

	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	GOTO LCA_HaveSomethingDemonWants_Party //OK
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	GOTO LCA_HaveSomethingDemonWants //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @2 /* ~You must be the demon Lyriel told me about.~*/
	GOTO LCA_HaveSomethingDemonWants_Party //OK
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @2 /*~You must be the demon Lyriel told me about.~ */
	GOTO LCA_HaveSomethingDemonWants //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @3 /* ~Release me and my companions from this prison!~*/
	GOTO LCA_HaveSomethingDemonWants_Party //OK
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @3 /*~Release me and my companions from this prison!~ */
	GOTO LCA_HaveSomethingDemonWants //OK
END

IF ~~ THEN BEGIN LCA_SecondMeeting
	SAY @28 /* ~My offer stands. Give me the amulet, and you will be freed.~*/
	
	IF ~
		!Global("LCA_AskAboutLyriel", "GLOBAL", 1)
	~ THEN REPLY @22 /* ~The amulet of the Seldarrine? I will give it to you, but only if you agree to release Lyriel as well.~ */
	DO ~
		SetGlobal("LCA_AskAboutLyriel", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutLyriel //OK
	
	IF ~
		!NumInPartyGT(1)
		Gender(Player1, MALE)
	~ THEN REPLY @30 /* ~I grow tired of your games. Take the amulet and release me.~*/
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		NumInPartyGT(1)
		Gender(Player1, MALE)
	~ THEN REPLY @31 /* ~We're tired of your games. Take the amulet and release us.~ */
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		!NumInPartyGT(1)
		Gender(Player1, FEMALE)
	~ THEN REPLY @30 /* ~I grow tired of your games. Take the amulet and release me.~*/
	GOTO LCA_GiveAmuletToDemon_F //OK
	
	IF ~
		NumInPartyGT(1)
		Gender(Player1, FEMALE)
	~ THEN REPLY @31 /* ~We're tired of your games. Take the amulet and release us.~ */
	GOTO LCA_GiveAmuletToDemon_F //OK
		
	IF ~~ THEN REPLY @29 /* ~The amulet is mine. If you want it, come and take it!~*/
	GOTO LCA_TakeAmulet //OK
END

IF ~~ THEN BEGIN LCA_ThirdMeeting
	SAY @43 /* ~You'll be pleased to learn that I've sweetened the deal. In exchange for the amulet, I'll give you one item of great value, in addition to your release.~ */
	
	IF ~~ THEN REPLY @46 /* ~How long have you been imprisoned here? Allow me to end your suffering.~ */
	GOTO LCA_Suffering
	
	
END

IF ~~ THEN BEGIN LCA_Suffering
	SAY @47 /* ~Suffering? You don't understand. In this place, I have the power to reshape reality as I see fit. I can create and destroy entire worlds, if I so choosed.~ */
	
	= @48 /* ~Though I can never leave, I am still able to experience the outside world, through luring people like you to me.~  */
	
	= @49 /*  ~By my nature, I am able to peer into the memories and dreams of others. Doing so gives me the creative spark to will new realities into being.~ */
	
	IF ~~ THEN REPLY @50 /* ~These 'realities' you create are cheap imitations, and they're as shallow as they are meaningless. Surely, you realize that.~  */
	GOTO LCA_Suffering2
	
	IF ~~ THEN REPLY @51 /* ~Your abduction of Lyriel shows me the hopelessnees of your situation. If your 'realities' are as substantive as you claim, then why not create one where she returns your affections?~*/
	GOTO LCA_Suffering2
END

IF ~~ THEN BEGIN LCA_Suffering2
	SAY @52 /* ~Enough. I did not bring you here to argue the finer points of existentialism. You have something that I want, and you will give it to me if you want to leave.~  */
	
	IF ~~ THEN REPLY @44 /* ~What exactly are you offering?~ */
	GOTO LCA_WhatAreYouOffering
	IF ~~ THEN REPLY @53 /* ~No deal. And the next time we meet will be our last.~ */
	GOTO LCA_DontWantTreasure
END

IF ~~ THEN BEGIN LCA_WhatAreYouOffering
	SAY @45 /* ~Take a look for yourself. Let me know which of these treasures best suits your taste.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_GaveTreasure", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN LCA_TakeAmulet
	SAY @32 /* ~There's no need. Sooner or later you'll come to your senses, whether it take a day, a year, or an eon. Give Lyriel my regards.~  */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_DemonDebug", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCPENT")
	~
	EXIT
END



IF ~~ THEN BEGIN LCA_HaveSomethingDemonWants
	SAY @5 /*~You have something I want. Give it to me, and you shall have your freedom.~*/
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @9 /*~The amulet of the Seldarrine? Fine, take it.~*/
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @9 /*~The amulet of the Seldarrine? Fine, take it.~*/
	GOTO LCA_GiveAmuletToDemon_F //OK
	
	IF ~
		!Global("LCA_AskDemonAmulet", "GLOBAL", 1)
	~ THEN REPLY @10 /* ~The amulet, you mean... why do you want it?~ */
	DO ~
		SetGlobal("LCA_AskDemonAmulet", "GLOBAL", 1)
	~
	GOTO LCA_AskDemonAmulet //OK
	
	IF ~~ THEN REPLY @12 /* ~No. I'll find my own way out of this place.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		!Global("LCA_AskAboutLyriel", "GLOBAL", 1)
	~ THEN REPLY @22 /* ~The amulet of the Seldarrine? I will give it to you, but only if you agree to release Lyriel as well.~ */
	DO ~
		SetGlobal("LCA_AskAboutLyriel", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutLyriel //OK
END

IF ~~ THEN BEGIN LCA_HaveSomethingDemonWants_Party
	SAY @6 /*~You have something I want. Give it to me, and you and your companions shall have your freedom.~*/
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @9 /*~The amulet of the Seldarrine? Fine, take it.~*/
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @9 /*~The amulet of the Seldarrine? Fine, take it.~*/
	GOTO LCA_GiveAmuletToDemon_F //OK
	
	IF ~
		!Global("LCA_AskDemonAmulet", "GLOBAL", 1)
	~ THEN REPLY @10 /* ~The amulet, you mean... why do you want it?~ */
	DO ~
		SetGlobal("LCA_AskDemonAmulet", "GLOBAL", 1)
	~
	GOTO LCA_AskDemonAmulet //OK
	
	IF ~~ THEN REPLY @26 /* ~No. I'll find my own way out of this place.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		!Global("LCA_AskAboutLyriel", "GLOBAL", 1)
	~ THEN REPLY @22 /* ~The amulet of the Seldarrine? I will give it to you, but only if you agree to release Lyriel as well.~ */
	DO ~
		SetGlobal("LCA_AskAboutLyriel", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutLyriel //OK
END

IF ~~ THEN BEGIN LCA_ComeBackLater
	SAY @61 /* ~Return once you've made your decision.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_AskAboutLyriel
	SAY @15 /* ~No! She is mine. Give me the amulet in exhange for your freedom from this place.~*/
	
	IF ~
		!NumInPartyGT(1)
		Global("LCA_MetIncubus", "GLOBAL", 2)
	~ THEN REPLY @12 /* ~No. I'll find my own way out of this place.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		NumInPartyGT(1)
		Global("LCA_MetIncubus", "GLOBAL", 2)
	~ THEN REPLY @26 /* ~No. We'll find our own way out of here.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		!NumInPartyGT(1)
		Global("LCA_MetIncubus", "GLOBAL", 4)
	~ THEN REPLY @63 /* ~No. I'll find my own way out of this place.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		NumInPartyGT(1)
		Global("LCA_MetIncubus", "GLOBAL", 4)
	~ THEN REPLY @63 /* ~No. We'll find our own way out of here.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO LCA_GiveAmuletToDemon_F //OK
	
END

IF ~~ THEN BEGIN LCA_StillWontGiveAmulet
	SAY @64 /*~I can afford to wait. As I mentioned earlier, time is meaningless here. Give Lyriel my regards.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_DemonDebug", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCPENT")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_DontWantTreasure
	SAY @59 /*~You are a fool! Begone!~ */
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
	~
	EXIT
	
	IF ~
		!Global("LCA_DemonDebug", "GLOBAL", 1)
	~ THEN
	DO ~
		ActionOverride(Player1, DestroyItem("LCAXE"))
		ActionOverride(Player1, DestroyItem("LCGOOSE"))
		ActionOverride(Player1, DestroyItem("LCGIRDLE"))
		StartCutSceneMode()
		StartCutScene("LCPENT")
	~
	EXIT

END

IF ~~ THEN BEGIN LCA_AskDemonAmulet
	SAY @11 /* ~It's not your concern. You will give it to me if you want to return to Baldur's Gate.~ */
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @12 /* ~No. I'll find my own way out of this place.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @26 /* ~No. We'll find our own way out of here.~ */
	GOTO LCA_WontGiveAmulet //OK
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO LCA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO LCA_GiveAmuletToDemon_F //OK
	
END

IF ~~ THEN BEGIN LCA_WontGiveAmulet
	SAY @17 /* ~Very well. Time is of no consequence, in this place. Eventually you will acquiesce to my demands. Begone.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_DemonDebug", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCPENT")
	~
	EXIT
END


IF ~~ THEN BEGIN LCA_GiveAmuletToDemon_M
	SAY @20 /* ~You are as wise as you are mighty, son of Bhaal. Now, you will have your freedom...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_GaveUpAmulet", "GLOBAL", 1)
		SetGlobal("LCA_LeavePrison", "GLOBAL", 1)
		AddexperienceParty(50000)
		AddJournalEntry(@72, INFO)
		StartCutSceneMode()
		StartCutScene("LCPEXIT")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_GiveAmuletToDemon_F
	SAY @21 /* ~You are as wise as you are mighty, daughter of Bhaal. Now, you will have your freedom...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_GaveUpAmulet", "GLOBAL", 1)
		SetGlobal("LCA_LeavePrison", "GLOBAL", 1)
		AddexperienceParty(50000)
		AddJournalEntry(@72, INFO)
		StartCutSceneMode()
		StartCutScene("LCPEXIT")
	~
	EXIT
END
