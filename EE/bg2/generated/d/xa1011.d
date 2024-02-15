// creator  : F:\BGModding - LCA\Game\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDJENKS.DLG
// game     : F:\BGModding - LCA\Game\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDJENKS.DLG
// dialog   : F:\BGModding - LCA\Game\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA1011~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~We're pretty busy here. Unless there's something you need, move it along.~ #58757 */
  IF ~  Global("BD_Rousers","GLOBAL",1)
Global("BD_Rousers_Reinforcements","GLOBAL",0)
~ THEN REPLY @2 /* ~I have a message for an Officer Jenks from someone named Vida.~ #58758 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Goodbye, then.~ #58759 */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~I'm Jenks. What's going on?~ #58760 */
  IF ~~ THEN REPLY @5 /* ~A group of refugees causing a disturbance have been detained outside Sorcerous Sundries. She needs reinforcements.~ #58761 */ GOTO 3
  IF ~~ THEN REPLY @6 /* ~I have some business to attend to. I'll give you the message later.~ #58762 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7 /* ~As long it's not urgent.~ #58763 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @8 /* ~With everyone coming into the city, it's hard for us to respond to every incident. I'll get help to her as soon as I'm able. Is there anything else?~ #58764 */
  IF ~  OR(2)
Class(Player1,BARD_ALL)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @9 /* ~The refugees were frustrated over their losses and the crowding in the streets. They meant no harm. I hope you'll show them leniency.~ #58765 */ GOTO 4
  IF ~  !Class(Player1,BARD_ALL)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @9 /* ~The refugees were frustrated over their losses and the crowding in the streets. They meant no harm. I hope you'll show them leniency.~ #58765 */ GOTO 6
  IF ~  OR(2)
Kit(Player1,Blackguard)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @10 /* ~These refugees were spreading chaos in the streets. You need to send a message that this behavior won't be tolerated.~ #58766 */ GOTO 5
  IF ~  !Kit(Player1,Blackguard)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @10 /* ~These refugees were spreading chaos in the streets. You need to send a message that this behavior won't be tolerated.~ #58766 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~That's all for now.~ #58767 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12 /* ~We need to enforce law, but we don't want to be unjust. We'll hold them the night to let them cool off. Let Vida know reinforcements will arrive as soon as possible.~ #58768 */
  IF ~~ THEN DO ~AddJournalEntry(61678,QUEST)
SetGlobal("BD_Rousers_Leniency","GLOBAL",1)
SetGlobal("BD_Rousers_Reinforcements","GLOBAL",1)
AddexperienceParty(1000)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @13 /* ~I'm with you. If the refugees to start fighting in the streets, we could lose control of the city. I'll see that they receive a strict sentence.~ #58769 */
  IF ~~ THEN DO ~SetGlobal("BD_Rousers_Punishment","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.1
  SAY @14 /* ~Talk to my commander. There's nothing I can do about it. Also, don't talk to my commander, she's enough problems right now.~ #58770 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.0 3.4
  SAY @15 /* ~Please let Officer Vida know that reinforcements will arrive as soon as possible.~ #58771 */
  IF ~~ THEN DO ~AddJournalEntry(61678,QUEST)
SetGlobal("BD_Rousers_Reinforcements","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @16 /* ~Goodbye.~ #58772 */
  IF ~~ THEN EXIT
END
