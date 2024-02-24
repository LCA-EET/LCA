// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\AMNIS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\AMNIS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA243~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~The commander was friend to many before he found that sword. He's not the man he was, by Helm.~ #342 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~The Tale of Captain Brage
Brage, the captain of the guard in Nashkel, apparently changed greatly after acquiring his new sword.~ #26830 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,2)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~The reward for the commander's head is a king's ransom, but I'll not be lifting MY sword against a brother soldier.~ #343 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~The Tale of Captain Brage
There is a large reward for the head of Brage! His former comrades seem unwilling to try to collect it, however.~ #26831 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,3)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~An entire unit went west after Brage to try to talk some sense to him. It's been a week, and none have returned.~ #344 */
  IF ~~ THEN UNSOLVED_JOURNAL @6 /* ~The Tale of Captain Brage
A large force of men from Nashkel went to reclaim Brage a week ago. None have returned.~ #26832 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,4)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~I am sorry for my mood. All the guard are still grieving the loss of Commander Brage.~ #345 */
  IF ~~ THEN UNSOLVED_JOURNAL @8 /* ~The Tale of Captain Brage
The change in Captain Brage astonishes everyone. The people of Nashkel liked and respected him before his rampage.~ #26833 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,5)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~I'll not believe a man of Brage's rank could kill his own family. 'Twas evil magics of some sort.~ #346 */
  IF ~~ THEN UNSOLVED_JOURNAL @10 /* ~The Tale of Captain Brage
Some believe Brage to be under an evil enchantment. It's certainly possible.~ #26834 */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,6)
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Why are you not at the fair, citizen? 'Tis but a moment's walk east of Nashkel.~ #347 */
  IF ~~ THEN JOURNAL @12 /* ~There is a festival east of Nashkel. Many people are gathering there.~ #5815 */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,7)
~ THEN BEGIN 6 // from:
  SAY @13 /* ~My sword is chipped and tarnished, but we'll not be given new until prices come down.~ #348 */
  IF ~~ THEN JOURNAL @14 /* ~Troubles in the Region: Iron Crisis

The soldiers are rapidly wearing out their old weapons and cannot re-equip themselves because of the scarcity and price of iron-forged tools and weapons.~ #26835 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,8)
~ THEN BEGIN 7 // from:
  SAY @15 /* ~We don't have the manpower to patrol the mines, what with the problem of bandits up north.~ #349 */
  IF ~~ THEN JOURNAL @16 /* ~Troubles in the Region: Bandit Problems

The problem in the Nashkel mines goes unchecked because the guards are needed to combat a rash of banditry in the north.~ #26836 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,9)
~ THEN BEGIN 8 // from:
  SAY @17 /* ~If ye be a bounty hunter, rewards can be collected with Oublek, just outside of the garrison.~ #350 */
  IF ~~ THEN UNSOLVED_JOURNAL @18 /* ~Oublek the Bounty Officer
Oublek offers bounties and rewards outside the Nashkel garrison.~ #26837 */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,10)
~ THEN BEGIN 9 // from:
  SAY @19 /* ~Travel lightly, wanderer. The woods harbor strange things.~ #351 */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 12 even though they appear after this state */
~  RandomNum(12,11)
~ THEN BEGIN 10 // from:
  SAY @20 /* ~Move along, citizen.~ #352 */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 12 even though they appear after this state */
~  GlobalLT("OublekBounty1","GLOBAL",1)
RandomNum(12,12)
~ THEN BEGIN 11 // from:
  SAY @21 /* ~Even if we find the captain, a court would surely have his head for his crimes. Such a waste!~ #353 */
  IF ~~ THEN UNSOLVED_JOURNAL @22 /* ~The Tale of Captain Brage
Even if Captain Brage were to be captured alive, he would most assuredly be put to death for his crimes.~ #26838 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 12 // from:
  SAY @23 /* ~I'm only a guard. All I know are the rumors flying about town.~ #5750 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @24 /* ~I'll box your ears if you step an inch closer!~ #8907 */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,1)
~ THEN BEGIN 14 // from:
  SAY @11 /* ~Why are you not at the fair, citizen? 'Tis but a moment's walk east of Nashkel.~ #347 */
  IF ~~ THEN JOURNAL @12 /* ~There is a festival east of Nashkel. Many people are gathering there.~ #5815 */ EXIT
END

IF WEIGHT #14 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,2)
~ THEN BEGIN 15 // from:
  SAY @13 /* ~My sword is chipped and tarnished, but we'll not be given new until prices come down.~ #348 */
  IF ~~ THEN JOURNAL @14 /* ~Troubles in the Region: Iron Crisis

The soldiers are rapidly wearing out their old weapons and cannot re-equip themselves because of the scarcity and price of iron-forged tools and weapons.~ #26835 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #15 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,3)
~ THEN BEGIN 16 // from:
  SAY @15 /* ~We don't have the manpower to patrol the mines, what with the problem of bandits up north.~ #349 */
  IF ~~ THEN JOURNAL @16 /* ~Troubles in the Region: Bandit Problems

The problem in the Nashkel mines goes unchecked because the guards are needed to combat a rash of banditry in the north.~ #26836 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #16 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,4)
~ THEN BEGIN 17 // from:
  SAY @17 /* ~If ye be a bounty hunter, rewards can be collected with Oublek, just outside of the garrison.~ #350 */
  IF ~~ THEN JOURNAL @18 /* ~Oublek the Bounty Officer
Oublek offers bounties and rewards outside the Nashkel garrison.~ #26837 */ EXIT
END

IF WEIGHT #17 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,5)
~ THEN BEGIN 18 // from:
  SAY @19 /* ~Travel lightly, wanderer. The woods harbor strange things.~ #351 */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 ~  GlobalGT("OublekBounty1","GLOBAL",0)
RandomNum(12,12)
~ THEN BEGIN 19 // from:
  SAY @20 /* ~Move along, citizen.~ #352 */
  IF ~~ THEN EXIT
END
