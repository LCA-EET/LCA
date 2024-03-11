// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZHALIM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZHALIM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA435~

IF ~~ THEN BEGIN 0 // from: 5.1 4.0
  SAY @1 /* ~Those before us were fools, as you are. Those before us were weak, as you are. Those before us were not Zhalimar, or Gardush, or Naaman, or Diyab, or Aasim, or Alai. Those before us are dead, as you will be. So it has been decreed; so it shall be done. So orders Sarevok!~ #17938 */
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 5.2 4.1
  SAY @2 /* ~You have breached an inner circle, fool. There are no hired lackeys for you to bribe here, no mercenaries that slather at the sound of coins. We are servants of Sarevok and Sarevok alone, selected by hand to protect his destiny. You... are an insect. You... will be crushed! His will... be done!~ #17939 */
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 5.0 4.2
  SAY @3 /* ~This is an exit of sorts, and you will indeed be leaving. I would hazard a guess that the situation shall be a bit more permanent than you would have liked. Long ago you crossed the line that would have allowed for your survival. So it has been ordained; so it shall come to pass. So commands Sarevok!~ #17940 */
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Fear my wrath, for it is great indeed! Who dares intrude upon our negotiations?~ #20335 */
  IF ~~ THEN REPLY @5 /* ~My name is Emissary Tar. I am here to negotiate an iron treaty with Thaldorn on behalf of the Grand Dukes.~ #20336 */ DO ~SetGlobal("Throne","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY @6 /* ~My name is <CHARNAME>. I was wondering if I could ask you a few questions.~ #20337 */ DO ~SetGlobal("Throne","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7 /* ~How many Emissary Tars do we have now? Three? Fool, Ms. Tar stands right before you and she was just leaving, weren't you, my dear? Honestly, this has gone on long enough.~ #20338 */
  IF ~~ THEN REPLY @8 /* ~And who are you to say so? I've crushed all those before you!~ #20339 */ GOTO 0
  IF ~~ THEN REPLY @9 /* ~Certainly a little coin would ease your conviction a bit? A little gold to make you turn the other way?~ #20340 */ GOTO 1
  IF ~~ THEN REPLY @10 /* ~I am quite sorry to have bothered you, really! Is this the exit? I'll just be going now!~ #20341 */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11 /* ~<CHARNAME>, you say? Ah yes, Sarevok warned us you might try to meddle. That meddling will stop here, however.~ #20343 */
  IF ~~ THEN REPLY @10 /* ~I am quite sorry to have bothered you, really! Is this the exit? I'll just be going now!~ #20344 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~And who are you to say so? I've crushed all those before you!~ #20345 */ GOTO 0
  IF ~~ THEN REPLY @9 /* ~Certainly a little coin would ease your conviction a bit? A little gold to make you turn the other way?~ #20346 */ GOTO 1
END
