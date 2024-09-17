
//{ BAERIE
EXTEND_BOTTOM BAERIE 112
	IF ~
		TriggerOverride("Aerie", GlobalLT("XA_LC_CorwinBanters", "LOCALS", 3))
	~ THEN REPLY @0 /* ~I've met one of your kind before.~ */
	GOTO XA_Ashatiel
	
	IF ~
		TriggerOverride("Aerie", GlobalGT("XA_LC_CorwinBanters", "LOCALS", 2))
	~ THEN REPLY @3 /* ~Schael's already told you of my experience with Ashatiel. Could you tell me more about your people? Your society?~ */
	GOTO 114
	
	IF ~
		TriggerOverride("Aerie", GlobalGT("XA_LC_CorwinBanters", "LOCALS", 2))
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
