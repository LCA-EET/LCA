BEGIN ~XAPERCY~

IF ~
	True()
~ THEN BEGIN XA_Intro
	SAY @0/*~Please save my b-brother *sob*.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_Describe
	SAY @1 /* ~It was yellowish, and h-had lots of legs... it was so scary I ran away before I could *sob* get a better look at it.~*/
	
	IF ~~ THEN REPLY @2 /* ~Yellowish, lots of legs, eh? Sounds like a basilisk.~*/
	EXTERN XAMOM XA_Basilisk
	
	IF ~~ THEN REPLY @3 /* ~Next time, do us all a favor and listen to your mother when she says not to go into dangerous places.~*/
	EXTERN XAMOM XA_WillYouSave
END

IF ~~ THEN BEGIN XA_BeCareful
	SAY @4 /* ~Thank you... be careful.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_HelpMother", "GLOBAL", 1)
	~
	EXIT
END