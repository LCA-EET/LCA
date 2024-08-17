// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HALBAZ.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HALBAZ.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA168~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from: 1.3
  SAY @1 /* ~And who might you be then? Hmmph? Come to check out the wares of ol' Halbazzer? Well, be quick about it! And mind you don't get fidgety when we talk payment. You knew when you came in the door that my wares were magical; premium items demand a premium price.~ #17387 */
  IF ~~ THEN REPLY @2 /* ~Let's see what you have, then.~ #17516 */ DO ~StartStore("xaa101",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Perhaps another time.~ #17388 */ EXIT
END

IF WEIGHT #0 ~  PartyHasItem("MISC51")
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Well, well! If I'm not mistaken, that be a lock of nymph's hair. A luckier being there cannot be, than they who have gained the favor of such a creature. Would ye be willing to part with a small portion of that sample? I could pay... say... 500 gold for it.~ #10491 */
  IF ~~ THEN REPLY @5 /* ~A generous offer, and I accept it.~ #10492 */ DO ~GiveGoldForce(500)
TakePartyItem("MISC51")
~ EXIT
  IF ~~ THEN REPLY @6 /* ~Oh, I couldn't sell this. It was a gift. Not unless you offered me outrageous amounts of money.~ #10494 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~You'll not touch a hair of it! It's mine and mine alone!~ #10495 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~I'm not interested in selling it just now, though it would be to you if I do.~ #192 */ GOTO 0
END

IF ~~ THEN BEGIN 2 // from: 9.2 8.1 3.1 1.2
  SAY @9 /* ~There is simply no way someone with your manner could have come by that hair honorably! Get out of my sight. I'll not serve ye here!~ #10496 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10 /* ~Suit yourself, though I can't say as I blame ya. Very useful stuff, that. Say, how about I have a seamstress weave it within a cloak for ye? It is said that the wearer of such an item is magically more beautiful. It would not cost much, perhaps 100 gold. Delicate stuff, it is.~ #10497 */
  IF ~~ THEN REPLY @11 /* ~I'm content with it the way it is, thank you.~ #10498 */ GOTO 7
  IF ~~ THEN REPLY @12 /* ~I'll not have strangers put a finger on it! It is mine to keep.~ #10499 */ GOTO 2
  IF ~  PartyGoldGT(99)
~ THEN REPLY @13 /* ~An excellent suggestion! You have a deal!~ #10500 */ DO ~TakePartyGold(100)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 9.0 8.2 3.2
  SAY @14 /* ~You won't regret this! I already have one cloak made. I'll give it to ye, now that I can make several others. Here ye go.~ #10501 */
  IF ~~ THEN DO ~TakePartyItem("MISC51")
GiveItem("CLCK07",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @15 /* ~Welcome back, it's ready as I promised. Beautiful, is it not? You'll be the toast of the town in this.~ #10502 */
  IF ~~ THEN DO ~GiveItem("CLCK07",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @16 /* ~I'm afraid your garment is not ready yet. Return when we agreed and you shall have it.~ #10503 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.1 8.0 3.0
  SAY @17 /* ~As you will, but it does you little good in your pocket. The offer stands if you return here.~ #10504 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @18 /* ~Back again with that wondrous hair, I see. Have you reconsidered my offer?~ #10505 */
  IF ~~ THEN REPLY @11 /* ~I'm content with it the way it is, thank you.~ #10506 */ GOTO 7
  IF ~~ THEN REPLY @12 /* ~I'll not have strangers put a finger on it! It is mine to keep.~ #10507 */ GOTO 2
  IF ~~ THEN REPLY @13 /* ~An excellent suggestion! You have a deal!~ #10508 */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from:
  SAY @19 /* ~Wonderful! The things that can be done with nymph hair are amazing! In fact, since you are so generous with it, why don't I weave what you have left within a tunic? It's said such a garment enhances the beauty of the wearer. No charge for you, friend.~ #10509 */
  IF ~~ THEN REPLY @20 /* ~An offer I could not refuse!~ #10510 */ GOTO 4
  IF ~~ THEN REPLY @21 /* ~I would just as soon keep it as it is. Thanks anyway.~ #10511 */ GOTO 7
  IF ~~ THEN REPLY @22 /* ~You'll be keeping your hands off what I have left!~ #10513 */ GOTO 2
END
