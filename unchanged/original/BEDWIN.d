// creator  : weidu (version 24900)
// argument : BEDWIN.DLG
// game     : .
// source   : ./override/BEDWIN.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BEDWIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #3071 /* ~What? Oh, ah ha... why hello, Aerie. I, ah... don't do anything of the sort. (No, now is not the time to make arguments.) Why are you asking? ~ [EDWIN47] */
  IF ~~ THEN EXTERN ~BAERIE~ 64
END

IF ~~ THEN BEGIN 1 // from:
  SAY #3075 /* ~(There's no one to meet!) There's no one to meet! Get away from me! You'll make me crazy, you will, and I'll not have two pieces of it!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  HPPercentLT(Myself,25)
Gender("Edwin",MALE)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BEdwin1","LOCALS",0)
~ THEN BEGIN 2 // from:
  SAY #3083 /* ~I—I feel so... tired. 'Tis like I see two or three of everything. (I'm seeing four, definitely four...)~ [EDWIN51] */
  IF ~~ THEN DO ~SetGlobal("BEdwin1","LOCALS",1)
~ EXTERN ~BAERIE~ 65
END

IF ~~ THEN BEGIN 3 // from:
  SAY #3087 /* ~(No, get her away, she knows!) She knows! Augh, I bleed! Get away from me, girl, get away!~ */
  IF ~~ THEN DO ~RunAwayFrom("Aerie",30)
~ EXIT
END

IF WEIGHT #1 ~  InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin2","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY #7471 /* ~Nalia, you are aware that adversity has the effect of eliciting talents which otherwise would have lain dormant? What are yours, pampered one? Those talents lay abundantly inconspicuous...~ [EDWIN52] */
  IF ~~ THEN DO ~SetGlobal("BEdwin2","LOCALS",1)
~ EXTERN ~BNALIA~ 32
END

IF ~~ THEN BEGIN 5 // from:
  SAY #7474 /* ~Ha ha ha... I see the soft spitfire does have a streak of wild child running through her. Keep living in your sanctified ignorance, Nalia. It is part of your charm.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 33
END

IF WEIGHT #2 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin3","LOCALS",0)
~ THEN BEGIN 6 // from:
  SAY #7476 /* ~Mazzy, your beauty and exuberance are a sheer delightful waste. I enjoy you in your own right. For someone so short, you are quite a delightfully comely lass.~ [EDWIN53] */
  IF ~~ THEN DO ~SetGlobal("BEdwin3","LOCALS",1)
~ EXTERN ~BMAZZY~ 81
END

IF ~~ THEN BEGIN 7 // from:
  SAY #7477 /* ~I do stoop to conquer, and lay down to indulge. My bedroll always has extra room, Mazzy. Too much of a decadent thing is wonderful.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 82
END

IF WEIGHT #3 ~  InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin4","LOCALS",0)
~ THEN BEGIN 8 // from:
  SAY #7482 /* ~Yoshimo, every man has his follies and mistakes. In your case, those are the most interesting and trustworthy attributes you possess. (You are shiftier than me, and I don't trust myself.)~ [EDWIN54] */
  IF ~~ THEN DO ~SetGlobal("BEdwin4","LOCALS",1)
~ EXTERN ~BYOSHIM~ 45
END

IF ~~ THEN BEGIN 9 // from:
  SAY #7483 /* ~Somewhere in you, something terrible gathers and grows. (Can I spot kindred, or can I spot kindred?)~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 46
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7484 /* ~As you make your pilgrimage, Yoshimo, there will be ruin and cruel intention. Of this I am certain.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 47
END

IF WEIGHT #4 ~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!Global("AnomenIsNotKnight","GLOBAL",1)
Gender("Edwin",MALE)
Global("BEdwin5","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #7490 /* ~Anomen, I've been intending to ask. This Most Noble Order of the Radiant Heart of which you belong... why is it that you lead the converted like lambs to the slaughter?~ [EDWIN55] */
  IF ~~ THEN DO ~SetGlobal("BEdwin5","LOCALS",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 12 // from:
  SAY #7491 /* ~Tell it to the pilgrims at the temple, Anomen; it might inspire the idiots. The Heart has been responsible for some of the most heinous crimes against humanity.~ */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #5 ~  InParty("Keldorn")
See("Keldorn")
Gender("Edwin",MALE)
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BEdwin6","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #7494 /* ~So, Keldorn, as a disciple of a crooked deity, do you find solace in the same secret histories, books of lies, and subversions that the rest of the miserable sheep in your horde do?~ [EDWIN57] */
  IF ~~ THEN DO ~SetGlobal("BEdwin6","LOCALS",1)
~ EXTERN ~BKELDOR~ 20
END

IF ~~ THEN BEGIN 14 // from:
  SAY #7495 /* ~Let cooler heads prevail, Keldorn. I was only baiting hooks.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 21
END

IF ~~ THEN BEGIN 15 // from:
  SAY #7496 /* ~Whatever lets you sleep, paladin. (I'll dine on your eyes, cloistered coward... soon.)~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 114 even though they appear after this state */
~  InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin7","LOCALS",0)
~ THEN BEGIN 16 // from:
  SAY #7499 /* ~Tell me about your ecstatic religion, shaman. Why do you harvest mistletoe and bear witness to Mother Earth's bounty?~ [EDWIN58] */
  IF ~~ THEN DO ~SetGlobal("BEdwin7","LOCALS",1)
~ EXTERN ~BCERND~ 24
END

IF WEIGHT #8 /* Triggers after states #: 114 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin8","LOCALS",0)
~ THEN BEGIN 17 // from:
  SAY #7501 /* ~Valygar, you are aware that silence is the virtue of fools?~ [EDWIN59] */
  IF ~~ THEN DO ~SetGlobal("BEdwin8","LOCALS",1)
~ EXTERN ~BVALYGA~ 3
END

IF ~~ THEN BEGIN 18 // from:
  SAY #7502 /* ~As blushing may sometimes make a harlot seem a virtuous woman, so might refusal to speak make an idiot seem a man of sense.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 4
END

IF ~~ THEN BEGIN 19 // from:
  SAY #7503 /* ~Your ignorance seems voluntary, woodwalker. Conversation is not only the vehicle of thought, it is a tremendous and efficient instrument in thinking.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 5
END

IF WEIGHT #10 /* Triggers after states #: 114 121 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin9","LOCALS",0)
~ THEN BEGIN 20 // from:
  SAY #7507 /* ~Bard, my considered and correct opinion of actors is this: You are irresponsible, irrational, and incapable of adult emotion without first reducing it to some banal personal, material, or sexual credo.~ [EDWIN60] */
  IF ~~ THEN DO ~SetGlobal("BEdwin9","LOCALS",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 21 // from:
  SAY #7508 /* ~At least I don't find it necessary to have others write my life for me or have its mundane plot plagiarized from common sources.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 164
END

IF WEIGHT #11 /* Triggers after states #: 114 121 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin10","LOCALS",0)
~ THEN BEGIN 22 // from:
  SAY #7510 /* ~Aerie, I've noticed the unfortunate fact that you live by one of the great lessons of history that nothing is often a good thing to do and a clever thing to say.~ [EDWIN62] */
  IF ~~ THEN DO ~SetGlobal("BEdwin10","LOCALS",1)
~ EXTERN ~BAERIE~ 94
END

IF ~~ THEN BEGIN 23 // from:
  SAY #7511 /* ~Ruffle your feathers? Just clipping your wings to ensure you remain obsequious to your vastly superiors, my little chickadee.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 114 121 even though they appear after this state */
~  InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin11","LOCALS",0)
~ THEN BEGIN 24 // from:
  SAY #7513 /* ~So tell me, Korgan, what think you of conflict and adversity? It seems this party is long on squawk and short on character.~ [EDWIN63] */
  IF ~~ THEN DO ~SetGlobal("BEdwin11","LOCALS",1)
~ EXTERN ~BKORGAN~ 79
END

IF ~~ THEN BEGIN 25 // from:
  SAY #7514 /* ~How true, how true. As a gallant warrior-born, I correctly assumed you to be a student of warfare as well as a master of battle.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 80
END

IF ~~ THEN BEGIN 26 // from:
  SAY #7515 /* ~Dwarf, you speak the truth. A warrior without peer, like you, must be an offense to nature. The strongest in the most peril... strange how Fate weaves her tapestry.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 81
END

IF WEIGHT #13 /* Triggers after states #: 114 121 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin12","LOCALS",0)
~ THEN BEGIN 27 // from:
  SAY #7519 /* ~Jan, your stories are rife with discrepancies, half-truths, and bafflegab. A woeful weaver of yarns you are for one so self-professed with the talents to do so.~ [EDWIN64] */
  IF ~~ THEN DO ~SetGlobal("BEdwin12","LOCALS",1)
~ EXTERN ~BJAN~ 77
END

IF ~~ THEN BEGIN 28 // from:
  SAY #7520 /* ~Nothing that could compete heartily with your cock-eyed narrative gems.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin13","LOCALS",0)
~ THEN BEGIN 29 // from:
  SAY #7532 /* ~Tell me, Jaheira, how does it feel to have significant ties to a ruthless secret society whose stranglehold over its members' conduct borders on indentured slavery?~ [EDWIN65] */
  IF ~~ THEN DO ~SetGlobal("BEdwin13","LOCALS",1)
~ EXTERN ~BJAHEIR~ 14
END

IF ~~ THEN BEGIN 30 // from:
  SAY #7533 /* ~Overflowing with agendas and cloaked in conspiracy. The Harper corridors clot with the blood of those who dared raise opposition to their oppressive regime.~ */
  IF ~~ THEN GOTO 74
END

IF WEIGHT #16 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("Edwin14","LOCALS",0)
~ THEN BEGIN 31 // from:
  SAY #7538 /* ~I've been spying you from afar, Viconia, and your frankness, bearing, and grace have beguiled me quite profoundly.~ [EDWIN66] */
  IF ~~ THEN DO ~SetGlobal("Edwin14","LOCALS",1)
~ EXTERN ~BVICONI~ 2
END

IF ~~ THEN BEGIN 32 // from:
  SAY #7541 /* ~Hush, dear, nonsense. The reputation of my kindred is from untrustworthy sources. Like the dark elves, a victim of cruel machinations and falsehoods.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 3
END

IF ~~ THEN BEGIN 33 // from:
  SAY #7542 /* ~Your brethren's loss is our gain... and a beautiful gain at that.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 4
END

IF WEIGHT #17 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin15","LOCALS",0)
~ THEN BEGIN 34 // from:
  SAY #7547 /* ~The price of flesh is obsession, Minsc. I've been obsessed, smitten, bewitched, and taken by many things, but the only rodent in my pants doesn't squeak when I touch it.~ [EDWIN67] */
  IF ~~ THEN DO ~SetGlobal("BEdwin15","LOCALS",1)
~ EXTERN ~BMINSC~ 72
END

IF ~~ THEN BEGIN 35 // from:
  SAY #7548 /* ~The rodent speaks to you? Verily, I've a rat in my trousers that speaks a peculiar dialect as well, usually involving transactions of coin and copious volumes of wine. You are truly a gift of the ages, Minsc.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 97
END

IF WEIGHT #18 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin16","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #7550 /* ~Is the hamster speaking to you now, Minsc? Are his thoughts entertaining?~ [EDWIN68] */
  IF ~~ THEN DO ~SetGlobal("BEdwin16","LOCALS",1)
~ EXTERN ~BMINSC~ 73
END

IF WEIGHT #19 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin17","LOCALS",0)
~ THEN BEGIN 37 // from:
  SAY #7552 /* ~And you wield a formidable blade indeed, warrior. Tell me, Minsc, what is the opposite of a lesson?~ */
  IF ~~ THEN DO ~SetGlobal("BEdwin17","LOCALS",1)
~ EXTERN ~BMINSC~ 74
END

IF ~~ THEN BEGIN 38 // from:
  SAY #7553 /* ~ 'Tis your self-fulfilling prophecy, Minsc. I don't talk to hamsters, although my mouse does have a disposition of fair renown in certain select locales.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin18","LOCALS",0)
~ THEN BEGIN 39 // from:
  SAY #7555 /* ~Minsc, what breed of rat is Boo, hm? A seafaring wharf rat? The fruit-eating country vole? Perhaps the sewer-dwelling city weasel?~ [EDWIN69] */
  IF ~~ THEN DO ~SetGlobal("BEdwin18","LOCALS",1)
~ EXTERN ~BMINSC~ 75
END

IF ~~ THEN BEGIN 40 // from:
  SAY #7556 /* ~You threaten with your vaunted combat prowess? The same esteemed skill that failed miserably to protect Dynaheir from harm's clutches? ~ */
  IF ~~ THEN EXTERN ~BMINSC~ 76
END

IF ~~ THEN BEGIN 41 // from:
  SAY #7557 /* ~She was a timeworn and weather-beaten barwhore, Minsc. The lowest class of spent working-girl rubbish.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 77
END

IF ~~ THEN BEGIN 42 // from:
  SAY #7558 /* ~Not likely, cretin. I only observe, not change, the nature of people or their beasts.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 78
END

IF WEIGHT #21 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  !StateCheck(Player1,STATE_SLEEPING)
See(Player1)
Gender("Edwin",MALE)
Global("BEdwin19","LOCALS",0)
~ THEN BEGIN 43 // from:
  SAY #7574 /* ~I'm curious, how did it feel to watch the light fade in your brother's eyes as the killing stroke found purchase? I speak of your battle with Sarevok, back in Baldur's Gate.~ */
  IF ~~ THEN REPLY #7575 /* ~This topic is not open for discussion at the moment.~ */ DO ~SetGlobal("BEdwin19","LOCALS",1)
~ GOTO 44
  IF ~~ THEN REPLY #7576 /* ~It was wonderful. I felt enriched for slaying my own flesh and blood.~ */ DO ~SetGlobal("BEdwin19","LOCALS",1)
~ GOTO 45
  IF ~~ THEN REPLY #7577 /* ~It was a necessary means to an end.~ */ DO ~SetGlobal("BEdwin19","LOCALS",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #7582 /* ~When the spirit moves you, I'd be interested in your considered reflections.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY #7585 /* ~If you happened upon another of your bloodline, what would transpire then?~ */
  IF ~~ THEN REPLY #7586 /* ~No hesitation: I would kill them where they stood.~ */ GOTO 46
  IF ~~ THEN REPLY #7587 /* ~That would depend on the situation. If my kin toiled for the cause of good, then an alliance would be the goal. Otherwise, they'd meet their end by my hand.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #7594 /* ~That attitude is candid and refreshing. If Sarevok is any indication, your siblings are a powerful lot indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #7595 /* ~Bleeding heart! Your egalitarian streak poses more danger than your siblings! Any brethren of yours is certain to be aware of you, and should be killed on sight.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.2
  SAY #7596 /* ~Slaughtering kindred will ensure dominance of the bloodline. Any siblings serve only as opposition and rivals, and must be disposed of posthaste!~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 49 // from:
  SAY #7597 /* ~Prediction is a crapshot, but where do you see yourself in the future? What we least expect generally happens. Do you aspire to, say, politics?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #8650 /* ~This Thayvian male is as red-blooded as his cloak, Viconia. And has left many a concubine gasping under his erotic onslaught.~ [EDWIN44] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #9175 /* ~(No doubt my kneecaps are in some danger.) Halfling, here you stand still living thanks to the use of my magic. Question me not.~ [EDWIN48] */
  IF ~~ THEN EXTERN ~BMAZZY~ 41
END

IF ~~ THEN BEGIN 52 // from:
  SAY #9176 /* ~Quite a mouthful for one of a servant race. I understand your warning and will take it for what it's worth. Begone!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #9177 /* ~(Ah, already we have the fool convinced that you are muttering!)~ [EDWIN46] */
  IF ~~ THEN EXTERN ~BHAERDA~ 20
END

IF ~~ THEN BEGIN 54 // from:
  SAY #9179 /* ~A rather bold conjecture, don't you think, Korgan?~ [EDWIN49] */
  IF ~~ THEN EXTERN ~BKORGAN~ 20
END

IF ~~ THEN BEGIN 55 // from:
  SAY #9180 /* ~You're an odd little fellow, Korgan. I'm not quite sure what to make of you and your chagrins.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #9229 /* ~(It would surely go better without annoying gnomes asking questions) Question not my designs, else you too will become an unwilling part of them.~ [EDWIN50] */
  IF ~~ THEN EXTERN ~BJAN~ 99
END

IF ~~ THEN BEGIN 57 // from:
  SAY #9236 /* ~I am to be continually plagued by fools? Conversation with you does not rate highly on my list of things to accomplish. Run along now. (Yes, that will do.)~ */
  IF ~~ THEN EXTERN ~BJAN~ 100
END

IF ~~ THEN BEGIN 58 // from:
  SAY #9241 /* ~What do you know of my goals, gnome?~ */
  IF ~~ THEN EXTERN ~BJAN~ 101
END

IF ~~ THEN BEGIN 59 // from:
  SAY #9245 /* ~One day you will bow before me, gnome. That shall be a time of reckoning.~ */
  IF ~~ THEN EXTERN ~BJAN~ 102
END

IF WEIGHT #22 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
Range("Keldorn",3)
!StateCheck("Keldorn",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BEdwin20","LOCALS",0)
~ THEN BEGIN 60 // from:
  SAY #11310 /* ~Back away, you obsequious fool!~ [EDWIN70] */
  IF ~~ THEN DO ~SetGlobal("BEdwin20","LOCALS",1)
~ EXTERN ~BKELDOR~ 78
END

IF ~~ THEN BEGIN 61 // from:
  SAY #11340 /* ~I shall not wait for you to stab me with your righteous daggers, knight! I have no wish to suffer your poisons! (Insolent and dirty, insolent and dirty.)~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 79
END

IF ~~ THEN BEGIN 62 // from:
  SAY #11348 /* ~I'll show ye some misery, knight!~ */
  IF ~~ THEN DO ~SetGlobal("EdwinKeldornFight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 11.0
  SAY #18278 /* ~On ramparts across the Faerûn are heads on pikes of the radiant who've been eulogized to the myth and allure of your vaunted brotherhood. ~ [EDWIN56] */
  IF ~~ THEN EXTERN ~BANOMEN~ 8
END

IF ~~ THEN BEGIN 64 // from: 12.0
  SAY #18289 /* ~Their intolerance against those who are not of a "civilized" species is racism at its worst.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 9
END

IF ~~ THEN BEGIN 65 // from:
  SAY #20085 /* ~Aye, you can mock me whilst we are in the very heart of your domain, druid, but do not push me very far. Even here, I am more than capable of ending your life.~ [EDWIN72] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 37
END

IF ~~ THEN BEGIN 66 // from:
  SAY #20099 /* ~Without your nagging, it would be as the sleep of ages.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
CombatCounter(0)
Gender("Edwin",MALE)
!StateCheck("Valygar",STATE_SLEEPING)
Global("BEdwin21","LOCALS",0)
~ THEN BEGIN 67 // from:
  SAY #21088 /* ~I do not understand you, ranger. You have the blood of a necromancer coursing through you and the ability to take the planar sphere for yourself! Why you did not do so eludes me.~ [EDWIN71] */
  IF ~~ THEN DO ~SetGlobal("BEdwin21","LOCALS",1)
~ EXTERN ~BVALYGA~ 40
END

IF ~~ THEN BEGIN 68 // from:
  SAY #21090 /* ~I've been told the gods love a fool. They must think often and fondly of you then, ranger.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21092 /* ~You would do well to be reminded of what makes magic powerful, fool. I've power enough to hold your life in my hands if I choose.~ [EDWIN45] */
  IF ~~ THEN EXTERN ~BVALYGA~ 42
END

IF ~~ THEN BEGIN 70 // from:
  SAY #21094 /* ~Indeed? Your lack of fear for the arcane arts must explain, then, why you cowered before Lavok and the Cowled Wizards. Your actions belie your bravado.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 43
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21096 /* ~You call that caution? Quivering in a forest? Lavok could have dealt with you in a second if he chose. And it would only take me a second longer.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 44
END

IF ~~ THEN BEGIN 72 // from: 20.0
  SAY #37515 /* ~I can only make it my faintest hope that this definition doesn't include you as well.~ [EDWIN61] */
  IF ~~ THEN EXTERN ~BHAERDA~ 39
END

IF ~~ THEN BEGIN 73 // from: 48.0
  SAY #37516 /* ~There is no place for friendship or compassion in the theater of gods, <CHARNAME>... as I am sure you are beginning to learn, if not understand.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 30.0
  SAY #60926 /* ~But I will speak no more, out of respect for your... what was it again? Ah yes, your little stick. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Aerie")
Range("Aerie",10)
!Range(SecondNearest([PC]),10)
!StateCheck("Aerie",STATE_SLEEPING)
Gender("Edwin",FEMALE)
Global("EdwinW1","LOCALS",0)
~ THEN BEGIN 75 // from:
  SAY #61503 /* ~Psst... Aerie!~ [EDWINW41] */
  IF ~~ THEN DO ~SetGlobal("EdwinW1","LOCALS",1)
~ EXTERN ~BAERIE~ 92
END

IF ~~ THEN BEGIN 76 // from:
  SAY #61504 /* ~You are a wizard and a healer! Can you not peel this wretched skin? (She has driven me to it; I will debase myself if I must.) Please, Aerie, I am... on my knees!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 93
END

IF ~~ THEN BEGIN 77 // from:
  SAY #61505 /* ~Blasted Netherese sense of humor! No doubt this is why they all went extinct so long ago! Shut up! Shut up, I say!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #61506 /* ~I will not be scrutinized for the sake of your rodent! Mind your own concerns, you stone-headed oaf!~ [EDWINW47] */
  IF ~~ THEN EXTERN ~BMINSC~ 67
END

IF ~~ THEN BEGIN 79 // from:
  SAY #61507 /* ~Tears indeed! Stand away lest I bring you a fireball as well! (Such suffering I must endure! The pain behind my eyes does grow steadily!)~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Gender("Edwin",FEMALE)
Global("EdwinW2","LOCALS",0)
~ THEN BEGIN 80 // from:
  SAY #61508 /* ~What?! Why do you stare at me so, barbarian?!~ [EDWINW42] */
  IF ~~ THEN DO ~SetGlobal("EdwinW2","LOCALS",1)
~ EXTERN ~BMINSC~ 68
END

IF ~~ THEN BEGIN 81 // from:
  SAY #61509 /* ~I AM Edwin, you lumbering fool! Can you not comprehend this?!~ */
  IF ~~ THEN EXTERN ~BMINSC~ 69
END

IF ~~ THEN BEGIN 82 // from:
  SAY #61510 /* ~If you do not wish to be the proud owner of a very small rug, you will get that animal away from me. ~ */
  IF ~~ THEN EXTERN ~BMINSC~ 70
END

IF ~~ THEN BEGIN 83 // from:
  SAY #61511 /* ~(I will kill ALL of them. Slowly. With... with HOT... pokey things and... and coals and... and prods. Yessssss, prods. Many, many prods.)~ */
  IF ~~ THEN EXTERN ~BMINSC~ 71
END

IF ~~ THEN BEGIN 84 // from:
  SAY #61512 /* ~No, my dear little wench, I will spend no more time in this body than I must. You think me a fool?~ [EDWINW48] */
  IF ~~ THEN EXTERN ~BNALIA~ 27
END

IF ~~ THEN BEGIN 85 // from:
  SAY #61513 /* ~Would you now? I would wish it on you if I could, but you do not mean what you say. You could do as such now, but you do not.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 86 // from:
  SAY #61514 /* ~You thought I would desire to know the thoughts of others, but you were wrong. I have no such desire. Whatever the rest of you think is irrelevant. ~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 87 // from:
  SAY #61515 /* ~And exactly WHAT is wrong with my "manner"?~ [EDWINW49] */
  IF ~~ THEN EXTERN ~BNALIA~ 30
END

IF ~~ THEN BEGIN 88 // from:
  SAY #61516 /* ~I will not remain like this! I will not "present a more wholesome image," nor will I acknowledge this form in any way! I will not be this way for long!~ */
  IF ~~ THEN EXTERN ~BNALIA~ 31
END

IF ~~ THEN BEGIN 89 // from:
  SAY #61517 /* ~(When the time comes, I must kill her first. Slowly, but first.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from: 86.0
  SAY #61518 /* ~My own thoughts, my own shoes, my own BODY! These are all that matter! ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 85.0
  SAY #61519 /* ~Shed your wealth and harvest the fields. You no more walk in the shoes of those you pity than I would, and I pity everyone. The only shoes I wish are mine own!~ */
  IF ~~ THEN EXTERN ~BNALIA~ 28
END

IF ~~ THEN BEGIN 92 // from:
  SAY #61520 /* ~I will not suffer your taunts, woman! You know well I despise this form!~ [EDWINW44] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 11
END

IF ~~ THEN BEGIN 93 // from:
  SAY #61521 /* ~And you would suggest this based upon what?! As a CONSTANTLY pontificating servant of nature, you must know my transformation was unnatural!~ [EDWINW45] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 13
END

IF ~~ THEN BEGIN 94 // from:
  SAY #61522 /* ~I see. So, by your logic, you shall be suddenly changing into a large male wildebeest any day now? Or have I misunderstood?~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #61523 /* ~Save your amateurish insults for one who will be offended. Your opinion means nothing to me.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #26 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Gender("Edwin",FEMALE)
Global("EdwinW3","LOCALS",0)
~ THEN BEGIN 96 // from:
  SAY #61524 /* ~Why do you stare so, Cernd? No doubt you are to laugh at my predicament, so get it over with!~ [EDWINW43] */
  IF ~~ THEN DO ~SetGlobal("EdwinW3","LOCALS",1)
~ EXTERN ~BCERND~ 18
END

IF ~~ THEN BEGIN 97 // from:
  SAY #61525 /* ~(There is an insult in there somewhere, I am certain. Would that I could stop time and kill them ALL first.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #61526 /* ~What?! What are you getting at?! I know you are talking about me, so speak it plain!~ [EDWINW46] */
  IF ~~ THEN EXTERN ~BCERND~ 20
END

IF ~~ THEN BEGIN 99 // from:
  SAY #61527 /* ~Very well then. I will let your comment pass and...~ */
  IF ~~ THEN EXTERN ~BCERND~ 21
END

IF ~~ THEN BEGIN 100 // from:
  SAY #61528 /* ~I see, I see. I shall let the slight pass and...~ */
  IF ~~ THEN EXTERN ~BCERND~ 22
END

IF ~~ THEN BEGIN 101 // from:
  SAY #61529 /* ~Yes, yes, yes, now will you please cease your prattle?!~ */
  IF ~~ THEN EXTERN ~BCERND~ 23
END

IF ~~ THEN BEGIN 102 // from:
  SAY #61530 /* ~(I wonder what his nature would say about the cleansing power of fire. I wonder.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #61531 /* ~(Thank the gods he is not a better poet. This is one tale we would rather not see immortalized in print!)~ [EDWINW38] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #61532 /* ~(My condition draws fools like flies to honey). Silence, you idiot! You've a death wish that is larger than your swollen head.~ [EDWINW39] */
  IF ~~ THEN EXTERN ~BANOMEN~ 11
END

IF ~~ THEN BEGIN 105 // from:
  SAY #61533 /* ~Silence, you fool! Chauvinist pig! (What am I saying?) I mean to say, "Idiot!"~ [EDWINW40] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 75
END

IF ~~ THEN BEGIN 106 // from:
  SAY #98731 /* ~You impertinent chimpanzee! What makes you think I would ever be bothered to explain myself to you?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 19
END

IF ~~ THEN BEGIN 107 // from:
  SAY #98734 /* ~"Less cause"—as though you know why I prefer to go hood up.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 20
END

IF ~~ THEN BEGIN 108 // from:
  SAY #98738 /* ~I'll not discuss this with you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 22
END

IF ~~ THEN BEGIN 109 // from:
  SAY #98740 /* ~Upset me? Hah! I'd be more upset to find I crushed a gnat beneath my heel!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 /* Triggers after states #: 114 118 121 even though they appear after this state */
~  IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_edwin","GLOBAL",1)
~ THEN BEGIN 110 // from:
  SAY #98741 /* ~Your head is very smooth, monk. Tell me, are you naturally bald?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_edwin","GLOBAL",2)
~ EXTERN ~BRASAAD~ 23
END

IF ~~ THEN BEGIN 111 // from:
  SAY #98743 /* ~You shave it yourself, do you? Tell me, how do you do that?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 24
END

IF ~~ THEN BEGIN 112 // from:
  SAY #98745 /* ~Of course I know how to shave my own head, you impudent baboon!~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #98746 /* ~Uh, I merely seek to add to my considerable knowledge on the subject. So tell me—how do you shave your head?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 25
END

IF WEIGHT #6 ~  IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
OR(2)
Global("OHD_urgothoz_patron","GLOBAL",1)
Global("OHD_azothet_patron","GLOBAL",1)
Global("OHD_edwin","GLOBAL",0)
~ THEN BEGIN 114 // from:
  SAY #99618 /* ~Tell me of your patron, half-orc.~ */
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN DO ~SetGlobal("OHD_edwin","GLOBAL",1)
~ EXTERN ~BDORN~ 31
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN DO ~SetGlobal("OHD_edwin","GLOBAL",1)
~ EXTERN ~BDORN~ 32
END

IF ~~ THEN BEGIN 115 // from:
  SAY #99621 /* ~Power is my business. And your patron clearly does not lack for that. What is your arrangement with the demon?~ */
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 33
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 34
END

IF ~~ THEN BEGIN 116 // from:
  SAY #99624 /* ~Yes, I understand that, but how is the power transmitted to you?~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #99625 /* ~You know what? Never mind. You probably don't even know the answer, you ignorant orangutan.~ */
  IF ~~ THEN EXTERN ~BDORN~ 35
END

IF WEIGHT #14 /* Triggers after states #: 121 even though they appear after this state */
~  IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("Edwin")
CombatCounter(0)
See("Dorn")
Gender("Edwin",FEMALE)
!AreaType(DUNGEON)
Global("OHD_edwina","GLOBAL",0)
~ THEN BEGIN 118 // from:
  SAY #102014 /* ~What? What do you want, blackguard?! Must every accursed monkey here offer their opinion?!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_edwina","GLOBAL",1)
~ EXTERN ~BDORN~ 94
END

IF ~~ THEN BEGIN 119 // from:
  SAY #102016 /* ~Women are weak creatures, guided by emotions and lessened by their monthly bleed! There is nothing advantageous in this preposterous form!~ */
  IF ~~ THEN GOTO 120
  IF ~  InParty("Viconia")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 589
  IF ~  InParty("Jaheira")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BJAHEIR~ 478
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #102019 /* ~Bah! As soon as I am able, I will strip myself of this gods-forsaken body and returning to my normal self! And I will tolerate no further jokes at my expense!~ */
  IF ~~ THEN EXIT
  IF ~  InParty("Neera")
IsValidForPartyDialogue("Neera")
~ THEN EXTERN ~BNEERA~ 0
END

IF WEIGHT #9 ~  HasItem("ohhcloak","Hexxat")
IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_edwin","GLOBAL",0)
~ THEN BEGIN 121 // from:
  SAY #99160 /* ~This cloak of yours interests me, my dear.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_edwin","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 57
END

IF ~~ THEN BEGIN 122 // from:
  SAY #99162 /* ~It's far more than that. May I see it?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 58
END

IF ~~ THEN BEGIN 123 // from:
  SAY #99164 /* ~I meant may I examine it closely?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 59
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 590
END

IF ~~ THEN BEGIN 124 // from:
  SAY #99167 /* ~Hah! You're a smart monkey. I'd not let anyone fondle my possessions either. It's a shame, though... I would like to check that cloak out.~ */
  IF ~~ THEN EXIT
END
