// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NORALE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NORALE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA240~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I have little to say to you except good riddance.~ #15092 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I just had some new armor shipped in from Waterdeep and I'm afraid I must have dropped the gauntlets into one of the shipping crates somewhere between here and the harbor. Please, if you can find them before somebody else picks them up, I would be most grateful.~ #15093 */
  IF ~~ THEN UNSOLVED_JOURNAL @3 /* ~Noralee's Gauntlets
A half-elf called Noralee is searching for her new gauntlets, which she lost somewhere between the harbor and the warehouse where she works.~ #27341 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  Global("HelpNoralee","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Oh, I do hope we find those gauntlets soon.~ #15094 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("BRAC09")
~ THEN BEGIN 3 // from:
  SAY @5 /* ~My gauntlets! Here's 45 gold pieces for all your time and trouble.~ #15095 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpNoralee","GLOBAL",1)
TakePartyItem("BRAC09")
GivePartyGold(45)
AddexperienceParty(1000)
ReputationInc(1)
EscapeArea()
~ SOLVED_JOURNAL @6 /* ~Noralee's Gauntlets
Happy at the return of her lost gauntlets, Noralee gave us a nice little reward.~ #27342 */ EXIT
END

IF WEIGHT #3 ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("BRAC09")
~ THEN BEGIN 4 // from:
  SAY @7 /* ~You found my gauntlets! I was beginning to think they'd never show up. Here, take these infravision potions as your reward. I'm sure you'll have use for it sometime.~ #15096 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpNoralee","GLOBAL",1)
TakePartyItem("BRAC09")
AddexperienceParty(1000)
ReputationInc(1)
GiveItem("POTN30",LastTalkedToBy)
GiveItem("POTN30",LastTalkedToBy)
EscapeArea()
~ SOLVED_JOURNAL @6 /* ~Noralee's Gauntlets
Happy at the return of her lost gauntlets, Noralee gave us a nice little reward.~ #27342 */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @8 /* ~Oh, damn it! I don't even have my new armor on. Very well, this old stuff I'm wearing is tried and true.~ #15097 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
