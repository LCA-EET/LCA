// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\REDEDG.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\REDEDG.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA282~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 8 even though they appear after this state */
~  AreaCheck("AR0809")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I daresay, the guard is downright rude these days! I say wot, it is good to see a familiar face, eh, chum? Lost many a friend in the fortnight afore this, I have. I fear Narlen be incarcerated, or worse.~ #3068 */
  IF ~~ THEN REPLY @2 /* ~Why have you come here?~ #3069 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Why did you not speak before now?~ #3070 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Never liked that Narlen. In fact, I never cared much for you either!~ #3080 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 7.0 3.0 2.0 0.0
  SAY @5 /* ~The Flaming Fist have taken it upon themselves to pursue the local thieving community somewhat more... aggressively than usual. I venture they are still a tad miffed by the death of their commander in chief, Scar. His replacement Angelo is a bit more... driven. If ye wish to keep to the streets ye had best be right bloody good at the clandestine. As for me, I'm, as the saying goes, exiting stage left.~ #3073 */
  IF ~~ THEN REPLY @3 /* ~Why did you not speak before now?~ #3084 */ JOURNAL @6 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~What of the Thieves' Guild? Could you not remain there?~ #3087 */ JOURNAL @6 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~It can't be as bad as everyone says. Thanks for the chat, but I'll have to check it out myself.~ #3092 */ JOURNAL @6 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Never liked that Narlen. In fact, I never cared much for you either!~ #3093 */ JOURNAL @6 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 7.1 3.1 1.0 0.1
  SAY @9 /* ~Alas, it is a simple matter. My partner Narlen had such a better grasp on the local thieving vocabulary, so it was more suiting he would speak for both of us. It would seem I just project the wrong sort of airs, as it were eh wot? Sink me if it's so.~ #3074 */
  IF ~~ THEN REPLY @2 /* ~Why have you come here?~ #3082 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~What of the Thieves' Guild? Could you not remain there?~ #3088 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~It can't be as bad as everyone says. Thanks for the chat, but I'll have to check it out myself.~ #3091 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Never liked that Narlen. In fact, I never cared much for you either!~ #3094 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 7.2 2.1 1.1
  SAY @10 /* ~The guild is all but lost to the Flaming Fist. There was a mutual tolerance before, but lately they seem determined to wipe the slate clean, as it were. Not just the thievery neither. They seem to wish a lockdown on every person displaying a measure of talent with magic or a blade. The common folk have never known such peace, but it is a horrible constraint on all else. The myriad of adventurers usually about have taken to the countryside, or places like this.~ #3075 */
  IF ~~ THEN REPLY @2 /* ~Why have you come here?~ #3083 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Why did you not speak before now?~ #3086 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~It can't be as bad as everyone says. Thanks for the chat, but I'll have to check it out myself.~ #3090 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Never liked that Narlen. In fact, I never cared much for you either!~ #3095 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 7.3 3.2 2.2 1.2
  SAY @11 /* ~Cheerio and all that then. I'm off to safer climes I think, eh wot?~ #3076 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 7.4 3.3 2.3 1.3 0.2
  SAY @12 /* ~I say, wot? There's no call for that sort of timbre! Lest I take offense ye had best recant that cant.~ #3077 */
  IF ~~ THEN REPLY @13 /* ~Ah, your mother wore crampons.~ #3102 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~I beg your pardon. The troubles of the day have addled my nerves.~ #3103 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15 /* ~Hmpf! And after I went to all the trouble of being polite. Right then. When next we meet, I'll put a blade in yer gulliver. Just you wait, eh wot?~ #3078 */
  IF ~~ THEN DO ~SetGlobal("RededgeMove","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16 /* ~The slight is forgotten. This is not a time for petty bickering.~ #3096 */
  IF ~~ THEN REPLY @2 /* ~Why have you come here?~ #3097 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Why did you not speak before now?~ #3098 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~What of the Thieves' Guild? Could you not remain there?~ #3099 */ GOTO 3
  IF ~~ THEN REPLY @17 /* ~It can't be as bad as everyone says. Thanks for the chat but I'll have to check it out myself.~ #3100 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Never liked that Narlen. In fact, I never cared much for you either!~ #3101 */ GOTO 5
END

IF WEIGHT #0 ~  Global("Chapter","GLOBAL",7)
StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 8 // from:
  SAY @18 /* ~A lot has happened of late. Since you're my best of chums and all, I'll tell you everything I know. The Flaming Fist have taken it upon themselves to pursue the local thieving community somewhat more... aggressively than usual. I venture they are still a tad miffed by the death of their commander in chief, Scar. His replacement Angelo is a bit more... driven. If ye wish to keep to the streets, ye had best be right bloody good at the clandestine.~ #6378 */
  IF ~~ THEN JOURNAL @6 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @19 /* ~Eh wot? Sorry, but I rather little time for noshing words just now. I'm off to better climes.~ #6379 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @20 /* ~I rather think that you should avoid me. I've taken a rather strong dislike towards you, and I'm not called "Rededge" because of a gum disorder.~ #9093 */
  IF ~~ THEN EXIT
END
