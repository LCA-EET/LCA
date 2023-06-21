// creator  : weidu (version 24900)
// argument : NEB.DLG
// game     : .
// source   : ./override/NEB.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~NEB~

IF ~  !Global("UngerInfo","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #48202 /* ~Flee you from my home, will you? Honest citizen I am. Just a gnome trying to make a living.~ */
  IF ~~ THEN GOTO 2
END

IF ~  Global("UngerInfo","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #48204 /* ~Have you reason to be here? I do not recall summoning such as you. Do I... know you? I do not think it is so.~ */
  IF ~~ THEN REPLY #48208 /* ~I'll be going then. Sorry to have bothered you.~ */ GOTO 8
  IF ~~ THEN REPLY #48209 /* ~Is your name Neb? ~ */ GOTO 3
  IF ~~ THEN REPLY #48210 /* ~I am here to take what you stole from Unger Hilldark!~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48205 /* ~Do I... know you? No, no, I do not believe so. Leave lest I include you in my mathematical studies. Interruptions are costly. Think of the children.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #48213 /* ~Why, friend, who told you my name? Who... who is it that sent you here?~ */
  IF ~~ THEN REPLY #48214 /* ~No one. Sorry to have bothered you.~ */ GOTO 4
  IF ~~ THEN REPLY #48215 /* ~I am here to take back what you stole from Unger Hilldark!~ */ GOTO 6
  IF ~~ THEN REPLY #48216 /* ~I hear that you are on the run from Baldur's Gate.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48222 /* ~I think you lie. You have no cause to know my name unless you were sent by the law! Do vengeful families cry out for my capture?~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 7.0 6.0 4.0
  SAY #48224 /* ~Come then, attack! And your deaths shall be a riddle for some other fool to solve!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Yoshimo")
~ THEN DO ~Enemy()
~ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~Enemy()
~ EXTERN ~JAHEIRAJ~ 427
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~Enemy()
~ EXTERN ~MINSCJ~ 140
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Yoshimo")
~ THEN DO ~Enemy()
~ EXTERN ~YOSHJ~ 83
END

IF ~~ THEN BEGIN 6 // from: 3.1 1.2
  SAY #48225 /* ~Unger? So you support the morally gray with the slaughter of the morally red? Think of what my death will mean. Think of the children, hehehee.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #48226 /* ~So, my former life does come back to haunt? So be it, though I shall miss the children so. Ah yes, the children...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0
  SAY #61135 /* ~Oh... hee hee! Oh, you shall be very sorry, indeed! You have found me out, and now you must pay, oh yes. A little old for my taste, but no matter!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
