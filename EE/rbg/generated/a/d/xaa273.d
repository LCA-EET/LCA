// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GLANMA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GLANMA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA273~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Yes? Is there something I could be of assistance with?~ #2847 */
  IF ~  HasWeaponEquiped(LastTalkedToBy)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2864 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~Terribly sorry to have troubled you. I must have the wrong address.~ #2865 */ GOTO 16
  IF ~  !HasWeaponEquiped(LastTalkedToBy)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2869 */ GOTO 5
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~I'm a touch busy at the moment. Was there something you needed?~ #2848 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2866 */ GOTO 5
  IF ~~ THEN REPLY @3 /* ~Terribly sorry to have troubled you. I must have the wrong address.~ #2867 */ GOTO 16
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2868 */ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~This had better be important indeed. I've no time for handouts today, today of all days.~ #2849 */
  IF ~  !HasWeaponEquiped(LastTalkedToBy)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2870 */ GOTO 5
  IF ~  HasWeaponEquiped(LastTalkedToBy)
~ THEN REPLY @2 /* ~I beg your pardon, but I've come regarding the servile position.~ #2871 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~Terribly sorry to have troubled you. I must have the wrong address.~ #2872 */ GOTO 16
END

IF ~~ THEN BEGIN 3 // from: 2.1 1.2 0.0
  SAY @6 /* ~I am ever so sorry, but we are not accustomed to our servants being... so well armed. You'll just not do.~ #2850 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 14 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Nothing has changed since your last visit. Kindly stop distracting me from my work.~ #2851 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 1.0 0.2
  SAY @8 /* ~The position? Ah, yes, we are indeed looking for a servant to help clean. It is ever so large an estate, and she does tend to get away on you if you're not careful. Have you any experience in such an expansive building?~ #2852 */
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @9 /* ~Not as such, but I ask only that I be given the chance to prove myself.~ #2873 */ GOTO 12
  IF ~~ THEN REPLY @10 /* ~Well, me gramma's house be worth a copper or two, but it not as expansive as dis here place.~ #2874 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Indeed I do! Served for the past year at... uh, the palace. Yeah, the palace.~ #2875 */ GOTO 7
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @9 /* ~Not as such, but I ask only that I be given the chance to prove myself.~ #2876 */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12 /* ~I've not the time for this. Pardon my rudeness, but goodbye.~ #2853 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @13 /* ~Oh? Which palace would that be then?~ #2854 */
  IF ~~ THEN REPLY @14 /* ~I served at Oberan's palace, and a finer lord I'll never have the pleasure of working for again.~ #2877 */ GOTO 8
  IF ~~ THEN REPLY @15 /* ~The High Hall Ducal Palace it was! Oh, his lordship was a fine man to serve under.~ #2878 */ GOTO 9
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @16 /* ~It was Castle Waterdeep, and a finer patron than the Paladinstars I've not had the pleasure of meeting.~ #2879 */ GOTO 10
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @16 /* ~It was Castle Waterdeep, and a finer patron than the Paladinstars I've not had the pleasure of meeting.~ #2880 */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17 /* ~Well, THIS be Oberan's ESTATE, his one and only abode, and you have never been here before. To be sure, lying will not net you a job here. Off with you!~ #2855 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @18 /* ~Is it so? Well, Grand Duchess Liia is within these walls and has said openly that she never lets a servant go without good reason. If she'll not have you, we'll not either.~ #2856 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @19 /* ~Oh, it's sorrily a shame. Oberan has never liked Piergeiron Paladinstar and certainly won't suffer a servant not good enough for him to keep. I must turn you away.~ #2857 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @20 /* ~Oh, dear me! Never mention that to master Oberan. He has never liked Piergeiron Paladinstar and won't have a servant not good enough for him. I should not do this, but I need the extra help, so consider yourself hired. We've important guests at the moment, so you had best stay in the background. Clean the rooms in the east wing, and leave the west for me.~ #2858 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0
  SAY @21 /* ~Oh, no no no. I should need someone with more credentials. Important guests this week, and I can't risk their comfort. My apologies, but I cannot take you on.~ #2859 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY @22 /* ~Well, I would have wished for someone with a touch more credentials, but I am run right ragged without help. You're hired, but watch your step. We've important guests at the moment, so you had best stay in the background. Clean the rooms in the east wing, and leave the west for me.~ #2860 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 14 // from:
  SAY @23 /* ~You'll do just fine for what we have in mind. Make yourself at home in the estate. Keep your meanderings to a minimum however, as we have important guests.~ #9119 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @24 /* ~I've no clue why we hired such as you! Get out of my sight!~ #9120 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2 1.1 0.1
  SAY @25 /* ~I see. Good day then.~ #14380 */
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
CreateCreature("FLAMEN2",[633.480],NWW)
~ EXIT
END
