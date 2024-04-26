// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST6.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST6.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA270~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Don't ye look down on me when ye're walkin' past, ye knobbish plonker. We're all sellin' something; I'm just more obvious.~ #8284 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Bugger off, I don't want yer uppity self 'round here.~ #8285 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~All I can tell you, lover, is to watch for Slythe and Krystin. They're crazy.~ #8286 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Get near me again and I'll have your nethers on a platter!~ #9100 */
  IF ~~ THEN EXIT
END
