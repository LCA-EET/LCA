BEGIN ~XABARTML~

IF ~
	True()
~ THEN BEGIN XA_Welcome
	SAY @0
	
	IF ~~ THEN REPLY @1
	DO ~
		StartStore("xabartml", LastTalkedToBy())
	~
	EXIT
	
	IF ~~ THEN REPLY @2
	EXIT
END

