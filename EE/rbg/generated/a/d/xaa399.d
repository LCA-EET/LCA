// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GORPEL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GORPEL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA399~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ahoy, fellow adventurers! Come share a glass with Gorpel Hind and his Band of Merry Fools. Seated with me are Farluck the Fearless, Turpin the Roaring Ranger, and Nelik the Most Devious and Fiendish of Thieves! (We owe him money so he gets the good title...) But away with these meager introductions! Sidle up to the bar and tell us a tall tale of your latest adventures!~ #19535 */
  IF ~~ THEN REPLY @2 /* ~Well, we've been through the Cloakwood and fought our way through every level of a guarded and secret iron mine at its heart! There were mages at every turn, casting lightning bolts and fireballs into the heart of our party before stepping through their dimension doors to renew their attacks from another flank! Aye, there was loss and carnage but I revel in the memory of it still!~ #19539 */ DO ~SetNumTimesTalkedTo(1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Ho, tall tales shall tempt us not. Keep to yourself and we shall do the same. Goodnight and goodbye, Mr. Hind.~ #19543 */ DO ~SetNumTimesTalkedTo(1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Iron mines in the Cloakwood? Your tales are tall, indeed, and we are richer for the telling. Consider yourselves honorary members of the Merry Fools and may ale and friendship always flow within these hallowed halls! A toast, you drunkards, to <CHARNAME> and the winsome souls that surround us now!~ #19545 */
  IF ~~ THEN DO ~CreateCreature("GRETEK",[743.1041],S)
CreateCreature("PARGUS",[681.1029],S)
CreateCreature("WILF",[775.1135],S)
CreateCreature("NADER",[845.992],S)
CreateCreature("ARLIN",[812.1057],S)
CreateCreature("CATURA",[376.1045],S)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Good night and goodbye to you, <CHARNAME>. It is late, and we were leaving, weren't we, my Merry Fools?~ #19554 */
  IF ~~ THEN DO ~CreateCreature("GRETEK",[743.1041],S)
CreateCreature("PARGUS",[681.1029],S)
CreateCreature("WILF",[775.1135],S)
CreateCreature("NADER",[845.992],S)
CreateCreature("ARLIN",[812.1057],S)
CreateCreature("CATURA",[376.1045],S)
ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Dead("GRETEK")
Dead("PARGUS")
Dead("WILF")
Dead("NADER")
Dead("ARLIN")
Dead("CATURAK")
~ THEN BEGIN 3 // from:
  SAY @6 /* ~We have been honored by your presence tonight and awed by your prowess. I beg your leave, however, for some of my men are wounded and must seek attention elsewhere. May the houses of <CHARNAME> and Gorpel Hind be ever graced with each other's friendship... Come, men, and carry your wounds bravely.~ #19610 */
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @7 /* ~Fight on, brave souls! Gretek and his lackeys have had this coming for longer than you could know.~ #19611 */
  IF ~~ THEN EXIT
END
