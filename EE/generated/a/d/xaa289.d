// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST4.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST4.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA289~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Heh... hehe... Well, welcome to ye! I trust ye are of fine health today? Come to do something about it? I f-f-find that most of the people above are a bit too healthy sometimes. Stay awhile and free your mind a bit...~ #8268 */
  IF ~~ THEN REPLY @2 /* ~Your offer is tempting indeed, but I have obligations elsewhere.~ #8274 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Away from me, harlot! I'll not let your presence despoil me or my companions!~ #8275 */ GOTO 2
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @4 /* ~Why darling, is that a personal invitation?~ #8276 */ GOTO 3
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @4 /* ~Why darling, is that a personal invitation?~ #8277 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~I am sure you do. No matter. More of me for someone else...~ #8269 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Ooooo, you are waaaaay too healthy. Bet you spend most your nights buffing the helm, hmm? Off with you then, and don't come back until you've loosened your belt a little. Have a friend help, it's more fun that way. Heeeeheee.~ #8270 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Now don't get me wrong big... fella. Not that you're not attractive an all, but tonight I'm enjoying my own company. Stay awhile and relax for an eve. No pressures here.~ #8271 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @8 /* ~Heeheeee... not that I'm a... Xena-phobe or anything, but... you're not my type, sister. Enjoy the eve, though.~ #8272 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~Oooh, colors.~ #8273 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~I'm too high to be of any use to you honey.~ #8278 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~Get near me again and I'll have your nethers on a platter!~ #9102 */
  IF ~~ THEN EXIT
END
