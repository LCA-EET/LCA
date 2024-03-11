// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM7.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM7.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA390~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Who are you?! You shouldn't be here; leave immediately.~ #7515 */
  IF ~~ THEN REPLY @2 /* ~We're inspectors, sent to investigate the palace. We've heard that there are spies about.~ #7520 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We're relatives of the Grand Dukes, so let us pass.~ #7521 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We won't be going anywhere except through you!~ #7522 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Sorry, not even inspectors are allowed past us.~ #7516 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~You lie! You must be robbers or worse!~ #7517 */
  IF ~~ THEN DO ~SendTrigger("FlamingFist7",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~We'll see about that.~ #7518 */
  IF ~~ THEN DO ~SendTrigger("FlamingFist7",1)
~ EXIT
END

IF ~  RandomNum(2,1)
StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Gosh! I don't know why we were so obtuse. Obviously, you can pass.~ #7519 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(2,2)
StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Sorry, I can't even let a good friend into the treasury.~ #7523 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~You're not welcome here!~ #9008 */
  IF ~~ THEN EXIT
END
