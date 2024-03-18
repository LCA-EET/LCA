// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BEGGBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BEGGBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA128~

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Please, if you will, milady. Spare a coin?~ #8500 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Take this gold coin.~ #8513 */ DO ~TakePartyGold(1)
~ GOTO 9
  IF ~  PartyGoldGT(0)
~ THEN REPLY @3 /* ~Here's a gold coin, you lousy bum!~ #8512 */ DO ~TakePartyGold(1)
~ GOTO 11
  IF ~~ THEN REPLY @4 /* ~Get out of my way, bum!~ #8514 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 1 // from:
  SAY @5 /* ~Please, if you will, milord. Spare a coin?~ #8501 */
  IF ~~ THEN REPLY @6 /* ~Shut up, street trash!~ #8515 */ EXIT
  IF ~  PartyGoldGT(0)
~ THEN REPLY @7 /* ~Here's a gold coin; take it and get out of my way. Lousy beggar.~ #8516 */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Take this gold coin.~ #8517 */ DO ~TakePartyGold(1)
~ GOTO 8
END

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 2 // from:
  SAY @8 /* ~Pardon thy lordship, but I've not eaten in nigh unto three days. Spare a coin?~ #8502 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @9 /* ~Take this gold coin and use it well.~ #8519 */ DO ~TakePartyGold(1)
~ GOTO 7
  IF ~~ THEN REPLY @10 /* ~Get a job!~ #8518 */ EXIT
END

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 3 // from:
  SAY @11 /* ~Pardon thy ladyship, but I've not eaten in nigh unto three days. Spare a coin?~ #8503 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @12 /* ~Take this coin, you poor creature.~ #8520 */ DO ~TakePartyGold(1)
~ GOTO 9
  IF ~~ THEN REPLY @13 /* ~Sorry, but I don't have anything to give you.~ #8521 */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @14 /* ~Could ye spare but a bit of change?~ #8504 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @15 /* ~Alms? Alms for the poor?~ #8505 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @16 /* ~Spare a coin for a fella down on his luck?~ #8506 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY @17 /* ~Thank you! Good fortune smile on ye.~ #8507 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @18 /* ~You're a saint, milord.~ #8508 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 0.0
  SAY @19 /* ~You're a saint, milady.~ #8509 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY @20 /* ~May the gods look favorably upon ye.~ #8510 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY @21 /* ~You are too kind. Bless you.~ #8511 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 12 // from:
  SAY @22 /* ~I'm a lousy street bum; you're too good to be my friend. Just leave me alone.~ #8522 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @23 /* ~You've made no friends here! Move along!~ #8940 */
  IF ~~ THEN EXIT
END
