// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BOYBA2.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BOYBA2.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA170~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What are you doing in my mom's house? You should go.~ #8826 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~You don't belong in here. I'll tell on you if you don't go!~ #8827 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Someday I'll go 'venturing too!~ #8828 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Leave me alone! You're mean!~ #8945 */
  IF ~~ THEN EXIT
END
