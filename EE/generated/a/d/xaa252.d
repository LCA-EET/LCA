// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB8.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB8.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA252~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello friends. At least, I hope you are friends. Wouldn't want enemies barging into my home at all hours uninvited.~ #8796 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Were you planning on staying in my home long? Only until the guard arrives, I'll wager.~ #8797 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,0,GOLD)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I don't leave my home much, so there's little I know about what goes on within the city. Why don't you take this gold piece and enjoy yourself at the market square? There's all sorts of things to do there.~ #8798 */
  IF ~~ THEN DO ~GivePartyGold(1)
~ EXIT
END

IF WEIGHT #1 ~  ReputationLT(Player1,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Leave me! You've outstayed your welcome!~ #9174 */
  IF ~~ THEN EXIT
END
