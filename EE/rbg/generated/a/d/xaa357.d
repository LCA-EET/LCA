// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CHANTH.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CHANTH.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA357~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome! Luck has seen fit to drop you in the lap of the Lady, and she shall take good care of you indeed. Those who dare are always seen in the best light, and we require but a small donation of coin for whatever you need.~ #8523 */
  IF ~~ THEN REPLY @2 /* ~We have no need of your services.~ #16637 */ EXIT
  IF ~~ THEN REPLY @3 /* ~Could you show us what you have to offer?~ #16638 */ DO ~StartStore("xaa136",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("HelpJalantha","GLOBAL",1)
Global("TalkedToUlbright","GLOBAL",0)
~ THEN REPLY @4 /* ~We are in desperate need of a book known as the Book of Wisdom. Please, we will do anything if you'd only give it to us.~ #16639 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY @5 /* ~Go with all speed, and trust in the Lady when adversity tests your verve. She will see you through... or perhaps not. Chance decrees what will be.~ #8524 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~The Book of Wisdom is a very holy book. Why should I give it to the likes of you?~ #16642 */
  IF ~  PartyGoldGT(499)
~ THEN REPLY @7 /* ~We'll give you 500 gold for the book!~ #16643 */ GOTO 5
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @8 /* ~You must trust us. We'll die if we don't get this book. Please, you don't want our deaths on your conscience... do you?~ #16645 */ GOTO 3
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @8 /* ~You must trust us. We'll die if we don't get this book. Please, you don't want our deaths on your conscience... do you?~ #16646 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9 /* ~Your plea seems genuine. If your very lives depend upon having this book, then here, you may have it.~ #16647 */
  IF ~~ THEN DO ~SetGlobal("TalkedToUlbright","GLOBAL",1)
GiveItem("BOOK08",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @10 /* ~I cannot simply trust anyone who comes up to me with such stories. I apologize, but I cannot give you the book.~ #16648 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @11 /* ~If you are willing to pay such large sums of money, then you must be in dire need. Here, take the book.~ #16649 */
  IF ~~ THEN DO ~TakePartyGold(500)
SetGlobal("TalkedToUlbright","GLOBAL",1)
GiveItem("BOOK08",LastTalkedToBy)
~ EXIT
END
