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
		
		IF ~~ THEN REPLY @4037 
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4005/* ~Adjust variables.~*/
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4050
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~~ THEN REPLY @4001/* ~Cutscene Test~*/
		GOTO XA_SoD_CutsceneTest
		
		IF ~~ THEN REPLY @4012 /* ~Schael Letter Interaction (Romantic)~ */
		DO ~
			CreateCreature("BDIMOEN", [-1.-1], S)
			SetGlobal("XA_LC_SoDLetterDebug", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 2)
			ActionOverride("IMOEN", StartDialog("BDIMOEN", Player1)) 
		~
		EXIT
		
		IF ~~ THEN REPLY @4013 /* ~Corwin Letter Interaction (Non-Romantic)~ */
		DO ~
			CreateCreature("BDIMOEN", [-1.-1], S)
			SetGlobal("XA_LC_SoDLetterDebug", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 1)
			ActionOverride("IMOEN", StartDialog("BDIMOEN", Player1)) 
		~
		EXIT
		
		IF ~~ THEN REPLY @4028 /* ~Change Campaign from BGEE to SoD~ */
		DO ~
			MoveToCampaign("SoD")
		~
		GOTO XA_SoD_AreaTest
		
		IF ~~ THEN REPLY @4023 /*~Area Test~*/
		GOTO XA_SoD_AreaTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 0
		
		COPY_TRANS XALCDBG 11
	END
	
	IF ~~ THEN BEGIN XA_SoD_DreamConditionCheck
		SAY @4050
		
		IF ~
			GlobalGT("chapter","global",7)
		~ THEN REPLY @4051
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			GlobalGT("chapter","global",8)
		~ THEN REPLY @4052
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			GlobalGT("chapter","global",9)
		~ THEN REPLY @4053
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			GlobalGT("chapter","global",10)
		~ THEN REPLY @4054
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			GlobalLT("chapter","global",13)
		~ THEN REPLY @4055
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			Global("bd_ddd", "global", 0)
		~ THEN REPLY @4056
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			Global("bd_ddd", "global", 1)
		~ THEN REPLY @4057
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			Global("bd_ddd", "global", 2)
		~ THEN REPLY @4058
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			Global("bd_ddd", "global", 3)
		~ THEN REPLY @4059
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~
			!GlobalTimerNotExpired("bd_dream_timer","global")
		~ THEN REPLY @4060
		GOTO XA_SoD_DreamConditionCheck
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		COPY_TRANS XALCDBG 11
	END
	
	IF ~~ THEN BEGIN XA_SoD_AdjustExperience
		SAY @4037
		
		IF ~~ THEN REPLY @4038
		DO ~
			ChangeStat(Player1, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4039
		DO ~
			ChangeStat(Player2, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4040
		DO ~
			ChangeStat(Player3, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4041
		DO ~
			ChangeStat(Player4, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4042
		DO ~
			ChangeStat(Player5, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @4043
		DO ~
			ChangeStat(Player6, XP, 25000, ADD)
		~
		GOTO XA_SoD_AdjustExperience
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		COPY_TRANS XALCDBG 11
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
		
		COPY_TRANS XALCDBG 11
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
		
		COPY_TRANS XALCDBG 11
	END
	
	IF ~~ THEN BEGIN XA_SoD_AdjustVariables
		SAY @4005/* ~Adjust variables.~*/
		
		IF ~~ THEN REPLY @4049
		DO ~
			SetGlobalTimer("bd_dream_timer", "GLOBAL", ONE_MINUTE)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4044
		DO ~
			SetGlobal("bd_ddd","global",0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4045
		DO ~
			SetGlobal("bd_ddd","global",1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4046
		DO ~
			SetGlobal("bd_ddd","global",2)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4047
		DO ~
			SetGlobal("bd_ddd","global",3)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4048
		DO ~
			SetGlobal("XA_LC_TentCS", "GLOBAL", 0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4035
		DO ~
			SetGlobal("BD_DOD_PHYLACTERY_DESTROYED","GLOBAL",0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4036
		DO ~
			SetGlobal("BD_DOD_PHYLACTERY_DESTROYED","GLOBAL",1)
		~
		GOTO XA_SoD_AdjustVariables
		
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
		
		IF ~~ THEN REPLY @4031
		DO ~
			SetGlobal("XA_LC_CorwinContinue","GLOBAL",2)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4032
		DO ~
			SetGlobal("XA_LC_CorwinContinue","GLOBAL",1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4033
		DO ~
			SetGlobal("XA_LC_CorwinContinue","GLOBAL",0)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4034
		DO ~
			SetGlobal("XA_LC_ToldTruthBhaal", "GLOBAL", 1)
		~
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		COPY_TRANS XALCDBG 11
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
		
		IF ~~ THEN REPLY @4027 /* ~Post-Avernus Kiss~ */
		DO ~
			SetGlobal("XA_LC_SkipTo4300Kiss", "GLOBAL", 1)
			ActionOverride(Player1, LeaveAreaLUA("BD4300", "", [428.266], S))
			ActionOverride(Player2, LeaveAreaLUA("BD4300", "", [428.266], S))
			ActionOverride(Player3, LeaveAreaLUA("BD4300", "", [428.266], S))
			ActionOverride(Player4, LeaveAreaLUA("BD4300", "", [428.266], S))
			ActionOverride(Player5, LeaveAreaLUA("BD4300", "", [428.266], S))
			ActionOverride(Player6, LeaveAreaLUA("BD4300", "", [428.266], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @4029 /* ~Jail Visit (Exile)~ */
		DO ~
			SetGlobal("chapter","global",13)
			SetGlobal("bd_plot","global",600)
			SetGlobal("bd_player_exiled","global",1)
			ActionOverride(Player1, LeaveAreaLUA("bd0104", "", [395.355], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @4030 /* ~Jail Visit (Execute)~ */
		DO ~
			SetGlobal("chapter","global",13)
			SetGlobal("bd_plot","global",600)
			SetGlobal("bd_player_exiled","global",0)
			ActionOverride(Player1, LeaveAreaLUA("bd0104", "", [395.355], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_SoD_Debug
		
		COPY_TRANS XALCDBG 11
	END
END

EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @4000/* ~SoD Debug~*/
	GOTO XA_SoD_Debug
END