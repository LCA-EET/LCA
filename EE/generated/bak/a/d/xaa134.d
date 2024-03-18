// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MICK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MICK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA134~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Speedy delivery, speedy delivery coming through. Must inform the Grand Dukes of the Nashkel mines liberation. They must be told iron supplies will return to normal once trade routes are reliable once again. Speedy delivery, coming through!~ #17933 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
