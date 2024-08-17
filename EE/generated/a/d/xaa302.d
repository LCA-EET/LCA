// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW5.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW5.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA302~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~It is quite the honor to be here on this occasion. That Sarevok is such a fine young man.~ #8239 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I had thought this function was invitation only. Who let rabble such as you in?~ #8240 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~There's quite a few rumors going about. Most of them center about Sarevok. It's rather obvious that he'll be the next Grand Duke, but the real news is that he's thinking about war... against Amn.~ #8241 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~The Rise of Sarevok
There are many rumors going about at the party. Most people expect Sarevok to be the next Grand Duke. They also think that his first act as Duke will be to declare war on Amn.~ #27327 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~I'll not have you near me!~ #9129 */
  IF ~~ THEN EXIT
END
