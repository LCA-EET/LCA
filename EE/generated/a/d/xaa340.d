// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK4.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK4.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA340~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Out out OUT! I'll no be giving out scraps to fools wandering about tonight! I've a DUKE to cook for, so if you try to distract me you'll likely get a pot upside your head!~ #8242 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Though I'm stuck in this here kitchen, it don't mean I haven't got rumors coming my way. From what I hear, Sarevok's the next Grand Duke fer sure.~ #8243 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Out! And never darken my door again!~ #9184 */
  IF ~~ THEN EXIT
END
