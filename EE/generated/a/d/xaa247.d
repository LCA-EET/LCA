// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB6.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB6.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA247~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 5 6 7 even though they appear after this state */
~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I just need one lucky streak, that's all. Just the one and I'll make up all I've lost! Come on Lady Luck, don't fail me now.~ #8366 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 7 even though they appear after this state */
~  RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~C'mon, c'mon! Daddy needs a new plow!~ #8367 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 5 6 7 even though they appear after this state */
~  RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Here goes the money for horse feed. Gotta let it ride so I can too.~ #8368 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 5 6 7 even though they appear after this state */
~  RandomNum(4,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Merchant companies are turning out porters left and right. Not much choice aside from dockhand, and I've a bum shoulder. Lady Luck smile on a wayward soul tonight.~ #8369 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Don't go pokin' folk about the table, young 'un. You're liable to catch a nasty backhand.~ #8370 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("Warning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~Back yerself off! This here's my table an' I'm on a streak! You interrupt me again and I'll have you for pig feed!~ #8371 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("Warning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~I warned ya, I did! You could'na leave it alone, could ya?! So be it! Get 'em!~ #8372 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~You look like the kinda person who has some money. How 'bout we go to the Low Lantern, and ya rent us a couple of girls fer the night?~ #8374 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9 /* ~Leave me! You've outstayed your welcome!~ #9176 */
  IF ~~ THEN EXIT
END
