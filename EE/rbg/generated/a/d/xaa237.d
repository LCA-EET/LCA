// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART16.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART16.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA237~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Pray tell, what has brought you into my fine establishment today? New customers are always a welcome sight.~ #15368 */
  IF ~~ THEN REPLY @2 /* ~I've a coin or two burning a hole in my purse. Let's see what you have to offer.~ #15369 */ DO ~StartStore("xaa116",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Sorry, but I've no interest in your services at the moment. Perhaps another time.~ #15370 */ EXIT
END
