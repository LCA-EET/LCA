// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIKOLA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIKOLA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA190~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings! I can tell by the way you look about you that you are new to the city. For a mere 15 pieces of gold, I can tell you of the glorious history that once coursed through the weighted veins of this metropolis.~ #18820 */
  IF ~~ THEN REPLY @2 /* ~I am in no mood to pay 15 gold pieces for a trip down boredom lane. Now away and be done with you.~ #18821 */ GOTO 1
  IF ~  PartyGoldGT(14)
~ THEN REPLY @3 /* ~Please do. Such a tale would be well worth the price of admission.~ #18822 */ DO ~TakePartyGold(15)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 5.0 4.1 3.1 2.1 0.0
  SAY @4 /* ~Rather provincial of you to state it in such a manner, may I suggest? Nevertheless, it shall be precisely as you wish it. Goodbye.~ #18823 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Ah, yes, the city as we know it today falls in the shape of a plump and crescent moon. Its many wharves and docks jut out along its western point where the River Chionthar flows into the starry Sea of Swords. A bridge from this western shore links the mainland with a rocky islet on which perches the old, massive Seatower of Balduran. It is there that the true tale begins. Do you wish me to continue?~ #18824 */
  IF ~~ THEN REPLY @6 /* ~Yes, please.~ #18825 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~No, thank you, I'm starting to get bored already.~ #18826 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* ~Balduran was a well-known and good-natured pirate who sailed the Sea of Swords in times gone by. He built the Seatower that bears his name to guide him to his home port and provide warning of invasion to his kin and clan that made their home along the northern riverbank. In time, a vibrant group of traders and fellow sea captains gathered there and built the city's inner wall to protect their wares and belongings from the ever-present danger of rival pirates or orcish raids... You look distracted. Do you still wish me to continue?~ #18827 */
  IF ~~ THEN REPLY @9 /* ~Certainly! I wouldn't have it any other way.~ #18828 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~*yawn* Oh my, was I sleeping? Perhaps it would be better if you leave me be.~ #18829 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11 /* ~Balduran was away from port during the time in which the decision to build the wall was made and, when he returned, he learned that many of his kin and clan now lay outside the new wall and vulnerable to any attack made upon the settlement! As the orcs advanced upon the city in the early summer, it erupted into a state of civil chaos. It was at this point that Balduran's sails were spotted upon the horizon, returning home to port... Ahem, are you still with me?~ #18830 */
  IF ~~ THEN REPLY @12 /* ~Yes, I am, right at your side, wide awake, sir!~ #18831 */ GOTO 5
  IF ~~ THEN REPLY @13 /* ~What a boring city. I do wish you'd stop your blathering now.~ #18832 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14 /* ~In a rage, Balduran slew the entire council of captains and merchants for such arrogance and selfishness. He spared only the four who had spoken out against the council's decision. Together, they ordered the immediate construction of the city's outer wall and the bridge gate from which Baldur's Gate gets its name. Facing a united city and a stout defense, the orcs were defeated and, for their valor, Balduran appointed the four captains as Dukes of the city... Well, that's Baldur's Gate in a nutshell. I'm quite impressed with your perseverance.~ #18833 */
  IF ~~ THEN REPLY @15 /* ~Phew! I thought it would never end!~ #18834 */ GOTO 1
  IF ~~ THEN REPLY @16 /* ~Tell me more! I want to know everything about this city!~ #18835 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @17 /* ~Well, there's really not that much more to tell... Balduran eventually died—apparently lost at sea—and the four Dukes passed on their titles in a hereditary fashion for many years. Now, of course, Dukes are elected to office, although they keep the title until their death. They have grown softer and more tolerant over the years, however, and I think many people would like to see someone with a more extravagant, forceful approach ascend to the position. But that is the future, not the past, and who knows what it shall hold.~ #18836 */
  IF ~~ THEN REPLY @18 /* ~Thank you for the history lesson. It was well worth the 15 gold pieces.~ #18838 */ GOTO 7
  IF ~~ THEN REPLY @19 /* ~Moooorrre! Must tell me mooorrrrrrre! I want to know eeeeverythingggg! Mwah hah hah haaaa...~ #18840 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @20 /* ~You are quite welcome and thank you for bending your ear to an old man.~ #18841 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @21 /* ~Okay, you are getting really creepy... Get away from me! Shoo!~ #18842 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
