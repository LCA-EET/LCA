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
		
		IF ~~ THEN REPLY @4005/* ~Adjust variables.~*/
		GOTO XA_SoD_AdjustVariables
		
		IF ~~ THEN REPLY @4001/* ~Cutscene Test~*/
		GOTO XA_SoD_CutsceneTest
		
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
			StartCutsceneMode()
			StartCutscene("XATNTCS")
		~
		EXIT
		
		IF ~~ THEN REPLY @4003/*~Archery Lesson (XALBPROF)~ */
		DO ~
			StartCutsceneMode()
			StartCutscene("XALBPROF")
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