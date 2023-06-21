//LCCORWID
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~LCCORWID~

IF ~
	Global("LCA_ScriptIDTest", "GLOBAL", 1)
~
THEN BEGIN LCA_ID
	SAY @0
	IF ~~ THEN
	EXIT
END