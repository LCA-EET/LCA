// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBWBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBWBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA156~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~From what I've heard, the new man with the Iron Throne, Sarevok, is an unmarried man. I plan to change that.~ #1640 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Investigating the Iron Throne
Sarevok, son of one of the Iron Throne's leaders, has become increasingly popular in Baldur's Gate.~ #27328 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 even though they appear after this state */
~  RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~I hope my daughter makes it back to the city. The bandits have been so violent recently.~ #1641 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 even though they appear after this state */
~  RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Could you please step away? I have no desire to slum with those beneath my station.~ #1642 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Even though it is not decent for me to mingle with those beneath my station, I find that you possess a certain irresistible charm. I am willing to tell whatever you wish to hear. Perhaps you'd like to know about the last ball I attended. It was wondrous, I was at the forefront of everyone's mind.~ #6326 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6 /* ~I'll not have you near me!~ #9123 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  RandomNum(6,4)
~ THEN BEGIN 5 // from:
  SAY @7 /* ~I've never been satisfied with the dresses made by Elma Spitwrack. The workmanship is shoddy and the material is coarse. I've never understood why she is considered so highly by the fashion establishment in Waterdeep. I think that a blind goblin could make a better dress.~ #17994 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  RandomNum(6,5)
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Most interesting... After combining mandrake and nightshade, the world slows down and rabbits steal my pants. Lord Engles suggests that an Avatar is to blame but I think he's talking rot.~ #17995 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  RandomNum(6,6)
~ THEN BEGIN 7 // from:
  SAY @9 /* ~If you'll excuse me, I really find that I have no reason to speak with a mangy group of dirty adventurers. Go off somewhere and play your little sword and sorcery games, but please don't do it around me.~ #17996 */
  IF ~~ THEN EXIT
END
