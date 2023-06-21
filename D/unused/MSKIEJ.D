//Modifications to SKIEJ.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER SKIEJ 14
~
	!Global("XA_Override", "Global", 1)
~
DO 2

EXTEND_BOTTOM SKIEJ 14
	IF ~~ THEN 
	EXTERN ~BDCORWIJ~ XAA495
END
