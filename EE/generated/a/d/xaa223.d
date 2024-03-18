// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONME.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONME.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA223~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What is your business here? If you're here about obtaining iron shipments for your company, then you'd be best to do so elsewhere. We have no interest in dealing with other companies.~ #1490 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Spare my life and I'll tell you anything you want.~ #1491 */
  IF ~~ THEN REPLY @3 /* ~Tell us where we can find your leaders.~ #1496 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Ah, stop your whining and get out of here.~ #1497 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @5 /* ~You're dead, no begging is going to change that.~ #1498 */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~They're all at Candlekeep, except Thaldorn who's in his room in the upper levels. Please don't kill me.~ #1495 */
  IF ~~ THEN UNSOLVED_JOURNAL @7 /* ~Investigating the Iron Throne
I've learned that one of the Iron Throne leaders is on the fourth floor of the Iron Throne citadel.~ #27175 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @8 /* ~Well, friends, if you want to meet the leaders of the Iron Throne, you'll have to go to Candlekeep. That's where Brunos and Rieltar went.~ #6271 */
  IF ~~ THEN UNSOLVED_JOURNAL @9 /* ~Investigating the Iron Throne
A merchant told us that Brunos and Rieltar, two of the Iron Throne leaders, have traveled to Candlekeep.~ #27176 */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10 /* ~You've made no friends here! Move along!~ #9207 */
  IF ~~ THEN EXIT
END
