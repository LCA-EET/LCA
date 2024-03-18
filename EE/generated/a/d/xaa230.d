// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PUMBER2.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PUMBER2.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA230~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Tread carefully within the house of the Bitch Goddess. Conduct your business and go lest she find a way to drown you even in the driest desert.~ #8532 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Wait?! You're not supposed to be allowed here! You have called down the Vengeance of the Water Queen upon you!~ #8533 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
