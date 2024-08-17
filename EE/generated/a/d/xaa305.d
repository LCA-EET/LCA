// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAXIR.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAXIR.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA305~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("HelpGaxir","GLOBAL",0)
CheckStatLT(LastTalkedToBy,4,LEVEL)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You... will meet your doom today, child...~ #15520 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("HelpGaxir","GLOBAL",0)
CheckStatLT(LastTalkedToBy,6,LEVEL)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Your future... is hemmed in darkness. Your lives... are in the balance. Act wisely, act judiciously... and bring me the sphene gem, should you find it...~ #15521 */
  IF ~~ THEN DO ~SetGlobal("HelpGaxir","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~G'axir the Seer
His sentences overwrought with emphatic hesitations, G'axir the Seer has informed me that my future is hemmed in darkness. His predictions are less than surprising... In any event, he has asked me to bring him a sphene gem. G'axir can be found at the Blade and Stars.~ #27121 */ EXIT
END

IF WEIGHT #2 ~  Global("HelpGaxir","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~You... are a light entering darkness. You... are a seeker of truths. You... are more than you realize. The Seer has spoken it because the Seer knows the fear you harbor, the fear you shall yet become. In the lair of the basilisk, you will find a sphene gem... You would do well to bring it to me.~ #15522 */
  IF ~~ THEN DO ~SetGlobal("HelpGaxir","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~G'axir the Seer
His sentences overwrought with emphatic hesitations, G'axir the Seer has informed me that my future is hemmed in darkness. His predictions are less than surprising... In any event, he has asked me to bring him a sphene gem. G'axir can be found at the Blade and Stars.~ #27121 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 4 5 even though they appear after this state */
~  Global("HelpGaxir","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Ah... it is sometimes better to abandon one's destiny for a time... It will find you again soon enough.~ #15523 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  PartyHasItem("MISC37")
Global("HelpGaxir","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~The sphene gem! Indeed, then... you are more than you appear. Someday, you must journey further through the muck and mire of this place for it will tell you as much or more than all of fabled Candlekeep... Like yourself, this city is more than it appears. There are cities below cities, dreams beneath dreams, the past laying buried beneath the crushing weight of the present... Go now, wanderer, for the time will come when you must walk through the darkness to find the light.~ #15524 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("HelpGaxir","GLOBAL",2)
AddexperienceParty(1000)
TakePartyItem("MISC37")
~ SOLVED_JOURNAL @7 /* ~G'axir the Seer
I gave G'axir the Seer the sphene gem he wanted, and all he said was that my future lies beyond "the muck and mire" of Baldur's Gate.~ #27122 */ EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~You are still young and rash and too much of this world... It will be your death all too soon.~ #15525 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  True()
~ THEN BEGIN 6 // from:
  SAY @9 /* ~To define your future, you must know your past, wanderer...~ #15526 */
  IF ~~ THEN EXIT
END
