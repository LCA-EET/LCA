BEGIN ~XAELF01~

IF ~
	OR(2)
		Global("XA_LodobDead", "GLOBAL", 1)
		Global("XA_ElfSpirit", "GLOBAL", 1)
~ THEN BEGIN XA_LodobDead
	SAY @0 /*~Thank you for releasing us from that prison.~ */
	
	IF ~~ THEN REPLY @1 /* ~How long were you trapped inside?~*/
	DO ~
		SetGlobal("XA_LodobDead", "GLOBAL", 2)
		SetGlobal("XA_ElfSpirit", "GLOBAL", 2)
	~
	GOTO XA_LodobDead2A
	
	IF ~
		Global("XA_LodobDead", "GLOBAL", 1)
	~ THEN REPLY @2 /* ~It is I who should thank you for helping dispatch Lodob.~*/
	DO ~
		SetGlobal("XA_LodobDead", "GLOBAL", 2)
		SetGlobal("XA_ElfSpirit", "GLOBAL", 2)
	~
	GOTO XA_LodobDead2B
END

IF ~~ THEN BEGIN XA_LodobDead2A
	SAY @3  /* ~I don't know. I can barely remember life before my imprisonment at the hands of Joneleth...~ */
	
	IF ~~ THEN 
	GOTO XA_LodobDead3

END

IF ~~ THEN BEGIN XA_LodobDead2B
	SAY @5  /* ~I don't know. I can barely remember life before my imprisonment at the hands of Joneleth...~ */
	
	IF ~~ THEN 
	GOTO XA_LodobDead3

END

IF ~~ THEN BEGIN XA_LodobDead3
	SAY @6 /*  ~Speaking of Joneleth... I take it he is dead?~ */
	
	IF ~
		Alignment(Player1, MASK_EVIL)
	~ THEN REPLY @7 /* ~He is.~ */
	GOTO XA_LodobDead4A
	
	IF ~
		!Alignment(Player1, MASK_EVIL)
	~ THEN REPLY @7 /* ~He is.~ */
	GOTO XA_LodobDead4
	
	IF ~
		!Alignment(Player1, MASK_EVIL)
	~ THEN REPLY @13 /* ~I knew him as Irenicus. He tried to steal my soul, and use it's power along with the Tree of Life to become a god. With the help of Queen Elessime, we were able to destroy him.~*/
	GOTO XA_LodobDead4
END

IF ~~ THEN BEGIN XA_LodobDead4A
	SAY @14 /* ~I... I can hear my ancestors calling from the rift. I must go to them... Farewell.~ */
	
	IF ~~ THEN
	DO ~
		AddExperienceParty(50000)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LodobDead4
	SAY @8 /* ~Good... Do you... do you know of one called 'Skie'? She was imprisoned with us for a time...~ */
	
	IF ~~ THEN REPLY @9 /* ~She's alive and well. Her soul was restored to her body.~ */
	GOTO XA_LodobDead5
	
	IF ~~ THEN REPLY @15  /* ~I do. What concern is she of yours?~ */
	GOTO XA_LodobDead5A
END

IF ~~ THEN BEGIN XA_LodobDead5A
	SAY @16  /* ~Of the many imprisoned souls, hers was perhaps the only one that hadn't given up hope. She kept saying that one called <CHARNAME> would rescue us. Are you <PRO_HIMHER>? */
	
	IF ~~ THEN REPLY @11  /*~I am.~ */
	GOTO XA_LodobDead6
END

IF ~~ THEN BEGIN XA_LodobDead5
	SAY @10  /* ~I'm glad... of the many imprisoned souls, hers was perhaps the only one that hadn't given up hope. She kept saying that one called <CHARNAME> would rescue us. Are you <PRO_HIMHER>?~ */
	
	IF ~~ THEN REPLY @11  /*~I am.~ */
	GOTO XA_LodobDead6
END

IF ~~ THEN BEGIN XA_LodobDead6
	SAY @12  /* ~Then I am honored to have met you... I... I can hear my ancestors calling from the rift. I must go to them... Farewell, <CHARNAME>.~ */
	
	IF ~~ THEN
	DO ~
		AddExperienceParty(50000)
	~
	EXIT
END