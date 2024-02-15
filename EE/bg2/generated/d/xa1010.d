// creator  : F:\BGModding - LCA\Game\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFRITZ.DLG
// game     : F:\BGModding - LCA\Game\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFRITZ.DLG
// dialog   : F:\BGModding - LCA\Game\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA1010~

IF ~  AreaCheck("BD0104")
Global("BD_FRITZ_NO_TALK","BD0104",1)
RealGlobalTimerExpired("BD_FRITZ_GET_OUT","BD0104")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Didn't I tell you to begone? Don't answer, I know I did. Get off with you, now!~ #60877 */
  IF ~~ THEN DO ~RealSetGlobalTimer("BD_FRITZ_GET_OUT","BD0104",TEN_ROUNDS)
~ EXIT
END

IF ~  AreaCheck("BD0104")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Unless you have business with the Fist, I'll have to ask you to move on. ~ #57676 */
  IF ~  Global("BD_REFUGEES","GLOBAL",1)
Global("BD_FRAMED_GARACHEN","GLOBAL",0)
RandomNum(2,1)
~ THEN REPLY @3 /* ~I need a moment of your time, officer. I'd like to talk to you about a homeowner by the Ducal Palace. His name is Garachen.~ #58313 */ GOTO 6
  IF ~  Global("BD_REFUGEES","GLOBAL",1)
Global("BD_FRAMED_GARACHEN","GLOBAL",0)
RandomNum(2,2)
~ THEN REPLY @4 /* ~I want to talk to you about a man named Garachen. He owns a home by the Ducal Palace. ~ #57677 */ GOTO 6
  IF ~  Global("BD_AILEENS_HUSBAND","GLOBAL",1)
!Dead("BDAILEEN")
~ THEN REPLY @5 /* ~Is murder Flaming Fist business? ~ #57678 */ GOTO 2
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @6 /* ~I am <CHARNAME>. I've come to speak to the prisoner Tiax.~ #60874 */ GOTO 5
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN REPLY @7 /* ~My business here is done.~ #60875 */ GOTO 12
  IF ~  RandomNum(2,1)
~ THEN REPLY @8 /* ~I'll just be moving along, then. A good <DAYNIGHTALL> to you, officer. ~ #57679 */ GOTO 12
  IF ~  RandomNum(2,2)
~ THEN REPLY @9 /* ~Then I shall move on.~ #58314 */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @10 /* ~A murder? Tell me more. ~ #57680 */
  IF ~~ THEN REPLY @11 /* ~A woman in the alley behind the Three Old Kegs murdered her husband. She has his body in a cart. ~ #57681 */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~These crowds are killing me. I tell you, the stench of their bodies all pressed together, it's murder, am I right? ~ #57682 */ GOTO 3
  IF ~~ THEN REPLY @13 /* ~I need tell you nothing. This is Baldur's Gate—just look around. You'll see evidence of the crime all about you. Impossible to miss. ~ #57683 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.1
  SAY @14 /* ~You may think murder is a joke, but I'm not laughing. Be on your way. ~ #57684 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @15 /* ~What? Unbelievable. Actually, on reflection it isn't, really, and that's a sad state of affairs. I'll send officers there to arrest her immediately. Thank you, citizen. Take this small reward for supporting the city in this time of crisis. ~ #57685 */
  IF ~~ THEN DO ~AddJournalEntry(61692,QUEST_DONE)
SetGlobal("BD_AILEENS_HUSBAND","GLOBAL",2)
AddexperienceParty(300)
GiveGoldForce(50)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @16 /* ~Waste of time, but it's your time to waste. He's through the door.~ #60876 */
  IF ~~ THEN DO ~SetGlobal("BD_FRITZ_NO_TALK","BD0104",1)
RealSetGlobalTimer("BD_FRITZ_TALK","BD0104",TEN_ROUNDS)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.0
  SAY @17 /* ~What about him?~ #58315 */
  IF ~~ THEN REPLY @18 /* ~He's offering refugees shelter, but taking everything they own in exchange.~ #58316 */ GOTO 7
  IF ~~ THEN REPLY @19 /* ~Never mind, I'll handle this on my own.~ #58317 */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @20 /* ~Distasteful, to be sure. But not illegal.~ #58318 */
  IF ~~ THEN REPLY @21 /* ~Some refugees left his home because the quarters were so cramped and the food so poor. Surely there are laws governing this sort of thing?~ #58319 */ GOTO 8
  IF ~~ THEN REPLY @22 /* ~I understand. Thank you for your time.~ #58320 */ GOTO 12
  IF ~~ THEN REPLY @23 /* ~No justice for those in need, then? Would that I found that surprising. I'll leave you to your business now.~ #58321 */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @24 /* ~As far as I know, folks're free to strike whatever bargain they like. There was nothing untoward about these refugees leaving, was there?~ #58322 */
  IF ~~ THEN REPLY @25 /* ~What if there was?~ #58323 */ GOTO 9
  IF ~~ THEN REPLY @26 /* ~I'm afraid it seems perfectly innocent. I can't honestly say there was anything suspicious in their leaving.~ #58324 */ GOTO 11
  IF ~~ THEN REPLY @27 /* ~This is getting me nowhere. I'll handle it myself.~ #58325 */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @28 /* ~Well, in that case, we'd have to launch an investigation, of course.~ #58326 */
  IF ~~ THEN REPLY @29 /* ~I did hear... rumors... the refugees disappeared. Under mysterious circumstances. Sold into slavery, perhaps. Yes, that seems likely.~ #58327 */ GOTO 10
  IF ~~ THEN REPLY @30 /* ~I can't lie to you, officer. The matter's as straightforward as they come. There's nothing there to investigate.~ #58328 */ GOTO 11
  IF ~~ THEN REPLY @31 /* ~Forget it. I'll take care of matters myself.~ #58329 */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @32 /* ~That is a serious accusation. We'll have a talk with this Garachen and see what comes of it. Get along now and let me do my job.~ #58330 */
  IF ~~ THEN DO ~AddJournalEntry(61666,QUEST)
SetGlobal("BD_FRAMED_GARACHEN","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 8.1
  SAY @33 /* ~Well, there you go then. Now get along; I've work to do.~ #58331 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 8.2 7.2 7.1 6.1 1.6 1.5 1.4
  SAY @34 /* ~Off with you, then. I've things to do.~ #58332 */
  IF ~~ THEN EXIT
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN DO ~SetGlobal("BD_FRITZ_NO_TALK","BD0104",1)
RealSetGlobalTimer("BD_FRITZ_GET_OUT","BD0104",TEN_ROUNDS)
~ EXIT
END

IF ~  AreaCheck("BD0010")
~ THEN BEGIN 13 // from:
  SAY @35 /* ~Master Garachen, you've been accused of selling your tenants into slavery. You'll be held at Flaming Fist headquarters until we conclude our investigation.~ #58341 */
  IF ~~ THEN EXTERN ~BDGARACH~ 14
END
