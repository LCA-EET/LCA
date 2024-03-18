// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDQING.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDQING.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC169~

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I thought the Foehammer would acknowledge our efforts in SOME way.~ #51509 */
  IF ~~ THEN EXTERN ~XAC168~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~We found this stone in the ruins around here. Tempus's symbol is engraved on it. Since he's the god of battle, we're praying for his aid.~ #51514 */
  IF ~~ THEN EXTERN ~XAC168~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~We weren't expecting a voice from the heavens, but SOME sense of grace or comfort isn't too much to ask, is it? Why would Tempus ignore Caelar's righteous warriors?~ #51520 */
  IF ~~ THEN REPLY @4 /* ~Perhaps Caelar is not so holy as she seems. Why else would Tempus ignore your prayers?~ #51521 */ EXTERN ~XAC168~ 4
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN REPLY @5 /* ~Gods, right? What can you do?~ #51522 */ EXTERN ~BDVICONJ~ 23
  IF ~  !IsValidForPartyDialogue("viconia")
~ THEN REPLY @5 /* ~Gods, right? What can you do?~ #51522 */ EXTERN ~XAC168~ 6
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN REPLY @6 /* ~I'll leave you to your attempts, then.~ #51523 */ EXTERN ~BDVICONJ~ 24
  IF ~  !IsValidForPartyDialogue("viconia")
~ THEN REPLY @6 /* ~I'll leave you to your attempts, then.~ #51523 */ EXTERN ~XAC168~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~If you could find the two shards, maybe we could reconstruct the icon and Tempus would finally respond!~ #51531 */
  IF ~~ THEN REPLY @8 /* ~I see no harm in trying it. Do you have any idea where the shards might be?~ #51532 */ EXTERN ~XAC168~ 7
  IF ~~ THEN REPLY @9 /* ~Stranger things have happened. If I find the shards, I'll return to you.~ #51533 */ EXTERN ~XAC168~ 7
  IF ~~ THEN REPLY @10 /* ~I've no interest in encouraging your pathetic endeavor.~ #51534 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY @11 /* ~Ideally the shards would be blessed by a priest of Tempus, but I don't suppose you can help with that. Farewell, and good luck to you.~ #51536 */
  IF ~~ THEN DO ~SetGlobal("BD_FOEHAMMER_BLESSING","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
PartyHasItem("bdmisc18")
PartyHasItem("bdmisc19")
~ THEN DO ~SetGlobal("BD_FOEHAMMER_BLESSING","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @12 /* ~Bless us, mighty Tempus!~ #51587 */
  IF ~~ THEN EXTERN ~BDVOICE1~ 2
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
OR(2)
!Contains("BDMISC18","Stone_icon")
!Contains("BDMISC19","Stone_icon")
~ THEN BEGIN 6 // from:
  SAY @13 /* ~How goes things with the fragments of Tempus's icon?~ #59510 */
  IF ~  PartyHasItem("BDMISC18")
PartyHasItem("BDMISC19")
~ THEN REPLY @14 /* ~I found the two stone shards.~ #51597 */ GOTO 7
  IF ~  PartyHasItem("BDMISC20")
~ THEN REPLY @15 /* ~The shards have been blessed by a priest of Tempus.~ #51598 */ GOTO 8
  IF ~  !PartyHasItem("BDMISC20")
!PartyHasItem("BDMISC18")
!PartyHasItem("BDMISC19")
~ THEN REPLY @16 /* ~They go slower than I would like, but in the right direction.~ #59511 */ GOTO 9
  IF ~~ THEN REPLY @17 /* ~When—IF—something changes on that front, I'll let you know. Until then, leave me be.~ #59512 */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @18 /* ~Wonderful! I only wish we could get the shards blessed. There's no priests of Tempus in the camp.~ #51600 */
  IF ~~ THEN EXTERN ~XAC168~ 11
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @19 /* ~Truly? How did you manage that?~ #51602 */
  IF ~~ THEN REPLY @20 /* ~I heard of a priest of Tempus in the camp to the south.~ #51603 */ EXTERN ~XAC168~ 12
  IF ~~ THEN REPLY @21 /* ~I met a priest wandering in the wild, and convinced her to bless the shards.~ #51604 */ EXTERN ~XAC168~ 13
  IF ~~ THEN REPLY @22 /* ~Does it matter? The shards are now consecrated.~ #51605 */ EXTERN ~XAC168~ 13
END

IF ~~ THEN BEGIN 9 // from: 6.3 6.2
  SAY @23 /* ~We appreciate your help. All the best to you.~ #51608 */
  IF ~~ THEN EXIT
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
Contains("BDMISC18","Stone_icon")
Contains("BDMISC19","Stone_icon")
~ THEN BEGIN 10 // from:
  SAY @24 /* ~If you come across a priest of Tempus in the camp, please bring them the stone shards. Then we can truly restore the icon.~ #62459 */
  IF ~~ THEN DO ~AddJournalEntry(62460,QUEST)
~ EXIT
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY @25 /* ~I can't thank you enough for bolstering our faith. May all your battles be victories!~ #62375 */
  IF ~~ THEN EXIT
END
