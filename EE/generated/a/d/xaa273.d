// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERVAN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERVAN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA273~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Excuse me, but I have many duties to perform.~ #7480 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Good day, <SIRMAAM>. I don't seem to recognize you? Could I inquire as to who you are?~ #7481 */
  IF ~~ THEN REPLY @3 /* ~No, you can't.~ #7485 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Yes, you could. We're criminals of the most depraved sort, so if you don't keep quiet, we will be forced to kill you.~ #7486 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~We're guests of your master. Now if you would excuse us, we'll be on our way.~ #7487 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~Um, okay.~ #7482 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7 /* ~O-okay, please don't hurt me, I'm just a lowly servant, no trouble at all really.~ #7483 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @8 /* ~Hmm, I don't remember my master... Well, all right, I'm sorry to have bothered you.~ #7484 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I think you'll make a much nicer master than my old one!~ #7488 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~Not to be rude, but I'd rather you left immediately.~ #9088 */
  IF ~~ THEN EXIT
END
