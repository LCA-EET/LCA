
//{ BMAZZY25
APPEND BMAZZY25
	IF ~~ THEN BEGIN BCorwinMazzy2_BREAK
		SAY @6 /* ~It's alright. I know you didn't mean anything by it. Besides, I'm quite happy with the crossbow.~*/
		
		IF ~
			GlobalGT("XA_LC_ReturnToBG", "GLOBAL", 0)
		~ THEN GOTO BCorwinMazzy2_RBG
		
		IF ~
			GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
		~ THEN GOTO BCorwinMazzy2_RESUME		
	END
	
	IF ~~ THEN BEGIN BCorwinMazzy2_RBG
		SAY @7 /* ~Looks like the others are ready... let's get moving.~ */
		
		IF ~~ THEN 
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MazzyWonCompetition
		SAY @8 /* ~Thank you, Schael. You're one of the toughest competitors I've faced.~ */
		
		IF ~~ THEN REPLY @9 /* ~You both performed well. I'm glad to have such skilled companions at my side.~  */
		GOTO XA_MazzyWonCompetition2
	END
	
	IF ~
		Global("XA_LC_TM_ArcheryChallenge", "GLOBAL", 2)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_Trademeet_Competition_SchaelWon
		SAY @10 /* ~Schael, congratulations on your victory. That was quite the performance.~ */
	
		IF ~~ THEN 
		EXTERN XACOR25B XA_CorwinWonCompetition
	END
END
//}

//{ BDORN25
APPEND BDORN25
	IF ~~ THEN BEGIN XA_CorwinDornConflict2
		SAY @11 /* ~It is not your concern.~ */
		
		IF ~~ THEN 
		EXTERN XACOR25B XA_CorwinDornConflict3
	END
	
	IF ~~ THEN BEGIN XA_CorwinDornConflict4
		SAY @12 /* ~Laughable, woman. Stand in my way, and your neck will snap as easily as a tree in the midst of a hurricane.~ */
		
		IF ~~ THEN REPLY @13 /* ~That's enough. Dorn, I don't know what you think exists between us, but I love Schael and nothing is going to change that.~  */
		DO ~
			SetGlobal("XA_LC_CorwinDornConflict", "GLOBAL", 2)
		~
		GOTO XA_ChooseCorwin
		
		IF ~~ THEN REPLY @14 /* ~Stop it, Dorn. You know my affections lie with you.~ */
		DO ~
			SetGlobal("XA_LC_CorwinDornConflict", "GLOBAL", 2)
		~
		EXTERN XACOR25B XA_ChooseDorn
	END
	
	IF ~~ THEN BEGIN XA_ChooseCorwin
		SAY @15 /* ~Bah! To hell with the lot of you!~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("OHD_corwinconflict","GLOBAL",4)
			SetGlobal("DornRomanceActive", "GLOBAL", 3)
		~
		EXIT
	END
END
//}


//{ BANOME25
APPEND ~BANOME25~

IF ~~ THEN BEGIN BCorwinAnomen1A
		SAY @16 /* ~A mother's place is at home with her child, not on the battlefield.~ */
	
		= @17 /* ~You're a poor example of a parent.~ */
		
		IF ~~ THEN REPLY @18 /* ~You're out of line Anomen. Knock it off.~ */
		EXTERN XACOR25B BCorwinAnomen1B
		
		IF ~~ THEN REPLY @19 /* ~(Remain silent)~ */
		EXTERN XACOR25B BCorwinAnomen1B
		
		IF ~
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @20 /* ~You know little of what you speak. Captain Corwin is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACOR25B BCorwinAnomen1B
		
		IF ~
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @21 /* ~You know little of what you speak. Major Corwin is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACOR25B BCorwinAnomen1B
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @22 /* ~You know little of what you speak. Schael is a fine mother.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACOR25B BCorwinAnomen1B
		
	END
END
//}
