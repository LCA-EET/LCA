// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP01.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP01.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA197~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Show me a pretty bit of gold and you can have anything in the store.~ #15371 */
  IF ~~ THEN REPLY @2 /* ~I've got the gold, but have you anything I need?~ #15372 */ DO ~StartStore("xaa122",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Sorry, but I'm keeping my coins to myself today.~ #15373 */ EXIT
END
