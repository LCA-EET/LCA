// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES3.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES3.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA249~

IF ~  RandomNum(38,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~The game is roulette in its simplest form. You pick your number and you take your chances. One will get you thirty-six on a winning spin.~ #19305 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19306 */ DO ~TakePartyGold(1)
~ GOTO 1
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19308 */ DO ~TakePartyGold(2)
~ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY @4 /* ~Wager 5 gold.~ #19310 */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY @5 /* ~Wager 10 gold.~ #19312 */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY @6 /* ~No, thanks.~ #19339 */ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @7 /* ~We have a winner! I take the 1 gold you bet and give you 36 back!~ #19314 */
  IF ~~ THEN DO ~GiveGoldForce(36)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @8 /* ~We have a winner! I take the 2 gold you bet and give you 72 back!~ #19315 */
  IF ~~ THEN DO ~GiveGoldForce(72)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9 /* ~We have a winner! I take the 5 gold you bet and give you 180 back!~ #19316 */
  IF ~~ THEN DO ~GiveGoldForce(180)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @10 /* ~We have a winner! I take the 10 gold you bet and give you 360 back!~ #19317 */
  IF ~~ THEN DO ~GiveGoldForce(360)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 7.3 7.2 7.1 7.0
  SAY @11 /* ~Oooooh, I'm so very sorry. Next!~ #19318 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.4 0.4
  SAY @12 /* ~Then step aside. I need this space for people willing to play.~ #19338 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7 // from:
  SAY @1 /* ~The game is roulette in its simplest form. You pick your number and you take your chances. One will get you thirty-six on a winning spin.~ #19408 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19307 */ DO ~TakePartyGold(1)
~ GOTO 5
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19309 */ DO ~TakePartyGold(2)
~ GOTO 5
  IF ~  PartyGoldGT(4)
~ THEN REPLY @4 /* ~Wager 5 gold.~ #19311 */ DO ~TakePartyGold(5)
~ GOTO 5
  IF ~  PartyGoldGT(9)
~ THEN REPLY @5 /* ~Wager 10 gold.~ #19313 */ DO ~TakePartyGold(10)
~ GOTO 5
  IF ~~ THEN REPLY @6 /* ~No, thanks.~ #19440 */ GOTO 6
END
