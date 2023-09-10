BEGIN ~XABDBENC~

/*
IF ~  
	AreaCheck("bd6000")
	Global("bd_no_corwin","bd6000",0)
	GlobalLT("bd_plot","global",650)
~ THEN BEGIN XA_Greeting // from:
	SAY @0 
	IF ~~ THEN 
	DO ~
		SetGlobal("bd_plot","global",650)
	~ 
	EXTERN ~XABDSCH2~ XA_SewerEscape
END
*/
IF ~~ THEN BEGIN 86 // from:
  SAY #265156 /* ~Innocence, HAH! We were THERE, <CHARNAME>. You can't lie to us.~ [BD65156] */
  IF ~~ THEN 
  EXTERN ~XABDSCH2~ 46
END

IF ~~ THEN BEGIN 87 // from:
	SAY #265157 /* ~You've earned your fate. We were fools to bring the child of Bhaal amongst us. Skie Silvershield paid for it with her life. You will pay with yours.~ [BD65157] */
	IF ~~ THEN 
	EXTERN ~XABDSCH2~ 46
END

IF ~~ THEN BEGIN 88 // from:
	SAY #265164 /* ~Captain, what are you doing...?~ [BD65164] */
	IF ~~ THEN 
	EXTERN ~XABDSCH2~ 57
END

IF ~~ THEN BEGIN 89 // from:
	SAY #265166 /* ~No! Stop them—keep them from the tunnel's end!~ [BD65166] */
	IF ~~ THEN 
	DO ~
		ChangeSpecifics("bdschae2",ALLIES)
		ChangeEnemyAlly("bdschae2",GOODBUTBLUE)
	~ 
	EXIT
END

IF ~~ THEN BEGIN 90 // from:
	SAY #265167 /* ~You heard the captain. Take them!~ [BD65167] */
	IF ~~ THEN 
	DO ~
		ActionOverride("bdschae2",Enemy())
		ChangeSpecifics("bdschae2",CRUSADERS)
	~ 
	EXIT
END

IF ~~ THEN BEGIN 91 // from:
	SAY #239675 /* ~No—no! It's not enough. She has to die! Die in the name of Skie Silvershield! Kill her!~ [BD39675] */
	IF ~~ THEN 
	DO ~
		SetGlobal("bd_mdd1725_ot","bd6000",1)
	~ 
	EXTERN ~XABDSCH2~ 61
END

IF ~~ THEN BEGIN 92 // from:
	SAY #237554 /* ~No—no! It's not enough. He has to die! Die in the name of Skie Silvershield! Kill him!~ [BD37554] */
	IF ~~ THEN 
	DO ~
		SetGlobal("bd_mdd1725_ot","bd6000",1)
	~ EXTERN ~XABDSCH2~ 61
END

IF ~~ THEN BEGIN XA_SG12_2
	SAY @1 /* ~Your lies grow tiresome. If this 'Hooded Man' is responsible, then why did we find you instead of him?~ */
	
	IF ~~ THEN REPLY @2 /* ~He's a mage, and a powerful one at that. He likely had some illusion spells cast over all of us.~ */
	EXTERN XABDSCH2 XA_SG12_3
	
	IF ~~ THEN REPLY @3 /* ~Your own diviners said powerful magics were used to obscure what had happened. Are they liars as well?~*/
	EXTERN XABDSCH2 XA_SG12_3
END

IF ~~ THEN BEGIN XA_SG12_7
	SAY @4 /* ~Captain, what are you doing...?~ [BD65164] */
	
	IF ~~ THEN 
	EXTERN XABDSCH2 XA_SG12_8
END

IF ~~ THEN BEGIN XA_SG12_9
	SAY @5 /* ~No, Corwin, dammit! He has to die! Die in the name of Skie Silvershield! Kill him!~ */
	
	IF ~~ THEN 
	EXTERN XABDSCH2 XA_SG12_10
END