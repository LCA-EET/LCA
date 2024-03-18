// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFAMCRU.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFAMCRU.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC144~

IF ~  Global("bd_famari_plot","bd4000",5)
Dead("bdfamari")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You! Explain yourself! ~ #52161 */
  IF ~  CheckStatGT(Player1,8,CHR)
~ THEN REPLY @2 /* ~This man was a coward. He was without morals, knew nothing of honor. And so I slew him.~ #52162 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 1
  IF ~  CheckStatLT(Player1,9,CHR)
~ THEN REPLY @2 /* ~This man was a coward. He was without morals, knew nothing of honor. And so I slew him.~ #52162 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 2
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY @3 /* ~This mercenary was no true servant of Caelar.~ #52163 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 1
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY @3 /* ~This mercenary was no true servant of Caelar.~ #52163 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~There really isn't much to explain. This man was scum. I dealt with him accordingly.~ #52164 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 1
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY @5 /* ~I owe you no explanation.~ #52165 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ EXTERN ~BDGLINTJ~ 67
  IF ~  !IsValidForPartyDialogue("Glint")
HasItemEquiped("bdring03",Player1)
~ THEN REPLY @5 /* ~I owe you no explanation.~ #52165 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 4
  IF ~  !IsValidForPartyDialogue("Glint")
!HasItemEquiped("bdring03",Player1)
~ THEN REPLY @5 /* ~I owe you no explanation.~ #52165 */ DO ~SetGlobal("bd_famari_plot","bd4000",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.4 0.2 0.0
  SAY @6 /* ~Be that as it may, he was doing Caelar's work. Sometimes we must humble ourselves, and work with the unworthy to achieve our greater goals. ~ #52166 */
  IF ~~ THEN REPLY @7 /* ~You are right. I will try to keep it in mind in future.~ #52167 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~So humility is the key to victory? You've given me much to think about. I will consider your words as I think on this.~ #52168 */ GOTO 3
  IF ~  HasItemEquiped("bdring03",Player1)
~ THEN REPLY @9 /* ~I humble myself for no one, fool. Not for Caelar and certainly not for you.~ #52169 */ GOTO 4
  IF ~  !HasItemEquiped("bdring03",Player1)
~ THEN REPLY @9 /* ~I humble myself for no one, fool. Not for Caelar and certainly not for you.~ #52169 */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.3 0.1
  SAY @10 /* ~I dislike them too, but Caelar has decreed we must tolerate their presence, for now, at least. Killing them puts her plans at risk. Would you have that go unpunished?~ #52170 */
  IF ~~ THEN REPLY @11 /* ~No, sir. I am at your mercy. Should you in your wisdom spare my life, know that this scenario will not repeat itself. I'll control my temper.~ #52171 */ GOTO 3
  IF ~  CheckStatLT(Player1,14,CHR)
!HasItemEquiped("bdring03",Player1)
~ THEN REPLY @12 /* ~Yes...?~ #52172 */ GOTO 6
  IF ~  CheckStatLT(Player1,14,CHR)
HasItemEquiped("bdring03",Player1)
~ THEN REPLY @12 /* ~Yes...?~ #52172 */ GOTO 4
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @12 /* ~Yes...?~ #52172 */ GOTO 3
  IF ~  HasItemEquiped("bdring03",Player1)
~ THEN REPLY @13 /* ~I don't see that you have much choice in the matter.~ #52173 */ GOTO 4
  IF ~  !HasItemEquiped("bdring03",Player1)
~ THEN REPLY @13 /* ~I don't see that you have much choice in the matter.~ #52173 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.3 2.0 1.1 1.0
  SAY @14 /* ~Clean up the bodies, then return to your duties. And in future, do not let yourself be ruled by impulse. Know that our goal is righteous and all, even mercenary scum, have a role to play. Now go.~ #52174 */
  IF ~~ THEN DO ~AddexperienceParty(6000)
EscapeArea()
~ EXIT
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN DO ~SetGlobal("bd_famari_plot","bd4000",7)
AddexperienceParty(6000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.2 1.2 0.6
  SAY @15 /* ~Such insolence. You are not fit to wear a Ring of the Crusade. Give it to me and begone from this place, or on my honor, I'll take it from your corpse.~ #52185 */
  IF ~~ THEN REPLY @16 /* ~Here, then. Take the ring.~ #52186 */ DO ~TakePartyItem("bdring03")
~ GOTO 5
  IF ~~ THEN REPLY @17 /* ~No need to go that far. Take the ring. It was never a good fit anyway.~ #52187 */ DO ~TakePartyItem("bdring03")
~ GOTO 5
  IF ~~ THEN REPLY @18 /* ~You want the ring? Come and take it.~ #52188 */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @19 /* ~Those who wear this ring earned it in service to the Shining Lady. Out of respect for that, I will let you leave this place alive. Begone.~ #52190 */
  IF ~~ THEN DO ~AddexperienceParty(6000)
EscapeArea()
~ EXIT
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN DO ~SetGlobal("bd_famari_plot","bd4000",7)
AddexperienceParty(6000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 2.5 2.1 1.3 0.7
  SAY @20 /* ~The Lady's blessing and a month's pay to whoever brings me that brazen cur's head!~ #52191 */
  IF ~~ THEN DO ~SetGlobal("bd_dsc_hostile","bd4000",1)
Enemy()
~ EXIT
END

IF ~  RandomNum(15,1)
~ THEN BEGIN 7 // from:
  SAY @21 /* ~Greetings, <PRO_SIRMAAM>.~ #63177 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,2)
~ THEN BEGIN 8 // from:
  SAY @22 /* ~I don't recognize you. You must be new.~ #63178 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,3)
~ THEN BEGIN 9 // from:
  SAY @23 /* ~Have we met before? I feel like I've seen your face before.~ #63179 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,4)
~ THEN BEGIN 10 // from:
  SAY @24 /* ~The Shining Lady's enemies will be crushed against the gates of Dragonspear!~ #63180 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,5)
~ THEN BEGIN 11 // from:
  SAY @25 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ #63181 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,6)
~ THEN BEGIN 12 // from:
  SAY @26 /* ~Caelar is an inspiration. I could listen to her speak for a tenday. Longer, even.~ #63182 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,7)
~ THEN BEGIN 13 // from:
  SAY @27 /* ~Our victory is inevitable. We have a righteous cause and the Shining Lady on our side.~ #63183 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,8)
~ THEN BEGIN 14 // from:
  SAY @28 /* ~We make our stand here. Dragonspear Castle is ours!~ #63184 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,9)
~ THEN BEGIN 15 // from:
  SAY @29 /* ~Those trolls will come in handy. Those fools outside won't know what hit them.~ #63185 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,10)
~ THEN BEGIN 16 // from:
  SAY @30 /* ~A good <DAYNIGHTALL> to you.~ #63186 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,11)
~ THEN BEGIN 17 // from:
  SAY @31 /* ~All glory to Caelar! Victory for the Shining Lady!~ #63187 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,12)
~ THEN BEGIN 18 // from:
  SAY @32 /* ~No time to talk, lots to do. Walk ever in Caelar's light.~ #63188 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,13)
~ THEN BEGIN 19 // from:
  SAY @33 /* ~Is there something I can help you with?~ #63189 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,14)
~ THEN BEGIN 20 // from:
  SAY @34 /* ~An attack could come at any moment. Keep your weapon close at hand.~ #63190 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,15)
~ THEN BEGIN 21 // from:
  SAY @35 /* ~Morale Officer Deneld knows how to get the best out of his people. His speeches are the best part of my day.~ #63191 */
  IF ~~ THEN EXIT
END
