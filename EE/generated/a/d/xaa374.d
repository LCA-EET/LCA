// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZOMBIE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZOMBIE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA374~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Uuuuuuuuuhhhh...~ [ZOMBI01] #93 */
  IF ~~ THEN EXTERN ~BASSIL~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hhhhhhhhhhhh...~ #95 */
  IF ~~ THEN EXTERN ~BASSIL~ 2
END
