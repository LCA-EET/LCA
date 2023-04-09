//Miscellaneous changes to SoD Corwin Dialogues
//More significant changes, particularly to the jail and sewer dialogues, are located in LCBDSCH2.D.

//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

//Daniel Valle
//dan@danielvalle.net
/* Revision History

2023-04-09: Initial Commit

*/
ADD_TRANS_TRIGGER BDCORWIJ 296
~
	OR(2)
		!Global("LCA_Override", "GLOBAL", 1)
		!Gender(Player1, MALE)
~ 
DO 0

EXTEND_BOTTOM BDCORWIJ 296
	IF ~
		Global("LCA_Override", "GLOBAL", 1)
		Gender(Player1, MALE)
	~ THEN GOTO LCA_WantToKiss
END

APPEND BDCORWIJ
	IF ~~ THEN BEGIN LCA_WantToKiss
		SAY @0 /* ~I want to kiss you.~ [BD54552] */
		
		IF ~~ THEN REPLY @1 /* ~That's the best thing I've heard in a long time.~ */
		GOTO LCA_Kiss
		
		IF ~~ THEN REPLY @2 /* ~And I want to let you.~ */
		GOTO LCA_Kiss
		
		IF ~~ THEN REPLY @3 /* ~I can't, not right now. Too much requires our attention.~ */
		GOTO 300
	END
	
	IF ~~ THEN BEGIN LCA_Kiss
		SAY @4 /* ~(The two of you embrace and begin a long, passionate kiss. The soldiers nearby see the steamy scene unfolding in the hallway and break into raucous cheering and applause.)~ */
		
		IF ~~ THEN 
		EXTERN BDFISTMS LCA_KissReaction 
	END
	
	IF ~~ THEN BEGIN LCA_KissEnd
		SAY @7 /* ~(Slowly, you pull yourselves apart and gaze into eachother's eyes.)~ */
		
		IF ~~ THEN REPLY @8 /* ~Wow...~ */
		GOTO 298
		
		IF ~~ THEN REPLY @9 /* ~Everything we've had to endure... it was all worth it, for that kiss.~ */
		GOTO 298
		
		IF ~~ THEN REPLY @10 /* ~That was better than I could've imagined.~ */
		GOTO 298
	END
END