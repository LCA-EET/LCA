// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HELSHA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HELSHA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA379~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~This week's end will not come soon enough! I tire of standing about, playing watchman. Many a magical study awaits while I waste time guarding a rock.~ #3016 */
  IF ~~ THEN EXTERN ~XAA378~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Fragment or no, here I sit guarding a pebble while the world goes on without me. I don't know how you and she stand it.~ #3017 */
  IF ~~ THEN EXTERN ~XAA378~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Ithmeera, you should know by now that father is a few sparks shy of a fireball. Skyship or rowboat, if he made it, I wouldn't trust it to hold air, let alone float on it.~ #3018 */
  IF ~~ THEN EXTERN ~XAA378~ 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~You know, sister, I think we have been duped. I do not believe I recognize this supposed servant. Sound a warning! It's as father predicted, a thief in our midst!~ #3019 */
  IF ~~ THEN REPLY @5 /* ~Surrender the items you guard lest I take them from your corpses!~ #3020 */ GOTO 5
  IF ~~ THEN REPLY @6 /* ~I am a servant here, just hired. I mean no harm. My apologies for disturbing you, I shall leave.~ #3021 */ GOTO 4
  IF ~~ THEN REPLY @7 /* ~I am no thief! I offer good gold for the items you guard. Name a price!~ #3022 */ EXTERN ~XAA378~ 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @8 /* ~You are no servant! You're either assassins or thieves! It matters not which as you will die nonetheless.~ #3023 */
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY @9 /* ~It is a long, cold journey to MY corpse, fool!~ #3024 */
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()
~ EXTERN ~XAA378~ 4
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~I am Helshara, a daughter of the great mage Shandalar. My father has given me the duty of selling certain components to the Grand Dukes of Baldur's Gate. They are vital to the construction of a Halruaan flying ship. You could likely do it for me, though. Take my component, if you wish; it is in the desk.~ #7094 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~What you've done is wrong! You'll pay!~ #9117 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
!Dead("Ithmeera")
~ THEN BEGIN 8 // from:
  SAY @12 /* ~You've gone rather far afield, haven't you, servant? Well, no matter. Anyone to alleviate the boredom is appreciated, even if they are of the lower class.~ #2805 */
  IF ~~ THEN DO ~ActionOverride("Ithmeera",SetNumTimesTalkedTo(1))
~ EXTERN ~XAA378~ 0
END
