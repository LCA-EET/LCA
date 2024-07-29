// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL12.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL12.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA301~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~That Sarevok seems a bit gruff at times, but perhaps that is what we need. A firm hand to guide us in these troubling times. I wonder, though...~ #8236 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Certainly you could have put more effort into your appearance before coming here. This is the event of the year and you look as though you wrestled the guard to get in. Shameful.~ #8237 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~There's quite a few rumors going about. Most of them center about Sarevok. It's rather obvious that he'll be the next Grand Duke, but the real news is that he's thinking about war... against Amn.~ #8238 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~The Rise of Sarevok
There are many rumors going about at the party. Most people expect Sarevok to be the next Grand Duke. They also think that his first act as Duke will be to declare war on Amn.~ #27327 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~Get out of my sight! I'll do nothing for you!~ #9144 */
  IF ~~ THEN EXIT
END
