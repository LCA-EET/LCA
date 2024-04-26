// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FELONI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FELONI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA240~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~My WORD! What nefarious deity have I crossed to warrant the siege of my home by heavily armed roustabouts and ruffians? Storming in here as you have is rude, if not downright illegal! What can you possibly say that would stop me from having you thrown in the stocks?~ #10456 */
  IF ~~ THEN REPLY @2 /* ~You take a single step toward the door and I'll wring your scrawny neck! I just need to examine some of your wares.~ #10457 */ GOTO 1
  IF ~  Global("Baldurian","GLOBAL",1)
~ THEN REPLY @3 /* ~Not to worry, old chum, I merely wish to examine a few statues you supposedly have on premises. I'll be done in a twinkle.~ #10458 */ GOTO 2
  IF ~  PartyGoldGT(299)
Global("Baldurian","GLOBAL",1)
~ THEN REPLY @4 /* ~Hold on a moment friend, I'll make it worth your while. How about 300 gold, just for letting me take a quick look around? All I want to do is look at some of your statues.~ #10460 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~Sorry for bothering you. We'll be on our way out the door.~ #10557 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~W-w-well, I see no reason to delay you further then. T-take a look around if you like. I'll not get in your way. Just... just try to be gentle. Some items are fragile.~ #10459 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~You'll be done quicker than that. I'm off to summon the guards and they will deal with you!~ #10461 */
  IF ~~ THEN DO ~CreateCreature("FLAMEN",[455.732],NW)
CreateCreature("FLAMEN",[489.705],NW)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~300 you say? Well, I don't suppose there would be much harm in letting you glance about. Just be quick about it.~ #10462 */
  IF ~~ THEN DO ~TakePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~Good! Make sure you don't dirty my floors again.~ #10558 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @10 /* ~If you have taken your look around, then I kindly ask you to leave.~ #31993 */
  IF ~~ THEN EXIT
END
