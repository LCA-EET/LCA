BEGIN ~XAROHMA4~

IF ~
	GlobalLT("XA_RohmaWraith", "GLOBAL", 1)
~ THEN BEGIN XA_RohmaWraith
	SAY @0 /* ~Mommy? Mommy!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_RohmaWraith", "GLOBAL", 1)
	~
	EXTERN XACOR25J XA_RohmaWraithChain
END