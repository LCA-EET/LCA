// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VOLETA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VOLETA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA371~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Blast you all thrice over! I don't know who you be, but if you are in league with him that cut me down you can all go straight to Hades! May the spirits of those that built this maze take you down!~ #10833 */
  IF ~~ THEN REPLY @2 /* ~Shut your yap! I am looking for the one called Sarevok! Did he come this way?~ #10836 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~You look injured. Who has done this to you?~ #10838 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~I mean you no harm. I am only here to find Sarevok.~ #10839 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~No, I fell on my own sword and damn near cut my own throat, you fool! Of course he was here! The mad jackal had clear passage past me and still he paused to strike. I get the last laugh though. Traps ahead will get him even with that mage he was dragging along, and you too if you follow.~ #10834 */
  IF ~~ THEN REPLY @7 /* ~Where does this passage lead?~ #10837 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~Bah, I'm sure I can handle it.~ #10842 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9 /* ~You've got me best wishes if you are hunting him down. Flew by me, he did, and only paused to stick me for the fun of it. Vicious bastard, he is. The traps ahead will likely claim him, even with that mage he was dragging along with him.~ #10835 */
  IF ~~ THEN REPLY @10 /* ~Would you be able to guide me through the traps ahead?~ #10849 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Traps be damned! They will not escape me!~ #10850 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @12 /* ~Who? Sarevok it was! I recognized him from when I was... ehhh... "exploring" the Iron Throne base the other day. I'll be all right, he was in too much of a hurry to do a proper job on me. You've got my blessings if you're tracking him down.~ #10840 */
  IF ~~ THEN REPLY @13 /* ~Could you guide me through the maze so I can find him?~ #10845 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~I do not need your blessings! He will not escape me!~ #10846 */ UNSOLVED_JOURNAL @6 /* ~Tandem in Extremis
Evidently Sarevok has entered the thieves' maze, a warren of passageways built long ago that now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #27505 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY @15 /* ~Where does it lead? You want to follow him? You'll be dead before you get a hundred feet, but I guess it's your life. The maze apparently connects to the Undercity, but I ain't heard of nobody that has gone through and lived to tell. It's kinda meant as a decoy retreat of sorts. Lead intruders down here and they think it's the way out. Usually you don't see them again after that. Ain't seen a live person leave ever. She's full o' undead and kept clean by jellies. Better get a move on if you hope to catch them. I'm just going to stay here and catch my breath.~ #10843 */
  IF ~~ THEN REPLY @16 /* ~Where does the maze lead?~ #11730 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1 2.1 1.1
  SAY @17 /* ~Fitting last words if ever I have heard them. Go on then; run along. If you make it through to the Undercity alive, I will be more than surprised. No skin off my nose either way, though I'd love to see you run Sarevok through. I'll just wait here to hear about it though, if you don't mind. I ain't fool enough to run that gauntlet in there. The maze has not seen a live person pass since it was built. Maintained by her undead creators you know. Cleaned by jellies, too. Better get a move on. Off you go.~ #10844 */
  IF ~~ THEN REPLY @16 /* ~Where does the maze lead?~ #11729 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.0 2.0
  SAY @18 /* ~HA! Er... I mean, no. No, I won't be doing that. I ain't ever seen anyone walk out of that maze alive. Not that you won't survive or anything. I bet you just waltz through without a problem. Yes, <SIRMAAM>. I'll just wait here to hear about it though. I ain't got no wish to meet the undead that maintain her, nor the jellies that keep her clean. Gotta... gotta catch my breath, you understand.~ #10848 */
  IF ~~ THEN REPLY @16 /* ~Where does the maze lead?~ #11727 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 8.0
  SAY @19 /* ~Yeah, whatever. Just you be sure to give that Sarevok a shank o' steel.~ #11733 */
  IF ~~ THEN JOURNAL @20 /* ~The thieves' maze was built long ago, and now serves as a decoy escape route to fool trespassers. It is maintained by undead and kept clean by jellies, likely enslaved by some long forgotten thief adept at magic. It leads to the Undercity, an old settlement that once stood where Baldur's Gate is now. Nothing but undead down there now, supposedly.~ #11735 */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 5.0 4.0
  SAY @21 /* ~I don't rightly know, though it is said there is a city beneath this one. Some archaeologist smart-arsed sage might be able to tell you more about it. It's not a proper city down there, you understand. Just the remains. Not surprising, really. If the site that Baldur's Gate is built on is so appealing, it would figure that there would have been one built here before. I care little: nothing but dead down there now. Get moving.~ #11734 */
  IF ~~ THEN REPLY @22 /* ~I understand. Rest ye well.~ #10029 */ GOTO 7
END