BEGIN ~XADINGS~

IF ~~ THEN BEGIN XA_LC_DingsCorwinEnd
	SAY @5  /* ~Meow.~ */
	
	IF ~~ THEN
	DO ~
		DestroySelf()
	~
	EXIT
END

CHAIN XACORWIJ XA_LC_Chain_DingsCorwin2
	@1  /* ~Dings! What is it boy? Do you want a tummy rub?~ */
	
	== XADINGS
	@2  /* ~Mew.~ */
	
	== XACORWIJ
	@3  /* ~Come to mama!~*/
	
	== XADINGS
	@4  /* Purr. */
END XACORWIJ XA_LC_Chain_DingsCorwin2_END
