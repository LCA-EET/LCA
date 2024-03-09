EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @6000 /* ~RBG Debug~ */
	GOTO XA_RBG_Debug
END

APPEND ~XALCDBG~

	IF ~~ THEN BEGIN XA_RBG_Debug
		SAY @6000 /* ~Return to Baldur's Gate Debug~*/
	
		IF ~~ THEN REPLY @6020 /*~Area Test~ */
		GOTO XA_RBG_AreaTest
	
		IF ~~ THEN REPLY @6036
		GOTO XA_RBG_CutsceneTest
	
		IF ~~ THEN REPLY @6001 /* ~Item Test~*/
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6024 /* ~Text Screen Test~ */
		GOTO XA_RBG_TextScreenTest
		
		IF ~~ THEN REPLY @6016 /* ~Adjust Variables~*/
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6023 /* ~Change Worldmap (xamaprbg).~*/
		DO ~
			SetWorldmap("xamaprbg")
		~
		GOTO XA_RBG_Debug
		
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
	
	IF ~~ THEN BEGIN XA_RBG_CutsceneTest
		SAY @6036 /*~Cutscene Test~*/
		
		IF ~~ THEN REPLY @6037 /*~XACS13~*/
		DO ~
			StartCutSceneMode()
			StartCutscene("XACS13")
		~
		EXIT
		
		IF ~~ THEN REPLY @6039 /*~XACSHOW~*/
		DO ~
			StartCutSceneMode()
			StartCutscene("XACSHOW")
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_TextScreenTest
		SAY @6024
		
		IF ~~ THEN REPLY @6025 /* XABAD1 */
		DO ~
			TextScreen("XABAD1")
		~
		EXIT
		
		IF ~~ THEN REPLY @6026 /* XABAD2 */
		DO ~
			TextScreen("XABAD2")
		~
		EXIT
		
		IF ~~ THEN REPLY @6027 /* XABAD3 */
		DO ~
			TextScreen("XABAD3")
		~
		EXIT
		
		IF ~~ THEN REPLY @6028 /* XABG */
		DO ~
			TextScreen("XABG")
		~
		EXIT
		
		IF ~~ THEN REPLY @6029 /* XABGROM */
		DO ~
			TextScreen("XABGROM")
		~
		EXIT
		
		IF ~~ THEN REPLY @6030 /* XADINNER */
		DO ~
			TextScreen("XABG")
		~
		EXIT
		
		IF ~~ THEN REPLY @6031 /* XADINROM */
		DO ~
			TextScreen("XADINROM")
		~
		EXIT
		
		IF ~~ THEN REPLY @6032 /* XASARA1 */
		DO ~
			TextScreen("XASARA1")
		~
		EXIT
		
		IF ~~ THEN REPLY @6033 /* XASARA2 */
		DO ~
			TextScreen("XASARA2")
		~
		EXIT
		
		IF ~~ THEN REPLY @6034 /* XASARA3 */
		DO ~
			TextScreen("XASARA3")
		~
		EXIT
		
		IF ~~ THEN REPLY @6035 /* XASARA4 */
		DO ~
			TextScreen("XASARA4")
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_AreaTest
		SAY @6020 /* ~Area Test~*/
		
		IF ~~ THEN REPLY @6021
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA100", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6040
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA606", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA606", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA606", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA606", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA606", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA606", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6041
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA224", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA224", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA224", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA224", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA224", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA224", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6042
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA326", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA326", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA326", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA326", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA326", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA326", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6043
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA164", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA164", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA164", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA164", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA164", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA164", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6044
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA103", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA103", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA103", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA103", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA103", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA103", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6045
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA141", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA141", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA141", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA141", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA141", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA141", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6039
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XACSHOW", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XACSHOW", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XACSHOW", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XACSHOW", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XACSHOW", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XACSHOW", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6038
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAHOME", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAHOME", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAHOME", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAHOME", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAHOME", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAHOME", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6022
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAWYRM", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAWYRM", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAWYRM", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAWYRM", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAWYRM", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAWYRM", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_AdjustVariables
		SAY @6016 /* ~Adjust Variables~*/
		
		IF ~~ THEN REPLY @6019
		DO ~
			SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_ItemTest
		SAY @6001 /*  ~Item Test~ */
		 				
		IF ~~ THEN REPLY @6003/* ~Engagement Rings (Unenchanted)~*/
		DO ~
			GiveItemCreate("xaringj", Player1, 0,0,0)
			GiveItemCreate("xaringa", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6004/* ~Engagement Rings (Minor Enchantment)~*/
		DO ~
			GiveItemCreate("xarng07a", Player1, 0,0,0)
			GiveItemCreate("xarng11a", Player1, 0,0,0)
			GiveItemCreate("xarng13a", Player1, 0,0,0)
			GiveItemCreate("xarng14a", Player1, 0,0,0)
			GiveItemCreate("xarng19a", Player1, 0,0,0)
			GiveItemCreate("xarng21a", Player1, 0,0,0)
			GiveItemCreate("xarng22a", Player1, 0,0,0)
			GiveItemCreate("xarng25a", Player1, 0,0,0)
			GiveItemCreate("xarng26a", Player1, 0,0,0)
			GiveItemCreate("xarng28a", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6007/* ~Engagement Rings (Major Enchantment)~*/
		DO ~
			GiveItemCreate("xaring07", Player1, 0,0,0)
			GiveItemCreate("xaring11", Player1, 0,0,0)
			GiveItemCreate("xaring13", Player1, 0,0,0)
			GiveItemCreate("xaring14", Player1, 0,0,0)
			GiveItemCreate("xaring19", Player1, 0,0,0)
			GiveItemCreate("xaring21", Player1, 0,0,0)
			GiveItemCreate("xaring22", Player1, 0,0,0)
			GiveItemCreate("xaring25", Player1, 0,0,0)
			GiveItemCreate("xaring26", Player1, 0,0,0)
			GiveItemCreate("xaring28", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6005/* ~Lyriel's Gratitude~*/
		DO ~
			GiveItemCreate("xalyamul", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6006/* ~Demon's Gifts~*/
		DO ~
			GiveItemCreate("xachick", Player1, 0,0,0)
			GiveItemCreate("xasword", Player1, 0,0,0)
			GiveItemCreate("xaquiver", Player1, 0,0,0)
			GiveItemCreate("xamsring", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6008/* ~Beno's Head~*/
		DO ~
			GiveItemCreate("xabenohd", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6009/* ~Ledger~*/
		DO ~
			GiveItemCreate("xaledger", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6010/* ~Dragonspear Medal~*/
		DO ~
			GiveItemCreate("xamedal", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6011/* ~Shipping Manifest~*/
		DO ~
			GiveItemCreate("xamanfst", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6014/* ~Shipping Manifest~*/
		DO ~
			GiveItemCreate("xamanfs2", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6015/* ~Shipping Manifest~*/
		DO ~
			GiveItemCreate("xamanfs3", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6018/* ~Soultaker (Beno)~*/
		DO ~
			GiveItemCreate("xastdagb", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6017/*  ~Soultaker (Fake)~*/
		DO ~
			GiveItemCreate("xastdagf", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6013/* ~Rohma's Doll~*/
		DO ~
			GiveItemCreate("xardoll", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
		
	END
END	