// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GAMES5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA269~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~A toss of the bones to make your fortune. Double your money on a winning roll.~ #19330 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19331 */ DO ~TakePartyGold(1)
~ GOTO 1
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19333 */ DO ~TakePartyGold(2)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~No, thanks.~ #19342 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~A winner! You've doubled your coins! I take your 1 gold and give you 2.~ #19335 */
  IF ~~ THEN DO ~GiveGoldForce(2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~A winner! You've doubled your coins! I take your 2 gold and give you 4.~ #19336 */
  IF ~~ THEN DO ~GiveGoldForce(4)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.1 5.0
  SAY @7 /* ~The Lady looks away and you lose! Sorry. Next!~ #19337 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.2 0.2
  SAY @8 /* ~Step aside. You're blocking the paying customers.~ #19343 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @1 /* ~A toss of the bones to make your fortune. Double your money on a winning roll.~ #19444 */
  IF ~  PartyGoldGT(0)
~ THEN REPLY @2 /* ~Wager 1 gold.~ #19445 */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~  PartyGoldGT(1)
~ THEN REPLY @3 /* ~Wager 2 gold.~ #19446 */ DO ~TakePartyGold(2)
~ GOTO 3
  IF ~~ THEN REPLY @4 /* ~No, thanks.~ #19447 */ GOTO 4
END
