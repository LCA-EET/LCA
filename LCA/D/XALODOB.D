BEGIN ~XALODOB~

IF ~
	Global("XA_Lodob", "GLOBAL", 1)
~ THEN BEGIN XA_Lodob
	SAY @0 /* ~HAHAHAH! I AM FREE! GROVEL BEFORE ME, MANLINGS!~ */
	
	IF ~~ THEN REPLY @3 /* ~I bow to no one.~*/
	DO ~
		SetGlobal("XA_Lodob", "GLOBAL", 2)
	~
	GOTO XA_Lodob2
	
	IF ~~ THEN REPLY @4 /* ~Who are you?~ */
	DO ~
		SetGlobal("XA_Lodob", "GLOBAL", 2)
	~
	GOTO XA_Lodob2
END

IF ~~ THEN BEGIN XA_Lodob2
	SAY @1 /* ~I AM LODOB, BARON OF THE HELLS. WHERE IS IRENICUS? I SHALL DEVOUR HIS SOUL, AS HE IMPRISONED MINE!~ */
	
	IF ~~ THEN REPLY @2 /*~Is he the one that imprisoned you?~*/
	DO ~
		AddJournalEntry(@8, INFO)
	~
	GOTO XA_Lodob3
	
	IF ~~ THEN REPLY @6 /*~It may please you to know that he is dead.~*/
	DO ~
		AddJournalEntry(@8, INFO)
	~
	GOTO XA_Lodob3
END

IF ~~ THEN BEGIN XA_Lodob3
	SAY @5 /* ~IT MATTERS NOT. I WILL DEVOUR YOURS INSTEAD, THEN USE YOUR BODY TO RULE THIS PLANE. PREPARE TO—~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XADAG3A")
	~
	EXIT
	
	IF ~
		Global("XA_BenoSpirit", "GLOBAL", 1)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XADAG3B")
	~
	EXIT
END