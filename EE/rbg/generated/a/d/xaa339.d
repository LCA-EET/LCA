// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NANTRI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NANTRI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA339~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Gender(LastTalkedToBy,FEMALE)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello, milady. I trust you will find your stay at the Three Old Kegs to be as restful as anyplace ye have ever called home. Old Nantrin shall see to it. What do you need?~ #8397 */
  IF ~~ THEN REPLY @2 /* ~What provender do you provide?~ #15311 */ DO ~StartStore("xaa142",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~We need nothing at the moment.~ #15312 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Gender(LastTalkedToBy,MALE)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Hello, milord. I trust you will find your stay at the Three Old Kegs to be as restful as anyplace you have ever called home. Old Nantrin shall see to it.~ #8398 */
  IF ~~ THEN REPLY @2 /* ~What provender do you provide?~ #15315 */ DO ~StartStore("xaa142",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @5 /* ~We need nothing right now.~ #15316 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~You have the look of someone unaccustomed to the quiet life. Well, that is what we are all about here at the Three Old Kegs. If you are looking for otherwise you had best keep moving, because you won't find it here.~ #8399 */
  IF ~~ THEN REPLY @7 /* ~Could you describe to us your provender?~ #15317 */ DO ~StartStore("xaa142",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @8 /* ~We'll just be on our way.~ #15318 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 3 // from:
  SAY @9 /* ~I tell you straight and true right now so there is no mistaking. This is a QUIET place, and those that wish to make it otherwise shall find themselves "escorted" to the door. If lucky, you will be able to continue on by yourself after.~ #8400 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @10 /* ~You are welcome to stay as long as you like, though please remember to keep it quiet. We like our rest here at the "Kegs."~ #9150 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @11 /* ~You've outstayed your welcome! Out with you!~ #9151 */
  IF ~~ THEN EXIT
END
