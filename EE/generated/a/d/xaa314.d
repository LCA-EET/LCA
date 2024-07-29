// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NEMPHR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NEMPHR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA314~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 5 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I have little need of one such as you.~ #15019 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("HelpNemphre","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~You will make an adequate pawn. Don't argue, as I have little patience for your prattle. There is a dark mage at work somewhere in this city and he must be stopped. He goes by the name of Arkion and has a bloodstone amulet that is of great importance to my plans. Return it to me and I will reward you greatly.~ #15020 */
  IF ~~ THEN DO ~SetGlobal("HelpNemphre","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Arkion's Bloodstone Amulet
I have met a necromancer by the name of Nemphre here in Baldur's Gate... and I must admit, I think I am in a bit over my head. She has asked me to obtain a bloodstone amulet from a man named Arkion and return it to her. The only trouble is, Arkion sounds like a rather powerful mage, and I get the sense that he won't part with that amulet willingly... There is something about this city that scares me somehow. Nemphre can be found in a house just south of the Elfsong Tavern.~ #27318 */ EXIT
END

IF WEIGHT #1 ~  Global("HelpNemphre","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Mmm, you are a sweet one. Could you do a favor for Nemphre? An old lover of mine has followed me here to the city and has been threatening me with some very dark magic. His name is Arkion and, if you could just get a certain amulet of his to me, perhaps there are a few things I could do for you, don't you think, mmn?~ #15021 */
  IF ~~ THEN DO ~SetGlobal("HelpNemphre","GLOBAL",1)
~ UNSOLVED_JOURNAL @5 /* ~Arkion's Bloodstone Amulet
There is a woman in Baldur's Gate who has been gifted with the... succulent... name of Nemphre. I must admit, I am torn between a certain sense of passion and a much less certain sense of foreboding. Arkion, an old lover of hers, has apparently kept an amulet of hers that she would like to have returned. Maybe if I could just talk to him... I found Nemphre in a house just south of the Elfsong Tavern.~ #27319 */ EXIT
END

IF WEIGHT #2 ~  PartyHasItem("OHAMUL13")
Global("HelpNemphre","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY @6 /* ~You are a sweet fool but a fool nonetheless. Here, take this scroll and go. I have no further need of you.~ #15022 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
EraseJournalEntry(@5)
EraseJournalEntry(@8)
SetGlobal("HelpNemphre","GLOBAL",2)
TakePartyItem("OHAMUL13")
GiveItem("SCRL1Q",LastTalkedToBy)
AddexperienceParty(1000)
~ SOLVED_JOURNAL @7 /* ~Arkion's Bloodstone Amulet
For returning Arkion's amulet to Nemphre, I have a nice new magical scroll.~ #27322 */ EXIT
END

IF WEIGHT #3 ~  Global("HelpNemphre","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~How many times must I ask you to do my bidding, imbecile? Find Arkion and get his amulet to me and do it NOW!~ #15023 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 5 // from:
  SAY @10 /* ~You dare to attack the great Nemphre? You shall shrivel in the face of my wrath.~ #15024 */
  IF ~~ THEN EXIT
END
