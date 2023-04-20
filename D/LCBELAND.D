// creator  : weidu (version 24900)
// argument : BELAND.DLG
// game     : .
// source   : ./override/BELAND.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~LCBELAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~ 
	Global("BelandEntranceFee","GLOBAL",0)
~ THEN BEGIN 0 // from:
	SAY @0 /* ~Welcome, all, to the Hall of Wonders.~*/
	
	IF ~~ THEN
	GOTO LCA_OneGold
	
	IF ~
		Global("HelpBrevlik","GLOBAL",2)
	~ THEN 
	GOTO LCA_ThreeGold
END

IF ~~ THEN BEGIN LCA_OneGold
	SAY @9 /* ~A mere gold piece secures entry to the most curious collection of machination inspirations on all Abeir-Toril. The craft displayed within is truly a sight to see, and the gold raised goes to needed supplies, that future wonders will be wrought.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO LCA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO LCA_WontPay_1
	
	IF ~
		PartyGoldGT(0)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(1)
	~
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_WontPay_1
	SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~  */
	
	IF ~~ THEN REPLY @4 /* ~I am afraid I cannot pay the suggested donation.~  */
	GOTO LCA_CantPay
	
	IF ~
		PartyGoldGT(0)
	~ THEN REPLY @12 /* ~Fine. It's a mere pittance, after all.~ */
	DO ~
		TakePartyGold(1)
	~
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_WontPay_3
	SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~  */
	
	IF ~~ THEN REPLY @4 /* ~I am afraid I cannot pay the suggested donation.~  */
	GOTO LCA_CantPay
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @12 /* ~Fine. It's a mere pittance, after all.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_ThreeGold
	SAY @10 /*  ~A mere three gold secures entry to the most curious collection of machination inspirations on all Abeir-Toril. The craft displayed within is truly a sight to see, and the gold raised goes to needed supplies, that future wonders will be wrought.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO LCA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO LCA_WontPay_3
	
	IF ~~ THEN REPLY @1 /*~Three gold, you say? The last time I was here, the entrance fee was a single gold piece.~*/
	GOTO LCA_CostIncrease
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_CostIncrease
	SAY @2 /* ~Yes, unfortunately it was necessary to raise the price of admission to pay for additional security. You see, many months ago, a priceless artifact known as the Farseer was stolen from this very Hall.~ */
	
	= @3 /* ~The scoundrel responsible didn't just burglarize this hallowed Hall, but they stole the dreams that such a wondrous device would have inspired, as well.~ */
	
	IF ~~ THEN REPLY @4 /*~I am afraid I cannot pay the suggested donation.~ */
	GOTO LCA_CantPay
	
	IF ~~ THEN REPLY @5 /* ~I'll not pay to enter a building open to the public!~ */
	GOTO LCA_WontPay_3
	
	IF ~~ THEN REPLY @13 /* ~About that... (confess to your crime.)~ */
	GOTO LCA_Confess
	
	IF ~
		PartyGoldGT(2)
	~ THEN REPLY @6 /* ~A mere pittance to pay for a day's entertainment.~ */
	DO ~
		TakePartyGold(3)
	~
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_Confess
	SAY @14 /*  ~Hmph. I see.~*/
	
	= @15 /* ~While I appreciate your honesty, it does little to undo the damage you caused.~ */
	
	IF ~~ THEN REPLY @16 /* ~Is there anything I can do to make amends?~ */
	GOTO LCA_MakeAmends
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @20 /* ~Here's 1000 gold. It's double what I received for stealing the Farseer.~ */
	DO ~
		TakePartyGold(1000)
	~
	GOTO LCA_TookMoney
END

IF ~~ THEN BEGIN LCA_TookMoney
	SAY @21 /* ~The Farseer was a priceless artifact! This money, while appreciated, doesn't begin to undo the damage you've caused!~ */
	
	= @22 /* ~Still... we are grateful for your honesty, and generosity.~ */
	
	IF ~~ THEN
	GOTO LCA_MakeAmends
END

IF ~~ THEN BEGIN LCA_MakeAmends
	SAY @17 /* ~Perhaps... if you could locate and return the Farseer to us, we would be grateful. In lieu of that, some time spent with our security personnel may prove beneficial. Gond is the god of inventiveness, and we could use the knowledge you impart to us to improve our ability to better protect our exhibits.~ */
	
	IF ~~ THEN REPLY @18 /* ~I'll try and locate the Farseer, and return it.~ */
	GOTO LCA_ThankYou
	
	IF ~~ THEN REPLY @19 /* ~I'll show your security folks how I was able to steal the Farseer.~ */
	GOTO LCA_ThankYou
	
END

IF ~~ THEN BEGIN LCA_ThankYou
	SAY @23 /* ~Thank you.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("BelandEntranceFee","GLOBAL",1)
	~
	EXIT
END
IF ~~ THEN BEGIN LCA_CantPay
	SAY @11 /* ~It's but a small matter to momentarily lapse the entry fee, though if ye can soon afford a coin or two in the future, we'd sorely appreciate it.~ */
	
	IF ~~ THEN
	GOTO LCA_PleaseEnter
END

IF ~~ THEN BEGIN LCA_PleaseEnter
	SAY @7 /* ~Please enter, and enjoy the works within.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("BelandEntranceFee","GLOBAL",1)
	~
	EXIT
END
