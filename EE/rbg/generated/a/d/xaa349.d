// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP06.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP06.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA349~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm afraid my stocks are not quite as full as they should be, but I do try to keep a good supply of the basics on hand.~ #15386 */
  IF ~~ THEN REPLY @2 /* ~I'm sure that will suffice. Let's have a look, shall we?~ #15387 */ DO ~StartStore("xaa138",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Perhaps I shall return when your shelves are not so lean.~ #15388 */ EXIT
END
