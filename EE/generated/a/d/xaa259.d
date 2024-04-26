// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFF.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFF.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA259~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I've no interest in talkin' to the likes of you, unless you loosen the strings of your purse a bit. Then I'll be happy to chat, and to lighten the heavy load you are burdened with.~ #14196 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~If you don't mind, I've nobles to mark and lighten.~ #14392 */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~You'll be face to fist if you get in the way of me earning my rightful take on the street today!~ #14393 */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I've made a bit o' extra scratch from the pedestrian prey today, but I don't think I've much to say that you haven't heard before.~ #14394 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~If you are quite through drawing attention to me, I should like to make for some shadows now. Hard to blend with an unsuspecting crowd when the likes of you come barging up.~ #14631 */
  IF ~~ THEN EXIT
END
