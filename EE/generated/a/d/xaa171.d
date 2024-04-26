// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MALTZ.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MALTZ.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA171~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello there! I'm Maltz. I know my place doesn't look much like a store, but I think it suits my purposes quite nicely. What is it that you'd like?~ #10085 */
  IF ~~ THEN DO ~StartStore("xaa102",LastTalkedToBy(Myself))
~ EXIT
END
