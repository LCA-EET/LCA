BEGIN XABOOK

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
	~
	GOTO XA_QuestStarted
	
	IF ~~ THEN REPLY @26 /*~I'm not interested. Good luck with your search.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_QuestStarted
	SAY @25 /*~Thank you. Remember, through scrying my familiar confirmed that the missing volumes are scattered across the city's nine districts. Bring them to me once you've found them.~*/
	
	IF ~~ THEN EXIT
END