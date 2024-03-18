// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM4.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM4.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA420~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So, what can I help you with?~ #7662 */
  IF ~~ THEN REPLY @2 /* ~We were sent here with the understanding that you did all of the hiring for the Iron Throne.~ #7672 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We're looking for the leaders of the Iron Throne.~ #7673 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We're the mercenaries who've been messing up all your operations these past weeks. Tell us everything you know or we'll kill you where you stand!~ #7674 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 2.2 0.0
  SAY @5 /* ~I apologize. Someone has made a mistake; we are hiring no one at the moment. I hope there hasn't been too much inconvenience, but could you please leave now?~ #7663 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~And why would you be looking for them? Might I ask you who you are and what you're doing here?~ #7664 */
  IF ~~ THEN REPLY @7 /* ~We're merchants in from Sembia. We have important news for your leader.~ #7675 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~We're merchants. We have just arrived from Cormyr, and have important news for your leader.~ #7676 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~We're mercenaries looking for a job. We were told that you were the person to talk to.~ #7677 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10 /* ~Well, Rieltar isn't here right now. I'd suggest you find an inn and wait for his return from Candlekeep.~ #7665 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11 /* ~From Cormyr? That is most interesting, considering that the Iron Throne is banned from operating there. What I really think is that you're spies. GUARDS!~ #7666 */
  IF ~~ THEN DO ~CreateCreature("IRONGU",[936.836],S)
CreateCreature("IRONGU",[936.836],S)
CreateCreature("IRONGU",[936.836],S)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY @12 /* ~Wait! Don't kill me please! What do you want to know? I'll tell you anything.~ #7667 */
  IF ~~ THEN REPLY @13 /* ~Where are your leaders?~ #7678 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~What are the Iron Throne's plans?~ #7679 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~Where are the offices of your leader?~ #7680 */ UNSOLVED_JOURNAL @15 /* ~Investigating the Iron Throne
The offices of the Iron Throne leaders are on the fifth floor of the building.~ #27174 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17 /* ~They—they're at Candlekeep, at some important conference.~ #7668 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @18 /* ~I couldn't tell you that. I'm not privy to that kind of information. You-you'd have to ask Rieltar, Brunos, or Thaldorn.~ #7669 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @19 /* ~It's located on the fifth floor.~ #7670 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0 6.0
  SAY @20 /* ~Please leave, I promise not to tell anyone you're here.~ #7671 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @21 /* ~Do you mind? I'm a very busy man, and I don't need these constant interruptions.~ #7681 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 11 // from:
  SAY @22 /* ~If you're looking for Rieltar and Brunos, you'd find them at Candlekeep. There's some sort of clandestine rendezvous at the library.~ #7685 */
  IF ~~ THEN JOURNAL @23 /* ~A charmed merchant told us that the leaders of the Iron Throne were at Candlekeep.~ #7686 */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @24 /* ~You're not welcome here! Get out or be thrown out!~ #9208 */
  IF ~~ THEN EXIT
END
