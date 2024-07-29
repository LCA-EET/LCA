// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERLEA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERLEA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA287~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You're Aldeth's childhood friends, aren't you? You know, if I were you, I'd be careful around here.~ #7687 */
  IF ~~ THEN REPLY @2 /* ~Okay, we'll be sure to.~ #7694 */ EXIT
  IF ~~ THEN REPLY @3 /* ~Is there a reason why we should?~ #7695 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~I hope that wasn't a threat.~ #7696 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~Irlentree and Zorl have been acting strange of late. I don't know what it is about them, but they don't seem to be their usual selves.~ #7688 */
  IF ~~ THEN REPLY @6 /* ~If the truth be known, Aldeth hired us to investigate his partners. Is there anything you know that could help us?~ #7697 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Thank you for the information.~ #7698 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8 /* ~If you search Zorl's office on the second floor, you might turn something up.~ #7689 */
  IF ~~ THEN UNSOLVED_JOURNAL @9 /* ~Investigating the Merchants' League Estate
According to a merchant, I should check out Zorl's office on the second floor.~ #26826 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~You mistook my meaning; it wasn't a threat. Now, please leave me alone.~ #7690 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 5 6 even though they appear after this state */
~  True()
~ THEN BEGIN 4 // from:
  SAY @11 /* ~Please don't bother me, I have a lot on my mind.~ #7691 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 5 // from:
  SAY @12 /* ~Anything I can help you with? Oh yes, you're those friends of Aldeth's. I'd love to get to know you better, but I'm awfully busy.~ #7693 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @13 /* ~Things have been very unusual lately. Zorl and Irlentree, two of the owners, have not been acting properly in mercantile matters. If they continue with the direction they've been taking, our company will be sunk within the month.~ #7699 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @14 /* ~Lost your chance with me, you did! Get lost!~ #9162 */
  IF ~~ THEN EXIT
END
