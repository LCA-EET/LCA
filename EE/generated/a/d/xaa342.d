// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BHEREN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BHEREN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA342~

IF ~  NumTimesTalkedTo(0)
ReputationGT(Player1,14)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Damnable cat! I figured Petrine would take the beast with her, but life isn't that kind, is it?~ #15132 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Petrine's Cat
I visited Bheren of Baldur's Gate in his house today. A loitering cat was annoying him, and he mentioned someone named Petrine.~ #26879 */ EXIT
END

IF ~  NumTimesTalkedTo(0)
ReputationLT(Player1,15)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~Damnable cat! I'll give you the cloak off my back if you can kill the pesky thing.~ #15133 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~Petrine's Cat
I visited Bheren of Baldur's Gate in his house today. He has offered me the proverbial cloak off his back in exchange for the death of a rather bothersome cat...~ #26880 */ EXIT
END

IF ~  ReputationLT(Player1,8)
Dead("PetrinesCat")
Global("HelpBheren","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~I'm not usually a man who honors his words too much, but you wouldn't believe how glad I am to be rid of that crazy cat! Here, take my cloak and good riddance.~ #15134 */
  IF ~~ THEN DO ~EraseJournalEntry(@7)
EraseJournalEntry(@2)
EraseJournalEntry(@4)
SetGlobal("HelpBheren","GLOBAL",1)
AddexperienceParty(400)
GiveItem("CLCK01",LastTalkedToBy)
~ SOLVED_JOURNAL @6 /* ~Petrine's Cat
I showed Bheren that I definitely know one way to skin a cat. He's glad to be rid of that pesky Angel.~ #26882 */ EXIT
END

IF ~  ReputationGT(Player1,7)
Dead("PetrinesCat")
Global("HelpBheren","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY @8 /* ~You didn't think I was serious, did you? Cripes, you go find my niece Petrine and tell her you killed her stinking cat, 'cause I'm sure not going to!~ #15135 */
  IF ~~ THEN DO ~EraseJournalEntry(@7)
EraseJournalEntry(@2)
EraseJournalEntry(@4)
SetGlobal("HelpBheren","GLOBAL",1)
AddexperienceParty(400)
ReputationInc(-1)
~ SOLVED_JOURNAL @6 /* ~Petrine's Cat
I showed Bheren that I definitely know one way to skin a cat. He's glad to be rid of that pesky Angel.~ #26882 */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY @9 /* ~Between you and that cat, life has been sheer hell ever since Petrine ran away. Damn you!~ #15136 */
  IF ~~ THEN EXIT
END

IF ~  Global("HelpBheren","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @10 /* ~Sure is quiet around here without that infernal cat. Almost miss her, I do...~ #15137 */
  IF ~~ THEN EXIT
END
