BEGIN ~XAFLOR~

IF ~
	OR(2)
		!InParty("XACORWIN")
		Global("XA_LC_PurchasedFlowers", "LOCALS", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /*~Hi! If you're looking for a bouquet, you're too late. I just sold my the last one. If you come back later, or tomorrow, I might have one for you.~*/
	
	IF ~~ THEN REPLY @1 /*~Okay, thanks.~*/
	EXIT
	
	IF ~~ THEN REPLY @2 /*~I'm not interested.~*/
	EXIT
END

IF ~
	InParty("XACORWIN")
	GlobalLT("XA_LC_PurchasedFlowers", "LOCALS", 1)
~ THEN BEGIN XA_FlowersForSale
	SAY @3 /*~Hi! Are you looking for a bouquet? I have a beautiful one here that you can have for just five gold.~*/
	
	IF ~
		PartyGoldGT(4)
	~ THEN REPLY @4 /*~(Pay five gold.)~*/
	DO ~
		TakePartyGold(5)
		SetGlobal("XA_LC_PurchasedFlowers", "LOCALS", 1)
	~
	GOTO XA_PayForFlowers
	
	IF ~
		PartyGoldLT(5)
	~ THEN REPLY @6 /*I'm a bit short on gold at the moment.~*/
	EXIT
	
	IF ~~ THEN REPLY @2 /*~I'm not interested.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_PayForFlowers
	SAY @7 /*~Here you go! I hope you have a special someone to give it to!~*/
	
	IF ~~ THEN
	DO ~
		GiveItemCreate("XAFLOWER", Player1, 0, 0, 0)
	~
	EXIT
END