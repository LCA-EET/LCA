// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB9.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB9.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA214~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I've nothing of value here. Please leave my home as it is.~ #8799 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~The guards will ensure you leave! Do I call them, or do you leave now?~ #8800 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Guards! Thieves! Murderers!~ #8801 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,0,GOLD)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I don't leave my home much, so there's little I know about what goes on within the city. Why don't you take this gold piece and enjoy yourself at the market square? There's all sorts of things to do there.~ #8802 */
  IF ~~ THEN DO ~GivePartyGold(1)
~ EXIT
END

IF WEIGHT #1 ~  ReputationLT(Player1,3)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Leave me! You've outstayed your welcome!~ #9173 */
  IF ~~ THEN EXIT
END
