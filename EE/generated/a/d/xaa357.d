// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PHEIRK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PHEIRK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA357~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("StartedPheirkasQuest","GLOBAL",0)
!InParty([0.0.0.THIEF_ALL])
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hmm, I prefer not to work with amateurs.~ #15107 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("StartedPheirkasQuest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~There's a fat man by the name of Algernon staying at Feldepost's Inn in Beregost. He keeps a cloak with him in his room and I need you to get your larcenous hands on it and bring it back to me. I assure you that your reward will be handsome. Try not to kill him, just filch it off his person.~ #15108 */
  IF ~~ THEN DO ~SetGlobal("StartedPheirkasQuest","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Algernon's Cloak
The dwarf Pheirkas wants me to steal a cloak from an obese man named Algernon, who I can find at Feldepost's Inn in Beregost. Pheirkas awaits his cloak in the northwest section of Baldur's Gate.~ #27360 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 3 4 5 even though they appear after this state */
~  Global("StartedPheirkasQuest","GLOBAL",1)
Global("HelpPheirkas","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Do you have Algernon's cloak with you?~ #15109 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("CLCK08")
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Ah, thank you so much. Here is 150 gold pieces for your efforts.~ #15110 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("CLCK08")
AddexperienceParty(200)
GiveGoldForce(150)
~ SOLVED_JOURNAL @6 /* ~Algernon's Cloak
Pheirkas paid me well for my larceny.~ #27361 */ EXIT
END

IF WEIGHT #3 ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("CLCK08")
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Oh, I do like your handiwork. Here is 200 gold pieces for the trouble.~ #15111 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("CLCK08")
AddexperienceParty(300)
GivePartyGold(200)
~ SOLVED_JOURNAL @6 /* ~Algernon's Cloak
Pheirkas paid me well for my larceny.~ #27361 */ EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~Damn, I was hoping you were more the passive-aggressive type.~ #15112 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  True()
~ THEN BEGIN 6 // from:
  SAY @9 /* ~How do you like my new cloak?~ #15113 */
  IF ~~ THEN EXIT
END
