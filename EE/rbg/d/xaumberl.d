BEGIN ~XAUMBERL~

IF ~
	True()
~ THEN BEGIN XA_NotWelcome
	SAY @0 /*~You've no business here. Leave, or risk the wrath of the Bitch Queen!~*/
	
	IF ~~ THEN
	DO ~
		SetDialog("XAA217")
	~
	EXIT
END