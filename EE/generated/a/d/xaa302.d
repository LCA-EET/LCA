// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\EURIC.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\EURIC.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA302~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 3 even though they appear after this state */
~  Global("HelpEuric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What? I didn't do anything... just leave me alone!~ #15242 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("GivenEuricQuest","GLOBAL",1)
PartyHasItem("AMUL14")
Global("HelpEuric","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hey, what do you want? I didn't do nothin'. Hey, what's that amulet you have there?~ #15243 */
  IF ~~ THEN DO ~SetGlobal("HelpEuric","GLOBAL",1)
TakePartyItemNum("AMUL14",1)
AddexperienceParty(1100)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~Mom set you up to this, didn't she? All right, all right, it looks dumb, but I'll wear it. Tell my mom, Nadine, that I miss her, but I'm not comin' back. Tell her that I'll be safe. Bye-bye now.~ #15244 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~Nadine and Euric
Euric accepted Nadine's amulet but didn't seem too happy about it. He asked me to return to her with a message that he misses her.~ #27051 */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 3 // from:
  SAY @5 /* ~I ain't afraid of you!~ #15245 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  True()
~ THEN BEGIN 4 // from:
  SAY @6 /* ~Say hi to my mom for me, could you? I'm still doing okay, but you can tell her I'll probably be coming home soon.~ #15246 */
  IF ~~ THEN EXIT
END
