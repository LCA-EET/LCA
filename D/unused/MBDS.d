//Modifications to BDSCHAEL.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-26: Initial Commit

2022-11-15: Modified to not rely on REPLACE_SAY
*/
ADD_STATE_TRIGGER BDSCHAEL 288
~
	!Global("XA_Override", "GLOBAL", 1)
~
ADD_TRANS_TRIGGER BDSCHAEL 284
~
	!Global("XA_Override", "GLOBAL", 1)
~

EXTEND_BOTTOM BDSCHAEL 284
	IF ~~ THEN GOTO XAA285
END

ADD_TRANS_TRIGGER BDSCHAEL 286
~
	!Global("XA_Override", "GLOBAL", 1)
~

EXTEND_BOTTOM BDSCHAEL 286
	IF ~~ THEN GOTO XAA287
END

APPEND ~BDSCHAEL~

	IF WEIGHT #0 ~  
		AreaCheck("bd0106")
		Global("bd_drinks_corwin","global",1)
		Global("EECorwinBG1","Global",1)
	~ THEN BEGIN XAA288 // from:
		SAY @1 /* ~So, <CHARNAME>. The <PRO_MANWOMAN>. The myth. The hero of the Sword Coast. We've accomplished much together, haven't we.~ */
		IF ~~ THEN REPLY @5 /* ~That we have, Corwin. (You sip your drink) It looks as though our work isn't finished, however. Tell me what you know of Caelar and her crusade.~ */ GOTO 133
	END

	IF ~~ THEN BEGIN XAA285
		SAY @0 /* ~Enemy forces penetrated the palace...I tried to reach you and Imoen before they did, but... well.~ */
		
		IF ~~ THEN REPLY @3 /* ~You did what you could, and I thank you for it. Is everyone else safe?~*/
		
		GOTO 10
	END

	IF ~~ THEN BEGIN XAA287 // from: 286.0
		SAY @0 /* ~Enemy forces penetrated the palace...I tried to reach you and Imoen before they did, but... well.~ */
		IF ~~ THEN REPLY @4 /* ~Not that I know of.~ */ GOTO 284
		IF ~~ THEN REPLY @3 /* ~You did what you could, and I thank you for it. Is everyone else safe?~ */ GOTO 10
	END
	
	IF ~~ THEN BEGIN XAA283
		SAY @2 /* ~I'm glad we'll be working together again, <CHARNAME>.~ */
		IF ~~ THEN GOTO 23 
	END
	
END