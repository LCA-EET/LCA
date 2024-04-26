// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SEWERC.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SEWERC.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA234~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~*sniff* Do shouddn't be down here. Not safe if youb don't know your wayb abound. Probabby can't stanb the smelb, either.~ #8526 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~There are bany creaturbs down here, so be carebull. They don't bug me buch because I guess I smelb the samb as everything elb.~ #8527 */
  IF ~~ THEN REPLY @3 /* ~Who are you, and why are you wandering about the sewers?~ #8529 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Bugger off!~ #8530 */ GOTO 4
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~If you're realby my frienb, then you'll clearb up my nose run wit' magic.~ #8528 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @6 /* ~I'm a sewerb cleaner. My job is to clearb up any blocks in the flow.~ #8531 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @7 /* ~I hobe the monsterbs downd here get youb!~ #9084 */
  IF ~~ THEN EXIT
END
