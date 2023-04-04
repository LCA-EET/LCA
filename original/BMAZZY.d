// creator  : weidu (version 24900)
// argument : BMAZZY.DLG
// game     : .
// source   : ./override/BMAZZY.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BMAZZY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #24495 /* ~It does not befit an aspiring knight to speak in such a manner.~ [MAZZY45] */
  IF ~~ THEN EXTERN ~BANOMEN~ 61
END

IF ~~ THEN BEGIN 1 // from:
  SAY #24496 /* ~Listen you must, Anomen, if you hope to learn. You are only a youth, so I shall let your insults melt away. I say only what a paladin would say in my place.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 62
END

IF ~~ THEN BEGIN 2 // from:
  SAY #24497 /* ~No knight would speak such things.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #24583 /* ~You are angry, my friend. This I understand implicitly. Injustice and indifference have always been the banes of our society. I often suspect that these sins pose more of a danger to us than any dragon ever could.~ [MAZZY67] */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 4 // from:
  SAY #24584 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #24585 /* ~The trappings of one's family and past are not easy to throw away. It takes more than a glimpse of poverty to bring an epiphany to someone.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 2
END

IF ~~ THEN BEGIN 6 // from:
  SAY #24586 /* ~That may be true, but by casting the rich down, are we not merely creating a new impoverished class?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 3
END

IF ~~ THEN BEGIN 7 // from:
  SAY #24587 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 115.0
  SAY #24588 /* ~Allow me to tell you a tale. In a distant barony, there was a village, lorded over by a cruel baron given to excesses of body and spirit.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 9 // from: 116.0
  SAY #24589 /* ~Now, it came to pass that a man named Kalos fell in love with a woman named Dana. A marriage was set for after harvest. Kalos and Dana were filled with joy.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #24590 /* ~Soon after, the baron came to the village collecting taxes. He saw the beautiful Dana, and he had his guards take her so that he could possess her.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24591 /* ~When Kalos heard Dana was gone, he and his friends took up what arms they could. They stormed the baron's manor unthinking, like men gone berserk. ~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 12 // from:
  SAY #24592 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #24593 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 119.0
  SAY #24594 /* ~Anyone can be weak, Nalia. We like to hope that the oppressed never become the oppressor, that we would behave better than those above. Alas, it is not always so.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY #24597 /* ~That is all I can ask, Nalia. In the meantime, as I have heard it said: We be adventurers; let us adventure.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  InParty("Valygar")
See("Valygar")
TimeOfDay(NIGHT)
CheckStatGT("Mazzy",5,FATIGUE)
Global("BMazzy1","LOCALS",0)
~ THEN BEGIN 16 // from:
  SAY #24724 /* ~Goodman Valygar! I tire. Would you please prepare my bedroll and fetch extra wood for the fire? There seems to be a chill in the air.~ [MAZZY50] */
  IF ~~ THEN DO ~SetGlobal("BMazzy1","LOCALS",1)
IncrementGlobal("MazzyValygar","GLOBAL",1)
~ EXTERN ~BVALYGA~ 11
END

IF ~~ THEN BEGIN 17 // from:
  SAY #24725 /* ~My equipment needs a measure of cleaning as well. If you are through with your own preparations, would you see to this?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 12
END

IF ~~ THEN BEGIN 18 // from:
  SAY #24726 /* ~~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 13
END

IF ~~ THEN BEGIN 19 // from:
  SAY #24727 /* ~I did not intend to burden. Indeed, I thought the role would flatter. Every knight needs a squire; I had hoped you would be honored.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 14
END

IF ~~ THEN BEGIN 20 // from:
  SAY #24728 /* ~Perhaps I should have made a formal request, but... I am new to this as well... There is none other more fit to be my squire. You are a gentleman... a friend. ~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 15
END

IF ~~ THEN BEGIN 21 // from:
  SAY #24729 /* ~Have I erred? Just what?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 16
END

IF ~~ THEN BEGIN 22 // from:
  SAY #368 /* ~Korgan, I know not whether to berate you for your unsolicited comments or for your mantra of genocide.~ [MAZZY49] */
  IF ~~ THEN EXTERN ~BKORGAN~ 44
END

IF ~~ THEN BEGIN 23 // from:
  SAY #369 /* ~~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 45
END

IF ~~ THEN BEGIN 24 // from:
  SAY #370 /* ~No one likes to be insulted, least of all tall folk. You just seem too preoccupied with violence to get along with people, to notice beauty about you.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 46
END

IF ~~ THEN BEGIN 25 // from:
  SAY #371 /* ~I'm sorry to hear that, Korgan, but as pained as the past may be, try to be civil while we are traveling in human civilization. They didn't make your past.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 47
END

IF ~~ THEN BEGIN 26 // from:
  SAY #372 /* ~We are all responsible for ourselves. I sorrow at the pain of your youth, but you could defeat your anguish. You've no claim to self-pity.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 48
END

IF ~~ THEN BEGIN 27 // from:
  SAY #373 /* ~Then why don't you save your rage for the evil beasts that plague us all, be we human, dwarf, or halfling?~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 49
END

IF WEIGHT #1 ~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BMazzy2","LOCALS",0)
~ THEN BEGIN 28 // from:
  SAY #426 /* ~Aerie, dear... I see that you begin to become more confident in this world, which is undoubtedly quite strange to you. You're learning what it's like to live and thrive here.~ [MAZZY51] */
  IF ~~ THEN DO ~SetGlobal("BMazzy2","LOCALS",1)
~ EXTERN ~BAERIE~ 0
END

IF ~~ THEN BEGIN 29 // from:
  SAY #427 /* ~Sometimes I am frightened by what I see as well. You are right to be. There is corruption everywhere. You must constantly challenge yourself to remain pure.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #428 /* ~You are good by nature, Aerie, but perhaps a little naive. Devious people will try to take advantage, especially in mercenary settlements like Athkatla.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 2
END

IF ~~ THEN BEGIN 31 // from:
  SAY #429 /* ~Seek those who value honor. Observe before you accept, especially in times of adversity. Watch companions in conflict, and you will see them as they truly are. ~ */
  IF ~~ THEN EXTERN ~BAERIE~ 3
END

IF ~~ THEN BEGIN 32 // from:
  SAY #430 /* ~Thank you, Aerie. You are truly a beautiful soul.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #436 /* ~Surely, Cernd, your companions shall stand by you as we descend into the bowels of the earth.~ [MAZZY62] */
  IF ~~ THEN EXTERN ~BCERND~ 1
END

IF ~~ THEN BEGIN 34 // from:
  SAY #440 /* ~There is no shame in admitting your fears. It is the only way that you might face them. ~ */
  IF ~~ THEN EXTERN ~BCERND~ 2
END

IF ~~ THEN BEGIN 35 // from:
  SAY #441 /* ~Then I shall be the staff that you lean upon in your time of need.~ */
  IF ~~ THEN EXTERN ~BCERND~ 3
END

IF WEIGHT #2 ~  InParty("Valygar")
See("Valygar")
CombatCounter(0)
HPPercentLT("Valygar",20)
!HP("Valygar",1)
!StateCheck("Valygar",STATE_SLEEPING)
Global("BMazzy3","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #449 /* ~Valygar! You've been wounded!~ [MAZZY52] */
  IF ~~ THEN DO ~SetGlobal("BMazzy3","LOCALS",1)
IncrementGlobal("MazzyValygar","GLOBAL",1)
~ EXTERN ~BVALYGA~ 17
END

IF ~~ THEN BEGIN 37 // from:
  SAY #450 /* ~To the contrary, it is a serious wound indeed. We must attend to it immediately. ~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 18
END

IF ~~ THEN BEGIN 38 // from:
  SAY #451 /* ~Truly, I should never have allowed you into harm's way. Worry not, friend Valygar, we shall have you healed in no time.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 19
END

IF ~~ THEN BEGIN 39 // from:
  SAY #452 /* ~I am honor-bound to protect you, Squire Valygar. I will not be derelict in that duty again.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Gender("Edwin",MALE)
Global("BMazzy4","LOCALS",0)
~ THEN BEGIN 40 // from:
  SAY #459 /* ~Listen carefully, mage. I have noticed you launch your spells in battle without first making sure one of us is not in the way. If you hurt anyone, I will kill you. Is that clear enough?~ [MAZZY53] */
  IF ~~ THEN DO ~SetGlobal("BMazzy4","LOCALS",1)
~ EXTERN ~BEDWIN~ 51
END

IF ~~ THEN BEGIN 41 // from:
  SAY #460 /* ~I shall never need that kind of assistance in a battle. You threaten us much as our enemies with your carelessness. Your recklessness will not be tolerated.~ */
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 42 // from:
  SAY #1129 /* ~And I shall, Haer'Dalis. I shall.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 3
END

IF WEIGHT #5 /* Triggers after states #: 139 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
AreaType(FOREST)
Global("BMazzy5","LOCALS",0)
~ THEN BEGIN 43 // from:
  SAY #1312 /* ~All of the evil in the world cannot keep one from admiring the beauty of the earth.~ [MAZZY54] */
  IF ~~ THEN DO ~SetGlobal("BMazzy5","LOCALS",1)
~ EXTERN ~BJAN~ 48
END

IF ~~ THEN BEGIN 44 // from:
  SAY #1313 /* ~How might one make that assumption?~ */
  IF ~~ THEN EXTERN ~BJAN~ 49
END

IF ~~ THEN BEGIN 45 // from:
  SAY #1314 /* ~This is not making any sense, Jan.~ */
  IF ~~ THEN EXTERN ~BJAN~ 50
END

IF ~~ THEN BEGIN 46 // from:
  SAY #1315 /* ~What, pray tell, does this have to do with the presumption that I work with potatoes?~ */
  IF ~~ THEN EXTERN ~BJAN~ 52
END

IF ~~ THEN BEGIN 47 // from:
  SAY #1316 /* ~Perhaps we should be concentrating on our journey, good gnome. ~ */
  IF ~~ THEN EXTERN ~BJAN~ 56
END

IF ~~ THEN BEGIN 48 // from:
  SAY #1317 /* ~I neither know nor care.~ */
  IF ~~ THEN EXTERN ~BJAN~ 57
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1318 /* ~Where in the heavens did this potato remark arise in the first place?~ */
  IF ~~ THEN EXTERN ~BJAN~ 58
END

IF ~~ THEN BEGIN 50 // from:
  SAY #1319 /* ~Fine, fine! I'd rather not hear the story anyway.~ */
  IF ~~ THEN EXTERN ~BJAN~ 59
END

IF ~~ THEN BEGIN 51 // from:
  SAY #1320 /* ~Jan, though I respect you, I must say that you are quite infuriating. Please desist; we have things to accomplish.~ */
  IF ~~ THEN EXTERN ~BJAN~ 60
END

IF ~~ THEN BEGIN 52 // from:
  SAY #1321 /* ~Are you even listening to me?~ */
  IF ~~ THEN EXTERN ~BJAN~ 61
END

IF ~~ THEN BEGIN 53 // from:
  SAY #1322 /* ~A noble tale in the end, Jan, though I'm continually puzzled by your need to inflict twenty minutes of inane yarns on your listeners before getting to the point.~ */
  IF ~~ THEN EXTERN ~BJAN~ 63
END

IF ~~ THEN BEGIN 54 // from:
  SAY #2989 /* ~Your sense of humor has no sense in it, Korgan. Quite tasteless, and I'd appreciate it if you would keep it to yourself!~ [MAZZY46] */
  IF ~~ THEN EXTERN ~BKORGAN~ 2
END

IF ~~ THEN BEGIN 55 // from:
  SAY #2990 /* ~Please, Korgan, if I wanted to know the nature of your leisure time, I'm sure I would have asked.~ */
  IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 56 // from:
  SAY #2992 /* ~What's in your wineskin, bellybuilder? A potion of delusion is my guess.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #2457 /* ~That's delightful, Korgan. Not lengthy, but effective.~ [MAZZY47] */
  IF ~~ THEN EXTERN ~BKORGAN~ 4
END

IF ~~ THEN BEGIN 58 // from:
  SAY #3009 /* ~Must you be so urgent and clumsy in your one-handed courting, Korgan? Perhaps your time could be best spent elsewhere?~ [MAZZY48] */
  IF ~~ THEN EXTERN ~BKORGAN~ 40
END

IF ~~ THEN BEGIN 59 // from:
  SAY #3011 /* ~If I hadn't heard it myself, Korgan, I'd have doubted it steadfastly. Perhaps a heart does beat beneath that armored chest, not a daub of stone.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 41
END

IF ~~ THEN BEGIN 60 // from:
  SAY #3012 /* ~Only if it will cease your fawning. Stand still and I'll work that kink from your neck... but if you breach the rules of chivalry, I'll wring it while I'm there.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #3016 /* ~I'm sure your mead-bellied kin would appreciate that lowbrow nonsense, but I don't. And here I thought you might have some values or sense.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #3018 /* ~Any other masterpieces of prose hiding anywhere?~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 42
END

IF WEIGHT #6 /* Triggers after states #: 139 even though they appear after this state */
~  AreaCheck("AR0902")
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("BMazzy6","LOCALS",0)
~ THEN BEGIN 63 // from:
  SAY #3046 /* ~Ah, my spirit always flies so free in this place.~ [MAZZY55] */
  IF ~~ THEN DO ~SetGlobal("BMazzy6","LOCALS",1)
~ EXTERN ~BAERIE~ 59
END

IF ~~ THEN BEGIN 64 // from:
  SAY #3047 /* ~It rides the skies with the solars, Aerie... One day I shall be a paladin atop a white griffon, and you will be a valiant flying squire. Wouldn't that be wonderful?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 60
END

IF ~~ THEN BEGIN 65 // from:
  SAY #3049 /* ~Dream a little, girl, especially here where the gods are listening. Faith is such a beautiful thing to hold on to, Aerie.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 61
END

IF ~~ THEN BEGIN 66 // from:
  SAY #3051 /* ~No, it probably won't... But it gives you a chance to dream at least, doesn't it?~ */
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 67 // from:
  SAY #3057 /* ~I thought you might... Now come, we've got a world to face, don't we, girl?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #3152 /* ~And what follows now? A comment of how grand I am for one so small? Your compliments are insults lightly veiled.~ [MAZZY64] */
  IF ~~ THEN EXTERN ~BMINSC~ 22
END

IF ~~ THEN BEGIN 69 // from:
  SAY #3156 /* ~You speak plain and true despite your battles with language. I apologize for thinking your tone a harsh one. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #3158 /* ~I never know if I can take your words as they are, Minsc, or if they carry some hidden meaning or riddle that must be solved. I trust you are approving of my skills then?~ [MAZZY65] */
  IF ~~ THEN EXTERN ~BMINSC~ 24
END

IF ~~ THEN BEGIN 71 // from:
  SAY #3160 /* ~Ahh yes, Boo. Your animal companion and guide.~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 72 // from:
  SAY #3163 /* ~With Arvoreen's blessing, such a touch may come to me, but for now, we'd best get your wounds dressed by another.~ [MAZZY66] */
  IF ~~ THEN EXTERN ~BMINSC~ 26
END

IF ~~ THEN BEGIN 73 // from:
  SAY #3165 /* ~Through acts of kindness and by living the example, I see no reason I should be denied this. Do you think me not fit because of my parentage?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 27
END

IF ~~ THEN BEGIN 74 // from:
  SAY #3167 /* ~*snicker* No, Minsc, rest assured I did not suspect such a thing. Your heart is pure though, and that will see you through.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 28
END

IF ~~ THEN BEGIN 75 // from:
  SAY #3170 /* ~Minsc, you are a constant surprise to me. And Boo is just the cutest little fuzzy wuzzy. Fuzzy wuzzy wuzzy.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #3173 /* ~Stand easy, Minsc, all is well. Though I am a bit... woozy. Praise the Defender, I have been brought back.~ */
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 77 // from:
  SAY #5027 /* ~Honestly, Yoshimo, I am sick and tired of humans and large folk calling me cute!~ [MAZZY59] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 4
END

IF ~~ THEN BEGIN 78 // from:
  SAY #5028 /* ~Oh, shut up! I won't seem so cute if I break your legs.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 5
END

IF ~~ THEN BEGIN 79 // from:
  SAY #5029 /* ~If you wish to end this conversation without bruises, you will silence yourself now!~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 6
END

IF ~~ THEN BEGIN 80 // from:
  SAY #5030 /* ~And don't call me mistress!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #7478 /* ~Damning me with faint praise, Edwin? I'm flattered that the man who taught Elminster magic and Drizzt how to fight would stoop so low as to notice little old me.~ [MAZZY63] */
  IF ~~ THEN EXTERN ~BEDWIN~ 7
END

IF ~~ THEN BEGIN 82 // from:
  SAY #7479 /* ~And so it shall always be vacant, wizard. When science finally locates the center of the planes, I'm sure you'll be taken aback to find that you're not it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #8530 /* ~Viconia, I'm not about to stoop to dignify your sordid taunts.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 113
END

IF WEIGHT #7 /* Triggers after states #: 139 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,4)
ReputationLT(Player1,8)
Global("BMazzy7","LOCALS",0)
~ THEN BEGIN 84 // from:
  SAY #9068 /* ~For all of the good that you have accomplished in Baldur's Gate, you act now like you don't know the meaning of the word. Heed me well: Come back to the side of the righteous, or I shall be forced to call you enemy.~ [MAZZY68] */
  IF ~~ THEN REPLY #9069 /* ~Little halfling, you don't frighten me, so save your breath.~ */ DO ~SetGlobal("BMazzy7","LOCALS",1)
~ GOTO 85
  IF ~~ THEN REPLY #9070 /* ~I have not always done right, but you have my assurance I will not stray again.~ */ GOTO 86
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #9071 /* ~Little I may be of body, but strong I am in conviction. You have been warned.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from: 84.1
  SAY #9072 /* ~You speak most nobly now. See that your actions reflect your words, and all shall be well.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 139 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,5)
Global("BMazzy8","LOCALS",0)
~ THEN BEGIN 87 // from:
  SAY #9073 /* ~My conscience can allow me to be idle no longer. In the name of all that is good, I accuse you of willfully committing acts of evil.~ [MAZZY69] */
  IF ~~ THEN DO ~SetGlobal("BMazzy8","LOCALS",1)
~ GOTO 125
END

IF ~~ THEN BEGIN 88 // from:
  SAY #8689 /* ~Jaheira, there is a level of sarcasm in your tone that is perhaps unnecessary. We have a leader that honestly tries to anticipate our needs...~ [MAZZY61] */
  IF ~~ THEN REPLY #8691 /* ~Heed Mazzy well, Jaheira.~ */ GOTO 89
  IF ~~ THEN REPLY #8692 /* ~"Tries," Mazzy?~ */ GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #8693 /* ~As I was saying, <PRO_HESHE> has enough trouble keeping this ragtag group together. Perhaps it would be better to be more constructive, and less...~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 25
END

IF ~~ THEN BEGIN 90 // from: 88.1
  SAY #8698 /* ~Excuse me. <CHARNAME> IS a good leader, and it is difficult enough to keep the group together. Perhaps you could be more constructive, and less...~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 25
END

IF ~~ THEN BEGIN 91 // from:
  SAY #8700 /* ~If that is how you wish to put it, yes. ~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 26
END

IF ~~ THEN BEGIN 92 // from:
  SAY #9075 /* ~As you will. It was only a humble suggestion. I've no wish to intrude upon your relationship with <CHARNAME>. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 139 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("BMazzy9","LOCALS",0)
~ THEN BEGIN 93 // from:
  SAY #9078 /* ~Listen to me, drow. Though our leader has made the foolish choice of allowing you to join this party, you shall receive no welcome from me. Slayer of innocents! You taint the sun with your evil!~ [MAZZY56] */
  IF ~~ THEN DO ~SetGlobal("BMazzy9","LOCALS",1)
~ EXTERN ~BVICONI~ 531
END

IF ~~ THEN BEGIN 94 // from:
  SAY #9083 /* ~Cruel words will do you little good when your head is on a pike. Step across the line even once, and I will kill you.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 114
END

IF WEIGHT #10 /* Triggers after states #: 139 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("BMazzy10","LOCALS",0)
~ THEN BEGIN 95 // from:
  SAY #9087 /* ~Jan, I find you to be quite the enigma. This adventure has yielded us a crop of useful magical items, and yet you turn your considerable powers to the never-ending quest to create the perfect turnip peeler.~ [MAZZY57] */
  IF ~~ THEN DO ~SetGlobal("BMazzy10","LOCALS",1)
~ GOTO 126
END

IF ~~ THEN BEGIN 96 // from:
  SAY #9095 /* ~You are mentally incapable of answering a straight question, aren't you, gnome?~ */
  IF ~~ THEN EXTERN ~BJAN~ 79
END

IF ~~ THEN BEGIN 97 // from:
  SAY #9099 /* ~Shut up, shut up, shut up, shut up!~ */
  IF ~~ THEN EXTERN ~BJAN~ 80
END

IF ~~ THEN BEGIN 98 // from:
  SAY #9101 /* ~SHUT UP!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 139 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,14)
Global("BMazzy11","LOCALS",0)
~ THEN BEGIN 99 // from:
  SAY #9631 /* ~I must say, in the time that I've traveled with you, you've proven yourself to be a person with your heart in the right place. I salute you and reaffirm that I shall always stand by you while you stay on this path.~ [MAZZY70] */
  IF ~~ THEN REPLY #9634 /* ~Why, thank you, Mazzy. It is nice to know that I am appreciated.~ */ DO ~SetGlobal("BMazzy11","LOCALS",1)
~ GOTO 100
  IF ~~ THEN REPLY #9636 /* ~What makes you think that your opinion is important to me? Keep it to yourself.~ */ DO ~SetGlobal("BMazzy11","LOCALS",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #9639 /* ~I merely speak the words that beg voicing. You deserve my support.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #9641 /* ~It seems that I have been proven wrong mere seconds after I've spoken. Perhaps you do not deserve my support. I shall have to consider my place in this party.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 139 154 even though they appear after this state */
~  See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Reputation(Player1,20)
Global("BMazzy12","LOCALS",0)
~ THEN BEGIN 102 // from:
  SAY #9646 /* ~Without a doubt, you are the most noble person I've ever met. Your good deeds shall be lauded always, and I am proud to serve beneath you. Bravo! You are an inspiration to me.~ [MAZZY71] */
  IF ~~ THEN DO ~SetGlobal("BMazzy12","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #17764 /* ~What are you talking about, Korgan?~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 92
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17765 /* ~I'm... I'm listening...~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 93
END

IF ~~ THEN BEGIN 105 // from:
  SAY #20046 /* ~That we might, though this was surely but a small scuffle. Our battles will loom larger as we garner more enemies.~ [MAZZY60] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 32
END

IF ~~ THEN BEGIN 106 // from:
  SAY #20051 /* ~Our virtue will guide the way. We shall not falter.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 139 154 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
GlobalGT("MazzyValygar","GLOBAL",0)
Global("BMazzy13","LOCALS",0)
~ THEN BEGIN 107 // from:
  SAY #21461 /* ~I have been thinking, Squire Valygar. Once this is all over, perhaps Waterdeep would be a good place for us to travel.~ [MAZZY58] */
  IF ~~ THEN DO ~SetGlobal("BMazzy13","LOCALS",1)
IncrementGlobal("MazzyValygar","GLOBAL",1)
~ EXTERN ~BVALYGA~ 69
END

IF ~~ THEN BEGIN 108 // from:
  SAY #21463 /* ~I've heard many fine things about the city, and I would like to see it at least once. We can stop at Dragonspear on the way.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 70
END

IF ~~ THEN BEGIN 109 // from:
  SAY #21465 /* ~Well, have you ever been there?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 71
END

IF ~~ THEN BEGIN 110 // from:
  SAY #21467 /* ~Then there's no harm in seeing it at least once, is there?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 72
END

IF ~~ THEN BEGIN 111 // from:
  SAY #21470 /* ~But... that's not how a squire should talk... not to a real knight...~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 73
END

IF ~~ THEN BEGIN 112 // from:
  SAY #21472 /* ~A fair trade! Thank... thank you Valygar. I am lucky to have your aid.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from: 71.0
  SAY #23321 /* ~I have had friends with such attachments before, but never have I met someone so... absorbed in the relationship. Still, you seem all the better for it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from: 3.0
  SAY #37790 /* ~But with all things there are two sides. Oppose injustice, but do so wisely. Some rich may act as they do because in their lives they are told or even forced.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 1
END

IF ~~ THEN BEGIN 115 // from:
  SAY #37791 /* ~Nalia... no offense, but you are not poor; your children will not starve. You empathize, but you may be blinded by the romance of saving the impoverished.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 116 // from: 8.0
  SAY #37792 /* ~Comely lasses of the village were taken for his personal harem, and he taxed heavily to pay for his pleasures. His guards kept order under threat of death.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 117 // from:
  SAY #37793 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from: 11.0
  SAY #37794 /* ~Kalos himself killed the baron, and holding Dana, his rage passed. Then he saw the richness of the manor, and thought of how unfairly and poorly he had lived.~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #37795 /* ~He took the golden chain of rank, placed it on his own head, and sent his young men out to collect his taxes, for was not he now the baron?~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 120 // from:
  SAY #37796 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from: 41.0
  SAY #37797 /* ~You have been warned, Edwin. Do not think to test my resolve; I will act for the best of the group.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 52
END

IF ~~ THEN BEGIN 122 // from: 55.0
  SAY #37798 /* ~Perhaps your smarm impresses the brazen strumpets at the Coronet, but you have to do better than that with this girl, beardy.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 39
END

IF ~~ THEN BEGIN 123 // from: 66.0
  SAY #37801 /* ~Look, an imaginary griffon beats an old nag any day, and... a friend like you beats any halfwit squire who would stoop so low as to help a halfling on her horse... You see?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 62
END

IF ~~ THEN BEGIN 124 // from: 76.0
  SAY #37804 /* ~Surely such a thing would not be allowed if I were following the wrong path? This shall be my rebirth... after I rest for a bit.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 31
END

IF ~~ THEN BEGIN 125 // from: 87.0
  SAY #37805 /* ~By Arvoreen, I swear that you shall go no further. Stand and fight, if you have the courage.~ */
  IF ~~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Attack(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 126 // from: 95.0
  SAY #37812 /* ~How can someone who's so clever be so shortsighted?~ */
  IF ~~ THEN EXTERN ~BJAN~ 78
END

IF ~~ THEN BEGIN 127 // from:
  SAY #98853 /* ~Sadly, no. ~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 60
END

IF ~~ THEN BEGIN 128 // from:
  SAY #98855 /* ~You might think so. But the gods are fickle...~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 61
END

IF ~~ THEN BEGIN 129 // from:
  SAY #98857 /* ~I dream of such a day.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from:
  SAY #99695 /* ~I am no paladin, as you well know.~ */
  IF ~~ THEN EXTERN ~BDORN~ 60
END

IF ~~ THEN BEGIN 131 // from:
  SAY #99697 /* ~I doubt that.~ */
  IF ~~ THEN EXTERN ~BDORN~ 61
END

IF ~~ THEN BEGIN 132 // from:
  SAY #99699 /* ~I think it takes more than words to wound you.~ */
  IF ~~ THEN EXTERN ~BDORN~ 62
END

IF ~~ THEN BEGIN 133 // from:
  SAY #99701 /* ~What do you want with me, half-orc?~ */
  IF ~~ THEN EXTERN ~BDORN~ 63
END

IF ~~ THEN BEGIN 134 // from:
  SAY #99703 /* ~You have nothing I want.~ */
  IF ~~ THEN EXTERN ~BDORN~ 64
END

IF ~~ THEN BEGIN 135 // from:
  SAY #99705 /* ~What is— You would tempt me to become a blackguard?~ */
  IF ~~ THEN EXTERN ~BDORN~ 65
END

IF ~~ THEN BEGIN 136 // from:
  SAY #99707 /* ~Other souls to corrupt, you mean.~ */
  IF ~~ THEN EXTERN ~BDORN~ 66
END

IF ~~ THEN BEGIN 137 // from:
  SAY #99709 /* ~I'll deny you, you and your patron both. You insult my honor!~ */
  IF ~~ THEN EXTERN ~BDORN~ 67
END

IF ~~ THEN BEGIN 138 // from:
  SAY #99711 /* ~Go back to the Hell whence you came, beast! I want nothing to do with you!~ */
  IF ~~ THEN EXTERN ~BDORN~ 68
END

IF WEIGHT #4 ~  IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_mazzy","GLOBAL",0)
~ THEN BEGIN 139 // from:
  SAY #99256 /* ~I've held my tongue long enough—for too long, if the truth be known.~ */
  IF ~~ THEN REPLY #99257 /* ~Mazzy? Is everything all right?~ */ DO ~SetGlobal("OHH_mazzy","GLOBAL",1)
~ GOTO 142
  IF ~~ THEN REPLY #99258 /* ~Well, hold it no longer! What's the problem?~ */ DO ~SetGlobal("OHH_mazzy","GLOBAL",1)
~ GOTO 140
  IF ~~ THEN REPLY #99259 /* ~I can tell there'll be no holding it back now.~ */ DO ~SetGlobal("OHH_mazzy","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.1
  SAY #99260 /* ~The problem is the monster you've taken to your breast.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 90
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~BDORN~ 107
END

IF ~~ THEN BEGIN 141 // from: 139.2
  SAY #99261 /* ~You have invited a viper into our midst. It cannot stand!~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 90
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~BDORN~ 107
END

IF ~~ THEN BEGIN 142 // from: 139.0
  SAY #99262 /* ~Nothing is right! Nothing can be right while we count this vile creature among our number.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 90
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~BDORN~ 107
END

IF ~~ THEN BEGIN 143 // from:
  SAY #99264 /* ~Many. But all are dwarfed by my issues with the vampire.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 90
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BKORGAN~ 161
END

IF ~~ THEN BEGIN 144 // from:
  SAY #99267 /* ~You are a creature of darkness. You should not be allowed to walk the earth, much less walk it at <CHARNAME>'s and my side.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 91
END

IF ~~ THEN BEGIN 145 // from:
  SAY #99269 /* ~Your smooth tongue may have won over the others, Hexxat. But I see clearly.~ */
  IF ~~ THEN REPLY #99270 /* ~I'm not sure you do.~ */ GOTO 150
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #99271 /* ~Peace, Mazzy. We are friends here, are we not?~ */ GOTO 147
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY #99271 /* ~Peace, Mazzy. We are friends here, are we not?~ */ GOTO 148
  IF ~~ THEN REPLY #99272 /* ~If you see so clearly, then why do you not act?~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.3
  SAY #99273 /* ~For your sake, <CHARNAME>. But if you've no objection, I'll be happy to deal with this now.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 92
END

IF ~~ THEN BEGIN 147 // from: 152.0 150.0 145.1
  SAY #99275 /* ~This—THING—is no friend of mine. If you stand with her, then you will stand forever without me.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
SetGlobal("MazzyHappy","GLOBAL",1)
RevealAreaOnMap("AR2000")
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR2002",341,400,E)
~ EXTERN ~BHEXXAT~ 93
END

IF ~~ THEN BEGIN 148 // from: 150.1 145.2
  SAY #99276 /* ~You call this thing friend?~ */
  IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #99277 /* ~Then bid your friend farewell!~ */
  IF ~~ THEN DO ~SetGlobal("OHH_mazzyfight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 145.0
  SAY #99290 /* ~She's blinded you, <CHARNAME>—turned you down the path to darkness.~ */
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #99291 /* ~Hexxat is my friend.~ */ GOTO 147
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY #99291 /* ~Hexxat is my friend.~ */ GOTO 148
  IF ~~ THEN REPLY #99292 /* ~You're the blind one, Mazzy. Blind with hatred.~ */ GOTO 152
  IF ~~ THEN REPLY #99293 /* ~I was walking that path long before I encountered Hexxat.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.3
  SAY #99294 /* ~Then keep walking it—without me.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
SetGlobal("MazzyHappy","GLOBAL",1)
RevealAreaOnMap("AR2000")
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR2002",341,400,E)
~ EXTERN ~BHEXXAT~ 94
END

IF ~~ THEN BEGIN 152 // from: 150.2
  SAY #99295 /* ~I see clearly—would that you could say the same.~ */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 153 // from:
  SAY #88753 /* ~I would be no halfling if I didn't like cakes of all sorts. Bake me a seed cake, Anomen, and I swear I will be your stalwart sister-in-arms.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 177
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~BNALIA~ 72
END

IF WEIGHT #12 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("MAZZY")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_mazzy","GLOBAL",0)
~ THEN BEGIN 154 // from:
  SAY #88756 /* ~What code do you live by, Neera?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_mazzy","GLOBAL",1)
~ EXTERN ~BNEERA~ 121
END

IF ~~ THEN BEGIN 155 // from:
  SAY #88758 /* ~That's not what I meant. I wanted to know about your ethical code—the set of beliefs that guides your actions.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 122
END

IF ~~ THEN BEGIN 156 // from:
  SAY #88760 /* ~Then what principles guide you when you're making a hard decision?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 123
END

IF ~~ THEN BEGIN 157 // from:
  SAY #88762 /* ~But how do you determine what is best?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 124
END

IF ~~ THEN BEGIN 158 // from:
  SAY #88764 /* ~I care because if I were you, I would find that unsatisfying. My conscience would not be clear.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 125
END

IF ~~ THEN BEGIN 159 // from:
  SAY #88766 /* ~Some things should be difficult to figure out.~ */
  IF ~~ THEN EXIT
END
