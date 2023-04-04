// creator  : weidu (version 24900)
// argument : PHLYDI.DLG
// game     : .
// source   : ./override/PHLYDI.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~PHLYDI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Oh, hello! Hey, have you seen my copy of "The History of Halruaa" anywhere? You know how I can't stand the constant shuffling of arthritic feet up in the library... So I thought I'd get a bit of fresh air just east of here and... Oh, I hate being so absent-minded! Please, if you find it, I really do need it back.~ #215993 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Phlydia's Book
Dear, absent-minded Phlydia has lost another of her books, "The History of Halruaa," this time. Last time she was at Candlekeep, she lost an entire four-volume set in the hay we keep for the cows.~ #227362 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 even though they appear after this state */
~  !PartyHasItem("BOOK16")
Global("HelpPhlydia","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~No luck, huh? Did I go visit the cows this time? Oh, I can never remember.~ #216003 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
PartyHasItem("BOOK16")
~ THEN BEGIN 2 // from:
  SAY @4 /* ~My book! Oh, you remind me of Gorion when you grin like that. Raising you has been hard on him, I know, but he says it's a toil of love, a toil of destiny, even. You must be a very special child, indeed, to draw such praise from a man of his silent nature... Here, take this little gem of mine. Maybe Winthrop will give you a little something for it.~ #216004 */
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("BOOK16")
EraseJournalEntry(@2)
GiveItem("MISC17",LastTalkedToBy)
GiveItem("LCSTDAG",LastTalkedToBy)
SetGlobal("HelpPhlydia","GLOBAL",1)
~ SOLVED_JOURNAL @5 /* ~Phlydia's Book
Poor, absent-minded Phlydia gave me a gem for returning her lost book. Candlekeep, it seems, continues to defy all laws of economics: The more books it holds, the more valuable they become to those who read them. The greater the supply, the greater the demand... Bah, all this thinking is making my head hurt. Time to pawn this gem and get something useful for it.~ #227363 */ EXIT
END

IF WEIGHT #2 ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
PartyHasItem("BOOK16")
~ THEN BEGIN 3 // from:
  SAY @6 /* ~Oh, thanks. It was by the cows again, wasn't it... Hmm, yes, where was I?~ #216005 */
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("BOOK16")
EraseJournalEntry(@2)
SetGlobal("HelpPhlydia","GLOBAL",1)
~ SOLVED_JOURNAL @7 /* ~Phlydia's Book
In classic form, Phlydia almost seemed to have forgotten that she had sent me in search of her book in the first place. Oh well, I guess there's more to a favor than the reward at its end.~ #227364 */ EXIT
END

IF WEIGHT #3 ~  Global("HelpPhlydia","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Now, what was I doing again?~ #216029 */
  IF ~~ THEN EXIT
END
