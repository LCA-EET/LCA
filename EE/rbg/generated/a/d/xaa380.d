// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SANADAL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SANADAL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA380~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Leave me be, will you? I wish no company now.~ #11605 */
  IF ~~ THEN REPLY @2 /* ~Why are you saddened, m'lady?~ #11606 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~Save me your pitiful words, I care not for your wishes.~ #11607 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 6.1 5.1 3.4 2.2 0.1
  SAY @4 /* ~It is people like you that give people like you a bad name! Or... or something like that! Oh, I hear Shank's gentle wit in my words. Get out! Get out!~ #11608 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @5 /* ~I fear the worst for my brother and cousin, they have been missing some months now, and I know of no one that can find them.~ #11609 */
  IF ~~ THEN REPLY @6 /* ~Your brother and cousin? Perhaps if I knew their names I could help you.~ #11610 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Are you sure they are lost? Perhaps they simply went on a trip. Such things are common.~ #11611 */ GOTO 5
  IF ~~ THEN REPLY @8 /* ~Your tears are wasted on me. People that cannot take charge of their own fates deserve whatever they get.~ #11612 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 5.0 2.0
  SAY @9 /* ~I thank you. Whatever you can do, I would appreciate. Their names are Shank and Carbos. Not the brightest of boys, but pure of heart. They may have fallen in with a bad lot, but I know they would never do anything wrong.~ #11613 */
  IF ~  Dead("Carbos")
!Dead("Shank")
~ THEN REPLY @10 /* ~Shank and... and Carbos? Um, perhaps there is not as much I could do as I thought.~ #11614 */ GOTO 4
  IF ~  !Dead("Carbos")
Dead("Shank")
~ THEN REPLY @11 /* ~Carbos and... Shank? Um, perhaps there is not as much I could do as I thought.~ #11615 */ GOTO 4
  IF ~  Dead("Carbos")
Dead("Shank")
~ THEN REPLY @12 /* ~Shank and... and Carbos? Um, Shank and Carbos. There is not as much I could do as I thought.~ #11616 */ GOTO 4
  IF ~  !Dead("Carbos")
!Dead("Shank")
~ THEN REPLY @13 /* ~I can keep an eye out, though the Sword Coast is a large place.~ #11617 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~They are probably dead and buried. Get over your grief and move on.~ #11619 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0
  SAY @15 /* ~What do you mean? Organize a search! Set out upon the land! Look high and low! Surely you can find my gentle family members?~ #11621 */
  IF ~~ THEN REPLY @16 /* ~Eh, you may want to face the fact that they might not be coming back.~ #11629 */ GOTO 9
  IF ~~ THEN REPLY @17 /* ~Gentle? They weren't so gentle when they tried to kill me in Candlekeep!~ #11630 */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @18 /* ~A trip? In these times? I hardly think so. They were looking for work, but they wouldn't have gone too far. Can you help?~ #11622 */
  IF ~~ THEN REPLY @19 /* ~What are their names? Tell me, and I will see.~ #11623 */ GOTO 3
  IF ~~ THEN REPLY @20 /* ~I have no time for this.~ #11624 */ GOTO 1
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @21 /* ~Large it is, but they are rather loud and do not hide easily. People are seeking the bandits left and right, so someone is sure to have seen them.~ #11625 */
  IF ~~ THEN REPLY @22 /* ~Why would they have been seen with bandits? You said they were honest and good.~ #11626 */ GOTO 7
  IF ~~ THEN REPLY @23 /* ~And killed them, most likely. Move on and forget it.~ #11627 */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @24 /* ~They have criminal friends. They met up with the wrong sort of people. They... All right, ALL RIGHT! They are right bastards, and they owe me gold! If you see them, give 'em a smack for me!~ #11628 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 8 // from:
  SAY @25 /* ~Bugger off.~ #11631 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY @26 /* ~Why? What do you—? You know of their fate, don't you? Blast it, they are dead or imprisoned, aren't they? Now I'll never get my gold... er... family back together. Such a tragedy that two saintly, young, pathetic souls should be treated in such a manner. I thank you for the news, and may the person that harmed them rot in the lower planes. Such a cruel beast, whoever they are. I bet it was a grand battle.~ #11632 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @27 /* ~What? They would never do such a— Oh, forget it. If they attacked you, then you know full well what morons they are. Did they have any gold on them? No, I doubt it. Spent it all on booze and fast times, most likely. Good on you if you knocked them around. I certainly will not mourn their loss. Carbos and Shank, what a couple of moronic goons.~ #11633 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
