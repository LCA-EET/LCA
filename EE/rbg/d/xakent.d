BEGIN ~XAKENT~

IF ~
	GlobalGT("XA_RohmaKidnapped", "GLOBAL", 0)
	IsGabber("XACORWIN")
~ THEN BEGIN XAA0
	SAY @1 /* ~Be careful, Major.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	GlobalGT("XA_RohmaKidnapped", "GLOBAL", 0)
~ THEN BEGIN XAA1
	SAY @0 /* ~Tread carefully.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	GlobalLT("XA_RohmaKidnapped", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
	!Global("XA_KentGreeting", "LOCALS", 1)
~
THEN BEGIN XAA2
	SAY @2 /* ~Captain, <CHARNAME>, welcome home.~ */
	
	IF ~~ THEN REPLY @3 /* ~Thank you, Kent. It's good to see you again.~ */
	DO ~
		SetGlobal("XA_KentGreeting", "LOCALS", 1)
	~
	GOTO XAA1
END

IF ~
	GlobalLT("XA_RohmaKidnapped", "GLOBAL", 1)
	Global("XA_KentGreeting", "LOCALS", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN XAA3
	SAY @4 /* ~Marshal Nederlok is in his office if you need to see him. First door on my right.~*/
	IF ~~ THEN REPLY @5 /* ~Understood.~ */
	EXIT
END

