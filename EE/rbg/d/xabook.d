BEGIN ~XABOOK~

IF ~
	GlobalLT("XA_LC_QuestStarted", "LOCALS", 1)
~ THEN BEGIN XA_Intro
	SAY @9 /*~Ah, adventurers. Hello.~*/
	
	IF ~~ THEN REPLY @10 /*~Who're you?~*/
	GOTO XA_WhoAreYou
	
	IF ~~ THEN REPLY @11 /*~Hello.~*/
	GOTO XA_Hello
END

IF ~~ THEN BEGIN XA_Hello
	SAY @14 /*~Is there something I can help you with?~*/
	
	IF ~~ THEN REPLY @15 /*~No, not really.~*/
	EXIT
	
	IF ~~ THEN REPLY @16 /*~What brings you here?~*/
	GOTO XA_Collection
END

IF ~~ THEN BEGIN XA_WhoAreYou
	SAY @8 /*~My name is Hebert, and I am a collector of rare and exotic books.~*/
	
	IF ~~ THEN REPLY @12 /*~I see. Do you have any items for sale?~*/
	GOTO XA_NeedHelp
	
	IF ~~ THEN REPLY @16 /*~What brings you here?~*/
	GOTO XA_Collection
END

IF ~~ THEN BEGIN XA_NeedHelp
	SAY @13 /*~No, I'm a collector, not a merchant. I do have something to offer you, however, if you can help me with something.~ */
	
	IF ~~ THEN REPLY @19 /*~I'm not interested.~*/
	EXIT
	
	IF ~~ THEN REPLY @20 /*~What do you have in mind?~*/
	GOTO XA_Collection
END

IF ~~ THEN BEGIN XA_Collection
	SAY @4 /*~I'm working to complete my collection of the History of Shadowdale. Though the individual tomes aren't rare, collecting the entire set has proven more difficult than I imagined.~ */
	
	= @23 /*~A friend of mine informed me that several volumes from the set were sold to collectors in the city, though he could not share anything further. Through scrying, my familiar was able to determine that the tomes are scattered through the city, with at least one volume in each district. I do not know their precise locations.~*/
	
	IF ~~ THEN REPLY @17 /*=~Would I be rewarded if I brought you the missing volumes?~*/
	GOTO XA_Reward
	
	IF ~~ THEN REPLY @18 /*~Good luck with your search.~*/
	EXIT
	
	IF ~~ THEN REPLY @21 /*~How many volumes are missing from your collection?~*/
	GOTO XA_MissingVolumes
END

IF ~~ THEN BEGIN XA_MissingVolumes
	SAY @22 /*~I have volumes one through four, and there are thirteen in total.~*/

	IF ~~ THEN REPLY @17 /*=~Would I be rewarded if I brought you the missing volumes?~*/
	GOTO XA_Reward

	IF ~~ THEN REPLY @18 /*~Good luck with your search.~*/
	EXIT

END

IF ~~ THEN BEGIN XA_Reward
	SAY @0 /*~Of course. If you're able to provide the volumes I require, I'll give you an item from my personal collection... a Book of Many Spells.~*/
	
	IF ~~ THEN REPLY @24 /*~We have a deal, then. I'll begin my search immediately.~*/
	DO ~
		SetGlobal("XA_LC_QuestStarted", "LOCALS", 1)
		SetGlobal("XA_LC_Journal_Collector", "GLOBAL", 1)
	~
	GOTO XA_QuestStarted
	
	IF ~~ THEN REPLY @26 /*~I'm not interested. Good luck with your search.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_QuestStarted
	SAY @25 /*~Thank you. Remember, through scrying my familiar confirmed that the missing volumes are scattered across the city's nine districts. Bring them to me once you've found them.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_QuestStarted", "LOCALS", 1)
~ THEN BEGIN XA_Started
	SAY @27 /*~Ah, you've returned. How fares your search?~*/
	
	IF ~~ THEN REPLY @37 /*~Which volumes are still missing?~*/
	GOTO XA_StillMissing

	IF ~
		GlobalLT("XA_LC_ReturnedVolume_5", "LOCALS", 1)
		PartyHasItem("BOOK23")
	~ THEN REPLY @28 /*~Here's volume five.~ */
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_5", "LOCALS", 1)
		TakePartyItem("BOOK23")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_6", "LOCALS", 1)
		PartyHasItem("BOOK24")
	~ THEN REPLY @29 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_6", "LOCALS", 1)
		TakePartyItem("BOOK24")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_7", "LOCALS", 1)
		PartyHasItem("BOOK25")
	~ THEN REPLY @30 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_7", "LOCALS", 1)
		TakePartyItem("BOOK25")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_8", "LOCALS", 1)
		PartyHasItem("BOOK26")
	~ THEN REPLY @31 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_8", "LOCALS", 1)
		TakePartyItem("BOOK26")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_9", "LOCALS", 1)
		PartyHasItem("BOOK27")
	~ THEN REPLY @32 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_9", "LOCALS", 1)
		TakePartyItem("BOOK27")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_10", "LOCALS", 1)
		PartyHasItem("BOOK28")
	~ THEN REPLY @33 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_10", "LOCALS", 1)
		TakePartyItem("BOOK28")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_11", "LOCALS", 1)
		PartyHasItem("BOOK29")
	~ THEN REPLY @34 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_11", "LOCALS", 1)
		TakePartyItem("BOOK29")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_12", "LOCALS", 1)
		PartyHasItem("BOOK30")
	~ THEN REPLY @35 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_12", "LOCALS", 1)
		TakePartyItem("BOOK30")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_13", "LOCALS", 1)
		PartyHasItem("BOOK31")
	~ THEN REPLY @36 /**/
	DO ~
		SetGlobal("XA_LC_ReturnedVolume_13", "LOCALS", 1)
		TakePartyItem("BOOK31")
		AddExperienceParty(10000)
	~
	GOTO XA_FoundBook
	
	IF ~~ THEN REPLY @49 /*~I'll return once I've found one of the books you're seeking.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_FoundBook
	SAY @50 /* ~Let me see...~ */

	= @51 /*~Yes, excellent!~ */
	IF ~
		Global("XA_LC_ReturnedVolume_13", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_12", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_11", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_10", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_9", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_8", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_7", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_6", "LOCALS", 1)
		Global("XA_LC_ReturnedVolume_5", "LOCALS", 1)
	~ THEN
	DO ~
		AddExperienceParty(25000)
		SetGlobal("XA_LC_QuestStarted", "LOCALS", 2)
	~
	GOTO XA_FoundAll
	
	IF ~
		OR(9)
			GlobalLT("XA_LC_ReturnedVolume_13", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_12", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_11", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_10", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_9", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_8", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_7", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_6", "LOCALS", 1)
			GlobalLT("XA_LC_ReturnedVolume_5", "LOCALS", 1)
	~ THEN
	GOTO XA_KeepLooking
END

IF ~~ THEN BEGIN XA_FoundAll
	SAY @6 /* ~The last volume of the set! Marvelous! Here is the book I promised you. May it serve you well.~ */
	
	IF ~~ THEN
	DO ~
		GiveItemCreate( "MISC3A", LastTalkedToBy(Myself), 1, 0, 0)
	~
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_GoodBye
	SAY @7 /* ~Time now to return to my library. Farewell.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Collector", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_KeepLooking
	SAY @48 /*~Please, continue with your search.~ */
	
	COPY_TRANS XABOOK XA_Started
END

IF ~~ THEN BEGIN XA_PleaseContinue
	SAY @48 /*~Please, continue with your search.~ */
	
	IF ~~ THEN EXIT
END

CHAIN IF ~~ THEN XABOOK XA_StillMissing
	@38/* ~Let's see...~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_5", "LOCALS", 1)
	~
	@39/* ~Volume five is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_6", "LOCALS", 1)
	~
	@40/* ~Volume six is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_7", "LOCALS", 1)
	~
	@41/* ~Volume seven is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_8", "LOCALS", 1)
	~
	@42/* ~Volume eight is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_9", "LOCALS", 1)
	~
	@43/* ~Volume nine is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_10", "LOCALS", 1)
	~
	@44/* ~Volume ten is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_11", "LOCALS", 1)
	~
	@45/*~Volume eleven is missing.~ */
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_12", "LOCALS", 1)
	~
	@46/* ~Volume twelve is missing.~*/
	
	== XABOOK
	IF ~
		GlobalLT("XA_LC_ReturnedVolume_13", "LOCALS", 1)
	~
	@47/* ~Volume thirteen is missing.~*/
END XABOOK XA_PleaseContinue