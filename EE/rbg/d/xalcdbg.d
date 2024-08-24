EXTEND_BOTTOM XALCDBG 13
	IF ~~ THEN REPLY @6000 /* ~RBG Debug~ */
	GOTO XA_RBG_Debug
END

APPEND ~XALCDBG~

	IF ~~ THEN BEGIN XA_RBG_Debug
		SAY @6000 /* ~Return to Baldur's Gate Debug~*/
	
		IF ~~ THEN REPLY @6020 /*~Area Test~ */
		GOTO XA_RBG_AreaTest
	
		IF ~~ THEN REPLY @6036 /* Cutscene Test */
		GOTO XA_RBG_CutsceneTest
	
		IF ~~ THEN REPLY @6001 /* ~Item Test~*/
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6024 /* ~Text Screen Test~ */
		GOTO XA_RBG_TextScreenTest
		
		IF ~~ THEN REPLY @6016 /* ~Adjust Variables~*/
		GOTO XA_RBG_AdjustVariables
				
		IF ~~ THEN REPLY @6054 /* ~Interaction Test~*/
		GOTO XA_RBG_InteractionTest
		
		IF ~~ THEN REPLY @6069 /* ~Store Test~*/
		GOTO XA_RBG_StoreTest
		
		IF ~~ THEN REPLY @6023 /* ~Change Worldmap (xamaprbg).~*/
		DO ~
			SetWorldmap("xamaprbg")
		~
		GOTO XA_RBG_Debug
		
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
	
	IF ~~ THEN BEGIN XA_RBG_StoreTest
		SAY @6069
		
		IF ~~ THEN REPLY @6070
		DO ~
			StartStore("XAMELKOR", LastTalkedToBy(Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @6071
		DO ~
			StartStore("XAWVBAR", LastTalkedToBy(Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_InteractionTest
		SAY @6054
		
		IF ~~ THEN REPLY @6091
		DO ~
			Kill("XACORWIN")
		~
		EXIT
		
		IF ~~ THEN REPLY @6092
		DO ~
			ApplyDamage("XACORWIN",255,PIERCING)
		~
		EXIT
		
		IF ~~ THEN REPLY @6055
		DO ~
			CreateCreature("XANARZU", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @6087
		DO ~
			CreateCreature("XAPAUSE", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @6088
		DO ~
			CreateCreature("XAREWIND", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 9
		
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
		
		IF ~~ THEN REPLY @6064 
		DO ~
			StartCutSceneMode()
			StartCutscene("XAG1ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @6063 
		DO ~
			StartCutSceneMode()
			StartCutscene("XAG2ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @6061 
		DO ~
			StartCutSceneMode()
			StartCutscene("XAG3ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @6066 
		DO ~
			StartCutSceneMode()
			StartCutscene("XAPROPOS")
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 9
		
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
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_AreaTest
		SAY @6020 /* ~Area Test~*/
		
		IF ~~ THEN REPLY @6021/* @6021=~Wyrm's Crossing (AR0900 / XAA100)~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAA100", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAA100", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6044/* @6044=~XAA104 (AR0800)~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa104", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa104", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa104", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa104", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa104", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa104", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6049/* @6049=~XAA138 (AR0103)~*/
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa138", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa138", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa138", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa138", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa138", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa138", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6045/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa145", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa145", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa145", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa145", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa145", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa145", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6043/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa168", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa168", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa168", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa168", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa168", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa168", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6041/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa228", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa228", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa228", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa228", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa228", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa228", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6046/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa290", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa290", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa290", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa290", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa290", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa290", "", [0.0], S))
		~
		EXIT
		
		
		IF ~~ THEN REPLY @6047/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa291", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa291", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa291", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa291", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa291", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa291", "", [0.0], S))
		~
		EXIT
		
		
		IF ~~ THEN REPLY @6048/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa475", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa475", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa475", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa475", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa475", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa475", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6040/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa592", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa592", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa592", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa592", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa592", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa592", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6059/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa106", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa106", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa106", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa106", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa106", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa106", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6042/* */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaa330", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaa330", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaa330", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaa330", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaa330", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaa330", "", [0.0], S))
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
		
		IF ~~ THEN REPLY @6053
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XADEMSAN", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6076
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xaducal", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xaducal", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xaducal", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xaducal", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xaducal", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xaducal", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6075
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XADUC2", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XADUC2", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XADUC2", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XADUC2", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XADUC2", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XADUC2", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6057
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XADUC3", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XADUC3", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XADUC3", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XADUC3", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XADUC3", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XADUC3", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6065
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG1", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAG1", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAG1", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAG1", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAG1", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAG1", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6062
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG2", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAG2", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAG2", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAG2", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAG2", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAG2", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6060
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG3", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAG3", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAG3", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAG3", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAG3", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAG3", "", [0.0], S))
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
		
		IF ~~ THEN REPLY @6051
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAKIDNAP", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6056
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAPAINT1", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6050
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAUC", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAUC", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAUC", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAUC", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAUC", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAUC", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6058
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAUCTEMP", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @6052
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("XAWLHOM", "", [0.0], S))
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
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_AdjustVariables
		SAY @6016 /* ~Adjust Variables~*/
		
		IF ~~ THEN REPLY @6068
		DO ~
			SetGlobal("XA_LC_SavedTimotey", "GLOBAL", 2)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6019
		DO ~
			SetGlobal("XA_LC_ReturnToBG", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6077
		DO ~
			SetGlobal("XA_LC_CorwinLeaveForFamily_Hours", "GLOBAL", 0)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6078
		DO ~
			SetGlobal("XA_LC_NebSewerTest", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6079
		DO ~
			SetGlobal("XA_LC_HelmQuestAlreadyDone", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6080
		DO ~
			SetGlobal("XA_LC_HelmQuestAlreadyDone", "GLOBAL", 0)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6081
		DO ~
			SetGlobal("XA_LC_SavedAldeth", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6082
		DO ~
			SetGlobal("XA_LC_SavedAldeth", "GLOBAL", 0)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6083
		DO ~
			SetGlobal("XA_LC_SavedJhasso", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6084
		DO ~
			SetGlobal("XA_LC_SavedJhasso", "GLOBAL", 0)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6085
		DO ~
			SetGlobal("XA_LC_SkieModActive", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6086
		DO ~
			SetGlobal("XA_LC_SkieModActive", "GLOBAL", 0)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6089
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6090
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 2)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @6102
		DO ~
			SetGlobal("XA_LC_BackToBG_Imoen2","GLOBAL",1)
		~
		GOTO XA_RBG_AdjustVariables
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_RBG_ItemTest
		SAY @6001 /*  ~Item Test~ */
		
		IF ~~ THEN REPLY @6067 /* ~Basilisk Figurine~*/
		DO ~
			GiveItemCreate("xabasfig", Player1, 1,1,1)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6067 /* ~Basilisk Figurine~*/
		DO ~
			GiveItemCreate("xabasfig", Player1, 1,1,1)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6072 /* ~Dragon Armor (xadarmor)~*/
		DO ~
			GiveItemCreate("xadarmor", Player1, 1,1,1)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6073 /* ~Dragonskin Robe (xadrobe)~*/
		DO ~
			GiveItemCreate("xadrobe", Player1, 1,1,1)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6074 /* ~Dragonscale Shield (xadshld)~*/
		DO ~
			GiveItemCreate("xadshld", Player1, 1,1,1)
		~
		GOTO XA_RBG_ItemTest
		
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
		GOTO 9
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
		
	END
END	