// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LANTAN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LANTAN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA191~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there, wait! I recognize your face from a—from a dream I had last night...~ #19256 */
  IF ~~ THEN REPLY @2 /* ~Dreams speak with wisdom the waking mind can rarely fathom. Tell me your dreams, woman, and warn me of my place in them.~ #19257 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Stay back, hag, I want nothing of your witch's ravings!~ #19258 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~You were a god, made of iron, and I watched you from below, so far below. You were stolid, still, unmoving, a bulwark against some raging storm and then you—and then you shattered and... and broke... Your iron flesh, it tore itself asunder and—and—and you fell to your knees, a weakened being. It was horrible, a true horror, and I woke up weeping with my husband shaking me, desperate to rouse me from my reckless slumber... Whoever you be and whatever you have come here for, beware the fates for they... they be arrayed against you.~ #19259 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~They have replaced your heart with sickened iron! Did you feel them pour the molten metal in? Does it sit there, cold and hard within your chest? Begone from me! Begone and beware your other!~ #19260 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
