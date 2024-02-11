// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\MINERN.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\MINERN.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA5274~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 2 3 5 6 7 8 9 10 11 even though they appear after this state */
~  Global("SpokenToEmerson","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there, you don't belong here! Go see the foreman, or I'll call the guard!~ #759 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 2 3 5 6 7 8 9 10 11 even though they appear after this state */
~  Global("SpokenToEmerson","GLOBAL",0)
NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~If ye no get the okay to be here, dem guards come and cut yer head from yer neck!~ #760 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  RandomNum(8,1)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Leave us be, there is much work to be done.~ #761 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I'm just a dumb miner. I dunno much, 'cept a little about those dog headed imps that 'ave been causin' all the trouble in the lower levels.~ #6307 */
  IF ~~ THEN UNSOLVED_JOURNAL @5 /* ~Investigating the Nashkel Mines
Some say that "dog-headed imps" roam the lower reaches of the Nashkel mines.~ #27271 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6 /* ~Get away from me!~ #9155 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  RandomNum(8,2)
~ THEN BEGIN 5 // from:
  SAY @7 /* ~GAH! By the gods o' all the depths, you scared the livin' bejeezers outta me! Leave us to get back to work, will ya! We gotta meet our quota or they send us down to the lower levels. Last crew lost five men down there.~ #13923 */
  IF ~~ THEN UNSOLVED_JOURNAL @8 /* ~Investigating the Nashkel Mines
The mines are shipping barely any ore at all, what with the shortage of people.~ #26886 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #3 ~  RandomNum(8,3)
~ THEN BEGIN 6 // from:
  SAY @9 /* ~I'm here breakin' my back to feed my family. What's your excuse? Lookin' for "adventure"? You'll find it below if you're fool enough. The dead walk beneath the earth.~ #13924 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  RandomNum(8,4)
~ THEN BEGIN 7 // from:
  SAY @10 /* ~Don't be bothering me! The sooner I get my job done, the sooner I get my sorry arse out of this deathtrap. It's safe up here, but down below... not even the ore stays pure down there. It ain't natural.~ #13925 */
  IF ~~ THEN UNSOLVED_JOURNAL @11 /* ~Investigating the Nashkel Mines
The ore in the lower levels of the Nashkel mines is tainted. People don't know what is causing it.~ #27272 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #5 ~  RandomNum(8,5)
~ THEN BEGIN 8 // from:
  SAY @12 /* ~I got no time for chatter. We're working double shifts, but we don't produce no more usable ore. Miners don't go below unless forced, and what we do bring up is... tainted.~ #13926 */
  IF ~~ THEN UNSOLVED_JOURNAL @11 /* ~Investigating the Nashkel Mines
The ore in the lower levels of the Nashkel mines is tainted. People don't know what is causing it.~ #27272 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #6 ~  RandomNum(8,6)
~ THEN BEGIN 9 // from:
  SAY @13 /* ~Emerson say we gots a problem with mongrel dogs below, but I ain't never seen no dog with a sword! I swear it's true, but they keep me quiet.~ #13927 */
  IF ~~ THEN UNSOLVED_JOURNAL @14 /* ~Investigating the Nashkel Mines
There are apparently "dogs with swords" in the lower levels of the mines. They are starting to sound familiar.~ #27273 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #7 ~  RandomNum(8,7)
~ THEN BEGIN 10 // from:
  SAY @15 /* ~You really want adventure, struggle, and treasures? Try earning an honest living for a change. My daughter shines brighter than any jewel you'll ever take from the beasties below. Some day you'll settle. Then you'll know.~ #13928 */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~  RandomNum(8,8)
~ THEN BEGIN 11 // from:
  SAY @16 /* ~I don't mind diggin' if there's a point to it, but all we bring up is plagued anyway. Found some tracks and a glass vial too, so it ain't no accident. Wish someone would stick a sword up the tenders of whoever's behind it.~ #13929 */
  IF ~~ THEN UNSOLVED_JOURNAL @11 /* ~Investigating the Nashkel Mines
The ore in the lower levels of the Nashkel mines is tainted. People don't know what is causing it.~ #27272 */ EXIT
  IF ~  GlobalGT("CHAPTER","GLOBAL",2)
~ THEN EXIT
END
