// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRILLA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRILLA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA373~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Excuse me, but I don't know any of you. Perhaps you could tell me what you're doing in my room.~ #7456 */
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @2 /* ~Sorry, we must have wandered a little too much. We're business associates of Entar. We just arrived from Waterdeep this morning. Perhaps we could inquire as to your identity?~ #7465 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @2 /* ~Sorry, we must have wandered a little too much. We're business associates of Entar. We just arrived from Waterdeep this morning. Perhaps we could inquire as to your identity?~ #7466 */ GOTO 2
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @3 /* ~We're members of the Flaming Fist. We think that Entar may be in danger, and we've been sent by the other Grand Dukes to ensure his safety.~ #7467 */ GOTO 3
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We're members of the Flaming Fist. We think that Entar may be in danger, and we've been sent by the other Grand Dukes to ensure his safety.~ #7468 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~We're rogues, here to rob you blind.~ #7469 */ GOTO 5
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,MALE)
~ THEN REPLY @5 /* ~I've come here, fair lady, to see you! I have heard tales of your beauty ever since I first came to Baldur's Gate. I at first considered such talk exaggerated, but now I see that I was wrong. If you would only grant me a kiss to remember you by, I would be on my way and bother you no more.~ #7470 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)
~ THEN REPLY @5 /* ~I've come here, fair lady, to see you! I have heard tales of your beauty ever since I first came to Baldur's Gate. I at first considered such talk exaggerated, but now I see that I was wrong. If you would only grant me a kiss to remember you by, I would be on my way and bother you no more.~ #7471 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Why, I am Brilla! The wife of Entar Silvershield. Now leave my room immediately before I tell my husband how indiscreet you have been in your wanderings.~ #7457 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~You're all obviously thieves and miscreants, come to have your way with me. GUARDS!~ #7458 */
  IF ~~ THEN DO ~SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
CreateCreature("GUARD",[1805.519],SW)
CreateCreature("GUARD",[1431.246],SW)
CreateCreature("GUARD",[1402.221],SW)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~My husband! In danger! Oh dear me, I wish he would tell me these things. Just carry on whatever you were doing.~ #7459 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @7 /* ~You're all obviously thieves and miscreants, come to have your way with me. GUARDS!~ #7460 */
  IF ~~ THEN DO ~SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
CreateCreature("GUARD",[1805.519],SW)
CreateCreature("GUARD",[1431.246],SW)
CreateCreature("GUARD",[1402.221],SW)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @9 /* ~You won't steal anything! GUARDS!~ #7461 */
  IF ~~ THEN DO ~SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
CreateCreature("GUARD",[1805.519],SW)
CreateCreature("GUARD",[1431.246],SW)
CreateCreature("GUARD",[1402.221],SW)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @10 /* ~Kiss a lout like you?! Unlikely. GUARDS!~ #7462 */
  IF ~~ THEN DO ~SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
CreateCreature("GUARD",[1805.519],SW)
CreateCreature("GUARD",[1431.246],SW)
CreateCreature("GUARD",[1402.221],SW)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.6
  SAY @11 /* ~You've really heard such things? Well, dear me, I didn't know I was the gossip of the town. But now that I think of it, there are few who can match my charm and wit. Why, of course I'd grant you a kiss. *Smack* Why—*giggle*—you're quite fresh, aren't you? Tongue and all!~ #7463 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 8 // from:
  SAY @12 /* ~What are you still doing here? If my husband finds you here, he'll be furious.~ #7464 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  OR(3)
StateCheck(Myself,STATE_CHARMED)
IsGabber("SKIE")
IsValidForPartyDialogue("SKIE")
~ THEN BEGIN 9 // from:
  SAY @13 /* ~Why, I'm so happy to have such wondrously interesting people visit me. I would be so happy if all of you would join me for tea.~ #7472 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @14 /* ~Lost your chance with me, you did! Get lost!~ #8951 */
  IF ~~ THEN EXIT
END
