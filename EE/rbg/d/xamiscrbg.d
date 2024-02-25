
//{ MCOOK4
ADD_STATE_TRIGGER xaa384 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
//}

//{ SUTHIE
ADD_STATE_TRIGGER xaa137 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa137 7
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa137 9
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa137
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Intro
		SAY @15 /* ~ 'Ere there, a word wit' you I would have. House rules you be needin' to know. This here be Sanctuary, and Silence be our patron saint. You do anythin' to harm either, an' every thief, assassin, and scoundrel within 1,000 leagues will want ye dead. I dunno the magics that keep this place secure, but 'taint nowhere else where a night-sneak can sleep sound. It's neutral ground, and you leave your fightin' outside. Be on yer best behavior, 'cuz banishment for life is the nicest punishment Silence knows.~ */
		  
		IF ~~ THEN EXIT
	END
END
//}

//{ BART8
EXTEND_BOTTOM xaa183 0 /* OK */
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

EXTEND_BOTTOM xaa183 1 /* OK */
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

APPEND xaa183
	IF ~~ THEN BEGIN XA_Brevlik
		SAY @17 /* ~Does that little runt owe you money too? He hasn't been allowed here in months, and it'll stay that way so long as he doesn't pay his tab.~*/
		
		IF ~~ THEN REPLY @18 /* ~Do you know where he is?~ */
		GOTO XA_Brevlik2
		
		IF ~~ THEN REPLY @19 /* ~I need to find him.~ */
		GOTO XA_Brevlik2
	END
	
	IF ~~ THEN BEGIN XA_Brevlik2
		SAY @20  /* ~Alls I know is he ain't here, got it? Go check one of the other taverns 'round town.~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@21, QUEST)
		~
		EXIT
	END
END
//}

//{ NOBL11
ADD_TRANS_TRIGGER xaa246 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM xaa246 0 /* OK */
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @12 /* ~Tell me what the common folk are talking about these days.~ */ 
	GOTO XAA1
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @13 /* ~What have you heard bandied about the bar lately?~ */ 
	GOTO XAA1
END

APPEND xaa246 
	IF ~~ THEN BEGIN XAA1
		SAY @14 /* ~Aye, remember <CHARNAME>, the so-called hero of Baldur's Gate? The one who was arrested for killing the Duke's daughter? Well, the Dukes are now tellin' everyone now that <PRO_HESHE> was innocent the whole time! What's more, Skie Silvershield is up and about, healthy and lively as ever. Could you believe it? Word on the street is that <PRO_HESHE>'s on <PRO_HISHER> way back to the city as we speak. Good on <PRO_HIMHER>, I s'pose.~ */
		
		IF ~~ THEN 
		DO ~
			EscapeArea()
		~ 
		EXIT
	END
END
//}

//{ SHOP06
EXTEND_BOTTOM xaa349 0
	IF ~
		GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
		Global("XA_WantToGetDoll", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy, 0)
	~ 
	THEN REPLY @0 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
	GOTO M0
END

APPEND xaa349
	IF ~~ THEN BEGIN M0
		SAY @1 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
		IF ~
			PartyGoldGT(2)
		~
		THEN REPLY @2 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
		DO ~
			TakePartyGold(3)
			SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
		~
		GOTO M1
		
		IF ~
			PartyGoldLT(3)
		~
		THEN REPLY @3 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
		GOTO M2
		
		IF ~~ THEN REPLY @4 /* ~No thanks. Another time, perhaps.~ */
		GOTO M3
	END

	IF ~~ THEN BEGIN M1
		SAY @5 /* ~A pleasure doing business with you.~ */
		IF ~~ THEN
		DO ~
			GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
			SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M2
		SAY @6 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN M3
		SAY @4 /* ~No thanks. Another time, perhaps.~ */
		IF ~~ THEN
		EXIT
	END
END
//}

//{ SHOP08
EXTEND_BOTTOM xaa351 0
	IF ~
		GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
		Global("XA_WantToGetDoll", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy, 0)
	~ 
	THEN REPLY @0 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
	GOTO M0
END



APPEND xaa351
	IF ~~ THEN BEGIN M0
		SAY @1 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
		IF ~
			PartyGoldGT(2)
		~
		THEN REPLY @2 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
		DO ~
			TakePartyGold(3)
			SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
		~
		GOTO M1
		
		IF ~
			PartyGoldLT(3)
		~
		THEN REPLY @3 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
		GOTO M2
		
		IF ~~ THEN REPLY @4 /* ~No thanks. Another time, perhaps.~ */
		GOTO M3
	END

	IF ~~ THEN BEGIN M1
		SAY @5 /* ~A pleasure doing business with you.~ */
		IF ~~ THEN
		DO ~
			GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
			SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M2
		SAY @6 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN M3
		SAY @4 /* ~No thanks. Another time, perhaps.~ */
		IF ~~ THEN
		EXIT
	END
END
//}

//{ PROST6
EXTEND_BOTTOM xaa186 0
	IF ~
		GlobalLT("XA_BoughtRohmaDoll", "GLOBAL", 1)
		Global("XA_WantToGetDoll", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy, 0)
	~ 
	THEN REPLY @0 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
	GOTO M0
END

APPEND xaa186
	IF ~~ THEN BEGIN M0
		SAY @1 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
		IF ~
			PartyGoldGT(2)
		~
		THEN REPLY @2 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
		DO ~
			TakePartyGold(3)
			SetGlobal("XA_BoughtRohmaDoll", "GLOBAL", 1)
		~
		GOTO M1
		
		IF ~
			PartyGoldLT(3)
		~
		THEN REPLY @3 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
		GOTO M2
		
		IF ~~ THEN REPLY @4 /* ~No thanks. Another time, perhaps.~ */
		GOTO M3
	END

	IF ~~ THEN BEGIN M1
		SAY @5 /* ~A pleasure doing business with you.~ */
		IF ~~ THEN
		DO ~
			GiveItemCreate("XARDOLL", LastTalkedToBy(Myself),1,0,0)
			SetGlobal("XA_LC_Journal_RohmaGift_1", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M2
		SAY @6 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN M3
		SAY @4 /* ~No thanks. Another time, perhaps.~ */
		IF ~~ THEN
		EXIT
	END
END
//}
		
//{ FLAMGG
ADD_STATE_TRIGGER xaa100 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa100 3
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa100
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		GlobalLT("XA_TollPaid", "LOCALS", 1)
	~ THEN BEGIN XA_RBG
		SAY @7  /* ~Your entrance tax has been paid for by Duke Entar. Welcome back, <CHARNAME>.~*/
		
		IF ~~ THEN REPLY @8  /* ~Thank you.~*/
		DO ~
			SetGlobal("XA_TollPaid", "LOCALS", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @9  /* ~All six gold? How generous of him.~ */
		DO ~
			SetGlobal("XA_TollPaid", "LOCALS", 1)
		~
		EXIT
		
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		Global("XA_TollPaid", "LOCALS", 1)
		TimeOfDay(NIGHT)
	~ THEN BEGIN XA_RBG_Paid
		SAY @10  /* ~Good evening.~*/
		
		IF ~~ THEN EXIT
	END
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		Global("XA_TollPaid", "LOCALS", 1)
		!TimeOfDay(NIGHT)
	~ THEN BEGIN XA_RBG_Paid
		SAY @11  /* ~Good day.~*/
		
		IF ~~ THEN EXIT
	END
END
//}

//{ RBALDU

ADD_STATE_TRIGGER xaa433 5
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa433 14
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~


APPEND xaa433
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA0
		SAY @22 /* ~The Duke's have proclaimed that <CHARNAME> was innocent after all. Word is <PRO_HESHE> may be coming back to the city. That would be something, wouldn't it?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA1
		SAY @23 /* ~Been hearing that there's trouble brewing far to the southeast. Fire giants are said to be laying siege to a city... Saradush, I think it was.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA2
		SAY @24 /* ~Lord Winston did a great job in clearing out the refugees from Caelar's crusade, don't you think?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA3
		SAY @25 /* ~You didn't hear it from me, but there's word that Duke Silvershield's daughter hasn't fully recovered from her ordeal.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA4
		SAY @26 /* ~Word is that <CHARNAME>, the hero of Baldur's Gate, is romantically involved with an officer of the Flaming Fist.~*/
		IF ~~ THEN EXIT
	END
END
//}


//{ HOUSG3
ADD_STATE_TRIGGER xaa389 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa389 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa389
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @27 /* ~<CHARNAME> - Lady Silvershield is expecting you.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @28 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @29 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_DefaultGreeting
		SAY @30 /* ~Behave yourselves - you are in the home of Duke Entar Silvershield.~*/
		
		IF ~~ THEN EXIT
	END
	
	
END
//}


//{ SERVA3
ADD_STATE_TRIGGER xaa390 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER xaa390 11
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa390
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @31 /* ~Oh, it's you, the hero. Entar Silvershield's daughter told us you may be stopping by.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting2
		SAY @32 /* ~I'm just a servant.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,3)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting3
		SAY @33 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @28 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @29 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting1
		SAY @32 /* ~I'm just a servant.~ */
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting2
		SAY @33 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END
END
//}

//{ LOBAR
ADD_STATE_TRIGGER xaa248 7
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER xaa248 0
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER xaa248 8
~
	!IsGabber("XACORWIN")
~

EXTEND_BOTTOM xaa248 0
	IF ~
		IsValidForPartyDialog("XACORWIN")
		!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("XA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinLobar
END

EXTEND_BOTTOM xaa248 8
	IF ~
		IsValidForPartyDialog("XACORWIN")
		!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("XA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinLobar
END

APPEND xaa248
	IF ~
		IsGabber("XACORWIN")
		Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @34 /* ~Hello again, officer. How can the Low Lantern be of assistance?~ */
		
		IF ~~ THEN REPLY @35 /* ~I don't need anything at the moment.~ */
		EXIT
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @36 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @37 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
	
	IF ~
		IsGabber("XACORWIN")
		!Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting
		SAY @38 /*  ~Greetings officer, and welcome to the Low Lantern. Are you here for business, or for pleasure? Perhaps a little of both?~  */
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @36 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @37 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	
	END
	
	IF ~~ THEN BEGIN XA_LobarTianna
		SAY @39 /* ~Ah, yes. She's downstairs. Shall I tell her to expect you?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinLobarTiannaEnd
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation
		SAY @40 /* ~No, I don't know anything about that. All of the workers here are of their own volition, I assure you.~ */
		
		IF ~~ THEN REPLY @41 /*~You wouldn't mind then if I asked the workers here some questions, then?~ */
		GOTO XA_SlaverInvestigation2
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation2
		SAY @42 /* ~Not at all. We run a.. ah.. reputable establishment.~  */
		
		IF ~~ THEN EXIT
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @37 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
END
//}

//{ NOBW9
ADD_STATE_TRIGGER xaa245 6
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_TRANS_TRIGGER xaa245 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
DO 3

EXTEND_BOTTOM xaa245 0
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @43 /* ~We've just returned after a long adventure in Amn.~*/
	GOTO XAA1
END

APPEND xaa245
	IF ~
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @44 /* ~I've heard quite a bit about what's been going on around town. There are rumors that <CHARNAME> will return, now that <PRO_HISHER> innocence has been established.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @45 /* ~Adventurers! So you must be in the business of fighting dreadful beasts and such things. All of you must be so very brave to take up such a profession.~*/
		
		IF ~~ THEN EXIT
	END
END
//}

//{ BART0133
ADD_STATE_TRIGGER xaa250 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa250
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @46 /* ~Business has been slow since the refugees left. If you've need of anything, don't hesitate to ask.~  */
		
		 IF ~~ THEN REPLY @47 /* ~It's been a long journey back from Amn. What do you have to ease our spirits?~ */ 
		 DO ~
			StartStore("xa2023",LastTalkedToBy(Myself))
		~ EXIT
  
		IF ~~ THEN REPLY @48 /* ~I need nothing at the moment, though your offer is appreciated.~ */ 
		EXIT
	END
END
//}

//{ PROST3
ADD_STATE_TRIGGER xaa377 2
~
	InMyArea("YAGO")
~

APPEND xaa377
	IF ~
		!Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA0
		SAY @49 /* ~I haven't seen one of our old regulars, Yago, in some time. I wonder how he's doing?~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA1
		SAY @50 /* ~It's a shame what happened to Yago. Can't say I'm surprised though.~ */
		
		IF ~~ THEN EXIT
	END
END
//}

//{ IRONM4
ADD_STATE_TRIGGER xaa415 7
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM xaa415 0
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN REPLY @51 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
	GOTO XA_Jasper
END

APPEND xaa415
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @52 /* ~Please, all of my girls are available for friends of mine, so long as they behave themselves.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN BEGIN XA_AskAboutJasper
		SAY @53 /* ~Can I help you?~ */
		IF ~~ THEN REPLY @51 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
		GOTO XA_Jasper
	END
	
	IF ~~ THEN BEGIN XA_Jasper
		SAY @54 /* ~Jasper, yes. He and his girls are set up to the southwest. He wears a bright green coat, you can't miss him.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AskedAboutJasper", "LOCALS", 1)
		~
		EXIT
	END
END
//}

//{ PROST8
ADD_STATE_TRIGGER xaa295 3
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa295
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @55 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST7
ADD_STATE_TRIGGER xaa293 6
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa293
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @55 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST6
ADD_STATE_TRIGGER xaa290 2
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa290
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @55 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ PROST5
ADD_STATE_TRIGGER xaa289 4
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa289
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @55 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END
//}

//{ KESHEE
ADD_TRANS_TRIGGER xaa153 2
~
	!Dead("HAISH2")
~

EXTEND_BOTTOM xaa153 2
	IF ~~ THEN REPLY @56 /* ~I found out what happened to Balduran... or his ship and crew, anyway.~*/
	GOTO XAA0
END

APPEND xaa153
	IF ~~ THEN BEGIN XAA0
		SAY @57 /* ~Oh, is that so?~*/
		
		IF ~~ THEN REPLY @58 /* ~Yes. (Tell him the story of the wolfwere island.)~ */
		GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @59 /* ~Har har... you mean to tell me Balduran and his men were transformed into beasts? That's a tall tale if I ever heard one.~*/
		
		IF ~
			PartyHasItem("BOOK87")
		~ THEN REPLY @60 /* ~It's true. Look, here's his logbook.~ */
		GOTO XA_LogBook
		
		IF ~
			!PartyHasItem("BOOK87")
		~ THEN REPLY @61 /* ~It's true.~*/
		GOTO XA_NoEvidence
	END

	IF ~~ THEN BEGIN XA_NoEvidence
		SAY @62 /* ~Oh sure, hah! Thanks for the laughs, friend. You have quite the imagination. I'll let you be on your way.~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LogBook
		SAY @63 /* ~Let me see that... it seems to be... wow.~*/
		
		= @64 /* ~I can hardly believe it! Did you find out what happpened to Balduran himself?~*/
		
		IF ~~ THEN REPLY @65 /* ~Unfortunately no, none of the people on the island could offer any explanation as to what happened to him.~*/
		GOTO XA_LogBook_End
	
	END
	
	IF ~~ THEN BEGIN XA_LogBook_End
		SAY @66 /*  ~Tis a shame, then. Thank you for telling me the story. I'm going to go tell all me buddies how <CHARNAME> and his band of adventurers found what happened to Balduran's ship and crew.~*/
		
		IF ~~ THEN
		DO ~
			ReputationInc(2)
			AddExperienceParty(20000)
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ THIEFM
ADD_STATE_TRIGGER xaa185 3
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa185
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(5,3)
	~ THEN BEGIN XAA3
		SAY @67 /* @133 = ~Never had such easy pickings as those refugees, I tell ya. It's a shame they're all gone.~*/
		IF ~~ THEN EXIT
	END
END
//}

//{ MERLEA
ADD_STATE_TRIGGER xaa315 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
4 5 6

APPEND xaa315
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,1)
	~ THEN BEGIN XAA0
		SAY @68 /* ~Leave me be, I've business to attend to.~ */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
		Global("XA_LC_SavedAldeth","GLOBAL",1)
		!AreaCheck("BG0128")
		!Dead("Aldeth")
	~ THEN BEGIN XAA1
		SAY @69 /* ~If you're seeking Aldeth, he's upstairs.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
	~ THEN BEGIN XAA2
		SAY @70 /* ~Grain futures are lower, with the bandit activity down and all.~  */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,3)
	~ THEN BEGIN XAA3
		SAY @71 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,4)
	~ THEN BEGIN XAA4
		SAY @72 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,5)
	~ THEN BEGIN XAA5
		SAY @73 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
	*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,6)
	~ THEN BEGIN XAA6
		SAY @74 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~
	*/
		IF ~~ THEN
		EXIT
	END
END
//}

//{ BRIELB
ADD_STATE_TRIGGER xaa147 3
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa147
	IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
	~  !InParty("Coran")
		NumTimesTalkedTo(0)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting // from:
		SAY @75 /* ~Oh my! You're the hero of Baldur's Gate - please, I need your help!~*/
		IF ~~ THEN REPLY @76 /* ~We've just returned from a long journey, and we're tired.~ */ 
		GOTO 4
		IF ~~ THEN REPLY @77 /* ~What is it?~ */ 
		GOTO 5
	END
END
//}

//{ FLAMBG
ADD_STATE_TRIGGER xaa326 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
5 6

APPEND xaa326
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~
	THEN BEGIN XAA0
		SAY @82 /* ~Nothing unusual to report, Captain.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_DukesDebriefed", "GLOBAL", 1)
	~
	THEN BEGIN XAA1
		SAY @80 /* ~Good day <CHARNAME>, Captain. If you are looking for Marshal Nederlok, he is in his office upstairs.~ */
		
		IF ~~ THEN EXIT
	END
END
//}

//{ VALYGARJ
APPEND VALYGARJ
	IF ~~ THEN BEGIN XA_WYRM_VALYGAR3
		SAY @83 /* ~It's good to meet you too, sir.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_3
	END
END
//}

//{ THIEFG
ADD_TRANS_TRIGGER xaa169 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM xaa169 0 /* OK */
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN REPLY @84 /* ~Ya, I know the password.~ */
	GOTO XAA0
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_ThiefGuildEntry
	
	IF ~
		Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN GOTO XA_MoveAlong
END

APPEND xaa169
	IF ~~ THEN BEGIN XAA0 // from: 0.1
		SAY @85 /* ~Well, if you know the password, then spill it.~ */
		IF ~~ THEN REPLY @86 /* ~Darkwell.~ */ GOTO XAA1
		IF ~~ THEN REPLY @87 /* ~Ravenscar.~ */ GOTO XAA1
		IF ~~ THEN REPLY @88 /* ~Mask.~ */ GOTO XAA1
		IF ~~ THEN REPLY @89 /* ~Fafhrd.~ */ GOTO XAA2
		IF ~~ THEN REPLY @90 /* ~Bodi.~ */ GOTO XAA1
		IF ~~ THEN REPLY @91 /* ~Mercury.~ */ GOTO XAA1
		IF ~~ THEN REPLY @92 /* ~Shadow.~ */ GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @93 /* ~Wrong answer. Git outta here 'fore ya get hurt. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA2
		SAY @94 /* ~That's the old password, you idiot! Give me the new password!~ */
		
		IF ~
			//!IsGabber(Player1)
			!IsGabber(Player1)
		~ THEN REPLY @95 /* ~I um... don't know the password.~*/
		GOTO 1
		
		IF ~
			//IsGabber(Player1)
			IsGabber(Player1)
		~ THEN REPLY @95 /* ~I um... don't know the password.~*/
		GOTO XAA2A
	END
	
	IF ~~ THEN BEGIN XAA2A
		SAY @96 /* ~(You hear someone yelling from the next room: "Don't you recognize who that is? It's <CHARNAME>, the hero of Baldur's Gate! Let them pass!")~*/
		= @97 /* ~Oh.. right, it's you. Ya all can go in now.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XAA2B
		SAY @98 /* ~(You hear someone yelling from the next room: "It's been a while, Captain! Go ahead, let them through!")~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MoveAlong
		SAY @99 /* ~Oh, it's you again. Well, what're you standin' round for? Go on through!~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ FATMBA
ADD_STATE_TRIGGER xaa132 4
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa132
	IF ~  
		RandomNum(4,4)
	~ THEN BEGIN XAA0 // from:
		SAY @100 /* ~You know, I had a fall the other day. No one laughed, but the ground was cracking up.~ */
		IF ~~ THEN 
		EXIT
	END
END
//}

//{ MICK
ADD_STATE_TRIGGER xaa134 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND xaa134
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @101 /* ~Speedy delivery, speedy delivery coming through. Must inform the Grand Dukes that <CHARNAME> and <PRO_HISHER> companions have arrived. Speedy delivery, coming through!~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ OGRELEAD
ADD_STATE_TRIGGER OGRELEAD 0
~
	GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND OGRELEAD
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @102 /* ~Little pink ones, you shall all die. The Five have offered 25,000 gold for the head of <CHARNAME>, and we shall have it.~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
END
//}


//{ VICONIJ
APPEND VICONIJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @103 /* ~No. I already know what is in store for me, and there is nothing I can do to escape it.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ViconiaAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
END
//}

//{ ANOMENJ
APPEND ANOMENJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @104 /* ~No. Let us not waste any of our time and money on this charlatan.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AnomenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	
END
//}

//{ JAHEIRA
APPEND JAHEIRAJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @105 /* ~No. To know the future is unnatural and risks upsetting the balance.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_JaheiraAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
END
//}

//{ IMOEN2J
APPEND IMOEN2J
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @106 /* ~Thanks, but no. Knowing my future won't change it, and it will take away all of the surprise.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ImoenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
END
//}

//{ NALIAJ

APPEND NALIAJ
	
	IF ~~ THEN BEGIN XA_RefuseMeatballs
		SAY @107 /* ~I'll not take part in such decadance while there are poor people starving not 50 paces from this estate.~ */
		
		IF ~~ THEN EXTERN XACOOK XA_NaliaRefused
	END
	
END
//}

//{ Chains
CHAIN
	IF ~~ THEN VALYGARJ XA_AskDiviner
		@108 /* ~Yes. If I had children, would my family's curse be passed to them?~ */
		
		== XADIVINE
		@109 /* ~You are not cursed. If you are referring to your blood's affinity for the magical arts, then yes, your children will possess the gift. That gift, that talent, can be nurtured or stifled. Support it and watch it blossom, or repress it and watch it wither and die.~ */
		
		== VALYGARJ
		@110 /* ~So, what you are saying is that it's my choice.~*/
		
		== XADIVINE
		@111 /* ~Yes.~*/
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN XACORWIJ XA_AskDiviner
		@112 /* ~Yes. Will my daugher understand why I need to be away from home so much?~ */
		
		== XADIVINE
		@113 /* ~Your daughter already understands the reasons for your sacrifice. She is wiser than you give her credit for. She is as proud of you as you are of her.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN AERIEJ XA_AskDiviner
		@114 /* ~Yes - Is my m-mother still alive?~ */
		
		== XADIVINE
		@115 /* ~Yes, and you will see her again.~ */
		
		== AERIEJ
		@116 /* ~Oh, I hope so... thank you.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN NALIAJ XA_AskDiviner
		@117 /* ~To this fraudster? No. How many poor people has this soothsayer swindled with his lies?~ */
		DO ~
			SetGlobal("XA_NaliaAskedDiviner", "GLOBAL", 1)
		~
		== XADIVINE
		@118 /* ~The only fraudster here is you, young lady.~ */
		
		== NALIAJ
		@119 /* ~I beg your pardon?~ */
		
		== XADIVINE
		@120 /* ~Continue with your virtue signaling if it makes you feel better. Just know that it does nothing to improve the situation of those you claim to care about.~ */
END XADIVINE XA_AlreadyAsked
//}