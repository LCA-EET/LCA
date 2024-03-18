// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES4.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES4.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA250~

IF ~  RandomNum(24,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Roll up and take a chance on the big wheel. One will get you twenty on a winning spin.~ #19319 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19320 */ DO ~TakePartyGold(1)
~ GOTO 1
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19322 */ DO ~TakePartyGold(2)
~ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY @4 /* ~Wager 5 gold.~ #19324 */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY @5 /* ~No, thanks.~ #19340 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~The Lady smiles upon you! I take your 1 gold and you get 20!~ #19326 */
  IF ~~ THEN DO ~GiveGoldForce(20)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~The Lady smiles upon you! I take your 2 gold and you get 40!~ #19327 */
  IF ~~ THEN DO ~GiveGoldForce(40)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~The Lady smiles upon you! I take your 5 gold and you get 100!~ #19328 */
  IF ~~ THEN DO ~GiveGoldForce(100)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 6.2 6.1 6.0
  SAY @9 /* ~So sorry! You'll have to try again.~ #19329 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.3 0.3
  SAY @10 /* ~Move along then.~ #19341 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @1 /* ~Roll up and take a chance on the big wheel. One will get you twenty on a winning spin.~ #19442 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19321 */ DO ~TakePartyGold(1)
~ GOTO 4
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19323 */ DO ~TakePartyGold(2)
~ GOTO 4
  IF ~  PartyGoldGT(4)
~ THEN REPLY @4 /* ~Wager 5 gold.~ #19325 */ DO ~TakePartyGold(5)
~ GOTO 4
  IF ~~ THEN REPLY @5 /* ~No, thanks.~ #19443 */ GOTO 5
END
