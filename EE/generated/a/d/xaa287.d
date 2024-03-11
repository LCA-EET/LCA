// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG4.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG4.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA287~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~All right folks, if you wanna enjoy the pleasures of the Undercellar, you'll have to pay the 10 gold entrance fee. Then all the black lotus and women you want is yours for the night.~ #7570 */
  IF ~~ THEN REPLY @2 /* ~We just want to take a look around.~ #7575 */ GOTO 1
  IF ~  PartyGoldGT(9)
~ THEN REPLY @3 /* ~Okay, here's your money.~ #7576 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~The price is kind of steep. Perhaps you could lower it a bit?~ #7577 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~No thanks, we'll be leaving now.~ #7578 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Sorry, no money, no entry.~ #7571 */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @7 /* ~Okay, here's your damn money.~ #7579 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~Fine. We'll be leaving now.~ #7580 */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9 /* ~I'm not gonna lower anything. Now hand over the money.~ #7572 */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @10 /* ~Here you go.~ #7581 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~Can't afford it. I guess we'll be on our way.~ #7582 */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from:
  SAY @12 /* ~Get outta my face.~ #7574 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 1.0 0.1
  SAY @13 /* ~Thanks chum.~ #7585 */
  IF ~~ THEN DO ~TakePartyGold(10)
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @14 /* ~I'm a mercenary. My job isn't to be smart, it's to guard this place.~ #8854 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @15 /* ~You're not welcome here! Get out or be thrown out!~ #9259 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 1.1 0.3
  SAY @16 /* ~Hey, pal, wait a moment! Okay, you can take a look around, and you don't have ta pay the entrance fee. Just don't tell anyone about it.~ #11248 */
  IF ~~ THEN EXIT
END
