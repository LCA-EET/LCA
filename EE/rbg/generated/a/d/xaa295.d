// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST8.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST8.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA295~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Sorry, sweetheart, I've no time for play right now. Must pay off the boss man or I lose room privileges. Ah well, it's better than having no roof at all. Although I DO like watching the stars while I work. Can't have everything, I guess.~ #8314 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Off wit' you fruity fools, I've payments to make at Dillar's. Percentage of profits for use of the 'cellar, don't ye know.~ #8315 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Why do I get the feeling that, where you're from, "bumping uglies" meant a head-butting contest? Out of my way, I've a money-grubbing manager to pay off.~ #8316 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~All I can tell you, lover, is to watch for Slythe and Krystin. They're crazy.~ #8317 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Get near me again and I'll have your nethers on a platter!~ #9098 */
  IF ~~ THEN EXIT
END
