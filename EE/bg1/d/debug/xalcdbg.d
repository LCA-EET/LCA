EXTEND_BOTTOM XALCDBG 13
	IF ~~ THEN REPLY @3000 /* ~BG1 Debug~ */
	GOTO XA_BG1_Debug
END

APPEND XALCDBG
	IF ~~ THEN BEGIN XA_BG1_Debug
		SAY @3000 /* ~BG1 Debug~ */
		
		IF ~~ THEN REPLY @3001 /* Item Test */
		GOTO XA_BG1_ItemTest
		
		IF ~~ THEN REPLY @3006 /* ~Area Test~*/
		GOTO XA_BG1_AreaTest
	END

	IF ~~ THEN BEGIN XA_BG1_ItemTest
		SAY @3001/* ~Item Test~*/
		
		IF ~~ THEN REPLY @3002/* ~xaambelt.itm~*/
		DO ~
			GiveItemCreate("xaambelt", Player1, 0,0,0)
		~
		GOTO XA_BG1_ItemTest
		
		IF ~~ THEN REPLY @3003/* ~xaffbook.itm~*/
		DO ~
			GiveItemCreate("xaffbook", Player1, 0,0,0)
		~
		GOTO XA_BG1_ItemTest
		
		IF ~~ THEN REPLY @3004/* ~xaltrbrn.itm~*/
		DO ~
			GiveItemCreate("xaltrbrn", Player1, 0,0,0)
		~
		GOTO XA_BG1_ItemTest
		
		IF ~~ THEN REPLY @3005/* ~All BG1 Items~*/
		DO ~
			GiveItemCreate("xaambelt", Player1, 0,0,0)
			GiveItemCreate("xaffbook", Player1, 0,0,0)
			GiveItemCreate("xaltrbrn", Player1, 0,0,0)
		~
		GOTO XA_BG1_ItemTest

		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 13
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_BG1_AreaTest
		SAY @3006 /*~Area Test~ */
		
		IF ~~ THEN REPLY @3007/*~AR1316 - Corwin's Home, L1~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR1316", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3008/* ~BG1316 - Corwin's Home, L1~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("BG1316", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3009/* ~AR1317 - Corwin's Home, L2~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR1317", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3010/* ~BG1317 - Corwin's Home, L2~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR1317", "", [0.0], S))
		~
		EXIT
	END
END