// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA292~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, there, make sure ya don't cause any trouble with our ladies. If you want to be rough with non-employees, then keep it to yourself.~ #7586 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Just a word of warning to a friend: Watch for those two crazies, Slythe and Krystin. They're not with it, if you know what I mean.~ #7587 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~You're not welcome here! Get out or be thrown out!~ #9258 */
  IF ~~ THEN EXIT
END
