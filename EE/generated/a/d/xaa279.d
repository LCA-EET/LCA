// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON12.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON12.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA279~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, no one's supposed to be down here. State your business, 'fore I have to give you the beats.~ #7588 */
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @2 /* ~Don't get so excited! We're just checking out some wares that we bought from the Iron Throne.~ #7594 */ GOTO 1
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @2 /* ~Don't get so excited! We're just checking out some wares that we bought from the Iron Throne.~ #7595 */ GOTO 2
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We're new recruits. We were told to have a look around, so that's what we're doing.~ #7596 */ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @3 /* ~We're new recruits. We were told to have a look around, so that's what we're doing.~ #7597 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Eat steel, scum!~ #7598 */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~I wasn't told, and I think ye're lying.~ #7589 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Okay, carry on then.~ #7590 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Lying scum! There aren't any new recruits.~ #7591 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @8 /* ~Well, if that's true, ye're still not supposed ta be in the basements. Git outta here.~ #7592 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Hey, buddy, take as long as you want down here. It's all been rather lax since the two bosses left.~ #7599 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~You're not welcome here! You'll pay with your life!~ #9222 */
  IF ~~ THEN EXIT
END
