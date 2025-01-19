BEGIN ~XADES~

IF ~
	GlobalLT("XA_LC_Intro", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_Intro
	SAY @0 /*~Excuse me, <PRO_SIRMAAM>. Are you <CHARNAME>?~*/
	
	IF ~~ THEN REPLY @1 /*~I am. Can I help you?~*/
	DO ~
		SetGlobal("XA_LC_Intro", "LOCALS", 1)
	~
	GOTO XA_WhoAreYou
	
	IF ~~ THEN REPLY @2 /*~Who're you?~*/
	DO ~
		SetGlobal("XA_LC_Intro", "LOCALS", 1)
	~
	GOTO XA_WhoAreYou
	
	IF ~~ THEN REPLY @3 /*~Leave me be.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_WhoAreYou
	SAY @4 /*~The name is Belfort. I wanted to thank you. During the Dragonspear campaign, I understand that it was you who helped convince Captain Corwin to spare my life.~*/
	
	IF ~~ THEN REPLY @5 /*~Spare your life? I'm not sure what you're referring to.~*/
	GOTO XA_DontRemember
	
	IF ~~ THEN REPLY @6 /*~Ah, yes... I remember now. She was going over some duty rosters with me, and your situation came up.~*/
	GOTO XA_GiveDarts
END

IF ~~ THEN BEGIN XA_DontRemember
	SAY @7 /*~I'm ashamed to say that I abandoned my post. I was to be hanged at daybreak.~*/
	
	IF ~~ THEN REPLY @8 /*~Oh, yes. The deserter. Don't take this the wrong way, but I'm surprised you survived the campaign.~*/
	GOTO XA_GiveDarts
	
	IF ~~ THEN REPLY @9 /*~Why did you do it? Abandon your post, I mean.~*/
	GOTO XA_WhyAbandon
	
	IF ~~ THEN REPLY @14 /*~Still not ringing any bells.~*/
	GOTO XA_Alzheimers
END

IF ~~ THEN BEGIN XA_WhyAbandon
	SAY @10 /*~It's something I still ask myself. All of the burned out villages and homesteads, the tales of the Crusade's cruelty... I joined the campaign seeking glory, but all I saw was death and destruction. I lost my nerve, and resolved to return home at the first opportunity.~*/
	
	IF ~~ THEN
	GOTO XA_GiveDarts
END

IF ~~ THEN BEGIN XA_Alzheimers
	SAY @15 /*~Really? I was sure you... forgive me. I must have been mistaken. Good day.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_GiveDarts
	SAY @11 /*~I don't know how you managed to convince the Captain to spare me, but I'm glad you did. Here. I won these years ago in a game of knucklebones. I haven't lost a game of darts since.~*/
	
	IF ~~ THEN REPLY @13 /*Thank you.*/
	DO ~
		GiveItemCreate("xadarts", Player1, 0,0,0)
	~
	GOTO XA_Thanks
	
	IF ~~ THEN REPLY @12 /*A set of darts? I guess these could prove useful.~*/
	DO ~
		GiveItemCreate("xadarts", Player1, 0,0,0)
	~
	GOTO XA_Thanks
	
	IF ~~ THEN REPLY @21 /*~Thanks, but keep them. I don't hit the pubs frequently enough to make use of them.~*/
	GOTO XA_Thanks
END

IF ~~ THEN BEGIN XA_Thanks
	SAY @22 /*~If you'll excuse me. I must resume my duties.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XA_IntroCorwin
	SAY @18 /*~Nothing unusual to report, Captain.~*/
	
	IF ~~ THEN	
	EXIT
END

IF ~
	RandomNum(2,1)
~ THEN BEGIN XA_Default
	SAY @17 /*~Duty compels us.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(2,2)
	TimeOfDay(DAY)
~ THEN BEGIN XA_Default
	SAY @20 /*~Good day, <PRO_SIRMAAM>.*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(2,2)
	!TimeOfDay(DAY)
~ THEN BEGIN XA_Default
	SAY @19 /*~Good evening, <PRO_SIRMAAM>.~*/
	
	IF ~~ THEN EXIT
END
