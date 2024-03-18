// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDASHATI.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDASHATI.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC111~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~I told you, my lady. Boareskyr Bridge was an omen. This—this person cannot be trusted. You cannot rely on them to do the right thing.~ [BD38669] #38669 */
  IF ~~ THEN EXTERN ~BDDELANC~ 47
END

IF ~  Global("bd_asha_duel","global",2)
AreaCheck("bd4000")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~STAND DOWN OR BY THE LADY, YOU'LL ANSWER TO ME!~ [BD61337] #61337 */
  IF ~~ THEN DO ~SetGlobal("bd_asha_duel","global",1)
DestroyItem("minhp1")
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~Know that I am Adras Ashatiel, right hand to the Shining Lady. I know you, Bhaalspawn.~ [BD38311] #38311 */
  IF ~~ THEN REPLY @4 /* ~We met at the parley.~ #38312 */ GOTO 4
  IF ~~ THEN REPLY @5 /* ~I'm not surprised. I'm awfully famous.~ #38313 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~Then you know I have come to end Caelar's crusade.~ #38314 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @7 /* ~Have you now? Come then, face me and be humbled in the Shining Lady's name.~ [BD64964] #64964 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.0
  SAY @8 /* ~Some call you a hero, but I know what happened on Boareskyr Bridge. You will never fight with us, though our cause be righteous.~ [BD38320] #38320 */
  IF ~~ THEN REPLY @9 /* ~I DO fight on the side of right. You and Caelar cannot see that.~ #38321 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~Caelar's madness will leave the Sword Coast in ruins. Stopping her is the only sensible thing to do.~ #38322 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~I fight for my own causes and my own purposes. No one else's.~ #38323 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.1 4.0
  SAY @12 /* ~I will bring you to the light, and prove that ours is the side of honor and virtue. Face me, one on one. If you defeat me, my soldiers and I will surrender to you. Do you accept?~ [BD38329] #38329 */
  IF ~~ THEN REPLY @13 /* ~If it will save lives, so be it. You and I fight one on one, with no other interference.~ #38330 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~No. You can't distract me with a challenge cloaked in righteousness. I'll destroy you and all your followers here and now.~ #38331 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 3.0
  SAY @15 /* ~You and I, one on one. No other combatants, no hiding from sight like a coward. If you break the rules or your allies interfere, my soldiers will cut you down, every last one of you. Do you accept my challenge?~ [BD38333] #38333 */
  IF ~~ THEN REPLY @16 /* ~I'm ready. Let the battle begin.~ #64965 */ DO ~StartCutSceneMode()
SetGlobal("bd_asha_duel","global",3)
StartCutSceneEx("bdcut44",FALSE)
~ EXIT
  IF ~~ THEN REPLY @17 /* ~I changed my mind. You and all your followers die now.~ #64966 */ GOTO 7
END

IF ~  Global("bd_duel_cheat","bd4000",1)
AreaCheck("bd4000")
~ THEN BEGIN 7 // from: 6.1 5.1
  SAY @18 /* ~Champions of light! You see now the cowardice, the duplicity of those who challenge the Lady! Slay the unbeliever! Slay them all, in Caelar's name!~ [BD61340] #61340 */
  IF ~~ THEN DO ~SetGlobal("bd_duel_cheat","bd4000",2)
SetGlobal("bd_asha_duel","global",1)
OpenDoor("door07")
Enemy()
~ EXIT
END
