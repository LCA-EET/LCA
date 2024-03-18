// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUM30.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUM30.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC139~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~We take our orders from Caelar Argent, girl—not from you!~ #58617 */
  IF ~~ THEN REPLY @2 /* ~What is this now?~ #58618 */ EXTERN ~XAC107~ 38
  IF ~~ THEN REPLY @3 /* ~Let the girl go, mercenary, or Caelar will know of your deeds this <DAYNIGHTALL>—and she will not be pleased by them, I promise you that.~ #58619 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~You'll answer to me now, dead man.~ #58620 */ EXTERN ~XAC107~ 38
END

IF ~~ THEN BEGIN 1 // from:
  SAY @5 /* ~Enough of this nonsense. Cut 'em down!~ #65490 */
  IF ~~ THEN DO ~EraseJournalEntry(@6)
EraseJournalEntry(@7)
AddJournalEntry(59788,INFO)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY @8 /* ~The hero of Baldur's Gate is here? Kill <PRO_HIMHER>, quickly!~ #58622 */
  IF ~~ THEN DO ~EraseJournalEntry(@6)
EraseJournalEntry(@7)
AddJournalEntry(59788,INFO)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @9 /* ~Who are you, then?~ #58623 */
  IF ~  !IsValidForPartyDialogue("viconia")
~ THEN REPLY @10 /* ~I am <CHARNAME>, bane of the Iron Throne and slayer of Sarevok.~ #58624 */ GOTO 2
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN REPLY @10 /* ~I am <CHARNAME>, bane of the Iron Throne and slayer of Sarevok.~ #58624 */ EXTERN ~BDVICONJ~ 41
  IF ~  OR(2)
Class(Player1,BARD_ALL)
Class(Player1,THIEF_ALL)
~ THEN REPLY @11 /* ~I am Ensler of Waterdeep, advisor to the Shining Lady Caelar Argent. Now let the girl go lest I tell her of this—this—this disgusting violation of the trust she has placed in you.~ #58625 */ GOTO 5
  IF ~  Global("bd_pc_knows_barghest","global",1)
~ THEN REPLY @12 /* ~You don't recognize the Barghest?~ #58626 */ GOTO 4
  IF ~~ THEN REPLY @13 /* ~I am the last thing you'll see in this life if you don't release the woman and leave this place. NOW.~ #58627 */ EXTERN ~XAC107~ 38
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY @14 /* ~Oh, I recognize the Barghest, all right. But you're not him. Kill <PRO_HIMHER>!~ #58628 */
  IF ~~ THEN DO ~EraseJournalEntry(@6)
EraseJournalEntry(@7)
AddJournalEntry(59788,INFO)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @15 /* ~Forgive us, my <PRO_LADYLORD>. We meant no harm. We—we'll, uh—we'll be about our business, then...? Yes. All right, people, these woods won't patrol themselves.~ #58630 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",6)
EraseJournalEntry(@6)
EraseJournalEntry(@7)
AddJournalEntry(59788,INFO)
AddexperienceParty(2000)
~ EXIT
END
