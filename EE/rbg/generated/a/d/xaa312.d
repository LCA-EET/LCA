// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SUNIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SUNIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA312~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Poor little thieves. You have chosen the wrong home to break into today. You do not rob from a simple merchant, but rather the master mage SUNIN! I will brook no excuses! Today is the day that you die, robbers!~ #18951 */
  IF ~~ THEN REPLY @2 /* ~I know you said that you wouldn't tolerate excuses, but we have a real good one.~ #18952 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Die, mage!~ #18953 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Of course, I'll not be killing you alone. I have my servants to aid in the killing. They are but a teleport spell away.~ #18954 */
  IF ~~ THEN DO ~CreateCreature("JOULAR",[494.355],S)
CreateCreature("MAKA",[773.386],S)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Such fury!~ #18955 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
