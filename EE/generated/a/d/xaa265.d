// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CYDERM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CYDERM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA265~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 9 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Can I help you friend? If not, please do not hesitate to get out of my face. You are interrupting my fun.~ #8473 */
  IF ~  Global("AcceptedJob","GLOBAL",1)
~ THEN REPLY @2 /* ~I'll interrupt your life! Here's a message from a lady friend of yours!~ #8482 */ GOTO 1
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("AcceptedJob","GLOBAL",1)
~ THEN REPLY @3 /* ~I have some merchandise you'll be interested in seeing, but not here. Let's go to a room where there are fewer prying eyes.~ #8483 */ GOTO 3
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("AcceptedJob","GLOBAL",1)
~ THEN REPLY @3 /* ~I have some merchandise you'll be interested in seeing, but not here. Let's go to a room where there are fewer prying eyes.~ #8484 */ GOTO 6
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
Global("AcceptedJob","GLOBAL",1)
~ THEN REPLY @3 /* ~I have some merchandise you'll be interested in seeing, but not here. Let's go to a room where there are fewer prying eyes.~ #8485 */ GOTO 5
  IF ~  Global("AcceptedJob","GLOBAL",1)
~ THEN REPLY @4 /* ~I've come to ask ye to stop bothering a mutual friend of ours.~ #8486 */ GOTO 2
  IF ~  OR(2)
Global("AcceptedJob","GLOBAL",0)
Global("AcceptedJob","GLOBAL",2)
~ THEN REPLY @5 /* ~I am sorry to disturb you, "friend." I'll just be on my way.~ #17544 */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 7.1 5.1 4.2 0.0
  SAY @6 /* ~I trust you mean Areana? I would not have thought her capable of hiring someone to kill me, especially of such a trite issue as this. A simple tryst in the Undercellar and she is prepared to pay me for weeks on end. The nobles are such prudes when it comes to one of their number slumming with a common sneaksman. No matter. I will kill you, and then I shall double how much I demand.~ #8474 */
  IF ~~ THEN DO ~Shout(1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 7.0 5.0 4.1 0.4
  SAY @7 /* ~A mutual friend? Areana? She hired you to come and talk to me? No, you are too heavily armed for mere chitchat. Let me guess; you were to kill me but you want a peaceful solution. You would rather end this diplomatically and save your conscience the trouble of killing someone over a mere tryst in the Undercellar. Let me save you from your dilemma... and get in the first shot!~ #8475 */
  IF ~~ THEN DO ~Shout(1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @8 /* ~Merchandise? I see. Well, it has been a slow night for business. Let's go have a look at what you have. This way.~ #8476 */
  IF ~~ THEN DO ~SetGlobal("CyrdemacMoves","GLOBAL",1)
MoveToPoint([675.784])
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CyrdemacMoves","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~So, what do you have to interest me?~ #8477 */
  IF ~~ THEN REPLY @10 /* ~I would prefer to have no one else here. Tell your friends to leave.~ #8487 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~I wish to talk to you about a mutual friend. I wish you to leave her alone from now on.~ #8488 */ GOTO 2
  IF ~~ THEN REPLY @12 /* ~I have the end of your miserable life! For a lady's honor I will strike you down!~ #8489 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0 0.3
  SAY @13 /* ~And get me alone without me fellows? No, you ask too much. There is something suspicious about all of this. Perhaps you will tell me why you are truly here? If not, I'll put knife in your tenders for taking me away from my drink.~ #8478 */
  IF ~~ THEN REPLY @14 /* ~I am here to ask you to leave a mutual friend of ours alone. Nothing more.~ #8490 */ GOTO 2
  IF ~~ THEN REPLY @15 /* ~I am here to put an end to your filthy life for the honor of a lady!~ #8491 */ GOTO 1
  IF ~~ THEN REPLY @16 /* ~I will not be questioned like this, forget it!~ #17543 */ DO ~Shout(1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @17 /* ~Merchandise? I have never met you before, but you claim to know my business. What sort of merchandise do you have that I would be interested in?~ #8479 */
  IF ~~ THEN REPLY @18 /* ~I need the talents of a fence to move some rather recently burgled antiques.~ #8492 */ GOTO 7
  IF ~~ THEN REPLY @19 /* ~I have need of a smuggler to move some rather curiously enchanted items unnoticed into Waterdeep.~ #8493 */ GOTO 8
  IF ~~ THEN REPLY @20 /* ~I've a rather wealthy noble trussed up outside. I trust you will be interested in ransoming her. I do not wish the headache.~ #8494 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2 6.0
  SAY @21 /* ~That is not my field of expertise, as you would know if you were truly aware of my business needs. Why don't you tell me why you are truly here before I have you gutted for interrupting my drink?~ #8480 */
  IF ~~ THEN REPLY @14 /* ~I am here to ask you to leave a mutual friend of ours alone. Nothing more.~ #8495 */ GOTO 2
  IF ~~ THEN REPLY @15 /* ~I am here to put an end to your filthy life for the honor of a lady!~ #8496 */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @22 /* ~Interesting. Let's go somewhere where we can talk further. I may be interested in the job.~ #8481 */
  IF ~~ THEN DO ~SetGlobal("CyrdemacMoves","GLOBAL",1)
MoveToPoint([675.784])
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9 // from:
  SAY @23 /* ~My name is Cyrdemac. At the moment I am blackmailing a woman named Areana. She had a tryst in the Undercellar that she does not want to be public knowledge. You know what I suggest friend? Why don't you go back to Areana, tell her that I'm dead, and then blackmail her with the threat of revealing her murderous inclinations? I'll be alive, and you'll have gold. We'll both win.~ #8499 */
  IF ~~ THEN DO ~SetGlobal("CharmedCyrdemac","GLOBAL",1)
Wait(10)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @24 /* ~You shouldn't have come back here! Now you'll never leave!~ #8962 */
  IF ~~ THEN EXIT
END
