// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FERGUS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FERGUS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA325~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Eh? Lazy day, ain't it?~ #15265 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I've gotta admit, I ain't never been happier. Got a letter from my lady and she's gonna be home reeeal soon... Just gotta find me a pretty little ring for her pretty little finger and all's gonna be just fine, just fine. But my lady, she transcends gold or silver or fancy stones. She'll have nothing less than an angel skin ring from me.~ #15269 */
  IF ~~ THEN DO ~SetGlobal("FERGUS1","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~A Ring for a Lady
If I find an angel skin ring, I could help Fergus, a Flaming Fist soldier, with his romantic problem.~ #27079 */ EXIT
END

IF WEIGHT #2 ~  False()
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Ah, that there's a fine ring but my lady, she transcends gold or silver or fancy stones. No, she'll have nothing less than angel skin from me.~ #15273 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("FERGUS1","GLOBAL",1)
PartyHasItem("RING16")
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Ah, a ring of angel skin. You must know my lady well to have chosen so appropriately... If you're ever needin' a little work around here, check with Scar, second-in-command of the Flamin' Fist. You can tell him I recommended you.~ #15274 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
AddJournalEntry(32877,QUEST_DONE)
TakePartyItem("RING16")
SetGlobal("FERGUS1","GLOBAL",2)
AddexperienceParty(800)
ReputationInc(1)
~ EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 4 // from:
  SAY @6 /* ~Fight you and ne'er see my lady? I am in love but that don't mean I'm foolish.~ #15282 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY @7 /* ~Ah, it is a fine wind that brings my lady, fresh and cool and beautiful.~ #15283 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("FERGUS1","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Ring in hand, I still wait for my lady. She will be here soon enough. Travel well, my friend.~ #15284 */
  IF ~~ THEN EXIT
END
