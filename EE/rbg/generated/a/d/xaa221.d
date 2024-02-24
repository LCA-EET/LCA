// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON13.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRON13.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA221~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("chapter","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome to the Iron Throne citadel. Could you please state what business brings you here?~ #7600 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
PartyGoldGT(99)
~ THEN REPLY @2 /* ~We have no business here, but perhaps this 100 gold would let us in anyway.~ #7609 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
PartyGoldGT(99)
~ THEN REPLY @2 /* ~We have no business here, but perhaps this 100 gold would let us in anyway.~ #7610 */ GOTO 2
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @3 /* ~We've business with your leaders. We've just come from Sembia and are quite weary, so if you would just step aside we would be grateful.~ #7611 */ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @4 /* ~We've business with your leaders. We've just come from Sembia and are quite weary, so if you would just step aside, we would be grateful.~ #7612 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @5 /* ~We're seeking employment with the Iron Throne. If you could just direct us to someone with whom we should speak, we will be on our way.~ #7613 */ GOTO 5
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @5 /* ~We're seeking employment with the Iron Throne. If you could just direct us to someone with whom we should speak, we will be on our way.~ #7614 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
PartyGoldGT(199)
~ THEN REPLY @6 /* ~If I were to give you these 200 gold, would you not ask any questions and just let us in?~ #7615 */ DO ~TakePartyGold(200)
~ GOTO 7
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
PartyGoldGT(199)
~ THEN REPLY @6 /* ~If I were to give you these 200 gold, would you not ask any questions and just let us in?~ #7616 */ DO ~TakePartyGold(200)
~ GOTO 8
  IF ~~ THEN REPLY @7 /* ~I'm here to kill all those who would associate themselves with the Iron Throne!~ #11827 */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @8 /* ~Hmm. I think 100 gold would persuade us to let you in. Just make sure not to make any trouble.~ #7601 */
  IF ~~ THEN DO ~TakePartyGold(100)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @9 /* ~We don't take bribes! Now get out before we thrash you.~ #7602 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~We're not going to step aside for what is obviously a troupe of brigands. Get out of here before we summon the Flaming Fist.~ #7603 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @11 /* ~Strange... We've not been told about you, but no matter, you may come in.~ #7604 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @12 /* ~We don't need any new employees. Now get lost.~ #7605 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @13 /* ~New employees, huh. Well, take yourselves up to the fourth floor; there you'll find some private offices. The men in those offices do all the hiring.~ #7606 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.6
  SAY @14 /* ~We don't have any questions. Come on in.~ #7607 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.7
  SAY @15 /* ~We don't take bribes! Now get out of here before we thrash you.~ #7608 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9 // from:
  SAY @16 /* ~Well met, friend! Come on in, and enjoy the hospitality of the Iron Throne.~ #7617 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  Global("chapter","GLOBAL",7)
~ THEN BEGIN 10 // from:
  SAY @17 /* ~You're not welcome here! You'll pay with your life!~ #9221 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
