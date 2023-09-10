BEGIN ~XAALDETH~

IF ~
	//!IsGabber("XACORWIN")
	//!InPartySlot(LastTalkedToBy, 0)
	!IsGabber("XACORWIN")
	!IsGabber(Player1)
~ THEN BEGIN XA_DefaultGreeting
	SAY @32 /* ~Welcome to the Merchant's League.~*/
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	//IsGabber("XACORWIN")
~ THEN BEGIN XA_CorwinGreeting
	SAY @30 /* ~Welcome to the Merchant's League, Captain. Please, make yourself comfortable.~ */

	IF ~~ THEN EXIT
	
	IF ~
		!Global("XA_AldethGreeting", "LOCALS", 1)
	~ THEN GOTO XA_WantToSpeakToPlayer
END

IF ~~ THEN XA_WantToSpeakToPlayer
	SAY @31 /* ~If <CHARNAME>'s available, I'd like to speak with <PRO_HIMHER> at <PRO_HISHER> earliest convenience.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_AldethGreeting", "LOCALS", 1)
	//InPartySlot(LastTalkedToBy, 0)
	IsGabber(Player1)
~ THEN BEGIN XA_Greeting
	SAY @0 /* ~<CHARNAME>, you've returned! It's wonderful to see you again.~ */
	
	= @4 /* ~It pleased me greatly when the Dukes proclaimed that you were innocent of the heinous crime for which you were accused.~ */
	
	IF ~~ THEN REPLY @1 /* ~Aldeth, it's good to see you. I see you've gotten things back on track in the Merchant's League.~ */
	DO ~
		SetGlobal("XA_AldethGreeting", "LOCALS", 1)
	~
	GOTO XA_1 //OK
END

IF ~
	Global("XA_AldethGreeting", "LOCALS", 1)
	//InPartySlot(LastTalkedToBy, 0)
	IsGabber(Player1)
~ THEN BEGIN XA_SecondGreeting
	SAY @25 /* ~Ah, you've returned. Please, stay for as long as you like. The Merchant's League is at your disposal.~*/
	
	IF ~~ THEN 
	EXIT
	
	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_AskedAldethAboutWinston", "LOCALS", 1)
		!Global("XA_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~Aldeth, I'm investigating reports of slaver activity in Baldur's Gate. Do you know anything of Winston Ventures?~ */
	GOTO XA_AldethSlavers //OK
END

IF ~~ THEN BEGIN XA_AldethSlavers
	SAY @27 /* ~Only that they moved in to the old Iron Throne tower shortly after the influx of refugees. I'm told that they were instrumental in solving the refugee crisis. Beyond that, nothing.~*/
	
	IF ~~ THEN REPLY @28 /* ~Thank you.~*/
	DO ~
		SetGlobal("XA_AskedAldethAboutWinston", "LOCALS", 1)
	~
	EXIT
END


IF ~~ THEN BEGIN XA_1
	SAY @2 /* ~Well, the murder of Zorl and Irlentree at the hands of the dopplegangers left me as the sole prioprietor. Though I miss my former colleagues greatly, sole proprietorship certainly streamlines many aspects of the business.~  */
	
	IF ~~ THEN
	GOTO XA_END //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
		!Dead("halbaz")
		!NumInPartyGT(1)
	~ THEN GOTO XA_CorwinRomance //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
		!Dead("halbaz")
		NumInPartyGT(1)
	~ THEN GOTO XA_CorwinRomanceGT1 //OK
END

IF ~~ THEN BEGIN XA_END
	SAY @24 /* ~Please, stay for as long as you like. The Merchant's League is at your disposal.~ */

	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinRomanceGT1
	SAY @7 /* ~(He pulls you aside, so that your companions cannot hear your conversation.)~*/
	
	IF ~~ THEN
	GOTO XA_CorwinRomance
END

IF ~~ THEN BEGIN XA_CorwinRomance
	SAY @5 /* ~When I learned that you'd be returning to the city, I had a special gift prepared for you.~*/
	
	IF ~~ THEN REPLY @6 /* ~A gift? For me?~*/
	GOTO XA_CorwinRomance2 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance2
	SAY @8 /* ~Yes - well, not exactly. You see, I have contacts in Athkatla, and they informed me that you and the Captain had become romantically involved.~*/
	
	IF ~~ THEN REPLY @9 /* ~Word travels fast, it seems.~ */
	GOTO XA_CorwinRomance3 //OK
	
	IF ~~ THEN REPLY @10 /* ~I wasn't aware that our love life was of interest to anyone else.~ */
	GOTO XA_CorwinRomance3 //OK
	
	IF ~~ THEN REPLY @11 /* ~We thought we'd been more discrete.~ */
	GOTO XA_CorwinRomance3 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance3
	SAY @12 /* ~(He pulls a small box from his pocket and hands it to you.)~ */
	= @13 /* ~Go ahead, open it.~ */
	= @14 /* ~(You open the box. Inside is a dazzling, diamond-studded ring made of yellow, white and pink gold woven together.)~ */
	
	IF ~~ THEN REPLY @15 /* ~This is beautiful. It must've cost a fortune - I can't accept this!~ */
	DO ~
		SetGlobal("XA_RingGiftAldeth", "GLOBAL", 1)
	~
	GOTO XA_CorwinRomance4 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance4
	SAY @16 /* ~You can and you will. I owe both my life and my business to you, friend.~  */
	
	IF ~~ THEN 
	GOTO XA_CorwinRomance4_END
	
	IF ~
		Global("XA_AldethFF", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinRomance4A
END

IF ~~ THEN BEGIN XA_CorwinRomance4A
	SAY @34 /* ~And, truth be told, I owe you an apology. I turned you over to the Flaming Fist when you came to me for aid.~ */
	
	IF ~~ THEN REPLY @35 /*  ~Apology accepted.~ */
	GOTO XA_CorwinRomance4_END
	
	IF ~~ THEN REPLY @36 /*  ~This doesn't quite make up for your betrayal.~ */
	GOTO XA_CorwinRomance4B
END

IF ~~ THEN BEGIN XA_CorwinRomance4B
	SAY @37 /* ~Then let this be a first step toward making amends.~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinRomance4_END
END

IF ~~ THEN BEGIN XA_CorwinRomance4_END
	SAY @33 /* ~She'll love it. Plus, the metal will take well to enchantment, so I'm told. You may want to pay a visit to Halbazzer's shop if you have the time.~   */

	IF ~~ THEN REPLY @22 /* ~But what if it doesn't fit her?~*/
	GOTO XA_CorwinRomance5 //OK
	
	IF ~~ THEN REPLY @17 /* ~Thank you, Aldeth.~ */
	GOTO XA_CorwinRomance6 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance5
	SAY @23 /* ~It will. It was crafted specifically for her.~*/
	IF ~~ THEN REPLY @17 /* ~Thank you, Aldeth.~ */
	DO ~
		AddJournalEntry(@29, INFO)
	~
	GOTO XA_CorwinRomance6 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance6
	SAY @18 /* ~Just one favor, if I may?~*/
	
	IF ~~ THEN REPLY @19 /* ~What is it?~ */
	GOTO XA_CorwinRomance7 //OK
END

IF ~~ THEN BEGIN XA_CorwinRomance7
	SAY @20 /* ~When the time comes, be sure to send me a wedding invitation!~*/
	IF ~~ THEN REPLY @21 /* ~Hah hah, of course. Take care, Aldeth.~ */
	EXIT
END