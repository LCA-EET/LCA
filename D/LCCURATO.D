BEGIN ~LCCURATO~

IF ~
	Global("LCA_MagdaTalk", "GLOBAL", 1)
~ THEN BEGIN LCA_Meeting
	SAY @2 /* ~Captain Corwin, welcome home! It's good to see you.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_MagdaTalk", "GLOBAL", 2)
	~
	EXTERN LCCORWIJ LCA_MagdaChain
	
END

IF ~~ THEN BEGIN LCA_Introduction
	SAY @4 /* ~<CHARNAME>! What an honor it is to meet you!~ */
	
	IF ~~ THEN REPLY @5 /* ~It's good to meet you.~ */
	GOTO LCA_Introduction2A
	
	IF ~~ THEN REPLY @6 /* ~You're the curator here?~ */
	GOTO LCA_MagdaChain2
END

IF ~~ THEN BEGIN LCA_Introduction2A
	SAY @7 /* ~The last time we had such a distinguished guest visit us was Ulruant, and that was more than ten years ago!~ */
	
	IF ~~ THEN REPLY @8 /* ~Ulruant... I haven't heard that name in a while. So, you've been the curator for a long time I take it?~ */
	GOTO LCA_MagdaChain2
	
	IF ~~ THEN REPLY @9 /* ~I see... and how long have you been curator here, Magda?~ */
	GOTO LCA_MagdaChain2
END

IF ~~ THEN BEGIN LCA_AskToTalk
	SAY @10 /* ~What say you?~ */
	
	IF ~~ THEN REPLY @11 /* ~Of course. Lead the way, Curator Magda.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ LCA_StartHOWCutscene
	
	IF ~~ THEN REPLY @12 /* ~We're not interested.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ LCA_HOW_WhyNot
	
	IF ~
		Alignment(Player1, MASK_GOOD)
	~ THEN REPLY @13 /* ~Orphans hold a special place in my heart. It was only through the grace of my foster father, Gorion, that I've become who I am. I'd be glad to say a few words.~*/
	EXTERN LCCORWIJ LCA_StartHOWCutscene
END

IF ~
	RandomNum(2,1)
~ THEN BEGIN LCA_Greeting1
	SAY @0 /* ~Please, do not touch the exhibits.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(2,2)
~ THEN BEGIN LCA_Greeting2
	SAY @1 /* ~Enjoy your time at the Hall of Wonders.~*/
	
	IF ~~ THEN
	EXIT
END

