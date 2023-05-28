BEGIN ~CORCUT3~

IF ~
	!Global("LCA_CorCut3", "GLOBAL", 1)
~ THEN BEGIN LCA_CorCut3
	SAY @0 /*  ~Sarevok! By the order of Dukes Jannath and Belt, you are under arrest!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorCut3", "GLOBAL", 1)
	~
	GOTO LCA_G2Chain
END

CHAIN LCSAREVO LCA_G2Chain
	@1387 /* ~<CHARNAME> has horns, you dummy.~ */
	== LCORPH04
	@1388 /* ~Yeah! And a tail!~ */
	== LCORPH05
	@1389 /*  ~With spikes!~ */
	== LCORPH06
END

