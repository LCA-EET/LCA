// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRLENT.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRLENT.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA315~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings, house guests. I must assume that you are the friends that have had Aldeth so excited. I must introduce myself: I am Irlentree, one of Aldeth's partners in business. I've come to announce that the company is celebrating the anniversary of Aldeth's stay with us. I would like you to join us for the festivities. There should be some interesting surprises.~ #1289 */
  IF ~~ THEN REPLY @2 /* ~Sorry, we don't feel up to it right now.~ #1295 */ DO ~SetGlobal("ZorlParty","GLOBAL",1)
SetGlobal("TalkedToZorlIrenl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We'll be there.~ #1296 */ DO ~SetGlobal("ZorlParty","GLOBAL",1)
SetGlobal("TalkedToZorlIrenl","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~No, I don't think you understand. I insist that you be there. You should go soon. I'm sure you'd enjoy it.~ #1290 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @5 /* ~The party is set to take place on the third floor. If you go up there, I'll meet you soon after.~ #1291 */
  IF ~~ THEN UNSOLVED_JOURNAL @6 /* ~Investigating the Merchants' League Estate
Irlentree, one of the owners of the Merchants' League, invited us to Aldeth's anniversary party on the third floor.~ #26827 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Are you sure Aldeth, I was most certain that this was the day.~ #1293 */
  IF ~~ THEN EXTERN ~XAA410~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Come now Zorl, we mustn't be so rude. These primates are about to take the final step, to become something much greater than what they were.~ #1294 */
  IF ~~ THEN EXTERN ~XAA410~ 7
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~You must not bother me at the moment prim—friends; I am a very busy man. If you are overly excited about the upcoming feas—party, don't be worried, we won't start without you.~ #7030 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @10 /* ~Why don't you go to the third floor, friend? The party is starting there, and some, ah, friends of mine wouldn't mind meeting you.~ #11811 */
  IF ~~ THEN EXIT
END
