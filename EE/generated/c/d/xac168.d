// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDKJARVA.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDKJARVA.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC168~

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I thought I would feel something... a sense of rightness or peace.~ #51508 */
  IF ~~ THEN EXTERN ~XAC169~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Ah! Oh, hello. You startled me. Is there something we can do for you?~ #51510 */
  IF ~~ THEN REPLY @3 /* ~What are you doing?~ #51511 */ EXTERN ~XAC169~ 1
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY @4 /* ~Are you praying to a rock?~ #51512 */ EXTERN ~BDGLINTJ~ 221
  IF ~  !IsValidForPartyDialogue("Glint")
~ THEN REPLY @4 /* ~Are you praying to a rock?~ #51512 */ EXTERN ~XAC169~ 1
  IF ~~ THEN REPLY @5 /* ~I doubt it. You appear busy.~ #51513 */ EXTERN ~XAC169~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~I'd have thought Caelar's holiness and our crusade's cause would ensure Tempus's blessing. But so far, we've felt nothing.~ #51515 */
  IF ~~ THEN REPLY @7 /* ~The will of gods isn't always obvious. I'm certain the Lord of Battles heard your plea.~ #51516 */ EXTERN ~XAC169~ 2
  IF ~~ THEN REPLY @8 /* ~Maybe Tempus is really, really busy at the moment? There's a lot of war going around these days.~ #51517 */ EXTERN ~XAC169~ 2
  IF ~~ THEN REPLY @9 /* ~The gods have more important things to do than listen to your drivel.~ #51518 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @10 /* ~No, no, you're wrong! The gods care for their worshippers. We matter to them!~ #51519 */
  IF ~~ THEN EXTERN ~XAC169~ 2
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~BDDORNJ~ 28
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11 /* ~No true crusader would speak of Caelar that way!~ #51528 */
  IF ~~ THEN DO ~ActionOverride("BDQING",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @12 /* ~Wait! Perhaps you can help us catch Tempus's ear.~ #51529 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13 /* ~This icon is very old. See the cracks here? Two chunks of the stone have fallen out. Could that be the problem?~ #51530 */
  IF ~~ THEN EXTERN ~XAC169~ 3
END

IF ~~ THEN BEGIN 7 // from:
  SAY @14 /* ~Thank you! We found the icon in that rubble to the north, but fragments could be anywhere in camp—check any of the rubble you come across. I saw Morale Officer Deneld walking through the area too. He might have seen something.~ #51535 */
  IF ~~ THEN DO ~AddJournalEntry(61873,QUEST)
~ EXTERN ~XAC169~ 4
END

IF ~~ THEN BEGIN 8 // from:
  SAY @15 /* ~Tempus has heard our prayers!~ #51582 */
  IF ~~ THEN EXTERN ~BDVOICE1~ 1
END

IF ~~ THEN BEGIN 9 // from:
  SAY @16 /* ~To be tested by Tempus is an honor!~ #51594 */
  IF ~~ THEN EXTERN ~BDVOICE1~ 5
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
OR(2)
!Contains("BDMISC18","Stone_icon")
!Contains("BDMISC19","Stone_icon")
~ THEN BEGIN 10 // from:
  SAY @17 /* ~Tempus thanks you! ~ #51596 */
  IF ~  PartyHasItem("BDMISC18")
PartyHasItem("BDMISC19")
~ THEN REPLY @18 /* ~I found the two stone shards.~ #51597 */ EXTERN ~XAC169~ 7
  IF ~  PartyHasItem("BDMISC20")
~ THEN REPLY @19 /* ~The shards have been blessed by a priest of Tempus.~ #51598 */ EXTERN ~XAC169~ 8
  IF ~  !PartyHasItem("BDMISC20")
!PartyHasItem("BDMISC18")
!PartyHasItem("BDMISC19")
~ THEN REPLY @20 /* ~Why? I haven't done anything yet.~ #59509 */ EXTERN ~XAC169~ 9
  IF ~~ THEN REPLY @21 /* ~And I thank Tempus.~ #51599 */ EXTERN ~XAC169~ 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY @22 /* ~At least we can restore the icon. Come, it's over here next to the tent.~ #51601 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @23 /* ~You were in the enemy camp? You're no crusader... ~ #51606 */
  IF ~~ THEN DO ~ActionOverride("BDQING",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @24 /* ~This is exciting news. Quickly, place the consecrated shards where they belong! The icon is there next to that tent.~ #51607 */
  IF ~~ THEN DO ~AddJournalEntry(61879,QUEST)
~ EXIT
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
Contains("BDMISC18","Stone_icon")
Contains("BDMISC19","Stone_icon")
~ THEN BEGIN 14 // from:
  SAY @25 /* ~Thank you for your help. I only wish we could get the shards blessed by a priest of Tempus.~ #62458 */
  IF ~~ THEN DO ~AddJournalEntry(62460,QUEST)
~ EXIT
END

IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY @26 /* ~It was such an honor to hear the voice of our lord. Tempus thanks you!~ #62374 */
  IF ~~ THEN EXIT
END
