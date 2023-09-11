BEGIN ~XAKERRAC~

IF ~  
	!Global("XA_MetKerrac", "GLOBAL", 1)
~ THEN BEGIN XA_GreetingNotMet // from:
	SAY @12 /* ~Ho there, watch your step on the wharfs hereabouts. The sea spray can make the cobbles a touch treacherous... My name is Kerrachus. Is there anything I can help you with?~ */
	IF ~~ THEN REPLY @13 /* ~What do you do here?~ */
	GOTO XA_GreetingNotMet2
END

IF ~
	Global("XA_MetKerrac", "GLOBAL", 1)
~ THEN BEGIN XA_GreetingMet
	SAY @0 /* ~Ho there, good to see you again! Is there anything I can help you with?~ */
	
	IF ~~ THEN REPLY @1 /* ~Sorry, have we met?~*/
	GOTO XA_Introduction
END

IF ~~ THEN BEGIN XA_GreetingNotMet2
	SAY @14 /* ~Aye, I be the dukes' own dockhand, if you will... Well, all right, I'm just a dockhand like any other, but I've been aboard the royal galleys to unload wares from the New World.~ */
	
	IF ~~ THEN REPLY @15 /* ~A "New World"? Is there some sort of dimensional portal in the middle of the sea through which you pass to get there?~ */
	GOTO XA_GreetingNotMet3 
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~A dockhand, you say? We're investigating reports of slaver activity in Baldur's Gate. Do you know anything about families being shipped from here to Athkatla?~ */
	GOTO XA_SlaverQuestioning
END

IF ~~ THEN BEGIN XA_SlaverQuestioning
	SAY @5 /* ~Aye, as a matter of fact I do. That new company run by that Winston fella - they've been moving refugees to cities up and down the coast, including Athkatla.~*/
	
	= @6 /* ~I spoke to one of the families... Bennett I think the name was, and they said that Winston had found them a new home down south.~*/
	
	= @7 /* ~They had a real smart kid I remember, Tina was her name.~*/
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_KerracQuestioning
	
	IF ~~ THEN REPLY @8 /* ~I see. Was there anything that led you to believe they were being taken against their will?~  */
	GOTO XA_SlaverQuestioning2
END 

IF ~~ THEN BEGIN XA_SlaverQuestioning2
	SAY @9 /* ~No, they all seemed happy to finally be getting out of the city. Talk to the Harbor Master, he would know more.~*/
	
	IF ~~ THEN REPLY @10 /* ~Thanks for your help.~ */
	GOTO XA_End
END

IF ~~ THEN BEGIN XA_GreetingNotMet3
	SAY @17 /* ~ 'Tis better yet! They say now that the world is no longer flat, that it has become round, a perfect sphere wrapped 'round itself like a wizard's crystal. We perch atop its upright half and the New World of Maztica clings to its underside like so many bats! Someday I shall sneak aboard one of these ships that I may see such wonders!~ */
	
	IF ~~ THEN REPLY @18 /* ~Hurrah to your New World, then, Kerrachus, whatever shape it takes. Alas, I cannot tarry here. Perhaps we'll talk another day.~ */
	DO ~
		EscapeArea()
	~
	EXIT
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @19 /* ~You said you were a dockhand, yes? We're investigating reports of slaver activity in Baldur's Gate. Do you know anything about families being shipped from here to Athkatla?~ */
	GOTO XA_SlaverQuestioning
END

IF ~~ THEN BEGIN XA_Introduction
	SAY @2 /* ~Yes, a while ago around the time of the iron crisis. My name is Kerrachus, I'm one of the dockhands here.~ */
	
	IF ~~ THEN REPLY @3 /* ~I don't need any help at the moment.~ */
	GOTO XA_End
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~A dockhand, you say? We're investigating reports of slaver activity in Baldur's Gate. Do you know anything about families being shipped from here to Athkatla?~ */
	GOTO XA_SlaverQuestioning
END

IF ~~ THEN BEGIN XA_End
	SAY @11 /* ~I'd best be getting back to work. Got three holds to unload before sunrise.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN XA_KerracQuestioningEnd
	SAY @20 /* ~No, sorry. You should speak to the harbor master. He might know more.~*/
	
	IF ~~ THEN REPLY @10 /* ~Thanks for your help.~ */
	GOTO XA_End
END