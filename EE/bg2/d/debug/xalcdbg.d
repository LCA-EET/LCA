EXTEND_BOTTOM XALCDBG 13
	IF ~~ THEN REPLY @5000 /* ~BG2 Debug~ */
	GOTO XA_BG2_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_BG2_Debug
		SAY @5000 
		
		IF ~~ THEN REPLY @5083
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5001
		GOTO XA_BG2_AreaTest
		
		IF ~~ THEN REPLY @5008
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5025
		GOTO XA_BG2_CutsceneTest
		
		IF ~~ THEN REPLY @5032
		DO ~
			SetGlobal("XA_LC_CorwinDebug1002", "GLOBAL", 1)
			SetGlobal("XA_LC_SkieSaved", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 2)
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5122
		DO ~
			ActionOverride(Player1, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5123
		DO ~
			ActionOverride(Player2, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5124
		DO ~
			ActionOverride(Player3, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5125
		DO ~
			ActionOverride(Player4, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5126
		DO ~
			ActionOverride(Player5, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5127
		DO ~
			ActionOverride(Player6, SetGlobal("XA_LC_CorwinBanters", "LOCALS", 0))
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5033 /* Reset Corwin's Banters. */
		DO ~
			SetGlobal("XA_LC_ResetCorwinBanters", "GLOBAL", 1)
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5157 /* ~Re-apply Parameters~*/
		DO ~
			SetGlobal("XA_LC_SetParams", "GLOBAL", 1)
			CreateCreature("xalcargs", [-1.-1], S)
		~
		EXIT
		
		IF ~~ THEN REPLY @5034 /* ~Parameter Check.~ */
		GOTO XA_BG2_ParameterCheck
		
		IF ~~ THEN REPLY @5075 /* ~Interaction Test~*/
		GOTO XA_BG2_InteractionTest
		
		IF ~~ THEN REPLY @5082 /* ~Perform BG2 Final Save.~*/
		//DO ~
		//	FinalSave()
		//~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5095
		GOTO XA_BG2_SpellTest
		
		IF ~~ THEN REPLY @5090 /* ~Spawn Corwin (XACORWIN) and add her to the party.~ */
		DO ~
			CreateCreature("XACORWIN", [-1.-1], S)
			ActionOverride("XACORWIN", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @5150
		DO ~
			SetGlobal("XA_LC_IrenicusDead", "GLOBAL", 1)
			ActionOverride(Player1,LeaveAreaLUA("XACS13","",[467.264],N))
			ActionOverride(Player2,LeaveAreaLUA("XACS13","",[519.262],S))
			ActionOverride(Player3,LeaveAreaLUA("XACS13","",[420.274],SSW))
			ActionOverride(Player4,LeaveAreaLUA("XACS13","",[569.275],S))
			ActionOverride(Player5,LeaveAreaLUA("XACS13","",[365.290],SSW))
			ActionOverride(Player6,LeaveAreaLUA("XACS13","",[616.295],S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5077 /* ~Music Test~*/
		GOTO XA_BG2_MusicTest
		
		IF ~~ THEN REPLY @5128
		GOTO XA_BG2_CheckBantersPending
		
		IF ~~ THEN REPLY @5114
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 13
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_BG2_CheckBantersPending
		SAY @5128
		
		IF ~
			TriggerOverride(Player1,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5144
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player2,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5145
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player3,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5146
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player4,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5147
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player5,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5148
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player6,LocalsLT("XA_LC_CorwinBanters","XA_LC_CorwinBantersEnd"))
		~ THEN REPLY @5149
		GOTO XA_BG2_Debug
		
		IF ~
			GlobalTimerExpired("XA_LC_BanterTimer","LOCALS")
		~ THEN REPLY @5142
		GOTO XA_BG2_Debug
		
		IF ~
			!GlobalTimerExpired("XA_LC_BanterTimer","LOCALS")
		~ THEN REPLY @5143
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 0))
		~ THEN REPLY @5135
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 1))
		~ THEN REPLY @5136
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 2))
		~ THEN REPLY @5137
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 3))
		~ THEN REPLY @5138
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 4))
		~ THEN REPLY @5139
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 5))
		~ THEN REPLY @5140
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride("XACORWIN", Global("XA_LC_BanterTarget", "LOCALS", 6))
		~ THEN REPLY @5141
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player1, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5129
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player2, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5130
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player3, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5131
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player4, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5132
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player5, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5133
		GOTO XA_BG2_Debug
		
		IF ~
			TriggerOverride(Player6, Global("XA_LC_CorwinBanterPending", "LOCALS", 1))
		~ THEN REPLY @5134
		GOTO XA_BG2_Debug
		
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END

	IF ~~ THEN BEGIN XA_BG2_Sex2ConditionCheck
		SAY @5114
		
		IF ~TriggerOverride("XACORWIN", GlobalLT("XA_LC_Sex2TimerSet", "LOCALS", 1))~ THEN REPLY @5098
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!TriggerOverride("XACORWIN", GlobalLT("XA_LC_Sex2TimerSet", "LOCALS", 1))~ THEN REPLY @5099
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)~ THEN REPLY @5100
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)~ THEN REPLY @5101
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~GlobalTimerExpired("XA_LC_CorwinSex_2_Timer", "GLOBAL")~ THEN REPLY @5102
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!GlobalTimerExpired("XA_LC_CorwinSex_2_Timer", "GLOBAL")~ THEN REPLY @5103
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~GlobalLT("XA_LC_CorwinSex_2", "GLOBAL", 1)~ THEN REPLY @5104
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!GlobalLT("XA_LC_CorwinSex_2", "GLOBAL", 1)~ THEN REPLY @5105
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~TriggerOverride("XACORWIN", Global("XA_LC_CanTalkToPlayer", "LOCALS", 1))~ THEN REPLY @5106
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!TriggerOverride("XACORWIN", Global("XA_LC_CanTalkToPlayer", "LOCALS", 1))~ THEN REPLY @5107
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~GlobalLT("XA_LC_CorwinSex2_Init", "GLOBAL", 1)~ THEN REPLY @5108
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!GlobalLT("XA_LC_CorwinSex2_Init", "GLOBAL", 1)~ THEN REPLY @5109
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~Global("XA_LC_CorwinCanHaveSex", "GLOBAL", 1)~ THEN REPLY @5110
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!Global("XA_LC_CorwinCanHaveSex", "GLOBAL", 1)~ THEN REPLY @5111
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~Global("XA_LC_CorwinCanHeal", "GLOBAL", 1)~ THEN REPLY @5112
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~!Global("XA_LC_CorwinCanHeal", "GLOBAL", 1)~ THEN REPLY @5113
		GOTO XA_BG2_Sex2ConditionCheck
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END

	IF ~~ THEN BEGIN XA_BG2_SpellTest
		SAY @5095 
		
		IF ~~ THEN REPLY @5096
		DO ~
			ForceSpellRES("xasboost", Player1)
		~
		GOTO XA_BG2_SpellTest
		
		IF ~~ THEN REPLY @5097
		DO ~
			ForceSpellRES("xasboost", "xacorwin")
		~
		GOTO XA_BG2_SpellTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END

	IF ~~ THEN BEGIN XA_BG2_AdjustVariables
		SAY @5083
		
		IF ~~ THEN REPLY @5168
		DO ~
			SetGlobal("XA_LC_Journal_Sex1", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5092 /* */
		DO ~
			SetGlobal("XA_LC_CorwinLesson", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5084 /**/
		DO ~
			SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5085 /**/
		DO ~
			SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5086 /**/
		DO ~
			SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 0)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5087 /**/
		DO ~
			SetGlobal("XA_LC_CorwinSexBoost", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5088 /**/
		DO ~
			SetGlobal("XA_LC_TimesHadSex", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5091 /**/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 3)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5116 
		DO ~
			SetGlobal("XA_LC_RetainAllRBG", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5117 
		DO ~
			SetGlobal("XA_LC_RetainAllRBG", "GLOBAL", 0)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5118 
		DO ~
			SetGlobal("DefeatedJon", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5119 
		DO ~
			SetGlobal("DefeatedJon", "GLOBAL", 0)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5151
		DO ~
			ActionOverride(Player2,SetGlobal("XA_LC_LeaveInPen","LOCALS",1))
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5152
		DO ~
			ActionOverride(Player3,SetGlobal("XA_LC_LeaveInPen","LOCALS",1))
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5153
		DO ~
			ActionOverride(Player4,SetGlobal("XA_LC_LeaveInPen","LOCALS",1))
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5154
		DO ~
			ActionOverride(Player5,SetGlobal("XA_LC_LeaveInPen","LOCALS",1))
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5155
		DO ~
			ActionOverride(Player6,SetGlobal("XA_LC_LeaveInPen","LOCALS",1))
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @5156 
		DO ~
			SetGlobal("XA_LC_BackToBG", "GLOBAL", 1)
		~
		GOTO XA_BG2_AdjustVariables
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END

	IF ~~ THEN BEGIN XA_BG2_MusicTest
		SAY @5077 /* Music Test~*/
		
		IF ~~ THEN REPLY @5078/* ~Ducal Palace (xamu00)~ */
		DO ~
			PlaySong(1000)
		~
		GOTO XA_BG2_MusicTest
		
		IF ~~ THEN REPLY @5079/* ~SoD Track 1 (xamu01)~*/
		DO ~
			PlaySong(1001)
		~
		GOTO XA_BG2_MusicTest
		
		IF ~~ THEN REPLY @5080/* ~Corwin Romance A (xamu02)~*/
		DO ~
			PlaySong(1002)
		~
		GOTO XA_BG2_MusicTest
		
		IF ~~ THEN REPLY @5081/*~Corwin Romance B (xamu03)~ */
		DO ~
			PlaySong(1003)
		~
		GOTO XA_BG2_MusicTest
	
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_BG2_InteractionTest
		SAY @5075
		
		IF ~~ THEN REPLY @5076 /* ~Corwin Death from Bite.~*/
		DO ~
			SetGlobal("XA_LC_CorwinBit", "GLOBAL", 8)
			ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
		~
		EXIT
		
		IF ~~ THEN REPLY @5121 /* ~CreateCreature("XADINGS", [-1.-1], N)~ */
		DO ~
			CreateCreature("XADINGS", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @5169
		DO ~
			ActionOverride("XACORWIN", SetGlobal("XA_LC_WealthTalk", "LOCALS", 1))
			ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
		~
		EXIT
		
		IF ~~ THEN REPLY @5170
		DO ~
			ActionOverride("XACORWIN", SetGlobal("XA_LC_AfterSexTalk", "LOCALS", 1))
			ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_BG2_ParameterCheck
		SAY @5034 /* ~Parameter Check.~ */
		
		IF ~ Global("XA_LC_PlayerExiled", "GLOBAL", 0)~THEN REPLY @5035 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_PlayerExiled", "GLOBAL", 1)~THEN REPLY @5036 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_CorwinContinue", "GLOBAL", 0)~THEN REPLY @5037 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_CorwinContinue", "GLOBAL", 1)~THEN REPLY @5038 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_CorwinContinue", "GLOBAL", 2)~THEN REPLY @5039 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_CaelarAliveInAvernus", "GLOBAL", 0)~THEN REPLY @5040 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_CaelarAliveInAvernus", "GLOBAL", 1)~THEN REPLY @5041 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_DrinksWithCorwin", "GLOBAL", 0)~THEN REPLY @5042 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_DrinksWithCorwin", "GLOBAL", 1)~THEN REPLY @5043 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HonorableDuel", "GLOBAL", 0)~THEN REPLY @5044 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HonorableDuel", "GLOBAL", 1)~THEN REPLY @5045 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SavedJhasso", "GLOBAL", 0)~THEN REPLY @5046 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SavedJhasso", "GLOBAL", 1)~THEN REPLY @5047 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SavedAldeth", "GLOBAL", 0)~THEN REPLY @5048 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SavedAldeth", "GLOBAL", 1)~THEN REPLY @5049 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_AldethFF", "GLOBAL", 0)~THEN REPLY @5050 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_AldethFF", "GLOBAL", 1)~THEN REPLY @5051 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_MetRohma", "GLOBAL", 0)~THEN REPLY @5052 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_MetRohma", "GLOBAL", 1)~THEN REPLY @5053 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SacrificeCorwin", "GLOBAL", 0)~THEN REPLY @5054 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_SacrificeCorwin", "GLOBAL", 1)~THEN REPLY @5055 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_GaveEarrings", "GLOBAL", 0)~THEN REPLY @5056 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_GaveEarrings", "GLOBAL", 1)~THEN REPLY @5057 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HappyEnding", "GLOBAL", 0)~THEN REPLY @5058 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HappyEnding", "GLOBAL", 1)~THEN REPLY @5059 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_TrickedLarze", "GLOBAL", 0)~THEN REPLY @5060 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_TrickedLarze", "GLOBAL", 1)~THEN REPLY @5061 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HelpedForthel", "GLOBAL", 0)~THEN REPLY @5062 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_HelpedForthel", "GLOBAL", 1)~THEN REPLY @5063 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_MetKerrachus", "GLOBAL", 0)~THEN REPLY @5064 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_MetKerrachus", "GLOBAL", 1)~THEN REPLY @5065 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInBG1", "GLOBAL", 0)~THEN REPLY @5066 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInBG1", "GLOBAL", 1)~THEN REPLY @5067 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInSoD", "GLOBAL", 0)~THEN REPLY @5068 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInSoD", "GLOBAL", 1)~THEN REPLY @5069 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInBG2", "GLOBAL", 0)~THEN REPLY @5070 GOTO XA_BG2_Debug
		IF ~ Global("XA_LC_StartedInBG2", "GLOBAL", 1)~THEN REPLY @5071 GOTO XA_BG2_Debug


		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_BG2_AreaTest
		SAY @5001
		
		IF ~~ THEN REPLY @5120
		DO ~
			ActionOverride(Player1, SetMasterArea("AR2800"))
		~
		EXIT
		
		IF ~~ THEN REPLY @5072
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR1002", "", [0.0], S))
		~
		EXIT
		
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
			ActionOverride(Player2, LeaveAreaLUA("xacs12", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xacs12", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xacs12", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xacs12", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xacs12", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5006
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xacs13", "", [0.0], S))
			ActionOverride(Player2, LeaveAreaLUA("xacs13", "", [0.0], S))
			ActionOverride(Player3, LeaveAreaLUA("xacs13", "", [0.0], S))
			ActionOverride(Player4, LeaveAreaLUA("xacs13", "", [0.0], S))
			ActionOverride(Player5, LeaveAreaLUA("xacs13", "", [0.0], S))
			ActionOverride(Player6, LeaveAreaLUA("xacs13", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5007
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xapen", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5093
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xad100", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @5094
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("xad101", "", [0.0], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_BG2_ItemTest
		SAY @5008
		
		IF ~~ THEN REPLY @5115
		DO ~
			GiveItemCreate("xacorbag", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
		IF ~~ THEN REPLY @5089
		DO ~
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
		~
		GOTO XA_BG2_ItemTest
		
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
		
		COPY_TRANS XALCDBG 14
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
		
		IF ~~ THEN REPLY @5030
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs06a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5031
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs07a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5073
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs08a")
		~
		EXIT
		
		IF ~~ THEN REPLY @5074
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs09a")
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_BG2_Debug
		
		COPY_TRANS XALCDBG 14
	END
END