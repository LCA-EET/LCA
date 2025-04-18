BEGIN ~XABENOSP~

IF ~
	Global("XA_LC_BenoGoodbye", "GLOBAL", 1)
~ THEN BEGIN XA_BenoSpirit
	SAY @0 /* ~Schael... It's me.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_BenoGoodbye", "GLOBAL", 2)
	~
	EXTERN XACOR25J XA_GoodbyeBenoChain
END

CHAIN XACOR25J XA_GoodbyeBenoChain
	@4 /* ~Beno...~*/
	= @5 /* ~I should've figured you'd continue to torment me, even though you're dead.~*/
	== XABENOSP
	@1  /*~Listen... I don't have much time. The rift is calling to me...~ */
	== XACOR25J
	@9 /*~Whatever it is, I don't want to hear it. We've freed you from the dagger. Go to the Fugue Plane, and get out of my sight.~ */ 
	== XABENOSP
	@3  /* Please, before I leave... forgive me, Schael.~ */
	== XACOR25J
	@6 /* ~...Wh-what?~ */
	== XABENOSP
	@2  /* ~I'm sorry, Schael. For all of the harm that I caused you, your father... and Rohma.~*/
	= @7  /* ~I wish I had listened to you. If I could do it over, I'd have stayed and been a father for Rohma. The elves, they... they taught me the error of my ways.~ */
	== XACOR25J
	@10  /* ~...~ */
	== XABENOSP
	@11 /* ~Please...~*/
	== XACOR25J
	@12 /* ~As hard as it is to say... I forgive you Beno. Go now, and be at rest.~ */
	== XABENOSP
	@13 /* ~Thank you, Schael.~*/
	== XABENOSP
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	@16 /* ~And <CHARNAME>... thank you for saving Rohma... Please, continue to look after her and Schael...~*/
	== XABENOSP
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	@14 /* ~And <CHARNAME>... thank you for saving Rohma...~*/
	== XABENOSP
	@15 /* ~Farewell...~*/
	DO ~
		SetGlobal("XA_LC_Journal_BenoKana", "GLOBAL", 1)
	~
EXIT