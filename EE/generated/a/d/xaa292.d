// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PRIHEL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PRIHEL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA292~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome to the Watchful Shield. Our devotion to He of the Unsleeping Eye is unswerving. Please, allow us to shield and protect you under the ceaseless gaze of Helm.~ #15397 */
  IF ~~ THEN REPLY @2 /* ~Sorry, the thought of being watched by some kind of ceaseless eye disturbs me immensely. I'll find my own way out.~ #15400 */ EXIT
  IF ~~ THEN REPLY @3 /* ~I'd like to see what services you have to provide.~ #15399 */ DO ~StartStore("xaa147",LastTalkedToBy(Myself))
~ EXIT
END
