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
	
	= @5 /* ~Perhaps during your journey, you've learned things of him or about yourself that you have questions about?~ */
	
	IF ~~ THEN REPLY @24 /* ~This is a waste of time. Send me back to Lyriel.~ */
	DO ~
		SetGlobal("LCA_GorionTalk", "GLOBAL", 2)
	~
	GOTO LCA_Leave
END

IF ~~ THEN BEGIN LCA_Leave
	SAY @25 /* ~Very well. Good-bye...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_EndG2", "GLOBAL", 1)
	~
	EXIT
END