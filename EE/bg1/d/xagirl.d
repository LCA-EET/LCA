BEGIN ~XAGIRL~

IF ~
	GlobalLT("XA_LC_TalkedToCryingGirl", "LOCALS", 1)
~ THEN BEGIN XA_MissRohma
	SAY @0  /*~Who are *sob* you?~*/
	
	IF ~~ THEN REPLY @1 /* ~I'm <GABBER>. Little girl, why are you crying?~*/
	DO ~
		SetGlobal("XA_LC_TalkedToCryingGirl", "LOCALS", 1)
	~
	GOTO XA_MissRohma2
	
	IF ~~ THEN REPLY @8/* ~Didn't your parents teach you not to talk to strangers? Scram, kid.~*/
	DO ~
		SetGlobal("XA_LC_TalkedToCryingGirl", "LOCALS", 1)
	~
	GOTO XA_Mean
END

IF ~~ THEN BEGIN XA_Mean
	SAY @9/* ~You're mean!~*/
	
	IF ~~ THEN 
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_MissRohma2
	SAY @2  /* I miss my friend. She had to go away with her mommy and grandpa. They left a couple o' days ago.~*/
	
	IF ~~ THEN REPLY @5 /* ~Don't worry honey. I'm sure your friend will be back soon. Maybe you can play with one of the other kids around here instead?~*/
	GOTO XA_MissRohmaEnd
	
	IF ~~ THEN REPLY @3 /* ~I see... what's your friend's name? If I see them, I'll tell them that you miss them.~*/
	GOTO XA_MissRohma3
END

IF ~~ THEN BEGIN XA_MissRohma3
	SAY @4  /* ~Her name is *sob* Rohma. She lives in the house right over there.~*/
	
	IF ~~ THEN REPLY @5 /* ~Don't worry honey. I'm sure your friend will be back soon. Maybe you can play with one of the other kids around here instead?~*/
	DO ~
		AddMapNote([1732.1126], @7)
		SetGlobal("XA_LC_CorwinMapNoteAdded", "GLOBAL", 1)
	~
	GOTO XA_MissRohmaEnd

END

IF ~~ THEN BEGIN XA_MissRohmaEnd
	SAY @6  /* ~Maybe... but Rohma and her mommy are very nice. So are you.~*/
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END
