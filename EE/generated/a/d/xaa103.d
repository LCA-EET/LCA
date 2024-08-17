// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOWBA.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOWBA.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA103~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 6 7 8 9 10 even though they appear after this state */
~  RandomNum(11,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Did ya hear how dem mines at Nashkel were shut down for the longest time? Somebody went in there and made short work of the bastards, and now it's open again. It'll take a while for the iron stores to build up again, but them folks sure helped us all out.~ #1619 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 7 8 9 10 even though they appear after this state */
~  RandomNum(11,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~The smiths 'ere in town don't seem to be having such a great time, what with the iron shortage. It's getting a little better now though. Gonna be a while before everything is back to normal though. I still think Amn was behind it all.~ #1620 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 6 7 8 9 10 even though they appear after this state */
~  RandomNum(11,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I heard that the Amnian and Zhentarim are the duffers who've been causing all this trouble lately. We ought to invade Amn and show 'em how we treat treacherous scum such as them!~ #1621 */
  IF ~~ THEN JOURNAL @4 /* ~Rising Tensions with Amn
The citizens of Baldur's Gate are paranoid of a possible war against Amn.~ #27282 */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 6 7 8 9 10 even though they appear after this state */
~  RandomNum(11,4)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~Duke Eltan's been mobilizing the Flaming Fist. It's probably because of those Amnian. They're always up to no good. I hear they were behind the trouble with those bandits. Hanging's too good for the likes of them.~ #1622 */
  IF ~~ THEN JOURNAL @4 /* ~Rising Tensions with Amn
The citizens of Baldur's Gate are paranoid of a possible war against Amn.~ #27282 */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 6 7 8 9 10 even though they appear after this state */
~  RandomNum(11,5)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~This whole iron shortage, it's just a precursor to an Amnian invasion. Trust me, I know. All indications point their way; it's so obvious. It's like they were too stupid to try to cover their tracks.~ #1623 */
  IF ~~ THEN JOURNAL @4 /* ~Rising Tensions with Amn
The citizens of Baldur's Gate are paranoid of a possible war against Amn.~ #27282 */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 6 7 8 9 10 13 16 19 20 21 even though they appear after this state */
~  RandomNum(11,11)
~ THEN BEGIN 5 // from:
  SAY @7 /* ~Those damn Amnian, always looking for a way to take more off of anyone they can. They are so foolish to risk war with Baldur's Gate. I don't know what they hope to gain.~ #1624 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Have you heard of this new guy who's moved to the Gate? Sarevok's his name, and he's really popular with the nobles. From what I hear he's part of the Iron Throne and they're a bunch of snakes.~ #1625 */
  IF ~~ THEN UNSOLVED_JOURNAL @9 /* ~The Rise of Sarevok
Sarevok seems to be making quite the splash in the city of Baldur's Gate.~ #27283 */ EXIT
END

IF WEIGHT #1 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 7 // from:
  SAY @10 /* ~I've been hearing the name Sarevok a lot lately. He's a newcomer to town who's been throwing around a lot of money. Most who've met him have really taken a shine to the guy.~ #1626 */
  IF ~~ THEN UNSOLVED_JOURNAL @9 /* ~The Rise of Sarevok
Sarevok seems to be making quite the splash in the city of Baldur's Gate.~ #27283 */ EXIT
END

IF WEIGHT #2 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY @11 /* ~Have you heard of this Sarevok guy? He's the guy who uncovered those southern adventurers as the frauds they've been all along.~ #1627 */
  IF ~~ THEN UNSOLVED_JOURNAL @9 /* ~The Rise of Sarevok
Sarevok seems to be making quite the splash in the city of Baldur's Gate.~ #27283 */ EXIT
END

IF WEIGHT #3 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 9 // from:
  SAY @12 /* ~With one of the Grand Dukes dead and another dying there's a lot of talk about who will replace them. My bet's on Sarevok. He's rich and popular.~ #1628 */
  IF ~~ THEN UNSOLVED_JOURNAL @13 /* ~The Rise of Sarevok
Sarevok seems to be a popular choice to replace the deceased Entar Silvershield.~ #27091 */ EXIT
END

IF WEIGHT #4 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 10 // from:
  SAY @14 /* ~They're here, they're right here! Them niffynaffies that murdered the Iron Throne leaders!~ #1629 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @15 /* ~Sorry, buddy, but I'm just simple folk and don't know anything about politics and such.~ #6421 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @16 /* ~I'll box your ears if you step an inch closer!~ #9046 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~  RandomNum(11,6)
~ THEN BEGIN 13 // from:
  SAY @17 /* ~Hey there, friend. Ye're some kinda adventurer, aren't ya? Well, I've heard that Commander Scar's been on the lookout for some hardy folk. Won't say why he needs more mercenaries, but then that's Flaming Fist business.~ #17716 */
  IF ~~ THEN REPLY @18 /* ~Thanks for the pointer.~ #17718 */ GOTO 14
  IF ~~ THEN REPLY @19 /* ~Who is this "Commander Scar"?~ #17719 */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @20 /* ~No problem, have yourself a good time now.~ #17720 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @21 /* ~Scar? He's the second-in-command of the Flaming Fist, the right hand man of Duke Eltan. A good soldier that one, always on the lookout to keep the city a safe place. You look like adventurers. Maybe you should go see him.~ #17721 */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  RandomNum(11,7)
~ THEN BEGIN 16 // from:
  SAY @22 /* ~Mite pretty town, ain't this? A word to the wise, though: She's all surface. Scratch her a bit, and that rot shines through, I tell ya. Check out the Undercellar sometime. Ye'll see what I'm meanin'.~ #16797 */
  IF ~~ THEN REPLY @23 /* ~Why, nothing bad could ever happen in such a beautiful city!~ #17726 */ GOTO 17
  IF ~~ THEN REPLY @24 /* ~The Undercellar? What happens there? Anything to do with the folks from the Iron Throne?~ #17727 */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @25 /* ~Aye, well the Gate, she'll learn ya soon enough. Ain't nothing or no one ever comes to this city without gettin' their souls a little blacker afore they go...~ #17728 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @26 /* ~Mayhaps it does, but I wouldn't know. That place takes all types: the filthy rich and the dirty poor, the brightest of rogues and the most tarnished of holy men... Aye, for there walk the ladies of the night and all souls sink 'fore their kisses, like moths to the light. Now go, it is best not to linger on such thoughts.~ #17730 */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~  RandomNum(11,8)
~ THEN BEGIN 19 // from:
  SAY @27 /* ~Damn it all! You go through a hard day's work, just so you can see some fancy pantsy adventurers strolling down the streets like they own the city. Why don't ya get a real job, ya flakes?~ #17964 */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  RandomNum(11,9)
~ THEN BEGIN 20 // from:
  SAY @28 /* ~I have to tell ya, keep away from anybody claiming to be a member of the Iron Throne trading cartel. They're bad folk, and not to be trusted.~ #17966 */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~  RandomNum(11,10)
~ THEN BEGIN 21 // from:
  SAY @29 /* ~Hey, ain't you those heroes from down south? You guys did real good, wupping those bandits' asses. I always wanted to be an adventurer, but ya know how things work out. Good luck to all of ya!~ #17968 */
  IF ~~ THEN EXIT
END
