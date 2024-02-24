BEGIN ~XABRIELB~

IF ~
	!Global("XA_BrielGreeting", "GLOBAL", 1)
~ THEN BEGIN 0
	SAY @0 /* ~Oh, <CHARNAME>, it's you!~ */
	
	IF ~~ THEN REPLY @1 /* ~Yes..?~ */
	DO ~
		SetGlobal("XA_BrielGreeting", "GLOBAL", 1)
	~
	GOTO 1 //OK
	
	IF ~~ THEN REPLY @2 /* ~Who else would I be?~ */
	DO ~
		SetGlobal("XA_BrielGreeting", "GLOBAL", 1)
	~
	GOTO 1 //OK
	
	IF ~~ THEN REPLY @3 /* ~Ugh, what is it?~ */
	DO ~
		SetGlobal("XA_BrielGreeting", "GLOBAL", 1)
	~
	GOTO 1 //OK
END

IF ~~ THEN BEGIN 1
	SAY @4 /* ~You don't remember me, do you? You helped break the curse that Yago placed on my daughter.~ */
	
	IF ~~ THEN REPLY @5 /* ~Oh, yes! Brielbara, right? How is your child?~ */
	GOTO 2 //OK
END

IF ~~ THEN BEGIN 2
	SAY @6 /* ~Alive and well, thanks to you.~ */
	
	= @7 /* ~I heard that you were returning to the city. I knew you didn't commit those horrible crimes you were accused of.~ */
	
	IF ~~ THEN
	GOTO XA_END //OK
	
	IF ~
		Global("XA_LC_BrielbaraCoran", "GLOBAL", 1)
	~ THEN GOTO 3 //OK
END

IF ~~ THEN BEGIN 3
	SAY @8 /* ~I don't see Coran with you. Were you separated?~ */
	
	IF ~
		Global("CoranJob","GLOBAL",0)
		Dead("Coran")
	~ THEN REPLY @9 /* ~Brielbara... I'm sorry to inform you that Coran has perished.~*/
	GOTO XA_CoranDead
	
	IF ~
		Global("CoranJob","GLOBAL",0)
		!Dead("Coran")
	~ THEN REPLY @22 /* ~We parted ways shortly before I departed for Dragonspear. I haven't seen him since.~*/
	GOTO XA_HaventSeenCoran
	
	IF ~
		GlobalGT("CoranJob","GLOBAL",0)
		Dead("c6coran")
	~ THEN REPLY @9 /* ~Brielbara... I'm sorry to inform you that Coran has perished.~*/
	GOTO XA_CoranDead //OK
	
	IF ~
		GlobalGT("CoranJob","GLOBAL",0)
		!Dead("c6coran")
	~ THEN REPLY @16 /* ~(Explain the story of Coran, Safana and the wolfweres.)~ */
	GOTO XA_CoranWolfweres	
END

IF ~~ THEN BEGIN XA_HaventSeenCoran
	SAY @18 /* ~He's probably found another lover, or ten, by now.~*/
	
	= @23 /* ~I sometimes wonder what it would have been like... you know, the three of us sharing our lives together.~*/
	
	IF ~~ THEN REPLY @24 /* ~Don't lose hope. He may wisen up someday and come back to you, and be a father to his daughter.~ */
	GOTO XA_Show_Kindness
	
	IF ~~ THEN REPLY @25 /*  ~You and your daughter are probably better off without him.~ */
	GOTO XA_END3
END

IF ~~ THEN BEGIN XA_END3
	SAY @19 /* ~Probably. I guess parenthood just isn't for everyone.~*/
	= @26 /* ~Well, it was good to see you again <CHARNAME>. I need to get going. Take care.~*/
	
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext1300w")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CoranWolfweres
	SAY @10 /* ~The fool! The three of us could have had a life together...~ */
	
	= @17 /* ~Instead he got mixed up with that viper of a woman and nearly got himself killed.~ */
	
	= @18 /* ~He's probably found another lover, or ten, by now.~ */
	
	IF ~~ THEN REPLY @19 /* ~Probably. I guess parenthood isn't for everyone.~ */
	GOTO XA_END2
	
	IF ~~ THEN REPLY @20 /* ~Don't lose hope. He may wisen up someday and come back to you, and be a father to his daughter.~ */
	GOTO XA_Show_Kindness
END

IF ~~ THEN BEGIN XA_Show_Kindness
	SAY @21 /* ~Not likely, but thank you for the kind words.~ */
	IF ~~ THEN
	DO ~
		ReputationInc(1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_END
END

IF ~~ THEN BEGIN XA_CoranDead
	SAY @13 /* ~W-what? How? No - I don't want to know.~ */
	
	= @10 /* ~The fool! The three of us could have had a life together...~ */
	
	IF ~~ THEN REPLY @11 /* ~As awful as it is to say, you're probably better off without him.~ */
	GOTO XA_END2
	
	IF ~~ THEN REPLY @12 /* ~Treasure the good times that you had with him.~ */
	GOTO XA_END2
END

IF ~~ THEN BEGIN XA_END2
	SAY @15 /* ~I'd ... I'd like to be alone now. Take care, it was good to see you again.~ */
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext1300w")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_END
	SAY @14 /* ~Well, it was good to see you again, <CHARNAME>. The city needs more people like you. Take care.~ */
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext1300w")
	~
	EXIT
END