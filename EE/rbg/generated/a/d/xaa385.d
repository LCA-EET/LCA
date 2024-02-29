// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM9.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM9.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA385~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Who the hell are you, and what are you doing in my office?!~ #7526 */
  IF ~~ THEN REPLY @2 /* ~We're adventurers searching for treasure.~ #7530 */ DO ~Enemy()
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We're inspectors, searching for suspected spies within the palace.~ #7531 */ DO ~Enemy()
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We're relatives of the Grand Dukes.~ #7532 */ DO ~Enemy()
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~That's the most idiotic thing I've heard all year. You've come to the wrong place, and it's going to cost you dearly.~ #7527 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Stop your lies! I would have been told about any "inspectors." I command all the Flaming Fist who guard the palace.~ #7528 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Ha ha! Sure you are.~ #7529 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~You're not welcome here!~ #9014 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I am a proud member of the Flaming Fist. Our headquarters is in Baldur's Gate, though we also operate in Beregost and the Friendly Arm Inn. We are quite concerned about the sudden rarity of iron. Many think that the nation of Amn is gearing up for war against our great city. If this were the case, I don't know how well we would do, lacking a resource as important as iron.~ #9340 */
  IF ~~ THEN EXIT
END
