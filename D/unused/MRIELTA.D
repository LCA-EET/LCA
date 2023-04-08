//Modifications to RIELTA.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER RIELTA 0
~
	!Global("LCA_Override", "Global", 1)
~
DO 2

EXTEND_BOTTOM RIELTA 0
	IF ~  Global("EECorRieltCandl","GLOBAL",0)
		IsValidForPartyDialogue("Corwin")
	~ THEN 
	DO ~
		SetGlobal("EECorRieltCandl","GLOBAL",1)
		SetGlobal("Criminal","GLOBAL",1)
	~ 
	GOTO LCA13
END

APPEND ~RIELTA~
	IF ~~ THEN BEGIN LCA13 // from: 0.2
		SAY @0 /* ~You there, Flaming Fist, do your duty and remove this scum from our sight, will you.~ */

		IF ~~ THEN 
		EXTERN ~BDCORWIJ~ LCA480
	END

	IF ~~ THEN BEGIN LCA14 // from: 13.4
		SAY @1 /* ~Captain, have you missed something? Your superior Angelo Dosan will be most likely willing to set your loyalties right, or are you a deserter to go down with those criminals?~ */

		IF ~~ THEN 
		EXTERN ~BDCORWIJ~ LCA481
	END

	IF ~~ THEN BEGIN LCA15 // from: 14.2 13.2
		SAY @2 /* ~You'll soon see the errors of your stubborn position, Captain. I'd rather hear what <CHARNAME> has to say.~ */
		IF ~~ THEN GOTO 1
		
		IF ~  
			IsValidForPartyDialogue("Yeslick")
		~ THEN 
		DO ~~ EXTERN ~YESLIJ~ 10
	END
END
