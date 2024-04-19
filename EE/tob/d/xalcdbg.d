EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @7000 /* ~ToB Debug~ */
	GOTO XA_ToB_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_ToB_Debug
		SAY @7000

		IF ~~ THEN REPLY @6020 /* ~Area Test~*/
		GOTO XA_ToB_AreaTest
		
		IF ~~ THEN REPLY @7002 /* ~Spawn Caelar (XACAELAR) and add her to the party.~~*/
		DO ~
			CreateCreature("XACAELAR", [-1.-1], N)
			ActionOverride("XACAELAR", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 10
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_ToB_AreaTest
		SAY @6020 /* ~Area Test~*/
		
		IF ~~ THEN REPLY @7001 /* ~XAG104 (BD5300) - Kanaglym~ */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG104", "", [665.325], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_ToB_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
END