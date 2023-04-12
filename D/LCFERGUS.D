BEGIN ~LCFERGUS~

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(3,1)
~ THEN BEGIN LCA_CorwinGreeting1
	SAY @12 /* ~Welcome back, Captain.~ */
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(3,2)
~ THEN BEGIN LCA_CorwinGreeting2
	SAY @13 /* ~Nothing unusual to report, ma'am.~ */
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(3,3)
~ THEN BEGIN LCA_CorwinGreeting3
	SAY @14 /* ~Glad to have you back, Captain.~*/
	IF ~~ THEN EXIT
END

IF ~
	!Global("LCA_FergusMarried", "GLOBAL", 1)
	Global("FERGUS1","GLOBAL",2)
	!InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_FergusCharname
	SAY @10 /* ~Is <CHARNAME> with you? I'd like to speak with <PRO_HIMHER>, if <PRO_HESHE>'s available.~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("FERGUS1","GLOBAL",2)
	InPartySlot(LastTalkedToBy,0)
	!Global("LCA_FergusMarried", "GLOBAL", 1)
~ THEN BEGIN LCA_FergusMarried
	SAY @0 /* <CHARNAME>! It's good to see you again!~*/
	
	IF ~~ THEN REPLY @1 /* ~Hello... sorry, your name?~ */
	GOTO LCA_FergusMarriedA
	
	IF ~~ THEN REPLY @2 /* ~Fergus... right?~ */
	GOTO LCA_FergusMarriedB
END

IF ~
	//Global("LCA_FergusMarried", "GLOBAL", 1)
	RandomNum(2,1)
~ THEN BEGIN LCA0
	SAY @7 /* ~I can't wait for this shift to end, so I can see my lady again.~ */
	IF ~~ THEN EXIT
END

IF ~
	//Global("LCA_FergusMarried", "GLOBAL", 1)
	RandomNum(2,2)
~ THEN BEGIN LCA1
	SAY @8 /* ~Nothing unusual to report, Captain.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_FergusMarriedA
	SAY @5 /* ~It's me, Fergus! I wanted to thank you again. My wife loved the angel skin ring, and we're expecting our first baby in a few months' time.~*/
	
	IF ~~ THEN REPLY @4 /* ~Oh, that's great news. Congratulations to you and your wife!~ */
	GOTO LCA_FergusMarriedC
END

IF ~~ THEN BEGIN LCA_FergusMarriedB
	SAY @3 /* ~Yes, you remembered! I wanted to thank you again. My wife loved the angel skin ring, and we're expecting our first baby in a few months' time.~ */
	
	IF ~~ THEN REPLY @4 /* ~Oh, that's great news. Congratulations to you and your wife!~  */
	GOTO LCA_FergusMarriedC
END

IF ~~ THEN BEGIN LCA_FergusMarriedC
	SAY @9 /* ~Thank you. When they said you'd killed Duke Entar's daugter, I knew it couldn't be true. I'm glad you were able to prove your innocence. Take care, now.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@15, INFO)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_FergusMarried", "GLOBAL", 1)
	~
	EXIT
END