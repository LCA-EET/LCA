APPEND XANEB
IF ~
	GlobalLT("XA_MeetNebSewer", "LOCALS", 1)
~ THEN BEGIN XA_MeetNebSewer
	SAY @0 /* ~Distractions, distractions. Even in these filthy sewers, a gnome can't find peace, hee hee...~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_MeetNebSewer", "LOCALS", 1)
	~
	GOTO XA_MeetNebSewer2
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	DO ~
		SetGlobal("XA_MeetNebSewer", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_XANEB_1
END

IF ~~ THEN BEGIN XA_MeetNebSewer2
	SAY @3 /* ~Have you reason to be here? I do not recall summoning such as you. Do I... know you? I do not think it is so.~  */
	
	IF ~~ THEN REPLY @9 /* ~I'll be going then. Sorry to have bothered you.~ */ 
	GOTO XA_MeetNebSewer3A
	
	IF ~~ THEN REPLY @4 /* ~You seem familiar... who are you?~ */ 
	GOTO XA_MeetNebSewer3B
END

IF ~~ THEN BEGIN XA_MeetNebSewer3A
	SAY @5 /* ~Oh... hee hee! Oh, you shall be very sorry, indeed! You have found me out, and now you must pay, oh yes. A little old for my taste, but no matter!~ */
	
	IF ~~ THEN 
	DO ~
		Enemy()
	~ 
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		SetGlobal("XA_NebFight", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_MeetNebSewer3B
	SAY @6 /*~You have no cause to know my name unless you were sent by the law! Do vengeful families cry out for my capture?~ */
	
	= @7 /*~Come then, attack! And your deaths shall be a riddle for some other fool to solve!~ */
	
	IF ~~ THEN 
	DO ~
		Enemy()
	~ 
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		SetGlobal("XA_NebFight", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END
END