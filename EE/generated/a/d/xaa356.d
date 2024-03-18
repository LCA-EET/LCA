// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB3.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB3.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA356~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~By Sune's boobies, this place is heaven. I can't believe the women of the Lantern; they have that glamor my old hag wife lost so long ago.~ #7512 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I'm not looking forward to heading home tonight. I don't know how I'll explain it to my wife how I lost 6 gold. I'll have to make up some excuse, but she'll know it was the gamblin'.~ #7513 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Sorry, pal, I wish I could help ya, but I've lost all my money in this devil pit.~ #7514 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~I'll not speak a word after what you did!~ #9179 */
  IF ~~ THEN EXIT
END
