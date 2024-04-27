// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DEGROD.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DEGROD.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA359~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You have done well to bypass all of my guardians. I should be angry with you, but to be truthful, I have been on the lookout for skilled adventurers. So, I would ask you, do you wish to help me in a task, or would you rather die?~ #10327 */
  IF ~~ THEN REPLY @2 /* ~Don't threaten us, mage! We've dealt with far more powerful than you.~ #10382 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We want to die.~ #10383 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~What is it that you want us to do?~ #10384 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @5 /* ~So you want to die, do you? Well then, let me assist you in achieving your desire.~ #10385 */
  IF ~~ THEN DO ~CreateCreature("HELMHO",[371.427],S)
CreateCreature("DOOMGU",[418.460],S)
CreateCreature("DOOMGU",[326.489],S)
CreateCreature("STALKE",[351.605],S)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~First of all, my name is Degrodel. I can only assume that you're <CHARNAME>, the adventurer who has been stirring up so much trouble in the recent past. Now that introductions are done, let us get down to business. My task is very simple. Some years ago, an evil band of mercenaries were all petrified while trying to break into the home of Ramazith. For those of you with a limited vocabulary, petrified means "turned to stone." Anyhow, one of those adventurers had in his possession an item of power: the Helm of Balduran. Ramazith didn't know this at the time and so, after turning them all to stone, he simply sold their bodies to an art collector living in the heart of Baldur's Gate. What I would like you to do is find these statues, turn them back to flesh, and take the item.~ #10386 */
  IF ~~ THEN REPLY @7 /* ~How much are we going to be paid to do you this service?~ #10389 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~How do we turn them from stone back to flesh?~ #10391 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~How did you come by this information?~ #10392 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 4.1 2.2
  SAY @10 /* ~How I came by this information is unimportant. Suffice to say, no one else knows of this, and I would like to keep it that way.~ #10393 */
  IF ~~ THEN REPLY @7 /* ~How much are we going to be paid to do you this service?~ #10395 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~How do we turn them from stone back to flesh?~ #10396 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.0
  SAY @11 /* ~You will be paid 5,000 gold for this service. This is a kingly sum, so I won't barter with you about the amount.~ #10397 */
  IF ~~ THEN REPLY @8 /* ~How do we turn them from stone back to flesh?~ #10398 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~How did you come by this information?~ #10399 */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.1 2.1
  SAY @12 /* ~Very simple, really. I will give you these six scrolls of stone to flesh. Use them on the statues when you find them. The estate can be found just west of the fairgrounds in the center of town. Good luck, and don't entertain any thoughts about betraying me. It could be very hazardous to your health.~ #10400 */
  IF ~~ THEN DO ~SetGlobal("Baldurian","GLOBAL",1)
GiveItemCreate("scrlpet",LastTalkedToBy,6,0,0)
~ UNSOLVED_JOURNAL @13 /* ~The Helm of Balduran
A wizard called Degrodel wants me to find the Helm of Balduran, which I should be able to find on the petrified bodies of a group of adventurers currently held by an art dealer on an estate just west of the fairgrounds. Once I have the helm, I can find Degrodel in his estate in the northwest part of town.~ #26931 */ EXIT
END

IF ~  !PartyHasItem("HELM07")
~ THEN BEGIN 6 // from:
  SAY @14 /* ~You don't have the Helm of Balduran! Until you have the helm, don't bother me!~ #10416 */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("HELM07")
~ THEN BEGIN 7 // from:
  SAY @15 /* ~Thank you for returning with the Helm of Balduran. It was so good to do business together. Here is your payment, and I shall take the helm. Now I must be off, I'll leave you with some of my servants to escort you out. My servants aren't known for their gentle nature, so I would leave as soon as possible.~ #10417 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
TakePartyItem("HELM07")
CreateCreature("HELMHO",[371.427],S)
CreateCreature("DOOMGU",[418.460],S)
CreateCreature("DOOMGU",[326.489],S)
CreateCreature("STALKE",[351.605],S)
EraseJournalEntry(@13)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EscapeArea()
~ SOLVED_JOURNAL @16 /* ~The Helm of Balduran
Degrodel gave me a nice reward for the Helm of Balduran, but he didn't want me hanging around afterwards.~ #26934 */ EXIT
END
