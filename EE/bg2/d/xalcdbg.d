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
		
		IF ~~ THEN REPLY @5032
		DO ~
			SetGlobal("XA_CorwinDebug1002", "GLOBAL", 1)
			SetGlobal("XA_SkieSaved", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 2)
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5033 /* Reset Corwin's Banters. */
		DO ~
			SetGlobal("XA_ResetCorwinBanters", "GLOBAL", 1)
		~
		GOTO XA_BG2_Debug
		
		IF ~~ THEN REPLY @5034 /* ~Parameter Check.~ */
		GOTO XA_BG2_ParameterCheck
		
		IF ~~ THEN REPLY @5075
		GOTO XA_BG2_InteractionTest
		
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
	
	IF ~~ THEN BEGIN XA_BG2_InteractionTest
		SAY @5075
		
		IF ~~ THEN REPLY @5076 /* ~Corwin Death from Bite.~*/
		DO ~
			SetGlobal("XA_CorwinBit", "GLOBAL", 8)
			ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
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
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END
END