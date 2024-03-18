// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LAERTA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LAERTA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA397~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi! I'm Laerta. That's my twin sister, Louise. Mom and Dad don't believe us, but there's a bogeyman that comes and looks in our window every night. We're real glad we're twins because, if there were only one of us, then there'd be no one to hold on to when we get scared.~ #15292 */
  IF ~~ THEN DO ~CreateCreature("GERVIS",[807.497],S)
SetNumTimesTalkedTo(1)
SetGlobal("TalkedToLaerta","GLOBAL",1)
~ UNSOLVED_JOURNAL @2 /* ~Laerta and Louise
The young twins, Laerta and Louise, claim that a "bogeyman" watches them through their window every night. Now I don't believe in bogeymen, but I've seen enough in my travels to believe that there's something out there, and I don't like the sound of it...~ #27225 */ EXIT
END

IF WEIGHT #1 ~  Global("HelpLaerta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~Do you believe us about the bogeyman?~ #15299 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  False()
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Get away from us, you bogeypeople!~ #15300 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  True()
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Thanks for getting rid of the bogeyman. Louise and I aren't scared nearly as much now.~ #15301 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("HelpLaerta","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~You scared away the bogeyman, didn't you? Here, Mom says to give this scroll. I think it's supposed to protect you from any other bogeypeople you find.~ #15308 */
  IF ~~ THEN DO ~EraseJournalEntry(@2)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
SetGlobal("HelpLaerta","GLOBAL",2)
AddexperienceParty(1000)
GiveItem("SCRL78",LastTalkedToBy)
~ SOLVED_JOURNAL @7 /* ~Laerta and Louise
The "bogeyman" won't bother those girls anymore.~ #27227 */ EXIT
END
