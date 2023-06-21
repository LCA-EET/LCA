//Modifications to LAOLA.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-16: Initial Commit

*/

ADD_TRANS_TRIGGER LAOLA 0
~
	!Global("XA_Override", "Global", 1)
~
DO 3

EXTEND_BOTTOM LAOLA 0
	IF ~  
		Global("EELaolaCorw","GLOBAL",0)
		InParty("Corwin")
		Gender(Player1, MALE)
	~ 
	THEN 
	DO ~
		SetGlobal("EELaolaCorw","GLOBAL",1)
	~ 
	EXTERN ~BDCORWIJ~ XAA466
	
	IF ~  
		Global("EELaolaCorw","GLOBAL",0)
		InParty("Corwin")
		Gender(Player1, FEMALE)
	~ 
	THEN 
	DO ~
		SetGlobal("EELaolaCorw","GLOBAL",1)
	~ 
	EXTERN ~BDCORWIJ~ XAA467
END

APPEND ~LAOLA~
	IF ~~ THEN BEGIN XAA0
		SAY @0 /* ~Oh, Schael, excuse me, Captain Corwin, I didn't see you at first.~ */
		= @1 /* ~Yes, Commander Scar told me about your plan to seek <CHARNAME>'s company but wasn't sure if they'd accept the offer. I'm glad they did.~  */
		= @2 /* ~<CHARNAME>, if you need to talk to Scar, he is in the Flaming Fist headquarters in the southwest quadrant of the city. Captain Corwin can show you the way. Good luck with your investigation.~ */
		IF ~~ THEN 
		DO ~
			EscapeArea()
		~ EXIT
	END
END