BEGIN ~XAJASPER~

IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XA_Officer
	SAY @36 /* ~I didn't do nothin' officer, honest.~*/
	IF ~~ THEN
	EXIT
	
END

IF ~
	Global("XA_TiannaDebtResolved", "GLOBAL", 1)
~ THEN BEGIN XA_GoAway
	SAY @17 /* ~You again? Get lost!~*/
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_HelpTianna", "GLOBAL", 1)
~ THEN BEGIN XA_Default
	SAY @0 /* ~Whaddya want? Can't you see I'm busy?~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_HelpTianna", "GLOBAL", 1)
	!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN XA_TiannaDebt
	SAY @0 /* ~Whaddya want? Can't you see I'm busy?~ */
	
	IF ~~ THEN REPLY @1 /* ~Are you Jasper?~*/
	GOTO XA_TiannaDebt2 //OK
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
	~ THEN EXTERN XACORWIJ XA_JasperCorwin //OK
	
END

IF ~~ THEN BEGIN XA_TiannaDebt2
	SAY @16 /* ~Yeah I'm Jasper. What, you need a girl for the night?~*/
	
	IF ~~ THEN REPLY @2 /* ~We're here on behalf of Tianna.~*/
	GOTO XA_TiannaDebt3
END

IF ~~ THEN BEGIN XA_TiannaDebt3
	SAY @3 /* ~You're here about her debt, is that it? Look pal, no one forced her to come to me begging for money. I expect to be paid, in full.~*/
	
	IF ~
		!Global("XA_HowMuch", "LOCALS", 1)
	~ THEN REPLY @4 /* ~How much does she owe you?~ */
	DO ~
		SetGlobal("XA_HowMuch", "LOCALS", 1)
	~
	GOTO XA_HowMuch
	
	IF ~
		!Global("XA_CantPay", "LOCALS", 1)
	~ THEN REPLY @18 /* ~What if she can't pay you back?~ */
	DO ~
		SetGlobal("XA_CantPay", "LOCALS", 1)
	~
	GOTO XA_TiannaCantPay
END

IF ~~ THEN BEGIN XA_TiannaCantPay
	SAY @9 /* ~If she can't pay she can come work for me. Instead of waiting tables, she can be part of my menu, if you know what I mean. ~ */
	
	IF ~~ THEN REPLY @10 /* ~That's disgusting.~ */
	GOTO XA_ThatsBusiness //OK
	
END

IF ~~ THEN BEGIN XA_ThatsBusiness
	SAY @11 /* ~Yeah, well, that's the business. Johns 'round here will pay extra for a busty redhead like her.~*/
	
	IF ~
		!Global("XA_HowMuch", "LOCALS", 1)
	~ THEN REPLY @4 /* ~How much does she owe you?~ */
	DO ~
		SetGlobal("XA_HowMuch", "LOCALS", 1)
	~
	GOTO XA_HowMuch
	
	IF ~
		Global("XA_HowMuch", "LOCALS", 1)
		Global("XA_CantPay", "LOCALS", 1)
	~ THEN GOTO XA_WhatNext
END

IF ~~ THEN BEGIN XA_HowMuch
	SAY @5 /* ~1,500 gold.~ */
	
	IF ~~ THEN REPLY @6 /* ~1,500? You sure that it's not 700?~ */
	GOTO XA_Not700 //OK
END

IF ~~ THEN BEGIN XA_Not700
	SAY @7 /* ~700 was the original loan amount. With interest, she owes 1,500.~*/
	
	IF ~~ THEN REPLY @8 /* ~That's ridiculous! What kind of rates do you charge?~ */
	GOTO XA_InterestRate //OK
	
	IF ~
		!Global("XA_CantPay", "LOCALS", 1)
	~ THEN REPLY @18 /* ~What if she can't pay you back?~ */
	DO ~
		SetGlobal("XA_CantPay", "LOCALS", 1)
	~
	GOTO XA_TiannaCantPay
END

IF ~~ THEN BEGIN XA_InterestRate
	SAY @19 /* ~50 points per month. You won't find better, at least in the Undercellar.~  */
	
	IF ~
		Global("XA_HowMuch", "LOCALS", 1)
		Global("XA_CantPay", "LOCALS", 1)
	~ THEN GOTO XA_WhatNext
	
	IF ~
		!Global("XA_CantPay", "LOCALS", 1)
	~ THEN REPLY @18 /* ~What if she can't pay you back?~ */
	DO ~
		SetGlobal("XA_CantPay", "LOCALS", 1)
	~
	GOTO XA_TiannaCantPay //OK
END

IF ~~ THEN BEGIN XA_WhatNext
	SAY @20 /* ~So you gonna pay, or not?~ */
	
	IF ~
		PartyGoldGT(1499)
	~ THEN REPLY @12 /* ~I'll pay the full amount of her debt. Here's 1,500 gold.~ */
	DO ~
		SetGlobal("XA_PaidJasperFull", "GLOBAL", 1)
		TakePartyGold(1500)
	~
	GOTO XA_PayFullAmount
	
	IF ~
		PartyGoldGT(699)
	~ THEN REPLY @13 /* ~I'll pay the original loan amount. Here's 700 gold. I want you to forgive the rest of her balance.~ */
	DO ~
		SetGlobal("XA_PaidJasperPartial", "GLOBAL", 1)
		TakePartyGold(700)
	~
	GOTO XA_PayPartialAmount
	
	IF ~~ THEN REPLY @15 /* ~No. I want you to forgive her debt, in its entirety.~*/
	GOTO XA_WontPayDebt
END

IF ~~ THEN BEGIN XA_WontPayDebt
	SAY @33 /* ~Why in the hells should I do that? She owes me 1,500 gold!~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @24 /* ~Listen to me very carefully. I've just returned from a long and arduous journey, after being exiled from the city, and separated from the woman I love, for a crime I didn't commit. I've fought to hell and back - on more than one occasion, mind you. I've travelled to different planes, and defeated all manner of bandits, wizards, hellspawn, monsters, dragons, and undead. I've been tortured, watched friends die, and even had my immortal soul ripped from my body. I can show you the scars. In all my travels and tribulations, there is one thing that I haven't experienced. Do you know what that is?~ */
	GOTO XA_ThreatenJasper
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @27 /* ~Listen to me very carefully. I've just returned from a long and arduous journey, after being exiled from the city for a crime I didn't commit. I've fought to hell and back - on more than one occasion, mind you. I've travelled to different planes, and defeated all manner of bandits, wizards, hellspawn, monsters, dragons, and undead. I've been tortured, watched close friends die, and even had my immortal soul ripped from my body. I can show you the scars.~*/
	GOTO XA_ThreatenJasper
END

IF ~~ THEN BEGIN XA_PayFullAmount
	SAY @21 /* ~Pleasure doin' business with ya. You can let Tianna know her debt is cleared.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_TiannaDebtResolved", "GLOBAL", 1)
		AddJournalEntry(@35, QUEST)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_PayPartialAmount
	SAY @14 /* ~Why should I forgive anything? She still owes me 800 gold! Tell you what - give me another 300 for an even 1000 and I'll agree to forgive the rest of it.~ */
	
	IF ~
		PartyGoldGT(299)
	~ THEN REPLY @22 /* ~Fine. Here's another 300 gold.~ */
	DO ~
		TakePartyGold(300)
		SetGlobal("XA_PaidJasperPartial", "GLOBAL", 1)
	~
	GOTO XA_PayFullAmount
	
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @24 /* ~Listen to me very carefully. I've just returned from a long and arduous journey, after being exiled from the city, and separated from the woman I love, for a crime I didn't commit. I've fought to hell and back - on more than one occasion, mind you. I've travelled to different planes, and defeated all manner of bandits, wizards, hellspawn, monsters, dragons, and undead. I've been tortured, watched friends die, and even had my immortal soul ripped from my body. I can show you the scars. ~*/
	GOTO XA_ThreatenJasper
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @27 /* ~Listen to me very carefully. I've just returned from a long and arduous journey, after being exiled from the city for a crime I didn't commit. I've fought to hell and back - on more than one occasion, mind you. I've travelled to different planes, and defeated all manner of bandits, wizards, hellspawn, monsters, dragons, and undead. I've been tortured, watched close friends die, and even had my immortal soul ripped from my body. I can show you the scars.~*/
	GOTO XA_ThreatenJasper
END

IF ~~ THEN XA_ThreatenJasper
	SAY @28 /* ~Oh y-you must be <CHARNAME>, the B-B-Bhaalspawn. (He begins to tremble in fear.)~ */
	
	IF ~~ THEN REPLY @29 /* ~I am. In all my travels and tribulations, there's one thing that I haven't experienced. Do you know what that is? */
	DO ~
		SetGlobal("XA_TiannaDebtResolved", "GLOBAL", 1)
	~
	GOTO XA_ThreatenJasper2
END

IF ~~ THEN XA_ThreatenJasper2
	SAY @31 /* ~W-what is that. (A puddle begins forming around his feet.)~ */
	
	IF ~
		Global("XA_PaidJasperPartial", "GLOBAL", 1)
	~ THEN REPLY @30 /* ~I've yet to kill such a snivelling, worthless, filthy pimp like yourself. If it's alright by you, Jasper, I'd like to keep it that way.~*/
	GOTO XA_ThreatenJasper3A
	
	IF ~
		!Global("XA_PaidJasperPartial", "GLOBAL", 1)
	~ THEN REPLY @30 /* ~I've yet to kill such a snivelling, worthless, filthy pimp like yourself. If it's alright by you, Jasper, I'd like to keep it that way.~*/
	GOTO XA_ThreatenJasper3B
END

IF ~~ THEN XA_ThreatenJasper3A
	SAY @32 /* ~Y-yes I agree... here's your money back, you can let Tianna know her debt is cleared. S-sorry I uh I-I need to go... now.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@35, QUEST)
		GivePartyGold(1000)
		SetGlobal("XA_ScaredJasperAway", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN XA_ThreatenJasper3B
	SAY @34 /*  ~Y-yes I agree... you can let Tianna know her debt is cleared. S-sorry I uh I-I need to go... now.~*/
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@35, QUEST)
		SetGlobal("XA_ScaredJasperAway", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END