// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDNAN.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDNAN.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC174~

IF ~  Global("bd_sallo_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Wake up, Sallo!~ #61295 */
  IF ~~ THEN EXTERN ~XAC175~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Forget it. The Shining Lady herself couldn't sober him up right now. Commander Dreon will not be pleased.~ #51410 */
  IF ~~ THEN REPLY @3 /* ~What's the problem?~ #51411 */ EXTERN ~XAC175~ 1
  IF ~~ THEN REPLY @4 /* ~Why will Commander Dreon care?~ #51412 */ EXTERN ~XAC175~ 2
  IF ~~ THEN REPLY @5 /* ~I'll leave you to your troubles.~ #51413 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @6 /* ~Wait, you're new here, right? I don't recognize your face. Are you a mercenary?~ #51421 */
  IF ~~ THEN REPLY @7 /* ~No, I'm just new.~ #61228 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Yes. A mercenary. I am a mercenary. That's me.~ #61229 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~I've more important matters than this to attend to.~ #61230 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @10 /* ~We're in luck. Dreon takes it easier on new blood. Do us a favor: Take him his wine and the morning report, all right? He'll be impossible otherwise.~ #61231 */
  IF ~~ THEN REPLY @11 /* ~What do I have to do?~ #51422 */ EXTERN ~XAC175~ 3
  IF ~~ THEN REPLY @12 /* ~What's in it for me?~ #51423 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~I've more important matters than this to attend to.~ #51424 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 2.2
  SAY @13 /* ~Dreon's wrath will fall on ALL of us, so it's in your own best interests to help. I suppose I could give you a couple of potions as well. What do you say?~ #51429 */
  IF ~~ THEN REPLY @14 /* ~Very well. I'll do it.~ #61232 */ EXTERN ~XAC175~ 4
  IF ~~ THEN REPLY @15 /* ~I think not.~ #61233 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @16 /* ~All right, I understand. If you change your mind and get that report to Dreon, let us know, though, hey?~ #51433 */
  IF ~~ THEN DO ~GiveItemCreate("BDMISC29",Player1,0,0,0)
AddJournalEntry(61296,QUEST)
~ EXIT
END

IF ~  GlobalGT("bd_sallo_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 6 // from:
  SAY @17 /* ~Hello again. How goes your day?~ #51482 */
  IF ~  Global("bd_sallo_plot","bd4000",3)
~ THEN REPLY @18 /* ~I got the report to Dreon.~ #51483 */ DO ~SetGlobal("bd_sallo_plot","bd4000",4)
~ EXTERN ~XAC175~ 6
  IF ~~ THEN REPLY @19 /* ~Not bad.~ #51484 */ GOTO 9
  IF ~~ THEN REPLY @20 /* ~If it weren't for the giant battle brewing, I'd be having a great day.~ #51485 */ EXTERN ~XAC175~ 8
  IF ~~ THEN REPLY @21 /* ~I don't have time to chat.~ #51486 */ EXTERN ~XAC175~ 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @22 /* ~Absolutely. Here's a couple potions I've been saving. I'll happily part with them knowing we won't have Dreon on our tail all day.~ #51497 */
  IF ~~ THEN DO ~GiveItemCreate("POTN17",Player1,0,0,0)
GiveItemCreate("POTN18",Player1,0,0,0)
AddexperienceParty(6000)
AddJournalEntry(61300,QUEST_DONE)
~ EXTERN ~XAC175~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY @23 /* ~Have a good day.~ #51499 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @24 /* ~That's good to hear.~ #51501 */
  IF ~~ THEN EXTERN ~XAC175~ 7
END
