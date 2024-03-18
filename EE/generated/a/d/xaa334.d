// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OCELLI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\OCELLI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA334~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Have you heard? The question of declaring war on Amn is being put before the Duke's Council!~ #18876 */
  IF ~~ THEN REPLY @2 /* ~Oh, no! What do you think their decision will be?~ #18877 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I wish to hear as little of this city's politics as I can. Go bring your news to a more willing audience.~ #18878 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~The dukes are too set in their ways, too comfortable there. This is all just part of their cat-and-mouse game with Amn to negotiate a better deal on the iron trade... Still, the suggestion of war has only been that until now: a suggestion, not an eventuality brought to the table to be considered...~ #18879 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Well, at least you didn't shoot the messenger.~ #18885 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
