// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KEVIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KEVIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA227~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Don't come in here! There's a basilisk loose! Get out while you're still able.~ #11260 */
  IF ~~ THEN REPLY @2 /* ~All right, we're out of here.~ #11263 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @3 /* ~How did a basilisk get into a warehouse in the center of the city?~ #11264 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4 /* ~Gorpel Hind and his adventuring band, the Merry Fools, captured the beast a few weeks back. It was to be transported to Waterdeep to be shown at a carnival but the thing woke up from its magical slumber before it was supposed to! But enough talk... Ruuunnn...!~ #11265 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
