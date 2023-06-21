//XACORWID
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/

BEGIN ~XACORWID~

IF ~
	Global("XA_ScriptIDTest", "GLOBAL", 1)
~
THEN BEGIN XA_ID
	SAY @0
	IF ~~ THEN
	EXIT
END