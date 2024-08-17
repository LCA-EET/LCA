// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES2.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES2.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA248~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Lots more people at the tables since the shortage of iron began. Desperate losers out of work and hope. I'd be sad for them... but their pain puts food on my table. Roll up roll up, all's well at my house!~ #8362 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Play or push off, I've money to take... er... make.~ #8363 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Step up and play, ladies and gents! It's an honest house and everyone has a chance at striking it rich! Anyone that says otherwise is advised to have a chat with the bartender's axe!~ #8364 */
  IF ~~ THEN EXIT
END
