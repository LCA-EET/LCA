//Modifications to KENT.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER KENT 0
~
	!Global("XA_Override", "Global", 1)
~
DO 2

ADD_TRANS_TRIGGER KENT 7
~
	!Global("XA_Override", "Global", 1)
~
DO 2 3

EXTEND_BOTTOM KENT 0
	IF ~  
		Global("EECorwNoDesert","GLOBAL",0)
		IsValidForPartyDialogue("Corwin")
	~ THEN 
	DO ~
		SetGlobal("EECorwNoDesert","GLOBAL",1)
	~ EXTERN ~BDCORWIJ~ XAA492
END

EXTEND_BOTTOM KENT 7
	IF ~~ THEN 
	EXTERN ~BDCORWIJ~ XAA495
	
	IF ~  
		IsValidForPartyDialogue("Skie")
	~ THEN EXTERN ~SKIEJ~ 14
END

APPEND KENT
	IF ~~ THEN BEGIN XAA5 // from:
		SAY @0 /* ~Captain? I remember these people with you from when they worked for Scar and Eltan. Well, since you've been gone, things have gone downhill. Eltan's taken ill, and he's resting in the room beside us. His healer, Rashad, keeps on saying that there's nothing he can do, but I know better. He's no healer from what I've seen. Anyhow, it don't matter; I've decided to desert the Flaming Fist before things get too hairy. I don't want to lose my life over whatever power struggle is going on in the city.~ */

		IF ~~ THEN 
		EXTERN ~BDCORWIJ~ XAA493
	END
	
	IF ~~ THEN BEGIN XAA6 // from: 5.6
		SAY @1 /* ~Aye, Captain. Thank you, ma'am, I just didn't know that all you good people are still around. I know where to find Axhand.~ */
		IF ~~ THEN 
		EXTERN ~BDCORWIJ~ XAA494
	END
	
	IF ~~ THEN BEGIN XAA7 // from: 6.4 5.4
		SAY @2 /* ~I fear no, Captain. When they brought him to headquarters, that scoundrel Dosan claimed there was evidence that shadow thieves did it - but nobody saw it but him. His men took the body away in haste, Leira may know to where.~ */
		
		IF ~~ THEN REPLY #220536 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ GOTO 3
		
		IF ~~ THEN REPLY #271490 /* ~Kent, why don't you think Rashad's a healer?~ */ GOTO 8
		
		IF ~~ THEN 
		EXTERN ~BDCORWIJ~ 495
		
		IF ~  
			IsValidForPartyDialogue("Skie")
		~ THEN EXTERN ~SKIEJ~ 14
	END
END

