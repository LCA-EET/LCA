// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDSSEN1.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDSSEN1.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC116~

IF ~  GlobalLT("bd_sentry_pass","bd4000",3)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Unless you have Caelar's seal, you're not getting through.~ #58604 */
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @2 /* ~I have it right here, friend.~ #58605 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I'll return, then.~ #58606 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Looks like I'll have to fight the entire crusade on my own!~ #58607 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~Be on your way.~ #58608 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~You're mad... Be on your way, fool.~ #58609 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @7 /* ~Pass, then. May the Lady's light shine upon you.~ #58648 */
  IF ~~ THEN DO ~SetGlobal("bd_sentry_pass","bd4000",3)
AddJournalEntry(59787,QUEST_DONE)
~ EXIT
END

IF ~  RandomNum(15,1)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Greetings, <PRO_SIRMAAM>.~ #63177 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,2)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I don't recognize you. You must be new.~ #63178 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,3)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~Have we met before? I feel like I've seen your face before.~ #63179 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,4)
~ THEN BEGIN 7 // from:
  SAY @11 /* ~The Shining Lady's enemies will be crushed against the gates of Dragonspear!~ #63180 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,5)
~ THEN BEGIN 8 // from:
  SAY @12 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ #63181 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,6)
~ THEN BEGIN 9 // from:
  SAY @13 /* ~Caelar is an inspiration. I could listen to her speak for a tenday. Longer, even.~ #63182 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,7)
~ THEN BEGIN 10 // from:
  SAY @14 /* ~Our victory is inevitable. We have a righteous cause and the Shining Lady on our side.~ #63183 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,8)
~ THEN BEGIN 11 // from:
  SAY @15 /* ~We make our stand here. Dragonspear Castle is ours!~ #63184 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,9)
~ THEN BEGIN 12 // from:
  SAY @16 /* ~Those trolls will come in handy. Those fools outside won't know what hit them.~ #63185 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,10)
~ THEN BEGIN 13 // from:
  SAY @17 /* ~A good <DAYNIGHTALL> to you.~ #63186 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,11)
~ THEN BEGIN 14 // from:
  SAY @18 /* ~All glory to Caelar! Victory for the Shining Lady!~ #63187 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,12)
~ THEN BEGIN 15 // from:
  SAY @19 /* ~No time to talk, lots to do. Walk ever in Caelar's light.~ #63188 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,13)
~ THEN BEGIN 16 // from:
  SAY @20 /* ~Is there something I can help you with?~ #63189 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,14)
~ THEN BEGIN 17 // from:
  SAY @21 /* ~An attack could come at any moment. Keep your weapon close at hand.~ #63190 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,15)
~ THEN BEGIN 18 // from:
  SAY @22 /* ~Morale Officer Deneld knows how to get the best out of his people. His speeches are the best part of my day.~ #63191 */
  IF ~~ THEN EXIT
END
