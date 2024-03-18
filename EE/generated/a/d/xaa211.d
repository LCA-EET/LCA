// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PETRIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PETRIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA211~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi, I'm Petrine.~ #15126 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hi, I'm Petrine and my folks aren't around no more and I ran away from my Uncle Bheren 'cause he's real mean. My cat's really an angel, though, and she protects me when bad things happen. Or at least she did. I can't find her now, though. I think she went back to my uncle's to get her ring. There's this ring that she loves to play with, but when I ran away I had to leave it at my nasty uncle's. If you could just get me the ring, I'm sure Angel would come back. Could you do it, oh please?~ #15127 */
  IF ~~ THEN UNSOLVED_JOURNAL @3 /* ~Petrine's Cat
Petrine, one of Baldur's Gate's many orphans, has lost Angel, her cat. I might find Angel at the house of Petrine's Uncle Bheren, where Petrine is reluctant to go. If I can bring her the ring that Angel uses as a toy, the cat may return to Petrine.~ #26881 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  Global("HelpPetrine","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~I miss Angel. I hope she comes back real soon.~ #15128 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  PartyHasItem("OHRING16")
~ THEN BEGIN 3 // from:
  SAY @5 /* ~You found the ring... now Angel will come back... and we can live together forever and ever. I wish I had something to give you for finding her ring but I really and truly don't. Maybe she'll give you some good luck, though.~ #15129 */
  IF ~  !Dead("PetrinesCat")
~ THEN REPLY @9 /* ~You be careful to stay out of trouble, kid.~ #20663 */ DO ~EraseJournalEntry(@3)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
SetGlobal("HelpPetrine","GLOBAL",2)
TakePartyItem("OHRING16")
AddexperienceParty(500)
~ SOLVED_JOURNAL @6 /* ~Petrine's Cat
Petrine brightened at the sight of Angel's ring. Her happiness was reward enough, I suppose.~ #27358 */ EXIT
  IF ~  Dead("PetrinesCat")
~ THEN REPLY @10 /* ~Actually, you little brat, we killed your cat Angel.~ #20664 */ GOTO 6
END

IF WEIGHT #3 ~  False()
~ THEN BEGIN 4 // from:
  SAY @11 /* ~Angel! Help me, Angel!~ #15130 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  True()
~ THEN BEGIN 5 // from:
  SAY @12 /* ~Angel's out hunting but she says you're really kind.~ #15131 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @13 /* ~You... you killed Angel... Waaaaaaaaa...!~ #20665 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
SetGlobal("HelpPetrine","GLOBAL",99)
ReputationInc(-1)
EscapeArea()
~ EXIT
END
