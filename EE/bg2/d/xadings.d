BEGIN ~XADINGS~

IF ~
	Global("XA_LC_DingsCorwin", "GLOBAL", 2)
~ THEN BEGIN XA_Meow
	SAY @5 /*~Meow.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_DingsCorwin", "GLOBAL", 3)
	~
	EXTERN XACORWIJ XA_LC_Chain_DingsCorwin2
END

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
