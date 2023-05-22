BEGIN ~LCGORION~

IF ~
	!Global("LCA_GorionTalk", "GLOBAL", 1)
~ THEN BEGIN LCA_GorionTalk
	SAY @0 /* ~Hello, child. It's good to see you again.~ */
	
	IF ~~ THEN REPLY @22 /* ~Whoever, or whatever you are, you are not Gorion.~ */
	GOTO LCA_NotGorion
	
	IF ~~ THEN REPLY @21 /* ~What trickery is this?  */
	GOTO LCA_NotGorion2
END

IF ~~ THEN BEGIN LCA_NotGorion
	SAY @1 /*  ~You are correct, of course. The real Gorion died at the hands of your half brother.~ */
	
	IF ~~ THEN 
	GOTO LCA_NotGorion2
END

IF ~~ THEN BEGIN LCA_NotGorion2
	SAY @2 /* ~I am a recreation of your foster father, constructed from your memories of him.~ */
	
	IF ~~ THEN REPLY @3 /* ~Why are we here?~ */
	GOTO LCA_WhyHere
END

IF ~~ THEN BEGIN LCA_WhyHere
	SAY @4 /* ~I don't know. I can only surmise that there is some part of you that has wished to speak with Gorion for some time.~ */
	
	= @5 /* ~Perhaps during your journey, you've learned things of him or about yourself that you have questions about? I may be able to answer them. If not, I will send you back whence you came.~ */
	
	IF ~~ THEN REPLY @24 /* ~No. This is a waste of time. Send me back to Lyriel.~ */
	DO ~
		SetGlobal("LCA_GorionTalk", "GLOBAL", 2)
	~
	GOTO LCA_Leave
	
	IF ~
		!Global("LCA_Prepare", "LOCALS", 1)
	~ THEN REPLY @6 /* ~Why didn't you prepare Imoen and I for what was coming?~*/
	DO ~
		SetGlobal("LCA_Prepare", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Prepare
	
	IF ~
		!Global("LCA_Prepare", "LOCALS", 1)
	~ THEN REPLY @7 /* ~You've always known what Imoen and I were. Why didn't you tell us?~ */
	DO ~
		SetGlobal("LCA_Prepare", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Prepare
	
	IF ~
		!Global("LCA_Mother", "LOCALS", 1)
	~ THEN REPLY @29 /* ~What can you tell me about my mother?~ */
	DO ~
		SetGlobal("LCA_Mother", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Mother
	
	
END

IF ~~ THEN BEGIN LCA_Mother
	SAY @30 /* ~(The similacrum lets out a long, pained sigh.)~ */
	
	= @31 /* ~Only that I loved her very much. Speaking of love... have you found someone?~   */
	
	IF ~~ THEN REPLY @32 /* ~That's none of your concern.~ */
	GOTO LCA_MoreQuestions
	
	IF ~~ THEN REPLY @33 /* ~I have.~*/
	GOTO LCA_HasRelationship
	
	IF ~~ THEN REPLY @34 /* ~Not yet.~ */
	GOTO LCA_NoRelationship
END
IF ~~ THEN BEGIN LCA_Prepare
	SAY @8 /* ~Ah... I'd hoped that Alaundo was wrong. I thought that sheltering you from the outside world would spare you from all of the death and bloodshed that was ultimately thrust upon you. Forgive me.~ */	
	GOTO LCA_MoreQuestions
END

IF ~~ THEN BEGIN LCA_MoreQuestions
	SAY @37 /* ~You have more questions?~ */
	
	IF ~~ THEN REPLY @24 /* ~No. This is a waste of time. Send me back to Lyriel.~ */
	DO ~
		SetGlobal("LCA_GorionTalk", "GLOBAL", 2)
	~
	GOTO LCA_Leave
	
	IF ~
		!Global("LCA_Prepare", "LOCALS", 1)
	~ THEN REPLY @6 /* ~Why didn't you prepare Imoen and I for what was coming?~*/
	DO ~
		SetGlobal("LCA_Prepare", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Prepare
	
	IF ~
		!Global("LCA_Prepare", "LOCALS", 1)
	~ THEN REPLY @7 /* ~You've always known what Imoen and I were. Why didn't you tell us?~ */
	DO ~
		SetGlobal("LCA_Prepare", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Prepare
	
	IF ~
		!Global("LCA_Mother", "LOCALS", 1)
	~ THEN REPLY @29 /* ~What can you tell me about my mother?~ */
	DO ~
		SetGlobal("LCA_Mother", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Mother
	
	IF ~
		!Global("LCA_Escape", "LOCALS", 1)
	~ THEN REPLY @38 /* ~How do I escape this prison?~ */
	DO ~
		SetGlobal("LCA_Escape", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_Escape
	
	IF ~
		!Global("LCA_WhatWillHappen", "LOCALS", 1)
		GlobalGT("LCA_GorionQuestions", "GLOBAL", 2)
	~ THEN REPLY @12 /* ~What will happen to you when I leave here?~*/
	DO ~
		SetGlobal("LCA_WhatWillHappen", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_WhatWillHappen
	
	IF ~
		!Global("LCA_GorionImpression", "LOCALS", 1)
		GlobalGT("LCA_GorionQuestions", "GLOBAL", 3)
	~ THEN REPLY @14 /* ~What would Gorion think of the <PRO_MANWOMAN> I've become?~ */
	DO ~
		SetGlobal("LCA_GorionImpression", "LOCALS", 1)
		IncrementGlobal("LCA_GorionQuestions", "GLOBAL", 1)
	~
	GOTO LCA_GorionImpression
END

IF ~~ THEN BEGIN LCA_GorionImpression
	SAY @15 /* Hm... */
	
	
	
END

IF ~~ THEN BEGIN LCA_WhatWillHappen
	SAY @13 /* ~I will very likely cease to exist. But worry not, child. A part of me, no... a part of Gorion... will always be with you.~ */
	
	GOTO LCA_MoreQuestions
END

IF ~~ THEN BEGIN LCA_Escape
	SAY @39 /* ~I don't know for certain, but what's clear is that the master of this place has learned to manipulate it to his own benefit. You may be able to as well.~*/
	
	= @40 /* ~Remember what I taught you about telepathy, child. The demon is able to look into your memories — to do so, he must create a kind of psionic link.~ */
	
	= @41  /* ~It's likely that the link goes both ways. If I am correct, you can use the link to learn how to alter this reality to suit you, instead of him.~  */
	
	= @42 /* ~Such knowledge could prove invaluable if you choose to confront the master in his sanctum.~ */
	
	IF ~~ THEN REPLY @43 /* I see... */
	GOTO LCA_MoreQuestions
	
	IF ~~ THEN REPLY @44 /* ~Why are you helping me?~ */
	GOTO LCA_WhyHelp
END

IF ~~ THEN BEGIN LCA_WhyHelp
	SAY @45 /* ~Because Gorion would've.~ */
	
	IF ~~ THEN
	GOTO LCA_MoreQuestions
END

IF ~~ THEN BEGIN LCA_Leave
	SAY @25 /* ~Very well. Good-bye...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_EndG2", "GLOBAL", 1)
	~
	EXIT
END