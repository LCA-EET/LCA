BEGIN ~XATOBNED~

IF ~
	Global("XA_LC_NedToB", "GLOBAL", 1)
~ THEN BEGIN XA_NedToB 
	SAY @0 /* ~What in the Nine Hells — Major!? <CHARNAME>!?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_NedToB", "GLOBAL", 2)
	~
	EXTERN XACORWIP XA_NedToB2
END

IF ~~ THEN BEGIN XA_Threat
	SAY @5 /* ~Hm. We've been hearing rumors of chaos in the vicinity of Saradush... fire giants, sieges, and large armies preparing for war.~*/
	
	= @4 /* ~The Dukes have been trying to keep it under wraps, as to not allow panic to spread. If what you're telling me is true, <CHARNAME>, it seems that we may have underestimated the threat.~ */
	
	= @3 /*~Major, I leave it up to you as to whether you'll part in this assignment. Under normal circumstances, I wouldn't hesitate to order you to. But these are far from normal circumstances... just look at this place.~*/
	
	IF ~~ THEN
	EXTERN XACORWIP XA_Threat2
END

IF ~~ THEN BEGIN XA_CorwinJoin
	SAY @2 /* ~Of course, Major. We will begin preparing the city's defenses, in case you and <CHARNAME> are unsuccessful. Good hunting.~ */
	
	IF ~~ THEN REPLY @6
	DO ~
		AddJournalEntry(@7, INFO)
		StartCutSceneMode()
		StartCutScene("XANEDEX")
	~
	EXIT
END