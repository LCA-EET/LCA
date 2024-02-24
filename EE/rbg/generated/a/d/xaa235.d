// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILNED.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILNED.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA235~

IF ~  True()
~ THEN BEGIN 0 // from: 1.0
  SAY @1 /* ~Fer 'e's a jolly good fellow,
Fer 'e's a jolly good fellow,
Fer 'e's a jolly good felloooow...
Dat nobody can deny!~ #19634 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Dat nobody can deny!
Dat nobody can deny!
Ooohhh...~ #19635 */
  IF ~~ THEN REPLY @3 /* ~Sing the song again. Come on, we loved it so much, we have to hear it again.~ #19655 */ GOTO 0
  IF ~~ THEN REPLY @4 /* ~We don't need to hear the song no more.~ #19656 */ EXIT
END
