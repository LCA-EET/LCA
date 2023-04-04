//Modifications to BDBELT.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-15: Initial Commit
*/

ADD_TRANS_TRIGGER BDBELT 40 
~
	!Global("LCA_Override", "GLOBAL", 1)
~ DO 2

EXTEND_BOTTOM BDBELT 40
	IF ~ 
		OR(2)
			Global("EECorwinBG1","Global",1)
			Global("EECorwinBG1","Global",51)
	~ 
	THEN REPLY @0 /* ~Captain Corwin? I can think of no better companion.~ */
	EXTERN ~BDSCHAEL~ LCA283
END