// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NARLEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NARLEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA276~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 33 even though they appear after this state */
~  Global("TalkedToNarlen","GLOBAL",0)
!InParty([0.0.0.THIEF_ALL])
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So I's at daggers drawing with him, an' he drops the swag an' runs! Me stomach's in cupboard till season end, gold-wise.~ #2881 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Global("TalkedToNarlen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~ 'Ere now, I know of you. New sneaksmen ye be, though I canna see no need. Alatos need but look at home fer to find a dab at thievery. Mahaps we be testing yer talent, 'for ye rank riders bungle the score. Ye up to me task?~ #2882 */
  IF ~~ THEN REPLY @3 /* ~I have no idea what you just said. Do you speak Common?~ #2883 */ DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)
SetGlobal("TalkedToThief","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I'll pass any test you set, and then some! You'll not discredit me with your games!~ #2884 */ DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)
~ GOTO 4
  IF ~  !Global("ResarAttack","GLOBAL",1)
Global("HelpAlatos","GLOBAL",1)
~ THEN REPLY @5 /* ~Aye, ye natty clapperdogeon. I be here at Alatos's call, but I no be here for cloyin' babycandy. Speak yer cause with good cog.~ #2885 */ DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("ResarAttack","GLOBAL",1)
Global("HelpAlatos","GLOBAL",1)
~ THEN REPLY @6 /* ~I'll not take another duty while working for Alatos. I'll do but one, but do it well!~ #2886 */ DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 31.0 3.0 1.0
  SAY @7 /* ~Feh! Ye be no thief if ye can't speak the cant! Ye talk with Alatos, 'fore ye get killed. Now hop the twig and get thee hence, ye jackanapes!~ #2887 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EscapeArea()
~ JOURNAL @8 /* ~Narlen
In the Thieves' Guild I met one Narlen, but I couldn't understand anything he said.~ #27306 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @9 /* ~Do it well or do it no, ye have a tenday to put to gallows. Twice one night is all I take, and ye gain a measure o' guilded respect. None o' the nightwalkers trust untested allies. Decision switch?~ #2888 */
  IF ~~ THEN REPLY @3 /* ~I have no idea what you just said. Do you speak Common?~ #2925 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I'll pass any test you set, and then some! You'll not discredit me with your games!~ #2926 */ GOTO 4
  IF ~  !Global("ResarAttack","GLOBAL",1)
Global("HelpAlatos","GLOBAL",1)
~ THEN REPLY @5 /* ~Aye, ye natty clapperdogeon. I be here at Alatos's call, but I no be here for cloyin' babycandy. Speak yer cause with good cog.~ #2927 */ GOTO 5
  IF ~  !Global("ResarAttack","GLOBAL",1)
Global("HelpAlatos","GLOBAL",1)
~ THEN REPLY @6 /* ~I'll not take another duty while working for Alatos. I'll do but one, but do it well!~ #2928 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 31.1 3.1 1.1
  SAY @10 /* ~We'll spy yer talent soon enough. Ye but need to keep an eye this first night. I and Rededge will command the taking. The mark be a noble house, aside the Splurging Sturgeon. Gold to split thrice amongst, followed soon by new mark if ye please. Up to the deed?~ #2889 */
  IF ~~ THEN REPLY @11 /* ~A better way to drop the night I'll not think in this life, me fellows! Where do we link afore the deed?~ #2929 */ GOTO 8
  IF ~~ THEN REPLY @12 /* ~I'd be a mite more interested with a larger piece of the prize.~ #2930 */ GOTO 6
  IF ~~ THEN REPLY @13 /* ~Petty burglary is not my field. I have more important jobs to do.~ #2931 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 31.2 3.2 1.2
  SAY @14 /* ~The cant ye speak, and done so well! Ye be in the brethren yet, by Mask! I let ye in on the score, and a ripe sight she be. Our first mark be the house De'Mallonblade, off the Splurging Sturgeon. Poor nobles by appearance, they be adept in small smuggling, and I hear tell of a payment to be received. Gold to split but three sides, 'tween me, Rededge here, and you. 'Tis a right simple bit o' skullduggery this first night, and we but need yer nighteye to spy the lane. Up fer the task?~ #2894 */
  IF ~~ THEN REPLY @11 /* ~A better way to drop the night I'll not think in this life, me fellows! Where do we link afore the deed?~ #2932 */ GOTO 8
  IF ~~ THEN REPLY @12 /* ~I'd be a mite more interested with a larger piece of the prize.~ #2933 */ GOTO 6
  IF ~~ THEN REPLY @13 /* ~Petty burglary is not my field. I have more important jobs to do.~ #2934 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1 4.1
  SAY @15 /* ~Quite the guts ye display. I should be careful about them, lest ye lay filleted outside the Sturgeon. One of three or nothing.~ #2895 */
  IF ~~ THEN REPLY @11 /* ~A better way to drop the night I'll not think in this life, me fellows! Where do we link afore the deed?~ #2935 */ GOTO 8
  IF ~~ THEN REPLY @13 /* ~Petty burglary is not my field. I have more important jobs to do.~ #2936 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~This measly mark be not worth my time. Save your copper ante for your mother's pin change.~ #2937 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 31.3 6.2 6.1 5.2 4.2 3.3
  SAY @17 /* ~I'm right knackered wasting the dark on ye curb pogy! The mark is off, and ye be done with me!~ #2896 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 5.0 4.0
  SAY @18 /* ~There's the larcenous fire burnin'! We meet at dusk astride the Sturgeon, and bring only yerself in darks. Yer group will naught but get the watch nervous.~ #2897 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
SetGlobal("NarlenMove","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @19 /* ~Narlen's Heist
A THIEF from my party is to meet Narlen Darkwalk by the Splurging Sturgeon Inn. The rest of the party must wait out of sight, or Narlen will call the deal off. After we've met, we will go to the De'Mallonblade household, where he and his partner Rededge will go inside while I stand watch outside. If anything goes wrong, I am to call the alarm and run. No one is to be hurt, especially no city guards. If all goes well, we will meet back at the Thieves' Guild and plan another caper.~ #27307 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY @20 /* ~Blasted damn and demons all, what be your mishearing?! I say it plain as flies on backside, get yer group gone! Nothin' suspect about a SCORE of sneakers in the alley! May as well shine the sun itself and yell "HERE BE STEALING!" Get them gone or ye be out!~ #2899 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",1)
!See([PC.0.0.MAGE])
!See([PC.0.0.FIGHTER])
!See([PC.0.0.CLERIC])
!See([PC.0.0.BARD])
!See([PC.0.0.PALADIN])
!See([PC.0.0.FIGHTER_MAGE])
!See([PC.0.0.FIGHTER_CLERIC])
!See([PC.0.0.DRUID])
!See([PC.0.0.RANGER])
!See([PC.0.0.CLERIC_MAGE])
!See([PC.0.0.FIGHTER_DRUID])
!See([PC.0.0.FIGHTER_MAGE_CLERIC])
!See([PC.0.0.CLERIC_RANGER])
!See([PC.0.0.SORCERER])
!See([PC.0.0.MONK])
!See([PC.0.0.SHAMAN])
~ THEN BEGIN 10 // from:
  SAY @21 /* ~Now we're up to the business! Keep to the shadows and the watch will be blind to our sneak. You will spy the road while Rededge an' I plunder within. Be on yer cautions and yell the warnin' if ye see the soldierman. I'd no fight 'em if I was you, just call the call and make for the dark. If they give chase, ye fade to black an' keep quiet. Never known a guard to spot a thief scared to hiding. Stand from here while we two are off and in. We'll be back before the gold knows it's ours.~ #2900 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("NARCUT01",FALSE)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",3)
Dead("Watchm")
~ THEN BEGIN 11 // from:
  SAY @22 /* ~ 'Ere ye are, ye blasted squeaker! Ye got dirt fer brains? Ye must, cause ye growin' something in yer ears to make ye not hear! I said nix on fightin' the guard! If no one scratches a soul case, it's just a petty theft. Ye break a watchman and they hunt ye 'cross the planes! The city'll be pins 'n needles for a week, long after the window closes on the score for tonight! We scored 300 gold this last, and that's all I'll get with you! Take it 'n go, ye Captain Hackum!~ #2901 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@19)
SetGlobal("NarlenMove","GLOBAL",10)
GiveGoldForce(300)
EscapeArea()
~ SOLVED_JOURNAL @23 /* ~Narlen's Heist
Narlen and Rededge successfully got away with the gold from the De'Mallonblade house, but I killed one of the city guard in our escape. The Flaming Fist will be extra watchful for the next few days, so Narlen has called off any future jobs. I've been fairly paid, but I don't think they like my style.~ #27308 */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",3)
Global("HostileWatch","GLOBAL",0)
!Dead("Watchm")
~ THEN BEGIN 12 // from:
  SAY @24 /* ~Ye would show yer jack nasty face back here after runnin' out on us?! Ye didn'a call the warn, ye gacking mather! Guardsman caught us unknowin' blind, an' Rededge caught his blade in the softside! A rogue-duel I ask, to the dyin', 'twixt ye and me! Any o' yer friends twitch a blade and my droogs will slab the lot! I'll quiet ye good, so's Rededge can kick yer hind across the lower planes hisself!~ #2902 */
  IF ~~ THEN DO ~EraseJournalEntry(@19)
SetGlobal("NarlenMove","GLOBAL",10)
~ SOLVED_JOURNAL @25 /* ~Narlen's Heist
Narlen wasn't happy to see me at the Thieves' Guild. When I failed to call the alarm, a city guard killed Rededge. Narlen challenged me to a duel. No matter who wins, I'm sure I've burned my bridge with the Thieves' Guild.~ #27309 */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @26 /* ~Yer soul a swaddling demon teether! Damn ye, as it should be! The rest o' ye stay clear o' me 'n mine. I've venom for each, and the corners here be black as death.~ #2903 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
Shout(2)
EscapeArea()
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",3)
Global("HostileWatch","GLOBAL",1)
!Dead("Watchm")
~ THEN BEGIN 14 // from:
  SAY @27 /* ~ 'Ere there, good fortune ye return to us! Quite the scramble down the alleys, with no less than ten and four guards on our run 'n hides! Good call that alarm o' yers! Would have caught us unknowin' wise without ye. Had enough time to bail the room with gold in pocket, so we've 300 gold to divvy. None too bad a haul, but a mere pittance stacked aside next dark's targy. Ye in with us agin?~ #2904 */
  IF ~~ THEN REPLY @28 /* ~My neck on the line for a mere 100 gold? If this be the level o' your burglary, I'd sooner work the barnyard!~ #2975 */ GOTO 15
  IF ~~ THEN REPLY @29 /* ~Exciting work like none other! I'm raring for another grasp at careless gold!~ #2976 */ GOTO 17
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @30 /* ~It was a world of fun and profit, but I've not the time for another night.~ #2977 */ GOTO 16
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @30 /* ~It was a world of fun and profit, but I've not the time for another night.~ #2983 */ GOTO 32
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @31 /* ~Yer noose-catcher been near the line since ye chose the thief-life! Do ye no like the thievery, or do ye just want to wear black and talk funny?~ #2905 */
  IF ~~ THEN REPLY @29 /* ~Exciting work like none other! I'm raring for another grasp at careless gold!~ #2978 */ GOTO 17
  IF ~~ THEN REPLY @30 /* ~It was a world of fun and profit, but I've not the time for another night.~ #2979 */ GOTO 16
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @32 /* ~It ain't worth the risking. Find another pair o' eyes.~ #2980 */ GOTO 16
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @32 /* ~It ain't worth the risking. Find another pair o' eyes.~ #2981 */ GOTO 32
END

IF ~~ THEN BEGIN 16 // from: 15.2 15.1 14.2
  SAY @33 /* ~So be yer wish. I'll no have someone watch me hindquarters, when they no want to be there at all. We be done with each of us.~ #2906 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@19)
GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",10)
EscapeArea()
~ SOLVED_JOURNAL @34 /* ~Narlen's Heist
I met Narlen and Rededge back at the Thieves' Guild after our run from the city guards. We successfully got away with the gold, but I don't wish to risk my neck in such a way again.~ #27310 */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 14.1
  SAY @35 /* ~ 'Tis so for me an' Rededge. The mark tonight is a ripe plum for plucking, and a mite more dangerous. No petty gold, 'cause you passed that intro. This dark holds a jewel fence, with pretties brought stolen from Waterdeep. A mage of meager power called for a component gem called a rogue stone, and Gantolandan answered. His home be our target, but he be a side more cagey than last. We join at dusk by the Blade and Stars to sort the deed.~ #2907 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@19)
GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",4)
EscapeArea()
~ UNSOLVED_JOURNAL @36 /* ~Narlen's Heist
I met Narlen and Rededge back at the Thieves' Guild after we successfully fled from the city guards. We got the gold we went for, and have set our sights higher for tonight. A jewel fence named Gantolandan is our target, and we are to meet by the Blade and Stars to sort out the deed: the theft of a valuable rogue stone. Again, only a thief must be visible. All other party members must wait out of sight.~ #27311 */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 19 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",4)
~ THEN BEGIN 18 // from:
  SAY @37 /* ~Blasted damn and demons all, what be your mishearing?! I say it plain as flies on backside, get yer group gone! Nothin' suspect about a SCORE of sneakers in the alley! May as well shine the sun itself and yell "HERE BE STEALING!" Get them gone or yer out!~ #2908 */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",4)
!See([PC.0.0.MAGE])
!See([PC.0.0.FIGHTER])
!See([PC.0.0.CLERIC])
!See([PC.0.0.BARD])
!See([PC.0.0.PALADIN])
!See([PC.0.0.FIGHTER_MAGE])
!See([PC.0.0.FIGHTER_CLERIC])
!See([PC.0.0.DRUID])
!See([PC.0.0.RANGER])
!See([PC.0.0.CLERIC_MAGE])
!See([PC.0.0.FIGHTER_DRUID])
!See([PC.0.0.FIGHTER_MAGE_CLERIC])
!See([PC.0.0.CLERIC_RANGER])
!See([PC.0.0.SORCERER])
!See([PC.0.0.MONK])
!See([PC.0.0.SHAMAN])
~ THEN BEGIN 19 // from:
  SAY @38 /* ~This dark we'll see how ye are on the inside. Rededge will eye spy the alley, while ye and I are search an' keep. Follow on to the door, I'll be the picker. Once we're inside, get the gems, then we make for the Guild. Ye won't be seeing much of me, I'll be keeping to the shadows.~ #2909 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
ActionOverride("Rededge",MoveToPoint([627.1082]))
ActionOverride("Rededge",PlaySound("ACT_07"))
ActionOverride("Rededge",DestroySelf())
MoveToPoint([761.1228])
OpenDoor("door1312")
SetGlobal("NarlenMove","GLOBAL",5)
DestroySelf()
~ UNSOLVED_JOURNAL @39 /* ~Narlen's Heist
While Rededge keeps watch and Narlen covers my back, I'll be the one going in to do the job tonight. When it's finished, we'll all meet back at the Thieves' Guild.~ #27312 */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @40 /* ~What is gone to mayhem now?! Grab the scag and get us hence, the watch have ears as well as I!~ #2912 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @41 /* ~By the Shadowlord, back up ye go! This skulk fer naught if we no find the loot! Keep e-spying!~ #2915 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @42 /* ~Well! I did'na even hear ye slide up! And ye have the pretties! Off we are, afore we wake these deadfast sleepers! Back at the guild we make our meeting!~ #2916 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",5)
!PartyHasItem("MISC45")
~ THEN BEGIN 23 // from:
  SAY @43 /* ~Never has fallen to Faerûn a more bungled thief! Wakin' Gantolandan brought more guard than rats to cheese. Or mayhaps cats to rats! I don't fancy being the rodent in the mix! Not a gem fer the trouble neither. If this be common knowin' I'll get no rest in guild. Neither ye, 'cause many brethren will query Alatos why he sought ye. Ye no proved yer worth this night past.~ #2917 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@19)
EraseJournalEntry(@36)
EraseJournalEntry(@39)
SetGlobal("NarlenMove","GLOBAL",6)
EscapeArea()
~ SOLVED_JOURNAL @44 /* ~Narlen's Heist
I met Narlen back at the Thieves' Guild, and he was unhappy. Our first job went off fine, but this time I couldn't deliver the goods. It feels like all the other thieves are judging me.~ #27313 */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @45 /* ~A tickle more running than I care to do in a dragon's age! Such is the way o' the nightsneak, but not another profession pays as well. Ye be quite the force under the weight o' pursuit, grabbin' the pretties while hoofin' it fast! Ye prove to me an' brethren all that ye be here for good reason. Split the jemmies thrice, and tonight we'll suck the monkey a keg apiece tavern wise!~ #2918 */
  IF ~~ THEN DO ~EraseJournalEntry(@19)
EraseJournalEntry(@36)
EraseJournalEntry(@39)
SetGlobal("NarlenMove","GLOBAL",6)
TakePartyItem("MISC45")
GiveItemCreate("MISC36",LastTalkedToBy,3,0,0)
Hide()
EscapeArea()
~ SOLVED_JOURNAL @46 /* ~Narlen's Heist
I met Narlen back at the Thieves' Guild and he was understandably happy. We successfully stole the gems from Gantolandan and have split this rich treasure between us. I get the feeling that I have proved myself worthy of the guild's respect and am considered one of their own. Certainly this will help me in the future.~ #27314 */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",5)
PartyHasItem("MISC45")
~ THEN BEGIN 25 // from:
  SAY @47 /* ~Well snuck, by any measure! Gantolandan wakes this morn none the wiser, but more the poorer! All the guild will hear o' this, and ye be welcomed as brethren. Split the gemmies thrice, and tonight we'll suck the monkey a keg apiece tavern-wise!~ #2919 */
  IF ~~ THEN DO ~EraseJournalEntry(@19)
EraseJournalEntry(@36)
EraseJournalEntry(@39)
SetGlobal("NarlenMove","GLOBAL",7)
TakePartyItem("MISC45")
GiveItemCreate("MISC36",LastTalkedToBy,3,0,0)
Hide()
EscapeArea()
~ SOLVED_JOURNAL @46 /* ~Narlen's Heist
I met Narlen back at the Thieves' Guild and he was understandably happy. We successfully stole the gems from Gantolandan and have split this rich treasure between us. I get the feeling that I have proved myself worthy of the guild's respect and am considered one of their own. Certainly this will help me in the future.~ #27314 */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 33 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",8)
~ THEN BEGIN 26 // from:
  SAY @48 /* ~Not this night, ye gamon dead man!~ #2921 */
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",9)
~ EXTERN ~XAA275~ 4
END

IF ~~ THEN BEGIN 27 // from:
  SAY @49 /* ~To ye I put the same query, ye traitorous fool! Ye set up one o' yer own!~ #2922 */
  IF ~~ THEN EXTERN ~XAA277~ 16
END

IF ~~ THEN BEGIN 28 // from:
  SAY @50 /* ~Ye hired them to do yer dirty deed 'cause they be expendable, but they be as good a sneak as any we be! A brethren in burglary, who should die 'cause they no in the guild? Nay say I, and many more! They stump down our halls, they work the work, and they flee the flee. They with US, and you set US up!~ #2923 */
  IF ~~ THEN EXTERN ~XAA277~ 17
END

IF ~~ THEN BEGIN 29 // from:
  SAY @51 /* ~ 'Ere's the respect ye ran from the guard for! A round-the-world way to get it, to be sure, but worth it none the less! The doors here will always be open, excepting when pickably locked.~ #2924 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@53)
ActionOverride("Alatos",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @52 /* ~Alatos and the Thieves' Guild
It would seem my escapades with Narlen and Rededge gained me more than a few gold coins or a handful of gems. Because I proved myself as a fellow thief worthy of the guild, Narlen stepped in to save my skin when I was threatened by the Halruaan, Resar. It seems Alatos originally hired me because I was expendable, and he knew Resar was going to kill whomever did the job. Narlen wouldn't stand for it, though, so he killed Resar before I was in any danger. Faced with the prospect of a number of mutinous thieves, Alatos quickly agreed to spare me. I have made some valuable friends through all of this.~ #27315 */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @17 /* ~I'm right knackered wasting the dark on ye curb pogy! The mark is off, and ye be done with me!~ #2938 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY @54 /* ~And what be your excuse for makin' the friendly o' such girly-wills? Do you share their lack o' luster, or would ye like to call my caper yours? You with me plan?~ #2970 */
  IF ~~ THEN REPLY @3 /* ~I have no idea what you just said. Do you speak Common?~ #2971 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I'll pass any test you set, and then some! You'll not discredit me with your games!~ #2972 */ GOTO 4
  IF ~~ THEN REPLY @5 /* ~Aye, ye natty clapperdogeon. I be here at Alatos's call, but I no be here for cloyin' babycandy. Speak yer cause with good cog.~ #2973 */ GOTO 5
  IF ~~ THEN REPLY @6 /* ~I'll not take another duty while working for Alatos. I'll do but one, but do it well!~ #2974 */ GOTO 7
END

IF ~~ THEN BEGIN 32 // from: 15.3 14.3
  SAY @55 /* ~As ye will and won't, 'tis your behind to hide. A grand time it'd ha' been if it was. Narlen dost consider ye a fellow night-mate! Good on ye where er'e ye go.~ #2982 */
  IF ~~ THEN DO ~ActionOverride("Rededge",EscapeArea())
EraseJournalEntry(@19)
GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",10)
EscapeArea()
~ SOLVED_JOURNAL @56 /* ~Narlen's Heist
I met Narlen and Rededge back at the Thieves' Guild, and they were well pleased with my efforts. I was paid fairly, but I don't wish to take any more such risks. I think I proved my worth to them, though.~ #27316 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 33 // from:
  SAY @57 /* ~Narlen be my name, and it nary matters a whit whether I like ye or no. If you got the skills to snatch the catch, then you are all right by me and mine. Otherwise I have little use for ye.~ #6472 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @58 /* ~Cullin petty snatcherbrats! Get well away from me footspace lest you get an eye-full o' blade!~ #9071 */
  IF ~~ THEN EXIT
END
