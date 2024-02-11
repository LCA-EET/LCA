// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\OGRELEAD.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\OGRELEAD.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA5250~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Little pink ones, you shall all die. The son of Murder offers 10,000 gold for the head of <CHARNAME>, and we shall have it.~ #11828 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
