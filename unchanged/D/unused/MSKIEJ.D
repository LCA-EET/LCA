//Modifications to SKIEJ.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER SKIEJ 14
~
	!Global("LCA_Override", "Global", 1)
~
DO 2

EXTEND_BOTTOM SKIEJ 14
	IF ~~ THEN 
	EXTERN ~BDCORWIJ~ LCA495
END
