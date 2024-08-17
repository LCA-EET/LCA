// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFM.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFM.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA180~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Pickin' pockets ain't as profitable as it once was. It's nearly enough to drive a man to honest work.~ #14170 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I got no time for your flim flams and jawings. Leave me to my pickings.~ #14190 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  RandomNum(5,2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Locals don't have the scratch to feed my fingers like the merchants from afar. You'd think the routing banditry would have some professional courtesy for their city-sinning cousins and let a mark or two through.~ #14191 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  RandomNum(5,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Normally I don't give the hairs on a sweet rat's patoot about local concerns, but now I canna even buy a new set of picks because of the iron shortage.~ #14192 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  RandomNum(5,4)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~You've an unfamiliar mug, so ye must be new to town, eh? Well, take a long walk sea-wise! T'ain't enough lootings for the sneaksmen already here, so keep yer hands in your own pockets and we'll get along just spanky dandy.~ #14193 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(5,5)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~I swears she dropped her purse an' I just picked it up for her! I never di... wait a sec. You're no guard, just a nosy ne'er-do-well interrupting my pickings! Off! Lest I pin you floor-wise!~ #14194 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  False()
~ THEN BEGIN 6 // from:
  SAY @7 /* ~ 'Ere, friend, you'll put me off my game interrupting me like this. I've nothing to tell you that you can't learn for yourself, so leave me to my sneaking.~ #14195 */
  IF ~~ THEN EXIT
END
