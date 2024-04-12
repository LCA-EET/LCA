APPEND ~XADINGS~

	IF ~
		Global("XA_LC__DingsRohma", "GLOBAL", 2)
	~ THEN BEGIN XA_LC_DingsRohma
		SAY @5  /* ~Meow.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC__DingsRohma", "GLOBAL", 3)
		~
		EXTERN XAROHMA XA_LC_Chain_DingsRohma
	END

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
		SetGlobal("XA_LC__Journal_Dings2", "GLOBAL", 1)
	~
	== XACORWIJ
	@14  /* ~Good.~*/
END XACORWIJ XA_CorwinFamilyReuniteSwitch

