// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP07.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP07.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA309~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~My doors are always open to those with coin in their pockets. If I don't have what you need, then you don't really need it.~ #15389 */
  IF ~~ THEN REPLY @2 /* ~Show me what you have and I shall decide for myself.~ #15390 */ DO ~StartStore("xaa150",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Your slogan is tempting, but I am quite well stocked for now. Good day.~ #15391 */ EXIT
END
