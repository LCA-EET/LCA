BEGIN ~XABELAND~

IF~
	Global("BelandEntranceFee","GLOBAL",2)
~ THEN BEGIN XA_Greet2 
	SAY @7 /* ~Please enter, and enjoy the works within.~ */
	
	IF ~
		PartyHasItem("XAFARSEE")
		!Global("XA_GaveFarseer", "GLOBAL", 1)
	~ THEN REPLY @28 /* ~We've recovered the Farseer. Unfortunately, it's been damaged, but perhaps you can repair it.~ */
	DO ~
		TakePartyItem("XAFARSEE")
		SetGlobal("XA_GaveFarseer", "GLOBAL", 1)
	~
	GOTO XA_TakeFarseer
END

IF ~ 
	Global("BelandEntranceFee","GLOBAL",1)
~ THEN BEGIN 0 // from:
	SAY @0 /* ~Welcome, all, to the Hall of Wonders.~*/
	
	IF ~~ THEN
	GOTO XA_OneGold
	
	IF ~
		GlobalGT("HelpBrevlik","GLOBAL",0)
	~ THEN 
	GOTO XA_ThreeGold
END

IF ~~ THEN BEGIN XA_TakeFarseer
	SAY @29 /* ~Oh, thank you! Yes... I see what you mean.~ */
	
	IF ~~ THEN 
	GOTO XA_TakeFarseer2
	
	IF ~
		IsValidForPartyDialog("XACORWIN")
		Global("XA_BrevlikArrested", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_TakeFarseer
END

IF ~~ THEN BEGIN XA_TakeFarseer2
	SAY @30 /* ~This may be a good project for one of our new adherents. Even if he's unable to repair it, we can use what we learn to possibly create a replica of the device.~ */
	
	= @31 /* ~Thank you again, and go with Gond's blessing.~ */
	
	IF ~~ THEN
	DO ~
		AddExperienceParty(25000)
		AddJournalEntry(@32, QUEST_DONE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OneGold
	SAY @9 /* ~A mere gold piece secures entry to the most curious collection of machination inspirations on all Abeir-Toril. The craft displayed within is truly a sight to see, and the gold raised goes to needed supplies, that future wonders will be wrought.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO XA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO XA_WontPay_1
	
	IF ~
		PartyGoldGT(0)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(1)
	~
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_WontPay_1
	SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~  */
	
	IF ~~ THEN REPLY @4 /* ~I am afraid I cannot pay the suggested donation.~  */
	GOTO XA_CantPay
	
	IF ~
		PartyGoldGT(0)
	~ THEN REPLY @12 /* ~Fine. It's a mere pittance, after all.~ */
	DO ~
		TakePartyGold(1)
	~
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_WontPay_3
	SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~  */
	
	IF ~~ THEN REPLY @4 /* ~I am afraid I cannot pay the suggested donation.~  */
	GOTO XA_CantPay
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @12 /* ~Fine. It's a mere pittance, after all.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_ThreeGold
	SAY @10 /*  ~A mere three gold secures entry to the most curious collection of machination inspirations on all Abeir-Toril. The craft displayed within is truly a sight to see, and the gold raised goes to needed supplies, that future wonders will be wrought.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO XA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO XA_WontPay_3
	
	IF ~
		GlobalGT("HelpBrevlik", "GLOBAL", 0)
		IsValidForPartyDialog(Player1)
	~ THEN REPLY @1 /*~Three gold, you say? The last time I was here, the entrance fee was a single gold piece.~*/
	DO ~
		SetGabber(Player1)
	~
	GOTO XA_CostIncrease
	
	IF ~
		!IsValidForPartyDialog(Player1)
	~ THEN REPLY @1 /*~Three gold, you say? The last time I was here, the entrance fee was a single gold piece.~*/
	GOTO XA_CostIncrease
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_CostIncrease
	SAY @2 /* ~Yes, unfortunately it was necessary to raise the price of admission to pay for additional security. You see, many months ago, a priceless artifact known as the Farseer was stolen from this very Hall.~ */
	
	= @3 /* ~The scoundrel responsible didn't just burglarize this hallowed Hall, but they stole the dreams that such a wondrous device would have inspired, as well.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO XA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO XA_WontPay_3
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		IsGabber(Player1)
	~ THEN REPLY @13 /* ~About that... (confess to your crime.)~ */
	GOTO XA_Confess
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		IsGabber(Player1)
	~ THEN REPLY @24 /*~Perhaps I can help locate the Farseer.~*/
	GOTO XA_HelpFindFarseer_Stolen
	
	IF ~
		!Global("HelpBrevlik", "GLOBAL", 2)
	~ THEN REPLY @24 /*~Perhaps I can help locate the Farseer.~*/
	GOTO XA_HelpFindFarseer
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_Confess
	SAY @14 /*  ~Hmph. I see.~*/
	
	= @15 /* ~While I appreciate your honesty, it does little to undo the damage you caused.~ */
	
	IF ~~ THEN REPLY @16 /* ~Is there anything I can do to make amends?~ */
	GOTO XA_MakeAmends
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @20 /* ~Here's 1000 gold. It's double what I received for stealing the Farseer.~ */
	DO ~
		TakePartyGold(1000)
	~
	GOTO XA_TookMoney
END

IF ~~ THEN BEGIN XA_TookMoney
	SAY @21 /* ~The Farseer was a priceless artifact! This money, while appreciated, doesn't begin to undo the damage you've caused!~ */
	
	= @22 /* ~Still... we are grateful for your honesty, and generosity.~ */
	
	IF ~~ THEN
	GOTO XA_MakeAmends
END

IF ~~ THEN BEGIN XA_HelpFindFarseer
	SAY @25 /* ~I appreciate the gesture, though I doubt you'll be able to find it. We launched our own investigation months ago and were unable to learn anything of its whereabouts.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@26, QUEST)
		SetGlobal("XA_SpawnBrevlik", "GLOBAL", 1)
		SetGlobal("BelandEntranceFee","GLOBAL",2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_HelpFindFarseer_Stolen
	SAY @25 /* ~I appreciate the gesture, though I doubt you'll be able to find it. We launched our own investigation months ago and were unable to learn anything of its whereabouts.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@26, QUEST)
		SetGlobal("XA_SpawnBrevlik", "GLOBAL", 1)
		SetGlobal("BelandEntranceFee","GLOBAL",2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_MakeAmends
	SAY @17 /* ~Perhaps... if you could locate and return the Farseer to us, we would be grateful. We launched our own investigation months ago and were unable to learn anything of its whereabouts.~*/
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@27, QUEST)
		SetGlobal("XA_SpawnBrevlik", "GLOBAL", 1)
		SetGlobal("BelandEntranceFee","GLOBAL",2)
	~
	EXIT
	
END

IF ~~ THEN BEGIN XA_CantPay
	SAY @11 /* ~It's but a small matter to momentarily lapse the entry fee, though if ye can soon afford a coin or two in the future, we'd sorely appreciate it.~ */
	
	IF ~~ THEN
	GOTO XA_PleaseEnter
END

IF ~~ THEN BEGIN XA_PleaseEnter
	SAY @7 /* ~Please enter, and enjoy the works within.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("BelandEntranceFee","GLOBAL",2)
	~
	EXIT
END
