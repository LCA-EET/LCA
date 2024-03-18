// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NEB.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NEB.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA326~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, you. I wonder how you got out of your cell? Did someone leave it open or perhaps you managed to pinch my key—oh no ya haven't, heh heh. So, are you the group that's wanted for murder on three different counts? Don't try to deny it, I know it's you. Well, heh heh, my name's Neb.~ #2149 */
  IF ~~ THEN REPLY @2 /* ~Who cares what your name is, Neb? Just shut up.~ #2153 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Neb, do you know what's been going on in the city lately?~ #2154 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~So why are you in prison, Neb?~ #2155 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @5 /* ~Hey, I was just trying to be friendly.~ #2150 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~Heh heh, I killed some little street urchins. They're such a clutter to this city, ya know? They scream good too, especially the little girls.~ #2151 */
  IF ~~ THEN REPLY @7 /* ~Filthy monster, shut your mouth.~ #2156 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~So Neb, do you know what's been going on in the city lately?~ #2157 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 0.1
  SAY @9 /* ~Oh yeah, lots of stuff. You know about Duke Eltan, don't ya? He's been diseased. That's why Angelo's in charge now. It would have been Scar, but he went out and got assassinated, heh heh. Ya, the city's gone downhill over the last week. Too bad, heh heh.~ #2152 */
  IF ~~ THEN UNSOLVED_JOURNAL @10 /* ~Afoul of the Law
Once Angelo locked me up, I learned from a criminal called Neb that Duke Eltan is sick and Scar has died.~ #26846 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 4 // from:
  SAY @11 /* ~Heh, heh, you're getting impatient in here, are ye?~ #6310 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  NumTimesTalkedTo(2)
~ THEN BEGIN 5 // from:
  SAY @12 /* ~I've got a way out of here, you know... Heh, hidden it well, haven't I? Search all you want and you won't find it, heh heh.~ #16951 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 even though they appear after this state */
~  NumTimesTalkedTo(3)
~ THEN BEGIN 6 // from:
  SAY @13 /* ~Heh, good thing ol' Neb decided to mix a little bit of illusioncraft with his thievery, eh? Sure, sure... I'll tell you what. Murderer to murderer now, monster to monster, are you wanting out?~ #16952 */
  IF ~~ THEN REPLY @14 /* ~Please, we'll do whatever it takes... It's very important that we get out of here.~ #16953 */ GOTO 7
  IF ~~ THEN REPLY @15 /* ~I'd rather rot in this cell than be indebted to the likes of you.~ #16954 */ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16 /* ~Heh, sure, sure, everyone's wanting out, but does the world really want us out? Maybe it's safer if we all just stay in here, heh... Monster to monster now, murderer to murderer, how many little children passed away at old Neb's hands? Not one, not two, neither four nor seven nor twelve nor twenty but the next one, the next one in the sequence...~ #16955 */
  IF ~~ THEN REPLY @17 /* ~You killed thirty-eight children, Neb... How could you?~ #16957 */ GOTO 9
  IF ~~ THEN REPLY @18 /* ~You killed twenty-six children, Neb... A murderer and a monster, indeed.~ #16956 */ GOTO 9
  IF ~~ THEN REPLY @19 /* ~You killed eighteen children, Neb... The very thought of it sickens me.~ #16958 */ GOTO 9
  IF ~~ THEN REPLY @20 /* ~You killed forty-one children, Neb... May you rot for as many lifetimes in this cell.~ #16959 */ GOTO 9
  IF ~~ THEN REPLY @21 /* ~You killed thirty-three children, Neb... May the gods and all their solars wreak their vengeance.~ #16960 */ GOTO 8
  IF ~~ THEN REPLY @22 /* ~You killed seventy-six children, Neb... All this and no remorse.~ #16961 */ GOTO 9
  IF ~~ THEN REPLY @23 /* ~You killed thirty children, Neb... Do their voices not haunt you in your sleep?~ #16962 */ GOTO 9
  IF ~~ THEN REPLY @24 /* ~You killed thirty-eight children, Neb... May your gnomish soul burn in each of the Nine Hells.~ #16963 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY @25 /* ~Let the solars come and I shall kill them too! In a world without justice, the gods are little more than a divine puppet show. Come, the tunnel's through the wall here, and it is time we cut ourselves free from this confining womb.~ #16964 */
  IF ~~ THEN DO ~EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("CAPCUT02",FALSE)
~ SOLVED_JOURNAL @26 /* ~Afoul of the Law
A killer by the name of Neb helped us break out of the Flaming Fist prison.~ #27317 */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.7 7.6 7.5 7.3 7.2 7.1 7.0
  SAY @32 /* ~Thirty-three! Thirty-three! The entire world should know that Neb murdered thirty-three children in the dead of night! And then you speak of it so disdainfully, too, as if it were beneath you... How many did you kill, then? Thirty-four?~ #16965 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @33 /* ~Heh, then rot you will, rot you will...~ #16967 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 even though they appear after this state */
~  NumTimesTalkedTo(4)
~ THEN BEGIN 11 // from:
  SAY @34 /* ~Heh heh... so you still want to get out, do you? Yes, I do hold the power in this situation, don't I...? You can love me, you can hate me, it doesn't matter... You still must do as I wish. Quick now, a riddle for my captive audience: If you look at me, we look at each other, you with eyes and me with yours. If you speak to me, I only mime your words, for while I wear your lips, I have no voice. What am I, foolish ones? What am I?~ #16968 */
  IF ~~ THEN REPLY @35 /* ~A potato.~ #16969 */ GOTO 12
  IF ~~ THEN REPLY @36 /* ~A mannequin.~ #16970 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~A squid.~ #16971 */ GOTO 12
  IF ~~ THEN REPLY @38 /* ~The wind.~ #16972 */ GOTO 12
  IF ~~ THEN REPLY @39 /* ~A doppelganger.~ #16973 */ GOTO 12
  IF ~~ THEN REPLY @40 /* ~A lover.~ #16974 */ GOTO 12
  IF ~~ THEN REPLY @41 /* ~A mirror.~ #16975 */ GOTO 13
  IF ~~ THEN REPLY @42 /* ~Time.~ #16976 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.7 11.5 11.4 11.3 11.2 11.1 11.0
  SAY @43 /* ~Wrong again! Who knows, maybe I give you riddles with no answers. I love it. I love power. Can you feel it? Ha ha ha...~ #16978 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.6
  SAY @44 /* ~A mirror, yes... Like you to me or me to you, we are the same, we are siblings separated by a thin and fragile pane of silvered glass. Come, let me show you my tunnel that we may make good our escape, my twin!~ #16979 */
  IF ~~ THEN DO ~EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("CAPCUT02",FALSE)
~ SOLVED_JOURNAL @26 /* ~Afoul of the Law
A killer by the name of Neb helped us break out of the Flaming Fist prison.~ #27317 */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 even though they appear after this state */
~  True()
~ THEN BEGIN 14 // from:
  SAY @45 /* ~Yes, another riddle, ha ha! Another riddle for the little children! I have never been and have yet to be. None have ever seen me nor ever shall. The wise plan for my coming yet will never find me, while fools forget I exist and pay when they meet me... Who am I, children? Tell me who I am!~ #16980 */
  IF ~~ THEN REPLY @46 /* ~You are death.~ #16981 */ GOTO 16
  IF ~~ THEN REPLY @47 /* ~You are tomorrow.~ #16982 */ GOTO 15
  IF ~~ THEN REPLY @48 /* ~You are old age.~ #16983 */ GOTO 16
  IF ~~ THEN REPLY @49 /* ~You are sleep.~ #16984 */ GOTO 16
  IF ~~ THEN REPLY @50 /* ~You are the night.~ #16985 */ GOTO 16
  IF ~~ THEN REPLY @51 /* ~You are Judgment.~ #16986 */ GOTO 16
  IF ~~ THEN REPLY @52 /* ~You are the ocean tide.~ #16987 */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @53 /* ~Yesterday, today, tomorrow, I would change none of it! Come, children, my tunnel is just over here. Old Neb will see you safely to its end.~ #16988 */
  IF ~~ THEN DO ~EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("CAPCUT02",FALSE)
~ SOLVED_JOURNAL @26 /* ~Afoul of the Law
A killer by the name of Neb helped us break out of the Flaming Fist prison.~ #27317 */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 17 even though they appear after this state */
~  False()
~ THEN BEGIN 16 // from: 14.6 14.5 14.4 14.3 14.2 14.0
  SAY @54 /* ~Foolish children! You lack the wisdom of age and at this rate you shall ne'er live to gain it! Talk to me again when you have some sense.~ #16989 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("AttackNEB","AR0607",1)
~ THEN BEGIN 17 // from:
  SAY @55 /* ~I'm getting outta here. Take my key and get lost. You are no fun!~ #16990 */
  IF ~~ THEN DO ~EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("CAPCUT02",FALSE)
~ SOLVED_JOURNAL @56 /* ~Afoul of the Law
We escaped the Flaming Fist prison by following a killer named Neb out through a secret passage he had concealed.~ #32175 */ EXIT
END
