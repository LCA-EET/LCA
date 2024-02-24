// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBLBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBLBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA136~

IF ~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Those Iron Throne fellows are quite the secretive bunch. Sarevok, the foster son of their leader, is quite the charmer, though.~ #1635 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Investigating the Iron Throne
Sarevok, son of one of the Iron Throne's leaders, has become increasingly popular in Baldur's Gate.~ #27328 */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @3 /* ~I heard that Sarevok might be willing to donate a large portion of his coster's iron supplies to the city.~ #1636 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* ~I'll definitely vote for Sarevok in the coming election. He might be new, but he has a lot to add to the city.~ #1637 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Investigating the Iron Throne
Sarevok, son of one of the Iron Throne's leaders, has become increasingly popular in Baldur's Gate.~ #27328 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~I do hope they catch those rapscallions that escaped from Candlekeep. From what I understand they were trying to frame the Iron Throne for what's really the fault of Amn. To think that Duke Eltan was trusting Amnian spies.~ #1638 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,2)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~I have a vested interest in the Seven Suns trading coster. It upsets me to no end how much they've lost to bandits over the past few weeks.~ #1639 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,3)
~ THEN BEGIN 5 // from:
  SAY @7 /* ~As a man of distinguished lineage, I rarely stoop to the common events of the peasant. I doubt that there is anything I could tell you that you would find useful. Sorry friend.~ #6322 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,4)
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Approach me not! I'll ruffle you up, I will!~ #9133 */
  IF ~~ THEN EXIT
END
