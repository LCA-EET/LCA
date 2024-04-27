// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWB5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWB5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA200~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  ReputationLT(Player1,10)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Please leave my home. We have little to steal these days.~ #8811 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  ReputationGT(Player1,9)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I know you not at all, but I hesitate to ask you to leave. I do not wish to turn out anyone in these dark times.~ #8812 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I wish I was up to making a fine supper for the lot of you, but I've only enough for my family. Perhaps you'd stay and enjoy the comforts of my humble home? It seems to me though, that you're not the type to have time for rest. I wish you the best.~ #8813 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  ReputationLT(Player1,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I'll not speak a word after what you did!~ #8995 */
  IF ~~ THEN EXIT
END
