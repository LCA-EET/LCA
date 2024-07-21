BEGIN ~XAFERGUS~

IF ~
	IsGabber("XACORWIN")
	RandomNum(3,1)
~ THEN BEGIN XA_CorwinGreeting1
	SAY @12 /* ~Welcome back, Captain.~ */
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(3,2)
~ THEN BEGIN XA_CorwinGreeting2
	SAY @13 /* ~Nothing unusual to report, ma'am.~ */
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(3,3)
~ THEN BEGIN XA_CorwinGreeting3
	SAY @14 /* ~Glad to have you back, Captain.~*/
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_LC_FergusMarried", "GLOBAL", 1)
	Global("XA_LC_FergusRing", "GLOBAL", 1)
	!IsGabber(Player1)
~ THEN BEGIN XA_FergusCharname
	SAY @10 /* ~Is <CHARNAME> with you? I'd like to speak with <PRO_HIMHER>, if <PRO_HESHE>'s available.~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_FergusRing", "GLOBAL", 1)
	IsGabber(Player1)
	!Global("XA_LC_FergusMarried", "GLOBAL", 1)
~ THEN BEGIN XA_FergusMarried
	SAY @0 /* <CHARNAME>! It's good to see you again!~*/
	
	IF ~~ THEN REPLY @1 /* ~Hello... sorry, your name?~ */
	GOTO XA_FergusMarriedA
	
	IF ~~ THEN REPLY @2 /* ~Fergus... right?~ */
	GOTO XA_FergusMarriedB
END

IF ~
	//Global("XA_LC_FergusMarried", "GLOBAL", 1)
	RandomNum(2,1)
~ THEN BEGIN XAA0
	SAY @7 /* ~I can't wait for this shift to end, so I can see my lady again.~ */
	IF ~~ THEN EXIT
END

IF ~
	//Global("XA_LC_FergusMarried", "GLOBAL", 1)
	RandomNum(2,2)
~ THEN BEGIN XAA1
	SAY @16 /* ~If you're looking for Marshal Nederlok, he is in his office upstairs.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_FergusMarriedA
	SAY @5 /* ~It's me, Fergus! I wanted to thank you again. My wife loved the angel skin ring, and we're expecting our first baby in a few months' time.~*/
	
	IF ~~ THEN REPLY @4 /* ~Oh, that's great news. Congratulations to you and your wife!~ */
	GOTO XA_FergusMarriedC
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @17 /*~Glad to hear. Have you decided on a name for the baby?~*/
	GOTO XA_BabyNameBoy
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @17 /*~Glad to hear. Have you decided on a name for the baby?~*/
	GOTO XA_BabyNameGirl
END

IF ~~ THEN BEGIN XA_FergusMarriedB
	SAY @3 /* ~Yes, you remembered! I wanted to thank you again. My wife loved the angel skin ring, and we're expecting our first baby in a few months' time.~ */
	
	COPY_TRANS XAFERGUS XA_FergusMarriedA
END

IF ~~ THEN BEGIN XA_FergusMarriedC
	SAY @9 /* ~Thank you. When they said you'd killed Duke Entar's daugter, I knew it couldn't be true. I'm glad you were able to prove your innocence. Take care, now.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@15, INFO)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_FergusMarried", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_BabyNameBoy
	SAY @18 /*~Not yet, but we've narrowed it down to five or six choices... if it's a boy, we may name him <CHARNAME>.~*/
	
	IF ~~ THEN REPLY @20 /*~I'm honored. Good luck with the baby.~*/
	GOTO XA_FergusMarriedC
END

IF ~~ THEN BEGIN XA_BabyNameGirl
	SAY @19 /*~Not yet, but we've narrowed it down to five or six choices... if it's a girl, we may name her <CHARNAME>.~*/
	
	COPY_TRANS XAFERGUS XA_BabyNameBoy
END