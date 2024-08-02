BEGIN ~XANARZU~

//{ Confrontation before battle
IF ~
	Global("XA_LC_ConfrontNarzugon", "GLOBAL", 1)
~ THEN BEGIN XA_ConfrontDemon
	SAY @67 /* ~What's this?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_ConfrontNarzugon", "GLOBAL", 2)
		PlaySong(1022) // replace with xaa22
	~
	GOTO XA_ConfrontDemon2
END

IF ~~ THEN BEGIN XA_ConfrontDemon2
	SAY @69 /* ~How did you get past the wards?~ */
	
	IF ~~ THEN REPLY @66 /* ~Surprised?~ */
	GOTO XA_ConfrontDemon3
	
	IF ~~ THEN REPLY @68 /* ~Your time has finally come, demon.~ */
	GOTO XA_ConfrontDemon3
	
	IF ~~ THEN REPLY @84 /*~This is your last chance. Release us, or die.~*/
	GOTO XA_LastChance
END

IF ~~ THEN BEGIN XA_LastChance
	SAY @85 /* ~*MY* last chance? Hah! End this foolishness and give me the amulet.~  */
	
	IF ~
		PartyHasItem("AMUL27")
		Gender(Player1, MALE)
	~ THEN REPLY @13 /* Here, take it.~ */
	GOTO XA_GiveAmuletToDemon_M
	
	IF ~
		PartyHasItem("AMUL27")
		Gender(Player1, FEMALE)
	~ THEN REPLY @13 /* Here, take it.~ */
	GOTO XA_GiveAmuletToDemon_F
	
	IF ~~ THEN REPLY @86 /* Never! */
	GOTO XA_ConfrontDemon3
	
END

IF ~~ THEN BEGIN XA_ConfrontDemon3
	SAY @70 /* ~You've made a grave mistake in coming here, child of Bhaal. I gave you the chance of leaving here with your life, but you instead have chosen death.~ */
	
	= @71 /* ~At least now I shall have the amulet, and with it, I will claim the love of my dear Lyriel.~ */
	
	IF ~
		NumInPartyLT(2)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_NarzugonHostile", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADEM1")
	~
	EXIT
	
	IF ~
		NumInPartyGT(1)
		NumInPartyLT(4)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_NarzugonHostile", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADEM23")
	~
	EXIT
	
	IF ~
		NumInPartyGT(3)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_NarzugonHostile", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADEM4")
	~
	EXIT
	
END

//}

//{ Broke Parley
IF ~
	Global("XA_LC_ParleyAttack", "GLOBAL", 1)
~ THEN BEGIN XA_ParleyAttack
	SAY @62 /* ~I invite you for parley, and this is how you respond? Do they no longer teach proper etiquette in the outside world? Begone!~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_ParleyAttack", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutScene("XAPENT0")
	~
	EXIT	
END
//}

//{ Deciding whether to accept treasure
IF ~
	Global("XA_LC_GaveTreasure", "LOCALS", 1)
~ THEN BEGIN XA_GaveTreasure
	SAY @54 /* ~So? What've you decided?~ */
	
	IF ~
		Gender(Player1,MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @55 /*~The amulet, and our freedom, in exchange for the sword.~*/
	DO ~
		SetGlobal("XA_LC_IncubusSword", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1,FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @55 /* ~The amulet, and our freedom, in exchange for the sword.~*/
	DO ~
		SetGlobal("XA_LC_IncubusSword", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_F
	
	IF ~
		Gender(Player1,MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @89 /*~The amulet, and our freedom, in exchange for the quiver.~*/
	DO ~
		SetGlobal("XA_LC_IncubusQuiver", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1,FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @89 /*~The amulet, and our freedom, in exchange for the quiver.~*/
	DO ~
		SetGlobal("XA_LC_IncubusQuiver", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_F
	
	IF ~
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @56 /* ~The amulet, and our freedom, in exchange for the hen.~*/
	DO ~
		SetGlobal("XA_LC_IncubusGoose", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @56 /* ~The amulet, and our freedom, in exchange for the ring.~ */
	DO ~
		SetGlobal("XA_LC_IncubusGoose", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_F
	
	IF ~
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @57 /* ~The amulet, and our freedom, in exchange for the ring.~ */
	DO ~
		SetGlobal("XA_LC_IncubusRing", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_M
	
	IF ~
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @57 /* ~The amulet, and our freedom, in exchange for the ring.~ */
	DO ~
		SetGlobal("XA_LC_IncubusRing", "GLOBAL", 1)
	~
	GOTO XA_GiveAmuletToDemon_F
	
	IF ~~ THEN REPLY @60 /* ~I need more time to choose.~*/
	GOTO XA_ComeBackLater
	
	IF ~~ THEN REPLY @58 /* ~These trinkets are worthless. No deal.~ */
	DO ~
		SetGlobal("XA_LC_GaveTreasure", "LOCALS", 0)
	~
	GOTO XA_DontWantTreasure
END
//}

//{ Meeting Dialogues
IF ~
	Global("XA_LC_MetIncubus", "GLOBAL", 1)
~ THEN BEGIN XA_StartFirstMeet
	SAY @0 /* ~Welcome.~ */
	
	COPY_TRANS XANARZU XA_WhoWhatWhy
END

IF ~
	Global("XA_LC_MetIncubus", "GLOBAL", 2)
~ THEN BEGIN XA_StartSecondMeet
	SAY @27 /*~I hope that now, you are willing to listen to reason.~*/
	
	IF ~~ THEN REPLY @37 /* ~You. Again.~ */
	GOTO XA_SecondMeeting //OK
	
	COPY_TRANS XANARZU XA_WhoWhatWhy
END

IF ~
	Global("XA_LC_MetIncubus", "GLOBAL", 3)
~ THEN BEGIN XA_StartThirdMeet
	SAY @39 /*~Surely you're tired of this by now, yes?~*/
	
	IF ~
		!NumInPartyGT(1)
	~ THEN REPLY @41 /* ~My patience is not without limits, beast. Free me, or you'll regret it.~ */
	GOTO XA_ThirdMeeting //OK
	
	IF ~
		NumInPartyGT(1)
	~ THEN REPLY @42 /* ~Our patience is not without limits, beast. Free us, or you'll regret it.~ */
	GOTO XA_ThirdMeeting //OK
	
	COPY_TRANS XANARZU XA_WhoWhatWhy
END
//}

IF ~~ THEN BEGIN XA_AskWho
	SAY @75 /* ~Who am I? What an odd question...~ */
	
	= @76 /* ~I did have a name once. Yes, I did. But that was eons ago, and I've long since forgotten what it was.~ */
	
	= @77 /* ~I do however remember my nature. In your tongue, I am called an Incubus — an invader of dreams.~ */
	
	COPY_TRANS XANARZU XA_MeetingTransition
END

IF ~~ THEN BEGIN XA_AskWhat
	SAY @80 /* ~This place was originally created as a prison for me long ago, by a wizard of some repute.~*/
	
	= @81 /* ~I've since mastered the energies by which this reality is sustained, and as such I am capable of altering it to suit my needs.~ */
	
	COPY_TRANS XANARZU XA_MeetingTransition
END

IF ~~ THEN BEGIN XA_AskAboutGorion2
	SAY @65 /*  ~I sensed that you often wonder what Gorion would think of your actions. Most mortals would jump at the opportunity to speak to a deceased loved one, even if it was just a similacrum.~*/
	
	COPY_TRANS XANARZU XA_MeetingTransition
END

IF ~~ THEN BEGIN XA_AskAboutGorion
	SAY @40 /* ~Spare me the indignation, child.~ */

	IF ~~ THEN 
	GOTO XA_AskAboutGorion2
END

IF ~~ THEN BEGIN XA_AskAboutDS
	SAY @7 /* ~Dragonspear was a momentous experience in your life. I felt the intensity of that memory, and used it to create a little game for you.~ */	
	
	IF ~
		OR(2)
			Dead("xadragon")
			Global("XA_LC_DragonNarzuDebug", "GLOBAL", 1)
	~ THEN 
	GOTO XA_AskAboutDS_Dragon
	
	IF ~
		!Dead("xadragon")
	~ THEN 
	GOTO XA_AskAboutDS_Crusaders
END

IF ~~ THEN BEGIN XA_AskAboutDS_Crusaders
	SAY @8 /* ~I hope you enjoyed it as much as I enjoyed watching you do what you do best... though the skill and power of the pawns you defeated pale in comparison to my own.~ */
	
	COPY_TRANS XANARZU XA_MeetingTransition
END

IF ~~ THEN BEGIN XA_AskAboutDS_Dragon
	SAY @90 /*~You even managed to defeat my recreation of the dragon Halatathlaer... an impressive feat, even for one of your lineage. Such skill and bravery is worthy of an appropriate reward, yes?~*/
	
	= @91 /*(Before you can respond, you experience a profound sense of vertigo, and the room seems to shift and change before your eyes. In your mind, you see images of a robe, a shield, and a suit of armor. Soon, you regain your lucidity, and know that you must make a choice.)*/
	
	IF ~~ THEN REPLY @92 /*~(Choose the robe.)~*/
	DO ~
		GiveItemCreate("XADROBE", Player1, 0, 0, 0)
	~ GOTO XA_DragonReward
	
	IF ~~ THEN REPLY @93 /*~(Choose the suit of armor.)~*/
	DO ~
		GiveItemCreate("XADARMOR", Player1, 0, 0, 0)
	~ GOTO XA_DragonReward
	
	IF ~~ THEN REPLY @94 /*~(Choose the shield.)~*/
	DO ~
		GiveItemCreate("XADSHLD", Player1, 0, 0, 0)
	~ GOTO XA_DragonReward
END

IF ~~ THEN BEGIN XA_DragonReward
	SAY @95 /*~May it serve you well, child of Bhaal.~  */
	
	= @96 /*~Let us return, now, to the matter at hand.~*/
	COPY_TRANS XANARZU XA_AskAboutDS_Crusaders
END

IF ~~ THEN BEGIN XA_AskAboutTrial
	SAY @33 /* ~I wanted to explore what might've happened had you not destroyed your brother's plan to become one of the leaders of the city.~ */
	
	= @35 /*  ~Think of what you saw as one possible outcome... one of many.~ */
	
	COPY_TRANS XANARZU XA_MeetingTransition
END

IF ~~ THEN XA_FirstMeeting
	SAY @18 /*~I'm sure you have questions, <CHARNAME>.~*/

	COPY_TRANS XANARZU XA_WhoWhatWhy
END

IF ~~ THEN BEGIN XA_SecondMeeting
	SAY @28 /* ~My offer stands. Give me the amulet, and you will be freed.~*/
	
	IF ~
		GlobalLT("XA_LC_AskAboutLyriel", "LOCALS", 1)
		PartyHasItem("AMUL27")
	~ THEN REPLY @22 /* ~The amulet of the Seldarine? I will give it to you, but only if you agree to release Lyriel as well.~ */
	DO ~
		SetGlobal("XA_LC_AskAboutLyriel", "LOCALS", 1)
	~
	GOTO XA_AskAboutLyriel //OK
	
	IF ~
		!NumInPartyGT(1)
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @30 /* ~I grow tired of your games. Take the amulet and release me.~*/
	GOTO XA_GiveAmuletToDemon_M //OK
	
	IF ~
		NumInPartyGT(1)
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @31 /* ~We're tired of your games. Take the amulet and release us.~ */
	GOTO XA_GiveAmuletToDemon_M //OK
	
	IF ~
		!NumInPartyGT(1)
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @30 /* ~I grow tired of your games. Take the amulet and release me.~*/
	GOTO XA_GiveAmuletToDemon_F //OK
	
	IF ~
		NumInPartyGT(1)
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @31 /* ~We're tired of your games. Take the amulet and release us.~ */
	GOTO XA_GiveAmuletToDemon_F //OK
		
	IF ~
		PartyHasItem("AMUL27")
	~ THEN REPLY @29 /* ~The amulet is mine. If you want it, come and take it!~*/
	GOTO XA_TakeAmulet //OK
	
	IF ~~ THEN REPLY @87 /* ~No deal.~*/
	GOTO XA_TakeAmulet //OK
END

IF ~~ THEN BEGIN XA_ThirdMeeting
	SAY @43 /* ~You'll be pleased to learn that I've sweetened the deal. In exchange for the amulet, I'll give you one item of great value, in addition to your release.~ */
	
	IF ~~ THEN REPLY @46 /* ~How long have you been imprisoned here? Allow me to end your suffering.~ */
	GOTO XA_Suffering
	
	IF ~~ THEN REPLY @44 /* ~What exactly are you offering?~ */
	GOTO XA_WhatAreYouOffering
	
	IF ~~ THEN REPLY @53 /* ~No deal. And the next time we meet will be our last.~ */
	GOTO XA_DontWantTreasure
END

IF ~~ THEN BEGIN XA_Suffering
	SAY @47 /* ~Suffering? You don't understand. In this place, I have the power to reshape reality as I see fit. I can create and destroy entire worlds, if I so choosed.~ */
	
	= @48 /* ~Though I can never leave, I am still able to experience the outside world, through luring people like you to me.~  */
	
	= @49 /*  ~By my nature, I am able to peer into the memories and dreams of others. Doing so gives me the creative spark to will new realities into being.~ */
	
	IF ~~ THEN REPLY @50 /* ~These 'realities' you create are cheap imitations, and they're as shallow as they are meaningless. Surely, you realize that.~  */
	GOTO XA_Suffering2
	
	IF ~~ THEN REPLY @51 /* ~Your abduction of Lyriel shows me the hopelessnees of your situation. If your 'realities' are as substantive as you claim, then why not create one where she returns your affections?~*/
	GOTO XA_Suffering2
END

IF ~~ THEN BEGIN XA_Suffering2
	SAY @52 /* ~Enough. I did not bring you here to argue the finer points of existentialism. You have something that I want, and you will give it to me if you want to leave.~  */
	
	IF ~~ THEN REPLY @44 /* ~What exactly are you offering?~ */
	GOTO XA_WhatAreYouOffering
	
	IF ~~ THEN REPLY @53 /* ~No deal. And the next time we meet will be our last.~ */
	GOTO XA_DontWantTreasure
END

IF ~~ THEN BEGIN XA_WhatAreYouOffering
	SAY @45 /* ~Take a look for yourself. Let me know which of these treasures best suits your taste.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_GaveTreasure", "LOCALS", 1)
		GiveItemCreate("XASWORD", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASWORD", IDENTIFIED,TRUE))
		GiveItemCreate("XACHICK", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACHICK", IDENTIFIED,TRUE))
		GiveItemCreate("XAMSRING", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAMSRING", IDENTIFIED,TRUE))
		GiveItemCreate("XAQUIVER", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAQUIVER", IDENTIFIED,TRUE))
	~
	EXIT
END

//{ Exit to XAPAINT States

IF ~~ THEN XA_TakeAmulet
	SAY @32 /* ~There's no need. Sooner or later you'll come to your senses, whether it take a day, a year, or an eon. Give Lyriel my regards.~  */
	
	COPY_TRANS XANARZU XA_ReturnToPainting
END

IF ~~ THEN BEGIN XA_StillWontGiveAmulet
	SAY @64 /*~I can afford to wait. As I mentioned earlier, time is meaningless here. Give Lyriel my regards.~ */
	
	COPY_TRANS XANARZU XA_ReturnToPainting
END

IF ~~ THEN BEGIN XA_DontWantTreasure
	SAY @59 /*~You are a fool! Begone!~ */
	
	COPY_TRANS XANARZU XA_ReturnToPainting
END

IF ~~ THEN BEGIN XA_WontGiveAmulet
	SAY @17 /* ~Very well. Time is of no consequence, in this place. Eventually you will acquiesce to my demands. Begone.~ */
	
	COPY_TRANS XANARZU XA_ReturnToPainting
END

IF ~~ THEN BEGIN XA_GiveAmuletToDemon_M
	SAY @20 /* ~You are as wise as you are mighty, son of Bhaal. Now, you will have your freedom...~ */
	
	COPY_TRANS XANARZU XA_GiveAmuletTransition
END

IF ~~ THEN BEGIN XA_GiveAmuletToDemon_F
	SAY @21 /* ~You are as wise as you are mighty, daughter of Bhaal. Now, you will have your freedom...~ */
	
	COPY_TRANS XANARZU XA_GiveAmuletTransition
END

//}

IF ~~ THEN BEGIN XA_HaveSomethingDemonWants
	SAY @5 /*~You have something I want. Give it to me, and you shall have your freedom.~*/
	
	COPY_TRANS XANARZU XA_AmuletTransitions_1
END

IF ~~ THEN BEGIN XA_HaveSomethingDemonWants_Party
	SAY @6 /*~You have something I want. Give it to me, and you and your companions shall have your freedom.~*/
	
	COPY_TRANS XANARZU XA_AmuletTransitions_1
END

IF ~~ THEN BEGIN XA_ComeBackLater
	SAY @61 /* ~Return once you've made your decision.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_AskAboutLyriel
	SAY @15 /* ~No! She is mine. Give me the amulet in exhange for your freedom from this place.~*/
	
	COPY_TRANS XANARZU XA_AmuletTransitions_0
END


IF ~~ THEN BEGIN XA_AskDemonAmulet
	SAY @11 /* ~It's not your concern. You will give it to me if you want to return to Baldur's Gate.~ */
	
	COPY_TRANS XANARZU XA_AmuletTransitions_0
END

IF ~~ THEN BEGIN XA_AmuletTransitions_0
	SAY @13
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 1)
		!NumInPartyGT(1)
	~ THEN REPLY @12 /* ~No. I'll find my own way out of this place.~ */
	GOTO XA_WontGiveAmulet //OK
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 1)
		NumInPartyGT(1)
	~ THEN REPLY @26 /* ~No. We'll find our own way out of here.~ */
	GOTO XA_WontGiveAmulet //OK
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 2)
	~ THEN REPLY @98 /* ~No. I'll find my own way out of this place.~ */
	GOTO XA_StillWontGiveAmulet //OK
	
	
	IF ~
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO XA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @13 /*~Here, take it.~*/
	GOTO XA_GiveAmuletToDemon_F //OK
END

IF ~~ THEN BEGIN XA_AmuletTransitions_1
	SAY @13
	
	IF ~
		Gender(Player1, MALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @9 /*~The amulet of the Seldarine? Fine, take it.~*/
	GOTO XA_GiveAmuletToDemon_M //OK
	
	IF ~
		Gender(Player1, FEMALE)
		PartyHasItem("AMUL27")
	~ THEN REPLY @9 /*~The amulet of the Seldarine? Fine, take it.~*/
	GOTO XA_GiveAmuletToDemon_F //OK
	
	IF ~
		!Global("XA_LC_AskDemonAmulet", "GLOBAL", 1)
		PartyHasItem("AMUL27")
	~ THEN REPLY @10 /* ~The amulet, you mean... why do you want it?~ */
	DO ~
		SetGlobal("XA_LC_AskDemonAmulet", "GLOBAL", 1)
	~
	GOTO XA_AskDemonAmulet //OK
	
	IF ~~ THEN REPLY @26 /* ~No. I'll find my own way out of this place.~ */
	GOTO XA_WontGiveAmulet //OK
	
	IF ~
		GlobalLT("XA_LC_AskAboutLyriel", "LOCALS", 1)
		PartyHasItem("AMUL27")
	~ THEN REPLY @22 /* ~The amulet of the Seldarine? I will give it to you, but only if you agree to release Lyriel as well.~ */
	DO ~
		SetGlobal("XA_LC_AskAboutLyriel", "LOCALS", 1)
	~
	GOTO XA_AskAboutLyriel //OK
END

IF ~~ THEN BEGIN XA_MeetingTransition
	SAY @13
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 1)
	~ THEN 
	GOTO XA_FirstMeeting //OK
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 2)
	~ THEN
	GOTO XA_SecondMeeting //OK
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 3)
	~ THEN
	GOTO XA_ThirdMeeting //OK
END

IF ~~ THEN BEGIN XA_WhoWhatWhy
	SAY @13
	
	IF ~
		GlobalLT("XA_LC_AskWho", "LOCALS", 1)
	~ THEN REPLY @74 /* ~Who are you?~ */
	DO ~
		SetGlobal("XA_LC_AskWho", "LOCALS", 1)
	~
	GOTO XA_AskWho
	
	IF ~
		GlobalLT("XA_LC_AskWhat", "LOCALS", 1)
	~ THEN REPLY @79 /* ~What is this place?~ */
	DO ~
		SetGlobal("XA_LC_AskWhat", "LOCALS", 1)
	~
	GOTO XA_AskWhat
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		NumInPartyGT(1)
	~ THEN REPLY @78 /* ~Why have you brought us here?~ */
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		!NumInPartyGT(1)
	~ THEN REPLY @1 /* ~Why have you brought me here?~ */
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants 
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		NumInPartyGT(1)
	~ THEN REPLY @3 /* ~Release me and my companions from this prison!~*/
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants_Party //OK
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		!NumInPartyGT(1)
	~ THEN REPLY @82 /*~~Release me from this prison!~~ */
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants //OK
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		NumInPartyGT(1)
	~ THEN REPLY @83 /* ~You must be the demon Lyriel told us about.~*/
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants_Party //OK
	
	IF ~
		GlobalLT("XA_LC_AskWhy", "LOCALS", 1)
		!NumInPartyGT(1)
	~ THEN REPLY @2 /*~You must be the demon Lyriel told me about.~ */
	DO ~
		SetGlobal("XA_LC_AskWhy", "LOCALS", 1)
	~
	GOTO XA_HaveSomethingDemonWants //OK
	
	IF ~
		GlobalGT("XA_LC_CompletedG1", "GLOBAL", 1)
		GlobalLT("XA_LC_AskAboutDS", "LOCALS", 1)
	~ THEN REPLY @4 /* ~Why did you send me to Dragonspear?~ */
	DO ~
		SetGlobal("XA_LC_AskAboutDS", "LOCALS", 1)
	~
	GOTO XA_AskAboutDS //OK
	
	IF ~
		GlobalGT("XA_LC_CompletedG2", "GLOBAL", 1)
		GlobalLT("XA_LC_AskAboutTrial", "LOCALS", 1)
	~ THEN REPLY @34 /* ~Sarevok, a Grand Duke? What was the point of that farce?~  */
	DO ~
		SetGlobal("XA_LC_AskAboutTrial", "LOCALS", 1)
	~
	GOTO XA_AskAboutTrial //OK
	
	IF ~
		GlobalGT("XA_LC_CompletedG3", "GLOBAL", 0)
		GlobalGT("XA_LC_GorionTalk", "GLOBAL", 0)
		GlobalLT("XA_LC_AskAboutGorion", "LOCALS", 1)
	~ THEN REPLY @38 /* ~You'll pay for mocking the memory of my foster father!~ */
	DO ~
		SetGlobal("XA_LC_AskAboutGorion", "LOCALS", 1)
	~
	GOTO XA_AskAboutGorion //OK
	
	IF ~
		GlobalGT("XA_LC_CompletedG3", "GLOBAL", 1)
		GlobalGT("XA_LC_GorionTalk", "GLOBAL", 0)
		GlobalLT("XA_LC_AskAboutGorion", "LOCALS", 1)
	~ THEN REPLY @73 /* ~Why go through the trouble of creating a falsification of my dead foster father?~ */
	DO ~
		SetGlobal("XA_LC_AskAboutGorion", "LOCALS", 1)
	~
	GOTO XA_AskAboutGorion2 //OK
END

IF ~~ THEN BEGIN XA_ReturnToPainting
	SAY @13
	
	IF ~
		Global("XA_LC_DemonDebug", "GLOBAL", 1)
	~ THEN 
	EXIT
	
	IF ~
		!Global("XA_LC_DemonDebug", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAPENT0")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GiveAmuletTransition
	SAY @13
	
	IF ~~ THEN
	DO ~
		TakePartyItem("AMUL27")
		SetGlobal("XA_LC_GaveUpAmulet", "GLOBAL", 1)
		SetGlobal("XA_LC_LeavePrison", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Incubus", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAPEXIT")
	~
	EXIT
END