// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMGG.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMGG.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA101~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~The entrance tax is 6 gold pieces for each party of travelers. Please announce your point of origin.~ #965 */
  IF ~~ THEN REPLY @2 /* ~Beregost.~ #967 */ DO ~TakePartyGold(6)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Amn.~ #968 */ DO ~TakePartyGold(6)
~ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Nashkel.~ #969 */ DO ~TakePartyGold(6)
~ GOTO 1
  IF ~~ THEN REPLY @5 /* ~The mystical land of frolicking naked nymphs, where your every desire is granted by bald blubbering bugbears. Hee! Hee!~ #970 */ DO ~TakePartyGold(6)
~ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Candlekeep.~ #19352 */ DO ~TakePartyGold(6)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.4 0.2 0.1 0.0
  SAY @7 /* ~You'll have to wait here, my commander wishes to have a word with you.~ #966 */
  IF ~~ THEN DO ~CreateCreature("SCAR",[1212.1150],S)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @8 /* ~I don't like your sarcasm. If you won't cooperate, then I'll just bring you to talk with my commander.~ #971 */
  IF ~~ THEN DO ~CreateCreature("SCAR",[1212.1150],S)
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @9 /* ~I am a proud member of the Flaming Fist. Our headquarters is in Baldur's Gate, though we also operate in Beregost and the Friendly Arm Inn. We are quite concerned about the sudden rarity of iron. Many think that the nation of Amn is gearing up for war against our great city. If this were the case, I don't know how well we would do, lacking a resource as important as iron.~ #6930 */
  IF ~~ THEN JOURNAL @10 /* ~I charmed a member of the Flaming Fist, and he told me that there were tensions between Baldur's Gate and the nation of Amn. He also said that the Flaming Fist is desperately in need of iron.~ #6934 */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11 /* ~You're not welcome here!~ #9006 */
  IF ~~ THEN EXIT
END
