// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BORK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BORK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA205~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~A good day to you! No doubt you have heard of the Blushing Mermaid and sought it out. Seldom do people come here accidentally. It's sometimes a dangerous place to be. At least, it is without ample protection for your purse.~ #8358 */
  IF ~~ THEN REPLY @2 /* ~Can you tell us what you have to offer here?~ #15319 */ DO ~StartStore("xaa116",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Goodbye.~ #15320 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Welcome, you are. Just try not to make too many "messes" while here. We lose enough patrons to their professions without losing them to their recreation as well.~ #8359 */
  IF ~~ THEN REPLY @2 /* ~Can you tell us what you have to offer here?~ #15321 */ DO ~StartStore("xaa116",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @5 /* ~See you later.~ #15322 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~Welcome. Even scum such as yourselves are welcome here. Don't look so shocked at me, if ye canna withstand such a minor truth as that ye will surely leave here dead tonight. Besides, ye must be used to it by now.~ #8360 */
  IF ~~ THEN REPLY @7 /* ~What do you have to offer here?~ #15324 */ DO ~StartStore("xaa116",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @8 /* ~We won't just stand here and let you insult us. Goodbye!~ #15325 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @9 /* ~It don't matter if we're friends or not. I treat everyone the same. The Blushing Mermaid is for everyone who don't want their business known.~ #8942 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10 /* ~You've made no friends here! Move along!~ #8943 */
  IF ~~ THEN EXIT
END
