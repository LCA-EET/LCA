BEGIN ~XACAELAJ~

IF ~
	Global("XA_CaelarLeftPoorRep", "GLOBAL", 1)
~ THEN BEGIN XA_RepBreak
	SAY #268343 /*This is wrong. I'll not stand by and watch you make a mockery of all the principles I hold to. We part ways here.*/
	
	IF ~~ THEN
	DO ~
	
	~
	EXIT

END

IF ~
	Global("XA_CaelarRepWarning", "GLOBAL", 2)
~ THEN BEGIN XA_RepWarning
	SAY #268342 /*We wander too far into darkness. Put me or another righteous soul in charge. I will soon steer us back on course.*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CaelarRepWarning", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CaelarSarvolo
	SAY @0 /*~<CHARNAME> and <PRO_HISHER> companions freed me from the clutches of an extraordinarily powerful demon. An action that has earned them my eternal gratitude. I will support <CHARNAME> in any way that I can.~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_CaelarSarvolo2
END
