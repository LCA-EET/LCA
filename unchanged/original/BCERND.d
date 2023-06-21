// creator  : weidu (version 24900)
// argument : BCERND.DLG
// game     : .
// source   : ./override/BCERND.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BCERND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BCernd1","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #431 /* ~Truly, mankind was never meant to scurry beneath the land as a weasel or mole. We have not the eyes for such delving. It is a task better suited to the dwarven folk.~ [CERND49] */
  IF ~~ THEN DO ~SetGlobal("BCernd1","LOCALS",1)
~ EXTERN ~BMAZZY~ 33
END

IF ~~ THEN BEGIN 1 // from:
  SAY #432 /* ~Worry not, Mazzy, my discomfort is minor. I stumble now and then, but bats find their way on a simple screech, and I do fine with a similar "help" on occasion.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 34
END

IF ~~ THEN BEGIN 2 // from:
  SAY #433 /* ~There is truth to what you say, but I hesitate only because I prefer to recognize my fears in the light of day. I feel uncomfortable away from open skies.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 35
END

IF ~~ THEN BEGIN 3 // from:
  SAY #434 /* ~Ah, Mazzy, what a gentle soul you have. I shall always be pleased to have you by my side, but you needn't worry so about me.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #435 /* ~Others will have more need of the stave you offer, but I will walk by your side without leaning. Lead on, stalwart halfling, I shall follow without fear!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #1325 /* ~Ha! That prancing squirrel over yonder? If you could only understand his speech, your face would flush quite red at its vulgarity.~ [CERND46] */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 6 // from:
  SAY #2811 /* ~Forgive me, dear elf. It is just that I have never understood the city.~ [CERND47] */
  IF ~~ THEN EXTERN ~BAERIE~ 34
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2813 /* ~Perhaps that is it. I have my grove, and the beauty tethers my heart to its ferns and mosses. When next we visit, would you like me to show them to you?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 35
END

IF ~~ THEN BEGIN 8 // from:
  SAY #2860 /* ~Then it shall be so.~ */
  IF ~~ THEN DO ~SetGlobal("CerndTeacher","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  InParty("Aerie")
See("Aerie")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
Global("CerndTeacher","GLOBAL",1)
!StateCheck("Aerie",STATE_SLEEPING)
Global("BCernd2","LOCALS",0)
~ THEN BEGIN 9 // from:
  SAY #2872 /* ~You see those tiny mushrooms hidden away there... and how they glow? They are of the foxfire family and are the material component for the "faerie fire" spell.~ [CERND50] */
  IF ~~ THEN DO ~SetGlobal("BCernd2","LOCALS",1)
~ EXTERN ~BAERIE~ 36
END

IF WEIGHT #2 ~  InParty("Aerie")
See("Aerie")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
Global("CerndTeacher","GLOBAL",1)
!StateCheck("Aerie",STATE_SLEEPING)
Global("BCernd3","LOCALS",0)
~ THEN BEGIN 10 // from:
  SAY #2875 /* ~Ah, over there rests a stand of simple wood ferns. I have seen them grow as high as my chest some years.~ [CERND51] */
  IF ~~ THEN DO ~SetGlobal("BCernd3","LOCALS",1)
~ EXTERN ~BAERIE~ 37
END

IF WEIGHT #3 ~  InParty("Aerie")
See("Aerie")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
Global("CerndTeacher","GLOBAL",1)
!StateCheck("Aerie",STATE_SLEEPING)
Global("BCernd4","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #2900 /* ~Move carefully now... do you see that large red flower? It is a dead man's lotus and shall put you right to sleep should you disturb its pollen.~ [CERND52] */
  IF ~~ THEN DO ~SetGlobal("BCernd4","LOCALS",1)
~ EXTERN ~BAERIE~ 38
END

IF ~~ THEN BEGIN 12 // from:
  SAY #2905 /* ~Though my body may roam, my spirit shall always rest here, Aerie.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #3019 /* ~I'm afraid I cannot, Korgan. It is not within my sphere of influence, nor is it my place to do so.~ [CERND48] */
  IF ~~ THEN EXTERN ~BKORGAN~ 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY #3263 /* ~The great oak might crush a building when it falls, but the sapling that seeps its roots through the foundation will stop the building in the first, lest the cellars leak and fungoids take the builders.~ [CERND59] */
  IF ~~ THEN EXTERN ~BMINSC~ 60
END

IF ~~ THEN BEGIN 15 // from:
  SAY #3269 /* ~I see you have an appreciation for the small things, Minsc. You see the power in their simple nature.~ [CERND60] */
  IF ~~ THEN EXTERN ~BMINSC~ 62
END

IF ~~ THEN BEGIN 16 // from:
  SAY #3274 /* ~Ahh, you are his tree amidst the cities and people, and despite your bending and bowing in the wind, you are his stability, as I suspect he is yours.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 63
END

IF ~~ THEN BEGIN 17 // from:
  SAY #3314 /* ~The great wind that shakes the tree causes many that dwell there to fear for their safety and curse the bluster. The same wind will cause many a nut to fall, and in this the forest is renewed, providing even more space for those that fear.~ [CERND61] */
  IF ~~ THEN EXTERN ~BMINSC~ 65
END

IF ~~ THEN BEGIN 18 // from:
  SAY #7404 /* ~Why does the king protest? His forests are pilfered, leaving just hills and scrub, but what loss is it? How can it be of value when it was never put to use?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 97
END

IF WEIGHT #4 ~  InParty("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BCernd5","LOCALS",0)
~ THEN BEGIN 19 // from:
  SAY #7410 /* ~Are the flowers not beautiful this time of year? Perhaps a little late in the blooming, but still...~ [CERND53] */
  IF ~~ THEN DO ~SetGlobal("BCernd5","LOCALS",1)
~ EXTERN ~BEDWIN~ 98
END

IF ~~ THEN BEGIN 20 // from:
  SAY #7412 /* ~Perhaps your new form has made you more sensitive, though not in a way I call improvement. I meant nothing. It is my wont to talk of nature and her gifts.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 99
END

IF ~~ THEN BEGIN 21 // from:
  SAY #7416 /* ~I mean, if I say how the great cycle fells the mighty oak, yielding to the furrows and valleys of a more subtle landscape, is it my fault if you take offense?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 100
END

IF ~~ THEN BEGIN 22 // from:
  SAY #7420 /* ~And if I say that the great stag casts aside its wondrous mantle as the long winter approaches, should it be my concern if you draw any comparisons to your...~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 101
END

IF ~~ THEN BEGIN 23 // from:
  SAY #7427 /* ~Poor Edwin. When nature casts aside an appendage, she is confident it will return in the proper season. My heart weeps for your insecurities. Weep, weep.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 102
END

IF ~~ THEN BEGIN 24 // from:
  SAY #7500 /* ~It began as a craving for connection, Edwin. The Earth and her cousins, the Sky and the Water, all spoke in tongues of ancient mystery and lore. ~ [CERND58] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 25 // from:
  SAY #8603 /* ~You've a nerve, Viconia. Anger and pain is your home, and a woeful, cold place it must be. My brothers celebrate life, renewal, seasons, the parliament of trees, and the splendor of nature's bounty.~ [CERND45] */
  IF ~~ THEN GOTO 80
END

IF WEIGHT #6 /* Triggers after states #: 103 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
AreaCheck("AR2800")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BCernd6","LOCALS",0)
~ THEN BEGIN 26 // from:
  SAY #10991 /* ~Ah, fair Talltrees. Look at this city, Keldorn, and learn. No bricks or mortar, no temples of cut and polished marble. If only Athkatla could be like this, I would not despise it so.~ [CERND54] */
  IF ~~ THEN DO ~SetGlobal("BCernd6","LOCALS",1)
~ EXTERN ~BKELDOR~ 61
END

IF ~~ THEN BEGIN 27 // from:
  SAY #11000 /* ~But don't you see? What you call civilization is a cancer, expanding like a fungus on a corpse. It is a world out of balance, and it can result only in decay.~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 28 // from:
  SAY #11007 /* ~Well, you have proven one point, at least. ~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 63
END

IF ~~ THEN BEGIN 29 // from:
  SAY #11011 /* ~That there is nothing more aggravating than arguing with a theologian.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 103 107 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaType(FOREST)
Global("BCernd7","LOCALS",0)
~ THEN BEGIN 30 // from:
  SAY #13822 /* ~The rustle of leaves sends mine own heart to fluttering. Can there be anything more beautiful than wild nature? ~ [CERND83] */
  IF ~~ THEN REPLY #13894 /* ~Not now, Cernd. I have no time for idle chatter.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 31
  IF ~~ THEN REPLY #13895 /* ~Oh, I would agree, though not quite as comely as the eyes of a loved one.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 32
  IF ~  Class(Player1,DRUID)
~ THEN REPLY #13896 /* ~It is a pity it is not of more use. It might survive the plow more often if it were.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 87
  IF ~  !Class(Player1,DRUID)
~ THEN REPLY #13897 /* ~I prefer tailored nature, like a fine garden, or the productivity of a well-maintained farm.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 34
  IF ~  Class(Player1,DRUID)
~ THEN REPLY #13900 /* ~I tend to prefer the tailored nature of a fine garden, or the productivity of a well-maintained farm.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 88
  IF ~  !Class(Player1,DRUID)
!Class(Player1,RANGER)
~ THEN REPLY #13939 /* ~I want the city. I feel as though any second I might snap a leg in some rodent's burrow.~ */ DO ~SetGlobal("BCernd7","LOCALS",1)
~ GOTO 36
  IF ~  !Class(Player1,DRUID)
~ THEN REPLY #14170 /* ~It is a pity it is not of more use. It might survive the plow more often if it were.~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14185 /* ~As you will, though a walk in the garden is never quite so missed as when winter comes. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #14187 /* ~Perhaps, though they are best reflecting sky or trees. Both would be ideal, but choices must be made on occasion. Ah, no regrets in the Great Mother's home.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 87.0
  SAY #14193 /* ~Your words are very uncharacteristic for a fellow druid. Do you hold your service to nature in as high a regard as you should?~ */
  IF ~~ THEN REPLY #14198 /* ~Do not question my commitment to nature! I will not tolerate such a slight!~ */ GOTO 37
  IF ~~ THEN REPLY #14199 /* ~Nature's bounty might be appreciated more if it were accessible to the common person.~ */ GOTO 38
  IF ~~ THEN REPLY #14201 /* ~I hold nature to be my sole reason for existing, but I must consider all views.~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 30.6 30.3
  SAY #14194 /* ~A section of unspoiled forest will feed far more creatures in the long term, after a farm is exhausted and the people are hungry. Balance keeps the land lush.~ */
  IF ~~ THEN REPLY #14195 /* ~Nature's bounty might be appreciated more if it were accessible to the common person.~ */ GOTO 38
  IF ~~ THEN REPLY #14196 /* ~Bah, simply seeding the land with fish or manure will revitalize any farm. It is sustainable.~ */ GOTO 40
  IF ~~ THEN REPLY #14197 /* ~A farmer might disagree. Harvesting for more than one is a hard task in the wild.~ */ GOTO 39
END

IF ~~ THEN BEGIN 35 // from: 88.0
  SAY #14202 /* ~If you truly believe as you say, perhaps you should reconsider your relationship with her.~ */
  IF ~~ THEN REPLY #14203 /* ~I will not tolerate you questioning my dedication. My commitment is absolute.~ */ GOTO 37
  IF ~~ THEN REPLY #14204 /* ~I think in terms of between nature and civilization. I apologize if it colored my outlook.~ */ GOTO 39
  IF ~~ THEN REPLY #14205 /* ~I impart appreciation to others. They can learn from small gardens. Nature must not threaten.~ */ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 30.5
  SAY #13917 /* ~You only lack experience. Soon you will be skilled in sidestepping the thorns, the holes, and the... ehh... softer obstacles left behind by the residents of the wood.~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 37 // from: 35.0 33.0
  SAY #14206 /* ~You should be more concerned with your own thoughts than how others view you. Such pride will lead to arrogance in time.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 38 // from: 34.0 33.1
  SAY #14207 /* ~Perhaps the problem is that the common person is not accessible to nature. It is her children that have left her. A return to the old ways would be best for all.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 39 // from: 35.1 34.2 33.2
  SAY #14208 /* ~Perhaps, though compromise must have its limits. Deforming nature for the ease of the harvester is not beneficial to either. It dilutes what she is.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #14213 /* ~Requiring larger farms to feed the animals to produce the manure, claiming more land for the plow, which means larger expanses of bare plains in the off-season.~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 41 // from: 35.2
  SAY #14220 /* ~But neither is it to be taken for granted as something that is there with no effort. A garden is lovely, but it taints the perception of the onlooker.~ */
  IF ~~ THEN GOTO 86
END

IF WEIGHT #10 /* Triggers after states #: 103 107 116 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("BCernd8","LOCALS",0)
~ THEN BEGIN 42 // from:
  SAY #14228 /* ~Might I have a word with you? Away from the ears of others.~ [CERND84] */
  IF ~  Class(Player1,DRUID)
~ THEN REPLY #14255 /* ~I've always time for a fellow servant of nature. What is troubling you, Cernd?~ */ DO ~SetGlobal("BCernd8","LOCALS",1)
~ GOTO 44
  IF ~  !Class(Player1,DRUID)
~ THEN REPLY #14256 /* ~I always have time to speak with a fine servant of nature. What is it you require, Cernd?~ */ DO ~SetGlobal("BCernd8","LOCALS",1)
~ GOTO 44
  IF ~~ THEN REPLY #14257 /* ~Make it quick, Cernd. I've things to do.~ */ DO ~SetGlobal("BCernd8","LOCALS",1)
~ GOTO 45
  IF ~~ THEN REPLY #14258 /* ~Not right now, Cernd. ~ */ DO ~SetGlobal("BCernd8","LOCALS",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 49.0 48.1 47.0 45.1 44.1 42.3
  SAY #14259 /* ~Perhaps silence says more than any answer. There is something not natural about you, though I cannot place my finger on it. Nature will keep an eye on you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1 42.0
  SAY #14268 /* ~I have a concern as a servant of nature. I... I don't know how to phrase this, but are you... normal? Something is not quite right, and I fear it may be you.~ */
  IF ~~ THEN REPLY #14306 /* ~What... what exactly is it you seem to sense? ~ */ GOTO 92
  IF ~~ THEN REPLY #14307 /* ~Mind your own business, Cernd. ~ */ GOTO 43
  IF ~~ THEN REPLY #14308 /* ~You know you have nothing to fear. You would not travel with me if you thought otherwise.~ */ GOTO 93
END

IF ~~ THEN BEGIN 45 // from: 42.2
  SAY #14270 /* ~I'm sure, but this matter must be explored. I... do not know how to say this inoffensively, but are you... normal? The feeling I get from you is... disturbing.~ */
  IF ~~ THEN REPLY #14343 /* ~And what is it that you think you sense?~ */ GOTO 92
  IF ~~ THEN REPLY #14344 /* ~You have no reason to concern yourself with my affairs. Mind your own business.~ */ GOTO 43
  IF ~~ THEN REPLY #14345 /* ~Does it trouble you? You wouldn't travel with me at all if you thought me dangerous. What does this matter?~ */ GOTO 93
END

IF ~~ THEN BEGIN 46 // from: 92.0
  SAY #14312 /* ~You do not have quite as much in common with her as her other creations. You look like a duck and quack like a duck, but <PRO_BROTHERSISTER>, you ain't a duck.~ */
  IF ~~ THEN REPLY #14333 /* ~Charming. Are you accusing me of something? Because if you are, speak it plain.~ */ GOTO 94
  IF ~~ THEN REPLY #14334 /* ~And if I am... different, what would your reaction be? What does your duty tell you?~ */ GOTO 95
  IF ~~ THEN REPLY #14335 /* ~I breathe like any other. You know I can be trusted; you would not travel with me otherwise.~ */ GOTO 93
END

IF ~~ THEN BEGIN 47 // from: 93.0
  SAY #14340 /* ~I... I would know what you are. You can choose not to say, and I suppose it really doesn't matter, but it would ease my mind and further our trust.~ */
  IF ~~ THEN REPLY #14417 /* ~And if I have no interest in furthering that trust? No, Cernd, I keep my business to myself.~ */ GOTO 43
  IF ~~ THEN REPLY #14418 /* ~Then I will tell you something of myself, and you can judge whether it promotes trust or not. ~ */ GOTO 50
  IF ~~ THEN REPLY #14424 /* ~I will get no peace until you know; is that it? Then listen well, and damn you for asking.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 94.0
  SAY #14346 /* ~You know what is different about you, yet you are also not willing to speak it. At least, that is my understanding.~ */
  IF ~~ THEN REPLY #14415 /* ~It is BEYOND understanding. Very well, but remember that you asked to bear the weight of this.~ */ GOTO 51
  IF ~~ THEN REPLY #14416 /* ~You have no business knowing. Tend to your flowers and leave me be.~ */ GOTO 43
  IF ~~ THEN REPLY #14426 /* ~It is something I carry alone. You have asked and I will tell, but hear me out to the fullest.~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 95.0
  SAY #14390 /* ~If you do not wish to speak on this I will have to honor your wish, but I will continue to be vigilant.~ */
  IF ~~ THEN REPLY #14403 /* ~If there comes a time when it will be of consequence to you, I will let you know.~ */ GOTO 43
  IF ~~ THEN REPLY #14404 /* ~I will have no peace until you know. You will damn your ears after I am done.~ */ GOTO 51
  IF ~~ THEN REPLY #14405 /* ~I suppose you may understand. It is a great weight for me to carry...~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.2 48.2 47.1
  SAY #14436 /* ~We are comrades in travel and battle, and I have no cause to judge harshly. Speak.~ */
  IF ~~ THEN REPLY #14441 /* ~As foretold by Alaundo, there came the Time of Troubles, when gods walked the soil beside mortals. Some of them knew they would not survive, and took drastic measures, as gods often do.~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 49.1 48.0 47.2
  SAY #14438 /* ~I am sure I will withstand the truth just fine. Speak and I will give you your due.~ */
  IF ~~ THEN REPLY #14457 /* ~So you say. Know you the blitherings of Alaundo? Of the Time of Troubles, when gods walked alongside we pitiful mortals? A few gods knew of prophecies too, and took... certain steps.~ */ GOTO 57
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #14446 /* ~This is well known. Speak on.~ */
  IF ~~ THEN REPLY #14447 /* ~Of the darkest was Bhaal, Lord of Murder. Bhaal walked the realm before the Time of Troubles and made preparations for his coming demise.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14450 /* ~I recall when all the assassins of the realms were slain, but you speak of something different?~ */
  IF ~~ THEN REPLY #14451 /* ~Bhaal... "seeded" the realms with his children, born of every race and creed, that they might carry his legacy within them. I... am one such child.~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 58.0 53.0
  SAY #14452 /* ~The Lord of Murder shall perish, but in his death he shall spawn a score of mortal progeny. So sayeth the wise Alaundo.~ */
  IF ~  ReputationGT(Player1,10)
~ THEN REPLY #14453 /* ~I had a brother, named Sarevok, and our conflict was brutal. I am not destined to a peaceful end, Cernd; I am fuel, not an heir. That is my secret.~ */ GOTO 96
  IF ~  ReputationLT(Player1,11)
~ THEN REPLY #14455 /* ~I had a brother, named Sarevok, and our conflict was brutal. I am not destined to a peaceful end, Cernd; I am fuel, not an heir. That is my secret.~ */ GOTO 97
END

IF ~~ THEN BEGIN 55 // from: 96.0
  SAY #14454 /* ~I don't believe you share the taint of your... father; the influence of a dead god must wane with time. We will continue, and I bear you no ill.~ */
  IF ~~ THEN REPLY #14463 /* ~You are a man of character, Cernd, and I will not risk our friendship.~ */ GOTO 59
  IF ~~ THEN REPLY #14464 /* ~So say you now, but in time you will come to fear what I am. Others have, and more will.~ */ GOTO 60
END

IF ~~ THEN BEGIN 56 // from: 97.0
  SAY #14456 /* ~If you succumb to his taint further, I will act, for it may be more your own doing. A god is a god, but they are only as strong as the power we give them.~ */
  IF ~~ THEN REPLY #14465 /* ~Wise words, but still only words. You don't know, and can't know, what it is really like.~ */ GOTO 60
  IF ~~ THEN REPLY #14466 /* ~Perhaps, though it is a struggle at times. I work hard to be my own person.~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #14458 /* ~I have heard as such, though more eloquent in the telling.~ */
  IF ~~ THEN REPLY #14459 /* ~One of the darkest was Bhaal, Lord of Murder. He knew what would happen, and the sly old bastard laid the groundwork for his future.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #14460 /* ~He murdered the majority of his followers, did he not? Could what you speak of be any darker than this?~ */
  IF ~~ THEN REPLY #14461 /* ~Judge for yourself. Bhaal "seeded" the land with children of every creed, that they might carry his legacy within. Surprise, I am one such child.~ */ GOTO 54
END

IF ~~ THEN BEGIN 59 // from: 56.1 55.0
  SAY #14462 /* ~We are our parents' children, but we make our own fates. The tree drops the nut, but has no say over how it flourishes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 56.0 55.1
  SAY #14467 /* ~Do you blame such fear on who your father wishes you to be, or who you are? I should think you will be responsible for the latter.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 103 107 116 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaType(FOREST)
Global("BCernd9","LOCALS",0)
~ THEN BEGIN 61 // from:
  SAY #14589 /* ~Ahhhh... I am never quite so happy as when I am in the wildest parts of nature. To live as the animals do is a very liberating thing.~ [CERND85] */
  IF ~~ THEN REPLY #14590 /* ~Pipe down, Cernd, I don't have the time.~ */ DO ~SetGlobal("BCernd9","LOCALS",1)
~ GOTO 62
  IF ~~ THEN REPLY #14591 /* ~You cannot be advocating that all civilized people should act like animals. The result would be chaos.~ */ DO ~SetGlobal("BCernd9","LOCALS",1)
~ GOTO 63
  IF ~~ THEN REPLY #14592 /* ~I do like to indulge my animal side now and again. Nothing like a little base carnage to liven up a tenday.~ */ DO ~SetGlobal("BCernd9","LOCALS",1)
~ GOTO 63
  IF ~~ THEN REPLY #14596 /* ~I agree, though it would not be to everyone's tastes.~ */ DO ~SetGlobal("BCernd9","LOCALS",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #14625 /* ~As you will, though if you throw enough rocks, the birds will forever avoid your feeders.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 98.0 61.2 61.1
  SAY #14626 /* ~They know their role in the greater scheme and live peacefully as such. When was the last time you saw a stag lament that it was a stag?~ */
  IF ~~ THEN REPLY #14627 /* ~Right before the bear closed in and killed it, I would imagine.~ */ GOTO 64
  IF ~~ THEN REPLY #14628 /* ~I suppose, though life without ambition is quite contrary to what people are used to.~ */ GOTO 65
  IF ~~ THEN REPLY #14629 /* ~It knows no other life. Perhaps it wishes to be something else, but has nothing to compare itself to.~ */ GOTO 66
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14630 /* ~There is peace in knowing you are part of something greater. The bear may eat the stag, but the bear's waste and, ultimately, its corpse will feed the land.~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #14631 /* ~Different, yes, but not undesirable. There are those that fear change and change alone, whether they comprehend what might result or not. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 63.2
  SAY #14632 /* ~Why would it wish to be something it is not? It can be the best stag, so why worry about whether it would make a good beaver? Regret is a "civilized" trait.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 61.3
  SAY #14633 /* ~Certainly, but so few even dare to try. They have forgotten where they came from, but I can show them. That is my duty, to nature and all her offspring.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 24.0
  SAY #18306 /* ~It was my calling to unravel the worlds within a single seed or read the chronicle of a season in the veins of a leaf. She called, and I answered.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #20194 /* ~Jaheira, I see you as an equal in this group. Save such reverence for official druid functions.~ [CERND57] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 44
END

IF ~~ THEN BEGIN 70 // from:
  SAY #20196 /* ~I prefer this calm, but I wonder if a storm is looming. I have watched the cycle of the hunt in nature, but never thought I would be the hunter, or the hunted.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 45
END

IF ~~ THEN BEGIN 71 // from:
  SAY #20199 /* ~Certainly I have, and passionately too, but now we go far afield. Ahh, pay me no mind. I will grow accustomed to being out of my element.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 103 107 116 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
CombatCounter(0)
!StateCheck("Valygar",STATE_SLEEPING)
Global("BCernd10","LOCALS",0)
~ THEN BEGIN 72 // from:
  SAY #21071 /* ~I've noticed, Valygar, that you are quite the adept fighter. I'm afraid I cannot help but compliment you on this.~ [CERND55] */
  IF ~~ THEN DO ~SetGlobal("BCernd10","LOCALS",1)
~ EXTERN ~BVALYGA~ 33
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21072 /* ~Still, it is a skill that has served you well, no?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 34
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21074 /* ~Ah, but even I have been forced to fight on occasion. And had you not your skill with the sword, you would have not escaped the Cowled Wizards, would you?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 35
END

IF WEIGHT #13 /* Triggers after states #: 103 107 116 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
CombatCounter(0)
Dead("Lavok02")
!StateCheck("Valygar",STATE_SLEEPING)
Global("BCernd11","LOCALS",0)
~ THEN BEGIN 75 // from:
  SAY #21076 /* ~Valygar, this hatred that you hold inside you is truly unhealthy. It is akin to the rot in a tree trunk that will only weaken you in a time when you need to be strong.~ [CERND56] */
  IF ~~ THEN DO ~SetGlobal("BCernd11","LOCALS",1)
~ EXTERN ~BVALYGA~ 36
END

IF ~~ THEN BEGIN 76 // from:
  SAY #21080 /* ~If your thoughts are only of vengeance, how can they be on the path that lies ahead of us? There are more immediate dangers.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 37
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21084 /* ~We don't know all there is to know about this, Valygar. We should not be so quick to jump to conclusions.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 38
END

IF ~~ THEN BEGIN 78 // from:
  SAY #21086 /* ~Nothing? Like there was nothing else to be considered of Lavok? Your ancestor was not quite what you expected, was he?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 39
END

IF ~~ THEN BEGIN 79 // from: 5.0
  SAY #37819 /* ~Let us just say that he is less than pleased by the loudness of your voice and the fact that you are currently standing on his cache of nuts. ~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 10
END

IF ~~ THEN BEGIN 80 // from: 25.0
  SAY #37820 /* ~Shar and her ilk revere entropy, revenge, and darkness. Viconia, you and I will never see eye-to-eye, and that covenant should be respected and maintained.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #37821 /* ~And to answer your question, yes... we do care.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 116
END

IF ~~ THEN BEGIN 82 // from: 27.0
  SAY #37822 /* ~But what you call barbarism is, in truth, a harmony. Man with beast and with plant and with the earth that bears them all. There need be no discrepancy.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 138
END

IF ~~ THEN BEGIN 83 // from: 38.0
  SAY #37823 /* ~Take a bird in the hand, leave two in the bush, and keep none in the home. Balance, and everything in its proper place.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 39.0
  SAY #37824 /* ~Convenience is a trait of the city, wherein people forget how to fend for themselves. Wild nature is a hard mistress, but all the sweeter is her fruit.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 40.0
  SAY #37825 /* ~This means more land that can be ravaged by winds and lose topsoil in the long term. Meanwhile, there are fewer animals in the smaller forest.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 86 // from: 41.0
  SAY #37826 /* ~Many would still starve in the wood though surrounded by food. We must tell of the wonder, but also of what she requires. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from: 30.2
  SAY #60935 /* ~Of more use? Certainly a cultivated field yields more produce in the short term, but the bounty of the wild feeds many over longer time.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 88 // from: 30.4
  SAY #60936 /* ~Not many druids will agree with you, and for good reason. Nature is the mother of all; balance is not found in restricting her to gardens and farms.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 89 // from: 36.0
  SAY #60937 /* ~Not the prettiest of pictures, I know, but you cannot fault the canvas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from: 37.0
  SAY #60938 /* ~Not that it is my place to criticize; you must find your own balance. While you teeter on your way, however, just be sure to remember your greater duty.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 85.0
  SAY #60939 /* ~They will yield smaller hunts that must be supplemented with fish. These resources are not infinite. Moderation is key. Learn to take what is already given.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from: 45.0 44.0
  SAY #60949 /* ~All of natures' creatures live in some measure of harmony with her. You are not in opposition as such, but you are discordant.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 93 // from: 46.2 45.2 44.2
  SAY #60950 /* ~This is not a matter of character. Some things are deeper, and though you can take the leopard far from the jungles, he still has his spots.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 94 // from: 46.0
  SAY #60952 /* ~I make no accusations; I simply wish to know why you seem different to me. There is no assumption of wrongdoing, though your reluctance makes me worry further.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 95 // from: 46.1
  SAY #60953 /* ~My duty tells me to be curious; other than that, I am at a loss. You have shown you are not a danger, but perhaps I do not know what you are capable of.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 96 // from: 54.0
  SAY #60954 /* ~Well, certainly a disturbing origin, though it changes nothing in our dynamic. I am still Cernd, and you are still <CHARNAME>.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 97 // from: 54.1
  SAY #60955 /* ~Your manner bears the scars of your origin, though the god that formed you is dead and gone. I shall treat you as I would any other.~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 98 // from:
  SAY #60956 /* ~No, no, I do not mean we should relieve ourselves wherever we wish. Animals are not more disgusting or reckless; rather, they are more tranquil.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 99 // from: 64.0
  SAY #60957 /* ~This will allow new trees and plants to grow and feed new generations of stag. There is balance and contentment in this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #101912 /* ~My devotion?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 114
END

IF ~~ THEN BEGIN 101 // from:
  SAY #101914 /* ~Winds may sway the trunk, but this oak's roots are buried deep.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 115
END

IF ~~ THEN BEGIN 102 // from:
  SAY #101916 /* ~When it happens—if it happens—another tree will take its place. Life goes on, Rasaad. Forever and always.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
GlobalGT("OHD_PLOT","GLOBAL",6)
Global("OHD_cernd","GLOBAL",0)
~ THEN BEGIN 103 // from:
  SAY #99610 /* ~Resurrection Gorge. How could something with such a name have fallen into such a state?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_cernd","GLOBAL",1)
~ EXTERN ~BDORN~ 27
END

IF ~~ THEN BEGIN 104 // from:
  SAY #99612 /* ~You believe druids to be fools?~ */
  IF ~~ THEN EXTERN ~BDORN~ 28
END

IF ~~ THEN BEGIN 105 // from:
  SAY #99614 /* ~You see nothing you do not want to.~ */
  IF ~~ THEN EXTERN ~BDORN~ 29
END

IF ~~ THEN BEGIN 106 // from:
  SAY #99616 /* ~Not all problems are so easily solved.~ */
  IF ~~ THEN EXTERN ~BDORN~ 30
END

IF WEIGHT #7 ~  IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_cernd","GLOBAL",0)
~ THEN BEGIN 107 // from:
  SAY #99129 /* ~I would speak with you, <CHARNAME>.~ */
  IF ~~ THEN REPLY #99130 /* ~You not only would, you are.~ */ DO ~SetGlobal("OHH_cernd","GLOBAL",1)
~ GOTO 108
  IF ~~ THEN REPLY #99131 /* ~If you must.~ */ DO ~SetGlobal("OHH_cernd","GLOBAL",1)
~ GOTO 109
  IF ~~ THEN REPLY #99132 /* ~Is there anything I can do to convince you not to?~ */ DO ~SetGlobal("OHH_cernd","GLOBAL",1)
~ GOTO 115
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #99133 /* ~I am concerned.~ */
  IF ~~ THEN REPLY #99134 /* ~With what?~ */ GOTO 109
  IF ~~ THEN REPLY #99135 /* ~So am I, though I doubt we're concerned about the same things.~ */ GOTO 109
  IF ~~ THEN REPLY #99136 /* ~I am not. I am particularly unconcerned with your concerns.~ */ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.2 108.1 108.0 107.1
  SAY #99137 /* ~This vampire you have taken to your bosom endangers us all. She is an affront to the natural order.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 47
END

IF ~~ THEN BEGIN 110 // from:
  SAY #99147 /* ~This cannot surprise you.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 50
END

IF ~~ THEN BEGIN 111 // from:
  SAY #99149 /* ~That which is dead should not yet live.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 51
END

IF ~~ THEN BEGIN 112 // from:
  SAY #99151 /* ~You exist, and that is... problematic.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 52
END

IF ~~ THEN BEGIN 113 // from:
  SAY #99153 /* ~How so?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 53
END

IF ~~ THEN BEGIN 114 // from:
  SAY #99155 /* ~You are clever, Hexxat. But clever will only get you so far.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from: 107.2
  SAY #99158 /* ~I am concerned. This vampire you have taken in is an affront to the natural order.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 47
END

IF WEIGHT #9 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("CERND")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_cernd","GLOBAL",0)
~ THEN BEGIN 116 // from:
  SAY #88767 /* ~You hail from the High Forest, yes, Neera? I wonder if my travels shall ever take me there. It is a place I'd dearly love to see.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_cernd","GLOBAL",1)
~ EXTERN ~BNEERA~ 126
END

IF ~~ THEN BEGIN 117 // from:
  SAY #88769 /* ~Take comfort in the thought that change is always around us—always—and that nothing is more natural than the tree losing its leaves in the fall, or the clouds changing shape in the heavens.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 127
END

IF ~~ THEN BEGIN 118 // from:
  SAY #88771 /* ~I do not talk of taking comfort in the materials of nature, though they are very beautiful and full of solace. I speak of the change that permeates it. Nature does not want your banishment to last forever.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 128
END

IF ~~ THEN BEGIN 119 // from:
  SAY #88773 /* ~Yes. Turlang is old and wise, and you were young and... young. If Turlang banished you, there is even greater reason to suspect you were not being punished and that you might someday return.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 129
END

IF ~~ THEN BEGIN 120 // from:
  SAY #88775 /* ~No, you're not. And you were not being punished, as much as it might seem like it.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 130
END

IF ~~ THEN BEGIN 121 // from:
  SAY #88777 /* ~You were being forced to change.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 131
END

IF ~~ THEN BEGIN 122 // from:
  SAY #88779 /* ~I doubt Turlang expected you to. More likely he banished you because he wanted you to grow up WITH your wild magic.~ */
  IF ~~ THEN EXIT
END
