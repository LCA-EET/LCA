// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMBRID.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMBRID.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA103~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Sorry, traveler, but the entrance to Baldur's Gate is closed. With all of the bandit activity about, we've been forced to keep the gate closed. Perhaps if you return later, things may have changed and we may be able to reopen the city.~ #20556 */
  IF ~~ THEN REPLY @2 /* ~This is the city of Baldur's Gate! You have the mighty Flaming Fist to defend you. Why would you be afraid of bandit excursions?~ #20557 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Perfectly understandable. We'll return at some later date.~ #20559 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Normally what you have said would be true, but most of the Flaming Fist is down to the south, and the Grand Dukes feel that the city is exposed. I apologize for any inconvenience, but there is nothing I can do.~ #20560 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Good luck on your travels.~ #20561 */
  IF ~~ THEN EXIT
END
