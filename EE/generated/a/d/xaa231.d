// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOBAR.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOBAR.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA231~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome to the Low Lantern, my friends. I trust you will enjoy your stay, and sample much of our lively fare.~ #8213 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~I would not be caught dead in such a place of debauchery as this!~ #8222 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~I would not be caught dead in such a place of debauchery as this!~ #8223 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~You had better believe it! Woe to the fool who gets in the way of my fun tonight!~ #8224 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~An excellent suggestion. This looks to be quite the popular place.~ #8225 */ GOTO 4
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @5 /* ~I'll be quite sure to sample as much as I please before I leave tonight. I imagine your clientele are quite well off?~ #8226 */ GOTO 5
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @5 /* ~I'll be quite sure to sample as much as I please before I leave tonight. I imagine your clientele are quite well off?~ #8227 */ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Oh, come now. Surely you can see the therapeutic benefits that come from the occasional "debauching." Suit yourself, but if you don't wish to participate, at least make sure not to disturb our other patrons. Feel free to help yourself to milk at the bar.~ #8214 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~If you have come here simply to insult my patrons and I, I shall have to ask you to leave. If you are rich, however, we can provide a steady stream of "lowlifes" for you to belittle. It's rather a commonly sought service for some of our more "well to do" clientele, and apparently good for bolstering a poor self-image. Not that your actions suggest you have a poor self-image. No, that's not what I was implying at all. Good day.~ #8215 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~Ah, yes, we do like to see our patrons enjoying themselves to the fullest. However, I should thank you very much to keep careful control of yourselves this eve. Anyone disrupting the recreation of our patrons is summarily removed by our private security. Just a friendly warning. Good eve.~ #8216 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~Oh, indeed! We have patrons of every possible profession. I think it unlikely you'll find a more diverse collection of people peacefully collected in the same room. Not that we don't have our share of rabble-rousers, but we are well equipped to quickly quell any disturbance. Have a nice stay.~ #8217 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @10 /* ~Oh, there is no distinction between classes here. The Low Lantern is quite the equalizer, and our patrons span much of the social spectrum. Of course, we might tend to "favor" the heavy tippers. Unintentionally of course. Enjoy your visit.~ #8218 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @11 /* ~Quite well off? If that was a poorly veiled attempt to inquire as to the wealth of our patrons, let me save you some time. We have a number of visitors who tend to tip rather heavily, and to protect those customers, and everyone else, we employ a large number of guards. They stand ready to assist if a patron gets a touch rowdy, as well as to deal with any scoundrels that would attempt to "sample" the possessions of their fellow revelers. You are welcome to stay, but behave yourself. You'll be glad you did.~ #8219 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 7 // from:
  SAY @12 /* ~I trust everything is satisfactory? Please don't hesitate to leave if it is not.~ #8220 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  True()
~ THEN BEGIN 8 // from:
  SAY @13 /* ~Hello again. A pleasure having you here, to be sure.~ #8221 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9 // from:
  SAY @14 /* ~I can do little more for you than I already have. Every patron gets the utmost in luxury regardless of whether I like them or not.~ #9189 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @15 /* ~You've made no friends here! Move along!~ #9190 */
  IF ~~ THEN EXIT
END
