BEGIN ~xaeuric~
	IF ~
		True()
	~ THEN BEGIN XA_Default
		SAY @3 /*~Chores, chores and more chores...~*/
		
		IF ~~ THEN
		EXIT
	END

	IF ~~ THEN BEGIN XA_Intro2
		SAY @0 /*@0 = ~I just wanted to see what it was like!~*/
		
		IF ~~ THEN
		EXTERN xanadine XA_Intro3
	END
	
	IF ~~ THEN BEGIN XA_Intro2
		SAY @4 /* Yes, mom*/
		
		IF ~~ THEN
		EXTERN xanadine XA_Intro3
	END

BEGIN ~xanadine~
	IF ~
		GlobalLT("XA_Intro", "LOCALS", 1)
	~ THEN BEGIN XA_Intro
		SAY @1 /*~Could you believe that my youngest was caught trying to sneak in to the Undercellar! I understand that boys will be boys, but this is ridiculous!~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_Intro", "LOCALS", 1)
		~
		EXTERN xaeuric XA_Intro2
	END
	
	IF ~~ THEN BEGIN XA_Intro3
		SAY @2 /*~The dangers of the sewers aside, you're much too young for that nonsense! Finish your chores, then go to bed!~*/
		
		IF ~~ THEN 
		EXTERN xaeuric XA_Intro4
	END