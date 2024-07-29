// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERVA2.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERVA2.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA345~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Excuse me, but I don't think I recognize you. Entar Silvershield didn't say anyone was going to be in today. Would it be rude of me to inquire what you're doing here?~ #7420 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now?~ #7431 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now?~ #7432 */ GOTO 2
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate. We're here to ensure his safety.~ #7433 */ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @3 /* ~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate. We're here to ensure his safety.~ #7434 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @4 /* ~There's not much to tell, really. Now please get out of our way!~ #7435 */ GOTO 5
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @4 /* ~There's not much to tell, really. Now please get out of our way!~ #7436 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @5 /* ~I am an art collector. I am here to collect some marble statuettes that I purchased a week past. My companions are here to help me carry them out.~ #7437 */ GOTO 7
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @5 /* ~I am an art collector. I am here to collect some marble statuettes that I purchased a week past. My companions are here to help me carry them out.~ #7438 */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Yes, of course. I'm sorry for bothering you.~ #7421 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~I don't believe you. I've never seen you before! GUARDS!~ #7422 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~You don't look like members of the Flaming Fist. Oh! By the gods, you must be bandits. HELP!~ #7423 */
  IF ~~ THEN DO ~GlobalShout(99)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~If you say so, though you must be undercover or somethin', since you're not wearing any insignia.~ #7424 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @10 /* ~I will not get out of your way! You must all be bandits! HELP!~ #7425 */
  IF ~~ THEN DO ~GlobalShout(99)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @11 /* ~I'm sorry. Please forgive me.~ #7426 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.6
  SAY @12 /* ~Really! I've dusted my master's marble collection every day for three years. I don't know what it'll be like without them anymore.~ #7427 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.7
  SAY @13 /* ~If that's the case, then tell me what one of the statues looks like!~ #7428 */
  IF ~~ THEN REPLY @14 /* ~There's one that looks like a horse.~ #7439 */ GOTO 9
  IF ~~ THEN REPLY @15 /* ~There's one that looks like a cow.~ #7440 */ GOTO 9
  IF ~~ THEN REPLY @16 /* ~There's one that looks like a pegasus.~ #7441 */ GOTO 9
  IF ~~ THEN REPLY @17 /* ~There's one that looks like a warrior.~ #7442 */ GOTO 10
  IF ~~ THEN REPLY @18 /* ~There's one that looks like a dragon.~ #7443 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.4 8.2 8.1 8.0
  SAY @19 /* ~There's no such statue! You lied! You must be bandits! HELP!~ #7429 */
  IF ~~ THEN DO ~GlobalShout(99)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.3
  SAY @20 /* ~Okay I believe you. I'm sorry for being so much trouble.~ #7430 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  OR(3)
StateCheck(Myself,STATE_CHARMED)
IsValidForPartyDialogue("SKIE")
IsGabber("SKIE")
~ THEN BEGIN 11 // from:
  SAY @21 /* ~I'm just a lowly servant who knows very little.~ #7444 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @22 /* ~Not to be rude, but I'd rather you left immediately.~ #9087 */
  IF ~~ THEN EXIT
END
