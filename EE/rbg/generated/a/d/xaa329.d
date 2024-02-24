// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GARDEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GARDEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA329~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What are you doing?! This is the estate of Entar Silvershield, and he damn well won't be pleased to know that hooligans are tromping all over his lawn!~ #11282 */
  IF ~~ THEN EXIT
END
