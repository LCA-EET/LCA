// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PUMBERL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PUMBERL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA228~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~For what purpose do you visit the Bitch Queen?~ #1398 */
  IF ~  Global("JALAPPEAR","GLOBAL",0)
~ THEN REPLY @2 /* ~We wish to speak with high priestess Jalantha Mistmyr.~ #1409 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We want to see what a temple to an evil goddess looks like on the inside. We're from, uh, Cormyr. Tourists, you know.~ #1410 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We wish to pay our respects to the Queen of the Deeps.~ #1411 */ GOTO 3
  IF ~  !Dead("Tenya")
Global("TalkedToTenya","GLOBAL",1)
Global("TENAPPEAR","GLOBAL",0)
Global("TremainQuest","GLOBAL",1)
~ THEN REPLY @5 /* ~We wish to see the Priestess Tenya.~ #1412 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~The High Priestess does not have time to see commoners. Why should I allow you to waste her time?~ #1399 */
  IF ~~ THEN REPLY @7 /* ~Perhaps a little donation to the church? Would 25 gold suffice?~ #1413 */ GOTO 5
  IF ~  PartyGoldGT(49)
~ THEN REPLY @8 /* ~Would a donation of 50 gold allow us entry?~ #1414 */ DO ~TakePartyGold(50)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @9 /* ~You are unwise to waste my time. Please leave.~ #1400 */
  IF ~~ THEN DO ~Wait(10)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~You may not enter. I will not change my mind for you or any of your idiot friends. If you come up with a better reason to enter, then speak to me again.~ #1401 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11 /* ~I told you to follow me. I won't give you a second warning.~ #1402 */
  IF ~~ THEN DO ~Wait(10)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY @12 /* ~Such a piddling tribute. If you wish to see the High Priestess you will have to give at least 100 gold.~ #1403 */
  IF ~~ THEN REPLY @13 /* ~100 gold?! We can't afford that. You'll have to find other peasants to exploit.~ #1416 */ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY @14 /* ~Okay, here's your 100 gold.~ #1417 */ DO ~TakePartyGold(100)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 1.1
  SAY @15 /* ~That offer is adequate. Wait here and I will return with the High Priestess.~ #1404 */
  IF ~~ THEN DO ~SetGlobal("JALAPPEAR","GLOBAL",1)
CreateCreature("JALANT",[459.531],S)
ActionOverride("Jalantha",Dialog([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.3
  SAY @16 /* ~You wish to see Tenya? Wait here and I will get her for you.~ #1405 */
  IF ~~ THEN DO ~SetGlobal("TENAPPEAR","GLOBAL",1)
CreateCreature("TENYA2",[536.648],S)
ActionOverride("Tenya2",Dialog([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @17 /* ~So, you've returned. Do you have the book for Jalantha?~ #1406 */
  IF ~~ THEN REPLY @18 /* ~No, we don't have it yet.~ #1418 */ GOTO 9
  IF ~~ THEN REPLY @19 /* ~Yes, we have it with us.~ #1419 */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20 /* ~Then return when you have the book!~ #1407 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @21 /* ~Wait here, I will return with Jalantha.~ #1408 */
  IF ~~ THEN DO ~CreateCreature("JALANT",[216.677],S)
ActionOverride("Jalantha",Dialog([PC]))
~ EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 11 // from:
  SAY @22 /* ~You may bask in the glory of Umberlee for as long as you like, friends.~ #6366 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @23 /* ~You've outstayed your welcome!~ #9106 */
  IF ~~ THEN EXIT
END
