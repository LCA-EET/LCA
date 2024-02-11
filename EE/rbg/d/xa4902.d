// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\PROSLA.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\PROSLA.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA4902~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Oooo, cheeky! Watching is extra, sweetie.~ #8228 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~He insists on calling me "Britannia." Whatever gets you through the night, I guess.~ #9105 */
  IF ~~ THEN EXIT
END
