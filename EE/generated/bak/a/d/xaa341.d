// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RINNIE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RINNIE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA341~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Please don't interrupt me. I'm waiting to be inspired.~ #15138 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I have been working on a ballad about the Unicorn Run in the High Forest. I'd like to use a more reliable source than simply hearsay and folklore, though. If you ever find an authoritative history of the run in your travels, I'd love to get my hands on it.~ #15139 */
  IF ~~ THEN UNSOLVED_JOURNAL @3 /* ~A Bard's Request
Rinnie, a bard and balladeer here in Baldur's Gate, has asked me to bring her a history of the Unicorn Run should I encounter one in my travels. Rinnie can be found in one of the houses located beside the palace.~ #27415 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 3 4 6 even though they appear after this state */
~  Global("HelpRinnie","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Hi there. Found anything substantial on the Unicorn Run yet?~ #15140 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  PartyHasItem("BOOK55")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("HelpRinnie","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~"History of the Unicorn Run..." How wonderfully ideal! You wouldn't believe how grateful I am to get my hands on this. Here, a friend of mine gave me this magical scroll and I have yet to make use of it.~ #15141 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
TakePartyItem("BOOK55")
GiveItem("SCRL08",LastTalkedToBy)
SetGlobal("HelpRinnie","GLOBAL",1)
AddexperienceParty(900)
~ SOLVED_JOURNAL @6 /* ~A Bard's Request
I didn't need it myself, so I gave "The History of the Unicorn Run" to Rinnie.~ #27416 */ EXIT
END

IF WEIGHT #3 ~  False()
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Must you pick on me when I'm trying to concentrate?~ #15142 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~"Sweet waters of the forest
flow through each den and glade,
nourishing the unicorns
who lie graceful in the shade..."~ #15143 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  PartyHasItem("BOOK55")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Global("HelpRinnie","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @9 /* ~"History of the Unicorn Run..." Interesting... I'll give you 80 gold pieces for it.~ #15144 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
TakePartyItem("BOOK55")
SetGlobal("HelpRinnie","GLOBAL",1)
AddexperienceParty(900)
GiveGoldForce(80)
~ SOLVED_JOURNAL @6 /* ~A Bard's Request
I didn't need it myself, so I gave "The History of the Unicorn Run" to Rinnie.~ #27416 */ EXIT
END
