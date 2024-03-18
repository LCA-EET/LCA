// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMBG.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMBG.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA327~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 5 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What's your business here?~ #1519 */
  IF ~  !Dead("Scar")
!Global("OpenDialogue","GLOBAL",1)
~ THEN REPLY @2 /* ~We're here to see Scar.~ #1524 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We want a tour.~ #1525 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We want to be hired on with the Flaming Fist.~ #1526 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~I've been told to expect you. He's either just down the hall, or outside the entrance. He's been waiting sometime to talk to you, so you should speak with him soon.~ #1520 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~We give no tours here. Could you please leave?~ #1521 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~The Fist isn't hiring right now.~ #1522 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~You are to follow me, not wander off throughout the rest of the base.~ #1523 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Greetings. Is there something I can help...? Wait one moment, you're the ones wanted for murder!~ #6926 */
  IF ~~ THEN DO ~Enemy()
~ JOURNAL @10 /* ~The guards at the Flaming Fist compound think I'm a murderer.~ #27089 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @11 /* ~I am a proud member of the Flaming Fist. Our headquarters is in Baldur's Gate, though we also operate in Beregost and the Friendly Arm Inn. We are quite concerned about the sudden rarity of iron. Many think that the nation of Amn is gearing up for war against our great city. If this were the case, I don't know how well we would do, lacking a resource as important as iron.~ #6928 */
  IF ~~ THEN JOURNAL @12 /* ~Rising Tensions with Amn
I charmed a member of the Flaming Fist, and he told me that there were tensions between Baldur's Gate and the nation of Amn. He also said that the Flaming Fist is desperately in need of iron.~ #27088 */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @13 /* ~You're not welcome here!~ #9005 */
  IF ~~ THEN EXIT
END
