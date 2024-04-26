// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LUCKY.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LUCKY.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA181~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi, folks, welcome to Lucky Aello's, where the prices are so low there's gotta be something wrong. Nobody sells it lower than me, because nobody buys it cheaper. If you can find a price lower than mine this side of Calimshan, the item will probably kill you. What can I get for you?~ #11701 */
  IF ~~ THEN REPLY @2 /* ~So you've got the cheapest goods around? Let's have a look.~ #11705 */ DO ~StartStore("xaa112",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No, thanks. You get what you pay for.~ #11706 */ EXIT
END
