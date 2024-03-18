// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP05.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP05.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA310~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome to my shop. You are free to look about as you wish, but do try not to break anything.~ #15383 */
  IF ~~ THEN REPLY @2 /* ~I shall proceed with due care and attention. What do you have to show me?~ #15384 */ DO ~StartStore("xaa149",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~You need not worry about your merchandise, as I was just leaving.~ #15385 */ EXIT
END
