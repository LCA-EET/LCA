// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP04.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP04.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA319~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Please, browse and take your time. I've no wish to rush a potential new customer.~ #15380 */
  IF ~~ THEN REPLY @2 /* ~Let us see what you have, then.~ #15381 */ DO ~StartStore("xaa147",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~There is nothing here that I require. Good day.~ #15382 */ EXIT
END
