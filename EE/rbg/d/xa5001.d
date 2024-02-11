// creator  : F:\BGModding - LCA\Game\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\DLG\MTOWBE.DLG
// game     : F:\BGModding - LCA\Game\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\DLG\MTOWBE.DLG
// dialog   : F:\BGModding - LCA\Game\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA5001~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~If the city watch cannot protect us from raids, what am I paying tax for?! I would be better off hiring mercenaries than trying to rely on the city guards. Nobody is fool enough to want to guard my caravans though. Cowards all. Guess I'll just wait out the crisis here.~ #376 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~A right evil man, that Bassilus! He don't just kill people, he makes them into zombies and pretends they're his family. What would make a man do that, exceptin' evil?~ #377 */
  IF ~~ THEN UNSOLVED_JOURNAL @3 /* ~Bassilus the Murderer
The townsfolk of Beregost talk of a "monster" named Bassilus who has murdered many innocent folk.~ #27097 */ EXIT
  IF ~  OR(2)
Dead("keldda")
Dead("bassil")
~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,3)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~Where did Bassilus come from? No one's sure, but I heard he may have lived at Zhentil Keep before it was destroyed. I thought everyone died when it crumbled. I curse the fates that he lived through it.~ #378 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,4)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~I hear that to prove you have actually taken his head, you have to produce Bassilus's holy symbol. Not that I would ever touch it of my own free will. He's one of Cyric's boys. They are just not right in the head.~ #379 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,5)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~A more puzzling thing I've never heard. I was left for dead by the raiders, and a stranger healed me. Had the worst visage I ever hope to lay eyes on, but his bearing I cannot question.~ #383 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,6)
~ THEN BEGIN 5 // from:
  SAY @7 /* ~I was attacked outside the city last week. Weren't by bandits, but by a man who dissolved into slime when he died! It's enough to make a man never leave the house!~ #385 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,7)
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Blasted halflings talk in circles! I know not which is more treacherous, Firewine Ruins or Gullykin north of it. Keep an eye on your purse strings if you wander through that area.~ #386 */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,8)
~ THEN BEGIN 7 // from:
  SAY @9 /* ~I still feel their arrows' sting in my haunches! Mind you be polite to the small folk, lest you limp home as I did! Halflings may look small, but they sure hurt when they attack in numbers and keep their distance.~ #387 */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,9)
~ THEN BEGIN 8 // from:
  SAY @10 /* ~It will be a cold day in the lower planes before I risk my neck in the elven ruin o' Firewine! Who knows what lurks around in those tight passages. You can barely stand two abreast in there. Tight enough to be a tomb, and for many a man it is a tomb.~ #389 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,10)
~ THEN BEGIN 9 // from:
  SAY @11 /* ~That Ulcaster School was a storehouse of knowledge and magic, but them that haunt the place are no better for it. Being dead longer than you were alive must tend to addle the mind.~ #397 */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,11)
~ THEN BEGIN 10 // from:
  SAY @12 /* ~Simple logic says there must be magic treasure in the ruins of a magician's school such as Ulcaster, but 'tis a treacherous task to get to it. Dead wizards are not known to sleep soundly, nor to wake jovial.~ #398 */
  IF ~~ THEN UNSOLVED_JOURNAL @13 /* ~The Wizard's School
We've heard rumors of an ancient wizard school with all sorts of treasures.~ #27288 */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,12)
~ THEN BEGIN 11 // from:
  SAY @14 /* ~Rumor tells of a magical gate in the bottom o' the school ruins, but no one knows where it leads. Anywhere is better than that accursed place, if ye ask me!~ #399 */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,13)
~ THEN BEGIN 12 // from:
  SAY @15 /* ~ 'Twas some three hundred years hence, but folk still cringe at the mention of the destruction at Ulcaster School. I've not met a soul who claims to know why it occurred, and none that were there are alive to say.~ #400 */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,14)
~ THEN BEGIN 13 // from:
  SAY @16 /* ~Iron's been pretty rare these days, what with the supply from Nashkel drying up. Trade routes are all but shut down from bandit activity. I ain't heard from Waterdeep for a month now.~ #833 */
  IF ~~ THEN JOURNAL @17 /* ~Troubles in the Region: Iron Crisis

There are many rumors around Beregost about the scarcity of iron.~ #27289 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,15)
~ THEN BEGIN 14 // from:
  SAY @18 /* ~Our smith Taerom's been hit pretty hard by the iron shortage. His prices have only gone up because of it. Normally he is so reasonable, and better work you won't find anywhere. If ya need any weapons or armor, he's the man to see.~ #834 */
  IF ~~ THEN JOURNAL @17 /* ~Troubles in the Region: Iron Crisis

There are many rumors around Beregost about the scarcity of iron.~ #27289 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,16)
~ THEN BEGIN 15 // from:
  SAY @19 /* ~I've heard that Amn is going to invade. Those damnable, war-mongering mutton-heads. Shoulda seen it coming too. This iron thing has to be all their doing. You ain't from the south, are ya? If you are, then I don't trust ya!~ #835 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @20 /* ~Rising Tensions with Amn
There are some rumors in Beregost about hostilities between Amn and Baldur's Gate.~ #27290 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,17)
~ THEN BEGIN 16 // from:
  SAY @21 /* ~My cousin from Nashkel tells me that Amn has a huge army gathered there. They'll get the fight of their lives if they press for Baldur's Gate. The Flaming Fist are among the best soldiers around.~ #836 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @20 /* ~Rising Tensions with Amn
There are some rumors in Beregost about hostilities between Amn and Baldur's Gate.~ #27290 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY @22 /* ~That's a load of bull, Matthew. Your cousin's a huckster who doesn't know his way around his own garden.~ #837 */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,18)
~ THEN BEGIN 18 // from:
  SAY @23 /* ~Have you heard about the trouble down in Nashkel? The mines are supposedly tainted, and all the ore coming out is useless. I think Amn is just holding it back, trying to weaken our guards and troops. They've got another thing coming, they do.~ #838 */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,19)
~ THEN BEGIN 19 // from:
  SAY @24 /* ~You look a lot like the bandits that raided my caravan! No, maybe it wasn't you. This crisis just has me on edge. I see bandits wherever I look. Hope it all ends soon, one way or another.~ #839 */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,20)
~ THEN BEGIN 20 // from:
  SAY @25 /* ~Nashkel is a rotten town, run by a bunch of priggers. Betcha this iron shortage is just another Amnian plot. They would love to get a hold of Baldur's Gate, I just know it.~ #840 */
  IF ~~ THEN EXIT
END

IF WEIGHT #21 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,21)
~ THEN BEGIN 21 // from:
  SAY @26 /* ~Hey! Shut your potato trap and give your tongue a holiday. I don't want strangers in my business. Shove off before I take offense to your face.~ #841 */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,22)
~ THEN BEGIN 22 // from:
  SAY @27 /* ~My damn shovel broke today, then my hoe, and then, to top it all off, my scythe. They're all new tools too, bought from that flam, Taerom. He's getting a piece of my mind.~ #842 */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,23)
~ THEN BEGIN 23 // from:
  SAY @28 /* ~I hear the Zhentarim have been spotted about lately. I bet ya them riff raff are up to no good. Can't trust a single one of them, you can't. They'll step over their own mother just for the sake of doing it!~ #843 */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,24)
~ THEN BEGIN 24 // from:
  SAY @29 /* ~All the iron that comes from Nashkel has been tainted. It's those Amnian, up to their bottle-headed tricks I bet. We should just march over that little mine of theirs. I bet they are just faking all the trouble so as to weaken our guards and soldiers. Well, we will be ready when they come.~ #844 */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,25)
~ THEN BEGIN 25 // from:
  SAY @30 /* ~I bet those rank-ridin' bandits are hired by the Amnian. It'd be like those moneygrubbers to pull something so low. Got to the point where an honest man can't travel the roads.~ #845 */
  IF ~~ THEN EXIT
END

IF WEIGHT #26 /* Triggers after states #: 27 even though they appear after this state */
~  RandomNum(32,26)
~ THEN BEGIN 26 // from:
  SAY @31 /* ~My son was on one of the caravans that didn't make it to Baldur's Gate. I pray to Tymora that he's all right. May the Lady guide him safely home, and may she make the bandits trip on their swords. It's more humane than they deserve.~ #846 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 27 // from:
  SAY @32 /* ~Sorry, buddy, but I'm just simple folk and don't know anything about politics and such.~ #6422 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY @33 /* ~I'll box your ears if you step an inch closer!~ #9045 */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 ~  RandomNum(32,27)
~ THEN BEGIN 29 // from:
  SAY @34 /* ~There should have been a merchant caravan through here just yesterday. Odd that they have not arrived yet. They were supposed to bring iron ore down from the north. I bet they suffered the same fate as all the rest.~ #15963 */
  IF ~~ THEN EXIT
END

IF WEIGHT #28 ~  RandomNum(32,28)
~ THEN BEGIN 30 // from:
  SAY @35 /* ~The shortage of iron has been gradually building for some time now. People have had plenty of opportunity to get paranoid. Not me though, no, <SIRMAAM>. Nope. Eh, could you stand a little back from me, please?~ #15989 */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 ~  RandomNum(32,29)
~ THEN BEGIN 31 // from:
  SAY @36 /* ~There were stores of iron ore stockpiled to get us through lean times, but something is wrong with it. Anything smelted becomes brittle within days. It's like the metal is diseased somehow. It makes it impossible to keep weapons and armor in good repair.~ #15992 */
  IF ~~ THEN EXIT
END

IF WEIGHT #30 ~  RandomNum(32,30)
~ THEN BEGIN 32 // from:
  SAY @37 /* ~What with this iron crisis tensions are really on the rise. People want someone to blame: a target for all their fears. A common enemy is great for raising unruly mobs. I just hope I'm at home with the door locked when it happens.~ #16034 */
  IF ~~ THEN EXIT
END

IF WEIGHT #31 ~  RandomNum(32,31)
~ THEN BEGIN 33 // from:
  SAY @38 /* ~Good day to you. So have you heard of all the trouble brewing in the south? Awww, you probably don't care, you don't look like the political type.~ #17722 */
  IF ~~ THEN REPLY @39 /* ~I think you've misjudged us, we're as interested in politics as the next person. So what's this trouble you were just talking about?~ #17723 */ GOTO 35
  IF ~~ THEN REPLY @40 /* ~You're right, we don't give a damn about any politics.~ #17724 */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @41 /* ~Well, I guess that's yer choice, eh? See ya.~ #17725 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0
  SAY @42 /* ~Well, from what I've heard, there's some tension between the nation of Amn and the city of Baldur's Gate. I've heard that the Grand Dukes of Baldur's Gate think that Amn's behind all of the iron troubles along the coast. Some people have even gone as far to say that Amn might be preparing to invade. I think it's just the usual rumormongering that goes on from time to time, but then, you never know.~ #17729 */
  IF ~~ THEN EXIT
END

IF WEIGHT #32 ~  RandomNum(32,32)
~ THEN BEGIN 36 // from:
  SAY @43 /* ~Aye, the world is falling apart around us and here before me lie a band of groveling adventurers, preying on my every word to hear rumors of the latest dungeon fad...~ #17768 */
  IF ~~ THEN REPLY @44 /* ~Sorry to bother Your Highness...~ #17770 */ GOTO 37
  IF ~~ THEN REPLY @45 /* ~Dungeons...?~ #17771 */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @46 /* ~Stuff your sarcasm and get out of here, lout.~ #17772 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @47 /* ~You're pathetic... Okay, I'll rattle it off for you like I did for the last adventurer and the one before that. I have no doubt you'll share their fate. Let's see, there are the ruins of an old mage school to the southeast. Traps, dead things that try to kill you, you know the schtick... Then there's the Firewine Bridge: ghosts, winding narrow passageways, some poetry, blah, blah, blah... Honestly, I can't think of a life more tedious than that of an adventurer. Personally, I get far more out of wandering around aimlessly and scratching my arse like this.~ #17773 */
  IF ~~ THEN EXIT
END
