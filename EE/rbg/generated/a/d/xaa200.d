// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART7.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART7.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA200~

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hail and welcome. The bar and kitchen are at your disposal, but if you imbibe a bit too much, do mind the furniture. We replaced everything just last week after an unfortunate meeting between a patron's head and most of the fixtures. Is there anything I can do for you?~ #8320 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15326 */ DO ~StartStore("xaa120",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15067 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Hmm? Hello. Mind you don't get stains in the rooms, as we don't clean them too terribly often. Not that you would be likely to... I mean... what I meant to say was... Ah, to the planes with it! Just try not to make trouble while here. Is there anything I can do for you?~ #8321 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15068 */ DO ~StartStore("xaa120",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15069 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~I expect you have the gold to be bothering me? Fine, stay as you will. Rest assured however, that if I find a single piece of cutlery missing I'll have you quartered while you sleep. This ain't no ultimate place to be stealing forks and spoons you know. Is there anything I can do for you?~ #8322 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15070 */ DO ~StartStore("xaa120",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15071 */ EXIT
END
