// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FAIZAH.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FAIZAH.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA244~

IF ~  Global("Baldurian","GLOBAL",1)
!Global("VailLeft","AR0719",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~My word! Such a backache I have! I feel as though I have been standing for ages! I thank you for releasing me, and now I await your price. I am well acquainted with mercenaries and the like, and know that one does not rescue such as I for the good of one's health. What do you want of me?~ #10533 */
  IF ~~ THEN REPLY @2 /* ~My price shall be your death if I do not receive the Helm of Balduran!~ #10534 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~My price? I seek but one item: the Helm of Balduran. Once I have that I shall be on my way.~ #10535 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Such manners! Your bluster is wasted; I do not have the item you seek. Perhaps one of my petrified fellows might, but that will be their business to take up with you. Please feel free to question them, as you will. I have shared much with them, but I care not for what baubles they have stashed in their packs.~ #10536 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~If I had such a thing, I would not think your offer a worthwhile trade. My life for such a powerful item? You will not find many that peaceably accept such terms. Feel free to examine my fellows though. They might respond otherwise.~ #10537 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @6 /* ~My word! Such a backache I have! I feel as though I have been standing for ages! I thank you for releasing me, and now I await your price. I am well acquainted with mercenaries and the like, and know that one does not rescue such as I for the good of one's health. Though you wish much of me, there is nothing I can give. I will be off now, before you try to force something from me.~ #10595 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
