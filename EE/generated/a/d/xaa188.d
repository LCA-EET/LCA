// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OGRMBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OGRMBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA188~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So, some puny surface-dwellers have come to their death. It'll just be extra treasure for my collection. My pets have been causing much anguish in your surface realms, haven't they? They have been so useful at collecting the surface pinklings. My pets use the flesh for food, and I get the pretty treasure!~ #1527 */
  IF ~~ THEN DO ~SetGlobal("Sewage","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~My pets, kill these intruders.~ #1528 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
