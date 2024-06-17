
//{ BAERIE
EXTEND_BOTTOM BAERIE 112
	IF ~
		!GlobalGT("XA_LC_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @0 /* ~I've met one of your kind before.~ */
	GOTO XA_Ashatiel
	
	IF ~
		GlobalGT("XA_LC_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @3 /* ~Schael's already told you of my experience with Ashatiel. Could you tell me more about your people? Your society?~ */
	GOTO 114
	
	IF ~
		GlobalGT("XA_LC_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @5 /* ~Schael's already told you of my experience with Ashatiel. We really should get moving.~ */
	GOTO 116
END

APPEND BAERIE
	IF ~~ THEN BEGIN XA_Ashatiel
		SAY @1 /* ~R-really? When? What were they l-like?~ */
		
		IF ~~ THEN REPLY @2 /* ~It was during the Dragonspear campaign. Aerie... I'm sorry. I'd rather not talk about it.~ */
		GOTO 116
		
		IF ~~ THEN REPLY @4 /* ~It doesn't matter. Could you tell me more about your people? Your society?~ */
		GOTO 114
	END
END

//}
