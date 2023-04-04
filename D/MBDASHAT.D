//Modifications to BDASHATI.DLG
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-12-04: Initial Commit

*/

ADD_TRANS_TRIGGER BDASHATI 6
~
	!Global("LCA_Override", "GLOBAL", 1)
~

EXTEND_BOTTOM BDASHATI 6
	IF ~
		!IsValidForPartyDialogue("Corwin")
	~ THEN REPLY @0 /* ~I'm ready. Let the battle begin.~ */ 
	DO ~
		StartCutSceneMode()
		SetGlobal("bd_asha_duel","global",3)
		StartCutSceneEx("bdcut44",FALSE)
	~ 
	EXIT
  
	IF ~
		IsValidForPartyDialogue("Corwin")
	~ THEN REPLY @0 /* ~I'm ready. Let the battle begin.~ */ 
	EXTERN BDCORWIJ LCA_AshatielDuel_0
  
	IF ~~ THEN REPLY @2 /* ~I changed my mind. You and all your followers die now.~ */ 
	GOTO 7
END

APPEND BDCORWIJ
	IF ~~ THEN BEGIN LCA_AshatielDuel_0
		SAY @1 /* ~Be careful, <CHARNAME>!~ */
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 1)
			SetGlobal("bd_asha_duel","global",3)
			StartCutSceneEx("bdcut44",FALSE)
		~
		EXIT
	END
	
	IF ~ 
		Global("LCA_CorwinWitnessedDuel", "GLOBAL", 1)
		OR(2)
			Global("bd_corwin_romanceactive","global",1)
			Global("bd_corwin_romanceactive","global",2)
	~ THEN BEGIN LCA_AshatielDuel_1
		SAY @7 /* ~<CHARNAME> - thank goodness! (She gives you a hug)~ */
		
		IF ~~ THEN REPLY @6 /* ~Schael? Were you worried about me?~ */
		DO ~
			SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 2)
		~
		GOTO LCA_AshatielDuel_3 
	END
	
	IF ~ 
		Global("LCA_CorwinWitnessedDuel", "GLOBAL", 1)
		!Global("bd_corwin_romanceactive","global",1)
		!Global("bd_corwin_romanceactive","global",2)
	~ THEN BEGIN LCA_AshatielDuel_2
		SAY @3 /* ~<CHARNAME> - thank goodness!~ */
		
		IF ~~ THEN REPLY @4 /* ~Captain? Were you worried about me?~ */
		DO ~
			SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 2)
		~
		GOTO LCA_AshatielDuel_3 
	END
	
	IF ~~ THEN BEGIN LCA_AshatielDuel_3
		SAY @5 /* ~Gods, of course I was! (She punches you in the shoulder) */
		
		IF ~~ THEN REPLY @11 /* ~Ow!~ */
		GOTO LCA_AshatielDuel_5
	END
	
	IF ~~ THEN BEGIN LCA_AshatielDuel_4
		SAY @10 /* ~Look! The crusaders are fleeing or laying down their weapons. Your victory has likely saved many lives, on both sides. I'll make sure that the higher-ups know about what you did here today. Let's go.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_AshatielDuel_5
		SAY @12 /* ~Ashatiel was a dangerous opponent. Few would have agreed to a duel with her.~ */
		
		IF ~~ THEN REPLY @8 /* ~If she was the best that the crusade had to offer, then they are doomed.~ */
		GOTO LCA_AshatielDuel_4

		IF ~~ THEN REPLY @9 /* ~Very dangerous. It's a shame that she threw her life away for such a lost cause.~ */
		GOTO LCA_AshatielDuel_4
	END
END