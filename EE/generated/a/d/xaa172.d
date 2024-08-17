// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ARKION.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ARKION.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA172~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("bd_arkion_quest","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Go away. I have no need of good folks like yerselves... Ye're prob'ly Nemphre's dirty agents anyhow. You tell her that I'm on to her, that Arkion has plans.~ #15010 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("bd_arkion_quest","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I've got a dirty deed fer ya. How 'bout you go down into the sewers and bring me up a body. Now, I don't ask questions 'bout how you come 'bout them and I don't want any questions 'bout what I use 'em fer. Bring 'em to me when ya find 'em.~ #15011 */
  IF ~~ THEN DO ~SetGlobal("bd_arkion_quest","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~A Corpse for Arkion
A necromancer named Arkion is in need of corpses and has singled me out for the task of finding one. According to him, the sewers are the best place for that sort of thing. If I were to decide to procure one for him, I can find him again in his house just south of the Elfsong Tavern.~ #26853 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  Global("HelpArkion","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~So, have ya got a few stiffs fer me?~ #15014 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 even though they appear after this state */
~  OR(2)
PartyHasItem("MISC80")
PartyHasItem("MISC79")
Global("HelpArkion","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Ah, a ripe one. Ya've done well there, haven't ya? Here's 250 gold pieces to relieve the stink of it all. Ah, Nemphre, I'll have that ring yet!~ #15015 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpArkion","GLOBAL",1)
TakePartyItem("MISC80")
TakePartyItem("MISC79")
GivePartyGold(250)
AddexperienceParty(1800)
~ SOLVED_JOURNAL @6 /* ~A Corpse for Arkion
Arkion the necromancer has his corpse, and I have some more gold.~ #26854 */ EXIT
END

IF WEIGHT #2 ~  OR(2)
NumItemsPartyGT("MISC79",0)
NumItemsPartyGT("MISC80",0)
OR(2)
NumItemsPartyGT("MISC80",1)
NumItemsPartyGT("MISC79",0)
OR(2)
NumItemsPartyGT("MISC80",0)
NumItemsPartyGT("MISC79",1)
Global("HelpArkion","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Even more than I asked fer, my dark cousin. Maybe you an' I should go into business sometime. I could tell ya all 'bout the betrayals of Nemphre, 'bout the insult of that onyx ring she holds... Here, take 400 gold pieces. Money is the only thing that still removes the stink of the world.~ #15016 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpArkion","GLOBAL",1)
TakePartyItemAll("MISC80")
TakePartyItemAll("MISC79")
GivePartyGold(400)
AddexperienceParty(1800)
~ SOLVED_JOURNAL @6 /* ~A Corpse for Arkion
Arkion the necromancer has his corpse, and I have some more gold.~ #26854 */ EXIT
END

IF WEIGHT #5 ~  False()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~Ya plan to give me my own corpse, do ya? I'll have yer's first, my dark cousin. Aye, I'll have yer's first.~ #15017 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  True()
~ THEN BEGIN 6 // from:
  SAY @9 /* ~Live long in the stench of the dead, cousin.~ #15018 */
  IF ~~ THEN EXIT
END
