// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TARTUS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TARTUS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA208~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Oh, how I wish this horrid iron crisis would end! I bought a new mirror the other day and I swear the frame shattered before the glass! Honestly, I don't know how we nobles are supposed to keep ourselves alive in this environment.~ #18889 */
  IF ~~ THEN REPLY @2 /* ~There is more to this iron crisis than your petty vanity.~ #18893 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Breaking a mirror... That's seven years bad luck, plus ten for the metal...~ #19050 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~No, there isn't. Now good day and goodbye!~ #19051 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~An extra ten? For metal? Why, this entire region will be cursed for generations!~ #19052 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
