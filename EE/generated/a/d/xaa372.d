// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK3.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK3.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA372~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~This is strange. Entar didn't say he was going to have guests over for food. I've only made servings to fit three. I guess I must make changes. Don't worry, you'll have a feast that you won't soon forget!~ #7473 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hello again, you'll have to excuse me, I'm quite busy.~ #7474 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  OR(3)
StateCheck(Myself,STATE_CHARMED)
IsValidForPartyDialogue("SKIE")
IsGabber("SKIE")
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Would you like it if I whipped up some food for you right here and now? Come on friends, stay and try out my Sembian meatballs!~ #7475 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  False()
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Get out of my sight! I'll do nothing for you!~ #9185 */
  IF ~~ THEN EXIT
END
