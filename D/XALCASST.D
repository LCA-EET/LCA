APPEND ~PLAYER1~

	//{ LCA Assistant
	IF ~
		Global("XAAssist","GLOBAL",1)
	~ THEN BEGIN XA_Assistant
		SAY @0 /* ~Welcome to the LCA Configuration Assistant. Select one of the options below.~*/
		
		IF ~~ THEN REPLY @1 /* ~Adjust Corwin banter timers.~*/
		GOTO XA_AdjustCorwinBanterTimer
		
		IF ~~ THEN REPLY @2 /* ~Adjust Caelar banter timers.~*/
		GOTO XA_AdjustCaelarBanterTimer
		
		IF ~~ THEN REPLY @15 /*~Version Check.~*/
		GOTO XA_VersionCheck
		
		IF ~~ THEN REPLY @16 /* ~Re-apply Corwin sound swap (See note in User Guide).~*/
		DO ~
			SetGlobal("XA_LC_ReapplySoundSwap", "GLOBAL", 1)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @17  /*@17 = ~Advance the time.~ */
		GOTO XA_AdvanceTime
		
		IF ~~ THEN REPLY @18 /* ~Change Corwin's Portrait (LCA)~ */
		DO ~
			ReallyForceSpellRES("XACHNG01", "XACORWIN")
			ReallyForceSpellRES("XACHNG01", "Corwin")
			SetGlobal("XA_PortraitChange_LCA", "GLOBAL", 1)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @19 /* ~Change Corwin's Portrait (SoD)~ */
		DO ~
			ReallyForceSpellRES("XACHNG02", "XACORWIN")
			ReallyForceSpellRES("XACHNG02", "Corwin")
			SetGlobal("XA_PortraitChange_LCA", "GLOBAL", 0)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @20 /* ~Report a bug.~ */
		GOTO XA_ReportBug
		
		IF ~~ THEN REPLY @21 /*~Support the creator of the LCA mod.~*/
		GOTO XA_LC_Support
		
		IF ~~ THEN REPLY @38 /*  ~Open Debugger.~ */
		GOTO XA_Debug
		
		IF ~
			Global("XA_LC_StartedInBG2", "GLOBAL", 1)
		~ THEN REPLY @23  /* ~Access BG2 Initial Configuration Menu.~ */
		DO ~
			SetGlobal("XAAssist", "GLOBAL", 2)
		~
		GOTO XA_InitialConfig
		
		IF ~~ THEN REPLY @14 /* ~Exit.~ */
		GOTO XA_Exit
	END
	
	IF ~~ THEN BEGIN XA_LC_Support
		SAY @22 /* ~Please visit www.patreon.com/EETMods. There, you can make either a one-time or a recurring contribution. Thank you for your generosity.~ */
		
		IF ~~ THEN REPLY @13 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @14 /*~Exit.~ */
		GOTO XA_Exit
	END

	IF ~~ THEN BEGIN XA_VersionCheck
		SAY @24 /* ~LCA v1.1, 2024-01-13~*/
		
		IF ~~ THEN 
		GOTO XA_Assistant
	END
	
	IF ~~ THEN BEGIN XA_AdvanceTime
		SAY @17  /*~Advance the time.~ */
		
		IF ~~ THEN REPLY @4
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(ONE_HOUR)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @5
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWO_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @6
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(FOUR_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @7
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(EIGHT_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @25
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWELVE_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @26
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(ONE_DAY)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @27
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWO_DAYS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @28
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(THREE_DAYS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @13 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @14 /*~Exit.~ */
		GOTO XA_Exit 
	END
	
	
	IF ~~ THEN BEGIN XA_Debug
		SAY @29 /* ~WARNING: The debugger is meant to be used for testing purposes only. Improper alterations to the game state can crash the game, or make it so that you cannot complete the game.~*/
		
		IF ~~ THEN REPLY @30 /*~I understand the risks. Proceed.~*/
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			SetGlobal("XAAssist", "GLOBAL", 2)
			CreateCreature("XAADBG", [-1.-1], N)
			SetGlobal("XA_DebugInit","GLOBAL",1)
		~
		EXIT
		
		IF ~~ THEN REPLY @13 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @14 /* ~Exit.~ */
		GOTO XA_Exit
	END
	
	IF ~~ THEN BEGIN XA_ReportBug
		SAY @31 /*~You can report a bug by e-mailing LCAMod@danielvalle.net. It is recommended (but not required) that you include your save game with the bug report.~*/
		
		IF ~~ THEN REPLY @13 /* ~Return to main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @14 /*~Exit.~ */
		GOTO XA_Exit 
	END
	
	IF ~~ THEN BEGIN XA_Exit
		SAY @32/* ~Thanks for playing!~ */
		IF ~~ THEN 
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			SetGlobal("XAAssist", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_AdjustCorwinBanterTimer
		SAY @3 /* ~Select the new interval between banters. The default is forty-eight hours.~*/
		
		IF ~~ THEN REPLY @4 /*~One hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 1) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @5 /*~Two hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 2) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @6 /*~Four hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 3) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @7 /*~Eight hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 4) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @25 /*~Twelve Hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 5) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @8 /*~Sixteen hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 6) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @33 /*~Twenty Hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 7) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @9 /* ~Twenty-four hours.~*/
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 8) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @34 /* ~Thirty-six hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 9) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @10 /* ~Forty-eight hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 10) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @35 /* ~Sixty hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 11) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @36 /* ~Seventy-two hours.~*/
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 12) 
		~
		GOTO XA_ChangeDone
		
	END
	
	IF ~~ THEN BEGIN XA_AdjustCaelarBanterTimer
		SAY @3 /* ~Select the new interval between banters. The default is sixteen hours.~*/
		
		IF ~~ THEN REPLY @4 /*~One hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 1) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @5 /*~Two hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 2) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @6 /*~Four hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 3) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @7 /*~Eight hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 4) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @25 /*~Twelve Hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 5) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @8 /*~Sixteen hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 6) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @33 /*~Twenty Hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 7) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @9 /* ~Twenty-four hours.~*/
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 8) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @34 /* ~Thirty-six hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 9) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @10 /* ~Forty-eight hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 10) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @35 /* ~Sixty hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 11) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @36 /* ~Seventy-two hours.~*/
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 12) 
		~
		GOTO XA_ChangeDone

		
	END
	
	IF ~~ THEN BEGIN XA_ChangeDone
		SAY @37 /*  ~The change you requested has been processed.~*/
		
		IF ~~ THEN REPLY @13 /* ~Return to main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @14 /*~Exit.~ */
		GOTO XA_Exit
	END
END
	//}
