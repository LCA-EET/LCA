// creator  : weidu (version 24900)
// argument : BJAN.DLG
// game     : .
// source   : ./override/BJAN.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BJAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #640 /* ~Did I ever tell you the tale of the lobotomized orc, my good knight Anomen?~ [JANJAN44] */
  IF ~~ THEN DO ~SetGlobal("BJan1","LOCALS",1)
~ EXTERN ~BANOMEN~ 66
END

IF ~~ THEN BEGIN 1 // from:
  SAY #641 /* ~Well, anyway, as a child, my mammy would give us kids a bowl of gravel, which was all that we could afford, and tell us this parable. Now listen, knighty, lest you be eating gravel.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #642 /* ~ 'Twas once a heavily brain-damaged orc called Ano. Ano was trudging through the forest one day, looking for bull droppings with which he could stuff his mattress, when he happened across a remarkable scene. A brave and noble knight, Jen the Brilliant by name, fought with an evil giant. Ano watched as Jen slew the giant.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #643 /* ~Then the knight rode off to save several small children from a wicked witch, also known as a noblewoman, who was attempting to poison the poor dears. Regardless, Ano promptly cut off the head of the fallen giant, ran home to his home in the Dung Orc village, and claimed that he had killed the monster.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 67
END

IF ~~ THEN BEGIN 4 // from:
  SAY #644 /* ~Did I mention that Ano had a nasty habit of interrupting folk? Anyway, the giant's brother heard of his sibling's demise and the subsequent display of his head in Dung Town. He caught up to Ano, who was stupidly stuffing his mattress with bull dung, and returned to his cave with the orc stuffed through his belt.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #645 /* ~As punishment for his brother's supposed murderer, he tied a porcupine to the orc's head and proceeded to clean his latrine with the makeshift orc brush. Much to the giant's dismay, Ano actually enjoyed it.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #646 /* ~Fascinating tale, that! I love to tell it!~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 68
END

IF ~~ THEN BEGIN 7 // from:
  SAY #647 /* ~Calm yourself, Ano. There was no insult to you. It was merely a parable told to me by my dear departed mother.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 69
END

IF ~~ THEN BEGIN 8 // from:
  SAY #648 /* ~Whenever you wish to try it, Ano.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BJan2","LOCALS",0)
~ THEN BEGIN 9 // from:
  SAY #661 /* ~So you come from the winged folk, do you, lass?~ [JANJAN46] */
  IF ~~ THEN DO ~SetGlobal("BJan2","LOCALS",1)
~ EXTERN ~BAERIE~ 4
END

IF ~~ THEN BEGIN 10 // from:
  SAY #662 /* ~No need to be formal, lassie. Call me Jan. I was recently reminded of my ex-brother-in-law, Burt Wunderkind, fabulous griffon-baiter.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 5
END

IF ~~ THEN BEGIN 11 // from:
  SAY #663 /* ~Yes, of course. It's something of a cottage industry amongst Amnian gnomes. Quite simple, I've heard. You merely tame a couple of wyverns and WHOOSH, tear through the sky to fling insults at the hapless griffons.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 6
END

IF ~~ THEN BEGIN 12 // from:
  SAY #664 /* ~Really? Everyone I know has a pet wyvern. Taming wyverns is child's play, literally. As children, we'd tame wyverns. It's easy since they have such an affinity for turtles. Back in the old days it used to rain turtles on even days and frogs on odd days. ~ */
  IF ~~ THEN EXTERN ~BAERIE~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #665 /* ~That's what I thought until the drought hit. There were ornery wyverns everywhere. After a rich diet of turtle mash, you couldn't expect them to merely accept bacon without eating a few human nobles, now, could you?~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #666 /* ~Of course, by then, Burt was such successful griffon-baiter that the authorities just couldn't find it in their hearts to make us leash the wyverns. The loss of the noble class is truly a small price to pay to maintain the continuity of such a fine sport. There's nothing like the look of incredulity on a griffon's face to keep one's spirits up.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 8
END

IF ~~ THEN BEGIN 15 // from:
  SAY #667 /* ~Don't you worry, lass. If Burt ever pops by, we'll get you up in the air faster than a chicken with one of Jan Jansen's Flasher Master Bruiser Mates tied to his rear. Trust me, that is fast!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("BJan3","LOCALS",0)
~ THEN BEGIN 16 // from:
  SAY #687 /* ~So, Valygar, how do you like being a ranger?~ [JANJAN47] */
  IF ~~ THEN DO ~SetGlobal("BJan3","LOCALS",1)
~ EXTERN ~BVALYGA~ 20
END

IF ~~ THEN BEGIN 17 // from:
  SAY #688 /* ~Well, if you're asking, then yes. It happens that my Aunt Petunia is a ranger, don't you know?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #689 /* ~She had the standard followers: a hydra, a shadow dragon, and a solar. She had the dragon trained to roll over, play dead, and fetch dwarves. She called him Blackie, I believe. Loved to run and play and lie in the sun.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #690 /* ~Long and far she'd roam, with Larry the Solar always at her side, fighting evil, mocking druids, and the like. ~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #691 /* ~Anyway, my point is that Petunia and Larry were out for a stroll in the woods. She was wearing her fruit armor, which was the style at the time, you understand. Aunt Petunia always kept up with the style. ~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #692 /* ~Larry had a nasty case of the plague...~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 25
END

IF ~~ THEN BEGIN 22 // from:
  SAY #693 /* ~Very well. We'll continue this story at the next opportunity.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #701 /* ~Nalia, dearie, you remind me so much of Cletus Bifflelips, my second cousin, thrice removed. ~ [JANJAN59] */
  IF ~~ THEN EXTERN ~BNALIA~ 6
END

IF ~~ THEN BEGIN 24 // from:
  SAY #702 /* ~You wouldn't think so, yet here we are. You see, Cletus had a propensity for bouts of violent projectile vomiting. We'd call him, Cletus the Room Clearer Bifflelips.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 7
END

IF ~~ THEN BEGIN 25 // from:
  SAY #703 /* ~Now just bear with me for a moment, Nalia. You see, it was after one such bout that Cletus, feeling quite ill, took a painful stroll down to the local witch-woman, in the vague hope that she might have a cure for his problem.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #704 /* ~After paying the 1,000-gold-piece consulting fee and vomiting in the proffered bucket, the witch gave Cletus an herbal tea, which he was to drink twice per day for a score of days.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #705 /* ~Drinking it everyday on schedule, yet failing to notice any change in his condition, Cletus began to worry. Upon finishing his final cup of tea, Cletus vomited.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 8
END

IF ~~ THEN BEGIN 28 // from:
  SAY #706 /* ~No need to force your ridiculously high standards onto poor, deceased Cletus.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 9
END

IF ~~ THEN BEGIN 29 // from:
  SAY #707 /* ~Actually, he's not dead. I made that part up. Well, needless to say, Cletus was somewhat angry, so he went back to confront the witch. She had, of course, taken the money and left town. But in her haste to escape the vomiting wrath of Cletus Bifflelips, the witch left her belongings behind.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #708 /* ~Cletus, at the height of his anger, swiped her entire collection of novels written by noted folklorist Nalia de Bouche. I'll be the first to admit that revenge was not Cletus's forte.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #709 /* ~Well, they can't all be gems. 'Tis one of my favorites, however.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("JanMinsc","LOCALS",0)
~ THEN BEGIN 32 // from:
  SAY #976 /* ~Minsc! Look out! Behind you!~ [JANJAN48] */
  IF ~~ THEN DO ~IncrementGlobal("JanMinsc","LOCALS",1)
~ EXTERN ~BMINSC~ 0
END

IF ~~ THEN BEGIN 33 // from:
  SAY #977 /* ~C'mon, Boo! Quickly, come to Jan!~ */
  IF ~~ THEN EXTERN ~BMINSC~ 1
END

IF ~~ THEN BEGIN 34 // from:
  SAY #978 /* ~He likes me. Gnomes are far cuddlier than oafish humans.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 2
END

IF ~~ THEN BEGIN 35 // from:
  SAY #979 /* ~You can't fault a fellow for trying.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 3
END

IF WEIGHT #3 ~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
!AreaType(DUNGEON)
AreaType(OUTDOOR)
TimeOfDay(DAY)
Global("JanMinsc","LOCALS",1)
~ THEN BEGIN 36 // from:
  SAY #980 /* ~Ah, Minsc! 'Tis truly a beautiful day, no?~ [JANJAN49] */
  IF ~~ THEN DO ~IncrementGlobal("JanMinsc","LOCALS",1)
~ EXTERN ~BMINSC~ 4
END

IF ~~ THEN BEGIN 37 // from:
  SAY #981 /* ~It is a day to get out into the world, to breathe in the fresh air.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 5
END

IF ~~ THEN BEGIN 38 // from:
  SAY #982 /* ~Too bad, though...~ */
  IF ~~ THEN EXTERN ~BMINSC~ 6
END

IF ~~ THEN BEGIN 39 // from:
  SAY #983 /* ~It's too bad that I won't live to enjoy it.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 7
END

IF ~~ THEN BEGIN 40 // from:
  SAY #984 /* ~Hadn't you heard, old friend? I've got the Calimshan itch. Alas, poor Jan! *sob* *sob*~ */
  IF ~~ THEN EXTERN ~BMINSC~ 8
END

IF ~~ THEN BEGIN 41 // from:
  SAY #985 /* ~Only death will cure this itch. I shall not live out this day. Oh, terrible powers of the heavens! Why will you let me die without granting me a final wish? Cruel, cruel fate!~ */
  IF ~~ THEN EXTERN ~BMINSC~ 9
END

IF ~~ THEN BEGIN 42 // from:
  SAY #986 /* ~I do have one final wish... no, no. I do not wish to burden my companions with my death. My teensy-weensy wish is unimportant. Travel on, good Minsc. Carry the torch and so forth.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 10
END

IF ~~ THEN BEGIN 43 // from:
  SAY #987 /* ~Truly, it is a small thing. As a child, I had a pet hamster, named Spanky. Those were the only pure days in my life. Every day was perfection. Oh, the pain! If I could just hold a hamster while I die, perhaps I could capture the innocence of my youth and die a happy gnome.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 11
END

IF ~~ THEN BEGIN 44 // from:
  SAY #988 /* ~ 'Tis no trick. *cough* *cough* Nevertheless, you are correct about one thing, my oafish friend. I do not deserve happiness. Please, leave me to my excruciatingly painful death. I am close now... Spanky, I miss you!~ */
  IF ~~ THEN EXTERN ~BMINSC~ 12
END

IF ~~ THEN BEGIN 45 // from:
  SAY #989 /* ~Ah, thank you, Minsc. May I have a moment alone?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 13
END

IF ~~ THEN BEGIN 46 // from:
  SAY #990 /* ~At last Boo is mine! I cannot believe this stupid trick worked. Come, noble hamster, a life of frivolity awaits.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 14
END

IF ~~ THEN BEGIN 47 // from:
  SAY #991 /* ~All right, all right. It was only a jest, Minscy. I meant no harm.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 15
END

IF ~~ THEN BEGIN 48 // from:
  SAY #1296 /* ~Very true, lassie. You must work with potatoes. ~ [JANJAN55] */
  IF ~~ THEN EXTERN ~BMAZZY~ 44
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1297 /* ~Hmm? Oh, I thought it was obvious. Never had your pegged for a slow one, but you never can tell. Allow me to spell it out... you see, about fifteen years ago, I was employed by a mage of no small caliber. Golodon the Unmanned was his name. Good teeth. Nice smell. Vicious streak a mile wide.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 45
END

IF ~~ THEN BEGIN 50 // from:
  SAY #1298 /* ~He couldn't have children, of course. Nasty cone of cold accident, you see. Regardless, his tower wasn't far from Athkatla, and I managed to gain employment with the old elf for a while. Mondays were particularly amusing. Golodon would start the day off by summoning an imp. He'd usually spend three or four hours making it run around the room barking like a dog. ~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #1299 /* ~But, as it was with Golodon, he soon tired of the sport. He had a beautiful mastiff named Buffy. Her diet consisted almost entirely of imps. Imp doesn't taste half bad when it's fried with a bit of garlic and butter. Goes well with turnips too.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 46
END

IF ~~ THEN BEGIN 52 // from:
  SAY #1300 /* ~Oh, right. So anyway, Golodon's ex-wife lived no more than two hundred paces from the mage's tower. My primary job was poisoning her food, though occasionally I'd have to clean up Buffy's excrement. She had managed to build quite the resistance to mandrake. Golodon's ex-wife, that is, not the dog. ~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #1301 /* ~It was truly a magical time in my life. I haven't been as happy poisoning someone since then. I was also, of course, poisoning Golodon on his ex-wife's behalf. She did pay handsomely. ~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #1302 /* ~Word has it that Golodon has finally kicked the bucket, if you get my drift. Died of malaria complicated by a fireball down his throat. Apparently, Golodon's old nemesis returned. Dradu or Dradeen or some such name. The old bastard would occasionally mention this enemy when he was particularly drunk. The two of them had stolen some valuable artifacts from the Gibbering Twelve.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1303 /* ~Golodon blackjacked poor Dradunce and split with the magic. He later realized that he should have killed Dreedle and, cold-hearted fool that he was, sent assassins to finish the job. Drafeel disappeared, though his body was never found. It worried Golodon to no end.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 47
END

IF ~~ THEN BEGIN 56 // from:
  SAY #1304 /* ~I can't find it in my heart to feel sorry for him. He did fire me after all. Do you know why?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 48
END

IF ~~ THEN BEGIN 57 // from:
  SAY #1305 /* ~That was a bit rude. I take my potato comment back, missy!~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 49
END

IF ~~ THEN BEGIN 58 // from:
  SAY #1306 /* ~I don't know if I'm talking to you anymore.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 50
END

IF ~~ THEN BEGIN 59 // from:
  SAY #1307 /* ~If you must know, it was during my time as a mobile turnip vendor. ~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 51
END

IF ~~ THEN BEGIN 60 // from:
  SAY #1308 /* ~Twice a week I'd head out to the country to pick up my product. The turnip fields were owned by my uncle Scratchy. Interesting fellow, by the way. Remind me to tell you about him some time.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 52
END

IF ~~ THEN BEGIN 61 // from:
  SAY #1309 /* ~Each trip I made, I would stop to talk to the halfling lass that worked in Uncle Scratchy's potato operation. The girl had had a very difficult life. She lost her parents to an orc attack when she was just a girl. She'd been a slave for the foul beasts until Aunt Petunia freed her. ~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1310 /* ~The girl told me that, no matter how much evil she saw or had inflicted upon her, the simple pleasure of honest work and the feel of the earth beneath her feet always reminded her of how lucky she really was. Her outlook was not unlike your own, dear Mazzy.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 53
END

IF ~~ THEN BEGIN 63 // from:
  SAY #1311 /* ~And that, lassie, is why you are not a consummate tale-spinner. Don't worry, I'll teach you yet.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 129 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("BJan4","LOCALS",0)
~ THEN BEGIN 64 // from:
  SAY #1391 /* ~Haery, I have an idea for a play.~ [JANJAN50] */
  IF ~~ THEN DO ~SetGlobal("BJan4","LOCALS",1)
~ EXTERN ~BHAERDA~ 21
END

IF ~~ THEN BEGIN 65 // from:
  SAY #1393 /* ~You see, Haery, Angus the Giant Beaver is ousted from house and home by the Bullywug bullies to embark on an epic quest that takes him to the next pond.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 22
END

IF ~~ THEN BEGIN 66 // from:
  SAY #1395 /* ~No, no, no, this is only the beginning. Along the way, he encounters Gurgen the Hormonal Moose, and a friendship quickly develops between the two, seeing them through times of great trial and tribulation, though the friendship also caused a great deal of trial and tribulation, as you can well imagine.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 23
END

IF ~~ THEN BEGIN 67 // from:
  SAY #1402 /* ~Too late, I'm already on to great trials and tribulations—think of it, Haery, such broad and vital themes. Anyhow, the moose catches a curious and ultimately fatal disease, and Angus, as a final testament to their friendship, enshrines him within a wooden tomb in the middle of the lake before throwing himself in the lake to drown.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 24
END

IF ~~ THEN BEGIN 68 // from:
  SAY #1409 /* ~There's no point in arguing, Haery. It's a true tale, and if you have any doubt, you can ask my great-aunt Apo Pettiwick, who never married. It all happened in her backyard when she ran the farmer's market that sold turnips up in Thundertree, just upstream of Neverwinter.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 25
END

IF ~~ THEN BEGIN 69 // from:
  SAY #2922 /* ~Because they're true, every last one of them, even the one about my great-grandfather slaying the dragon.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 45
END

IF ~~ THEN BEGIN 70 // from:
  SAY #2926 /* ~Well not really, but close. He thought it was a dragon. He was experimenting with glass, grinding it down to make prisms and lenses, you see, because his daughter, my grandmother, was so cross-eyed that, until she was twelve years old, all she ever saw of the world was the nose in the center of her face. You never had that problem as a child, did you?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 46
END

IF ~~ THEN BEGIN 71 // from:
  SAY #2928 /* ~Good, I wouldn't recommend it to anyone. So my great-grandfather had put together a great series of lenses and prisms, I think twelve in all, and attached them to a leather helm he had, the strap of which always chafed under the chin. Then, all of a sudden, a cloud passed in front of the sun.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 47
END

IF ~~ THEN BEGIN 72 // from:
  SAY #2930 /* ~No, no, it happened precisely as I tell it to you now: A cloud passed in front of the sun and my great-grandfather looked up from his work so quickly that a dragonfly got caught between two of the prisms over his left eye and clung there for dear life. Of course you can't imagine the hullabaloo this caused, my dear!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 48
END

IF ~~ THEN BEGIN 73 // from:
  SAY #2932 /* ~There he was, throwing all his tools and turnips into the distance where he assumed his greatly magnified adversary to be, and he was running and hollering and telling us to get in the house while he tried to lure the ravaging beast into the backyard of our southside neighbors against whom he had always held a grudge.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 49
END

IF ~~ THEN BEGIN 74 // from:
  SAY #2934 /* ~What do you expect happened? We just assumed that he hadn't been taking his herbs and berries again and all wrestled him to the ground, ruining his precious lens-helm in the process, I'm afraid. It took us a good hour to calm him down and figure out what the truth of the whole matter had been. Now, do you know what the moral of the story is, Aerie?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 50
END

IF ~~ THEN BEGIN 75 // from:
  SAY #2936 /* ~Hmm, that will do nicely. I hadn't come up with one for this story yet.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 51
END

IF ~~ THEN BEGIN 76 // from:
  SAY #2938 /* ~What? Oh no, no, it was an idea doomed to fail, I'm afraid. Two years later she lost her nose in a bizarre harvest accident and she's been seeing just fine ever since.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #7521 /* ~Is there an epic begging for verse rattling about in your head, Edwin?~ [JANJAN60] */
  IF ~~ THEN EXTERN ~BEDWIN~ 28
END

IF ~~ THEN BEGIN 78 // from:
  SAY #9091 /* ~Well, Mazzy, you're really asking two questions there. My shortsightedness was passed to me by my dear departed father. I was born with the condition, and I'll thank you not to stare! As to your other question, it takes me back to my carefree days as a deckhand on a turnip merchant galleon. We sailed for distant Waterdeep, we did, braving foul seas, foul tempers, and a desperate band of turnip pirates.~ [JANJAN56] */
  IF ~~ THEN EXTERN ~BMAZZY~ 96
END

IF ~~ THEN BEGIN 79 // from:
  SAY #9097 /* ~ 'Twas on a cold winter's night near the beginning of the Great Underwear Shortage that we set sail. I danced naked on the poop deck, which was the custom at the time. Well, my nose and other extremities were getting a bit frosty, so I gathered up the tatters of my poor, abused underwear and headed to the crow's nest.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 97
END

IF ~~ THEN BEGIN 80 // from:
  SAY #9100 /* ~Well, I never! You did ask, after all.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 98
END

IF ~~ THEN BEGIN 81 // from:
  SAY #9161 /* ~Virtue, eh, knighty?~ [JANJAN45] */
  IF ~~ THEN EXTERN ~BKELDOR~ 41
END

IF ~~ THEN BEGIN 82 // from:
  SAY #9163 /* ~Another human with his shorts in a knot. But I digress. Anyway, Keldy, my mother wrote a book on virtue.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 42
END

IF ~~ THEN BEGIN 83 // from:
  SAY #9165 /* ~Oh, yes. A book on the virtues of erotic love. "Sins of the Flesh Golem," it was called. Excellent sales in the paladin's spouse market.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 43
END

IF ~~ THEN BEGIN 84 // from:
  SAY #9167 /* ~It is no jest. I'll send you a copy, if your wife does not already have one.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 44
END

IF ~~ THEN BEGIN 85 // from:
  SAY #9169 /* ~Ah, now I see. One of THOSE.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 45
END

IF ~~ THEN BEGIN 86 // from:
  SAY #9171 /* ~I do respect my leaders. This has nothing to do with them. This reminds me of the chapter where the paladin first makes passionate love to the flesh golem. What a beautiful scene...~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 46
END

IF ~~ THEN BEGIN 87 // from:
  SAY #9173 /* ~"Fleshy, honey," the paladin said. "Yes, baby?" said the golem...~ */
  IF ~~ THEN DO ~ActionOverride("Keldorn",RunAwayFrom("Jan",2))
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 129 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("BJan5","LOCALS",0)
~ THEN BEGIN 88 // from:
  SAY #2145 /* ~So, Viconia, I suppose you must be a drow, eh? ~ [JANJAN51] */
  IF ~~ THEN DO ~SetGlobal("BJan5","LOCALS",1)
~ EXTERN ~BVICONI~ 49
END

IF ~~ THEN BEGIN 89 // from:
  SAY #9195 /* ~My brother, Elgar Buttercup, had skin the shade of charcoal, too. Well, technically it WAS charcoal. He died in a nasty fire, you see. ~ */
  IF ~~ THEN EXTERN ~BVICONI~ 50
END

IF ~~ THEN BEGIN 90 // from:
  SAY #9197 /* ~My own voice? Heartless wench! Do you not know? I am deaf. I have never heard the sound of my own voice. I read lips... *sob*... only lips...~ */
  IF ~~ THEN EXTERN ~BVICONI~ 51
END

IF ~~ THEN BEGIN 91 // from:
  SAY #9199 /* ~I heard that! In fact, it reminds me of the time I was eaten by an avatar of Lolth. I was stuck inside her stomach with a miserable drow called Biffle Chump for days. Of course, I was forced to eat him. A matter of survival, you understand. Nothing personal. He tasted a bit like chicken.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 52
END

IF ~~ THEN BEGIN 92 // from:
  SAY #9203 /* ~What I would have given for just a pinch of pepper!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 53
END

IF ~~ THEN BEGIN 93 // from:
  SAY #9205 /* ~Aye, Plooty had a way of attracting golems. Brilliant, really. You start with a saucer of milk—golems are suckers for milk...~ */
  IF ~~ THEN EXTERN ~BVICONI~ 53
END

IF ~~ THEN BEGIN 94 // from:
  SAY #9209 /* ~Yoshimo! Please! "Jan Jansen's Flasher Master Bruiser Mate." They have a name!~ [JANJAN57] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 65
END

IF ~~ THEN BEGIN 95 // from:
  SAY #9212 /* ~I won't lie to you, Yoshimo. There is an excellent chance that you'll lose both of your arms. Perhaps even your face.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 66
END

IF ~~ THEN BEGIN 96 // from:
  SAY #9215 /* ~Well said! As Aunty Kylie used to say, "Yeah, it's risky. But they've got gelatinous cubes!" I suppose it wouldn't hurt to have you try your hand at a few. Here, give the dial a twist and throw it.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 67
END

IF ~~ THEN BEGIN 97 // from:
  SAY #9217 /* ~Bite yer tongue! This is my best and most potent recipe, I'll have you know. Aunt Kadie herself helped me mix this batch up, and I'll not have you disparaging her good name.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 68
END

IF WEIGHT #8 /* Triggers after states #: 129 133 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BJan6","LOCALS",0)
~ THEN BEGIN 98 // from:
  SAY #9228 /* ~Well, mageling, how goes the battle against all that is right and good in the world?~ [JANJAN52] */
  IF ~~ THEN DO ~SetGlobal("BJan6","LOCALS",1)
~ EXTERN ~BEDWIN~ 56
END

IF ~~ THEN BEGIN 99 // from:
  SAY #9230 /* ~I sometimes believe that it is my destiny to become a part of some incompetent mage's fizzled schemes. Golodon the Unmanned being a case in point. You too, I suppose.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 57
END

IF ~~ THEN BEGIN 100 // from:
  SAY #9238 /* ~Truth be told, I feel a bit sorry for you. It must be frustrating to see your entire life's goals amount to absolutely nothing. ~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 58
END

IF ~~ THEN BEGIN 101 // from:
  SAY #9243 /* ~By the gods, Edwin, you mumble about them often enough. Oh! Looks like I've hit a vein. Sorry about that.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 59
END

IF ~~ THEN BEGIN 102 // from:
  SAY #9248 /* ~If you say so. Let me know when it's time to bow. I might not notice it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #9256 /* ~I'm open to all creative muses. Lately, I've been working on a turnip peeler. A magical device, of course, designed to peel a hundred turnips per minute. I'm really quite close to a breakthrough. Naturally, however, it does cost well over 100 gold pieces per day to run. But think of the uses!~ [JANJAN58] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 70
END

IF ~~ THEN BEGIN 104 // from:
  SAY #9260 /* ~Exactly! You've got a knack for logical thinking, Yoshi. You could go far in the service of Gond. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 129 133 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("JanDies","GLOBAL",1)
~ THEN BEGIN 105 // from:
  SAY #11366 /* ~Greetings, everyone. Sorry, no gifts or souvenirs this time, but I'll keep you all in mind the next time I'm gone. Oh, Keldorn: The gods say "hi" and that you should wash your underwear more thoroughly. Everyone ready? Let's go adventuring.~ [JANJAN53] */
  IF ~~ THEN DO ~SetGlobal("JanDies","GLOBAL",2)
~ EXTERN ~BKELDOR~ 80
END

IF ~~ THEN BEGIN 106 // from:
  SAY #11368 /* ~Acknowledged and accounted for—as serious as a turnip blight in winter. Nasty rotten thing, that is... Keldorn, have you ever considered renting out your services as a turnip healer? You would be more than popular, I assure you.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 81
END

IF ~~ THEN BEGIN 107 // from:
  SAY #11370 /* ~You remind me of a top my great-uncle on my father's side made for me as a child. You just wound it up and let it go—it was as if it had an "auto-wobble" setting or some such thing. So, are we ready for adventuring, everybody?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 82
END

IF ~~ THEN BEGIN 108 // from:
  SAY #15362 /* ~I'd not venture visiting your pleasures with the tool of another fellow, Viconia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #20279 /* ~Oh, yes indeed! It reminds me of my cousin, Tyllie Fleetknees, and the garden she had at the foot of a dryad tree in the Forest of Wyrms. I tell you, she went up expecting well-aerated soil, and did she get a surprise! Oh, yes indeed! Why, I remember it like it was burned into my memory with a flaming stick, which was very close to the truth, actually...~ [JANJAN61] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 66
END

IF ~~ THEN BEGIN 110 // from:
  SAY #20282 /* ~Er... yes?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 67
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20293 /* ~Ahh... of course.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 129 133 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
CombatCounter(0)
Global("BJan8","LOCALS",0)
~ THEN BEGIN 112 // from:
  SAY #21175 /* ~Hmm. You know, this all reminds me of my dear old mother. Did I ever tell you of my mother, Valygar?~ [JANJAN54] */
  IF ~~ THEN DO ~SetGlobal("BJan8","LOCALS",1)
~ EXTERN ~BVALYGA~ 49
END

IF ~~ THEN BEGIN 113 // from:
  SAY #21177 /* ~Oh, come now, surely it can't all be that bad? Mothers are the most benevolent force in the world, cradling you and caring for you from birth until death. What could be wrong with a story about a dear old mother?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 50
END

IF ~~ THEN BEGIN 114 // from:
  SAY #21181 /* ~Er...~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 53
END

IF ~~ THEN BEGIN 115 // from:
  SAY #21185 /* ~Ah, no, no. I think that is quite sufficient, thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #98805 /* ~Yep, absolutely.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 42
END

IF ~~ THEN BEGIN 117 // from:
  SAY #98807 /* ~You weren't asking me about tattoo removal?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 43
END

IF ~~ THEN BEGIN 118 // from:
  SAY #98809 /* ~Well, you know. Your face and all.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 44
END

IF ~~ THEN BEGIN 119 // from:
  SAY #98811 /* ~It could be done, you know.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 45
END

IF ~~ THEN BEGIN 120 // from:
  SAY #98813 /* ~The tattoos. They could be got rid of. Easy.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 46
END

IF ~~ THEN BEGIN 121 // from:
  SAY #98815 /* ~Well, not easy, precisely. It'd sting a bit. ~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 47
END

IF ~~ THEN BEGIN 122 // from:
  SAY #98817 /* ~A bit more than it stung to get 'em.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 48
END

IF ~~ THEN BEGIN 123 // from:
  SAY #98819 /* ~And longer, I suspect. Never did understand tattoos myself. My great aunt Beryl loved them. Couldn't get enough of them. Covered her body with the things, then ate a herd of cows to put on enough weight to make room for some more.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 49
END

IF ~~ THEN BEGIN 124 // from:
  SAY #98821 /* ~She was an impressive sight in the end, was Beryl. Four hundred pounds, she was.~ */
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #98822 /* ~Burying her would've been a waste. My uncle used her skin to make a tent that could hold more than twenty people. Fifteen non-gnome people.~ */
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #98823 /* ~Only problem was the tattoos. Some of them creeped people out. So I figured out how to remove them.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 50
END

IF ~~ THEN BEGIN 127 // from:
  SAY #98825 /* ~The secret is turnip juice.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 51
END

IF ~~ THEN BEGIN 128 // from:
  SAY #98827 /* ~When you want to get rid of those tattoos, you just let me know. But bring me a couple gold; turnip juice doesn't come cheap.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
Global("OHD_jan","GLOBAL",0)
~ THEN BEGIN 129 // from:
  SAY #99676 /* ~There are times I wish I could still speak with my great-uncle Hans Jansen. A great alchemist, he was. He could turn donkey dung into gold. Funny thing, though—few people want gold that smells like donkey dung. Also, the effect was only temporary. He mistimed one transaction and found himself in a world of—~ */
  IF ~~ THEN DO ~SetGlobal("OHD_jan","GLOBAL",1)
~ EXTERN ~BDORN~ 53
END

IF ~~ THEN BEGIN 130 // from:
  SAY #99678 /* ~Actually, now that you mention it—~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #99679 /* ~Wait. Must've left it in the other pack. And there's a story for you—~ */
  IF ~~ THEN EXTERN ~BDORN~ 54
END

IF ~~ THEN BEGIN 132 // from:
  SAY #99681 /* ~Eh. Wasn't that good a story anyway.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~  IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_jan","GLOBAL",0)
~ THEN BEGIN 133 // from:
  SAY #99198 /* ~Wait a second. Wait one second.~ */
  IF ~~ THEN REPLY #99199 /* ~I'll give you two.~ */ DO ~SetGlobal("OHH_jan","GLOBAL",1)
~ GOTO 134
  IF ~~ THEN REPLY #99200 /* ~What's the matter, Jan?~ */ DO ~SetGlobal("OHH_jan","GLOBAL",1)
~ GOTO 134
  IF ~~ THEN REPLY #99201 /* ~I wait for no one and nothing.~ */ DO ~SetGlobal("OHH_jan","GLOBAL",1)
~ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 135.0 133.1 133.0
  SAY #99202 /* ~Hexxat!~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 75
END

IF ~~ THEN BEGIN 135 // from: 133.2
  SAY #99203 /* ~You can go where you will, <CHARNAME>. It's not you I wish to speak to.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 136 // from:
  SAY #99205 /* ~You've done plenty already.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 76
END

IF ~~ THEN BEGIN 137 // from:
  SAY #99208 /* ~Let me tell you a story, vampire.~ */
  IF ~~ THEN GOTO 138
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 591
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #99210 /* ~It's about a lovely girl named Yanna Jojannsen.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 77
END

IF ~~ THEN BEGIN 139 // from:
  SAY #99215 /* ~A lovely girl was Yanna. With delicate, nimble fingers. She had a great future ahead of her, or so it seemed to everyone who met her.~ */
  IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #99216 /* ~And then she started talking about the tomb of this raging monster called Dragomir. About how great treasure could be found there.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #99217 /* ~Her family tried to talk her out of going there, of course, but it was all for naught. One night, she vanished, never to return.~ */
  IF ~~ THEN REPLY #99218 /* ~Oh no. You're saying this Yanna was one of Hexxat's victims?~ */ GOTO 142
  IF ~~ THEN REPLY #99219 /* ~I hope this story ends happily ever after with her living with the boy she eloped with...~ */ GOTO 147
  IF ~~ THEN REPLY #99220 /* ~It happens.~ */ GOTO 146
END

IF ~~ THEN BEGIN 142 // from: 147.0 146.0 141.0
  SAY #99221 /* ~She was my niece, and this, this, this VAMPIRE lured her to her doom.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 78
END

IF ~~ THEN BEGIN 143 // from:
  SAY #99223 /* ~Sorry? I'll show you sorry!~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 79
END

IF ~~ THEN BEGIN 144 // from: 149.0 148.0
  SAY #99228 /* ~Tell it to my sister, <CHARNAME>. Oh wait, you can't—she died soon after Yanna, broken by her daughter's loss.~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #99229 /* ~I've seen many a monster in my time, but this—this THING has no place walking the world. Not while my niece lies dead.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from: 141.2
  SAY #99230 /* ~It didn't just happen. SHE made it happen.~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 147 // from: 141.1
  SAY #99231 /* ~It'd be nice to think that, wouldn't it? But that's not the way it went.~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 148 // from:
  SAY #99232 /* ~Understandable?~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 149 // from:
  SAY #99233 /* ~Regret?~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 150 // from:
  SAY #88676 /* ~The furniture was nothing. It was when old Lor took his knife to the big keg in the basement that his children started complaining. The basement filled up with turnip stout. Lollycook—that was the miller's one-eyed son-in-law, the one with the hedgehog (NOT the one with the sister who slew Otis Emerald's prize walking pumpkin—justifiably, too, as you've never seen a more arrogant pumpkin in your life!)—why, Lollycook came over and lapped up the stout like a thirsty animal! He couldn't stand up straight for days. Meanwhile, the children took to fighting over the six pieces of the keg. One said her piece was too small; another said his was covered with mold; still another said that her piece wasn't wet and didn't smell musty. She suspected a forgery.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 93
END

IF ~~ THEN BEGIN 151 // from:
  SAY #88678 /* ~Settle it? You give that family too much credit. Lor died not long after. Dividing things with a butter knife is hard work, so by then he'd only made it through one eightieth of his estate. They're still feuding over the rest, as far as I know, as well as what he managed to cut up.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 94
END

IF ~~ THEN BEGIN 152 // from:
  SAY #88680 /* ~Yes, indeed. I don't think anybody really wants to die, do they? That's why gods and mortals alike go out of their way to make their legacies so much trouble. Unfortunately for my Aunt Peony, her third husband was even worse... ~ */
  IF ~~ THEN EXIT
END
