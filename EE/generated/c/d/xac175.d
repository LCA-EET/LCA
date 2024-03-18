// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPEDRO.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPEDRO.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC175~

IF ~  Global("bd_sallo_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Come on, Sallo. Get up! Get up, damn you!~ #51409 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",1)
ActionOverride("bdsallo",DialogueInterrupt(FALSE))
~ EXTERN ~XAC174~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~The problem is that Sallo here can't stay out of the booze. Every few days, we find him passed out in a drunken stupor.~ #51414 */
  IF ~~ THEN GOTO 2
  IF ~  IsValidForPartyDialogue("voghiln")
~ THEN EXTERN ~BDVOGHIJ~ 144
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~Sallo's supposed to take Dreon the morning report. If Sallo doesn't show, Dreon will want to know why, and guess who'll reap what the drunkard's sown? Us, that's who.~ #51416 */
  IF ~~ THEN EXTERN ~XAC174~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Get a flask of wine from the casks here. Then find Morale Officer Deneld, get a copy of the morning report, and take it and the wine to Dreon. Couldn't be simpler. If you want a fresh uniform, take one from the crates over there.~ #51425 */
  IF ~~ THEN REPLY @5 /* ~That sounds easy enough. Very well, I'll do as you ask.~ #51426 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~What's in it for me?~ #51423 */ EXTERN ~XAC174~ 4
  IF ~~ THEN REPLY @7 /* ~I've more important matters than this to attend to.~ #51424 */ EXTERN ~XAC174~ 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8 /* ~Thanks, friend! Don't forget to wear a clean uniform. Deneld's a stickler for that sort of thing.~ #51432 */
  IF ~~ THEN DO ~GiveItemCreate("BDMISC29",Player1,0,0,0)
AddJournalEntry(61296,QUEST)
~ EXIT
END

IF ~  GlobalGT("bd_sallo_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Greetings again. I hope you're well. ~ #51487 */
  IF ~  Global("bd_sallo_plot","bd4000",3)
~ THEN REPLY @10 /* ~I got the report to Dreon.~ #51488 */ DO ~SetGlobal("bd_sallo_plot","bd4000",4)
~ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Well enough.~ #51489 */ EXTERN ~XAC174~ 9
  IF ~~ THEN REPLY @12 /* ~You know how it is. I shouldn't complain, but I will, just to keep in practice.~ #51490 */ GOTO 9
  IF ~~ THEN REPLY @13 /* ~I'm very busy. I have to go.~ #51491 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14 /* ~You did? Great! You really saved our hides. Dreon's impossible when things don't go his way.~ #51493 */
  IF ~~ THEN REPLY @15 /* ~You're lucky I happened along.~ #51494 */ EXTERN ~XAC174~ 7
  IF ~~ THEN REPLY @16 /* ~I think my intervention here is worth a reward, don't you?~ #51495 */ EXTERN ~XAC174~ 7
  IF ~~ THEN REPLY @17 /* ~He does have a... prickly quality about him.~ #51496 */ EXTERN ~XAC174~ 7
END

IF ~~ THEN BEGIN 7 // from: 5.3
  SAY @18 /* ~Come by again sometime. ~ #51498 */
  IF ~~ THEN EXTERN ~XAC174~ 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @19 /* ~You can say that again.~ #51500 */
  IF ~~ THEN EXTERN ~XAC174~ 8
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @20 /* ~Hah! You're officer material, friend.~ #61282 */
  IF ~~ THEN EXTERN ~XAC174~ 8
END
