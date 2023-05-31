BEGIN ~CORCUT3~

IF ~
	Global("LCA_EndG2", "GLOBAL", 2)
~ THEN BEGIN LCA_G2END
	SAY @16 /* ~Good work. It looks like we got here just in the nick of time.~ */
	
	= @5 /* ~I don't believe we've been properly introduced. I'm —~*/
	
	IF ~~ THEN REPLY @8 /* ~Captain Schael Corwin of the Flaming Fist.~ */
	GOTO LCA_HaveWeMet
	
	IF ~~ THEN REPLY @10 /* ~Schael — it's me.~*/
	GOTO LCA_HaveWeMet2
	
	IF ~~ THEN REPLY @17 /* ~Is this real?~*/
	GOTO LCA_DontUnderstand	
END

IF ~~ THEN BEGIN LCA_HaveWeMet
	SAY @9 /* ~That's right... have we met before?~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @14 /* ~We have. We've accomplished much together, my friend.~ */
	GOTO LCA_DontUnderstand
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~We have, love. And I'm going to punish the beast responsible for our imprisonment here.~~ */
	GOTO LCA_DontUnderstand
END

IF ~~ THEN BEGIN LCA_HaveWeMet2
	SAY @18 /* ~You know my name? Have we met before?~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @14 /* ~We have. We've accomplished much together, my friend.~ */
	GOTO LCA_DontUnderstand
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~We have, love. And I'm going to punish the beast responsible for our imprisonment here.~~ */
	GOTO LCA_DontUnderstand
END

IF ~~ THEN BEGIN LCA_DontUnderstand
	SAY @11 /* ~What? I don't understand.~*/
	
	= @12 /* ~Are you alright? You look like you're about to keel over.~ */
	
	= @19 /* ~Medic!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_EndG2", "GLOBAL", 3)
	~
	EXIT
END

IF ~
	!Global("LCA_CorCut3", "GLOBAL", 1)
~ THEN BEGIN LCA_CorCut3
	SAY @0 /*  ~Sarevok! By the order of Dukes Jannath and Belt, you are under arrest!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorCut3", "GLOBAL", 1)
	~
	EXTERN LCSAREVO LCA_G2Chain
END

CHAIN LCSAREVO LCA_G2Chain
	@1 /* ~Laughable, woman. On what charge?~ */
	== LCBELT
	@6 /* ~On the charge of murder! Captain Corwin has uncovered evidence that you, not <CHARNAME>, are responsible for the deaths of Duke Silvershield and Duke Eltan.~ */
	== LCLIIA
	@7 /*  ~Evidence that was corroborated by our diviners.~ */
	== CORCUT3
	@2 /*~Executioner, release the prisoner.~ */
	== LCFFEXEC
	@3 /* ~Yes, Captain.~ */
	= @21 /* ~(The executioner undoes your restraints.)~ */
	== LCSAREVO
	@4 /* ~You'd dare disobey the order of a Grand Duke! Destroy them!~ */
	DO ~
		SetGlobal("LCA_SarevokHostile", "GLOBAL", 1)
		ChangeEnemyAlly("LCSAREVO", ENEMY)
		ChangeEnemyAlly("LCSEMAJ", ENEMY)
		ChangeEnemyAlly("LCANGELO", ENEMY)
		ChangeEnemyAlly("LCZHALIM", ENEMY)
		ChangeEnemyAlly("LCAASIM", ENEMY)
		ChangeEnemyAlly("LCGARDUS", ENEMY)
		ChangeEnemyAlly("LCDIYAB", ENEMY)
		ChangeEnemyAlly("CORCUT3", ALLY)
		ChangeEnemyAlly("LCLIIA", ALLY)
		ChangeEnemyAlly("LCBELT", ALLY)
		ChangeEnemyAlly("LCFFEXEC", ALLY)
		ChangeEnemyAlly("LCFF1248", ALLY)
		ChangeEnemyAlly("LCFF1271", ALLY)
		ChangeEnemyAlly("BDFISTCC", ALLY)
	~
EXIT

