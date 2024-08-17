// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CAILAN.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CAILAN.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA243~

IF ~  Global("Baldurian","GLOBAL",1)
!Global("VailLeft","AR0719",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Well, that was unpleasant. I thank you for my freedom. I take it that I was petrified by the basilisk? That mage was one wily customer. I hope the creature turned on him before he could dispel it. I am Cailan, and you are...?~ #10528 */
  IF ~~ THEN REPLY @2 /* ~I am your savior and I demand the Helm of Balduran! That is my price for rescuing you!~ #10529 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I am <CHARNAME>, and I have a request for you. I seek the Helm of Balduran, and was told it was in your possession.~ #10530 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Indeed? Well, I cannot help you; I do not have that item. Perhaps one of my fellows carries such a thing, but I know not. If you rescue them as you did me I am sure you will find it, though I would soften your tone. Some of my companions take offense easily.~ #10531 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Hmm, I do not have such a thing in my possession, though one of my companions may. I cannot say for certain though, as I have not known them for long. Not counting the time spent frozen with them, of course.~ #10532 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @6 /* ~Well, that was unpleasant. I thank you for my freedom. I take it that I was petrified by the basilisk? That mage was one wiley customer. I hope the creature turned on him before he could dispel it. I must be on my way now, as I have many things to do.~ #10594 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
