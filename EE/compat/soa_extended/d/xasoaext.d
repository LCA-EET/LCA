APPEND XACORWIJ
	IF ~
		Global("XA_LC_BackToBG", "GLOBAL", 1)
		Global("XA_LC_SoAExtended", "GLOBAL", 1)
	~ THEN BEGIN XA_BackToBG_SoA_Extended
		SAY @0 /*@0 = ~You're looking well.~*/
		
		IF ~~ THEN REPLY @1 /*@1 = ~Thanks.~*/
		GOTO XA_BackToBG_SoA_Extended_2
		
		IF ~~ THEN REPLY @2 /* @2 = ~I feel a lot better.~*/
		GOTO XA_BackToBG_SoA_Extended_2
		
		IF ~~ THEN REPLY @3 /*@3 = ~A good, long rest was just what the doctor ordered.~*/
		GOTO XA_BackToBG_SoA_Extended_2
	END
	
	IF ~~ THEN BEGIN XA_BackToBG_SoA_Extended_2
		SAY @4 /*~All this talk of a festival...~*/
		
		IF ~~ THEN
		GOTO 83
	END
END

INTERJECT_COPY_TRANS C0X1ELLE 24 XA_C0X1ELLE_24
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@5 /*~@5 = ~<CHARNAME>, I can't wait any longer. I'm returning home — my city and my family need me. Farewell.~ */
	DO ~
		LeaveParty()
	~
END