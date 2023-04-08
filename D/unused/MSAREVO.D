//Modifications to SAREVO.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER SAREVO 6
~
	!Global("LCA_Override", "Global", 1)
~
DO 1

EXTEND_BOTTOM SAREVO 6
	IF ~  
		Global("EECorwSarevDukes","GLOBAL",0)
		IsValidForPartyDialogue("Corwin")
	~ THEN 
	DO ~
		SetGlobal("EECorwSarevDukes","GLOBAL",1)
	~ 
	EXTERN ~BDCORWIJ~ LCA496
END