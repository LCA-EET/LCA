BEGIN ~xacoras0~
	IF ~
		NumTimesTalkedTo(0)
	~ THEN BEGIN XA_Intro
		SAY @0 /**/
		
		IF ~~ THEN
		DO ~
			Enemy()
		~
		EXTERN xacoras1 XA_End
	END

BEGIN ~xacoras1~
	IF ~~ THEN BEGIN XA_End
		SAY @1 /* ~Kill them!~ */

		IF ~~ THEN
		DO ~
			Enemy()
		~
		EXIT
	END
