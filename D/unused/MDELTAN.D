//Modifications to DELTAN.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-16: Initial Commit

*/

ADD_TRANS_TRIGGER DELTAN 0
~
	!Global("LCA_Override", "Global", 1)
~
DO 3

EXTEND_BOTTOM DELTAN 0
	IF ~  
		Global("EECorVsIT","GLOBAL",0)
		IsValidForPartyDialogue("Corwin")
	~ THEN 
	DO ~
		SetGlobal("EECorVsIT","GLOBAL",1)
	~ 
	EXTERN ~BDCORWIJ~ LCA463
END