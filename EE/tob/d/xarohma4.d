BEGIN ~XAROHMA4~

IF ~
	GlobalLT("XA_RohmaWraith", "GLOBAL", 1)
~ THEN BEGIN XA_RohmaWraith
	SAY @0 /* ~Mommy? Mommy!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_RohmaWraith", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_RohmaWraithChain
END