// creator  : weidu (version 24900)
// argument : BKORGAN.DLG
// game     : .
// source   : ./override/BKORGAN.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BKORGAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("BKorgan1","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #2453 /* ~Nalia, ye're overtall, beardless, long-limbed, and lack strength. Ye disgust me.~ [KORGAN46] */
  IF ~~ THEN DO ~SetGlobal("BKorgan1","LOCALS",1)
~ EXTERN ~BNALIA~ 20
END

IF WEIGHT #1 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BKorgan2","LOCALS",0)
~ THEN BEGIN 1 // from:
  SAY #2454 /* ~Be aware, Mazzy, I've something long, hard, and low to the ground ye're free to touch and fondle. Child, no need to glare! 'Twas me axe I was referring to... it's a joke!~ [KORGAN47] */
  IF ~~ THEN DO ~SetGlobal("BKorgan2","LOCALS",1)
~ EXTERN ~BMAZZY~ 54
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2455 /* ~Were ye aware, Mazzy, that despite my gruff bearing and taciturn manner, I am also trained in the erotic arts?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 55
END

IF WEIGHT #2 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BKorgan3","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #2456 /* ~Ye know, Mazzy, I'm a poet of fair renown back home. Here's a mere trifle: ~ [KORGAN48] */
  IF ~~ THEN DO ~SetGlobal("BKorgan3","LOCALS",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2458 /* ~Aye. Wrote it after a liquor-induced dervish o' temper, whereby a tavern was flattened and me helmet dented. ~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 62
END

IF WEIGHT #3 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BKorgan4","LOCALS",0)
~ THEN BEGIN 5 // from:
  SAY #2459 /* ~I've an elf-knot in my neck from strainin' to admire the whole of yer beauty, Mazzy. Calf's skin suits yer form mightily, girl.~ [KORGAN49] */
  IF ~~ THEN DO ~SetGlobal("BKorgan4","LOCALS",1)
~ EXTERN ~BMAZZY~ 58
END

IF ~~ THEN BEGIN 6 // from:
  SAY #2460 /* ~Yoshimo, I'd sooner be chained in a dank hole than listen to yer verbal crapulence. I've a stomach full of windy humors with more character than ye.~ */
  IF ~~ THEN DO ~SetGlobal("BKorgan5","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 89.0
  SAY #2461 /* ~I've seen the clay feet yer moral crusade stands on, paladin, and no lies can keep it from collapsing. Ye're hellbound like me. Only a matter of the hourglass.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 72
END

IF ~~ THEN BEGIN 8 // from:
  SAY #2463 /* ~Yer reputation don't know yer character. Ye lay falsehoods where ye need to, cleric, but I've read yer story on the faces of the dead and all's nae written yet.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 73
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2464 /* ~Aye, and he'd be wise to measure how pure yer grace be.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 150 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BKorgan6","LOCALS",0)
~ THEN BEGIN 10 // from:
  SAY #2466 /* ~Fer a muddled longlimb, Keldorn, ye doth wield a clever blade indeed.~ [KORGAN50] */
  IF ~~ THEN DO ~SetGlobal("BKorgan6","LOCALS",1)
~ EXTERN ~BKELDOR~ 49
END

IF ~~ THEN BEGIN 11 // from:
  SAY #2468 /* ~I need no narrow stick of steel to rend a foe asunder. I prefer the axe to split the difference. Allies, aye, fallen too, if need be.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 50
END

IF ~~ THEN BEGIN 12 // from:
  SAY #2470 /* ~It's nae brutal, only reasonable force. Ye pick yer battles big enough to matter and small enough to win. They all had it comin'. All of 'em.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 51
END

IF WEIGHT #7 /* Triggers after states #: 143 150 even though they appear after this state */
~  InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("BKorgan7","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #2472 /* ~Rainmaker, use yer mumbo-jumbo and make sure it don't rain when we're traveling in the outdoors! It makes me armor rust, me clothes damp, and me feet slosh about in me favorite boots.~ [KORGAN51] */
  IF ~~ THEN DO ~SetGlobal("BKorgan7","LOCALS",1)
~ EXTERN ~BCERND~ 13
END

IF ~~ THEN BEGIN 14 // from:
  SAY #2474 /* ~Bah! Tree-hugging dirt-eater! If yer god lived on Faerûn, I'd break his windows! Good fer nothin'! Go pluck mistletoe and frolic naked in glades!~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 57
END

IF WEIGHT #9 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("BKorgan8","LOCALS",0)
~ THEN BEGIN 15 // from:
  SAY #2475 /* ~Valygar! Ye're indeed a dervish! If I didn't know better, I'd swear there was a dwarf hidin' in the woodpile nine months before yer mam birthed ye!~ [KORGAN52] */
  IF ~~ THEN DO ~SetGlobal("BKorgan8","LOCALS",1)
~ EXTERN ~BVALYGA~ 30
END

IF ~~ THEN BEGIN 16 // from: 90.0
  SAY #2476 /* ~Ye'd be wise to skulk about in the shadows and pick yer dainty locks, else yer time be up. Hear me, scoundrel?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 34
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2478 /* ~So the snakebelly ain't as dumb as he looks. There's a lad.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BKorgan9","LOCALS",0)
~ THEN BEGIN 18 // from:
  SAY #2479 /* ~Aerie? AERIE! Cease yer whinin'! I'd swear on my father's coal cart ye were one o' them fey elves with all the blasted cryin' coming from ye.~ [KORGAN53] */
  IF ~~ THEN DO ~SetGlobal("BKorgan9","LOCALS",1)
~ EXTERN ~BAERIE~ 41
END

IF WEIGHT #11 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BKorgan10","LOCALS",0)
~ THEN BEGIN 19 // from:
  SAY #2480 /* ~Ye know, Bag o' Tricks, ye and I are nae so different. Ye fetch awe with eye of newt and tongue of salamander, I with battleaxe and bloodlust. ~ [KORGAN54] */
  IF ~~ THEN DO ~SetGlobal("BKorgan10","LOCALS",1)
~ EXTERN ~BEDWIN~ 54
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2482 /* ~Nay, not so bold. The rest of these backpedalers 'aven't a clue. Ye and I, we know the longlimb's capacity fer the horrible and severe, eh friend? We know.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 55
END

IF WEIGHT #12 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("BKorgan11","LOCALS",0)
~ THEN BEGIN 21 // from:
  SAY #2484 /* ~Hahahahahaa! Marvelous tale, gnome. Well told, well told. Only blight on ye is that trimmed beard and that loathsome pointy pickle hanging off yer face.~ [KORGAN55] */
  IF ~~ THEN DO ~SetGlobal("BKorgan11","LOCALS",1)
~ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("BKorgan12","LOCALS",0)
~ THEN BEGIN 22 // from:
  SAY #2485 /* ~Yer combat prowess is a sight to behold, Minsc. Ye certain no dwarven blood runs through ye?~ [KORGAN56] */
  IF ~~ THEN DO ~SetGlobal("BKorgan12","LOCALS",1)
~ EXTERN ~MINSCJ~ 27
END

IF ~~ THEN BEGIN 23 // from:
  SAY #2487 /* ~That rodent? Ye're at the beck and call of vermin?~ */
  IF ~~ THEN EXTERN ~MINSCJ~ 28
END

IF ~~ THEN BEGIN 24 // from:
  SAY #2489 /* ~Warrior, perhaps chasing windmills be best left to ye.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("BKorgan13","LOCALS",0)
~ THEN BEGIN 25 // from:
  SAY #2490 /* ~That's a fine wooden staff you've there, woman. Tell me, ye crack acorns with it? Or call some rarebit friends to frolic with ye? ~ [KORGAN57] */
  IF ~~ THEN DO ~SetGlobal("BKorgan13","LOCALS",1)
~ EXTERN ~BJAHEIR~ 9
END

IF ~~ THEN BEGIN 26 // from:
  SAY #2492 /* ~Perhaps ye could summon a horde of squirrels to take the day, or make a lovely leaf stew? Make sure ye and yer twig be of some use, though that use be lost on me.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 50
END

IF WEIGHT #16 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("BKorgan14","LOCALS",0)
~ THEN BEGIN 27 // from:
  SAY #2493 /* ~Well, there be the rarest of sights.~ [KORGAN58] */
  IF ~~ THEN DO ~SetGlobal("BKorgan14","LOCALS",1)
~ EXTERN ~BVICONI~ 571
END

IF ~~ THEN BEGIN 28 // from:
  SAY #2495 /* ~One of yer baker-legged ilk out under the sun. Rumor has it ye melt, cook like lamb on the spit, or'll fall apart, all limbs askew.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 572
END

IF ~~ THEN BEGIN 29 // from:
  SAY #2497 /* ~The Underdark I left a lifetime ago. Ye blackskins are all the same: good fer three things... owning, hunting, and killing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #2443 /* ~Fair enough, friends, but we'd best make haste.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
Range("Aerie",3)
!StateCheck("Aerie",STATE_SLEEPING)
Global("BKorgan15","LOCALS",0)
~ THEN BEGIN 31 // from:
  SAY #2913 /* ~Outta my way, brat!~ [KORGAN59] */
  IF ~~ THEN DO ~SetGlobal("BKorgan15","LOCALS",1)
~ EXTERN ~BAERIE~ 41
END

IF WEIGHT #18 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
GlobalGT("KorganAerieGrump","GLOBAL",0)
Global("BKorgan16","LOCALS",0)
~ THEN BEGIN 32 // from:
  SAY #2914 /* ~You there, elf girl. I be tired of yer constant miscastin' of magic while we be in the heat of battle. Can't ye do anything right, girl?!~ [KORGAN60] */
  IF ~~ THEN DO ~SetGlobal("BKorgan16","LOCALS",1)
~ EXTERN ~BAERIE~ 42
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2916 /* ~Well, it ain't good enough now, is it?!~ */
  IF ~~ THEN DO ~SetGlobal("KorganAerieGrump","GLOBAL",2)
~ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
GlobalGT("KorganAerieGrump","GLOBAL",1)
Global("BKorgan17","LOCALS",0)
~ THEN BEGIN 34 // from:
  SAY #2917 /* ~Quit yer whinin', wench. So you be tired; we care not. Sleep when death takes ahold o' ye, which would be a welcome respite for the rest of us... god knows!~ [KORGAN61] */
  IF ~~ THEN DO ~SetGlobal("BKorgan17","LOCALS",1)
~ EXTERN ~BAERIE~ 43
END

IF ~~ THEN BEGIN 35 // from:
  SAY #2919 /* ~Aye, we'll miss you like a good club to the head, won't we, <CHARNAME>? Har har har!~ */
  IF ~~ THEN DO ~SetGlobalTimer("AerieUpset","GLOBAL",ONE_DAY)
~ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  GlobalTimerExpired("AerieUpset","GLOBAL")
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BKorgan18","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #2921 /* ~Ha ha! Look a' the sky, missy. Yer day's up, and I'm still 'ere. Ol' <CHARNAME> didn't e'en break it to ya gently. Take the hint and head back to yer little circus, girlie.~ [KORGAN62] */
  IF ~~ THEN DO ~SetGlobal("BKorgan18","LOCALS",1)
~ EXTERN ~BAERIE~ 448
END

IF ~~ THEN BEGIN 37 // from: 91.0
  SAY #2983 /* ~With what grout ye've left, never question what I've to say, else each night upon the morn ye awake screaming for fear of what I may do to ye! ~ */
  IF ~~ THEN EXTERN ~BNALIA~ 21
END

IF ~~ THEN BEGIN 38 // from:
  SAY #2984 /* ~Ye quiver and wither like all the others. Ye're a gutless coward. And so ye'll stay.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #2991 /* ~Ahhh, Mazzy, the sweetest flowers always resist the plucking. The fire doth burn most brightly in ye fer ol' Korgan... I can see that plain as day. ~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 56
END

IF ~~ THEN BEGIN 40 // from:
  SAY #2994 /* ~The cruelest of weapons and the gentlest of touches, milady, that's what the words that leave yer lips be to me. ~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 41 // from:
  SAY #2995 /* ~Don't let word get about. I've a reputation to protect, girl. Ye'd ruin it twice over. ~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 42 // from:
  SAY #3014 /* ~Aye... carved this one on the wall of the lav at the Red Sheaf Inn, reckon it still causes an uproar each time a bowler uncoils his business. ~ */
  IF ~~ THEN GOTO 105
END

IF WEIGHT #21 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
AreaType(CITY)
Global("BKorgan19","LOCALS",0)
~ THEN BEGIN 43 // from:
  SAY #3058 /* ~Longlimbs! Look at them! Like grubworms scurryin' away from the light o' day. All avoidin' pain, on the prowl fer pleasure. Nae facin' uncertain futures. Best all dead, I reckon.~ [KORGAN63] */
  IF ~~ THEN DO ~SetGlobal("BKorgan19","LOCALS",1)
~ EXTERN ~BMAZZY~ 22
END

IF ~~ THEN BEGIN 44 // from:
  SAY #3059 /* ~I did nae know ye were within earshot, girl. 'Twas a wee pondering, nothin' more. I enjoy making fun of the big folk.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 24
END

IF ~~ THEN BEGIN 45 // from:
  SAY #3060 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #3061 /* ~I know of what ye speak of, Mazzy. I nae blind to it entirely. Treachery, theft, plunder. Hatred here, killing there. Nae respect fer heritage or the Way. ~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 103
END

IF ~~ THEN BEGIN 47 // from:
  SAY #3062 /* ~With due respect, Lady Mazzy, 'tis not civil. Longlimbs be victims of passion far more than me. The brief lifetimes, I reckon, be the core of their rage.~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 48 // from:
  SAY #3063 /* ~Lady Mazzy, sorry for any offense, truly, but I've cradled too many dyin' comrades and nae amount of resolve can keep the darkness at bay.~ */
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 49 // from:
  SAY #3064 /* ~Out of respect for ye, I shall try.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
AreaType(DUNGEON)
Global("BKorgan20","LOCALS",0)
~ THEN BEGIN 50 // from:
  SAY #3066 /* ~There not be enough critters in all the world to stain me axe nearly enough. I've killed aplenty already, an' I yearn yet for more. Come, then, and face this dwarf! Aye, come!~ [KORGAN64] */
  IF ~~ THEN DO ~SetGlobal("BKorgan20","LOCALS",1)
~ EXTERN ~BHAERDA~ 17
END

IF ~~ THEN BEGIN 51 // from:
  SAY #3068 /* ~If there be more of ye out skulking in the shadows, then show yerselves! I have to have some fun... I cannae go about tough and unfeeling all the time!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 18
END

IF ~~ THEN BEGIN 52 // from:
  SAY #3069 /* ~Cease yer jabber, fool! Blasted actors! Even nae a script or play and still ye need to be the center of all! Strewth!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 106.0
  SAY #5791 /* ~Ahhh, there's nothing like battle to make your blood run hot! War be my salvation and the measure of this man and all men, verily.~ */
  IF ~~ THEN REPLY #5793 /* ~Would you not agree that there are other things that also comprise a whole man—compassion, honesty, character?~ */ GOTO 54
  IF ~~ THEN REPLY #5794 /* ~Agreed! The sword makes the man and is the only true measure of his worth and mettle.~ */ GOTO 55
  IF ~~ THEN REPLY #5795 /* ~And how would you know, dwarf? There's nothing special about your skills. I've seen better.~ */ GOTO 56
  IF ~~ THEN REPLY #5797 /* ~Fighting is necessary, but only to protect the innocent and defend the weak.~ */ GOTO 57
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #5798 /* ~Balderdash! Ye know less than nothing, and proudly exclaim so! Virtue? Ye go back to dreading one day at a time, and I'll live on fire! Fool!~ */
  IF ~~ THEN REPLY #5804 /* ~Sorry, Korgan. This time you're wrong, and you'll need to change your attitude if you wish to remain with the party.~ */ GOTO 58
  IF ~~ THEN REPLY #5806 /* ~Perhaps you're correct, Korgan. A warrior who balances fury with restraint can be made stronger for his compassion and honor. ~ */ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY #5799 /* ~Perhaps yer head t'ain't empty, but mostly hollow with some good sense vapors foggin' yer goggles!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.2
  SAY #5800 /* ~Another slight from the likes of ye, cur, and ye'll not see the morrow.~ */
  IF ~~ THEN REPLY #6066 /* ~Anytime, broadarse. Bring it on!~ */ GOTO 59
  IF ~~ THEN REPLY #6067 /* ~You'd best back down, Korgan. Now!~ */ GOTO 60
  IF ~~ THEN REPLY #6068 /* ~Relax, Korgan. This isn't worth it. There will be no winner here.~ */ GOTO 61
END

IF ~~ THEN BEGIN 57 // from: 54.1 53.3
  SAY #5803 /* ~Aye, there be a sliver of truth in yer musing, but nae more. War be a wild mistress; she is appeased with fallen foes and the guts of the craven and accursed.~ */
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 58 // from: 54.0
  SAY #6069 /* ~I'm nae wrong. Not now or ever. Me favor won't be changin', and ye'd be well served to drop the matter, bowelhive, or ye'll eat through a reed.~ */
  IF ~~ THEN REPLY #6070 /* ~Korgan, it's best if you leave the party right now. Goodbye.~ */ GOTO 62
  IF ~~ THEN REPLY #6071 /* ~Maybe it's best to drop the matter, Korgan.~ */ GOTO 63
END

IF ~~ THEN BEGIN 59 // from: 56.0
  SAY #6072 /* ~Ye'd best make peace with yer life, fool, cause she draws to a close.~ */
  IF ~~ THEN DO ~ChangeAIScript("WTASIGHT",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 56.1
  SAY #6074 /* ~Ye'd be best served wrappin' a tourniquet about yer hamhole, bladdergas, to stop the flow of idiocy from that hole in yer face.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from: 56.2
  SAY #6075 /* ~Ye're as gutless as ye look and dumber than's possible. Ye deserve only me pity, nae me axe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #6076 /* ~Yer dirtchute be overcrammed with all the sundry ye can stick there! I'd a stomachful of yer spineless ravings anyway. Good riddance!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 58.1
  SAY #6077 /* ~Perhaps ye're right. It's nae matter to draw steel over. But me axe be vigilant and me memory long.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #6078 /* ~~ */
  IF ~~ THEN REPLY #6080 /* ~~ */ EXIT
  IF ~~ THEN REPLY #6081 /* ~~ */ GOTO 78
END

IF ~~ THEN BEGIN 65 // from: 109.0 78.0
  SAY #6082 /* ~A proud crew we were. We ne'er blinked when adventure called. Purses overflowed, bellies was full, but the wheels left the wagon, the house of cards collapsed.~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #6083 /* ~We were spelunking some old duergar shafts down south, a badly built construct of ill attention and nae craft, I may add, when we happened upon a hive of ooze.~ */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #6084 /* ~Dispatched with ease, but mild strife later, Stitch's armor began to dissolve. Smoked like a chimney, and he squealed like a yardpig! 'E wouldn't stop wailing.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 68 // from: 113.0
  SAY #6091 /* ~See, the plague had weakened him severely, and he wasn't worth the trouble anymore.~ */
  IF ~~ THEN REPLY #6092 /* ~That's an outrage, Korgan! It's despicable that anyone would do such a thing to friend or foe! ~ */ GOTO 69
  IF ~~ THEN REPLY #6093 /* ~They had it coming, Korgan. It's a relief to see a man of action aware of that.~ */ GOTO 121
END

IF ~~ THEN BEGIN 69 // from: 77.0 68.0
  SAY #6094 /* ~It's nae a rally fer debate, bowelhive. The sad rabble dug their graves. I just made the bed fer their dirtnaps. Me conscience be clear.~ */
  IF ~~ THEN REPLY #6095 /* ~Leave, Korgan! You're a scourge and pestilence! There's no place for you here.~ */ GOTO 70
  IF ~~ THEN REPLY #6096 /* ~You'd best change your ways, dwarf. We've no place in this party for madness such as that.~ */ GOTO 71
  IF ~~ THEN REPLY #6097 /* ~You're a gutless coward preying upon the weak and injured, Korgan.~ */ GOTO 72
  IF ~~ THEN REPLY #61039 /* ~Then we'll let it go and carry on, though I think I'll have you walk in front from now on.~ */ GOTO 133
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #6098 /* ~I be glad to shake the dander of cowardice from me clothing. Perhaps a good wash'll remove the stains of grief from me garments. Good riddance!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 69.1
  SAY #6099 /* ~I've nae changed fer lost loves nor the enmity of gods, and I'll nae change fer ye. Best ye grow accustomed to me flavor; it'll nae change in yer lifetime.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.2
  SAY #6100 /* ~Strike that from the ledger, cretin, else I cease mollycoddlin' ye and remove me kidgloves!~ */
  IF ~~ THEN REPLY #6101 /* ~Did I stutter, dwarf? Coward! Coward! Cow-ard!~ */ GOTO 73
  IF ~~ THEN REPLY #6103 /* ~I'm sorry, Korgan. It was a slip of the tongue. ~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #6104 /* ~That tears it! Yer reckoning be at hand!~ */
  IF ~~ THEN DO ~ChangeAIScript("WTASIGHT",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #6105 /* ~Pathetic cur! Yer luck's plentiful that an umbrage like that shan't be repeated. Should a second episode transpire, fate will not be so kind. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from: 124.0
  SAY #6106 /* ~Was not unlike kindling cracklin', and he whined fer his legs all night... "Me legs are gone! Ah, me precious legs!" I chopped some peg-legs, but he'd not have it.~ */
  IF ~~ THEN REPLY #6107 /* ~Enough is enough, Korgan. We don't need such a graphic description of your sordid affairs.~ */ GOTO 76
  IF ~~ THEN REPLY #6108 /* ~Please continue, Korgan. This is quite a tale.~ */ GOTO 126
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #6109 /* ~Shame ye've nae cast-iron gullet. A rousing tale it is and worthy of a listen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from: 129.0
  SAY #6110 /* ~Strange thing, the whole time I swear his eyes followed me, though he was long dead by then. Hmph.~ */
  IF ~~ THEN REPLY #61036 /* ~I was hoping for some moral to your tale, but you seem to revel in pointless bloodshed.~ */ GOTO 69
  IF ~~ THEN REPLY #61037 /* ~I can't say I approve of what you did, Korgan. I trust I will not meet the same fate.~ */ GOTO 131
  IF ~~ THEN REPLY #61038 /* ~Sounds like fun was had by all. Of course, others might treat you the same way.~ */ GOTO 132
END

IF ~~ THEN BEGIN 78 // from: 109.1 64.1
  SAY #6111 /* ~Ye nae worry 'bout the same fate befalling ye. Belly up and I'll flail poetic fer ye.~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 79 // from:
  SAY #7516 /* ~The harder the conflict, the more glorious be yer triumph, I reckon, spellchucker. What ye obtain too cheaply, ye esteem too lightly.~ [KORGAN69] */
  IF ~~ THEN EXTERN ~BEDWIN~ 25
END

IF ~~ THEN BEGIN 80 // from:
  SAY #7517 /* ~Aye. The best battler is he who can smile in troubles deep, gather his strength from distress, and grow brave in reflection.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 26
END

IF ~~ THEN BEGIN 81 // from:
  SAY #7518 /* ~Survival of the fittest be the term, and that be the puzzle of the Life. The Life of adventurers. Now shut yer yap.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #8648 /* ~Nae speak that vile tongue to me, blackskin. If it moves, I've killed it, but if it be drow, I've tortured it fer days first.~ [KORGAN44] */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 83 // from:
  SAY #8740 /* ~Yer idiocy is surpassed only by yer unskilled flounderin' on the field o' battle. Stupid boy! Ye're vassal to a selfish god, given useless power in swap for your soul.~ [KORGAN45] */
  IF ~~ THEN EXTERN ~BANOMEN~ 54
END

IF ~~ THEN BEGIN 84 // from:
  SAY #8803 /* ~Why not? All that I am has been gained through my own strength. Ye've naught but that which is doled out to you by a frolicking godling. ~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 55
END

IF ~~ THEN BEGIN 85 // from:
  SAY #8810 /* ~Hypocrite. Ye've no faith beyond that which brings you personal pleasure. A pig in filth. Wallow elsewhere, boy.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 56
END

IF ~~ THEN BEGIN 86 // from:
  SAY #9146 /* ~Aye, I find pleasure in the feel of an inquisitive thief's neck bone breakin' between me hands.~ [KORGAN68] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 57
END

IF ~~ THEN BEGIN 87 // from:
  SAY #9149 /* ~Mayhaps ye should, only "Pleasures of the Dwarven Bedchamber" is a more pleasing and accurate subject. ~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 58
END

IF ~~ THEN BEGIN 88 // from:
  SAY #9151 /* ~Worry not, thief. There's naught wrong with yer idea that a sharp blow to yer idiot skull wouldn't fix.~ */
  IF ~~ THEN GOTO 114
END

IF WEIGHT #23 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("BKorgan21","LOCALS",0)
~ THEN BEGIN 89 // from:
  SAY #17756 /* ~At least I'm no hypocrite, Anomen. There nae be a heart so holy that evil nae make a nest of black twigs in it.~ [KORGAN65] */
  IF ~~ THEN DO ~SetGlobal("BKorgan21","LOCALS",1)
~ GOTO 7
END

IF WEIGHT #24 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("BKorgan22","LOCALS",0)
~ THEN BEGIN 90 // from:
  SAY #17760 /* ~Balderdash, imbecile! I've more than a fair mind to tear ye a new dirtchute, ye lying swindler! Faerûn would be none the poorer, with ye pushing up daisies.~ [KORGAN66] */
  IF ~~ THEN DO ~SetGlobal("BKorgan22","LOCALS",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 91 // from:
  SAY #17763 /* ~Ye deserve the full wrath of my ire, weakling! Ye deserve it because ye're a coddled, privileged imbecile, a sad, little nobleman's offspring!~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 92 // from:
  SAY #17766 /* ~What do I talk of? Clan against clan, oceans of bloodshed, rivers of tears. And fer what? A tunnel or two. A vein of gold or silver.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 104
END

IF ~~ THEN BEGIN 93 // from:
  SAY #17768 /* ~Me mam were murdered. Nay by troll or giant, but by kindred, by one of me own. Pa had ta cut me from her while she heaved her death rattle. ~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 94 // from:
  SAY #17773 /* ~~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0 93.0
  SAY #17776 /* ~Five harvests on, he were killed too, right in front o' me. I built his pyre, and black smoke showed me I were alone. So ye'll forgive me bad manner where the true nature of beasts is reckoned on.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 25
END

IF ~~ THEN BEGIN 96 // from:
  SAY #17777 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #17782 /* ~~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 98 // from:
  SAY #17783 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 47.0
  SAY #17784 /* ~Be wise to this: If there be corruption in me, Mazzy, 'tis only the cost of sleeping amongst the enemy.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 26
END

IF ~~ THEN BEGIN 100 // from: 48.0
  SAY #17785 /* ~Ye must roar into the blackness, wage war with fear, and battle pain. 'Tis the only way when carnage be yer crown of thorns.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 27
END

IF ~~ THEN BEGIN 101 // from: 40.0
  SAY #18163 /* ~It's no secret I've nae the longest beard or the most comely countenance, but the Bloodaxes 'ave charm when need be, and ye are deserving of me flattery, Mazzy.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 59
END

IF ~~ THEN BEGIN 102 // from:
  SAY #18165 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from: 41.0
  SAY #18168 /* ~I've a terrific elf-knot near strangling me... right here. Can ye help me with those nimble fingers and delicate manner?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 60
END

IF ~~ THEN BEGIN 104 // from: 3.0
  SAY #18173 /* ~"Hold fast to dreams, for if dreams die, life be a broken bird that cannae fly."~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 57
END

IF ~~ THEN BEGIN 105 // from: 42.0
  SAY #18181 /* ~"I were here; alas I'm gone; left me name, to arouse thee on, They who know me, know me well; those who don't can ride me stinking dump, straight to hell" Haha! Masterstroke!~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 61
END

IF WEIGHT #25 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  See(Player1)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("BKorgan23","LOCALS",0)
~ THEN BEGIN 106 // from:
  SAY #18187 /* ~Good fight! We're in an age of murder, child. Killin' is our business, haha, and business be good. ~ [KORGAN70] */
  IF ~~ THEN DO ~SetGlobal("BKorgan23","LOCALS",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 107 // from:
  SAY #18199 /* ~Battle makes me blood run hot. There be nothing like felling your enemies in the chaos of battle.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from: 57.0
  SAY #18200 /* ~With the paltry respect due, battle must be fought fer its own sake to please her ire, else ye pass from her favor to a hero of downing mead and weaving tales.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #26 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("BKorgan24","LOCALS",0)
~ THEN BEGIN 109 // from:
  SAY #18201 /* ~Ye know, though ye all be gutless, clumsy, and nae too bright, this party is a sight better than me former crew of delvers and ne'er-do-wells.~ [KORGAN71] */
  IF ~~ THEN REPLY #61034 /* ~What happened with your former companions, Korgan?~ */ DO ~SetGlobal("BKorgan24","LOCALS",1)
~ GOTO 65
  IF ~~ THEN REPLY #61035 /* ~That's good to hear, Korgan. With any luck, we won't meet the same fate as them.~ */ DO ~SetGlobal("BKorgan24","LOCALS",1)
~ GOTO 78
END

IF ~~ THEN BEGIN 110 // from:
  SAY #18202 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from: 67.0
  SAY #18203 /* ~And I had to stop him flailing about while he struggled with his melting armor, so I hit him. And killed him. Accident, really, but he rankled me nerves.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #18204 /* ~Then Hogbelly had his legs crushed when a hill giant fell on 'im, so he had to go.~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #18233 /* ~And Cutter went and got infected with plague, so I up and broke his neck, to save him the agony.~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 114 // from: 88.0
  SAY #18235 /* ~Here is yer title, and argue with me gauntlet if ye dare: "Tall-Folk Scourge: Yoshimo Beware!" Now shut yer mouth and get to writing.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 /* Triggers after states #: 135 143 150 163 even though they appear after this state */
~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("BKorgan25","LOCALS",0)
~ THEN BEGIN 115 // from:
  SAY #20225 /* ~Yer eyes wander all over me back while I battle. Do I meet yer approval? I hope not; I find yer nuts and berries approach quite feeble.~ [KORGAN67] */
  IF ~~ THEN DO ~SetGlobal("BKorgan25","LOCALS",1)
~ EXTERN ~BJAHEIR~ 51
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20226 /* ~Aye, that is true enough, but I'll not have ye at me back and thinking me ill. I'd sooner gut ye here and now, and let yer bile fertilize yer precious plants.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 52
END

IF ~~ THEN BEGIN 117 // from:
  SAY #20228 /* ~Ehh, such a sleep be akin to death, maybe even become it. So walk on, wench o' the wood, but do so ahead o' me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21455 /* ~I suppose ye're talking about yon sissy forest dwarves, ranger.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 66
END

IF ~~ THEN BEGIN 119 // from:
  SAY #21457 /* ~Ehh, ye don't know the dwarven folk well then, I take it. Ye describe me nae e'en a little.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 67
END

IF ~~ THEN BEGIN 120 // from:
  SAY #21459 /* ~There be an insult in there somewhere, ranger. I nae like yer tone, and ye should be wary if I stumble across it.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 68
END

IF ~~ THEN BEGIN 121 // from: 68.1
  SAY #37474 /* ~Pleased that ye think so, dog-flogger. I had t' act on a couple occasions... out o' necessity, like when we happened upon a hive of giants.~ */
  IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #37475 /* ~Twenty or so infested the hills up at Saradush. Families o' them ravaged farms with no mercy. We heard it from a pointy-ear in the Forest of Mir, so fate called.~ */
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 123 // from:
  SAY #37476 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 124 // from: 122.0
  SAY #37477 /* ~A great melee ensued. Ol' Widowmaker sent six over to the Hells that day, but Hogbelly, bless his deformed visage, got under a toppling mountain o' man.~ */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 125 // from:
  SAY #37478 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from: 75.1
  SAY #37479 /* ~So I held 'im whilst two swings from Widowmaker put him cold. Our bag of tricks, Scrooloose, closed the wounds.~ */
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #37480 /* ~But then he wouldn't stop groaning. I got tired of it, an' that night put me knife in his belly.~ */
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #37481 /* ~He stopped moaning after that. But my work weren't done yet.~ */
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #37482 /* ~I had to make it look like trolls or gnolls grabbed him unawares, to throw suspicion off o' me.~ */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 130 // from: 82.0
  SAY #37483 /* ~As fer that House of yers, I burned it and relieved meself on the embers and dead. And the necklace of dark-elf ears fetched me a king's ransom in Waterdeep.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 77.1
  SAY #61040 /* ~Depends on how pathetic ye intend to be, I wager. Keep yerself stout and no worries. I expect the same o' meself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 77.2
  SAY #61041 /* ~If I be in position to do nothing, then I deserves what comes. Truly, I'd be happy if I be put out o' whining misery. Don't worry, I'd do the same fer you...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from: 69.3
  SAY #61042 /* ~I walk where I please. If my knife at yer back makes ye nervous, that be your problem, not mine. Just ye keep stout and worthy o' leadin...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #98793 /* ~Ye're a cold one, <CHARNAME>, there's no doubtin' it.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 467
END

IF WEIGHT #15 /* Triggers after states #: 143 150 163 even though they appear after this state */
~  IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_korgan","GLOBAL",0)
~ THEN BEGIN 135 // from:
  SAY #98828 /* ~I don't like it, <CHARNAME>! No, I don't like it one damn bit!~ */
  IF ~~ THEN REPLY #98829 /* ~I couldn't agree more, Korgan. What are we talking about?~ */ DO ~SetGlobal("OHR_korgan","GLOBAL",1)
~ GOTO 136
  IF ~~ THEN REPLY #98830 /* ~I'm sorry to hear that?~ */ DO ~SetGlobal("OHR_korgan","GLOBAL",1)
~ GOTO 136
  IF ~~ THEN REPLY #98831 /* ~Given your sunny disposition, this hardly comes as a surprise.~ */ DO ~SetGlobal("OHR_korgan","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.2 135.1 135.0
  SAY #98832 /* ~This high-horsed prettyboy monk o' yers has been lookin' down his nose at me, and I'll not stand for it.~ */
  IF ~~ THEN REPLY #98833 /* ~Rasaad, is this true?~ */ EXTERN ~BRASAAD~ 57
  IF ~~ THEN REPLY #98834 /* ~Most people look down their noses at you, Korgan. Your stature makes it difficult to do otherwise.~ */ GOTO 142
  IF ~~ THEN REPLY #98835 /* ~Nor should you.~ */ GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.2
  SAY #98836 /* ~So I can kill 'im?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 52
END

IF ~~ THEN BEGIN 138 // from:
  SAY #98838 /* ~Says the man whose sole reason for livin' is to knock Alorgoth's teeth down his throat!~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 53
END

IF ~~ THEN BEGIN 139 // from:
  SAY #98840 /* ~You put yer pants on one leg at a time, just like the rest of us!~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 54
END

IF ~~ THEN BEGIN 140 // from:
  SAY #98842 /* ~Ye're no better 'n me, no matter what ye think.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 55
END

IF ~~ THEN BEGIN 141 // from:
  SAY #98844 /* ~Oh, aye. So that's how it is, is it? Well, all right. But ye better watch yourself, monk. Kicks aren't so impressive comin' from someone whose been cut down at the knees.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 56
END

IF ~~ THEN BEGIN 142 // from: 136.1
  SAY #98850 /* ~Oh, so ye're takin' the MONK's side! Can't say I'm surprised.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 58
END

IF WEIGHT #6 /* Triggers after states #: 150 even though they appear after this state */
~  IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
Global("OHD_korgan","GLOBAL",0)
~ THEN BEGIN 143 // from:
  SAY #99682 /* ~...and that's how I turned the Three Heads of Dannak into the Two-and-a-Half Heads of Dannak!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_korgan","GLOBAL",1)
~ EXTERN ~BDORN~ 55
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~SetGlobal("OHD_korgan","GLOBAL",1)
~ GOTO 144
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~SetGlobal("OHD_korgan","GLOBAL",1)
~ EXTERN ~BVICONI~ 578
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #99684 /* ~All the best stories end with someone getting hit with an axe!~ */
  IF ~~ THEN EXTERN ~BDORN~ 55
END

IF ~~ THEN BEGIN 145 // from:
  SAY #99686 /* ~Oh, aye? What happened?~ */
  IF ~~ THEN EXTERN ~BDORN~ 56
END

IF ~~ THEN BEGIN 146 // from:
  SAY #99688 /* ~Hah! Y'know how to tell a tale, I'll give ye that, half-orc!~ */
  IF ~~ THEN GOTO 147
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 579
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #99690 /* ~It's nice t' have someone in this wretched crew that understands the finer things in life. Like the many enjoyable ways there are to end it.~ */
  IF ~~ THEN EXTERN ~BDORN~ 57
END

IF ~~ THEN BEGIN 148 // from:
  SAY #99692 /* ~Someday, you'n me'll have to sit down with an ale or two... dozen, an' then we'll really tell some tales.~ */
  IF ~~ THEN EXTERN ~BDORN~ 58
END

IF ~~ THEN BEGIN 149 // from:
  SAY #99207 /* ~Join the club, lassie!~ */
  IF ~~ THEN EXTERN ~BJAN~ 137
END

IF WEIGHT #4 ~  IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_korgan","GLOBAL",0)
~ THEN BEGIN 150 // from:
  SAY #99234 /* ~Ho there, wench. I've a mighty appetite this <DAYNIGHTALL>.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_korgan","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 80
END

IF ~~ THEN BEGIN 151 // from:
  SAY #99237 /* ~Aye, well, perhaps ye can help me out wi' this. See, I be cravin' somethin' specific.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 81
END

IF ~~ THEN BEGIN 152 // from:
  SAY #99239 /* ~Meat. DARK meat. If ye know what I mean.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 82
END

IF ~~ THEN BEGIN 153 // from:
  SAY #99241 /* ~Oh, aye?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 83
END

IF ~~ THEN BEGIN 154 // from:
  SAY #99243 /* ~Oh, I just bet ye are.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 84
END

IF ~~ THEN BEGIN 155 // from:
  SAY #99245 /* ~I like the sounds o' that.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 85
END

IF ~~ THEN BEGIN 156 // from:
  SAY #99247 /* ~Yer cup.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 86
END

IF ~~ THEN BEGIN 157 // from:
  SAY #99249 /* ~What?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 87
END

IF ~~ THEN BEGIN 158 // from:
  SAY #99251 /* ~I, er. Hm.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 88
END

IF ~~ THEN BEGIN 159 // from:
  SAY #99253 /* ~...~ */
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #99254 /* ~Gimme some time. I'll have to think on that one.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 89
END

IF ~~ THEN BEGIN 161 // from:
  SAY #99265 /* ~Hey! I'm standin' right here, ye halfling god-botherer!~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 90
END

IF ~~ THEN BEGIN 162 // from:
  SAY #88675 /* ~HAR HAR HAR! The furniture—with a butter knife! It's good to hear ye, gnome. Yer talk is good for every season. HAR HAR HAR!~ */
  IF ~~ THEN EXTERN ~BJAN~ 150
END

IF WEIGHT #8 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("KORGAN")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_korgan","GLOBAL",0)
~ THEN BEGIN 163 // from:
  SAY #88797 /* ~To hear ye carry on about yer magic, ye'd think we'd get a bloodier show when yer spellslingin' goes ugly. Ye go around pratin' about fire an' ice, an' "wild" this an' "wild" that, but the worst ye e'er do is make the milk go sour or turn some poor critter's hair as pink as yers.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_korgan","GLOBAL",1)
~ EXTERN ~BNEERA~ 141
END

IF ~~ THEN BEGIN 164 // from:
  SAY #88799 /* ~Oh sure, turn it around on me, ye rose-tipped willow wand. I'm a bloodthirsty dwarf who says a mouthful, sure, an' it may be that I bark both loud and long. But when I bite, I gnash! When ye bite, if bite ye do, it's a wee nibble, like what comes from a minnow's mouth.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 142
END

IF ~~ THEN BEGIN 165 // from:
  SAY #88801 /* ~Nooo. No, I don't.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 143
END

IF ~~ THEN BEGIN 166 // from:
  SAY #88803 /* ~Utter rot an' ye know it! For one, that'd mean ye'd have t' nibble on them, hedgeling. For two, it's no good if it takes explaining.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 144
END

IF ~~ THEN BEGIN 167 // from:
  SAY #88805 /* ~HAR HAR! The lass is as tongue-tied as she is magic-addled! She concedes she's the most useless, fizzle-prone, squishy-skulled mageling since the last one who died before ever shooting off a wee magic missile.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 145
END

IF ~~ THEN BEGIN 168 // from:
  SAY #88807 /* ~Oh? Then what did I win?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 146
END

IF ~~ THEN BEGIN 169 // from:
  SAY #88809 /* ~Ye don't say? Well then, lass, I hope ye're free to coach me. HAR HAR!~ */
  IF ~~ THEN EXIT
END
