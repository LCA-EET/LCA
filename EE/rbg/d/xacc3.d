BEGIN ~XACC3~

IF ~
	Global("XA_LC_EndG2", "GLOBAL", 2)
~ THEN BEGIN XA_G2END
	SAY @16 /* ~Good work. It looks like we got here just in the nick of time.~ */
	
	= @5 /* ~I don't believe we've been properly introduced. I'm —~*/
	
	IF ~~ THEN REPLY @8 /* ~Captain Schael Corwin of the Flaming Fist.~ */
	GOTO XA_HaveWeMet
	
	IF ~~ THEN REPLY @10 /* ~Schael — it's me.~*/
	GOTO XA_HaveWeMet2
	
	IF ~~ THEN REPLY @17 /* ~Is this real?~*/
	GOTO XA_DontUnderstand	
END

IF ~~ THEN BEGIN XA_HaveWeMet
	SAY @9 /* ~That's right... have we met before?~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @14 /* ~We have. We've accomplished much together, my friend.~ */
	GOTO XA_DontUnderstand
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~We have, love. And I'm going to punish the beast responsible for our imprisonment here.~~ */
	GOTO XA_DontUnderstand
END

IF ~~ THEN BEGIN XA_HaveWeMet2
	SAY @18 /* ~You know my name? Have we met before?~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @14 /* ~We have. We've accomplished much together, my friend.~ */
	GOTO XA_DontUnderstand
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~We have, love. And I'm going to punish the beast responsible for our imprisonment here.~~ */
	GOTO XA_DontUnderstand
END

IF ~~ THEN BEGIN XA_DontUnderstand
	SAY @11 /* ~What? I don't understand.~*/
	
	= @12 /* ~Are you alright? You look like you're about to keel over.~ */
	
	= @19 /* ~Medic!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_EndG2", "GLOBAL", 3)
	~
	EXIT
END

IF ~
	!Global("XA_LC_XACC3", "GLOBAL", 1)
~ THEN BEGIN XA_XACC3
	SAY @0 /*  ~Sarevok! By the order of Dukes Jannath and Belt, you are under arrest!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_XACC3", "GLOBAL", 1)
	~
	EXTERN XASAREVO XA_G2Chain
END

CHAIN XASAREVO XA_G2Chain
	@1 /* ~Laughable, woman. On what charge?~ */
	== XABELT
	@6 /* ~On the charge of murder! Captain Corwin has uncovered evidence that you, not <CHARNAME>, are responsible for the deaths of Duke Silvershield and Duke Eltan.~ */
	== XALIIA
	@7 /*  ~Evidence that was corroborated by our diviners.~ */
	== XACC3
	@2 /*~Executioner, release the prisoner.~ */
	== XAFFEXEC
	@3 /* ~Yes, Captain.~ */
	= @21 /* ~(The executioner undoes your restraints.)~ */
	== XASAREVO
	@4 /* ~You'd dare disobey the order of a Grand Duke! Destroy them!~ */
	DO ~
		SetGlobal("XA_LC_SarevokHostile", "GLOBAL", 1)
		ChangeEnemyAlly("XASAREVO", ENEMY)
		ChangeEnemyAlly("XASEMAJ", ENEMY)
		ChangeEnemyAlly("XAANGELO", ENEMY)
		ChangeEnemyAlly("XAZHALIM", ENEMY)
		ChangeEnemyAlly("XAAASIM", ENEMY)
		ChangeEnemyAlly("XAGARDUS", ENEMY)
		ChangeEnemyAlly("XADIYAB", ENEMY)
		ChangeEnemyAlly("XAGDOP03", ENEMY)
		ChangeEnemyAlly("XACC3", ALLY)
		ChangeEnemyAlly("XALIIA", ALLY)
		ChangeEnemyAlly("XABELT", ALLY)
		ChangeEnemyAlly("XAFFEXEC", ALLY)
		ChangeEnemyAlly("XAFF1248", ALLY)
		ChangeEnemyAlly("XAFF1271", ALLY)
		ChangeEnemyAlly("BDFISTCC", ALLY)
	~
EXIT

