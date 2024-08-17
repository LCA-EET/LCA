// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GIRBA3.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GIRBA3.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA140~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm going to use magic when I get older. It's beautiful.~ #8840 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I feel safe with the giant walls around the city.~ #8841 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 even though they appear after this state */
~  True()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~The guards are nice, but they sometimes do bad things to bad people.~ #8842 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Leave me alone! You're mean!~ #9025 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~You don't smell half as bad as most 'venturers.~ #9026 */
  IF ~~ THEN EXIT
END
