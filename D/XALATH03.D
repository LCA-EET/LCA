BEGIN ~XALATH03~

IF ~~ THEN BEGIN XA_ToldALie
	SAY @0 /* ~Hm... <PRO_HESHE> lies, Bonaiutus.~*/
	
	IF ~~ THEN 
	EXTERN XALATH01 XA_ToldALie2
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @1 /* ~Seventh, I'm afraid.~ */
	
	IF ~~ THEN 
	EXTERN XALATH01 XA_HowMany2
END

IF ~~ THEN BEGIN XA_Reattach
	SAY @2 /* ~Of course, brother. But I've never had to reattach a head before... let alone one in such a condition.~ */
	
	IF ~~ THEN 
	EXTERN XALATH01 XA_Reattach2
END

IF ~~ THEN BEGIN XA_Reattach3
	SAY @3 /* ~I thought I'd suppressed that memory, but thank you for reminding me. Really. Thank you.~*/
	
	IF ~~ THEN 
	EXTERN XALATH01 XA_Reattach4A
END