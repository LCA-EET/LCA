// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HANNAH.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HANNAH.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA169~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~There ought to be a law to keep lecherous old men like Ragefast off the streets!~ #18855 */
  IF ~~ THEN REPLY @2 /* ~Whoa, calm down. Lecherous whats like who?~ #18856 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Why do I get the sense that I really don't want to get into this?~ #18857 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Ragefast! Oh, he makes me seethe! He's a mage on a power trip and what does he do? He acquires his own personal nymph and enslaves her in his quarters! Men are callous brutes and, personally, I wish the world were rid of them.~ #18858 */
  IF ~~ THEN REPLY @5 /* ~If the world were rid of men, how would we survive as a species?~ #18859 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Why, that's a horror! I will seek him out and look into this matter immediately!~ #18860 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~Trust me, we'd make do... Oh, I'm in no mood to talk!~ #18861 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8 /* ~Oh, good. This world still has some honor left. His house is in the northwest part of town. I wish you luck and all the passion of my fury in your task.~ #18862 */
  IF ~  Global("HelpRamazith","GLOBAL",0)
!Dead("Abela")
GlobalLT("AbelaNotExists","GLOBAL",1)
~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @9 /* ~The Captive Nymph
A woman by the name of Lady Hannah informs me that Ragefast the Mage has enslaved a nymph within his quarters, in the northwest corner of the city. I will find him and listen to his defense, but rest assured, I will not give him the benefit of the doubt in a travesty such as this!~ #26808 */ EXIT
  IF ~  Global("AbelaNotExists","GLOBAL",1)
~ THEN DO ~EscapeArea()
~ EXIT
  IF ~  Dead("Abela")
~ THEN DO ~EscapeArea()
~ EXIT
  IF ~  GlobalGT("HelpRamazith","GLOBAL",0)
~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @10 /* ~Sure, avert your eyes and look the other way! It's because of people like you that this kind of thing still occurs! Argh! Must the entire world make me furious?!~ #18863 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
