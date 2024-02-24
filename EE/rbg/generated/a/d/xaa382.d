// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MAPLE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MAPLE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA382~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~WHAT?! You were going to ask about my name, weren't you? Everyone wants to know about it, and you're probably no different! Well, fine! Maple Willow Aspen IS my name and YES my parents were VERY fond of TREES! I am VERY aware of it, and NO I don't want to hear ANY jokes about family trees and me being the SAP! Are you HAPPY NOW?!~ #11467 */
  IF ~~ THEN REPLY @2 /* ~Actually, I was just interested in directions.~ #11468 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~You have problems? How do you think I FEEL?! HUH? <CHARNAME>! What were they THINKING?! HUH? HA HUH?! WHAT?!~ #11469 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~So, your parents were very fond of trees?~ #11470 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 4.1 3.2 3.0 0.2
  SAY @5 /* ~Eeep.~ #11471 */
  IF ~~ THEN DO ~ForceSpell(Myself,MUSHROOM_FIRE)
Wait(1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Um... perhaps you should... relax a little? G'bye.~ #11472 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @7 /* ~DIRECT... um... d-d-irections? You mean you don't... well then. *cough* What can I help you with?~ #11473 */
  IF ~~ THEN REPLY @4 /* ~So, your parents were very fond of trees?~ #11474 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~I'm just interested in Baldur's Gate. What are the interesting sights?~ #11475 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Um... with all the commotion I think I forgot. Perhaps I will come back later. What was your name again?~ #11476 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @10 /* ~Well... um, I suppose the Hall of Wonders is nice i-if you like gadgetry. It's in the west-central section of the city. Sorcerous Sundries is nice too. That's in the east-central area. Other than that, I don't know. Can I do anything else for you?~ #11477 */
  IF ~~ THEN REPLY @11 /* ~No, thank you.~ #11478 */ GOTO 5
  IF ~~ THEN REPLY @12 /* ~You mentioned trees. Your parents were very fond of them?~ #11479 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13 /* ~Until next time then.~ #11480 */
  IF ~~ THEN EXIT
END
