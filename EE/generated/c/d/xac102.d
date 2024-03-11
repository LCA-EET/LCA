// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDAUDAM.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDAUDAM.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC102~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~That's nothing you need concern yourself with, girl.~ #58109 */
  IF ~~ THEN DO ~SetGlobal("bd_MDD009a_met_audamar","bd0101",1)
~ EXTERN ~XAC101~ 18
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Well, I'd hate to bore the great hero of Baldur's Gate. We'll just be moving along now. Come away from them, Rohma.~ #66768 */
  IF ~~ THEN DO ~SetGlobal("bd_rohma_aud_ot","bd0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~If you understand that, you'll understand why I'd ask you to be moving on. Now.~ #58114 */
  IF ~~ THEN REPLY @4 /* ~Good day to you, sir. And to you, Rohma.~ #58115 */ EXTERN ~XAC101~ 19
  IF ~  !IsValidForPartyDialogue("dynaheir")
~ THEN REPLY @5 /* ~Of course. It's been nice talking to you, Rohma, but I have to go prepare for the journey. You take care of your grandfather, all right?~ #58116 */ EXTERN ~XAC101~ 21
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN REPLY @5 /* ~Of course. It's been nice talking to you, Rohma, but I have to go prepare for the journey. You take care of your grandfather, all right?~ #58116 */ EXTERN ~BDDYNAHJ~ 36
  IF ~~ THEN REPLY @6 /* ~Mind your tone, old man.~ #58117 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Everyone's heard of you. Not everyone's heard good things.~ [BD58123] #58123 */
  IF ~~ THEN EXTERN ~XAC101~ 20
  IF ~  IsValidForPartyDialogue("safana")
~ THEN EXTERN ~BDSAFANJ~ 30
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY @8 /* ~Mind yours, "hero." I was twenty years a Flaming Fist. I'm not afraid of you. Now push off.~ #58128 */
  IF ~~ THEN REPLY @9 /* ~As you wish.~ #58129 */ EXTERN ~XAC101~ 19
  IF ~~ THEN REPLY @10 /* ~Count yourself lucky the girl is here.~ #58130 */ DO ~SetGlobal("bd_audamar_pissed","bd0101",1)
~ GOTO 5
  IF ~~ THEN REPLY @11 /* ~Twenty years in the Fist will get you the rest of eternity in the ground if you aren't careful.~ #58131 */ DO ~SetGlobal("bd_audamar_pissed","bd0101",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.1
  SAY @12 /* ~Believe that if it helps you sleep at night. Now get gone.~ #58132 */
  IF ~~ THEN EXTERN ~XAC101~ 19
END

IF ~~ THEN BEGIN 6 // from:
  SAY @13 /* ~Come away from <PRO_HIMHER>, Rohma. What have I told you about talking to strangers?~ #56309 */
  IF ~~ THEN DO ~SetGlobal("bd_rohma_aud_ot","bd0101",2)
~ EXIT
END

IF ~  Global("bd_audamar_pissed","bd0101",1)
~ THEN BEGIN 7 // from:
  SAY @14 /* ~I told you to get gone.~ #58140 */
  IF ~~ THEN REPLY @15 /* ~Forgive me. In all this commotion I forgot that we spoke earlier.~ #58141 */ GOTO 8
  IF ~~ THEN REPLY @16 /* ~Oh. You're that fellow.~ #58142 */ GOTO 8
  IF ~~ THEN REPLY @17 /* ~You don't give me orders, old man.~ #58143 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2 7.1 7.0
  SAY @18 /* ~I can't keep you away from my daughter, and I don't need to—Schael can take care of herself. But stay the hells away from my granddaughter, or there will be trouble.~ #58144 */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("safana")
~ THEN EXTERN ~BDSAFANJ~ 31
END

IF ~~ THEN BEGIN 9 // from:
  SAY @19 /* ~I regret any hardships you've endured in your life, but there's nothing I can do about them. I still hope Rohma might enjoy happiness and innocence. That's why I ask—again—that you leave.~ #58146 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 10 // from:
  SAY @20 /* ~Caelar Argent is a madwoman, a chosen of the gods, or possibly both. Whatever the case, she's clearly dangerous. Take care on your journey.~ #58134 */
  IF ~~ THEN REPLY @21 /* ~I will. Thank you.~ #58135 */ GOTO 13
  IF ~  Global("bd_MDD009a_met_audamar","bd0101",0)
~ THEN REPLY @22 /* ~Do I know you?~ #66841 */ DO ~SetGlobal("bd_MDD009a_met_audamar","bd0101",1)
~ GOTO 11
  IF ~~ THEN REPLY @23 /* ~You don't need to tell me.~ #58136 */ GOTO 14
  IF ~~ THEN REPLY @24 /* ~I am well aware of the danger. The Shining Lady has already tried to kill me once.~ #58137 */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @25 /* ~Name's Audamar Corwin. Gauntlet, Flaming Fist. Retired.~ #66842 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26 /* ~You're traveling north with my daughter, Schael. See to it she returns safely. My granddaughter, Rohma, has already lost a father, I'll not see her lose Schael too.~ #66843 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 10.0
  SAY @27 /* ~Farewell, <CHARNAME>.~ #58138 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3 10.2
  SAY @28 /* ~The road's a different beast from the Ducal Palace. But you've got good people around you. Don't be stupid or proud. Let them help you. Farewell, <CHARNAME>.~ #58139 */
  IF ~~ THEN EXIT
END
