BEGIN ~XAHAMZA~

//{ Dialog NPC-00
IF ~
	Global("XA_HamzaIntro", "LOCALS", 1)
	!Global("XA_WillDeliver", "LOCALS", 1)
~ THEN BEGIN XA_IntroDone
	SAY @
END
//}
//{ Dialog NPC-01
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
END
//}

IF ~~ THEN BEGIN XA_WhoAreYou
	SAY @11 /* ~My name is Hamza. I'm the mail courier for this region. And you are?~*/
	
	IF ~
		!Gabber("XACORWIN")
		Global("XA_NeedCourier", "GLOBAL", 1)
	~ THEN REPLY @12 /* ~I'm <GABBER> ... you offer courier services, yes? We need to have a letter delivered to Baldur's Gate.~ */
	EXTERN XACORWIJ XA_DeliverTwoLetters
	
	IF ~~ THEN REPLY @18 /* ~Mail courier? That's a dangerous occupation these days, isn't it?~ */
	GOTO XA_DangerousOccupation
END

IF ~~ THEN BEGIN XA_DangerousOccupation
	SAY @19 /* ~Only if you're not familiar with the routes. Now, if you've no business to discuss, please leave me to my drink.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_HeardAboutCourier
	SAY @2 /* ~Yes, I'm Hamza. And yes, I do offer courier services.~ */
	
	IF ~
		!Gabber("XACORWIN")
	~
	
	IF ~
		Gabber("XACORWIN")
	~ THEN REPLY @14 /* ~We need to have two letters delivered to Baldur's Gate.~*/
	GOTO XA_DeliverTwoLetters
END

IF ~~ THEN BEGIN XA_DeliverTwoLetters
	SAY @3 /* ~Baldur's Gate, you say? Fortunately for you, I'm scheduled to make a run to the Sword Coast the morning after next. I can deliver your letters for a small incremental cost.~ */
	
	IF ~~ THEN REPLY @4 /* ~How much?~ */
	GOTO 
	
	IF ~
		!Global("XA_HowLong", "LOCALS", 1)
	~ THEN REPLY @7 /* ~How long do you think it will take to deliver our letters?~ */
	DO ~
		SetGlobal("XA_HowLong", "LOCALS", 1)
	~
	GOTO XA_HowLong
END

IF ~~ THEN BEGIN XA_HowLong
	SAY @8 /* ~Normally, around two weeks...~ */
	
	= @15 /* ~But, with the roads as dangerous as they are, we may have to take a detour or two. Still it shouldn't add significant travel time.~  */
	
	IF ~~ THEN REPLY @16 /* ~I see.~*/
	
	IF ~~ THEN REPLY @17 /* ~So, how much will this cost me?~*/
END