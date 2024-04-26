// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BELLAM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BELLAM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA313~

IF ~  NumTimesTalkedTo(0)
ReputationLT(Player1,11)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I have been sent to warn you and your party of Phandalyn. He is a powerful paladin here in the city and he poses a grave danger to you. I would suggest that you avoid him altogether.~ #15247 */
  IF ~~ THEN REPLY @2 /* ~Thanks for the warning but before I take it to heart, who are you?~ #15253 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~Thanks for the warning but I can take care of myself.~ #15250 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Where is this Phandalyn you speak of?~ #15254 */ GOTO 4
END

IF ~  ReputationGT(Player1,10)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @5 /* ~Good day to ya.~ #15255 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6 /* ~Just a friend.~ #15256 */
  IF ~~ THEN REPLY @7 /* ~Well, thanks "friend," but I can take care of myself.~ #15258 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Well, where is this Phandalyn you speak of?~ #15257 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 0.1
  SAY @9 /* ~Suit yourself, but don't say I didn't warn you.~ #15261 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 0.2
  SAY @10 /* ~You can usually find him in one of the taverns close to the docks, but I don't recommend you do. If you have business there, I suggest you do it after sundown.~ #15262 */
  IF ~~ THEN JOURNAL @11 /* ~Phandalyn
Bellamy, a decidedly mysterious halfling bard, has warned me to steer clear of a paladin lurking behind one of the dockside taverns here in Baldur's Gate. His name is Phandalyn, and, from the sound of it, my reputation has preceded me.~ #26870 */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY @12 /* ~Watch your back out there.~ #15263 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @13 /* ~Keep your head up out there.~ #15264 */
  IF ~~ THEN EXIT
END
