// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ITHMEE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ITHMEE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA374~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Try to be more amiable, Helshara.~ #3008 */
  IF ~~ THEN EXTERN ~XAA375~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Helshara! Daddy would not trouble us with this were it not important! Your "rock" is an artifact fragment vital to constructing a skyship, no less so than my statuette and Delorna's spellbook.~ #3009 */
  IF ~~ THEN EXTERN ~XAA375~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Delorna is content to sit in contemplation, whether entrusted the book or not, and I simply know that our father would not have me here without reason.~ #3010 */
  IF ~~ THEN EXTERN ~XAA375~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~I did not offer to captain the final product, just to guard the components.~ #3011 */
  IF ~~ THEN EXTERN ~XAA375~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~We are invaded! Help!~ #3012 */
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
CreateCreature("GUARD",[0.0],S)
ActionOverride("HELSHARA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~Certainly you do not know the daughters of Shandalar, to think that gold would change our alliance!~ #3013 */
  IF ~~ THEN EXTERN ~XAA375~ 4
END

IF ~  Dead("Helshara")
~ THEN BEGIN 6 // from:
  SAY @7 /* ~No! Monster, take the blasted trinkets! Helshara...~ #3014 */
  IF ~~ THEN DO ~GiveItem("MISC69",LastTalkedToBy)
GiveItem("MISC70",LastTalkedToBy)
GiveItem("MISC71",LastTalkedToBy)
SetGlobal("HelpAlatos","GLOBAL",1)
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~I am Ithmeera, a daughter of the great mage Shandalar. My father has given me the duty of selling certain components to the Grand Dukes of Baldur's Gate. They are vital to the construction of a Halruaan flying ship. You could likely do it for me, though. Take my component, if you wish; it is in the desk.~ #7095 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9 /* ~What you've done is wrong! You'll pay!~ #9116 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY @10 /* ~Hello there.~ #2820 */
  IF ~~ THEN DO ~ActionOverride("Helshara",SetNumTimesTalkedTo(1))
~ EXTERN ~XAA375~ 8
END
