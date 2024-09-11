//{ SARMEL01
	ADD_TRANS_TRIGGER SARMEL01 67
	~
		GlobalLT("XA_LC_MeetIllasera", "GLOBAL", 1)
	~
	
	EXTEND_BOTTOM SARMEL01 67
		IF ~
			Global("XA_LC_MeetIllasera", "GLOBAL", 1)
		~
		THEN GOTO XA_LC_IllaseraRBG
	END

	APPEND SARMEL01
		IF ~~ THEN BEGIN XA_LC_IllaseraRBG
			SAY @3 /* ~One of them was named Illasera. It was she who hounded my protected Bhaalspawn earlier and forced us to flee to Saradush, but she left weeks ago for the Sword Coast.~ */
			
			IF ~
				!IsValidForPartyDialogue("XACORWIN")
			~ THEN REPLY #66311 /* ~That one I also killed. What others are there?~ */
			GOTO 69
			
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN
			EXTERN XACOR25J XA_SARMEL01_68
		END

		IF ~~ THEN BEGIN XA_SARMEL01_68_2
			SAY @0 /* ~Oh, dear! I trust your daughter is alright?~ */
			
			IF ~~ THEN
			EXTERN XACOR25J XA_SARMEL01_68_3
		END
		
		IF ~~ THEN BEGIN XA_SARMEL01_68_4
			SAY @1 /* ~I'm glad to hear that your child is fine... but I've not heard of the Five before.~ */
			
			IF ~~ THEN REPLY @2 /* ~That's odd. I'd have thought that someone with as much knowledge on the matter would be familiar with them. In any case, with Illasera gone, what other Bhaalspawn should I be concerned with?~ */
			GOTO 69
		END
	END
//}