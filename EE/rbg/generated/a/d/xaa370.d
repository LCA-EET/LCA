// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OBERAN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OBERAN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA370~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You must be the new servants and guards, well keep your place! It is an honor for you to be working here! Imagine, a Duchess overseeing such a transaction such as this in my own house. Surely this will turn my competitors absolutely green!~ #8209 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I know not who you are, but because of my guests, I will refrain from having you outright killed. I advise you to leave quickly lest I change my mind. I'll not tolerate strangers loitering about my house on such an occasion as this!~ #8210 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Guards! Murderers in my home! Kill them!~ #8211 */
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Guards! There are intruders in the mansion! To arms!~ #8212 */
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~It is a great honor for me to have such a transaction taking place in my home. Shandalar's daughters are here, and so is the Grand Duchess. It's a good thing I hired extra guards, though I have little to fear from you, my newfound friend.~ #9121 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~You're not welcome here! Get out or be thrown out!~ #9122 */
  IF ~~ THEN EXIT
END
