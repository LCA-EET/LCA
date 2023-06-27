BEGIN ~XACC4~

IF ~
	Global("XA_TentCS", "GLOBAL", 1)
~ THEN BEGIN XA_TentCSStart
	SAY @0 /* ~(You wake to the sound of rustling papers. It's Captain Corwin reviewing some paperwork at a makeshift desk. She hears you stirring, and turns to you.)~*/
	
	= @1 /*  ~Oh, I'm sorry. I didn't mean to wake you.~ */
	
	IF ~~ THEN REPLY @2 /* ~It's fine. I wasn't getting much sleep, anyway. What are you working on?~ */
	DO ~
		SetGlobal("XA_TentCS", "GLOBAL", 2)
	~
	GOTO XA_TentCS_DutyRoster
END

IF ~~ THEN BEGIN XA_TentCS_DutyRoster
	SAY @3 /* ~Duty rosters. If you need help falling asleep, reviewing these should do the trick.~ */
	
	IF ~~ THEN REPLY @4 /* ~Heh. Mind if I take a look?~ */
	GOTO XA_TentCS_DutyRoster2
END

IF ~~ THEN BEGIN XA_TentCS_DutyRoster2
	SAY @5 /* ~Not at all. Have a seat.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XATNTCS2")
	~
	EXIT
END

IF ~
	Global("XA_TentCS", "GLOBAL", 2)
~ THEN BEGIN XA_TestCS2Start
	SAY @6 /* ~Have you ever seen one of these before? They cover everything from site logistics, to sentry duty, scouting parties, and everything in between.~ */
	
	IF ~~ THEN REPLY @7 /* ~No, I haven't. Can you walk me through it?~ */
	DO ~
		SetGlobal("XA_TentCS", "GLOBAL", 3)
	~
	GOTO XA_TentCS_Sentry
END

IF ~~ THEN BEGIN XA_TentCS_Sentry
	SAY @8 /* ~Sure. Let's start with sentry duty, since that's the easiest to explain. Each corner of the camp has two sentries, and they each work a 12-hour shift. When the shift ends, the new rotation relieves them and ...~ */
	
	= @9 /* ~(As she continues with her explanation of the duty roster, you realize that this is the first time you've seen Corwin without her armor and other equipment. Moreover, sitting so close to her affords you a much better view of her incredible physique. Though you've always found her attractive, you never quite appreciated her beauty until this moment.)~ */
	
	= @10 /* ~<CHARNAME>? <CHARNAME>!~ */
	
	IF ~~ THEN REPLY @11 /* ~Sorry, what was that?~ */
	GOTO XA_TentCS_Beautiful
END

IF ~~ THEN BEGIN XA_TentCS_Beautiful
	SAY @12 /* ~I asked if you had any questions.~ */
	
	IF ~~ THEN REPLY @13 /* ~No, your explanation was sufficient. Thank you, Captain.~ */
	GOTO XA_TentCS_END
END

IF ~~ THEN BEGIN XA_TentCS_END
	SAY @14 /* ~Anytime. Get some rest, hero. I'll wrap up this review shortly.~ */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@15, INFO)
		ChangeStat("Corwin", XP, 10000, ADD)
		ChangeStat(Player1, XP, 10000, ADD)
		StartCutSceneMode()
		StartCutScene("XATNTEND")
	~
	EXIT
END