// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BLACKL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BLACKL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA278~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~It will be the darkest day ye have never seen before I don't have what ye need. Fer the right price, anyway.~ #2842 */
  IF ~  !Global("Chapter","GLOBAL",7)
~ THEN GOTO 1
  IF ~  Global("Chapter","GLOBAL",7)
~ THEN DO ~StartStore("xaa128",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~What will ye need today? Remember, cash or hit the bricks. I extend no credit, especially to new recruits.~ #2843 */
  IF ~~ THEN DO ~StartStore("xaa128",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Off wit' ye now. I've counting to do.~ #2844 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Alarm! Alarm! Snakes in our own guild! Take 'em alive so we can kill 'em slow!~ #2845 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~As a good friend, I must warn you: Magic use isn't appreciated in the guild, especially if it's used against guild members. I'll likely have to kill you once this parlor sorcery wears off.~ #6393 */
  IF ~~ THEN EXIT
END
