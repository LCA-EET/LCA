// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART9.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART9.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA350~

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Good eve. The Helm and Cloak stands ready to serve thee in a swift and relaxing manner. I trust you are aware that our provender is a touch more pricey than some of the "lesser respected" inns about town? This is true, though I have always maintained that you get what you pay for. Is there anything I can do for you?~ #8380 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15076 */ DO ~StartStore("xaa151",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15077 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Hmm? Hello there. Welcome to the Helm and Cloak. Whilst here you may expect superior service and excellent quality. Er, you can PAY can't you? As long as this is so we shall be on excellent terms. Please try not to make trouble while here. We are well protected and all a ruckus will serve to do is disturb the other guests. Is there anything I can do for you?~ #8381 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15078 */ DO ~StartStore("xaa151",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15079 */ EXIT
END

IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~Oh, no, no, no. I rather think someone of your standards will not be comfortable in the Helm and Cloak at all. We pride ourselves on our somewhat expensive but relaxed fare, whereas you seem to be the sort who should enjoy the atmosphere of, say, the Blushing Mermaid. I am sorry to say it, but I did not mean that as a compliment. Best that you go now, for surely it will only mean trouble if you stay. Is there anything I can do for you?~ #8382 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15080 */ DO ~StartStore("xaa151",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15081 */ EXIT
END
