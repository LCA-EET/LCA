// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\BOYBA1.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\BOYBA1.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA4998~

IF ~  RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Momma said not to talk to 'venturers. They're all loopy she said.~ #8822 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(5,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~You don't look friendly at all.~ #8823 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(5,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Mom said not to talk to strangers. I asked her what that meant and she said, "Anyone who looks stranger than your relatives." Except Uncle Sue, I guess.~ #8824 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(5,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Can I have a lollipop?~ #8825 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(5,5)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Leave me alone! You're mean!~ #8944 */
  IF ~~ THEN EXIT
END
