// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MAREK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MAREK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA145~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Could we have a moment of your time?~ #1420 */
  IF ~~ THEN REPLY @2 /* ~Not right now.~ #1425 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What is it?~ #1426 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Actually, we insist. We need to talk to you about your involvement with the Iron Throne.~ #1421 */
  IF ~~ THEN REPLY @5 /* ~We're not interested.~ #1428 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~All right, go ahead, what do you want?~ #1429 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~Well, we tried to warn you.~ #1422 */
  IF ~~ THEN DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @8 /* ~First, let me introduce the two of us. I'm Marek and this is my companion, Lothander. I thought it would be nice for you to know our names, 'cause if you don't take our advice you'll be seeing more of us two. I know that you've been taking an active interest in destroying the Iron Throne, don't try to deny it. My companion and I are in the employ of the aforementioned Throne. We thought it would be polite to give you one last warning: Stop interfering with our employer's business. You can decide to disregard this warning, but if you do, it'll be the last decision you ever make. See ya later.~ #1423 */
  IF ~~ THEN REPLY @10 /* ~Make all the threats you want. We aren't the ones with one foot in the grave. It's anybody stupid enough to get in our way who will pay the piper.~ #1427 */ DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()
~ JOURNAL @9 /* ~Two assassins working for the Iron Throne have threatened us. Their names are Marek and Lothander, and they have warned us to back away from the Iron Throne.~ #7081 */ EXIT
  IF ~~ THEN REPLY @11 /* ~Gee, thanks for the warning.~ #1430 */ DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()
~ JOURNAL @9 /* ~Two assassins working for the Iron Throne have threatened us. Their names are Marek and Lothander, and they have warned us to back away from the Iron Throne.~ #7081 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  Global("MarekMove","GLOBAL",1)
HasItem("POTN47",Myself)
~ THEN BEGIN 4 // from:
  SAY @12 /* ~So you've come, I assume, to take the antidote. All you're going to accomplish is to hasten your death, but I think that isn't the foremost worry you have at the moment.~ #1424 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF WEIGHT #0 ~  Global("MarekMove","GLOBAL",1)
HasItem("POTN47",Myself)
StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @13 /* ~Well, hey friends. Here, have the antidote. I didn't want it anyway.~ #6296 */
  IF ~~ THEN DO ~GiveItem("POTN47",LastTalkedToBy)
~ EXIT
END

IF WEIGHT #3 ~  Global("MarekMove","GLOBAL",1)
!HasItem("POTN47",Myself)
~ THEN BEGIN 6 // from:
  SAY @14 /* ~I'll have your skull for what you've done!~ #9167 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
