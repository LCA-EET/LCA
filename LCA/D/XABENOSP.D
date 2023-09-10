BEGIN ~XABENOSP~

IF ~
	Global("XA_BenoGoodbye", "GLOBAL", 1)
~ THEN BEGIN XA_BenoSpirit
	SAY @0 /* ~Schael... It's me.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_BenoGoodbye", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_GoodbyeBenoChain
END

CHAIN XACORWIJ XA_GoodbyeBenoChain
	@4 /* ~Beno...~*/
	= @5 /* ~I should've figured you'd continue to torment me, even though you're dead.~*/
	== XABENOSP
	@1  /*~Listen... I don't have much time. The rift is calling to me...~ */
	== XACORWIJ
	@9 /*~Whatever it is, I don't want to hear it. We've freed you from the dagger. Go to the Fugue Plane, and get out of my sight.~ */ 
	== XABENOSP
	@3  /* Please, before I leave... forgive me, Schael.~ */
	== XACORWIJ
	@6 /* ~...Wh-what?~ */
	== XABENOSP
	@2  /* ~I'm sorry, Schael. For all of the harm that I caused you, your father... and Rohma.~*/
	= @7  /* ~I wish I had listened to you. If I could do it over, I'd have stayed and been a father for Rohma. The elves, they... they taught me the error of my ways.~ */
	== XACORWIJ
	@10  /* ~...~ */
	== XABENOSP
	@11 /* ~Please...~*/
	== XACORWIJ
	@12 /* ~As hard as it is to say... I forgive you Beno. Go now, and be at rest.~ */
	== XABENOSP
	@13 /* ~Thank you, Schael.~*/
	== XABENOSP
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@16 /* ~And <CHARNAME>... thank you for saving Rohma... Please, continue to look after her and Schael...~*/
	== XABENOSP
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@14 /* ~And <CHARNAME>... thank you for saving Rohma...~*/
	== XABENOSP
	@15 /* ~Farewell...~*/
	DO ~
		AddJournalEntry(@17, INFO)
		AddexperienceParty(50000)
	~
EXIT