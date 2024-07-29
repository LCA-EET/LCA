// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG3.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG3.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA344~

IF ~  OR(3)
StateCheck(Myself,STATE_CHARMED)
IsGabber("SKIE")
IsValidForPartyDialogue("SKIE")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm a mercenary. My job isn't to be smart, it's to guard this estate.~ #7455 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~You there! What are you doing in the estate of Entar Silvershield?~ #7445 */
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @3 /* ~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now?~ #7450 */ GOTO 5
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now?~ #7451 */ GOTO 6
  IF ~~ THEN REPLY @4 /* ~I am an art collector. I am here to collect some marble statuettes that I purchased a week past. My companions are here to help me carry them out.~ #7452 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate. We're here to ensure his safety.~ #7453 */ GOTO 3
  IF ~~ THEN REPLY @6 /* ~I don't know.~ #7454 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @7 /* ~You're not welcome here! Get out or be thrown out!~ #9260 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.2
  SAY @8 /* ~Your lies won't save you, robbers! Defend yourselves!~ #7448 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @9 /* ~You don't know?! You're obviously all crazies that need to be put down.~ #7449 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY @10 /* ~All right then, carry on.~ #7446 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @11 /* ~We haven't heard of this. You look more like thieves to me, and you'll be treated as such.~ #7447 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
