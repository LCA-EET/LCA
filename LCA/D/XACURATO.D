BEGIN ~XACURATO~

IF ~
	Global("XA_LeaveArea", "LOCALS", 1)
~ THEN BEGIN XA_LeaveArea
	SAY @16 /* ~Now, if you'll excuse me, I must return to my duties. Good day.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~
	Global("XA_CSHOW_TALK", "GLOBAL", 2)
~ THEN BEGIN XA_CSHOW_END
	SAY @14 /* ~Captain, <CHARNAME>, thank you again for taking time out of your day to share your insights with those orphans.~ */
	
	IF ~~ THEN
	GOTO XA_BadBehavior
	
	IF ~
		Global("XA_ScaredChildren", "GLOBAL", 1)
	~ THEN 
	GOTO XA_NotHappy
END

IF ~~ THEN BEGIN XA_BadBehavior
	SAY @17 /* ~Please excuse their poor behavior. With role models like the two of you however, I've no doubt that they will grow up to be productive members of society.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@19, INFO)
	~
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_NotHappy
	SAY @15 /* ~While I strongly disapprove of that little show you put on, I'm sure that the children will be on their best behavior from now on.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@18, INFO)
	~
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_GoodBye
	SAY @16 /* ~Now, if you'll excuse me, I must return to my duties. Good day.~ */
	
	IF ~~ THEN
	DO ~
		ChangeStat("XACORWIN",XP,25000,ADD)
		ChangeStat(Player1,XP,25000,ADD)
		SetGlobal("XA_LeaveArea", "LOCALS", 1)
		EscapeArea()
	~
	EXIT
END
IF ~
	Global("XA_MagdaTalk", "GLOBAL", 1)
~ THEN BEGIN XA_Meeting
	SAY @2 /* ~Captain Corwin, welcome home! It's good to see you.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_MagdaTalk", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_MagdaChain
	
END

IF ~~ THEN BEGIN XA_Introduction
	SAY @4 /* ~<CHARNAME>! What an honor it is to meet you!~ */
	
	IF ~~ THEN REPLY @5 /* ~It's good to meet you.~ */
	GOTO XA_Introduction2A
	
	IF ~~ THEN REPLY @6 /* ~You're the curator here?~ */
	GOTO XA_MagdaChain2
END

IF ~~ THEN BEGIN XA_Introduction2A
	SAY @7 /* ~The last time we had such a distinguished guest visit us was Ulruant, and that was more than ten years ago!~ */
	
	IF ~~ THEN REPLY @8 /* ~Ulruant... I haven't heard that name in a while. So, you've been the curator for a long time I take it?~ */
	GOTO XA_MagdaChain2
	
	IF ~~ THEN REPLY @9 /* ~I see... and how long have you been curator here, Magda?~ */
	GOTO XA_MagdaChain2
END

IF ~~ THEN BEGIN XA_AskToTalk
	SAY @10 /* ~What say you?~ */
	
	IF ~~ THEN REPLY @11 /* ~Of course. Lead the way, Curator Magda.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_StartHOWCutscene
	
	IF ~~ THEN REPLY @12 /* ~We're not interested.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_HOW_WhyNot
	
	IF ~
		Alignment(Player1, MASK_GOOD)
	~ THEN REPLY @13 /* ~Orphans hold a special place in my heart. It was only through the grace of my foster father, Gorion, that I've become who I am. I'd be glad to say a few words.~*/
	EXTERN XACORWIJ XA_StartHOWCutscene
END

IF ~
	RandomNum(2,1)
~ THEN BEGIN XA_Greeting1
	SAY @0 /* ~Please, do not touch the exhibits.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(2,2)
~ THEN BEGIN XA_Greeting2
	SAY @1 /* ~Enjoy your time at the Hall of Wonders.~*/
	
	IF ~~ THEN
	EXIT
END

