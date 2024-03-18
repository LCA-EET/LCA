// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NADARI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NADARI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA329~

IF ~  Global("NADARIN","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~With breath that strong, you could kill giants. Now get out of here before I hurt you.~ #15228 */
  IF ~~ THEN EXIT
END

IF ~  Global("NADARIN","GLOBAL",0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hey, you! You look either bored or foolish. Either way, I could use your services. Some wiseacre tried to send a basilisk by freight and now it's broken free and is making a mess of one of the warehouses at the harbor. As I said, I need someone who's either bored or foolish.~ #15229 */
  IF ~~ THEN DO ~SetGlobal("NADARIN","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Basilisk on the Loose
Some idiot let a basilisk get away from the ship carrying it. Now the monster is loose in a dockside warehouse, petrifying everyone it can see. If I can deal with it, Nadarin should reward me.~ #27299 */ EXIT
END

IF ~  Global("NADARIN","GLOBAL",1)
!Dead("BASILNAD")
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Look, how many times do I have to ask you? The docks are more ornamented than the High Hall!~ #15230 */
  IF ~~ THEN EXIT
END

IF ~  Global("NADARIN","GLOBAL",1)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Dead("BASILNAD")
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Thanks and long live the foolish! Here's 500 gold pieces for taking care of that on such short notice. Also, you might want these. They're an item I obtained from a fence I know in Athkatla. You never know, they might fit you.~ #15231 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
AddexperienceParty(1300)
GiveGoldForce(500)
GiveItem("BOOT02",LastTalkedToBy)
SetGlobal("NADARIN","GLOBAL",2)
~ SOLVED_JOURNAL @6 /* ~Basilisk on the Loose
That escaped basilisk will terrorize no one else. Nadarin offered a nice reward for the deed.~ #27300 */ EXIT
END

IF ~  Global("NADARIN","GLOBAL",1)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Dead("BASILNAD")
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Thank the gods for bored adventurers. I don't know what we'd do without you. Here's 500 gold pieces for your help.~ #15232 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
AddexperienceParty(1300)
GiveGoldForce(500)
SetGlobal("NADARIN","GLOBAL",2)
~ SOLVED_JOURNAL @6 /* ~Basilisk on the Loose
That escaped basilisk will terrorize no one else. Nadarin offered a nice reward for the deed.~ #27300 */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~Curses! You adventurers are all the same! I've got an emergency to deal with and all you want to do is cause trouble! Damn you to the Ninth Hell!~ #15233 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @9 /* ~Cheers to all of you for saving our docks from becoming a stone quarry!~ #15234 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @10 /* ~~ #18715 */
  IF ~~ THEN EXIT
END
