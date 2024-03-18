// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA198~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there. This is MY kitchen, and I don't like interlopers, so get out!~ #7634 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Didn't I tell you to get out? I don't want you in my kitchen, can't you get that through yer thick skull?~ #7635 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~It's you again. By the claws of Umberlee, I can't take these interruptions much longer. Get out of my kitchen, and stay out.~ #7636 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I'm just a cook, what should I know?~ #7637 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Out! And never darken my door again!~ #9183 */
  IF ~~ THEN EXIT
END
