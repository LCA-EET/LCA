EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @4000/* ~SoD Debug~*/
	GOTO XA_SoD_Debug
END

APPEND XALCDBG
	IF ~~ THEN BEGIN XA_SoD_Debug
		SAY @4000/* ~SoD Debug~*/
		
		IF ~~ THEN REPLY @4004 /* ~Create Corwin, and add her to the party.~*/
		DO ~
			CreateCreature("CORWIN7", [-1.-1], S)
			ActionOverride("Corwin", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @3001
		GOTO XA_SoD_ItemTest
		
		IF ~~ THEN REPLY @4005/* ~Adjust variables.~*/
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4001/* ~Cutscene Test~*/
		GOTO XA_SoD_CutsceneTest
		
		IF ~~ THEN REPLY @4012 /* ~Corwin Letter Interaction (Romantic)~ */
		DO ~
			CreateCreature("BDIMOEN", [-1.-1], S)
			SetGlobal("XA_LC_SoDLetterDebug", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 2)
			ActionOverride("IMOEN", StartDialog("BDIMOEN", Player1)) 
		~
		EXIT
		
		IF ~~ THEN REPLY @4013 /* ~Corwin Letter Interaction (Romantic)~ */
		DO ~
			CreateCreature("BDIMOEN", [-1.-1], S)
			SetGlobal("XA_LC_SoDLetterDebug", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 1)
			ActionOverride("IMOEN", StartDialog("BDIMOEN", Player1)) 
		~
		EXIT
		
		IF ~~ THEN REPLY @4023 /*~Area Test~*/
		GOTO XA_SoD_AreaTest
		
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
	
	IF ~~ THEN BEGIN XA_SoD_AreaTest
		SAY @4023 /*~Area Test~*/
		
		IF ~~ THEN REPLY @4024 /* BD1000 */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("BD1000", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("BD1000", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("BD1000", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("BD1000", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("BD1000", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("BD1000", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @4025 /* BD3000 */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("BD3000", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("BD3000", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("BD3000", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("BD3000", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("BD3000", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("BD3000", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @4026 /* BD7100 */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("BD7100", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("BD7100", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("BD7100", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("BD7100", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("BD7100", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("BD7100", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_SoD_ItemTest
		SAY @3001 /* ~Item Test~*/
		
		IF ~~ THEN REPLY @4017 /*All SoD Items~ */
		DO ~
			GiveItemCreate("xaltrsch", Player1, 0,0,0)
			GiveItemCreate("xaltrcor", Player1, 0,0,0)
			GiveItemCreate("xaamulet", Player1, 0,0,0)
		~
		GOTO XA_SoD_ItemTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_SoD_AdjustVariables
		SAY @4005/* ~Adjust variables.~*/
		
		IF ~~ THEN REPLY @4006
		DO ~
			SetGlobal("bd_corwin_romanceactive","global",0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4007
		DO ~
			SetGlobal("bd_corwin_romanceactive","global",1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4008
		DO ~
			SetGlobal("bd_corwin_romanceactive","global",2)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4009
		DO ~
			SetGlobal("bd_corwin_romanceactive","global",3)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4010
		DO ~
			SetGlobal("bd_player_exiled","global",0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4011
		DO ~
			SetGlobal("bd_player_exiled","global",1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4021
		DO ~
			SetGlobal("XA_LC_VaiBoost","GLOBAL",1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4022
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 3)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
		
	END
	IF ~~ THEN BEGIN XA_SoD_CutsceneTest
		SAY @4001 /* ~Cutscene Test~*/
		
		IF ~~ THEN REPLY @4002/*  ~Tent Cutscene (XATNTCS)~*/
		DO ~
			StorePartyLocations()
			StartCutsceneMode()
			StartCutscene("XATNTCS")
		~
		EXIT
		
		IF ~~ THEN REPLY @4003/*~Archery Lesson (XALBPROF)~ */
		DO ~
			StorePartyLocations()
			StartCutsceneMode()
			StartCutscene("XALBPROF")
		~
		EXIT
		
		IF ~~ THEN REPLY @4020/*~Escape from Avernus (BDCUT59A)~ */
		DO ~
			StorePartyLocations()
			StartCutsceneMode()
			StartCutscene("BDCUT59A")
		~
		EXIT
		
		IF ~~ THEN REPLY @4018/* ~Trial Cutscene (Ashatiel honorable duel.)~*/
		DO ~
			SetGlobal("bd_asha_duel", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinWitnessedDuel", "GLOBAL", 2)
			StartCutsceneMode()
			StartCutscene("bdcut61t")
		~
		EXIT
		
		IF ~~ THEN REPLY @4019/* ~Trial Cutscene.~*/
		DO ~
			SetGlobal("bd_asha_duel", "GLOBAL", 1)
			StartCutsceneMode()
			StartCutscene("bdcut61t")
		~
		EXIT
		
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
END