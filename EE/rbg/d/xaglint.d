BEGIN ~XAGLINT~

IF ~
	!IsGabber(Player1)
	AreaCheck("xaa145") // ar1300
~
THEN BEGIN XA_TalkToPlayer
	SAY @28  /* ~Don't mind me. I'm just waiting for someone.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~
	IsGabber(Player1)
	GlobalLT("XA_LC_TalkedToGlint", "Global", 1)
	AreaCheck("xaa145") // ar1300
~
THEN BEGIN XA_Greeting
	SAY @0  /* ~<CHARNAME>! Long time no see, my friend!~ */
	
	IF ~
		!Dead("GLINT")
	~ THEN REPLY @1 /* ~Glint! What're you doing here?~*/
	DO ~
		SetGlobal("XA_LC_TalkedToGlint", "Global", 1)
	~
	GOTO XA_WhatAreYouDoingHere
	
	IF ~
		!Dead("GLINT")
	~ THEN REPLY @2 /* ~Who're you?~*/
	DO ~
		SetGlobal("XA_LC_TalkedToGlint", "Global", 1)
	~
	GOTO XA_WhoAreYou
	
	IF ~
		Dead("GLINT")
	~ THEN REPLY @29 /*~It can't be... you died, during the Dragonspear campaign!~*/
	DO ~
		SetGlobal("XA_LC_TalkedToGlint", "Global", 1)
	~
	GOTO XA_YouDied
END

IF ~~ THEN BEGIN XA_YouDied
	SAY @30  /* ~The rumors of my death were greatly exaggerated... well, not really. The Flaming Fist healers patched me up, good as new!~*/
	
	IF ~~ THEN REPLY @31 /*~I'm glad. What are you doing here?~ */
	GOTO XA_WhoAreYou
	
	IF ~~ THEN REPLY @32 /* ~Ugh... What are you doing here?~*/
	GOTO XA_WhoAreYou
END

IF ~~ THEN BEGIN XA_WhoAreYou
	SAY @3 /* ~Oh, don't tell me you don't remember. It's me, Glint Gardnerson! Dragonspear campaign, remember?~*/
	
	IF ~~ THEN REPLY @4 /* ~Oh, right. What're you doing here?~*/
	GOTO XA_WhatAreYouDoingHere
	
	IF ~~ THEN REPLY @33 /* ~Yes, forgive me. Dragonspear seems like eons ago. It's good to see you, Glint.~*/
	GOTO XA_WhatAreYouDoingHere
	
	IF ~~ THEN REPLY @34 /* ~Ah yes, the pickpocketing cleric with a heart of gold. That mewling voice of yours jogged my memory.~*/
	GOTO XA_WhatAreYouDoingHere
END

IF ~~ THEN BEGIN XA_WhatAreYouDoingHere
	SAY @5  /*~I heard from a friend who heard from the friend of that friend's cousin's nephew that a certain hero was returning home. Welcome back!~ */
	
	IF ~~ THEN REPLY @6  /* ~Uh... thanks. What have you been up to these past months?~*/
	GOTO XA_ThievesGuild
	
	IF ~~ THEN REPLY @35  /* ~I can scarcely believe that after all that has happened, I've found my way back to the Gate.~*/
	GOTO XA_Machinations
END

IF ~~ THEN BEGIN XA_ThievesGuild
	SAY @37 /*~Oh, not much. Just the usual odds and ends for the local thieves' guild.~*/
	
	IF ~~ THEN
	GOTO XA_Alatos
END

IF ~~ THEN BEGIN XA_Machinations
	SAY @36 /*~Indeed. The Sly One himself would've had a difficult time untangling all of the machinations that resulted in your exile. As for me, I've been busy with some odds and ends for the local thieves' guild.~*/
	
	IF ~~ THEN
	GOTO XA_Alatos
END

IF ~~ THEN BEGIN XA_Alatos
	SAY @8  /* ~Don't look at me like that! A gnome's got to eat, and besides, it's nothing that requires me to get my hands dirty.~*/
	
	IF ~~ THEN 
	GOTO XA_Bye
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_MeetGlint
END

IF ~~ THEN BEGIN XA_Bye
	SAY @7  /* ~Well <CHARNAME>, I know you've got a lot of things to do and people to see, so I'll leave you to it. Let's catch up over a drink or two once you settle in. Take care!~*/
	
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext1300n")
	~
	EXIT
END

IF ~
	Global("XA_LC_ArrivedInUndercity", "GLOBAL", 3)
~ THEN BEGIN XA_GlintUC
	SAY @10 /* Psst. */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_ArrivedInUndercity", "GLOBAL", 4)
	~
	GOTO XA_GlintUCChain
END

IF ~~ THEN BEGIN XA_CanGetRohma
	SAY @19 /* ~I can get to her undetected, but as soon as I try move her they'll see me.~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveGlintRing
END

IF ~~ THEN BEGIN XA_NonDetection
	SAY @20 /* ~They're only watching the front door. They haven't realized that there's an entry through the roof.~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveGlintRing2
END

IF ~~ THEN BEGIN XA_GiveGlintRing3
	SAY @23 /* ~Yes, but I wouldn't be able to move her without them noticing.~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveGlintRing4
END

IF ~~ THEN BEGIN XA_GiveRing
	SAY @22 /* ~That's good! Hold out your hand. I'll take the ring.~ */
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_GlintTakesRing
END

IF ~~ THEN BEGIN XA_GlintTakesRing
	SAY @21 /* ~Got it, Capt - erm, Major.~*/
	
	= @24 /* ~All I need from the two of you then is to create a distraction. I'll lower myself down from the ceiling with this rope, then place the ring on her finger. I'll climb back up afterward.~ */
	
	= @25 /* ~I'd like to stay and fight, but to tell you the truth, that Illasera seems a bit out of my league. The two of you should be able to handle her and her crew just fine.~ */
	
	IF ~~ THEN REPLY @26 /* ~Sounds like a plan.~ */
	GOTO XA_SetUp	
END

IF ~~ THEN BEGIN XA_SetUp
	SAY @27 /* ~I'll go and get set up on the roof. Good luck.~*/
	
	IF ~~ THEN 
	DO ~
		DestroySelf()
	~
	EXIT
END

CHAIN IF ~
	Global("XA_LC_ArrivedInUndercity", "GLOBAL", 3)
~ THEN XAGLINT XA_GlintUCChain
	@11 /* ~Over here.~*/
	== XACORWIJ
	@12 /* ~That voice... Gardnerson!?~*/
	== XAGLINT
	@13 /* ~Yes, it's me. Quiet down.~*/
	== XACORWIJ
	@14 /* ~Glint — but.. how? We can't see you.~*/
	== XAGLINT
	@15 /* ~I'm invisible. I snuck in here as soon as the Thieves' Guild cleared the last of the traps from the maze. I heard what happened, and I want to help.~*/
	=@16 /* ~~Your daughter's being held in the temple. She's alive, and appears to be unharmed. They put her into some kind of magical sleep, I think.~*/
	== XACORWIJ
	@18 /* ~How many are in there with her?~ */
	== XAGLINT
	@17 /* ~Six in total. An elf woman, a man with a scar on his neck, and four assassins hiding in the shadows.~*/
END XACORWIJ XA_GlintUCChainEnd