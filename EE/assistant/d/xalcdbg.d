BEGIN ~XALCDBG~

	//{ LCA Assistant
	IF ~
		True()
	~ THEN BEGIN XA_Assistant //0
		SAY @2000 /*~Select one of the options below.~*/ 
		
		IF ~~ THEN REPLY @2001 /* ~Adjust Corwin banter timers.~*/
		GOTO XA_AdjustCorwinBanterTimer
		
		IF ~~ THEN REPLY @2002 /* ~Adjust Caelar banter timers.~*/
		GOTO XA_AdjustCaelarBanterTimer
		
		IF ~~ THEN REPLY @2015 /*~Version Check.~*/
		GOTO XA_VersionCheck
		
		IF ~~ THEN REPLY @2016 /* ~Re-apply Corwin sound swap (See note in User Guide).~*/
		DO ~
			SetGlobal("XA_LC_ReapplySoundSwap", "GLOBAL", 1)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2017  /*@17 = ~Advance the time.~ */
		GOTO XA_AdvanceTime
		
		IF ~~ THEN REPLY @2018 /* ~Change Corwin's Portrait (LCA)~ */
		DO ~
			ReallyForceSpellRES("XACHNG01", "XACORWIN")
			ReallyForceSpellRES("XACHNG01", "Corwin")
			SetGlobal("XA_PortraitChange_LCA", "GLOBAL", 1)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2019 /* ~Change Corwin's Portrait (SoD)~ */
		DO ~
			ReallyForceSpellRES("XACHNG02", "XACORWIN")
			ReallyForceSpellRES("XACHNG02", "Corwin")
			SetGlobal("XA_PortraitChange_LCA", "GLOBAL", 0)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2020 /* ~Report a bug.~ */
		GOTO XA_ReportBug
		
		IF ~~ THEN REPLY @2021 /*~Support the creator of the LCA mod.~*/
		GOTO XA_LC_Support
		
		IF ~~ THEN REPLY @2038 /*  ~Open Debugger.~ */
		GOTO XA_Debug
		
		IF ~~ THEN REPLY @2039
		DO ~
			DestroySelf()
		~
		EXIT
		
		IF ~~ THEN REPLY @2014 /* ~Exit.~ */
		GOTO XA_Exit
	END
	
	
	IF ~~ THEN BEGIN XA_LC_Support //1
		SAY @2062 /* ~Please visit www.patreon.com/EETMods. There, you can make either a one-time or a recurring contribution. Thank you for your generosity.~ */
		
		IF ~~ THEN REPLY @2013 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @2039
		DO ~
			DestroySelf()
		~
		EXIT
		
		IF ~~ THEN REPLY @2014 /*~Exit.~ */
		GOTO XA_Exit
	END

	IF ~~ THEN BEGIN XA_VersionCheck //2
		SAY @2024 /* ~LCA v1.1, 2024-01-13~*/
		
		IF ~~ THEN 
		GOTO XA_Assistant
	END
	
	IF ~~ THEN BEGIN XA_AdvanceTime //3
		SAY @2017  /*~Advance the time.~ */
		
		IF ~~ THEN REPLY @2004
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(ONE_HOUR)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2005
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWO_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2006
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(FOUR_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2007
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(EIGHT_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2025
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWELVE_HOURS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2026
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(ONE_DAY)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2027
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(TWO_DAYS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2028
		DO ~
			//ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
			AdvanceTime(THREE_DAYS)
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2013 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @2014 /*~Exit.~ */
		GOTO XA_Exit 
	END
	
	
	IF ~~ THEN BEGIN XA_Debug //4
		SAY @2029 /* ~WARNING: The debugger is meant to be used for testing purposes only. Improper alterations to the game state can crash the game, or make it so that you cannot complete the game.~*/
		
		IF ~~ THEN REPLY @2030 /*~I understand the risks. Proceed.~*/
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @2013 /*~Return to the main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @2014 /* ~Exit.~ */
		GOTO XA_Exit
	END
	
	IF ~~ THEN BEGIN XA_ReportBug //5
		SAY @2031 /*~You can report a bug by e-mailing LCAMod@danielvalle.net. It is recommended (but not required) that you include your save game with the bug report.~*/
		
		IF ~~ THEN REPLY @2013 /* ~Return to main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @2014 /*~Exit.~ */
		GOTO XA_Exit 
	END
	
	IF ~~ THEN BEGIN XA_Exit //6
		SAY @2032/* ~Thanks for playing!~ */
		IF ~~ THEN 
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_AdjustCorwinBanterTimer //7
		SAY @2046 /* ~Select the new interval between banters. The default is forty-eight hours.~*/
		
		IF ~~ THEN REPLY @2041 /*~One hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 1) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2042 /*~Two hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 2) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2043 /*~Four hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 3) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2044 /*~Eight hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 4) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2045 /*~Twelve Hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 5) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2047 /*~Sixteen hour.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 6) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2048 /*~Twenty Hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 7) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2049 /* ~Twenty-four hours.~*/
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 8) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2050 /* ~Thirty-six hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 9) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2051 /* ~Forty-eight hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 10) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2052 /* ~Sixty hours.~ */
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 11) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2053 /* ~Seventy-two hours.~*/
		DO ~
			SetGlobal("XA_CorwinBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CorwinBanterInterval", "GLOBAL", 12) 
		~
		GOTO XA_ChangeDone
		
	END
	
	IF ~~ THEN BEGIN XA_AdjustCaelarBanterTimer //8
		SAY @2046 /* ~Select the new interval between banters. The default is sixteen hours.~*/
		
		IF ~~ THEN REPLY @2041 /*~One hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 1) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2042 /*~Two hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 2) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2043 /*~Four hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 3) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2044 /*~Eight hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 4) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2045 /*~Twelve Hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 5) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2047 /*~Sixteen hour.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 6) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2048 /*~Twenty Hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 7) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2049 /* ~Twenty-four hours.~*/
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 8) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2050 /* ~Thirty-six hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 9) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2051 /* ~Forty-eight hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 10) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2052 /* ~Sixty hours.~ */
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 11) 
		~
		GOTO XA_ChangeDone
		
		IF ~~ THEN REPLY @2053/* ~Seventy-two hours.~*/
		DO ~
			SetGlobal("XA_CaelarBanterTimerReset", "GLOBAL", 1)
			SetGlobal("XA_CaelarBanterInterval", "GLOBAL", 12) 
		~
		GOTO XA_ChangeDone

		
	END
	
	IF ~~ THEN BEGIN XA_ChangeDone //9
		SAY @2054 /*  ~The change you requested has been processed.~*/
		
		IF ~~ THEN REPLY @2055 /* ~Return to main menu.~*/
		GOTO XA_Assistant
		
		IF ~~ THEN REPLY @2056 /*~Exit.~ */
		GOTO XA_Exit
	END

	//}

	//{ LCA Debugger
	IF ~~ THEN BEGIN XA_MainMenu //10
		SAY @2057 /* ~How can I help you?~ */
				
		IF ~~ THEN REPLY @2061 /* ~Spawn Target Dummy~*/
		DO ~
			CreateCreature("xadummy", [-1.-1], S)
		~
		EXIT
		
		IF ~~ THEN REPLY @2058 /* ~I do not need assistance at this time.~ */
		EXIT
		
		IF ~~ THEN REPLY @2059 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
		

	END
//}