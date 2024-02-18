BEGIN ~XAHAMZA~

//{ Dialog XAHAMZA-03
IF ~
	Global("XA_PaidToDeliver", "GLOBAL", 2)
~ THEN BEGIN XA_PaidAlready_2
	SAY @34 /* ~Don't worry — your letters will be delivered. I'll be leaving for the Sword Coast on the morrow.~ */
	
	IF ~~ THEN EXIT
END
//}

//{ Dialog XAHAMZA-02
IF ~
	Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	GlobalGT("XA_PaidToDeliver", "GLOBAL", 0)
~ THEN BEGIN XA_PaidAlready_1
	SAY @33 /* ~Don't worry — your letter will be delivered. I'll be leaving for the Sword Coast on the morrow.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!IsGabber("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	EXTERN XACOR25J XA_DeliverAdditional

	IF ~
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
		IsGabber("XACORWIN")
		!StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @37 /* ~I need an additional letter delivered ... My family needs to know that we're fine.~ */
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	GOTO XA_DeliverAdditional
	
	IF ~
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
		IsGabber("XACORWIN")
		StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @37 /* ~I need an additional letter delivered ... My family needs to know that we're fine.~ */
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	GOTO XA_DeliverAdditional_Charmed
END
//}

//{ Dialog XAHAMZA-04
IF ~
	IsGabber("Rasaad")
	!Global("XA_HamzaIntro", "LOCALS", 1)
~ THEN BEGIN XA_IntroDone_Rasaad
	SAY @38 /* ~Rasaad! It's good to see you, my friend.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~
	GOTO XA_HamzaRasaadChain2
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~
	GOTO XA_HamzaRasaadChain
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 4)
	~
	GOTO XA_HamzaRasaadChain
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 3)
	~
	GOTO XA_HamzaRasaadChain
END
//}

//{ Dialog XAHAMZA-05
IF ~
	IsGabber("Rasaad")
	Global("XA_HamzaIntro", "LOCALS", 1)
~ THEN BEGIN XA_IntroDone_Rasaad
	SAY @50 /*~It's good to see you again, Rasaad.~*/
	
	IF ~~ THEN EXIT
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 5)
	~
	EXTERN RASAA25J XA_HamzaRasaadChain3
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 4)
	~
	EXTERN RASAA25J XA_HamzaRasaadChain3
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 3)
	~
	EXTERN RASAA25J XA_HamzaRasaadChain3
END
//}

//{ Dialog XAHAMZA-00
IF ~
	Global("XA_HamzaIntro", "LOCALS", 1)
	!IsGabber("Rasaad")
~ THEN BEGIN XA_IntroDone
	SAY @20 /* Yes? */
	
	IF ~
		!IsGabber("XACORWIN")
		!IsValidForPartyDialogue("XACORWIN")
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @31 /* ~I need a letter delivered.~*/
	GOTO XA_DeliverToBG
	
	IF ~
		!IsGabber("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @31 /* ~I need a letter delivered.~ */
	EXTERN XACOR25J XA_DeliverTwoLetters2
	
	IF ~
		//IsGabber("XACORWIN")
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @30 /* ~We need two letters delivered.~ */
	GOTO XA_DeliverToBG
	
	IF ~
		!IsGabber("XACORWIN")
		!IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NeedLettersDelivered", "GLOBAL", 1)
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @9 /* ~I need to deliver a letter to Baldur's Gate.~ */
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 1)
	~
	GOTO XA_DeliverLetter
	
	IF ~
		!IsGabber("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		GlobalLT("XA_NeedLettersDelivered", "GLOBAL", 1)
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @9 /* ~I need to deliver a letter to Baldur's Gate.~ */
	EXTERN XACOR25J XA_DeliverTwoLetters
	
	IF ~
		IsGabber("XACORWIN")
		GlobalLT("XA_NeedLettersDelivered", "GLOBAL", 1)
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @14 /* ~We need to have two letters delivered to Baldur's Gate.~*/
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	GOTO XA_DeliverTwoLetters
	
	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation 
	
	IF ~~ THEN REPLY @32 /* ~I don't need anything right now.~ */
	EXIT
	
	IF ~
		See("Rasaad")
		IsValidForPartyDialogue("Rasaad")
	~ THEN
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~	
	GOTO XA_SeeRasaad
	
END
//}

IF ~~ THEN BEGIN XA_SeeRasaad
	SAY @38 /* ~Rasaad! It's good to see you, my friend.~ */
	
	IF ~~ THEN 
	GOTO XA_HamzaRasaadChain2
	
	IF ~
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN
	GOTO XA_HamzaRasaadChain
END


//{ Dialog XAHAMZA-01
IF ~
	!Global("XA_HamzaIntro", "LOCALS", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /* ~Can I help you?~ */
	
	IF ~~ THEN REPLY @13 /* ~Who're you?~ */
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~
	GOTO XA_WhoAreYou
	
	IF ~
		Global("XA_HeardAboutCourier", "GLOBAL", 1)
	~ THEN REPLY @1 /* ~Are you Hamza? I heard that you offer courier services.~ */
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~
	GOTO XA_HeardAboutCourier
	
	IF ~
		See("Rasaad")
		IsValidForPartyDialogue("Rasaad")
	~ THEN 
	DO ~
		SetGlobal("XA_HamzaIntro", "LOCALS", 1)
	~	
	GOTO XA_SeeRasaad
END
//}

IF ~~ THEN BEGIN XA_DeliverAdditional_Charmed
	SAY @56 /* ~To Baldur's Gate, yes? You seem like a good person. I'll deliver the letter free of charge.~*/
	
	IF ~~ THEN REPLY @55/* ~Here (Hand over 300 gold.)~ */
	DO ~
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
	~
	GOTO XA_ThankYou_Additional
END

IF ~~ THEN BEGIN XA_DeliverAdditional
	SAY @36 /* ~To Baldur's Gate, yes? The cost is 300 gold.~ */
	
	IF ~
		PartyGoldGT(299)
	~ THEN REPLY @22 /* ~Here (Hand over 300 gold.)~ */
	DO ~
		TakePartyGold(300)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
	~
	GOTO XA_ThankYou_Additional
	
	IF ~
		!PartyGoldGT(299)
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @25 /* ~I'm afraid I don't have enough money.~ */
	GOTO XA_NotEnoughMoney
END

IF ~~ THEN BEGIN XA_DeliverToBG
	SAY @29 /* ~Yes, to Baldur's Gate. I remember.~ */
	
	IF ~
		!StateCheck(Myself, STATE_CHARMED)
	~ THEN 
	GOTO XA_HowMuch
	
	IF ~
		StateCheck(Myself, STATE_CHARMED)
	~ THEN 
	GOTO XA_HowMuch_Charmed
END

IF ~~ THEN BEGIN XA_WhoAreYou
	SAY @11 /* ~My name is Hamza. I'm the mail courier for this region. And you are?~*/
	
	IF ~
		!IsGabber("XACORWIN")
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @12 /* ~I'm <IsGabber> ... you offer courier services, yes? We need to have a letter delivered to Baldur's Gate.~ */
	EXTERN XACOR25J XA_DeliverTwoLetters
	
	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation
	
	IF ~
		IsGabber("XACORWIN")
	~ THEN REPLY @52 /* ~I'm Major Schael Corwin of the Baldur's Gate Flaming Fist. We need to send two letters back to the city.~ */
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	GOTO XA_DeliverLetter
END

IF ~~ THEN BEGIN XA_DangerousOccupation
	SAY @19 /* ~Only if you're not familiar with the routes. Now, if you've no business to discuss, please leave me to my drink.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_HeardAboutCourier
	SAY @2 /* ~Yes, I'm Hamza. And yes, I do offer courier services.~ */
	
	IF ~
		!IsGabber("XACORWIN")
		!IsValidForPartyDialogue("XACORWIN")
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @9 /* ~I need to deliver a letter to Baldur's Gate.~ */
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 1)
	~
	GOTO XA_DeliverLetter
	
	IF ~
		!IsGabber("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @9 /* ~I need to deliver a letter to Baldur's Gate.~ */
	EXTERN XACOR25J XA_DeliverTwoLetters
	
	IF ~
		IsGabber("XACORWIN")
		GlobalGT("XA_MessageToBG", "GLOBAL", 0)
	~ THEN REPLY @14 /* ~We need to have two letters delivered to Baldur's Gate.~*/
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	GOTO XA_DeliverTwoLetters
	
	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation
END

IF ~~ THEN BEGIN XA_DeliverLetter
	SAY @21 /* ~Baldur's Gate, you say? Fortunately for you, I'm scheduled to make a run to the Sword Coast the morning after next.~ */
	
	IF ~
		!StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @4 /* ~How much?~ */
	GOTO XA_HowMuch
	
	IF ~
		StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @4 /* ~How much?~ */
	GOTO XA_HowMuch_Charmed
	
	IF ~
		!Global("XA_HowLong", "LOCALS", 1)
	~ THEN REPLY @7 /* ~How long do you think it will take to deliver our letters?~ */
	DO ~
		SetGlobal("XA_HowLong", "LOCALS", 1)
	~
	GOTO XA_HowLong

	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation
END

IF ~~ THEN BEGIN XA_HowMuch_Charmed
	SAY @54 /* ~Normally I'd charge 300 gold per letter, but you seem like a good person. I'll do it at no cost to you.~*/
	
	IF ~
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @55
	DO ~
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
	~
	GOTO XA_ThankYou_Two
	
	IF ~
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @55
	DO ~
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 1)
	~
	GOTO XA_ThankYou_One
END
IF ~~ THEN BEGIN XA_HowMuch
	SAY @5 /* ~The cost is 300 gold, per letter.~ */
	
	IF ~
		PartyGoldGT(599)
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @6 /* ~Here (Hand over 600 gold.)~ */
	DO ~
		TakePartyGold(600)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
	~
	GOTO XA_ThankYou_Two
	
	IF ~
		!PartyGoldGT(599)
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @25 /* ~I'm afraid I don't have enough money.~ */
	GOTO XA_NotEnoughMoney
	
	IF ~
		PartyGoldGT(299)
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @22 /* ~Here (Hand over 300 gold.)~ */
	DO ~
		TakePartyGold(300)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 1)
	~
	GOTO XA_ThankYou_One
	
	IF ~
		!PartyGoldGT(299)
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @25 /* ~I'm afraid I don't have enough money.~ */
	GOTO XA_NotEnoughMoney
	
	IF ~~ THEN REPLY @10 /* ~That's outrageous! You're already planning to head to the Sword Coast. Why does it cost so much to deliver two extra letters?~ */
	GOTO XA_ExorbitantPricing
END

IF ~~ THEN BEGIN XA_ExorbitantPricing
	SAY @27 /* ~What do you want me to say? Hiring security isn't cheap these days.~ */
	
	= @28 /* ~So, do you want the letters delivered, or not?~ */
	
	IF ~
		PartyGoldGT(599)
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @6 /* ~Here (Hand over 600 gold.)~ */
	DO ~
		TakePartyGold(600)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
	~
	GOTO XA_ThankYou_Two
	
	IF ~
		!PartyGoldGT(599)
		Global("XA_NeedLettersDelivered", "GLOBAL", 2)
	~ THEN REPLY @25 /* ~I'm afraid I don't have enough money.~ */
	GOTO XA_NotEnoughMoney
	
	IF ~
		PartyGoldGT(299)
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @22 /* ~Here (Hand over 300 gold.)~ */
	DO ~
		TakePartyGold(300)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 1)
	~
	GOTO XA_ThankYou_One
	
	IF ~
		!PartyGoldGT(299)
		Global("XA_NeedLettersDelivered", "GLOBAL", 1)
	~ THEN REPLY @25 /* ~I'm afraid I don't have enough money.~ */
	GOTO XA_NotEnoughMoney
	
	IF ~~ THEN REPLY @53 /* ~No. Not for that cost.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_NotEnoughMoney
	SAY @26 /* Return when you do. I'll be in town for the next day or so.~ */
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_ThankYou_Additional
	SAY @24 /* ~Thank you. Here's a pad and paper. I'll take the letter and mailing address when you're ready...~*/
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 3)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		StartCutSceneMode()
		StartCutScene("XACSHAM1")
	~
	EXIT
	
	IF ~
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 4)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		StartCutSceneMode()
		StartCutScene("XACSHAM1")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ThankYou_One
	SAY @24 /* ~Thank you. Here's a pad and paper. I'll take the letter and mailing address when you're ready...~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 5)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		StartCutSceneMode()
		StartCutScene("XACSHAM1")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ThankYou_Two
	SAY @23 /* ~Thank you. Here's a pad and paper. I'll take those letters and mailing addresses when you're ready...~*/
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 3)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		StartCutSceneMode()
		StartCutScene("XACSHAM2")
	~
	EXIT
	
	IF ~
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 4)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		StartCutSceneMode()
		StartCutScene("XACSHAM2")
	~
	EXIT
	
END



IF ~~ THEN BEGIN XA_DeliverTwoLetters
	SAY @3 /* ~Baldur's Gate, you say? Fortunately for you, I'm scheduled to make a run to the Sword Coast the morning after next. I can deliver your letters for a small incremental cost.~ */
	
	IF ~
		!StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @4 /* ~How much?~ */
	GOTO XA_HowMuch
	
	IF ~
		StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @4 /* ~How much?~ */
	GOTO XA_HowMuch_Charmed
	
	IF ~
		!Global("XA_HowLong", "LOCALS", 1)
	~ THEN REPLY @7 /* ~How long do you think it will take to deliver our letters?~ */
	DO ~
		SetGlobal("XA_HowLong", "LOCALS", 1)
	~
	GOTO XA_HowLong
	
	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation
END

IF ~~ THEN BEGIN XA_HowLong
	SAY @8 /* ~Normally, around two weeks...~ */
	
	= @15 /* ~But, with the roads as dangerous as they are, we may have to take a detour or two. Still it shouldn't add significant travel time.~  */
	
	IF ~
		!StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @17 /* ~So, how much will this cost us?~ */
	GOTO XA_HowMuch
	
	IF ~
		StateCheck(Myself, STATE_CHARMED)
	~ THEN REPLY @17 /* ~So, how much will this cost us?~ */
	GOTO XA_HowMuch_Charmed
	
	IF ~
		!Global("XA_CourierDangerous", "LOCALS", 1)
	~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	DO ~
		SetGlobal("XA_CourierDangerous", "LOCALS", 1)
	~
	GOTO XA_DangerousOccupation
END



CHAIN XAHAMZA XA_HamzaRasaadChain2
	@39 /* ~How long has it been?~ */
	
	== RASAA25J
	@45 /* ~Too long, old friend. How fares your courier business? And your wife?~*/
	
	== XAHAMZA
	@46 /* ~They are well, thankfully. And you? What brings you to Amkethran?~*/
	
	== RASAA25J
	@47 /* ~We are in pursuit of an organization known as the Five. They've been wreaking havoc on the countryside — one of their number was even responsible for the destruction of Saradush, but he has since been eliminated.~*/
	
	== XAHAMZA
	@48 /* ~I see... I wish I could be of some assistance. If you ever need a message delivered, come and see me, my friend.~*/
	
	== RASAA25J
	@49 /* ~Thank you, Hamza.~*/
EXIT

CHAIN XAHAMZA XA_HamzaRasaadChain
	@39 /* ~How long has it been?~ */

	== RASAA25J
	@40 /* ~Too long, Hamza. Listen — my friends and I are in need of your services. We urgently need to send a letter to Baldur's Gate.~ */
	
	== XACOR25J
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@44 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~ */
	
	== RASAA25J
	@42 /* ~Can you help us?~*/
	
	== XAHAMZA
	@43 /*  ~It would be my pleasure. Here's a pad and paper. I'll take those letters and mailing addresses when you're ready...~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XACSHAM2")
	~
EXIT

CHAIN RASAA25J XA_HamzaRasaadChain3
	@51 /* ~Listen, Hamza — my friends and I are in need of your services. We urgently need to send a letter to Baldur's Gate.~ */
	
	== XACOR25J
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@44 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~ */
	
	== RASAA25J
	@42 /* ~Can you help us?~*/
	
	== XAHAMZA
	@43 /*  ~It would be my pleasure. Here's a pad and paper. I'll take those letters and mailing addresses when you're ready...~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
		SetGlobalTimer("XA_HamzaLeaveTimer", "GLOBAL", ONE_DAY)
		SetGlobal("XA_PaidToDeliver", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XACSHAM2")
	~
EXIT
