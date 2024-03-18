// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GANTOL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GANTOL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA385~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ZzzzzzzZZZZzzzzzzzZZZzzzz...~ #2952 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Zzz... *cough* Wha...? Who's...? Who's there?~ #2953 */
  IF ~~ THEN REPLY @3 /* ~Your death if you don't keep still and quiet! I'll take my fill and you will live another day!~ #2954 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Meow-w-w.~ #2955 */ GOTO 4
  IF ~~ THEN REPLY @5 /* ~The jig's up! Out, we must get out!~ #2956 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 7.0 5.0 1.0
  SAY @6 /* ~You arrogant whelp! I've faced worse than you in my bedclothes before, and damned if I'll let you touch a stitch of what is mine! Guards! Intruders about to die! Bring mops!~ #2957 */
  IF ~~ THEN DO ~CreateCreature("GANTOL2",[246.433],S)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 7.1 5.1 1.2
  SAY @7 /* ~What in blazes?! I'm invaded by cowards!~ #2958 */
  IF ~~ THEN DO ~CreateCreature("GANTOL2",[246.433],S)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8 /* ~*grumble* Blasted cat. Hrmph. *snork* Zzzzzz...~ #2959 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Zzzz... Wha... Wait a minute. I don't own a cat. Who's there?~ #2960 */
  IF ~~ THEN REPLY @3 /* ~Your death if you don't keep still and quiet! I'll take my fill and you will live another day!~ #2963 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~The jig's up! Out, we must get out!~ #2964 */ GOTO 3
  IF ~~ THEN REPLY @10 /* ~I'm a stray, go back to sleep. Shhhhhhhhhh.~ #2965 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @11 /* ~*YAWN*... that makes sense... g'nite kitty... Zzzzzz...~ #2961 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 7 // from:
  SAY @12 /* ~Zzzz... *grumble* Noisiest talking cat I ever heard... Wha...? What did I just say? Noisiest talking ca... Guards! Guards!~ #2962 */
  IF ~~ THEN REPLY @3 /* ~Your death if you don't keep still and quiet! I'll take my fill and you will live another day!~ #2966 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~The jig's up! Out, we must get out!~ #2967 */ GOTO 3
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 8 // from:
  SAY @13 /* ~I'm kind of tired right now, friends. I really don't know anything that would help you much at all.~ #6415 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @14 /* ~I'll learn you some respect! You'll not leave here walking!~ #9072 */
  IF ~~ THEN EXIT
END
