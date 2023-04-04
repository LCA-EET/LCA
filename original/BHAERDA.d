// creator  : weidu (version 24900)
// argument : BHAERDA.DLG
// game     : .
// source   : ./override/BHAERDA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BHAERDA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #1125 /* ~Aye, my darling loon, drink is to the poor what theater is to the rich: a costly chance to play out fantasies that never shall come true.~ [HAERDA65] */
  IF ~~ THEN EXTERN ~BNALIA~ 12
END

IF ~~ THEN BEGIN 1 // from:
  SAY #1131 /* ~Ha, my dear, 'tis true, for had your family patronized me while I was still with the theater, I would be far wealthier than I am today!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #30 /* Triggers after states #: 4 6 9 11 14 19 26 28 32 38 50 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("CDHaerdalisMazzyBanter","LOCALS",0)
~ THEN BEGIN 2 // from:
  SAY #1135 /* ~Mazzy, Mazzy, Mazzy. All the ferocity of Cattie-Brie in a package half her size! ...You would have made a fine and noble knight, my little falcon. ~ */
  IF ~~ THEN DO ~SetGlobal("CDHaerdalisMazzyBanter","LOCALS",1)
~ EXTERN ~BMAZZY~ 42
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1137 /* ~Aye, falcon... Aye, I believe it.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 14 19 28 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
CombatCounter(0)
Global("BHaerDalis1","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY #1139 /* ~A word, good knight Anomen... In the last battle, I noticed you pulling back and parrying... Next time you see an opening like that, my advice is to take advantage of it.~ [HAERDA46] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis1","LOCALS",1)
~ EXTERN ~BANOMEN~ 70
END

IF ~~ THEN BEGIN 5 // from:
  SAY #1148 /* ~Aye, Anomen, talk as you wish. For all your swagger, you wouldn't last a day upon the planes.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 71
END

IF WEIGHT #24 /* Triggers after states #: 14 19 28 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BHaerDalis2","LOCALS",0)
~ THEN BEGIN 6 // from:
  SAY #1293 /* ~Keldorn, my faithful hound... how is it that you came to be a paladin, anyhow?~ [HAERDA47] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis2","LOCALS",1)
~ EXTERN ~BKELDOR~ 47
END

IF ~~ THEN BEGIN 7 // from: 160.0
  SAY #1295 /* ~Alas, where be an inkwell and some papyrus when I need it?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 132
END

IF ~~ THEN BEGIN 8 // from:
  SAY #1324 /* ~Aye, but then where would go the poetry, good knight? Heh... but come, <CHARNAME> seems impatient with our chatter. Let us put it off, then.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 14 19 28 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Cernd")
See("Cernd")
AreaType(FOREST)
!StateCheck("Cernd",STATE_SLEEPING)
Global("BHaerDalis3","LOCALS",0)
~ THEN BEGIN 9 // from:
  SAY #1326 /* ~Ah, Cernd, my rustic, wind-borne swallow! These woods have such a regal bearing, their airs so sweetly scented by the leaf's decay...~ [HAERDA48] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis3","LOCALS",1)
~ GOTO 161
END

IF ~~ THEN BEGIN 10 // from:
  SAY #1337 /* ~...Cernd, you could have explained that in a manner that would not have involved me wincing.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #26 /* Triggers after states #: 14 19 28 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("BHaerDalis4","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #1342 /* ~So this ancestor of yours, Lavok, he created such beasts as ghouls and skeletons and other wakened dead of that ilk?~ [HAERDA49] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis4","LOCALS",1)
~ EXTERN ~BVALYGA~ 27
END

IF ~~ THEN BEGIN 12 // from:
  SAY #1351 /* ~I see. I imagine that your family must have been exposed to many such things over their time.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 28
END

IF ~~ THEN BEGIN 13 // from:
  SAY #1354 /* ~Aye, hawk, aye. A truth's been spoken, and it's been spoken from your tongue.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
CheckStatGT("HaerDalis",5,FATIGUE)
Global("BHaerDalis5","LOCALS",0)
~ THEN BEGIN 14 // from:
  SAY #1367 /* ~My raven, my raven, we must have rest if we are to keep this flock together.~ [HAERDA50] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis5","LOCALS",1)
~ EXTERN ~BAERIE~ 9
END

IF ~~ THEN BEGIN 15 // from: 162.0
  SAY #1370 /* ~You fly above us all, no anger, no rage to tie you down. Aye... You're right, Aerie. You are no hound, nor shall I ever name you one. You have my pledge.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 10
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1374 /* ~Aye, I promise, dove.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #1384 /* ~My hound, my hound, my dog of war, do not invite death to come knocking at your door. I am sure there be plenty of diversions awaiting your keen edge anon.~ [HAERDA61] */
  IF ~~ THEN EXTERN ~BKORGAN~ 51
END

IF ~~ THEN BEGIN 18 // from:
  SAY #1386 /* ~You do have a certain invective creativity, Korgan. Now, if only you could direct that skill for invention into something more cerebral, less bravado.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 52
END

IF WEIGHT #19 /* Triggers after states #: 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
Global("BHaerDalis6","LOCALS",0)
~ THEN BEGIN 19 // from:
  SAY #1388 /* ~My red-cloaked sparrowhawk, I could barely catch my sleep last night with all your arcane muttering.~ [HAERDA51] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis6","LOCALS",1)
~ EXTERN ~BEDWIN~ 53
END

IF ~~ THEN BEGIN 20 // from:
  SAY #1390 /* ~Aye, I could write a play and you would be my entire cast and extras...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #1392 /* ~Please, Jan, my name is Haer'Dalis.~ [HAERDA60] */
  IF ~~ THEN EXTERN ~BJAN~ 65
END

IF ~~ THEN BEGIN 22 // from:
  SAY #1394 /* ~Yes, epic. Go on.~ */
  IF ~~ THEN EXTERN ~BJAN~ 66
END

IF ~~ THEN BEGIN 23 // from:
  SAY #1401 /* ~What, if I may ask, is a moose?~ */
  IF ~~ THEN EXTERN ~BJAN~ 67
END

IF ~~ THEN BEGIN 24 // from:
  SAY #1408 /* ~Jan, beavers can't drown. They spend half of their life underwater.~ */
  IF ~~ THEN EXTERN ~BJAN~ 68
END

IF ~~ THEN BEGIN 25 // from:
  SAY #1419 /* ~Pray I never go there, Jan. Pray I never go there.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 /* Triggers after states #: 28 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("BHaerDalis7","LOCALS",0)
~ THEN BEGIN 26 // from:
  SAY #2092 /* ~A question, my hound and hamster... why is it that you come into such rage when we fight? 'Tis as if all the furies of the planes were all at once let loose within your veins!~ [HAERDA52] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis7","LOCALS",1)
~ EXTERN ~BMINSC~ 16
END

IF ~~ THEN BEGIN 27 // from:
  SAY #2094 /* ~Ah, Boo says that, does he?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 17
END

IF WEIGHT #20 /* Triggers after states #: 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  OR(2)
AreaCheck("AR0700")
AreaCheck("AR2000")
InParty("Jaheira")
See("Jaheira")
Global("BHaerDalis8","LOCALS",0)
~ THEN BEGIN 28 // from:
  SAY #2126 /* ~Ah, my hound, this city be the great world of commerce! Perhaps we can sell Jaheira?~ [HAERDA53] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis8","LOCALS",1)
~ EXTERN ~BJAHEIR~ 0
END

IF ~~ THEN BEGIN 29 // from:
  SAY #2132 /* ~Cut my wit? Why, certainly, if I could only use your nose's razor edge to perform the task.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #2134 /* ~Well, my frumpy ptarmigan, I must protest—~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 2
END

IF ~~ THEN BEGIN 31 // from:
  SAY #2136 /* ~Oh, <CHARNAME>, raven of sympathy! Yon woman is stifling my creativity and stealing thunder from my wit! I swear I cannot work amidst the lashings of her tongue!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #28 /* Triggers after states #: 38 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
CombatCounter(0)
!StateCheck("Viconia",STATE_SLEEPING)
Global("BHaerDalis9","LOCALS",0)
~ THEN BEGIN 32 // from:
  SAY #2137 /* ~I watch you, blackbird. I watch you, and 'tis as if you are a dancer pinned between two panes of glass called Bliss and Rage.~ [HAERDA54] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis9","LOCALS",1)
~ EXTERN ~BVICONI~ 569
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2139 /* ~And as for being pinned between those panes of glass?~ */
  IF ~~ THEN EXTERN ~BVICONI~ 570
END

IF ~~ THEN BEGIN 34 // from:
  SAY #2477 /* ~I hear you plain enough, dwarf. I seek no quarrel with your prowess.~ [HAERDA62] */
  IF ~~ THEN EXTERN ~BKORGAN~ 17
END

IF ~~ THEN BEGIN 35 // from:
  SAY #3198 /* ~A moon? Why, no, there never was. Just a city that stretched in all directions, curling in upon itself to sometimes block the sky. The moon is better, don't you think, my dove?~ [HAERDA58] */
  IF ~~ THEN EXTERN ~BAERIE~ 85
END

IF ~~ THEN BEGIN 36 // from:
  SAY #3211 /* ~Ha ha! Well, Sigil is like no city you have ever seen, but, truth be told, I would trade it in a second for your smile.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 86
END

IF ~~ THEN BEGIN 37 // from:
  SAY #3218 /* ~I am glad, my dove, but if you won't let me trade Sigil, then I would even trade the moon and all its changes! Come, the night is still young and our spirits still free to fly.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #21 /* Triggers after states #: 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BHaerDalis10","LOCALS",0)
~ THEN BEGIN 38 // from:
  SAY #7473 /* ~"I once knew a Red Mage of Thay
 Who dreamed of lichdom some day.
 He said he knew how to do it,
 But he still managed to screw it
 Up in the funniest way."~ [HAERDA55] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis10","LOCALS",1)
~ EXTERN ~BEDWIN~ 103
END

IF ~~ THEN BEGIN 39 // from:
  SAY #7509 /* ~As an actor, it is mandatory to be able to express and convey emotion, not be emotional. As for your inastute observation, a critic is a legless man who teaches running to the fleet of foot.~ [HAERDA66] */
  IF ~~ THEN EXTERN ~BEDWIN~ 21
END

IF ~~ THEN BEGIN 40 // from:
  SAY #8608 /* ~Viconia, do you truly think that because you are bewitching in appearance and have the throaty voice of the most expensive courtesan in King Wingding's House of Earthly delights...~ [HAERDA45] */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 41 // from:
  SAY #9132 /* ~Dogs, is it? A fitting cloak for a bloodhound. You've got the scent now, Yoshimo, and shall bring the prey to your mysterious master.~ [HAERDA63] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 55
END

IF ~~ THEN BEGIN 42 // from:
  SAY #9137 /* ~Shackles as heavy as yours cannot be hidden from one who has been a slave. I tire of this dreadful acting. Leave me be, Yoshimo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #9187 /* ~Aye, parrot, aye... 'Tis because they're all trying to sell me something!~ [HAERDA64] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 62
END

IF ~~ THEN BEGIN 44 // from:
  SAY #9189 /* ~And what you don't want to steal? ...I trust not your boundless glee, my parrot, for something in it jingles with the sound of silver.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 63
END

IF ~~ THEN BEGIN 45 // from:
  SAY #9191 /* ~Aye, you are twice rewarded, but you have no more been a prisoner than I have been a king... Consider yourself forewarned, thief. My trust does not come easy, and you have not won it yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #11066 /* ~Aye, and ye can stride into the forefront, ye hound. I'll just hang around in the back awhile, truly enough.~ [HAERDA59] */
  IF ~~ THEN EXTERN ~BKELDOR~ 67
END

IF ~~ THEN BEGIN 47 // from:
  SAY #11074 /* ~More bored than timid, Lord Keldorn. With your blade a'glittering in the sun like that, you leave few foes for me to challenge.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 68
END

IF ~~ THEN BEGIN 48 // from:
  SAY #11138 /* ~Ha! 'Twill be music to my ears to wrap this lute about your head someday, my aging hound. Now go out there with your blade once again and make yourself useful, aye?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #15173 /* ~Ah... er... pardon me for a moment whilst my head implodes.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 /* Triggers after states #: 54 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("BHaerDalis11","LOCALS",0)
~ THEN BEGIN 50 // from:
  SAY #20207 /* ~Why do you stare at me so, Jaheira? Have I offended you? My manner is oft grim, but I did not think you so sensitive to it.~ [HAERDA56] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis11","LOCALS",1)
~ EXTERN ~BJAHEIR~ 46
END

IF ~~ THEN BEGIN 51 // from:
  SAY #20211 /* ~Then why the glances as my head turns away?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 47
END

IF ~~ THEN BEGIN 52 // from:
  SAY #20218 /* ~Ahh, then you are wary and are intent on keeping me under guard?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 48
END

IF ~~ THEN BEGIN 53 // from:
  SAY #20220 /* ~I see. Perhaps I straddle the fence, providing my own balance. Perhaps I drop things on either side as whim dost take me.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 49
END

IF WEIGHT #22 /* Triggers after states #: 58 63 67 74 84 91 97 102 111 130 136 145 154 165 169 174 177 180 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
CombatCounter(0)
Global("BHaerDalis12","LOCALS",0)
~ THEN BEGIN 54 // from:
  SAY #21166 /* ~Tell me, Valygar, your family was once rich and powerful, yes?~ [HAERDA57] */
  IF ~~ THEN DO ~SetGlobal("BHaerDalis12","LOCALS",1)
~ EXTERN ~BVALYGA~ 45
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21169 /* ~I simply am interested in the story of how they have fallen so far. Decayed, as it were, over the years until you are the last member of a small and decrepit estate.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 46
END

IF ~~ THEN BEGIN 56 // from:
  SAY #21171 /* ~And so the family will end completely, then. How very right and natural that is, a cycle having come to completion. Hmm. Yes.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 47
END

IF ~~ THEN BEGIN 57 // from:
  SAY #21173 /* ~Perhaps I could ask you more about it? It would make a wonderful story, I think.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 48
END

IF WEIGHT #0 ~  Global("LoveTalk","LOCALS",2)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 58 // from:
  SAY #30946 /* ~Your heart is heavy, my mourning dove? Your eyes wander, I think, into dark and solemn places that others cannot see. Have a care, fair Aerie, lest they draw you in forever.~ [HAERDA67] */
  IF ~~ THEN EXTERN ~BAERIE~ 180
END

IF ~~ THEN BEGIN 59 // from:
  SAY #30951 /* ~I think I understand your loss, sweet one.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 181
END

IF ~~ THEN BEGIN 60 // from:
  SAY #30955 /* ~Ah, but there are more ways to fly than with wings, my dove. And the fall to mundane earth is similarly filled with agony.~ */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #30962 /* ~"My fall was not the thing, my love;
 I thought I bore it well,
 but to stare up into the heavens
 from the darkened plains of Hell
 and think that I too once walked those
 endless heights
 is a pain I cannot tell."~ */
  IF ~~ THEN EXTERN ~BAERIE~ 182
END

IF ~~ THEN BEGIN 62 // from:
  SAY #30970 /* ~They are but simple words, my dove. For this bard to understand but a tiny fraction of your pain has cleft my heart in twain. You... have my deepest sympathy, sweet, lonely Aerie.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 183
END

IF WEIGHT #1 ~  Global("LoveTalk","LOCALS",4)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 63 // from:
  SAY #30978 /* ~Was I mistaken, my dove, or have I heard a thought fall from your lips once or twice that you had aspirations of the thespian bent?~ [HAERDA68] */
  IF ~~ THEN EXTERN ~BAERIE~ 184
END

IF ~~ THEN BEGIN 64 // from:
  SAY #30981 /* ~I never would, my mourning dove. My grim and oft-proud nature would never allow it. To act is a solemn profession and most worthy of thy beauty and grace.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 185
END

IF ~~ THEN BEGIN 65 // from:
  SAY #31004 /* ~But your dream needn't perish, fair Aerie. I see a talent in your eye that tells this bard you could perform the great feats of stage yet.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 187
END

IF ~~ THEN BEGIN 66 // from:
  SAY #31006 /* ~Nay, be not so harsh on yourself, pale one. This sparrow will take you under his wing and teach you the secret words that will match the strength of your aching beauty.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 188
END

IF WEIGHT #2 ~  Global("LoveTalk","LOCALS",6)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 67 // from:
  SAY #31008 /* ~I have been thinking, my mourning dove, of a role to complement your first voyage onto the stage. And I do believe I have discovered it.~ [HAERDA69] */
  IF ~~ THEN EXTERN ~BAERIE~ 189
END

IF ~~ THEN BEGIN 68 // from:
  SAY #31010 /* ~You wound me, fair one... I have deliberated over the choice for quite some time now. I have weighed carefully each play that canters through my head and chosen one that complements you most fruitfully.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #31011 /* ~ 'Tis the lead of a Sigil play called "Tersis"... written, if I remember, by a rather haggard tiefling gifted with the madness of true talent.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #31013 /* ~You would play the goddess herself... fallen from favor and bearing the slings of accusation and scorn with grace and confidence. With chin held high, she strides towards her former peers and dares to challenge the false verdict of the higher powers!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 190
END

IF ~~ THEN BEGIN 71 // from:
  SAY #31015 /* ~Ah, but it is, my mourning dove. You have suffered the cleansing torments, borne the impossible strains... and I'll wager there's a steel in your heart that you've yet to lay claim to!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 191
END

IF ~~ THEN BEGIN 72 // from:
  SAY #31017 /* ~I know you better than you think, my dove. The true thespian reaches down into a well of dark waters within them... a place where others dare not look. And you've a deep well, fair Aerie... be not afraid to dive within!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 192
END

IF ~~ THEN BEGIN 73 // from:
  SAY #31020 /* ~That's all I ask, my dove... and this bard cannot wait to see the results of this first act now unfolding...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("LoveTalk","LOCALS",8)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 74 // from:
  SAY #31199 /* ~You've perused the play, have you, my mourning dove? Why does your brow crinkle so, then?~ [HAERDA70] */
  IF ~~ THEN EXTERN ~BAERIE~ 247
END

IF ~~ THEN BEGIN 75 // from:
  SAY #31201 /* ~And I yet hold in my surety that you can, fair Aerie. What makes you say that you cannot?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 248
END

IF ~~ THEN BEGIN 76 // from:
  SAY #31203 /* ~Aye? And...?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 249
END

IF ~~ THEN BEGIN 77 // from:
  SAY #31205 /* ~The voice is in you, my dove. You have but to cast about for it. Come... enact the passage for me.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 250
END

IF ~~ THEN BEGIN 78 // from:
  SAY #31210 /* ~Then you are a mouse, my Aerie. A frightened little mouse who refuses to come out of her hole. Be satisfied with your stale cheese, if you will.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 251
END

IF ~~ THEN BEGIN 79 // from:
  SAY #31212 /* ~Enact the passage, then. You have the ability.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 252
END

IF ~~ THEN BEGIN 80 // from:
  SAY #31214 /* ~Squeak, squeak? Is that a mouse this bard hears? You can do better than that, my dove...~ */
  IF ~~ THEN EXTERN ~BAERIE~ 253
END

IF ~~ THEN BEGIN 81 // from:
  SAY #31217 /* ~What was that? Are you speaking, my dove? I am straining to hear you...~ */
  IF ~~ THEN EXTERN ~BAERIE~ 254
END

IF ~~ THEN BEGIN 82 // from:
  SAY #31219 /* ~Then speak, woman! I am the king of the gods! Do you have something to tell me or don't you?!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 255
END

IF ~~ THEN BEGIN 83 // from:
  SAY #31221 /* ~Bravo, my dove! A most excellent wonder, to hear your thundering talent roll forth from such a delightful form! Bravo!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 256
END

IF WEIGHT #6 /* Triggers after states #: 165 174 even though they appear after this state */
~  Global("LoveTalk","LOCALS",10)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 84 // from:
  SAY #31223 /* ~Ah ha! What is it now, my fair Aerie? You think I am not looking at you, but I can spy your desire to put the bard to the question. Go ahead, my dove... I'll not mind.~ [HAERDA71] */
  IF ~~ THEN EXTERN ~BAERIE~ 257
END

IF ~~ THEN BEGIN 85 // from:
  SAY #31228 /* ~Truth is my mantra, fair Aerie, when it comes to matters of the stage. And, aye, you were a sight to make any man swoon, possessing a talent that many an actress I've known would envy.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 258
END

IF ~~ THEN BEGIN 86 // from:
  SAY #31231 /* ~Your skill needs to be sharpened, 'tis true, but the talent is plenty and full. And I do not exaggerate, my dove... your mother saw it true when she mused o'er your life upon the stage.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 259
END

IF ~~ THEN BEGIN 87 // from:
  SAY #31234 /* ~But there is, my dove! There always is! We could shout out lines from the very streets of the towns, amazing onlookers and filling them with envy!~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #31235 /* ~In the wilderness, we could draw a crowd of fearsome creatures and tame them with our entertainments! Paws and claws would clatter as they approved of our efforts and lauded your great talent, my lady!~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #31237 /* ~Word of our acts would spread... and we would be in demand all over Amn! Bugbears would stand beside great nobles, shouting out your name and mine! The toast of kings and queens, my dove... just imagine it!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 260
END

IF ~~ THEN BEGIN 90 // from:
  SAY #31239 /* ~Was that the twitter of amusement I heard from your lips, my mourning dove? It is good to hear you laugh.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 261
END

IF WEIGHT #8 /* Triggers after states #: 165 169 174 even though they appear after this state */
~  Global("LoveTalk","LOCALS",12)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 91 // from:
  SAY #31242 /* ~"You have come to me, my goddess! I have prayed for my love not to be denied, and my majestic queen appears before me!"~ [HAERDA72] */
  IF ~~ THEN EXTERN ~BAERIE~ 262
END

IF ~~ THEN BEGIN 92 // from:
  SAY #31248 /* ~"Then let me sing your praises while I can, my queen. Let me tell you how I adore your flaxen hair, your porcelain skin... let me tell you how I long to brush my hand across your pale cheek..."~ */
  IF ~~ THEN EXTERN ~BAERIE~ 263
END

IF ~~ THEN BEGIN 93 // from:
  SAY #31250 /* ~"Your breathtaking beauty has captured my heart, and I long to cradle your innocence in my arms for the breadth of eternity..."~ */
  IF ~~ THEN EXTERN ~BAERIE~ 264
END

IF ~~ THEN BEGIN 94 // from:
  SAY #31252 /* ~Forget the play, my mourning dove... I speak what is in my heart. My words come unbidden to my lips, for you have captured my soul in your innocent hands.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #31253 /* ~I am yours, my sweet Aerie. Can you not see that? You blossom like a flower before me, and I am entranced, swept away and caught in your fragile web all at once!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 265
END

IF ~~ THEN BEGIN 96 // from:
  SAY #31255 /* ~Do you not feel some spark yourself, my dove? Does your heart not quicken in my presence as mine does in yours? I prithee, do not crush my fragile plea!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 266
END

IF WEIGHT #9 /* Triggers after states #: 165 169 174 even though they appear after this state */
~  Global("LoveTalk","LOCALS",14)
Global("AerieRomanceActive","GLOBAL",1)
Global("HaerDalisRomanceActive","GLOBAL",1)
~ THEN BEGIN 97 // from:
  SAY #31257 /* ~Aerie, my sweet dove, I have given you time to ponder my words, but my aching soul yearns for requitement. Do you not feel some measure of love for this solitary bard? I beg you to say that you do!~ [HAERDA73] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
~ EXTERN ~BAERIE~ 267
END

IF ~~ THEN BEGIN 98 // from:
  SAY #31262 /* ~It is not sudden, my love, but rather it is momentous... a revelation of affection that has stricken me like a most welcome affliction!~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #31263 /* ~Tell me that you feel similarly, my mourning dove, and I'll be yours forevermore, my heart lain at your tender feet. Or tell me that you have no love and I'll be forsworn... but say it true!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 268
END

IF ~~ THEN BEGIN 100 // from:
  SAY #31265 /* ~But how can there be a limit to love, my fair Aerie? Is there another, perhaps? Is there another man that your heart sings for?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 269
END

IF ~~ THEN BEGIN 101 // from:
  SAY #31267 /* ~Then I beg of you to discover your heart's true intent, my dove. My own course has been set, and it pains me greatly not to know if you will eventually be my own...~ */
  IF ~~ THEN DO ~SetGlobal("DecideLove","GLOBAL",1)
RealSetGlobalTimer("AerieRomance","GLOBAL",TEN_HOURS)
~ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 165 169 174 even though they appear after this state */
~  Global("DecideLove","GLOBAL",2)
Global("LoveTalk","LOCALS",16)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 102 // from:
  SAY #31288 /* ~My raven, if you would but hold and step aside but for a moment... this hapless bard would make a private plea of you.~ [HAERDA74] */
  IF ~~ THEN REPLY #31289 /* ~What is it, Haer'Dalis?~ */ GOTO 103
  IF ~~ THEN REPLY #31291 /* ~Not now, Haer'Dalis. This isn't a good time.~ */ GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 104.0 102.0
  SAY #31292 /* ~You are a man worthy of my dove's affections... of this I am sure. But this sparrow asks of you to turn away from her and to allow her affections to settle on me! My heart yearns for her, and I beg this favor of you!~ */
  IF ~~ THEN REPLY #31294 /* ~I cannot simply switch my feelings on and off at will, Haer'Dalis!~ */ GOTO 105
  IF ~~ THEN REPLY #31295 /* ~The choice is hers, Haer'Dalis. Not mine or yours.~ */ GOTO 106
  IF ~~ THEN REPLY #31296 /* ~*sigh* Very well, Haer'Dalis. You may have her for yourself, if that is your wish. And if she'll have you.~ */ GOTO 108
END

IF ~~ THEN BEGIN 104 // from: 102.1
  SAY #31300 /* ~No, it must be now, for my heart cannot bear it any longer! Listen to me or not, my friend, I shall unburden my soul to you.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 105 // from: 103.0
  SAY #31301 /* ~But you must, <CHARNAME>, you must! I cannot bear to watch my dove with another... and you are a man who could surely have another! I beg of you not to twist my heart!~ */
  IF ~~ THEN REPLY #31302 /* ~It is not even up to me, Haer'Dalis... it is up to Aerie whom she chooses. I cannot give her to you.~ */ GOTO 106
  IF ~~ THEN REPLY #31303 /* ~The answer is no, Haer'Dalis! And I mean it!~ */ GOTO 109
  IF ~~ THEN REPLY #31304 /* ~If she means that much to you, then very well... I will step aside.~ */ GOTO 108
END

IF ~~ THEN BEGIN 106 // from: 105.0 103.1
  SAY #31305 /* ~But she is a fragile flower, my dark hound... she will wish to hurt neither of us with such a momentous choice! And I cannot bear to be without her!~ */
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #31307 /* ~Please... step aside, <CHARNAME>, and let our true love be unfurled!~ */
  IF ~~ THEN REPLY #31308 /* ~I love her too, Haer'Dalis. I can't just give her to you.~ */ GOTO 109
  IF ~~ THEN REPLY #31309 /* ~Very well... if she means that much to you, I will not interfere.~ */ GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.1 105.2 103.2
  SAY #31310 /* ~The heavens sing with your praises, my hound! You have made this poet's heart leap with joy! I will not forget this, <CHARNAME>... you have made our union possible, and I thank you with all of my soul!~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 107.0 105.1
  SAY #31311 /* ~You would be so selfish as to deny our union? You would place such a choice upon her gentle breast? You are a dark and wicked man, <CHARNAME>.~ */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #31312 /* ~I can imagine only one outcome to this black path you have placed us on. We shall see which of us my dove chooses... and what agony results of it!~ */
  IF ~~ THEN DO ~RealSetGlobalTimer("HaerDalisRomance","GLOBAL",TEN_HOURS)
~ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 165 169 174 177 even though they appear after this state */
~  Global("LoveTalk","LOCALS",18)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 111 // from:
  SAY #31316 /* ~My mourning dove... the time has come for you to make a choice between us. I beg of you to decide, as my ailing heart can wait no longer!~ [HAERDA75] */
  IF ~~ THEN EXTERN ~BAERIE~ 278
END

IF ~~ THEN BEGIN 112 // from:
  SAY #31319 /* ~I... I see, my dove. There is only one option that remains, then. <CHARNAME>... I challenge you to a duel... a fight to the death for the love of our lady Aerie.~ */
  IF ~~ THEN REPLY #31320 /* ~A duel? What kind of foolishness is this?~ */ GOTO 113
  IF ~~ THEN REPLY #31321 /* ~Very well... a duel it is.~ */ EXTERN ~BAERIE~ 280
  IF ~~ THEN REPLY #31322 /* ~You want to duel for Aerie? Haer'Dalis... if she means that much to you, then I will not interfere.~ */ EXTERN ~BAERIE~ 281
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #31323 /* ~There is love... or there is death, my dark hound. My honor demands no less. Look within your heart, and you will understand.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 280
END

IF ~~ THEN BEGIN 114 // from:
  SAY #31328 /* ~Can't you see, my dove? It is I who loves you with zeal... it is my passion that yearns for you. <CHARNAME> is a good man... but even he sees that my love is the love that is true.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 282
END

IF ~~ THEN BEGIN 115 // from:
  SAY #31330 /* ~Of course, my dove... take all the time you need. My heart shall still pound hotly for you a day or an eon hence. And thank you, <CHARNAME>, for your understanding...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #31331 /* ~The time for talk has passed, my hound! My honor must be satisfied! Have at thee!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 283
END

IF ~~ THEN BEGIN 117 // from:
  SAY #31333 /* ~Aerie... my love... do not restrain me from combating my foe for your affection! Our blades must meet; it is the only possible end!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 284
END

IF ~~ THEN BEGIN 118 // from:
  SAY #31339 /* ~I... see. My... my heart aches to hear these words, my dove... but I sense they are true. If I offended you... I apologize...~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #31340 /* ~And I apologize to you, <CHARNAME>, if my heart was foolish and o'erquick. I cannot deny what I feel, however... and I cannot stay and watch my dove stay with another.~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #31341 /* ~Until... until we meet again, <CHARNAME>. And... and farewell, my lady love...~ */
  IF ~~ THEN DO ~SetGlobal("HaerDalisRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #31347 /* ~Do my ears deceive me? Does my mourning dove profess her love for this broken sparrow?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 289
END

IF ~~ THEN BEGIN 122 // from:
  SAY #31352 /* ~And I with you, my dove... wherever you go, I shall be with you.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 291
END

IF ~~ THEN BEGIN 123 // from:
  SAY #31355 /* ~I too, <CHARNAME>. Where my dove goes, so shall I.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #31358 /* ~Aye, and I shall join you as well. Where my dove goes, so do I.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #31393 /* ~But of course, my mourning dove. Whatever your wish might be, this sparrow will endeavor to achieve it.~ [HAERDA80] */
  IF ~~ THEN EXTERN ~BAERIE~ 303
END

IF ~~ THEN BEGIN 126 // from:
  SAY #31395 /* ~Aye, 'tis a pleasure and more than that besides to spend the hours with a lass of talent and refinement such as yourself.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 304
END

IF ~~ THEN BEGIN 127 // from:
  SAY #31403 /* ~Ah...~ */
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #31404 /* ~Well, I'll not lie to you, my mourning dove... I had my eye set upon your gentle heart. But 'tis always a grand thing when two friends join in love.~ */
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #31396 /* ~This sparrow shall not come betwixt the two of you. Be merry, my swan... its glow suits you well. And who knows? Perhaps I shall play at your wedding!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 305
END

IF WEIGHT #13 /* Triggers after states #: 165 169 174 177 even though they appear after this state */
~  Global("LoveTalk","LOCALS",20)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 130 // from:
  SAY #31743 /* ~Aerie, this... this bard can wait no longer for your thoughts to settle upon his heart. I... I must know now what you feel, my dove.~ [HAERDA76] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
~ EXTERN ~BAERIE~ 386
END

IF ~~ THEN BEGIN 131 // from:
  SAY #31747 /* ~Wait, my sweet Aerie. The touch of a moment on your lips, if you will. Lend your ear to a poem so that this bard might express himself more clearly.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #31753 /* ~"Rainbows black'n'd, flowers wilted, songs discordantly rung,
for my love has come before me; my heart is flung
at her feet with his hope barely nigh
that his love might let this poor sparrow fly."~ */
  IF ~~ THEN EXTERN ~BAERIE~ 387
END

IF ~~ THEN BEGIN 133 // from:
  SAY #31763 /* ~Be more than honored, my dove. Be in love with this bard. You are full of sorrow that you once knew the freedom of flight, while I have never known it at all.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #31765 /* ~But I will know it, sweet Aerie, if you but declare your love for me. Allow me to salve your wounded heart, Aerie... allow me to caress your pale skin and show you that my love is true.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 388
END

IF ~~ THEN BEGIN 135 // from:
  SAY #31770 /* ~Then I am finally content, my love. You have made me most happy with your declaration. Let us walk together for a while and talk most earnestly of what now might come of it.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 165 169 174 177 even though they appear after this state */
~  Global("LoveTalk","LOCALS",22)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 136 // from:
  SAY #31772 /* ~Your countenance has the air of dark thoughts and concern, my love. Might I ask what has brought this mood about you?~ [HAERDA77] */
  IF ~~ THEN EXTERN ~BAERIE~ 389
END

IF ~~ THEN BEGIN 137 // from:
  SAY #31775 /* ~Tell me anyway, my love. Your poorest word is a sweet poem to this bard's ears... and I would not have you experience a moment of fluster if there was aught I could do for it.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 390
END

IF ~~ THEN BEGIN 138 // from:
  SAY #31781 /* ~Ah... the future. I see.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 391
END

IF ~~ THEN BEGIN 139 // from:
  SAY #31784 /* ~Time holds its own counsel, my love... and destiny plays such a game with this sparrow that even I cannot foresee the outcome.~ */
  IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #31785 /* ~I have never paid much heed to the future myself, preferring to experience things in the moment, as it were. To do otherwise is to concern oneself needlessly.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 392
END

IF ~~ THEN BEGIN 141 // from:
  SAY #31789 /* ~I could not, even if I cared to, my sweet dove. Here... let me sing to you...~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #31791 /* ~"When man was made, it was said
 he would have eyes in the front of his head.
 But the first man was scared,
 as he saw before him, lay bared,
 the future... and in it, he was dead."~ */
  IF ~~ THEN EXTERN ~BAERIE~ 393
END

IF ~~ THEN BEGIN 143 // from:
  SAY #31795 /* ~Aye, my dove. And I've a ready quip and a belch as well, if it'll put a smile on your sweet face.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 394
END

IF ~~ THEN BEGIN 144 // from:
  SAY #31797 /* ~I can pray for nothing more, my love.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 165 169 174 177 even though they appear after this state */
~  Global("LoveTalk","LOCALS",24)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 145 // from:
  SAY #31798 /* ~Ah, my dove... I see you have finished perusing my latest play. Would you care to act out a scene or two?~ [HAERDA78] */
  IF ~~ THEN EXTERN ~BAERIE~ 395
END

IF ~~ THEN BEGIN 146 // from:
  SAY #31827 /* ~Ahh, my sweet Aerie. I write my plays as befits the creed of the Doomguard. All things end in destruction and tragedy... to think otherwise would be foolish.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 396
END

IF ~~ THEN BEGIN 147 // from:
  SAY #31830 /* ~Even hope is eroded, my dove. All things break down over time... all things come to an end. 'Tis the natural order of the multiverse. Who am I to question this?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 397
END

IF ~~ THEN BEGIN 148 // from:
  SAY #31834 /* ~On the contrary, one must assist the multiverse in attaining its goal. One day, all things will cease to exist... this is the way it shall be. The Doomguard stands to assist this goal.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 398
END

IF ~~ THEN BEGIN 149 // from:
  SAY #31837 /* ~*sigh* Often the act of creation is one of entropy itself. The earth is mined and chipped away for the metals that men use to create, is it not? And love is but a brief and pleasant flutter.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 399
END

IF ~~ THEN BEGIN 150 // from:
  SAY #31842 /* ~Of course I do. Ah, but I see I have upset you, my dove. Let me reassure you that the multiverse shall not end in my lifetime... at least I do not expect it to.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #31843 /* ~And while I know that our love must end, I do not expect it to do so soon. The Fates will decide, and until then I shall love you truly and with all the heat I can muster.~ */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #31845 /* ~I know my Doomguard thinking may be strange to you, sweet Aerie, but it need not intrude on your happiness. If it pleases you, I'll not mention it again.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 400
END

IF ~~ THEN BEGIN 153 // from:
  SAY #31847 /* ~But I do love you. And I am here for you. As for the future, I cannot say.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 401
END

IF WEIGHT #17 /* Triggers after states #: 165 169 174 177 180 even though they appear after this state */
~  !Global("HaerDalisRomanceActive","GLOBAL",0)
!Global("HaerDalisRomanceActive","GLOBAL",3)
Global("LoveTalk","LOCALS",26)
Global("AsylumPlot","GLOBAL",55)
CombatCounter(0)
!StateCheck("Aerie",STATE_SLEEPING)
~ THEN BEGIN 154 // from:
  SAY #31884 /* ~Aerie, my dove... are you well?~ [HAERDA79] */
  IF ~~ THEN EXTERN ~BAERIE~ 402
END

IF ~~ THEN BEGIN 155 // from:
  SAY #31892 /* ~Aye, my love! 'Tis grand to see you transformed into a maiden of destruction! Turned from innocent chrysalis into entropic moth! I hail your arrival!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 406
END

IF ~~ THEN BEGIN 156 // from:
  SAY #31895 /* ~Speak as you will, my love, but you serve entropy nevertheless. Your innocence has faded, as it should, and you have become a maiden who shall bring the end of others... my philosophy proven!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 408
END

IF ~~ THEN BEGIN 157 // from:
  SAY #31897 /* ~As I said, my dove... and pleased I am to see it.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 409
END

IF ~~ THEN BEGIN 158 // from:
  SAY #31899 /* ~Again, a natural end that has come... no less than expected, though I'll mourn its passing.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 410
END

IF ~~ THEN BEGIN 159 // from:
  SAY #37351 /* ~Ah, the old codger's tale be true, then: "What is bred in the bone shall out in the flesh."~ */
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #37352 /* ~You charge ahead, of valor born, the best of your parental blood commingled here within you, their very destinies made true by your every righteous act!~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 161 // from: 9.0
  SAY #37353 /* ~I delight so at the sparrows twittering above, and look... there passes a prancing squirrel, all delighted by the softness of our approach!~ */
  IF ~~ THEN EXTERN ~BCERND~ 5
END

IF ~~ THEN BEGIN 162 // from:
  SAY #37356 /* ~Pretend? My dear and mourning dove, 'tis not pretending! We are all frail as birds and mad as hounds, each one of us... Aye, each one of us, but you, somehow...~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 163 // from: 40.0
  SAY #37358 /* ~...and a body built for untold pleasures that I would fall for such an old ploy? Blow a little sunshine and I will fall all over myself to gain your favor? Best think again, dark one.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 18
END

IF ~~ THEN BEGIN 164 // from:
  SAY #60925 /* ~No, but you do seem to require my validation by spouting a random insult where none was deserved. Dwell on that while we fade.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 174 even though they appear after this state */
~  IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_haerdalis","GLOBAL",0)
~ THEN BEGIN 165 // from:
  SAY #98757 /* ~And how does this <DAYNIGHTALL> find you, my owl?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_haerdalis","GLOBAL",1)
~ EXTERN ~BRASAAD~ 26
END

IF ~~ THEN BEGIN 166 // from:
  SAY #98759 /* ~My owl sees all—all but himself.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 27
END

IF ~~ THEN BEGIN 167 // from:
  SAY #98761 /* ~You see only your darkness, which is understandable enough. But do not forget, there is light within you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 28
END

IF ~~ THEN BEGIN 168 // from:
  SAY #98763 /* ~It is there. Open your eyes and it will blind you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 174 even though they appear after this state */
~  IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
Global("OHD_haerdalis","GLOBAL",0)
~ THEN BEGIN 169 // from:
  SAY #99627 /* ~And what shall I call you, my grim, grand vulture?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_haerdalis","GLOBAL",1)
~ EXTERN ~BDORN~ 36
END

IF ~~ THEN BEGIN 170 // from:
  SAY #99629 /* ~No, no, such a mundane appellation will not do.~ */
  IF ~~ THEN EXTERN ~BDORN~ 37
END

IF ~~ THEN BEGIN 171 // from:
  SAY #99631 /* ~I shall call you "Dark-Edge." Much better, yes?~ */
  IF ~~ THEN EXTERN ~BDORN~ 38
END

IF ~~ THEN BEGIN 172 // from:
  SAY #99633 /* ~Indeed it is, Dark-Edge. And what would you call this one?~ */
  IF ~~ THEN EXTERN ~BDORN~ 39
END

IF ~~ THEN BEGIN 173 // from:
  SAY #99635 /* ~Dorn Il-Khan it is, then.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_haerdalis","GLOBAL",0)
~ THEN BEGIN 174 // from:
  SAY #99168 /* ~Tell me of your nest, my dark dove.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_haerdalis","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 60
END

IF ~~ THEN BEGIN 175 // from:
  SAY #99170 /* ~All that there is to know. You flew here from Mezro?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 61
END

IF ~~ THEN BEGIN 176 // from:
  SAY #99172 /* ~What winds blew you here?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 62
END

IF WEIGHT #11 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("HAERDALIS")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_haerdalis","GLOBAL",0)
~ THEN BEGIN 177 // from:
  SAY #88780 /* ~I have been watching you for some time, wild mage, and I am still unsure what to call you.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_haerdalis","GLOBAL",1)
~ EXTERN ~BNEERA~ 132
END

IF ~~ THEN BEGIN 178 // from:
  SAY #88782 /* ~You twitter like a sparrow, but your heart—is it a raven's or a dove's?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 133
END

IF ~~ THEN BEGIN 179 // from:
  SAY #88784 /* ~That is not what I meant, but you know this, yes? Perhaps I should call you "duck" for the way my meanings roll off your back.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("HAERDALIS")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
AreaCheck("AR0500")
Global("OHN_haerdalis","GLOBAL",1)
~ THEN BEGIN 180 // from:
  SAY #88785 /* ~Ah, duck! Have you peered over the side of this mighty bridge? The water below will empty into the sea soon. Do you long to glide along those waters and let the current take you where it will?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_haerdalis","GLOBAL",2)
~ EXTERN ~BNEERA~ 134
END

IF ~~ THEN BEGIN 181 // from:
  SAY #88787 /* ~Do not laugh! Did I not succeed in naming your heart's fondest desire, sweet, foolish duck? To glide on the waters, lazy in the sun?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 135
END

IF ~~ THEN BEGIN 182 // from:
  SAY #88790 /* ~But you forget about the sea, my duck. If you rode the river long enough, you would find yourself there, and then—! Then there would be waves, and storms, and deep, deep waters, with fish both friendly and fierce.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 137
END

IF ~~ THEN BEGIN 183 // from:
  SAY #88792 /* ~No. But you are no ordinary duck, are you?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 138
END

IF ~~ THEN BEGIN 184 // from:
  SAY #88795 /* ~Yes?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 140
END
