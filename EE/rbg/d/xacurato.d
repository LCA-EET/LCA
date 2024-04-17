BEGIN ~XACURATO~

IF ~
	Global("XA_LC_LeaveArea", "LOCALS", 1)
~ THEN BEGIN XA_LeaveArea
	SAY @16 /* ~Now, if you'll excuse me, I must return to my duties. Good day.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~
	Global("XA_LC_CSHOW_TALK", "GLOBAL", 2)
~ THEN BEGIN XA_CSHOW_END
	SAY @14 /* ~Captain, <CHARNAME>, thank you again for taking time out of your day to share your insights with those orphans.~ */
	
	IF ~~ THEN
	GOTO XA_BadBehavior
	
	IF ~
		Global("XA_LC_ScaredChildren", "GLOBAL", 1)
	~ THEN 
	GOTO XA_NotHappy
END

IF ~~ THEN BEGIN XA_BadBehavior
	SAY @17 /* ~Please excuse their poor behavior. With role models like the two of you however, I've no doubt that they will grow up to be productive members of society.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_HOW", "GLOBAL", 1)
	~
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_NotHappy
	SAY @15 /* ~While I strongly disapprove of that little show you put on, I'm sure that the children will be on their best behavior from now on.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_HOW", "GLOBAL", 2)
	~
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_GoodBye
	SAY @16 /* ~Now, if you'll excuse me, I must return to my duties. Good day.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		EscapeArea()
	~
	EXIT
	
	IF ~ //One
		OR(3)
			PartyHasItem("WA2S1H")
			PartyHasItem("WA2PLAT")
			PartyHasItem("WA2SHIEL")
	~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		SetGlobal("XA_LC_ArtifactsReturned", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_OneArtifactRecovered
	
	IF ~ //Two, Combination A
		PartyHasItem("WA2S1H")
		PartyHasItem("WA2PLAT")
	~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		SetGlobal("XA_LC_ArtifactsReturned", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_TwoArtifactsRecovered
	
	IF ~ //Two, Combination B
		PartyHasItem("WA2S1H")
		PartyHasItem("WA2SHIEL")
	~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		SetGlobal("XA_LC_ArtifactsReturned", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_TwoArtifactsRecovered
	
	IF ~ //Two, Combination C
		PartyHasItem("WA2PLAT")
		PartyHasItem("WA2SHIEL")
	~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		SetGlobal("XA_LC_ArtifactsReturned", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_TwoArtifactsRecovered
	
	IF ~ //All Three
		PartyHasItem("WA2S1H")
		PartyHasItem("WA2PLAT")
		PartyHasItem("WA2SHIEL")
	~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveArea", "LOCALS", 1)
		SetGlobal("XA_LC_ArtifactsReturned", "GLOBAL", 3)
	~
	EXTERN XACORWIJ XA_AllArtifactsRecovered
END
IF ~
	Global("XA_LC_MagdaTalk", "GLOBAL", 1)
~ THEN BEGIN XA_Meeting
	SAY @2 /* ~Captain Corwin, welcome home! It's good to see you.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_MagdaTalk", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_MagdaChain
	
END

IF ~~ THEN BEGIN XA_Introduction
	SAY @4 /* ~<CHARNAME>! What an honor it is to meet you!~ */
	
	IF ~~ THEN REPLY @5 /* ~It's good to meet you.~ */
	GOTO XA_Introduction2A
	
	IF ~~ THEN REPLY @6 /* ~You're the curator here?~ */
	GOTO XA_MagdaChain2
END

IF ~~ THEN BEGIN XA_Introduction2A
	SAY @7 /* ~The last time we had such a distinguished guest visit us was Ulruant, and that was more than ten years ago!~ */
	
	IF ~~ THEN REPLY @8 /* ~Ulruant... I haven't heard that name in a while. So, you've been the curator for a long time I take it?~ */
	GOTO XA_MagdaChain2
	
	IF ~~ THEN REPLY @9 /* ~I see... and how long have you been curator here, Magda?~ */
	GOTO XA_MagdaChain2
END

IF ~~ THEN BEGIN XA_AskToTalk
	SAY @10 /* ~What say you?~ */
	
	IF ~~ THEN REPLY @11 /* ~Of course. Lead the way, Curator Magda.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_StartHOWCutscene
	
	IF ~~ THEN REPLY @12 /* ~We're not interested.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_HOW_WhyNot
	
	IF ~
		Alignment(Player1, MASK_GOOD)
	~ THEN REPLY @13 /* ~Orphans hold a special place in my heart. It was only through the grace of my foster father, Gorion, that I've become who I am. I'd be glad to say a few words.~*/
	EXTERN XACORWIJ XA_StartHOWCutscene
END

IF ~
	RandomNum(2,1)
~ THEN BEGIN XA_Greeting1
	SAY @0 /* ~Please, do not touch the exhibits.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(2,2)
~ THEN BEGIN XA_Greeting2
	SAY @1 /* ~Enjoy your time at the Hall of Wonders.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_ArtifactChain_End
	SAY @27 /*~On behalf of the museum and the city, thank you. The preservation of such historical artifacts will inspire generations to come.~*/
	
	IF ~~ THEN REPLY @28  /* ~You're welcome.~*/
	DO ~
		SetGlobal("XA_LC_Journal_Artifacts", "GLOBAL", 1)
	~
	GOTO XA_LeaveArea2
	
	IF ~~ THEN REPLY @29  /* ~I paid a fortune for the acquisition. Is there anything you can offer besides gratitude?~ */
	DO ~
		SetGlobal("XA_LC_Journal_Artifacts", "GLOBAL", 1)
	~
	GOTO XA_WantMore
END

IF ~~ THEN BEGIN XA_WantMore
	SAY @30  /*~(Sigh.)~ */
	=@31 /* ~I'm afraid not. The museum's budget is tightened every year. Give me some time and I'll see what I can do.~*/
	
	IF ~~ THEN REPLY @33  /* ~I'll not take money from the city's coffers if it cannot afford it. Your gratitude is sufficient, Curator Magda.~*/
	GOTO XA_LeaveArea2

	IF ~~ THEN REPLY @32 /* ~Thank you.~*/
	GOTO XA_LeaveArea2
END

IF ~~ THEN BEGIN XA_LeaveArea2
	SAY @34  /* ~If there's nothing else, I must resume my duties. Good day to you.~*/
	
	IF ~~ THEN
	EXIT
END

CHAIN IF ~~ THEN XACORWIJ XA_OneArtifactRecovered
	@20 /*~Before you go, ma'am — while in Amn, we recovered this artifact that once belonged to Balduran. It was reported stolen years ago.~*/
END XACURATO XA_ArtifactChain

CHAIN IF ~~ THEN XACORWIJ XA_TwoArtifactsRecovered
	@21 /*~Before you go, ma'am — while in Amn, we recovered these artifacts that once belonged to Balduran. They were reported stolen years ago.~*/
END XACURATO XA_ArtifactChain

CHAIN IF ~~ THEN XACORWIJ XA_AllArtifactsRecovered
	@22 /*~Before you go, ma'am — while in Amn, we recovered this set of priceless artifacts that once belonged to Balduran. They were reported stolen years ago.~*/
END XACURATO XA_ArtifactChain

CHAIN IF ~~ THEN XACURATO XA_ArtifactChain
	@23 /*~Is that so? Let me see...~*/
	= @24 /* */
	== XACORWIJ
	@25 /* ~I won't bore you with the details. I'll provide a full report to Marshal Nederlok and the Dukes once I get settled.~*/
	== XACURATO
	@26 /* ~I see. It will take some time to set up and secure an appropriate display here in the Hall of Wonders. Until it's ready, please look after what you've returned to us.~ */
END XACURATO XA_ArtifactChain_End