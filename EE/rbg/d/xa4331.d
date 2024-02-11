// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\PROST1.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\PROST1.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA4331~

IF ~  RandomNum(8,8)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ooo love. You're a cheeky monkey, aren't you?~ #14160 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I love a fighter in full plate. They just look so... hard.~ #14161 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I generally avoid temptation unless I can't resist it.~ #14162 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I'm no angel, but I've spread my wings a bit.~ #14163 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,4)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~It is better to be looked over than overlooked.~ #14164 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,5)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~The curve is more powerful than the sword.~ #14165 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,6)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~Too many girls follow the line of least resistance, but a good line is hard to resist.~ #14166 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,7)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~Anything worth doing is worth doing slowly.~ #14167 */
  IF ~~ THEN EXIT
END
