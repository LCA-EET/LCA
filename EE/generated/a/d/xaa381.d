// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DELORN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DELORN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA381~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What is this violation?! Explain your presence here!~ #2863 */
  IF ~  Global("ASSNUTS","GLOBAL",1)
~ THEN REPLY @2 /* ~Give me your component to the skyship, or suffer the consequences!~ #2985 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~My apologies, but I am new to the estate and have lost my way. I'll not disturb you again.~ #2986 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Stay your wrath! I know of your mission here, and would buy what you are guarding. Name your price.~ #2987 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 4.1 3.1 0.0
  SAY @5 /* ~I am a daughter of Shandalar, and no helpless maiden! If you wish what I guard, you'd best be strong enough to pull it from my grasp!~ #2988 */
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 4.0 3.0 0.1
  SAY @6 /* ~You are no servant! You're spies or worse. If you thought to take me by surprise you're sorely mistaken.~ #2989 */
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~No servile duty makes you skulk about my room! It is as father warned and worse. Thieves in the very house we sought seclusion! Leave, lest this daughter of Shandalar put you in your grave!~ #2990 */
  IF ~~ THEN REPLY @8 /* ~This is me leaving! I'll not return to bother you!~ #2992 */ GOTO 2
  IF ~~ THEN REPLY @9 /* ~Hollow words from a frightened lass! Hand over the skyship component!~ #2993 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @10 /* ~Your offer is more of an insult than your presence in my private room! Leave now, lest you not be able to!~ #2991 */
  IF ~~ THEN REPLY @8 /* ~This is me leaving! I'll not return to bother you!~ #2995 */ GOTO 2
  IF ~~ THEN REPLY @9 /* ~Hollow words from a frightened lass! Hand over the skyship component!~ #2996 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY @11 /* ~You are foolish to attack the spider in its chosen den! We are here because it's guarded, so you'll not fight only I! Help to me! We are infiltrated!~ #2994 */
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @12 /* ~I am Delorna, a daughter of the great mage Shandalar. My father has given me the duty of selling certain components to the Grand Dukes of Baldur's Gate. They are vital to the construction of a Halruaan flying ship. You could likely do it for me, though. Take my component, if you wish; it is in the desk.~ #7093 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @13 /* ~What you've done is wrong! You'll pay!~ #9118 */
  IF ~~ THEN EXIT
END
