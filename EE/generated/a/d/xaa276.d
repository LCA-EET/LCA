// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\QUENAS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\QUENAS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA276~

IF ~  Global("Baldurian","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ 'Ere there, I don't need no armored prats scaring away my friends. Get along, children.~ #10581 */
  IF ~~ THEN REPLY @2 /* ~Watch your tongue lest I be forced to teach you some manners!~ #10582 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~My apologies, but I just need a moment of your time.~ #10585 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Vail sent me. I have come to collect his cloak. He has given it to me.~ #10586 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 8.1 3.0 0.0
  SAY @5 /* ~I don't have to put up with treatment like this! Go find yourself someone else to insult!~ #10584 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~If I had a gold coin for every time I heard that, I would be undercharging. Very well, what do you have to ask of Quenash? Something... interesting, I hope.~ #10587 */
  IF ~~ THEN REPLY @7 /* ~You have something I want. Give me the Cloak of Balduran!~ #10609 */ GOTO 5
  IF ~~ THEN REPLY @8 /* ~We have a mutual friend. Vail is his name. He wished me to have the cloak you hold for him.~ #10611 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 0.2
  SAY @9 /* ~HA! You think me a fool? Vail would not give such a thing to a lout like you. I do not know how you came upon his name, but you obviously don't know a thing about him. Can you tell me his favorite dish? Or his mother's maiden name? I doubt you have even laid eyes on him. What was the color of his hair? Can you even name his race?~ #10589 */
  IF ~~ THEN REPLY @10 /* ~I do not have time for this! You will give me the cloak or die!~ #10597 */ GOTO 1
  IF ~~ THEN REPLY @11 /* ~His hair was brown, a common color for humans.~ #10598 */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~His hair was red, a striking color for an elf.~ #10599 */ GOTO 4
  IF ~~ THEN REPLY @13 /* ~His hair was blond, a color you do not often see on a gnome.~ #10600 */ GOTO 4
  IF ~~ THEN REPLY @14 /* ~Human he was, and his hair was red.~ #10601 */ GOTO 4
  IF ~~ THEN REPLY @15 /* ~An elf he was, and his hair was blond as the sunlight.~ #10602 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~He was a gnome if I recall correctly, and he had hair of brown.~ #10603 */ GOTO 4
  IF ~~ THEN REPLY @17 /* ~Human was his race, and blond was his hair.~ #10604 */ GOTO 4
  IF ~~ THEN REPLY @18 /* ~Perhaps I cannot recall his features, but that changes nothing. He offered the cloak for his rescue and I accepted. Do not betray his wishes.~ #10606 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.7 3.6 3.4 3.3 3.2 3.1
  SAY @19 /* ~You know nothing of him! Get lost, before I call some burly guards to assist you out! You will get nothing of his from me! Now, or ever!~ #10605 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @20 /* ~Who told you that? I bet it was Shanall, wasn't it? That little gutter tramp! Well, I'll not speak with such as you!~ #10610 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @21 /* ~Don't bother me. Leave me alone or I'll call the guards!~ #10612 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.8 3.5
  SAY @22 /* ~Hmm... perhaps you do know of him. Still, I cannot believe he would relinquish such a thing to you. He can be a touch flighty at times though. Ah, it's been some time since he paid me a visit. Who knows how he may have changed? Here you are then. Take it and leave me. I've better things to be doing.~ #10613 */
  IF ~~ THEN REPLY @25 /* ~Thank you, I will trouble you no more.~ #10616 */ DO ~GiveItem("CLCK05",LastTalkedToBy)
EraseJournalEntry(@24)
~ SOLVED_JOURNAL @23 /* ~The Cloak of Balduran
Quenash turned over the Cloak of Balduran once I found her in the Undercellar.~ #27375 */ GOTO 9
  IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN REPLY @26 /* ~There was one other thing. He was to give me the Helm of Balduran as well.~ #10617 */ DO ~GiveItem("CLCK05",LastTalkedToBy)
EraseJournalEntry(@24)
~ SOLVED_JOURNAL @23 /* ~The Cloak of Balduran
Quenash turned over the Cloak of Balduran once I found her in the Undercellar.~ #27375 */ GOTO 8
  IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN REPLY @27 /* ~And the Helm of Balduran? That was part of the deal as well.~ #10622 */ DO ~GiveItem("CLCK05",LastTalkedToBy)
EraseJournalEntry(@24)
~ SOLVED_JOURNAL @23 /* ~The Cloak of Balduran
Quenash turned over the Cloak of Balduran once I found her in the Undercellar.~ #27375 */ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @28 /* ~Now THAT I seriously doubt! Still, I did not think he would give up the cloak either. It does not matter much; I have no idea where the helm would be. He... he did mention something about hiding it. What was it he said? He said that he could not have found a better location to hide both the cloak and the helm, and that the building was practically named for the purpose, but that he would let me keep the cloak because he did not want both items in such a public place. Does this help you?~ #10618 */
  IF ~~ THEN REPLY @30 /* ~I am grateful. I will continue to search.~ #10624 */ UNSOLVED_JOURNAL @29 /* ~The Helm of Balduran
Quenash could tell me little about the location of the Helm. She said Vail "could not have found a better location to hide both the cloak and the helm, and that the building was practically named for the purpose."~ #26933 */ GOTO 9
  IF ~~ THEN REPLY @31 /* ~Tell me what else you know! Do not make me hurt you!~ #10625 */ UNSOLVED_JOURNAL @29 /* ~The Helm of Balduran
Quenash could tell me little about the location of the Helm. She said Vail "could not have found a better location to hide both the cloak and the helm, and that the building was practically named for the purpose."~ #26933 */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0
  SAY @32 /* ~Just move along.~ #10619 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @33 /* ~You betray yourself! Vail would never agree to any such thing! Get out of here. You may have the cloak, but I'll not help you with the helm!~ #10623 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
