// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART8.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART8.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA184~

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome, travelers. I trust you will keep your weapons with your wits and not provoke trouble while here? It's the best thing for everyone. You'll find that the majority of our customers are well equipped to defend themselves and, if need be, the bar as well. Is there anything I can do for you?~ #8330 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15072 */ DO ~StartStore("xaa103",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15073 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Welcome ye are, at least till ye canna pay your tab. Beware you well the dark corners of the 'song, as the guard turn a blind eye to much that happens here. Is there anything I can do for you?~ #8331 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15074 */ DO ~StartStore("xaa103",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15075 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~Well, well, look what washed up outta the bilge. I'll warn you now, do what e'er you wish in here, but draw the attention of the city guard upon us and you'll be floatin' out to sea with nary a boat, let alone sail.~ #8332 */
  IF ~~ THEN EXIT
END
