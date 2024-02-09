BEGIN ~XADINGS~

IF ~
	Global("XA_LC_DingsRohma", "GLOBAL", 2)
~ THEN BEGIN XA_LC_DingsRohma
	SAY @5  /* ~Meow.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_DingsRohma", "GLOBAL", 3)
	~
	EXTERN XAROHMA XA_LC_Chain_DingsRohma
END


IF ~
	Global("XA_LC_DingsCorwin", "GLOBAL", 2)
~ THEN BEGIN XA_LC_DingsCorwin
	SAY @0  /* ~Meow!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_DingsCorwin", "GLOBAL", 3)
	~
	EXTERN XACORWIB XA_LC_Chain_DingsCorwin2
END

IF ~~ THEN BEGIN XA_LC_DingsCorwinEnd
	SAY @5  /* ~Meow.~ */
	
	IF ~~ THEN
	DO ~
		DestroySelf()
	~
	EXIT
END

CHAIN XAROHMA XA_LC_Chain_DingsRohma
	@6  /* ~A kitty! What's her name?~ */
	
	== XACORWIJ
	@7  /*~It's a boy, hon. His name is Dings.~ */
	
	== XAROHMA
	@8  /* ~He's so pretty! Can I pet him?~*/
	
	== XACORWIJ
	@9  /*~Of course, sweetie.~ */
	
	== XADINGS
	@10  /* ~Purr.~*/
	
	== XACORWIJ
	@11  /* ~What do you think, father? Should we keep him?~*/
	
	== XAAUDAM
	@12  /* ~Rohma, do you promise to take good care of him? It's a big responsibility.~*/
	
	== XAROHMA
	@13  /* ~Yes grandpa! I will, I promise!~ */
	DO ~
		SetGlobal("XA_LC_Journal_Dings2", "GLOBAL", 1)
	~
	== XACORWIJ
	@14  /* ~Good.~*/
END XACORWIJ XA_CorwinFamilyReuniteSwitch

CHAIN XACORWIB XA_LC_Chain_DingsCorwin2
	@1  /* ~Dings! What is it boy? Do you want a tummy rub?~ */
	
	== XADINGS
	@2  /* ~Mew.~ */
	
	== XACORWIB
	@3  /* ~Come to mama!~*/
	
	== XADINGS
	@4  /* Purr. */
END XACORWIB XA_LC_Chain_DingsCorwin2_END
