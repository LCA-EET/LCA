// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRATHL.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRATHL.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA331~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome all to the Hall of Wonders. Please follow, and I shall endeavor to introduce you to the majesty of Gond.~ #2534 */
  IF ~~ THEN DO ~MoveToPoint([638.1014])
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I hope you had little difficulty making your way here. People are often confused by the companion building across the lane, the High House of Wonders. It is the consecrated temple to Gond, our worship center on the Sword Coast, and parent temple to the Hall here. Separated to ensure that tourism does not disrupt the sanctity of our reverence, the two structures are nevertheless linked by a bridge, that they might be guarded as one.~ #2535 */
  IF ~~ THEN DO ~MoveToPoint([759.986])
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Here is a wondrous item forged from the mind of one of our respected gnomish brethren. Known as a Steam Dragon, it is a remarkable if somewhat noisy means of moving large objects. The fire in its belly powers mighty gears that can be affixed to belts and pulleys, hauling loads that would require dozens of strong backs. Our own harbor employs such items on a grand scale, relieving ships of their cargo in a matter of moments. A mite detrimental to the jobs of several longshoremen when installed, it has greatly improved the health of the few remaining.~ #2539 */
  IF ~~ THEN DO ~MoveToPoint([892.920])
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Another marvel of ingenuity, the Pump of Gond. By standing astride the seat one is able to move water as a mill wheel might, with only the power of the legs. Excellent for watering fields or draining a flooded home. Hard work to ride for long, it does spare the back and neck from bearing the weight of buckets.~ #2540 */
  IF ~~ THEN DO ~MoveToPoint([855.856])
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(4)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Bringing light where is naught but darkness, the Everlight. The natural law that all must fall helps feed continuous oil to a system of lamp lights, eliminating bothersome refueling for weeks at a time. This is the enormous tank that holds the oil in reserve. None need be stranded in the night again, as is inevitable with the standard illumination. Have you ever known the oil to run out during the daytime?~ #2541 */
  IF ~~ THEN DO ~MoveToPoint([760.906])
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(5)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~Here be an amazement if ever there was one. Without question you have all seen a mariner's standard spyglass? That crude device that roughs out a coastline? It is but a shadow of this work of art from faraway Lantan. We are informed that it was labeled a "tell-a-scope" or some such when initially assembled, but we have taken to calling it a Farseer. A much more elegant name for its function and craftsmanship. The faces of the stars themselves are visible with its aid, and one is liable to run out of earth before running out of sight. Our local craftsmen have not been able to recapture Gond's original inspiration, and the inner workings remain a detailed mystery. Thus, while copies of its beauty are available, they function no better than the spyglass I mentioned.~ #2542 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(6)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~I apologize, but I have to take my leave. I have duties in the temple, and must leave you to marvel on your own. Are there questions that I might answer before I go?~ #2543 */
  IF ~~ THEN REPLY @8 /* ~You spoke of the two halls being guarded as one. What did you mean by that?~ #2544 */ GOTO 7
  IF ~~ THEN REPLY @9 /* ~At what time are the doors closed to the public, and when might they open?~ #2545 */ GOTO 8
  IF ~~ THEN REPLY @10 /* ~Would it be possible to buy one of these items? What is their worth in gold?~ #2546 */ GOTO 9
  IF ~~ THEN REPLY @11 /* ~Please continue the tour. Such items are incomprehensible without sage interpretation.~ #2547 */ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 9.0 8.0 6.0
  SAY @12 /* ~Oh, it's a simple matter. With the halls conjoined, guards within one can pass to the other in a matter of moments. This is actually little needed, what with the extensive use of wards to keep out miscreants. Any number of guarding spells can be triggered by simply passing near one. Anything else?~ #2550 */
  IF ~  Global("WardsClue","GLOBAL",1)
~ THEN REPLY @13 /* ~Certainly the guards are of some import, what with the wards not currently functioning in the High House.~ #2559 */ GOTO 11
  IF ~~ THEN REPLY @9 /* ~At what time are the doors closed to the public, and when might they open?~ #2561 */ GOTO 8
  IF ~~ THEN REPLY @10 /* ~Would it be possible to buy one of these items? What is their worth in gold?~ #2562 */ GOTO 9
  IF ~~ THEN REPLY @11 /* ~Please continue the tour. Such items are incomprehensible without sage interpretation.~ #2563 */ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 9.1 7.1 6.1
  SAY @14 /* ~Dawn to dusk we are open to viewing. We've a myriad of lighting, but our treasures are best viewed during daylight, when the eyes are open and the mind is fresh. Another inquiry?~ #2551 */
  IF ~~ THEN REPLY @8 /* ~You spoke of the two halls being guarded as one. What did you mean by that?~ #2565 */ GOTO 7
  IF ~~ THEN REPLY @10 /* ~Would it be possible to buy one of these items? What is their worth in gold?~ #2566 */ GOTO 9
  IF ~~ THEN REPLY @11 /* ~Please continue the tour. Such items are incomprehensible without sage interpretation.~ #2567 */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 7.2 6.2
  SAY @15 /* ~I have hinted that flawed copies of items can be bought, but they must be ordered much in advance. Currently the wait is no less than a year. These originals on display are unavailable at any price, as the exact details of their construction are often lost to time. Apologies. Have you another query?~ #2552 */
  IF ~~ THEN REPLY @8 /* ~You spoke of the two halls being guarded as one. What did you mean by that?~ #2569 */ GOTO 7
  IF ~~ THEN REPLY @9 /* ~At what time are the doors closed to the public, and when might they open?~ #2548 */ GOTO 8
  IF ~~ THEN REPLY @11 /* ~Please continue the tour. Such items are incomprehensible without sage interpretation.~ #2549 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 8.2 7.3 6.3
  SAY @16 /* ~Forgive me, but I cannot dally about any longer. Duty calls, but enjoy your visit nonetheless. Please respect the needs of our other brethren as well, and leave with the falling of darkness. Many have nightly devotions that require their time, and they appreciate not having to hunt out stragglers.~ #2553 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY @17 /* ~By the Holy Maker of All Things, that knowledge was not to have passed beyond these walls! No offense to you, my good patron, but if you were able to hear of this then surely others have as well! I must see that the guard is doubled! Nay, tripled!~ #2554 */
  IF ~~ THEN DO ~CreateCreature("FLAM6",[171.1167],S)
CreateCreature("FLAM6",[225.1169],S)
CreateCreature("FLAM6",[405.1330],S)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @18 /* ~Sorry, but I have a job to do. I just don't have the time to chat right now.~ #6255 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 13 // from:
  SAY @19 /* ~My bestest friends. You can look at whatever you wish, just make sure not to break anything. Can I tell you a little secret? The spell wards which usually protect the museum aren't working right now. It's caused quite a bit of concern among the high-ups of our church!~ #6256 */
  IF ~~ THEN DO ~SetGlobal("WardsClue","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @20 /* ~Get out or be thrown out!~ #9302 */
  IF ~~ THEN EXIT
END
