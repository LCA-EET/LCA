// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\POGHM7.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\POGHM7.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC128~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello. I am the level coordinator. Is there anything I can help you with?~ #3419 */
  IF ~~ THEN REPLY @2 /* ~No, I don't need your help.~ #3421 */ EXIT
  IF ~~ THEN REPLY @3 /* ~Could you tell me where I could find Tethtoril?~ #3483 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~I was wondering where I could find Ulraunt?~ #3485 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~Tethtoril is a very busy man, and I don't keep track of his schedule. Sorry.~ #3487 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~You can find Ulraunt in his apartment on the sixth floor. I wouldn't bother him there though; he doesn't like unannounced intrusions.~ #3491 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~Good friend, would you like me to give you a sermon on the wisdom of Oghma? No? Well, perhaps another time then.~ #6365 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~It would be wise for you to leave. Now.~ #9107 */
  IF ~~ THEN EXIT
END
