// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\JARDAK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\JARDAK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA388~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What have you done?! My butler wouldn't have let you up here... unless you killed him. Pathetic wretches, do you know what you have done? Your screams will echo in hell for all eternity for your insolence!~ #18810 */
  IF ~~ THEN REPLY @2 /* ~Hey, hold on mister. It was your butler who attacked us! We just defended ourselves. If you're going to have hired help, make sure that you get someone a little smarter next time.~ #18812 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Who are you, and where did you get that cool armor? Hmmm, at least you have better fashion sense than your butler.~ #18813 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @4 /* ~You don't understand the gravity of your situation. Stinking brigands, draw steel so that we may fight to the death!~ #18814 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
