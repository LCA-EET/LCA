// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\PIATO.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\PIATO.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC129~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~<CHARNAME>! Good to see you! I trust you are well?~ #19972 */
  IF ~~ THEN REPLY @2 /* ~As well as can be expected, Piato. How have you been?~ #19973 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I feel as though life is dragging me along by a noose, Piato. Not good at all.~ #19974 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Get out of my way, Piato. I am not in the mood to speak with you.~ #19976 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~My friend, I am so sorry to hear this! Please, if you need to chat about anything, do not hesitate to come by my quarters. You do remember where they are, don't you? No matter. First we must make sure you get some rest. Gorion's old room is where you shall stay. No need to tell you where it is, I am sure. Third room on the south corridor, just as it was. I believe there may be a few things there that Gorion left to you. Here, let me take you to the chest.~ #19975 */
  IF ~~ THEN DO ~AddJournalEntry(31461,QUEST)
MoveToPoint([635.1106])
~ JOURNAL @6 /* ~Piato's Welcome
Piato greeted me warmly and welcomed me back to Candlekeep. He also said there may be some items left for me in Gorion's old room.~ #27365 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7 /* ~Well, as irritable as ever. I do wish you had inherited Gorion's courtesy, instead of the trinkets we left for you in his room. You do remember the way, don't you? Or have you blocked your humble beginnings from your important little mind? Third room on the south corridor. Get some rest, and perhaps you will be more agreeable.~ #19977 */
  IF ~~ THEN DO ~AddJournalEntry(31461,QUEST)
MoveToPoint([635.1106])
~ JOURNAL @8 /* ~Piato's Welcome
I ran into that Piato fool. He said that there were a few items in Gorion's old room for me.~ #27366 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @9 /* ~Oh, I pine for the days when you and Gorion still called Candlekeep home. You brought a bit of energy to these walls. I shall have to speak with you later at length, but for now you must rest. Gorion's old room is the third on the south corridor, just as it was. I think there are a few things for you there as well. We shall see you later.~ #19978 */
  IF ~~ THEN DO ~AddJournalEntry(31461,QUEST)
MoveToPoint([635.1106])
~ JOURNAL @6 /* ~Piato's Welcome
Piato greeted me warmly and welcomed me back to Candlekeep. He also said there may be some items left for me in Gorion's old room.~ #27365 */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY @10 /* ~After you retrieve the scroll, it would be good of you to see Tethtoril. He's waiting for you just upstairs.~ #11046 */
  IF ~~ THEN EXIT
END
