// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHEP.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHEP.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA294~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ye stink like the adventuring rogues that ye are!~ #19125 */
  IF ~~ THEN REPLY @2 /* ~And you have the stench about you of a peasant knave. Now I ask you, which of us smells the sweeter?~ #19126 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Look, comrades! The peasant has a tongue! If only he had the wit to match...~ #19127 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Sweetness is best judged by those around ye. My cows and horses know my scent and snuggle close to share it. But ye surround yerself wit' monsters and they crowd close only to extinguish yer fetid wafts and purge them wit' a slow turn on the spit! Aye, then, there be firm proof that between our two stenches, mine be far more the tolerable!~ #19128 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~What good be wit unless ye use it? Rest assured, stranger, I have not seen it grace yer party yet.~ #19130 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @6 /* ~Yer type was meant to spar wit' magic globes and sharpened steel. Yer attempts at verbal conquest leave much to be desired. Begone, imps, and through the window fly.~ #19131 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
