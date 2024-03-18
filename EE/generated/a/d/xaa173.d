// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ORDULI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ORDULI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA173~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
ReputationLT(Player1,8)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ah, lowly adventurers. The roads of this fair city are lined with fools, are they not?~ #15036 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(0)
ReputationGT(Player1,7)
ReputationLT(Player1,15)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Ah, weary adventurers. The roads of this fair city are lined with fools, are they not? And two of the greatest are Arkion and Nemphre, necromancers fighting over trinkets and baubles of little use or value. I assure you, they are more trouble than they are worth. You are better off steering clear of them.~ #15037 */
  IF ~~ THEN JOURNAL @3 /* ~Arkion and Nemphre
The priest Ordulinian has passed on a strange warning regarding two necromancers engaged in a longstanding but petty feud. Their names are Arkion and Nemphre, and I have been advised to steer clear of their meddling while in Baldur's Gate.~ #27320 */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedTo(0)
ReputationGT(Player1,14)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Ah, fair adventurers. The roads of this fair city are lined with fools, are they not? Two of the greatest are Arkion and Nemphre, necromancers grown bitter over lost love. Alas, but they use petty trinkets as their excuse for enmity. Nemphre covets Arkion's bloodstone amulet and Arkion dreams of her onyx ring. Steal those trinkets and bring them to me and perhaps those two fools can at last find peace.~ #15038 */
  IF ~~ THEN DO ~SetGlobal("HelpOrdulinian","GLOBAL",1)
~ UNSOLVED_JOURNAL @5 /* ~Arkion and Nemphre
Ordulinian has told me the tale of two of Baldur's Gate's greatest fools, necromancers, and ex-lovers, Nemphre and Arkion. He appears to have grown tired of their endless feuding, and has asked me to bring Arkion's bloodstone amulet and Nemphre's onyx ring to him so that their dispute might be settled once and for all. I can find Ordulinian at the Sorcerous Sundries.~ #27321 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  Global("HelpOrdulinian","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY @6 /* ~So, how fare our dear Nemphre and Arkion?~ #15039 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("HelpOrdulinian","GLOBAL",1)
PartyHasItem("OHAMUL13")
PartyHasItem("OHRING12")
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Ah, the bloodstone amulet of Arkion and Nemphre's onyx ring. I hope no blood was shed to get these for that may yet rest heavy on your conscience. Fools are to be suffered in this world, not slaughtered. Be what may, at least they may find some peace. As for these trinkets, you might as well sell them somewhere as they are of little use to anyone. For your troubles I will give you this cloak. It may be of some use to you in the future.~ #15040 */
  IF ~~ THEN DO ~EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@5)
TakePartyItem("OHAMUL13")
TakePartyItem("OHRING12")
GiveItemCreate("AMUL13",LastTalkedToBy,0,0,0)
GiveItemCreate("RING12",LastTalkedToBy,0,0,0)
GiveItemCreate("CLCK06",LastTalkedToBy,0,0,0)
SetGlobal("HelpOrdulinian","GLOBAL",2)
AddexperienceParty(3500)
~ SOLVED_JOURNAL @8 /* ~Arkion and Nemphre
For Nemphre's onyx ring and Arkion's bloodstone amulet, Ordulinian of Sorcerous Sundries traded me a nice magical cloak.~ #27343 */ EXIT
END

IF WEIGHT #5 ~  False()
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Fools are to be suffered, not slaughtered. I have not taken your life and I suggest you learn from my example.~ #15041 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  True()
~ THEN BEGIN 6 // from:
  SAY @12 /* ~Peace, my friends. Suffer it gladly.~ #15042 */
  IF ~~ THEN EXIT
END
