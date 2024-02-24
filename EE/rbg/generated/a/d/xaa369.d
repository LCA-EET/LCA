// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FENTEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FENTEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA369~

IF ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Been a long day, hasn't it? I have to get back home, so I don't have time to talk.~ #15153 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I'm sore right down to my very bones, I am. Been bashin' ankhegs across the river and to the south. They could use your help down there, I'm sure, what with them ankhegs going through one of their boom cycles and all. Find a woman by the name of Gerde and she'll fill you in on what to do.~ #15154 */
  IF ~~ THEN UNSOLVED_JOURNAL @3 /* ~Ankheg Culling
In west Baldur's Gate, a sturdy old dwarf by the name of Fenten informed me that there have been some troubles with ankhegs south of the city and across the river. I'm to find a woman named Gerde for further instructions.~ #27076 */ EXIT
  IF ~  Global("HelpGerde","GLOBAL",2)
~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Just back from an ankheg frenzy across the river and a bit south. They're in one of their boom cycles, I guess. With iron all shot to hell, there's a good market for ankheg armor these days. Bring me back a good batch of scales and I'll pay you richly for them. Just go on down there and talk to Gerde. She'll fill you in on what to do.~ #15159 */
  IF ~~ THEN UNSOLVED_JOURNAL @5 /* ~Ankheg Culling
In west Baldur's Gate, a sturdy old dwarf by the name of Fenten has promised to buy some ankheg scales from me. Apparently there's a swarm of them to the south of the city, across the river. I'm to find a woman named Gerde for further instructions.~ #27077 */ EXIT
  IF ~  Global("HelpGerde","GLOBAL",2)
~ THEN EXIT
END

IF ~  PartyHasItem("MISC12")
~ THEN BEGIN 3 // from:
  SAY @6 /* ~Fine work. I'll pay you 250 gold pieces for all of your ankheg heads.~ #15160 */
  IF ~~ THEN DO ~TakePartyItemAll("MISC12")
GiveGoldForce(250)
EraseJournalEntry(@8)
EraseJournalEntry(@3)
EraseJournalEntry(@5)
~ SOLVED_JOURNAL @7 /* ~Ankheg Culling
Fenten handed over the cash we agreed on for the ankheg scales I brought him.~ #27078 */ EXIT
  IF ~  Global("HelpGerde","GLOBAL",2)
~ THEN DO ~TakePartyItemAll("MISC12")
GiveGoldForce(250)
EraseJournalEntry(@8)
EraseJournalEntry(@3)
EraseJournalEntry(@5)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY @9 /* ~I'll squish you like I did those ankhegs.~ #15161 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @10 /* ~I hear the ankheg boom is starting to taper off. It's a shame, isn't it?~ #15162 */
  IF ~~ THEN EXIT
END
