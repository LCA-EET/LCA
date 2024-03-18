// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMAPGUA.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMAPGUA.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC183~

IF ~  Global("bd_crusmap_fence","bd4000",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Don't touch the map! It belongs to the Shining Lady. The notes upon it were written by her own hand.~ #51295 */
  IF ~~ THEN REPLY @2 /* ~My apologies. I didn't realize.~ #51296 */ DO ~SetGlobal("bd_crusmap_fence","bd4000",0)
~ GOTO 2
  IF ~  OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)
~ THEN REPLY @3 /* ~Ah. You put me in a delicate situation, my friend. I'd like to do as you say, but, well, I've come to steal this map. Not touching it will make that very tricky. You see my problem, I trust.~ #60277 */ DO ~SetGlobal("bd_crusmap_fence","bd4000",2)
~ GOTO 1
  IF ~~ THEN REPLY @4 /* ~I'm taking this map whether you like it or not.~ #51297 */ DO ~SetGlobal("bd_crusmap_fence","bd4000",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1
  SAY @5 /* ~Help! Thieves!~ #51298 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6 /* ~Glory to the crusade.~ #51299 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @7 /* ~Good day to you. ~ #51294 */
  IF ~~ THEN EXIT
END
