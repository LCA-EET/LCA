// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW8.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW8.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA428~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 19 20 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~How dare you barge into my room?! I will have you leave at once!~ #8421 */
  IF ~~ THEN DO ~SetGlobal("SpokeToAreana","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Wait!~ #8422 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~Perhaps... perhaps you are the type of people who can help me. I am in need of someone to... perform a service for me. I need someone... removed.~ #8423 */
  IF ~~ THEN REPLY @4 /* ~You wish someone disposed of? I'll not have a part in the killing of innocents. Why should he deserve death?~ #8446 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~I fear I do not have sufficient time for such an assignment. Perhaps another day.~ #8447 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~Removed? Do you intend for me to kill someone?! I'll have none of this! Keep this nefarious plan to yourself!~ #8448 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 /* ~This scoundrel is no innocent! He threatens to ruin my life with... with the spreading of... accusations. He threatens to ruin my reputation and standing unless I pay him an exorbitant sum almost weekly! I beg of thee... you must help me.~ #8424 */
  IF ~~ THEN REPLY @8 /* ~I must decline. Even such a scoundrel as this is not deserving of murder. I sympathize, but cannot help.~ #8449 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~The fiend! He'll be a day's journey down before he knows he's dead! Where can he be found?~ #8450 */ GOTO 6
  IF ~~ THEN REPLY @10 /* ~If he is a weekly drain on your finance, you must be willing to invest heavily in his removal. What will be my reward?~ #8451 */ DO ~SetGlobal("bd_nojournal","AR0121",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11 /* ~Yes, well perhaps some other time then. Whenever you can fit me into your schedule. It's not as though this would be urgent! Begone!~ #8425 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.1 9.1 7.3 3.0 2.2
  SAY @12 /* ~If such is your decision, then so be it. Leave me to my misery! Get out!~ #8426 */
  IF ~  Global("bd_nojournal","AR0121",0)
~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("bd_nojournal","AR0121",1)
Global("AcceptedJob","GLOBAL",1)
~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
EraseJournalEntry(@14)
~ SOLVED_JOURNAL @13 /* ~A Contract Killing
When the noblewoman asked me to kill her blackmailer, one Cyrdemac, I turned her down flat.~ #27335 */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @15 /* ~Thank you indeed! His name is Cyrdemac and he frequents the Elfsong Tavern. I have not been there myself, but I hear it is quite a rough place. You could do the deed in the main bar itself and likely none would call the guards. I know not if he will have friends with him though. Thank you for this. Upon your return I shall pay you 500 gold. A small price to have this embarrassment removed.~ #8427 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",1)
SetGlobal("AreanaAmount","GLOBAL",500)
~ UNSOLVED_JOURNAL @14 /* ~A Contract Killing
My job is to kill a blackmailer named Cyrdemac, and I should find him at the Elfsong Tavern.~ #27334 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 20 22 even though they appear after this state */
~  Global("AcceptedJob","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY @16 /* ~Have you... have you done it? Is he...?~ #8428 */
  IF ~  Global("AreanaAmount","GLOBAL",500)
OR(2)
Dead("Cyrdemac")
Global("CharmedCyrdemac","GLOBAL",1)
~ THEN REPLY @17 /* ~The fool is dead, milady. He will trouble you no more.~ #8452 */ GOTO 12
  IF ~  GlobalGT("AreanaAmount","GLOBAL",500)
OR(2)
Dead("Cyrdemac")
Global("CharmedCyrdemac","GLOBAL",1)
~ THEN REPLY @17 /* ~The fool is dead, milady. He will trouble you no more.~ #8453 */ GOTO 15
  IF ~  !Dead("Cyrdemac")
~ THEN REPLY @18 /* ~He lives still, though not for long.~ #8454 */ GOTO 8
  IF ~~ THEN REPLY @19 /* ~I have no wish to continue with this job. Find another killer to do your dirty work.~ #8455 */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY @20 /* ~Please hurry. The longer this continues the more likely it is he will find out.~ #8429 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @21 /* ~You are very blunt, though I suppose that is to be expected. If gold is that much of a concern for you, you shall have it in abundance. I shall pay you 2,000 gold for your trouble. His name is Cyrdemac, and he frequents the Elfsong Tavern. I have heard it is a rough place, and one could likely commit the deed even in the main room with nary a guard called. Please hurry.~ #8430 */
  IF ~~ THEN REPLY @22 /* ~That is a sufficient reward. I shall return with his head as proof of the deed.~ #8456 */ DO ~SetGlobal("AreanaAmount","GLOBAL",2000)
~ GOTO 11
  IF ~~ THEN REPLY @23 /* ~You shall have to find someone else. I have no wish to be a part of this.~ #8457 */ GOTO 5
  IF ~~ THEN REPLY @24 /* ~That is insufficient. You will have to pay more if you wish this deed done.~ #8458 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @25 /* ~Certainly. I shall double the offer if you so wish it. 4,000 gold for your trouble. Is that acceptable now?~ #8431 */
  IF ~~ THEN REPLY @22 /* ~That is a sufficient reward. I shall return with his head as proof of the deed.~ #8459 */ DO ~SetGlobal("AreanaAmount","GLOBAL",4000)
~ GOTO 11
  IF ~~ THEN REPLY @23 /* ~You shall have to find someone else. I have no wish to be a part of this.~ #8460 */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 9.0
  SAY @26 /* ~I am no bloodthirsty monster. What use would I have for such a grisly trophy? Just do the job and leave all his parts at the scene.~ #8432 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",1)
~ UNSOLVED_JOURNAL @14 /* ~A Contract Killing
My job is to kill a blackmailer named Cyrdemac, and I should find him at the Elfsong Tavern.~ #27334 */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY @27 /* ~Oh, that is just perfect. Wonderful! All that is left is to pay you for your trouble.~ #8433 */
  IF ~~ THEN REPLY @28 /* ~I think not. This fool had a good idea, and I plan to continue where he "left off." I will take your 500, but I demand 500 more every two days until I tire of coming back to get it.~ #8461 */ GOTO 14
  IF ~~ THEN REPLY @29 /* ~I thank you. It was no trouble, really. Better that his kind of scum is removed from society by any means possible.~ #8462 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 16.0 15.0 12.1
  SAY @30 /* ~Indeed. Here is your coin. Our business is concluded, so I trust you will withdraw as soon as possible. It would not do for me to be seen consorting with a known killer. Good day.~ #8434 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
EraseJournalEntry(@14)
GiveGoldForce(500)
~ SOLVED_JOURNAL @31 /* ~A Contract Killing
Cyrdemac is now a late blackmailer, and I've collected my pay from his noble victim.~ #27336 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 16.1 15.2 12.0
  SAY @32 /* ~What?! You are no better than... I suppose I should have seen it in your eyes when we first met. It would seem I was better off with the devil I knew. Very well, there is little I can do to stop you. I shall be here promptly every two days.~ #8435 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
SetGlobal("BlackmailedNoblewoman","GLOBAL",1)
EraseJournalEntry(@14)
GiveGoldForce(500)
SetGlobalTimer("Blackmail","GLOBAL",TWO_DAYS)
SetGlobalTimer("Areana","GLOBAL",TEN_DAYS)
~ SOLVED_JOURNAL @33 /* ~A Contract Killing
Cyrdemac was strictly small time. I killed him all right, but now the noblewoman who paid him will have to pay me instead. If she knows what's good for her, she'll turn up every two days to keep my purse full.~ #27337 */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @34 /* ~Oh, that is just perfect. Wonderful! All that is left is to pay you for your trouble. I fear that I am unable to give you the money I promised, however. Please forgive me, but I was desperate and you seemed so preoccupied with the gold. I figured that I must offer a large sum to get the deed done. I apologize, but I have just 500 gold to give you.~ #8436 */
  IF ~~ THEN REPLY @35 /* ~That will suffice, though you needn't have lied. It was worth it just to have scum such as him off the streets.~ #8463 */ GOTO 13
  IF ~~ THEN REPLY @36 /* ~What?! This is intolerable! I demand the gold I was promised!~ #8464 */ GOTO 16
  IF ~~ THEN REPLY @37 /* ~No matter. I have other plans that shall make up the difference in the long term. I will take your 500, but I demand 500 more every two days. If I do not receive it, people will hear of your murderous ways.~ #8465 */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @38 /* ~You may demand all you wish, but it will do you no good. I simply do not have the gold I promised. The 500 I have offered is the most I can give. I am sorry.~ #8437 */
  IF ~~ THEN REPLY @35 /* ~That will suffice, though you needn't have lied. It was worth it just to have scum such as him off the streets.~ #8466 */ GOTO 13
  IF ~~ THEN REPLY @37 /* ~No matter. I have other plans that shall make up the difference in the long term. I will take your 500, but I demand 500 more every two days. If I do not receive it, people will hear of your murderous ways.~ #8467 */ GOTO 14
END

IF WEIGHT #5 /* Triggers after states #: 19 20 22 even though they appear after this state */
~  !GlobalTimerExpired("Blackmail","GLOBAL")
Global("BlackmailedNoblewoman","GLOBAL",1)
GlobalLT("Shakedown","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY @39 /* ~It is not time for your pickup yet, and I'll not suffer your company otherwise. Get out!~ #8439 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 20 22 even though they appear after this state */
~  GlobalTimerExpired("Blackmail","GLOBAL")
Global("BlackmailedNoblewoman","GLOBAL",1)
GlobalLT("Shakedown","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY @40 /* ~It's you again. Must you be so bloody prompt? Here is your gold, now get out!~ #8440 */
  IF ~~ THEN DO ~GiveGoldForce(500)
SetGlobalTimer("Blackmail","GLOBAL",TWO_DAYS)
IncrementGlobal("Shakedown","GLOBAL",1)
ReputationInc(-1)
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
Global("AcceptedJob","GLOBAL",1)
Global("AreanaAmount","GLOBAL",500)
~ THEN BEGIN 19 // from:
  SAY @41 /* ~Here is the 500 gold that I owe you. I feel that I owe you more for your gallant acts. Here, take this gem, this should be satisfactory payment.~ #8468 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
EraseJournalEntry(@14)
GiveGoldForce(500)
GiveItem("MISC20",LastTalkedToBy)
~ SOLVED_JOURNAL @42 /* ~A Contract Killing
Killing is an awful lot of work. How much easier it was to charm the woman who wanted me to kill Cyrdemac and simply ask her to reward me now.~ #27338 */ EXIT
END

IF WEIGHT #1 ~  StateCheck(Myself,STATE_CHARMED)
Global("AcceptedJob","GLOBAL",1)
!Global("AreanaAmount","GLOBAL",500)
~ THEN BEGIN 20 // from:
  SAY @43 /* ~I wish I had the money I had promised you, but I have only this 500 gold. Here, take this gem, perhaps this will balance the inequity.~ #8469 */
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
EraseJournalEntry(@14)
GiveGoldForce(500)
GiveItem("MISC20",LastTalkedToBy)
~ SOLVED_JOURNAL @42 /* ~A Contract Killing
Killing is an awful lot of work. How much easier it was to charm the woman who wanted me to kill Cyrdemac and simply ask her to reward me now.~ #27338 */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 22 even though they appear after this state */
~  Global("AcceptedJob","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY @44 /* ~I'll not have you near me! I should know better than to slum with the likes of you!~ #9126 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  GlobalTimerExpired("Areana","GLOBAL")
!Exists("TorLobo")
!Dead("TorLobo")
~ THEN BEGIN 22 // from:
  SAY @45 /* ~I've become very tired of your blackmail. Today I have a little surprise for you. I hope you like it! Tor Lobo! Kill these bandits.~ #17322 */
  IF ~~ THEN DO ~CreateCreature("TORLOB",[349.474],S)
~ EXIT
END
