// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ELKART.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ELKART.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA319~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  !GlobalTimerNotExpired("Ransom","GLOBAL")
Global("RescuedSkie","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I see that you're here prompt for your ransom money. I hope you don't think you'll get away with this forever!~ #17325 */
  IF ~~ THEN DO ~GiveGoldForce(1000)
IncrementGlobal("RansomTaken","GLOBAL",1)
SetGlobalTimer("Ransom","GLOBAL",TWO_DAYS)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Get out of my face.~ #17326 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  GlobalGT("RescuedSkie","GLOBAL",0)
OR(2)
Global("RansomTaken","GLOBAL",8)
Global("Chapter","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~You foolish little prigs, you've become way too predictable. HEY! They're all here ripe for the slaughter!~ #17327 */
  IF ~~ THEN DO ~CreateCreature("FLAME",[343.148],SW)
CreateCreature("FLAME",[305.166],SW)
CreateCreature("FLAME",[363.180],SW)
CreateCreature("FLAME",[348.297],NW)
CreateCreature("FLAME",[384.281],NW)
CreateCreature("FLAME",[417.270],NW)
EscapeArea()
~ EXIT
END

IF WEIGHT #2 ~  GlobalTimerNotExpired("Ransom","GLOBAL")
GlobalGT("RansomTaken","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~You're a little early. Come back later and you'll get your damn blood money!~ #17546 */
  IF ~~ THEN EXIT
END
