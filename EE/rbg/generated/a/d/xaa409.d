// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON14.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON14.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA409~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there! What are you doing here? I don't recognize you.~ #7618 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
PartyGoldGT(99)
~ THEN REPLY @2 /* ~How about you just take this 100 gold and look the other way?~ #7626 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
PartyGoldGT(99)
~ THEN REPLY @2 /* ~How about you just take this 100 gold and look the other way?~ #7627 */ GOTO 2
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We've business with your leaders. We've just come from Sembia and are quite weary, so if you would just step aside, we would be grateful.~ #7628 */ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @3 /* ~We've business with your leaders. We've just come from Sembia and are quite weary, so if you would just step aside, we would be grateful.~ #7629 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @4 /* ~Calm down; we're just new recruits. We just haven't got our uniforms yet.~ #7630 */ GOTO 5
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @5 /* ~Calm down, we're new recruits. We just haven't got our uniforms yet.~ #7631 */ GOTO 6
  IF ~~ THEN REPLY @6 /* ~We've just come from Cormyr. With business going so well there, we have brought a large sum of surplus money for your superiors. I'm sure they wouldn't wish to be kept waiting.~ #7632 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @7 /* ~We're looking the other way, now get out of here.~ #7619 */
  IF ~~ THEN DO ~TakePartyGold(100)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @8 /* ~Sure, we'll take your money... from your cooling corpse that is.~ #7620 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9 /* ~All you are is a dead liar.~ #7621 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @10 /* ~Okay, sorry for troubling you.~ #7622 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @11 /* ~We've got no new recruits. What I think you are is a spy.~ #7623 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @12 /* ~Get a move on then, and put your uniforms on.~ #7624 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.6
  SAY @13 /* ~That's funny, 'cause last I heard, the Iron Throne was banned from operating in Cormyr. Lying scum! I don't know how you've gotten this far, but you'll get no further.~ #7625 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~If ye're lookin' to talk with some of the high-ups, you should visit the fourth floor.~ #7633 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @15 /* ~You're not welcome here! You'll pay with your life!~ #9220 */
  IF ~~ THEN EXIT
END
