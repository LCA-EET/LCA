// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\FOOLS.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\FOOLS.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA5662~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Aye, share a glass with Gorpel Hind and his Band of Merry Fools.~ #19560 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("GORPEL")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~We must go. For all its light, your friendship has brought darkness upon us. Gorpel Hind, our leader and soulmate, has fallen in this petty battle.~ #19612 */
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
~ EXIT
END

IF WEIGHT #1 ~  Dead("GRETEK")
Dead("PARGUS")
Dead("WILF")
Dead("NADER")
Dead("ARLIN")
Dead("CATURAK")
~ THEN BEGIN 2 // from:
  SAY @3 /* ~A brave and hearty fight and it was good to share it with you. We must go, however, and tend to our wounds elsewhere. I do not think the bartender will tolerate our type of merriment for long. Well met, brave <CHARNAME>, and do not walk softly into that dark night.~ #19613 */
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
ActionOverride("GORPEL",EscapeArea())
~ EXIT
END
