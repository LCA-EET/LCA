BEGIN ~CORCUT3~

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
	== LCSAREVO
	@4 /* ~You'd dare disobey the order of a Grand Duke! I'll have your head!~ */
	= @5 /* ~Angelo! Zhalimar! Destroy them!~ */
EXIT

