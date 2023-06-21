//Miscellaneous changes to SoD Corwin Dialogues
//More significant changes, particularly to the jail and sewer dialogues, are located in XABDSCH2.D.

//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

//Daniel Valle
//dan@danielvalle.net
/* Revision History

2023-04-09: Initial Commit

*/
ADD_TRANS_TRIGGER BDCORWIJ 235
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 0 1 3

EXTEND_BOTTOM BDCORWIJ 235
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #267173 /* ~I am. Sarevok was my half-brother.~ */ 
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO 236
	
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #267174 /* ~The truth does me no favors. I am what I said I am. The Lord of Murder was my father.~ */ 
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~	
	GOTO 236
	
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #267176 /* ~Did I not say as much? Do you think me a liar?~ */ 
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO 240
END

ADD_TRANS_TRIGGER BDCORWIJ 245
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 0 1

EXTEND_BOTTOM BDCORWIJ 245
	
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #267143 /* ~Like Sarevok, I am a child of Bhaal. But I assure you, a father is all we share.~ */ 
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO 249
  
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #267144 /* ~Regrettably, that last is true. You can choose your friends, but not your family.~ */ 
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO 249
END

ADD_TRANS_TRIGGER BDCORWIJ 296
~
	OR(2)
		!Global("XA_Override", "GLOBAL", 1)
		!Gender(Player1, MALE)
~ 
DO 0

EXTEND_BOTTOM BDCORWIJ 296
	IF ~
		Global("XA_Override", "GLOBAL", 1)
		Gender(Player1, MALE)
	~ THEN GOTO XA_WantToKiss
END

APPEND BDCORWIJ
	IF ~~ THEN BEGIN XA_WantToKiss
		SAY @0 /* ~I want to kiss you.~ [BD54552] */
		
		IF ~~ THEN REPLY @1 /* ~That's the best thing I've heard in a long time.~ */
		GOTO XA_Kiss
		
		IF ~~ THEN REPLY @2 /* ~And I want to let you.~ */
		GOTO XA_Kiss
		
		IF ~~ THEN REPLY @3 /* ~I can't, not right now. Too much requires our attention.~ */
		GOTO 300
	END
	
	IF ~~ THEN BEGIN XA_Kiss
		SAY @4 /* ~(The two of you embrace and begin a long, passionate kiss. The soldiers nearby see the steamy scene unfolding in the hallway and break into raucous cheering and applause.)~ */
		
		IF ~~ THEN 
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