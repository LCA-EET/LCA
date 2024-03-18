// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIKLOS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIKLOS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA134~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 9 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ 'Ere, stop a moment. I've got a word or two ye need to hear.~ #2761 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Aye, you're a fine group o' mercenaries are you? Leastwise that's the word on the street, that you do the odd job here 'n there? I've a boss who'd like to have a word wit' you if you can spare the time. He don't ask fer free though, and here be 50 gold just to hear him out.~ #2762 */
  IF ~~ THEN REPLY @3 /* ~Move along, stranger. I've no time to dawdle with you.~ #2763 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~50 gold just to listen? A fair deal, lead on.~ #2764 */ DO ~GivePartyGold(50)
~ GOTO 8
  IF ~~ THEN REPLY @5 /* ~50 gold may get one ear, but I've another to support as well.~ #2765 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @6 /* ~The gold be a gift o' my employer. Do you not think it right rude to ask fer more without even speaking to him? No more from me, so follow or don't.~ #2766 */
  IF ~~ THEN REPLY @7 /* ~50 gold just to listen? A fair deal. Lead on.~ #2780 */ DO ~GivePartyGold(50)
~ GOTO 8
  IF ~~ THEN REPLY @3 /* ~Move along, stranger. I've no time to dawdle with you.~ #2781 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~I'll follow, I'll follow. No need to get snippy.~ #2782 */ DO ~GivePartyGold(50)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.1 1.0
  SAY @9 /* ~Disappointing. I'll leave you to your quiet little stroll then.~ #2767 */
  IF ~~ THEN DO ~EscapeArea()
~ SOLVED_JOURNAL @10 /* ~Niklos's Master
A youngster named Niklos approached me on the street and offered me 50 gold just to speak with his master. I declined.~ #27323 */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11 /* ~Best be keeping a low profile about yourself, you tardy fool. Weren't no small insult to my boss, you taking that 50 gold and then missin' the meeting. Not a good career move to earn the ire o' the master of the Thieves' Guild. I'd be advising you to stay clear any dark corners.~ #2768 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @12 /* ~ 'Ere be my intrepid layabouts again. Have ye time enough fer a visit now, or did I pay you 50 gold to be ignored?~ #2769 */
  IF ~~ THEN REPLY @13 /* ~My apologies for keeping you waiting. Lead on.~ #2770 */ DO ~GivePartyGold(50)
~ GOTO 8
  IF ~~ THEN REPLY @14 /* ~I've no more interest in you now than before. Take your 50 gold back and leave me be.~ #2771 */ GOTO 7
  IF ~~ THEN REPLY @15 /* ~Your 50 gold did indeed hire my ear, but only for a moment. Begone, lest I throw in a fist free of charge.~ #2772 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @16 /* ~You're a right confusing individual, the way you invite trouble. Rest assured, you'll be hearing about this again. A friendly warning: Stay out o' dark alleys.~ #2773 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17 /* ~I'll take the gold back, but it don't mean much. Not having the courtesy to even meet with my employer is an insult he'll not soon forget. He didn't become master o' the Thieves' Guild by suffering ignorance from the likes of you.~ #2774 */
  IF ~~ THEN DO ~TakePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 2.2 2.0 1.1
  SAY @18 /* ~A wise choice o' action. Now just follow me, an' I'll show ya the way ta the guild. If ye're asked the password, it's "Fafhrd." When ye're in the guild, just look fer the man named Alatos "Ravenscar" Thuibuld.~ #2775 */
  IF ~~ THEN DO ~MoveToPoint([1439.1313])
OpenDoor("DOOR0151")
MoveToPoint([1456.1262])
DestroySelf()
~ UNSOLVED_JOURNAL @19 /* ~Niklos's Master
A youngster named Niklos gave me 50 gold to meet with his master. I am to follow him to a nondescript building. If I am asked for a password, "Fafhrd" should be my response.~ #27324 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9 // from:
  SAY @20 /* ~Niklos be my label, and I am but the simple messenger for Alatos. A friendly word for you, do not cross him.~ #6473 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  !AreaCheck("ar0153")
Global("Chapter","GLOBAL",7)
~ THEN BEGIN 10 // from:
  SAY @21 /* ~ 'Ere there! Secure the door behind you, lest some passing spy put the eyes on us! What are you doing back in the "Gate"? Every night-walker in town be keeping a low-end profile, what with the guards putting force behind their swords. Not safe to wander; not safe at all. Alatos has gone deep under, so as not to be warmin' a bunk in the jailhouse... or worse! Lost most our number, we have. Stay if you wish, but here be no more safe than the street outside.~ #4300 */
  IF ~~ THEN DO ~EscapeAreaObjectMove("ar0153","door0153",521,158,S)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @22 /* ~You've made no friends here! Move along!~ #9070 */
  IF ~~ THEN EXIT
END
