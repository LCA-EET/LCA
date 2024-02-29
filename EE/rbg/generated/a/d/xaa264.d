// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DIVINE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DIVINE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA264~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You wish to hear the arcane knowledge of Haspur? It will cost you 50 gold for the answers to your questions no matter how small. Will you pay, or will you leave?~ #1352 */
  IF ~~ THEN REPLY @2 /* ~50 gold! That's ridiculous, you can find some other chumps to squeeze money out of.~ #1362 */ EXIT
  IF ~  PartyGoldGT(49)
~ THEN REPLY @3 /* ~Here's the money, seer, but you'd better be for real.~ #1363 */ DO ~TakePartyGold(50)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4 /* ~I am for real. Now what is it that you wish to know? I must tell you, I only have the strength to answer a single question in a day, so be careful in what you ask.~ #1353 */
  IF ~  !Dead("Rieltar")
~ THEN REPLY @5 /* ~Who is the leader of the Iron Throne?~ #1364 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~What is the Iron Throne's agenda?~ #1365 */ GOTO 9
  IF ~  Global("HelpLothander","GLOBAL",1)
~ THEN REPLY @7 /* ~Who has the ability to release Lothander of his geas?~ #1367 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~Who is the richest man in Baldur's Gate, and where does he keep all of his money?~ #1366 */ GOTO 5
  IF ~  Global("Chapter","GLOBAL",7)
~ THEN REPLY @9 /* ~Why is Eltan so ill?~ #1368 */ GOTO 6
  IF ~  Global("Chapter","GLOBAL",7)
~ THEN REPLY @10 /* ~Who framed us for the murder of the Iron Throne leaders?~ #1369 */ GOTO 7
  IF ~  Dead("Rieltar")
~ THEN REPLY @5 /* ~Who is the leader of the Iron Throne?~ #1370 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @11 /* ~They are led by Rieltar Anchev.~ #1354 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)
~ JOURNAL @12 /* ~A Seer's Vision
In Baldur's Gate, a seer told me that the leader of the Iron Throne is Rieltar Anchev.~ #26980 */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY @13 /* ~They are led by Sarevok Anchev.~ #1355 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)
~ JOURNAL @14 /* ~A Seer's Vision
In Baldur's Gate, a seer told me that the leader of the Iron Throne is Sarevok Anchev.~ #26981 */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15 /* ~Only the high priestess Jalantha Mistmyr of Umberlee has the power to remove Lothander's geas. She can be found at the Water Queen's House. It is difficult to see whether or not she will help you.~ #1356 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",4)
SetGlobal("DivinerAsked","GLOBAL",1)
~ UNSOLVED_JOURNAL @16 /* ~Marek and Lothander
According to the seer I consulted, only Jalantha Mistmyr can lift the geas on Lothander. I can find her at the Water Queen's House, as they call the temple of Umberlee.~ #26982 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17 /* ~Entar Silvershield is the wealthiest man in the city. He keeps his hoard in his bedroom at his estate.~ #1357 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)
~ JOURNAL @18 /* ~A Seer's Vision
In Baldur's Gate, a seer told me that the wealthy Entar Silvershield hides his treasure in his bedchamber at his estate.~ #26983 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @19 /* ~The man who claims to heal him is, in fact, the source of the problem.~ #1358 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)
~ UNSOLVED_JOURNAL @20 /* ~Duke Eltan's Illness
According to the seer, Duke Eltan's healer is really the one making him ill.~ #26984 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @21 /* ~A man named Sarevok Anchev is responsible for the frame.~ #1359 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)
~ JOURNAL @22 /* ~A Seer's Vision
If I can believe the seer in Baldur's Gate, Sarevok Anchev framed me for the murders at Candlekeep.~ #26985 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 9.0 7.0 6.0 5.0 4.0 3.0 2.0
  SAY @23 /* ~I cannot answer any more questions. You must leave now.~ #1360 */
  IF ~~ THEN DO ~SetGlobalTimer("Diviner","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY @24 /* ~Making money has always been their agenda.~ #1361 */
  IF ~~ THEN GOTO 8
END

IF WEIGHT #0 ~  !NumTimesTalkedTo(0)
GlobalTimerNotExpired("Diviner","GLOBAL")
~ THEN BEGIN 10 // from:
  SAY @25 /* ~I'm sorry, but I won't have the strength to do another such reading until tomorrow.~ #6414 */
  IF ~~ THEN EXIT
END
