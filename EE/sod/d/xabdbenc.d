APPEND ~BDBENCE~
	IF ~~ THEN BEGIN XA_HoodedMan
		SAY @0 /* ~Your lies grow tiresome. If this 'Hooded Man' is responsible, then why did we find you instead of him?~ */
		
		IF ~~ THEN REPLY @1 /* ~He's a mage, and a powerful one at that. He likely had some illusion spells cast over all of us.~*/
		EXTERN BDSCHAE2 XA_FinalWarning
		
		IF ~~ THEN REPLY @2 /* ~Because I was framed, you fool! During my trial, Belt said that your own diviners confirmed that powerful magic was used to obscure what had happened. Are they liars as well?~*/
		EXTERN BDSCHAE2 XA_FinalWarning
	END
	
	IF ~~ THEN BEGIN XA_WhatIsSheDoing
		SAY @4 /* ~Captain, what are you doing...?~ [BD65164] */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("bd_mdd1725_ot","bd6000",1)
		~
		EXTERN BDSCHAE2 XA_LostNerve
	END
	
	IF ~~ THEN BEGIN XA_KillThem_Male
		SAY @6 /* ~No—no! He has to die! Die in the name of Skie Silvershield! Kill him!~ [xalcsd08] */
		
		IF ~~ THEN 
		EXTERN BDSCHAE2 XA_Run
	END
	
	IF ~~ THEN BEGIN XA_KillThem_Female
		SAY @5 /* ~No—no! She has to die! Die in the name of Skie Silvershield! Kill her!~ [xalcsd09]  */
		
		IF ~~ THEN 
		EXTERN BDSCHAE2 XA_Run
	END
END
