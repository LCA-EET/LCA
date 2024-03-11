// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERCHG.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERCHG.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA316~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 5 6 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings, <SIRMAAM>. I hope your stay at the Merchants' League Estate is profitable.~ #7703 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 5 6 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hello, <SIRMAAM>. If I'm not being too forward, might I suggest something?~ #7704 */
  IF ~  !Global("HelpBrandilar","GLOBAL",3)
~ THEN REPLY @3 /* ~Sure, continue.~ #7708 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Shut up, guard!~ #7709 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5 /* ~Yes, <SIRMAAM>!~ #7705 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @6 /* ~If I've guessed correctly, you're here to investigate Zorl and Irlentree. I think you should contact my superior, Brandilar. He might be able to help you.~ #7706 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 6 even though they appear after this state */
~  Global("ZorlDopple","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Nothing to see here, <SIRMAAM>!~ #7707 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @8 /* ~If I were you, friend, I'd go talk with Brandilar.~ #7710 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("Captured","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY @9 /* ~You're not welcome here!~ #9163 */
  IF ~~ THEN EXIT
END
