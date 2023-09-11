BEGIN ~XAHEAD1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0 /* ~The wheels of prophecy e'er turn;
Gorion's ward hath come. 
Crossroad of past, present, and future:
The one foreseen, the one foretold.~ [HEAD01] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1 /* ~That which hath past is ne'er truly gone;
History repeats, though mortals choose not to see.
War and bloodshed be not new to the realms;
A god that once hath been may be once again.~ [2HEAD01] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2 /* ~Armies march and cities burn;
The rivers froth with tainted blood.
The corpses of those born not innocent
Feed the inferno of boiling hate.~ [3HEAD01] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3 /* ~Bhaal's Servant deceived; Five led down a false path;
A hidden traitor lurks in thy midst.
The Servant of Bhaal knows death and destruction,
The face of an ally, the mask of a foe.~ [4HEAD02] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4 /* ~The children of Bhaal bring death to the land;
They slaughter each other and feed their father.
Death and betrayal walk together;
A river of tainted blood doth not cleanse.~ [5HEAD03] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5 /* ~The storm approaches. We speak no more.~ [5HEAD04] */
  IF ~~ THEN DO ~SetGlobalTimer("XA_GiantSpawnTimer","GLOBAL",THREE_ROUNDS)
StartCutSceneMode()
StartCutSceneEx("XA204g",FALSE)
~ EXIT
END
