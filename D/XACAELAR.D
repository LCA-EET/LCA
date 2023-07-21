BEGIN ~XACAELAR~

IF ~
	GlobalLT("XA_CaelarRescue", "GLOBAL", 1)
~ THEN BEGIN XA_CaelarRescue
	SAY @4 /* ~(Caelar... she's been bloodied and brutalized beyond words, but you're sure it's her. Pieces of her shattered armor and sword lie strewn about the roof of the tower.)~*/
	
	IF ~~ THEN REPLY @5 /*  ~Caelar!~*/
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
	
	IF ~~ THEN REPLY @6  /* ~By the gods, what happened to you?~ */
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
	
	IF ~~ THEN REPLY @7 /* ~It looks like you received your just punishment.~*/
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
END

IF ~~ THEN BEGIN XA_CaelarRescue2
	SAY @2  /* ~... Wh..what? <CHARNAME>... but, how?~ */
	
	IF ~~ THEN REPLY @1 /* ~Who did this to you?~ */
	GOTO XA_CaelarRescue3
	
	IF ~~ THEN REPLY @0 /* ~You're safe now. I'm going to get you out of here.~ */
	GOTO XA_CaelarRescue3
END

IF ~~ THEN BEGIN XA_CaelarRescue3
	SAY @3  /* ~No... he will return...run... RUN!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA470001")
	~
	EXIT
	
	IF ~
		GlobalGT("DemoGorgonIsDead","GLOBAL",0)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA470002")
	~
	EXIT
END

