// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUS29.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUS29.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC132~

IF ~  RandomNum(8,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~As long as I get paid, I'll fight anyone you point me at.~ #62932 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Just pass the orders down and I carry 'em out.~ #62933 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Everyone here seems hypnotized by this Caelar. ~ #62934 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Sure I like the crusade. They pay up front.~ #62935 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,5)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~We mercenaries get our pick of the loot after we take a town, once the commanders divide up the supplies.~ #62936 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,6)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~This job'll do until a better one comes along.~ #62937 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,7)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~We get to fight a lot in the crusade. I like fighting.~ #62938 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,8)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~Whenever we get hurt in battle there are lots of priests around to patch us up!~ #62939 */
  IF ~~ THEN EXIT
END
