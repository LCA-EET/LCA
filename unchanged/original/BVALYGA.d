// creator  : weidu (version 24900)
// argument : BVALYGA.DLG
// game     : .
// source   : ./override/BVALYGA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BVALYGA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 82 91 122 139 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
!Dead("Lavok02")
Global("BValygar1","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #2908 /* ~I cannot understand it, Aerie. Why this magic—why from you, of all people? You are too innocent and good to practice such things.~ [VALYGA46] */
  IF ~~ THEN DO ~SetGlobal("BValygar1","LOCALS",1)
~ EXTERN ~BAERIE~ 39
END

IF ~~ THEN BEGIN 1 // from:
  SAY #2909 /* ~I know, I know, but... magic corrupts. The very power of magic twists a mage's soul a little each day. There's always one more spell to learn or cast.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2911 /* ~...I hope you're right, Aerie. For your sake and mine...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #7504 /* ~Aim your words elsewhere, mage; I don't know why you've targeted me, but I won't take your bait today.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 18
END

IF ~~ THEN BEGIN 4 // from:
  SAY #7505 /* ~It is as I have always thought; I can neither appreciate nor understand the mind of a mage, especially one so fond of his own voice.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #7506 /* ~Then what's your excuse for that steady stream of mindless pollution you call talking, Edwin? ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #8611 /* ~And your point, Viconia? We're all filthy. We're all unwashed and tired and hungry. Shut up and tell someone who cares.~ [VALYGA44] */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 82 91 122 139 173 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
!Dead("Lavok02")
Global("BValygar2","LOCALS",0)
~ THEN BEGIN 7 // from:
  SAY #11060 /* ~You're a man of the church, Keldorn. How can you stay so calm amidst such a constant display of magic in this group? I feel most unsettled at the sight of it.~ [VALYGA47] */
  IF ~~ THEN DO ~SetGlobal("BValygar2","LOCALS",1)
~ EXTERN ~BKELDOR~ 139
END

IF ~~ THEN BEGIN 8 // from:
  SAY #11062 /* ~I find it hard to believe that anything tainted with the scent of lichdom or Lavok's necromancy can lead to anything good.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 65
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20254 /* ~Unnatural, yes. I struggle to understand the differences in magic that have been presented to me. How do you feel about it, Jaheira? Are they not all cut of the same vile shroud?~ [VALYGA62] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 61
END

IF ~~ THEN BEGIN 10 // from:
  SAY #20261 /* ~I suppose not, though there is ample to fear in those that wield it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #20646 /* ~Hmm... as the lady wishes.~ [VALYGA59] */
  IF ~~ THEN EXTERN ~BMAZZY~ 17
END

IF ~~ THEN BEGIN 12 // from:
  SAY #20657 /* ~Mazzy, I have honored your requests as any gentleman would, but this is too much.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #20663 /* ~~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 19
END

IF ~~ THEN BEGIN 14 // from:
  SAY #20664 /* ~Well, I suppose I am in a way, but I wasn't aware that I had been chosen.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 20
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20665 /* ~It's not that I am not flattered, Mazzy, but it's just that...~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 21
END

IF ~~ THEN BEGIN 16 // from:
  SAY #20672 /* ~Ahhh... nothing. Nothing at all...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #20669 /* ~ 'Tis but a flesh wound, Mistress Mazzy.~ [VALYGA60] */
  IF ~~ THEN EXTERN ~BMAZZY~ 37
END

IF ~~ THEN BEGIN 18 // from:
  SAY #20673 /* ~You are very kind, Mazzy.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 38
END

IF ~~ THEN BEGIN 19 // from:
  SAY #20674 /* ~I am flattered by your concern, and I thank you. We shall watch over each other, for that is truly the task of friends.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 39
END

IF ~~ THEN BEGIN 20 // from:
  SAY #446 /* ~You are going to tell me another of your insipid stories, aren't you?~ [VALYGA56] */
  IF ~~ THEN EXTERN ~BJAN~ 17
END

IF ~~ THEN BEGIN 21 // from:
  SAY #447 /* ~No, I wasn't aware that your aunt was a ranger. *sigh*~ */
  IF ~~ THEN EXTERN ~BJAN~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #448 /* ~Of course.~ */
  IF ~~ THEN EXTERN ~BJAN~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #20680 /* ~Mmm hmm.~ */
  IF ~~ THEN EXTERN ~BJAN~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20682 /* ~It goes without saying.~ */
  IF ~~ THEN EXTERN ~BJAN~ 21
END

IF ~~ THEN BEGIN 25 // from:
  SAY #20686 /* ~Oh, is it that time already? I'm afraid I have to take point now. You know how <CHARNAME> is with keeping on schedule.~ */
  IF ~~ THEN EXTERN ~BJAN~ 22
END

IF ~~ THEN BEGIN 26 // from:
  SAY #694 /* ~I can't wait.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #695 /* ~I did say he was a necromancer, didn't I? As I understand it, Lavok felt that tampering with the veil that separates life from death was his prerogative.~ [VALYGA52] */
  IF ~~ THEN EXTERN ~BHAERDA~ 12
END

IF ~~ THEN BEGIN 28 // from:
  SAY #696 /* ~The old family was, yes. They continued to practice Lavok's magics long after he left, but my particular branch was not interested in such pursuits.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #697 /* ~They left in disgust, watching from afar as the old family crumbled over the years. And then my family inherited what little of Lavok's fortune was left.~ */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 30 // from:
  SAY #698 /* ~Thank you for the compliments, dwarf.~ [VALYGA58] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #699 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.0
  SAY #700 /* ~Before you know it, you've spent your life in the library, having never seen the light of day, never truly lived. Believe me, I know this only too well.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 411
END

IF ~~ THEN BEGIN 33 // from:
  SAY #21070 /* ~It's nothing to be impressed by, old friend. Something learned after years in the scouts, facing off against the wild dangers that nature and magic have thrown at me.~ [VALYGA63] */
  IF ~~ THEN EXTERN ~BCERND~ 73
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21073 /* ~It has served to keep me alive, Cernd, but otherwise it has served me not at all. I would rather be a man of peace and nature as yourself.~ */
  IF ~~ THEN EXTERN ~BCERND~ 74
END

IF ~~ THEN BEGIN 35 // from:
  SAY #21075 /* ~I suppose that's true.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #21079 /* ~I'll not let it be, Cernd. The wizard killed Suna in such an offhand fashion... he cared not a spit for her life. Doesn't he deserve to suffer for it?~ [VALYGA64] */
  IF ~~ THEN EXTERN ~BCERND~ 76
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21082 /* ~Well, I know it. And you have no need to worry... I shall pay the closest attention to every step that brings me closer to that foul mage!~ */
  IF ~~ THEN EXTERN ~BCERND~ 77
END

IF ~~ THEN BEGIN 38 // from:
  SAY #21085 /* ~He killed Suna! There is nothing else to know!~ */
  IF ~~ THEN EXTERN ~BCERND~ 78
END

IF ~~ THEN BEGIN 39 // from:
  SAY #21087 /* ~I... damn you, druid, just leave me be!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21089 /* ~Of course it eludes you, wizard. I've no interest in power... and even less interest in magic.~ [VALYGA66] */
  IF ~~ THEN EXTERN ~BEDWIN~ 68
END

IF WEIGHT #7 /* Triggers after states #: 82 91 122 139 173 even though they appear after this state */
~  Dead("Lavok02")
InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BValygar3","LOCALS",0)
~ THEN BEGIN 41 // from:
  SAY #21091 /* ~You remind me more and more as each day passes of what makes magic vile and evil, wizard. ~ [VALYGA48] */
  IF ~~ THEN DO ~SetGlobal("BValygar3","LOCALS",1)
~ EXTERN ~BEDWIN~ 69
END

IF ~~ THEN BEGIN 42 // from:
  SAY #21093 /* ~Your words do not frighten me, Edwin. I could slice you to ribbons before the first incantation of your threat was carried out.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 70
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21095 /* ~I cower before nothing! I merely showed caution before approaching Lavok... someone possessing far more power than you!~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 71
END

IF ~~ THEN BEGIN 44 // from:
  SAY #21097 /* ~We shall see!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #21167 /* ~Yes... what is your point?~ [VALYGA53] */
  IF ~~ THEN EXTERN ~BHAERDA~ 55
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21170 /* ~My family lost its wealth long before I inherited anything of it. And none of it interests me anyway. I'd much rather spend my time in the wild.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 56
END

IF ~~ THEN BEGIN 47 // from:
  SAY #21172 /* ~I'm glad it amuses you. I myself have had to live through my family's decline, and I would rather not discuss it as if it were some point of philosophy.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 57
END

IF ~~ THEN BEGIN 48 // from:
  SAY #21174 /* ~Mind your own business.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21176 /* ~I've no interest in hearing about your mother, gnome. Or any mother, for that matter.~ [VALYGA57] */
  IF ~~ THEN EXTERN ~BJAN~ 113
END

IF ~~ THEN BEGIN 50 // from:
  SAY #21178 /* ~Let me tell you a story, Jan, about MY mother. She fell to our family curse young, toying with magic, sinking half our fortune into ancient texts and scrolls.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from:
  SAY #21179 /* ~~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0 50.0
  SAY #21180 /* ~She was obsessed with it. Even my father could barely drag her away from her studies. She practically ignored me from the day I was born.~ */
  IF ~~ THEN EXTERN ~BJAN~ 114
END

IF ~~ THEN BEGIN 53 // from:
  SAY #21182 /* ~She didn't regret her neglect until after my father died. She became so anguished she reanimated him and went insane trying to lavish attention on his zombie.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21183 /* ~Ultimately, she entered undeath to join him, and I was forced to destroy them both lest they do more harm. I was crying as I did so.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #21184 /* ~So how is that, gnome? Is that the kind of story you were thinking of? Does it compare to the wonderful story of your mother?~ */
  IF ~~ THEN EXTERN ~BJAN~ 115
END

IF ~~ THEN BEGIN 56 // from:
  SAY #21432 /* ~More important? What do you mean?~ [VALYGA54] */
  IF ~~ THEN EXTERN ~BKELDOR~ 116
END

IF ~~ THEN BEGIN 57 // from:
  SAY #21435 /* ~I was in the army once as a scout. It wasn't for me.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 117
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21438 /* ~But I have no god, paladin. Whom would I serve?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 118
END

IF ~~ THEN BEGIN 59 // from:
  SAY #21440 /* ~I live it according to my heart. I defend the natural against the unnatural, and that is important enough for me.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 119
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21442 /* ~None taken, Keldorn. Were that all people were of as true of purpose as yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #21444 /* ~Congratulations? What for?~ [VALYGA55] */
  IF ~~ THEN EXTERN ~BKELDOR~ 121
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21447 /* ~Yes, I see. My family's vow to kill Lavok. It... does not feel as I think it should.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 122
END

IF ~~ THEN BEGIN 63 // from:
  SAY #21449 /* ~Would they? I doubt most of my family even remembered the oath. And I am sure none of them knew Lavok.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 123
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21451 /* ~I am not so sure, Keldorn. What disturbs me is my readiness to believe him as some kind of absolute evil. Things are not quite so black and white, I think.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 124
END

IF WEIGHT #13 /* Triggers after states #: 74 77 82 91 122 139 149 158 173 177 even though they appear after this state */
~  InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("CDValygarKorganBanter","LOCALS",0)
~ THEN BEGIN 65 // from:
  SAY #21454 /* ~I must say, Korgan, you're not like other dwarves I've known.~ */
  IF ~~ THEN DO ~SetGlobal("CDValygarKorganBanter","LOCALS",1)
~ EXTERN ~BKORGAN~ 118
END

IF ~~ THEN BEGIN 66 // from:
  SAY #21456 /* ~No, I've kept company with mountain dwarves in the past and always respected their determination and sense. Behind the gruffness was compassion and wisdom.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 119
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21458 /* ~That's true. Like I said, you're nothing like them.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 120
END

IF ~~ THEN BEGIN 68 // from:
  SAY #21460 /* ~I've no worry of that, dwarf. Nor any of you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21462 /* ~*sigh* I am not your squire, Mazzy.~ [VALYGA61] */
  IF ~~ THEN EXTERN ~BMAZZY~ 108
END

IF ~~ THEN BEGIN 70 // from:
  SAY #21464 /* ~Why would you want to go to Waterdeep? It's a crowded, dirty place filled to the walls with humanity. I can't think of anything less appealing.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 109
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21466 /* ~Well, no, but—~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 110
END

IF ~~ THEN BEGIN 72 // from:
  SAY #21469 /* ~I've no intention of setting foot inside the place, Mazzy. And I've given no thought as to where I will go once this is done.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 111
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~Mazzy, I... *sigh* Very well, if you wish to go to Waterdeep, I will at least accompany you part of the way... though I would prefer to travel to Neverwinter.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 112
END

IF WEIGHT #8 /* Triggers after states #: 82 91 122 139 173 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("BValygar4","LOCALS",0)
~ THEN BEGIN 74 // from:
  SAY #21453 /* ~Minsc... something about you concerns me...~ [VALYGA49] */
  IF ~~ THEN DO ~SetGlobal("BValygar4","LOCALS",1)
~ EXTERN ~BMINSC~ 90
END

IF ~~ THEN BEGIN 75 // from:
  SAY #21474 /* ~I find it odd that someone who fights so well is not entirely in possession of his senses.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 91
END

IF ~~ THEN BEGIN 76 // from:
  SAY #21476 /* ~Have you... considered seeing a priest, Minsc? Someone who might try to heal your... uh... head wound?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 92
END

IF WEIGHT #10 /* Triggers after states #: 82 91 122 139 158 173 even though they appear after this state */
~  InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("BValygar5","LOCALS",0)
~ THEN BEGIN 77 // from:
  SAY #21481 /* ~I wonder, Nalia... Why is it that you struggle to be so different from what your family asks of you?~ [VALYGA50] */
  IF ~~ THEN DO ~SetGlobal("BValygar5","LOCALS",1)
~ EXTERN ~BNALIA~ 43
END

IF ~~ THEN BEGIN 78 // from:
  SAY #21483 /* ~You cannot solve all problems with wealth, Nalia.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 44
END

IF ~~ THEN BEGIN 79 // from:
  SAY #21485 /* ~I do not think they are as unhappy as that, really. Was your father a cruel man, then?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 45
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21487 /* ~My family was afflicted by our curse; I knew little affection or care. I would have given up all our wealth for the sane, loving parent your father was.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 46
END

IF ~~ THEN BEGIN 81 // from:
  SAY #21489 /* ~Believe it, Nalia. One day it will truly be too late.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Dead("Lavok02")
TimeGT(5)
TimeLT(10)
Global("BValygar6","LOCALS",0)
~ THEN BEGIN 82 // from:
  SAY #21490 /* ~*sigh* What a beautiful day. And what makes it even better is that I am truly a free man.~ [VALYGA51] */
  IF ~~ THEN DO ~SetGlobal("BValygar6","LOCALS",1)
~ EXTERN ~BVICONI~ 122
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21492 /* ~I find some pleasure in being able to walk freely, drow.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 123
END

IF ~~ THEN BEGIN 84 // from:
  SAY #21494 /* ~I'll not be baited by you, Viconia. I have no pleasant thoughts of Lavok's death.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 124
END

IF ~~ THEN BEGIN 85 // from:
  SAY #21496 /* ~I... I still know evil when I see it, Viconia. I am just... just...~ */
  IF ~~ THEN EXTERN ~BVICONI~ 125
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21498 /* ~Enough! I see it well enough in you, drow! Begone!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #21500 /* ~Hmph! And why is that, Viconia?~ [VALYGA45] */
  IF ~~ THEN EXTERN ~BVICONI~ 127
END

IF ~~ THEN BEGIN 88 // from:
  SAY #21502 /* ~My family was cursed during its existence. If I am the last of the Corthalas, it will be a well and good thing.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 128
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21504 /* ~There is nothing that I would tell you, drow, no matter your comments.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 129
END

IF ~~ THEN BEGIN 90 // from:
  SAY #21506 /* ~I like women well enough, Viconia! Leave me be!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 130
END

IF WEIGHT #2 /* Triggers after states #: 139 even though they appear after this state */
~  See(Player1)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("BValygar7","LOCALS",0)
~ THEN BEGIN 91 // from:
  SAY #21516 /* ~I am curious. How much experience have you had with magic?~ [VALYGA67] */
  IF ~  Class(Player1,MAGE)
~ THEN REPLY #21517 /* ~I am a mage, Valygar. My experience with magic is quite thorough, I assure you. Why do you ask?~ */ DO ~SetGlobal("BValygar7","LOCALS",1)
~ GOTO 92
  IF ~  Class(Player1,CLERIC)
~ THEN REPLY #21518 /* ~As a cleric I gain my magic through the worship of my god. Why do you ask?~ */ DO ~SetGlobal("BValygar7","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #21519 /* ~I have had considerable encounters with magic throughout my travels, Valygar, if that's what you mean.~ */ DO ~SetGlobal("BValygar7","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #21520 /* ~This is no time for chatter, Valygar.~ */ DO ~SetGlobal("BValygar7","LOCALS",1)
~ GOTO 95
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #21521 /* ~You are a mage? I suppose I should have expected that. My life appears to be entwined with foul sorcery, and there seems to be no escaping it.~ */
  IF ~~ THEN REPLY #21522 /* ~What do you mean?~ */ GOTO 96
  IF ~~ THEN REPLY #21523 /* ~I don't consider my magic to be foul, Valygar.~ */ GOTO 97
  IF ~~ THEN REPLY #21524 /* ~If I were you, I would not use the word "foul" in reference to my magic.~ */ GOTO 98
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #21525 /* ~I suppose that's not quite the same as sorcery, but it's still magic. Sometimes I think my life to be so caught up in foul magic there is no escape.~ */
  IF ~~ THEN REPLY #21526 /* ~Why do you say that?~ */ GOTO 96
  IF ~~ THEN REPLY #21527 /* ~I don't think magic is foul when it comes from your god.~ */ GOTO 99
  IF ~~ THEN REPLY #21549 /* ~I don't think magic is foul if it's put to good use.~ */ GOTO 97
  IF ~~ THEN REPLY #21528 /* ~I would be careful, if I were you, about calling my magic "foul."~ */ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 91.2
  SAY #21529 /* ~So you too are drawn into its wake? Sometimes I believe that my life is so caught up with magic that there will never be an escape from its foul presence.~ */
  IF ~~ THEN REPLY #21530 /* ~What do you mean?~ */ GOTO 96
  IF ~~ THEN REPLY #21531 /* ~I don't think magic is foul, Valygar.~ */ GOTO 97
  IF ~~ THEN REPLY #21532 /* ~I know exactly what you mean. Fortunately, magic has its uses and can at least be tolerated.~ */ GOTO 100
END

IF ~~ THEN BEGIN 95 // from: 102.3 100.3 99.3 97.3 96.3 91.3
  SAY #21533 /* ~Of course, <CHARNAME>. I apologize.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from: 97.0 94.0 93.0 92.0
  SAY #21534 /* ~I told you of Lavok: His influence did not end with his disappearance. Like a curse, my family has been afflicted with magic, and it has brought us only ill.~ */
  IF ~~ THEN REPLY #21535 /* ~Do you mean there have been many within your family who have been magic-users?~ */ GOTO 101
  IF ~~ THEN REPLY #21536 /* ~Why do you consider that a curse?~ */ GOTO 103
  IF ~~ THEN REPLY #21537 /* ~Ah, I see. Magic can have its dark side, I suppose.~ */ GOTO 105
  IF ~~ THEN REPLY #21543 /* ~Enough, Valygar. This is no time for talk.~ */ GOTO 95
END

IF ~~ THEN BEGIN 97 // from: 94.1 93.2 92.1
  SAY #21538 /* ~I have heard it said that magic is only as poor as its user, but I do not believe. My family had a long and intimate dance with magic: It brought only grief.~ */
  IF ~~ THEN REPLY #21539 /* ~What do you mean by that?~ */ GOTO 96
  IF ~~ THEN REPLY #21540 /* ~Grief? Surely magic can be beneficial as well.~ */ GOTO 100
  IF ~~ THEN REPLY #21541 /* ~You think what has been true for your family is true for all magic?~ */ GOTO 108
  IF ~~ THEN REPLY #21542 /* ~Enough, Valygar. This is no time for talk.~ */ GOTO 95
END

IF ~~ THEN BEGIN 98 // from: 93.3 92.2
  SAY #21544 /* ~That is simply how I feel. You may be a good person, but your magic will twist you in the end. But perhaps I should keep my opinions to myself. I apologize.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from: 93.1
  SAY #21545 /* ~I suppose I would know little about that. I worship no god and take no comfort from knowing of their existence.~ */
  IF ~~ THEN REPLY #21546 /* ~You don't? Why is that?~ */ GOTO 110
  IF ~~ THEN REPLY #21547 /* ~Perhaps if your family had been more pious and given the gods their due, you would not be having the problems you are.~ */ GOTO 112
  IF ~~ THEN REPLY #21548 /* ~Then you are a heathen.~ */ GOTO 113
  IF ~~ THEN REPLY #21571 /* ~Enough, let's get going.~ */ GOTO 95
END

IF ~~ THEN BEGIN 100 // from: 97.1 94.2
  SAY #21550 /* ~Sometimes I think Faerûn would be a far better place without it. It spawns as much danger as it cures... everything would be better done by hand, or not at all.~ */
  IF ~~ THEN REPLY #21551 /* ~Surely you agree that magic is also responsible for great beauty and wondrous miracles?~ */ GOTO 114
  IF ~~ THEN REPLY #21552 /* ~I think Faerûn would be a dull and boring place without magic, Valygar. What would one do for adventure?~ */ GOTO 115
  IF ~~ THEN REPLY #21553 /* ~I agree with you. Magic is a terrible thing.~ */ GOTO 116
  IF ~~ THEN REPLY #21554 /* ~Enough talk, Valygar.~ */ GOTO 95
END

IF ~~ THEN BEGIN 101 // from: 96.0
  SAY #21555 /* ~The talent seems to run rampant. My mother was a wizard, as was my grandfather and many other relatives beyond that. All of them came to a bitter end.~ */
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 104.0 101.0
  SAY #21556 /* ~Perhaps it is fortunate that I am the last of my line. It might be fitting that the family and the fortune that paved the path both end with Lavok's death.~ */
  IF ~~ THEN REPLY #21557 /* ~You would not consider retiring from the Life and having children?~ */ GOTO 117
  IF ~~ THEN REPLY #21558 /* ~That's terrible... all of your family is gone?~ */ GOTO 119
  IF ~~ THEN REPLY #21559 /* ~That is a difficult attitude to live with.~ */ GOTO 121
  IF ~~ THEN REPLY #21560 /* ~Enough talk, Valygar. Let us continue on.~ */ GOTO 95
END

IF ~~ THEN BEGIN 103 // from: 96.1
  SAY #21561 /* ~It is a curse because magic twists the soul. Once you begin, you put aside concerns of life. There is never enough books, scrolls, or time to study spells.~ */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #21562 /* ~Soon one can challenge the boundaries of life and death. The unnatural becomes commonplace, and before you realize, you are on a path that only leads to ruin.~ */
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 105 // from: 96.2
  SAY #21563 /* ~I have seen every facet of magic's dark side with my mother before... before she died. Try as I might, I cannot twist and turn it enough to find its light side.~ */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 109.0 105.0
  SAY #21564 /* ~Enough talk of magic, however. I am sorry to have brought the topic up. We should be going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21565 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from: 97.2
  SAY #21566 /* ~Every Corthala—adventurer, sage, necromancer—all would have been better served staying home to take care of their family and live natural lives.~ */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #21567 /* ~I think, from that breadth of experience, that gives me plenty of ground to cast my eye on magic as a whole.~ */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 99.0
  SAY #21568 /* ~The gods have never impacted my life in any form. I devote myself to defending natural from unnatural, and that grants more peace than any god, I think.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 120.0 118.0 116.0 113.0 112.0 110.0
  SAY #21569 /* ~But enough talk. We should be going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from: 99.1
  SAY #21570 /* ~Perhaps you are right, <CHARNAME>. No god ever expressed the interest, however, and I sometimes wonder which was responsible for our curse.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 113 // from: 99.2
  SAY #21572 /* ~A heathen? If only there were a god who would have saved my family from itself—I would kneel down and thank him. Until that day, I prefer to rely on myself.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 114 // from: 100.0
  SAY #21573 /* ~I... I suppose so. You have traveled more than I. Perhaps if I see these miracles, I would be more easily convinced. I shall have to think on that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from: 100.1
  SAY #21574 /* ~I think you have an odd idea of adventure, my friend. Perhaps magic holds such a station in your life; I simply wish it did not hold that station in mine.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from: 100.2
  SAY #21575 /* ~Indeed. It's good to know I'm traveling with someone in possession of some common sense.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 117 // from: 102.0
  SAY #21576 /* ~And know that my own children would be likely afflicted? Aside from that, who would have me? Magic is frowned on here, and too many know of my heritage.~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #21577 /* ~But... perhaps, <CHARNAME>. Perhaps I would consider it. Somewhere else, who knows?~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 119 // from: 102.1
  SAY #21578 /* ~They either killed each other in their pursuits or have been... dealt with. It was not a large family anyway... few sorcerers see the need for a family life.~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21579 /* ~And those that do are rarely happy with it. No, no... it is very likely best that I am the last of us. A sad thing, but true enough.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 121 // from: 102.2
  SAY #21580 /* ~Yes. Yes, it is. I... never mind. Let us be going.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 139 even though they appear after this state */
~  See(Player1)
CombatCounter(0)
!StateCheck(Player1,STATE_SLEEPING)
Global("BValygar8","LOCALS",0)
~ THEN BEGIN 122 // from:
  SAY #21581 /* ~Tell me... what kind of family did you have?~ [VALYGA68] */
  IF ~~ THEN REPLY #21582 /* ~I was raised by Gorion in Candlekeep. He's the only father I've known.~ */ DO ~SetGlobal("BValygar8","LOCALS",1)
~ GOTO 123
  IF ~~ THEN REPLY #21583 /* ~My family is... best not discussed.~ */ DO ~SetGlobal("BValygar8","LOCALS",1)
~ GOTO 124
  IF ~~ THEN REPLY #21584 /* ~Why do you ask?~ */ DO ~SetGlobal("BValygar8","LOCALS",1)
~ GOTO 125
  IF ~~ THEN REPLY #21585 /* ~This is no time to talk, Valygar.~ */ DO ~SetGlobal("BValygar8","LOCALS",1)
~ GOTO 126
END

IF ~~ THEN BEGIN 123 // from: 125.0 122.0
  SAY #21586 /* ~I see. He is a good man, then?~ */
  IF ~~ THEN REPLY #21587 /* ~A very good man. He died, though... killed by Sarevok while protecting me many months ago.~ */ GOTO 127
  IF ~~ THEN REPLY #21588 /* ~I'd rather not discuss him, Valygar.~ */ GOTO 128
  IF ~~ THEN REPLY #21589 /* ~Let's just keep moving, shall we?~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #21590 /* ~Hm. I know what you mean. Being a Corthala is nothing that I would want to shout from the mountaintops either.~ */
  IF ~~ THEN REPLY #21591 /* ~Why is that? Does it have to do with Lavok?~ */ GOTO 129
  IF ~~ THEN REPLY #21592 /* ~It's not quite the same thing. I am one of the children of Bhaal.~ */ GOTO 131
  IF ~~ THEN REPLY #21593 /* ~My situation isn't quite like yours. But I'd rather not discuss it.~ */ GOTO 128
  IF ~~ THEN REPLY #21594 /* ~Indeed. Let's keep moving.~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 122.2
  SAY #21595 /* ~Family reveals much. Mine was plagued by our legacy; we have nearly destroyed ourselves. Others are not so extreme, and I am always curious enough to wonder.~ */
  IF ~~ THEN REPLY #21596 /* ~I was raised by Gorion, in Candlekeep. He is the only father I have known.~ */ GOTO 123
  IF ~~ THEN REPLY #21597 /* ~My lineage is... best not discussed, actually.~ */ GOTO 128
  IF ~~ THEN REPLY #21598 /* ~You were not part of the happiest of families, I take it.~ */ GOTO 129
  IF ~~ THEN REPLY #21599 /* ~Enough talk, Valygar. Let us move on.~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 127.3 125.3 124.3 123.2 122.3
  SAY #21600 /* ~Very well.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 127 // from: 123.0
  SAY #21601 /* ~Ah, he's dead, then? My condolences. 'Tis hard to be without your father.~ */
  IF ~~ THEN REPLY #21602 /* ~Yes, I miss him quite a lot.~ */ GOTO 132
  IF ~~ THEN REPLY #21603 /* ~I've managed to do well enough on my own.~ */ GOTO 137
  IF ~~ THEN REPLY #21604 /* ~What about your father? What happened to him?~ */ GOTO 134
  IF ~~ THEN REPLY #21605 /* ~Let's just keep going, Valygar.~ */ GOTO 126
END

IF ~~ THEN BEGIN 128 // from: 125.1 124.2 123.1
  SAY #21606 /* ~Of course. I didn't mean anything by it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 125.2 124.0
  SAY #21607 /* ~Not exactly. My family was afflicted by magical ability for many generations, and it brought us no good. Lavok's wealth was spent in the pursuit of it, I fear.~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 138.0 129.0
  SAY #21608 /* ~But enough talk. Let us keep going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 124.1
  SAY #21609 /* ~You are... the child of a god? How is that possible?~ */
  IF ~~ THEN REPLY #21610 /* ~I don't know, just yet. But it's true.~ */ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 127.0
  SAY #21611 /* ~I miss my father too, though he was taken from me years before his actual death. He was versed in the ways of the wilderness and gifted with a merry laugh.~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #21612 /* ~He showed me the ways of the forest and tried to woo my mother away from her magical studies, but she ignored both of us more and more as her obsession grew.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 127.2
  SAY #21613 /* ~My father grew ill, and my mother realized too late what she had missed. Her magical efforts to sustain him made him undead, a vile mimic of what my father was.~ */
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #21614 /* ~She grew obsessed with him, and with her own power, eventually joining him in his unliving existence. I was forced to slay them both to put them at rest.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 137.0 135.0
  SAY #21615 /* ~But I must sound like a mewling child. Enough, <CHARNAME>... let us continue on our travels.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from: 127.1
  SAY #21616 /* ~I've said as much many times since my family was lost to me. Sometimes I wonder if I truly mean it.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 138 // from: 131.0
  SAY #21617 /* ~A child of the dead god of murder. No offense, but that makes my own troubles seem trite in comparison. I understand a little of what you are about now.~ */
  IF ~~ THEN GOTO 130
END

IF WEIGHT #1 ~  See(Player1)
CombatCounter(0)
Dead("Lavok02")
!StateCheck(Player1,STATE_SLEEPING)
Global("BValygar9","LOCALS",0)
~ THEN BEGIN 139 // from:
  SAY #21618 /* ~May I ask you for your opinion on something?~ [VALYGA69] */
  IF ~~ THEN REPLY #21619 /* ~If you wish.~ */ DO ~SetGlobal("BValygar9","LOCALS",1)
~ GOTO 140
  IF ~~ THEN REPLY #21620 /* ~We haven't time for this, Valygar.~ */ DO ~SetGlobal("BValygar9","LOCALS",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #21621 /* ~What is your opinion on redemption? Can one who has committed evil acts ever become good again?~ */
  IF ~~ THEN REPLY #21622 /* ~I take it you're referring to Lavok?~ */ GOTO 142
  IF ~~ THEN REPLY #21623 /* ~Yes, I think so. If we weren't given the chance to redeem ourselves by performing acts of kindness, what would be the point to living?~ */ GOTO 143
  IF ~~ THEN REPLY #21624 /* ~No, I don't think so. You must always be careful not to stain your soul with sin, in my thinking, or you will be forever damned.~ */ GOTO 144
  IF ~~ THEN REPLY #21625 /* ~Perhaps, Valygar. It depends on the person. And the deeds.~ */ GOTO 145
  IF ~~ THEN REPLY #21626 /* ~I truly don't know. That's a question better suited to a philosopher, which I am not.~ */ GOTO 146
END

IF ~~ THEN BEGIN 141 // from: 142.4 139.1
  SAY #21627 /* ~I suppose you're right.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from: 140.0
  SAY #21628 /* ~I have thought of his death much, and it raises a question for me. I had thought that evil... true evil... was absolute. Now I am unsure if such a thing exists.~ */
  IF ~~ THEN REPLY #21629 /* ~I think that we all have the opportunity to redeem our actions. We are judged according to what we do.~ */ GOTO 143
  IF ~~ THEN REPLY #21630 /* ~It does exist. Evil is evil, and it must be punished.~ */ GOTO 144
  IF ~~ THEN REPLY #21631 /* ~It may. I think it depends on the person... and the deeds.~ */ GOTO 145
  IF ~~ THEN REPLY #21632 /* ~I don't know, Valygar. Your question is one more suited for a philosopher, which I am not.~ */ GOTO 146
  IF ~~ THEN REPLY #21633 /* ~I haven't time for this. Let's just keep moving.~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0 140.1
  SAY #21634 /* ~That seems very optimistic of you, <CHARNAME>. I wonder if that is truly so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from: 142.1 140.2
  SAY #21635 /* ~That is, more or less, how I used to feel. It troubles my mind, though... and the more I see, the less I think it is true.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 145 // from: 142.2 140.3
  SAY #21636 /* ~I suppose you are correct. If only life were full of more certainties... I would have less trouble.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from: 142.3 140.4
  SAY #21637 /* ~*sigh* I suppose so. Perhaps it is silly for me to muse on it so. Let us continue our travels, then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 147 // from: 29.0
  SAY #37354 /* ~That fortune... brought us no end of grief, however. My family eventually took up his pastime as well, to my sorrow.~ */
  IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #37355 /* ~I have no greater wish than to see such magic wiped from Faerûn. What's dead is dead, and that should be the end! Tampering with life goes against all reason!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 13
END

IF WEIGHT #12 /* Triggers after states #: 158 173 177 even though they appear after this state */
~  IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_valygar","GLOBAL",0)
~ THEN BEGIN 149 // from:
  SAY #98873 /* ~What troubles you, my friend?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_valygar","GLOBAL",1)
~ EXTERN ~BRASAAD~ 71
END

IF ~~ THEN BEGIN 150 // from:
  SAY #98875 /* ~Alorgoth.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #98876 /* ~You give him too much power over you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 72
END

IF ~~ THEN BEGIN 152 // from:
  SAY #98878 /* ~Keep walking the path you're on and he may well kill you too. Then where will you be?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 73
END

IF ~~ THEN BEGIN 153 // from:
  SAY #98880 /* ~Nothing you do will bring him back, monk. You must live for yourself now.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 74
END

IF ~~ THEN BEGIN 154 // from:
  SAY #98882 /* ~...~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.0
  SAY #98883 /* ~It's what I try to do. I know the burden family can be all too well.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 75
END

IF ~~ THEN BEGIN 156 // from:
  SAY #102084 /* ~Save it for someone else, half-orc. I've no interest in a life of bondage.~ */
  IF ~~ THEN EXTERN ~BDORN~ 99
END

IF ~~ THEN BEGIN 157 // from:
  SAY #102086 /* ~Your chains say otherwise.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 173 even though they appear after this state */
~  IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_valygar","GLOBAL",0)
~ THEN BEGIN 158 // from:
  SAY #99350 /* ~You are smiling, creature.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_valygar","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 125
END

IF ~~ THEN BEGIN 159 // from:
  SAY #99352 /* ~What have you to smile about?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 126
END

IF ~~ THEN BEGIN 160 // from:
  SAY #99354 /* ~You are a murderer. A monster.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 127
END

IF ~~ THEN BEGIN 161 // from:
  SAY #99356 /* ~What you did while trapped in Dragomir's Tomb was unforgivable. You are no better than the malign being that possessed my ancestor, Lavok, and laid my bloodline low.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 128
END

IF ~~ THEN BEGIN 162 // from:
  SAY #99358 /* ~How many women, how many innocent girls, did you drag to their deaths while you wore Dragomir's Casque? Two? Five? A dozen? A hundred?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 129
END

IF ~~ THEN BEGIN 163 // from:
  SAY #99361 /* ~Warm blood courses through the veins of the living. All that moves through your body is cold, dark magic.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY #99362 /* ~I call you abomination. You should be destroyed.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 131
END

IF ~~ THEN BEGIN 165 // from:
  SAY #99367 /* ~Then you must rid yourself of this vile parasite.~ */
  IF ~~ THEN REPLY #99368 /* ~I'll not cast Hexxat aside, for you or anyone. She has earned my respect.~ */ GOTO 166
  IF ~~ THEN REPLY #99369 /* ~Vile parasite? Really?~ */ GOTO 167
  IF ~~ THEN REPLY #99370 /* ~I do not take orders from you, Valygar.~ */ GOTO 170
END

IF ~~ THEN BEGIN 166 // from: 170.0 165.0
  SAY #99371 /* ~Everything she's done has been at the expense of those who sought to help her—or were forced to.~ */
  IF ~~ THEN REPLY #99372 /* ~She did what she had to to survive. If you've a problem with that—deal with it.~ */ GOTO 167
  IF ~~ THEN REPLY #99373 /* ~You make it sound like she had a choice.~ */ GOTO 172
  IF ~~ THEN REPLY #99374 /* ~The weak invite exploitation.~ */ GOTO 171
END

IF ~~ THEN BEGIN 167 // from: 171.0 169.0 166.0 165.1
  SAY #99375 /* ~There will be no peace for us, <CHARNAME>. Not while this thing walks among us.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR1101",405,327,S)
~ EXTERN ~BHEXXAT~ 132
END

IF ~~ THEN BEGIN 168 // from:
  SAY #99377 /* ~Die and stay dead, fiend!~ */
  IF ~~ THEN DO ~SetGlobal("OHH_valygarfight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #99378 /* ~You call a vampire friend?~ */
  IF ~~ THEN REPLY #99379 /* ~This one, I do.~ */ GOTO 167
  IF ~~ THEN REPLY #99380 /* ~A friend? Perhaps. Certainly an ally, and one I value greatly.~ */ GOTO 170
  IF ~~ THEN REPLY #99381 /* ~I call Hexxat a friend.~ */ GOTO 171
END

IF ~~ THEN BEGIN 170 // from: 169.1 165.2
  SAY #99382 /* ~How can you value this—thing? All she offers you—all she offers anyone—is doom. She helps you only so long as you serve her purposes. The second that changes, she will turn on you, as she has on everyone who ever helped her.~ */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 171 // from: 169.2 166.2
  SAY #99383 /* ~I thought better of you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 172 // from: 166.1
  SAY #99384 /* ~There's always a choice, <CHARNAME>. And letting this monster walk with us—by not cutting it down where it stands—you are making the wrong one.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("VALYGAR")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_valygar","GLOBAL",0)
~ THEN BEGIN 173 // from:
  SAY #88699 /* ~Tame magic is dangerous enough. Your wild magic, Neera—why use it? Why endanger those around you with powers you cannot control?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_valygar","GLOBAL",1)
SetGlobalTimer("OHN_valygar_question","GLOBAL",ONE_DAY)
~ EXTERN ~BNEERA~ 99
END

IF ~~ THEN BEGIN 174 // from:
  SAY #88701 /* ~So? Is increasing your power worth more to you than the safety of your companions?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 100
END

IF ~~ THEN BEGIN 175 // from:
  SAY #88703 /* ~You haven't thought this through? You are as irresponsible and power-hungry as the rest!~ */
  IF ~~ THEN EXTERN ~BNEERA~ 101
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~BANOMEN~ 613
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~BKELDOR~ 173
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~BJAHEIR~ 488
END

IF ~~ THEN BEGIN 176 // from:
  SAY #88708 /* ~Yes. Surprise me.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("VALYGAR")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
GlobalTimerExpired("OHN_valygar_question","GLOBAL")
Global("OHN_valygar","GLOBAL",1)
~ THEN BEGIN 177 // from:
  SAY #88709 /* ~So, Neera? Have you considered my question? Can you tell me why using wild magic is worth risking those you care about?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_valygar","GLOBAL",2)
~ EXTERN ~BNEERA~ 102
END

IF ~~ THEN BEGIN 178 // from:
  SAY #88711 /* ~But let's say it DOES escape your control. Let's say you kill me, or you kill <CHARNAME>. Can't that happen?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 103
END

IF ~~ THEN BEGIN 179 // from:
  SAY #88713 /* ~Stop. Can it happen?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 104
END

IF ~~ THEN BEGIN 180 // from:
  SAY #88715 /* ~What entitles you to decide that your power is worth using, then?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 105
END

IF ~~ THEN BEGIN 181 // from:
  SAY #88717 /* ~Others might die if you do. Others will die BECAUSE you do. Think on that, girl.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN GOTO 182
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~BKELDOR~ 174
END

IF ~~ THEN BEGIN 182 // from: 181.1
  SAY #88719 /* ~Do not lecture me about means and ends. That is a speech she should hear, not I.~ */
  IF ~~ THEN EXIT
END
