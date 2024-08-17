// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST2.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST2.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA337~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Up for some company luv? No, I suppose not. Looks like you've your own "party" waiting. Some other life perhaps.~ #8230 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Ooo, such a pity for you, milady. You've arrived on Gunther's night off.~ #8231 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~You didn't have to use that charm spell on me; I'm already hot for you, beautiful.~ #8232 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~You'll get nothing from me!~ #9104 */
  IF ~~ THEN EXIT
END
