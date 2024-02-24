// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWB6.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWB6.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA352~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You will find little here to interest you. I am but a common citizen.~ #8814 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Please behave yourself in my home. I should hate to have to call upon the guards. They tend to get a bit overzealous.~ #8815 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~You leave me no choice! Help!~ #8816 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I wish I was up to making a fine supper for the lot of you, but I've only enough for my family. Perhaps you'd stay and enjoy the comforts of my humble home? It seems to me though, that you're not the type to have time for rest. I wish you the best.~ #8817 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  ReputationLT(Player1,3)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~I'll not speak a word after what you did!~ #8996 */
  IF ~~ THEN EXIT
END
