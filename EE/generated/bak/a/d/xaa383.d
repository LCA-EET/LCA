// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\YAGO.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\YAGO.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA383~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  !Allegiance(Myself,ENEMY)
OR(2)
NumTimesTalkedTo(0)
Global("BrielbaraMove","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What in the Nine Hells are the lot of you doing in my room?~ #1562 */
  IF ~  Global("BrielbaraMove","GLOBAL",1)
~ THEN REPLY @2 /* ~We're here for the cure to the curse you've placed on Brielbara's daughter.~ #1568 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We're here to end your miserable life.~ #1569 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We're members of the Flaming Fist, and we've been ordered to confiscate all spellbooks in the town. You needn't worry; you'll get yours back in a few days.~ #1570 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~Sorry for bothering you, we'll be on our way.~ #11266 */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~So the bitch hired some adventurers to get a cure for her precious daughter. She should have sent someone who was up to the task, instead of you rabble.~ #1563 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~Assassins! I'm not the one who'll be dying.~ #1564 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~Your deception won't work on me, simpletons!~ #1565 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 7 even though they appear after this state */
~  HPLT(Myself,11)
Allegiance(Myself,ENEMY)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~Please! Let me live. I give up. I'll give you anything you want, just don't kill me.~ #1566 */
  IF ~~ THEN REPLY @10 /* ~We don't take prisoners.~ #1571 */ DO ~SetGlobal("YagoFight","GLOBAL",1)
~ EXIT
  IF ~  Global("BrielbaraMove","GLOBAL",1)
~ THEN REPLY @11 /* ~Give us the book and we'll be off.~ #1572 */ GOTO 5
  IF ~~ THEN REPLY @12 /* ~Get out of here coward!~ #11267 */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @13 /* ~Here's my spellbook, thank you for letting me live, thank you.~ #1567 */
  IF ~~ THEN DO ~ActionOverride(Player1,SmallWait(1))
ActionOverride(Player2,SmallWait(1))
ActionOverride(Player3,SmallWait(1))
ActionOverride(Player4,SmallWait(1))
ActionOverride(Player5,SmallWait(1))
ActionOverride(Player6,SmallWait(1))
GiveItem("BOOK70",LastTalkedToBy)
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 7 even though they appear after this state */
~  True()
~ THEN BEGIN 6 // from:
  SAY @14 /* ~Haven't you bothered me enough?!~ #6441 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 7 // from:
  SAY @15 /* ~Life has been pretty lousy lately; how about you, friend? My bitch of a wife slept with some elvish mongrel, and even had his child. By the Nine Hells, does she ever have gall. Anyway, she's not laughing anymore; I cursed the child of that unholy union, so that it would die an early death. I hope the little brat drowns in its own vomit.~ #6442 */
  IF ~~ THEN DO ~AddJournalEntry(26899,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @16 /* ~Get out of my sight! I'll do nothing for you!~ #9035 */
  IF ~~ THEN EXIT
END
