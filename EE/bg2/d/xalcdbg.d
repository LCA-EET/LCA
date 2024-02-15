EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @5000 /* ~BG2 Debug~ */
	GOTO XA_BG2_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_BG2_Debug
		SAY @5000 
		
		IF ~~ THEN REPLY @5001
		GOTO XA_BG2_AreaTest
		
		IF ~~ THEN REPLY @5008
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5025
		GOTO XA_BG2_CutsceneTest
		
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
	
	IF ~~ THEN BEGIN XA_BG2_AreaTest
		SAY @5001
		
		IF ~~ THEN REPLY @5002
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xa1000", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5003
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xacs05", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5004
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xacs06", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5005
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xacs12", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5006
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xacs13", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5007
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xapen", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_BG2_ItemTest
		SAY @5008
		
		IF ~~ THEN REPLY @5009
		DO ~
			GiveItemCreate("xaamul2", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5010
		DO ~
			GiveItemCreate("xacorbg3", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5011
		DO ~
			GiveItemCreate("xacorbg4", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5012
		DO ~
			GiveItemCreate("xacorbo3", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5013
		DO ~
			GiveItemCreate("xacorbod", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5014
		DO ~
			GiveItemCreate("xacorbow", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5015
		DO ~
			GiveItemCreate("xacorch4", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5016
		DO ~
			GiveItemCreate("xacorchn", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5017
		DO ~
			GiveItemCreate("xalcor1a", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5018
		DO ~
			GiveItemCreate("xalcor2a", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5019
		DO ~
			GiveItemCreate("xalcorw1", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5020
		DO ~
			GiveItemCreate("xalcorw2", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest

		IF ~~ THEN REPLY @5021
		DO ~
			GiveItemCreate("xaldunc", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5022
		DO ~
			GiveItemCreate("xaldunca", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5023
		DO ~
			GiveItemCreate("xastdag", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5024
		DO ~
			GiveItemCreate("xaamul2", Player1, 0,0,0)
			GiveItemCreate("xacorbg3", Player1, 0,0,0)
			GiveItemCreate("xacorbg4", Player1, 0,0,0)
			GiveItemCreate("xacorbo3", Player1, 0,0,0)
			GiveItemCreate("xacorbod", Player1, 0,0,0)
			GiveItemCreate("xacorbow", Player1, 0,0,0)
			GiveItemCreate("xacorch4", Player1, 0,0,0)
			GiveItemCreate("xacorchn", Player1, 0,0,0)
			GiveItemCreate("xalcor1a", Player1, 0,0,0)
			GiveItemCreate("xalcor2a", Player1, 0,0,0)
			GiveItemCreate("xalcorw1", Player1, 0,0,0)
			GiveItemCreate("xalcorw2", Player1, 0,0,0)
			GiveItemCreate("xaldunc", Player1, 0,0,0)
			GiveItemCreate("xaldunca", Player1, 0,0,0)
			GiveItemCreate("xastdag", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_BG2_CutsceneTest
		SAY @5025
		
		IF ~~ THEN REPLY @5026
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs02a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5027
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs03a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5028
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs04a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5029
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs05a")
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
END