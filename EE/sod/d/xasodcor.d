//Miscellaneous changes to SoD Corwin Dialogues
//More significant changes, particularly to the jail and sewer dialogues, are located in XABDSCH2.D.

//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

//Daniel Valle
//dan@danielvalle.net
/* Revision History

2023-04-09: Initial Commit

*/

APPEND BDCORWIJ
	
	IF ~~ THEN BEGIN XA_Kiss
		SAY @4 /* ~(The two of you embrace and begin a long, passionate kiss. The soldiers nearby see the steamy scene unfolding in the hallway and break into raucous cheering and applause.)~ */
		
		IF ~~ THEN
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XAWTREX XA_KissReaction 
	END
	
	IF ~~ THEN BEGIN XA_KissEnd
		SAY @7 /* ~(Slowly, you pull yourselves apart and gaze into eachother's eyes.)~ */
		
		IF ~~ THEN REPLY @8 /* ~Wow...~ */
		GOTO 298
		
		IF ~~ THEN REPLY @9 /* ~Everything we've had to endure... it was all worth it, for that kiss.~ */
		GOTO 298
		
		IF ~~ THEN REPLY @10 /* ~That was better than I could've imagined.~ */
		GOTO 298
	END
END

