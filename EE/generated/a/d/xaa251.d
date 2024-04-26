// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NADIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NADIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA251~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I desperately need someone's help but... you're not quite what I had in mind.~ #15235 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Euric, my youngest son, has run away again... He's always had a touch of the wanderer in him and he knows how to take care of himself, but... Oh, I'm just worried sick. This city gets more dangerous every day... If you find him, could you give him this good luck talisman? I'm sure we'd all sleep a little better.~ #15236 */
  IF ~~ THEN DO ~GiveItem("AMUL14",LastTalkedToBy)
SetGlobal("GivenEuricQuest","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Nadine and Euric
Nadine of Baldur's Gate has asked me to deliver a good luck talisman to her son, Euric. He has run away again and will likely be playing somewhere in one of Baldur's Gate's many taverns.~ #27301 */ EXIT
END

IF WEIGHT #2 ~  Global("HelpEuric","GLOBAL",0)
Global("GivenEuricQuest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Please, you must give that amulet to my son, Euric.~ #15237 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  GlobalGT("HelpEuric","GLOBAL",0)
GlobalLT("HelpEuric","GLOBAL",2)
!Dead("Euric")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~That was kind of you to do that for me. As for Euric, he'll come home when he's ready. Here, let me give you this necklace as a token of my thanks. I don't know if it's worth anything but it has been in the family for years.~ #15238 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
EraseJournalEntry(@7)
SetGlobal("HelpEuric","GLOBAL",2)
AddexperienceParty(300)
ReputationInc(1)
GiveItem("AMUL01",LastTalkedToBy)
EscapeArea()
~ SOLVED_JOURNAL @6 /* ~Nadine and Euric
After delivering her amulet to Euric, I told Nadine that her son was safe. She rewarded me with another amulet.~ #27302 */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 5 6 even though they appear after this state */
~  Global("HelpEuric","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Hi there. I hope that the necklace I gave you was actually worth something. Otherwise I'd feel quite foolish.~ #15239 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Please don't!~ #15240 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  GlobalGT("HelpEuric","GLOBAL",0)
GlobalLT("HelpEuric","GLOBAL",3)
!Dead("Euric")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~That was kind of you to do that for me. As for Euric, he'll come home when he's ready. Here, let me give you this necklace as a token of my thanks. It is very powerful, but one must be careful with it.~ #15241 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
EraseJournalEntry(@7)
SetGlobal("HelpEuric","GLOBAL",2)
AddexperienceParty(400)
ReputationInc(1)
GiveItem("AMUL01",LastTalkedToBy)
EscapeArea()
~ SOLVED_JOURNAL @6 /* ~Nadine and Euric
After delivering her amulet to Euric, I told Nadine that her son was safe. She rewarded me with another amulet.~ #27302 */ EXIT
END
