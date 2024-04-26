// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW9.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW9.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA228~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings. I trust your stay here at the Low Lantern has been fun? You certainly don't look Baldurian; what exotic locales do you hail from?~ #7492 */
  IF ~~ THEN REPLY @2 /* ~We're all from the Utter East. We've come to the Sword Coast in order to experience the wonders we've heard about at home.~ #7498 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We hail from Cormyr; we're just simple merchants.~ #7499 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We're adventurers out of Waterdeep. With all of the troubles in this region, we thought it would be the place to ply our trade.~ #7500 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~We're a motley band, really. Most of us come from here or there. Right now we're investigating all of the troubles that have been plaguing this region of late.~ #7501 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~The Utter East! You must have traveled very far. Well, I hope you find our city to your liking, it would be terrible for you to be disappointed after coming so far.~ #7493 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~Merchants. Oh pooh, I thought you were exciting folk.~ #7494 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~Adventurers! So you must be in the business of fighting dreadful beasts and such things. All of you must be so very brave to take up such a profession.~ #7495 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~Hmm. Very interesting. I wish you well in your investigations.~ #7496 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @10 /* ~Hello again.~ #7497 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @11 /* ~I've heard quite a bit about what's been going on around town. Most of the talk's about iron, and so quite boring really.~ #7502 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @12 /* ~I'll not have you near me!~ #9124 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @13 /* ~~ #9125 */
  IF ~~ THEN EXIT
END
