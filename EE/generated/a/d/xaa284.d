// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PHANDA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PHANDA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA284~

IF ~  NumTimesTalkedTo(0)
InParty([0.0.0.0.0.0.MASK_EVIL])
See([PC.0.0.0.0.0.MASK_EVIL])
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I sense evil in your party, friend. I cannot allow you or your evil companions to threaten the good people of Baldur's Gate.~ #15209 */
  IF ~~ THEN DO ~Enemy()
Attack([0.0.0.0.0.0.MASK_EVIL])
~ JOURNAL @2 /* ~Phandalyn
My party has been attacked by Phandalyn, an over-vigilant paladin loitering in one of Baldur's Gate's many seedy taverns. Mental note: when one depends on a party of evil, steer clear of muscle-bound paladins.~ #27359 */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~Your party is free of the taint of evil. Please pass unmolested.~ #15210 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Death to all who seek to harbor the emissaries of darkness!~ #15212 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~I trust your stay in the city has been uneventful.~ #15214 */
  IF ~~ THEN EXIT
END
