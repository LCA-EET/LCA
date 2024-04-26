// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM10.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAM10.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA318~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 8 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("SarevokBehavior","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Could you please hand over your invitations to the palace?~ #7533 */
  IF ~~ THEN REPLY @2 /* ~We don't have any invitations.~ #7541 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We don't need invitations.~ #7542 */ GOTO 2
  IF ~  PartyHasItem("MISC78")
~ THEN REPLY @4 /* ~Here are the invitations.~ #7543 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Then you must leave immediately or we will have to remove you forcibly.~ #7534 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Could I ask why you wouldn't need invitations?~ #7535 */
  IF ~~ THEN REPLY @7 /* ~No, you can't ask why.~ #7544 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~We're important dignitaries from Tethyr, and thus do not need such a trivial thing as an invitation.~ #7545 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~We're powerful sorcerers, and we'll blow you to bits where you stand if you don't get out of our way.~ #7546 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~We're close friends of the Grand Dukes, and therefore don't need invitations.~ #7547 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11 /* ~You must leave immediately, or we will have to resort to physical force.~ #7536 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @12 /* ~Ohhh, well then, I guess we had better let you pass. Sorry to have bothered you about such a "trivial thing" as an invitation. Men, kill these idiots.~ #7537 */
  IF ~~ THEN DO ~Shout(1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13 /* ~Oh my! I'm trembling with fright. I'm about to be killed by mighty wizards. Men, kill these morons.~ #7538 */
  IF ~~ THEN DO ~Shout(1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @14 /* ~Uh huh. Well, guess what? If you don't get your lying butt out of here in the next five seconds, the Grand Dukes will have several funerals to attend.~ #7539 */
  IF ~~ THEN DO ~Wait(5)
Shout(1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @15 /* ~Thank you very much. You may pass now.~ #7540 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("SarevokBehavior","GLOBAL",0)
StateCheck(Myself,STATE_CHARMED)
CombatCounter(0)
!See([ENEMY])
~ THEN BEGIN 8 // from:
  SAY @16 /* ~Come right in.~ #7548 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @17 /* ~You're not welcome here!~ #9007 */
  IF ~~ THEN EXIT
END
