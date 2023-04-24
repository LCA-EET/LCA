BEGIN ~LCBREVLK~

IF ~
	IsGabber(Player1)
	GlobalGT("HelpBrevlik", "GLOBAL", 0)
	!Global("LCA_BrevIntro", "GLOBAL", 1)
~ THEN BEGIN LCA_Greeting
	SAY @0 /*~Didn't think I'd see you again.~*/
	
	IF ~~ THEN REPLY @1 /* ~Brevlik. I'm seeking the Farseer.~ */
	DO ~
		SetGlobal("LCA_BrevIntro", "GLOBAL", 1)
	~
	GOTO LCA_Farseer //OK
END

IF ~
	!IsGabber(Player1)
	!Global("LCA_BrevIntro", "GLOBAL", 1)
~ THEN BEGIN LCA_Greeting_NP
	SAY @27 /* ~Whaddya want? Can't a gnome drink in peace 'round here?~ */
	
	IF ~~ THEN REPLY @28 /* ~Are you Brevlik? I'm seeking the Farseer.~ */
	DO ~
		SetGlobal("LCA_BrevIntro", "GLOBAL", 1)
	~
	GOTO LCA_Farseer
END

IF ~~ THEN BEGIN LCA_Farseer
	SAY @2 /* ~The Farseer? That piece of junk? Here, you can have it for 100 gold.~ */
	
	IF ~
		PartyGoldGT(99)
	~ THEN REPLY @19 /* ~Here. (Pay 100 gold.)~ */
	DO ~
		TakePartyGold(100)
		GiveItemCreate("LCFARSEE",LastTalkedToBy,0,0,0)
		AddJournalEntry(@29, QUEST)
	~
	GOTO LCA_BoughtFarseer //OK
	
	IF ~~ THEN REPLY @20 /* ~Give it to me, or else.~ */
	GOTO LCA_GiveItToMe //OK
	
	IF ~
		IsValidForPartyDialog("LCCORWIN")
	~ THEN 
	EXTERN LCCORWIJ LCA_NotPaying
END

IF ~~ THEN BEGIN LCA_GiveItToMe
	SAY @23 /* ~You know what? Fine. Take the damned thing!~ */
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		IsGabber(Player1)
	~ THEN
	DO ~
		GiveItemCreate("LCFARSEE",LastTalkedToBy,0,0,0)
		AddJournalEntry(@29, QUEST)
	~
	GOTO LCA_Farseer2A //OK
	
	IF ~
		OR(2)
			!Global("HelpBrevlik", "GLOBAL", 2)
			!IsGabber(Player1)
	~ THEN
	DO ~
		GiveItemCreate("LCFARSEE",LastTalkedToBy,0,0,0)
		AddJournalEntry(@29, QUEST)
	~
	GOTO LCA_Farseer2B //OK
END
IF ~~ THEN BEGIN LCA_BoughtFarseer
	SAY @21 /* ~Thanks! I can feel me luck changing already. Now I can go and pay back some old debts at Elfsong.~ */
	
	IF ~~ THEN REPLY @6 /* ~The lens is cracked. What did you do to it?~ */
	GOTO LCA_NoRefunds //OK
	
END

IF ~~ THEN BEGIN LCA_NoRefunds
	SAY @22 /* ~Sorry, no refunds. And you oughta know that the damned thing is cursed.~ */
	
	IF ~~ THEN REPLY @4 /* ~Cursed?~ */
	GOTO LCA_FarseerCursed //OK
END

IF ~~ THEN BEGIN LCA_Farseer2A
	SAY @3 /* ~It's cursed I tell ya! Ain't had nothin but rotten luck since you pilfered it from those Gondian fools!~ */
	
	IF ~~ THEN REPLY @4 /* ~Cursed?~ */
	GOTO LCA_FarseerCursed //OK
	
	IF ~~ THEN REPLY @6 /* ~The lens is broken. What did you do to it?~ */
	GOTO LCA_FarseerCursed2	 //OK
END

IF ~~ THEN BEGIN LCA_Farseer2B
	SAY @26 /* ~It's cursed I tell ya! Ain't had nothin but rotten luck since I pilfered it from those Gondian fools!~ */
	
	IF ~~ THEN REPLY @4 /* ~Cursed?~ */
	GOTO LCA_FarseerCursed //OK
	
	IF ~~ THEN REPLY @6 /* ~The lens is broken. What did you do to it?~ */
	GOTO LCA_FarseerCursed2	 //OK
END

IF ~~ THEN BEGIN LCA_FarseerCursed
	SAY @5 /* ~Yeah, cursed!~ */
	
	IF ~~ THEN 
	GOTO LCA_FarseerBroken //OK
END

IF ~~ THEN BEGIN LCA_FarseerCursed2
	SAY @7 /* ~Like I told you, it's cursed!~ */
	
	IF ~~ THEN 
	GOTO LCA_FarseerBroken //OK
END

IF ~~ THEN BEGIN LCA_FarseerBroken
	SAY @8 /* ~I was having a few drinks one night over at Elfsong, and I placed it on the table to show it to me lady friend. I turn around for one second to grab another ale, and as I gets up, the damned thing rolls off the table!~*/
	
	= @9 /* ~Since it was broken, I couldn't sell it, and I couldn't go to get it fixed because everyone knows it's stolen!~ */
	
	IF ~~ THEN REPLY @10 /* ~I see. */
	GOTO LCA_OutOfHere //OK
	
	IF ~~ THEN REPLY @16 /* ~Hardly sounds like a curse. It seems more like you mishandled it while in a drunken stupor.~ */
	GOTO LCA_Whatever //OK
END


IF ~~ THEN BEGIN LCA_Whatever
	SAY @17 /* ~Yeah, yeah, whatever.~ */
	
	IF ~~ THEN
	GOTO LCA_OutOfHere //OK
END

IF ~~ THEN BEGIN LCA_OutOfHere
	SAY @24 /* ~Thanks for taking it off me hands. Now, if you'll be so kind as to get outs me way...~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
	
	IF ~
		IsValidForPartyDialog("LCCORWIN")
		See("LCCORWIN")
	~ THEN 
	EXTERN LCCORWIJ LCA_ArrestBrevlik //OK
END

IF ~~ THEN BEGIN LCA_GetOut
	SAY @25 /* ~Ow! I'm leaving, I'm leaving!~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END