/* Reactions to <CHARNAME> having sex with Corwin in Amn.
Daniel Valle

dan@danielvalle.net
*/
/* Revision History

2022-12-05: Initial Commit

*/

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_CorwinSex6
		SAY @6 /* ~Um. Yes, a little.~ */
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex7
		
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex7
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex7
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex7
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex7
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex8
		SAY @12 /* ~(She tries, and fails, to stifle a laugh.)~ */
		
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex9
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex9
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex9
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex9
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex9
		
		IF ~
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Valygar")
			Gender(Player1, MALE)
		~
		THEN
		EXTERN VICONIJ XA_CorwinSex9
	END
END
APPEND_EARLY VALYGARJ
	IF ~~ THEN BEGIN XA_CorwinSex11
		SAY @22 /* ~Very funny. Can we go now?~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 2)
		~
		EXIT
	END
END
APPEND_EARLY VICONIJ
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @19 /* ~Ah, of course. I didn't notice it until now, but emanating from the two of you is the unmistakable aroma of sex.~ */
		IF ~~ THEN
		GOTO XA_CorwinSex10
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex10
		SAY @20 /* @20 = ~Valygar, take note. A male, like <CHARNAME>, never fears to take what he wants. Follow his example and one day, perhaps with the help of some powerful aphrodisiacs, you too may share the bed of a female.~ */
		IF ~~ THEN
		EXTERN VALYGARJ XA_CorwinSex11
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex12M
		SAY @21 /* ~I respect a male who knows what he wants, and is willing to take it. I also respect a strong female who can force so many cries of passion from her mate. You are both worthy companions.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex12F
		SAY @23 /* ~I respect strong females who can force so many cries of passion from their mate. You are both worthy companions.~  */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 2)
		~
		EXIT
	END
END
APPEND_EARLY AERIEJ
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		OR(4)
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
	~ THEN BEGIN XA_CorwinSex1
		SAY @0 /* ~D-did anyone else have t-trouble sleeping?~ */
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex2
	END
	
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		!OR(4)
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
	~ THEN BEGIN XA_CorwinSex1A
		SAY @24 /* ~*Yawn* oh - I'm so tired. I didn't get m-much rest..~ */
		= @25 /* ~There was a lot of... noise... coming from the next room.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinSex5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex2
		SAY @4 /* ~I did. There was a lot of n-noise coming from the next room.~*/
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex3
		
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex3
		SAY @2 /* ~Noise? More like bestial cries of passion.~ */
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex4
		SAY @7 /* ~Right? The walls were very thin.~ */
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex5
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex5
		SAY @5 /* ~Schael? Were you able to get any sleep?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinSex6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex7
		SAY @9 /* ~And you, <CHARNAME>? ~ */
		
		IF ~~ THEN REPLY @10 /* ~I slept. Yes I slept very well, truly, thanks.~ */
		EXTERN XACORWIJ XA_CorwinSex8
		
		IF ~
			Gender(Player1, MALE)
		~
		THEN REPLY @11 /* ~No. I was - up - all night.~ */
		EXTERN XACORWIJ XA_CorwinSex8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @15 /* ~Oh... I - I see now. I didn't see it before, but you and S-Schael are glowing!~ */
		= @16 /* ~I'm glad that you were able to ... express your love for eachother, but could you p-please do so more q-quietly in the future?~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		~
		EXIT
	END
END

APPEND_EARLY IMOEN2J
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
	~ THEN BEGIN XA_CorwinSex1
		SAY @3 /* ~Did anyone else have trouble sleeping?~ */
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex2
	END
	
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		!OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
	~ THEN BEGIN XA_CorwinSex1A
		SAY @28 /* ~*Yawn* Oh, I'm so tired. I didn't get much rest..~ */
		= @25 /* ~There was a lot of... noise... coming from the next room.~*/
		
		IF ~~ THEN
		GOTO XA_CorwinSex5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex2
		SAY @1 /* ~I did. There was a lot of noise coming from the next room.~*/
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex3
		
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex3
		SAY @2 /* ~Noise? More like bestial cries of passion.~ */
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex4
		SAY @7 /* ~Right? The walls were very thin.~ */
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex5
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex5
		SAY @5 /* ~Schael? Were you able to get any sleep?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinSex6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex7
		SAY @9 /* ~And you, <CHARNAME>? ~ */
		
		IF ~~ THEN REPLY @10 /* ~I slept. Yes I slept very well, truly, thanks.~ */
		EXTERN XACORWIJ XA_CorwinSex8
		
		IF ~
			Gender(Player1, MALE)
		~
		THEN REPLY @11 /* ~No. I was - up - all night.~ */
		EXTERN XACORWIJ XA_CorwinSex8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @17 /* ~Oh I see now, no wonder you two look so happy! Next time, keep it down a notch, will ya?~ */
		= @18 /* ~(She pulls you aside and whispers.) Hah, way to go kid!~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		~
		EXIT
	END
END

APPEND_EARLY JAHEIRAJ
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1
		SAY @3 /* ~Did anyone else have trouble sleeping?~ */
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex2
	END
	
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		!OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1A
		SAY @26 /* ~~Must we leave *yawn* so soon? I could use some more rest.~*/
		= @27 /* ~The noise from one of the rooms next to mine kept me from getting any sleep.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinSex5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex2
		SAY @1 /* ~I did. There was a lot of noise coming from the next room.~*/
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex3
		
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex3
		SAY @2 /* ~Noise? More like bestial cries of passion.~ */
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex4
		SAY @7 /* ~Right? The walls were very thin.~ */
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NALIAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex5
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex5
		SAY @5 /* ~Schael? Were you able to get any sleep?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinSex6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex7
		SAY @9 /* ~And you, <CHARNAME>? ~ */
		
		IF ~~ THEN REPLY @10 /* ~I slept. Yes I slept very well, truly, thanks.~ */
		EXTERN XACORWIJ XA_CorwinSex8
		
		IF ~
			Gender(Player1, MALE)
		~
		THEN REPLY @11 /* ~No. I was - up - all night.~ */
		EXTERN XACORWIJ XA_CorwinSex8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @13 /* ~Hmph. Of course. I didn't see it before, but the two of you are still glowing.~ */
		= @14 /* ~Next time, let us know so the rest of us can book a room on the other side of town, or perhaps in a different city. Maybe then we can get some sleep!~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		~
		EXIT
	END
END

APPEND_EARLY NALIAJ
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1
		SAY @3 /* ~Did anyone else have trouble sleeping?~ */
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex2
	END
	
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		!OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1A
		SAY @26 /* ~~Must we leave *yawn* so soon? I could use some more rest.~*/
		= @27 /* ~The noise from one of the rooms next to mine kept me from getting any sleep.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinSex5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex2
		SAY @1 /* ~I did. There was a lot of noise coming from the next room.~*/
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex3
		
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex3
		SAY @2 /* ~Noise? More like bestial cries of passion.~ */
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex4
		SAY @7 /* ~Right? The walls were very thin.~ */
		
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		THEN
		EXTERN NEERAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex5
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex5
		SAY @5 /* ~Schael? Were you able to get any sleep?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinSex6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex7
		SAY @9 /* ~And you, <CHARNAME>? ~ */
		
		IF ~~ THEN REPLY @10 /* ~I slept. Yes I slept very well, truly, thanks.~ */
		EXTERN XACORWIJ XA_CorwinSex8
		
		IF ~
			Gender(Player1, MALE)
		~
		THEN REPLY @11 /* ~No. I was - up - all night.~ */
		EXTERN XACORWIJ XA_CorwinSex8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @13 /* ~Hmph. Of course. I didn't see it before, but the two of you are still glowing.~ */
		= @14 /* ~Next time, let us know so the rest of us can book a room on the other side of town, or perhaps in a different city. Maybe then we can get some sleep!~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		~
		EXIT
	END
END

APPEND_EARLY NEERAJ
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1
		SAY @3 /* ~Did anyone else have trouble sleeping?~ */
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NaliaJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex2
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex2
	END
	
	IF ~
		Global("XA_CorwinSex_1", "GLOBAL", 4)
		Global("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue(Player1)
		!OR(4)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("IMOEN2")
	~ THEN BEGIN XA_CorwinSex1A
		SAY @28 /* ~*Yawn* Oh, I'm so tired. I didn't get much rest..~*/
		= @25 /* ~There was a lot of... noise... coming from the next room.~*/
		
		IF ~~ THEN
		GOTO XA_CorwinSex5
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex2
		SAY @1 /* ~I did. There was a lot of noise coming from the next room.~*/
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NaliaJ XA_CorwinSex3
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex3
		
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex3
		SAY @2 /* ~Noise? More like bestial cries of passion.~ */
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex4
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NaliaJ XA_CorwinSex4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex4
		SAY @7 /* ~Right? The walls were very thin.~ */
		
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		THEN
		EXTERN NaliaJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("JAHEIRA")
		~
		THEN
		EXTERN JAHEIRAJ XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("IMOEN2")
		~
		THEN
		EXTERN IMOEN2J XA_CorwinSex5
		
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		THEN
		EXTERN AERIEJ XA_CorwinSex5
		
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex5
		SAY @5 /* ~Schael? Were you able to get any sleep?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinSex6
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex7
		SAY @9 /* ~And you, <CHARNAME>? ~ */
		
		IF ~~ THEN REPLY @10 /* ~I slept. Yes I slept very well, truly, thanks.~ */
		EXTERN XACORWIJ XA_CorwinSex8
		
		IF ~
			Gender(Player1, MALE)
		~
		THEN REPLY @11 /* ~No. I was - up - all night.~ */
		EXTERN XACORWIJ XA_CorwinSex8
	END
	
	IF ~~ THEN BEGIN XA_CorwinSex9
		SAY @17 /* ~Oh I see now, no wonder you two look so happy! Next time, keep it down a notch, will ya?~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
		~
		EXIT
	END
END