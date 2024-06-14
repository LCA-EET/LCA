//Miscellaneous changes to SoD Corwin Dialogues
//More significant changes, particularly to the jail and sewer dialogues, are located in XABDSCH2.D.

//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

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
	
	IF ~~ THEN BEGIN XA_CutsceneStart
		SAY @13 /*~(She takes hold of your hand and leads you through the gathered soldiers and officers, nearly all of whom take a moment to congratulate the two of you on your hard-earned victory. Raucous cheering erupts as you hear corks popping all around you, and you and Schael — despite your best efforts — are showered in some very expensive spirits.)~ */
		
		= @14 /*~(In the midst of the revelry, you can hear the quartermaster announce that the barrels were rolled in and the spigots are open. While the men and women of the coalition are busy queuing up for their ale, Schael quickly and discreetly leads you into one of the castle's storerooms...)~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LCE_Expl00", "GLOBAL", 1)
		~
		EXIT
	END
END

ADD_TRANS_TRIGGER BDCORWIJ 303
~
	!Gender(Player1, MALE)
~

EXTEND_BOTTOM BDCORWIJ 303
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @12 /* ~What did you have in mind?~ */
	GOTO XA_CutsceneStart
END

