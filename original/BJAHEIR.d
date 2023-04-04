// creator  : weidu (version 24900)
// argument : BJAHEIR.DLG
// game     : .
// source   : ./override/BJAHEIR.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BJAHEIR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2096 /* ~*groan* Cut your wit, bard. The day has been long already without adding hours to it.~ [JAHEIR59] */
  IF ~~ THEN EXTERN ~BHAERDA~ 29
END

IF ~~ THEN BEGIN 1 // from:
  SAY #2133 /* ~Aye, it seems I've sharpened it upon the grindstone of your heart.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 30
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2135 /* ~"Methinks thou dost protest too much." Aye, I can quote the poets too. If you must protest, I respond only to hunger strikes and, even then, too late.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 31
END

IF WEIGHT #40 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
HPLT("Aerie",10)
Global("JaheiraAerie","LOCALS",0)
Global("AerieBelow10","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #2941 /* ~You musn't let yourself get so wounded, Aerie. I won't always be around to bandage you, you know.~ [JAHEIR44] */
  IF ~~ THEN DO ~SetGlobal("JaheiraAerie","LOCALS",1)
SetGlobal("AerieBelow10","LOCALS",1)
~ EXTERN ~BAERIE~ 52
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2943 /* ~And what good are your spells now? You should be more frugal and not cast them all at once.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 53
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2945 /* ~And don't stutter; it doesn't become you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #2947 /* ~Don't be a fool, it does nothing of the sort.~ [JAHEIR61] */
  IF ~~ THEN EXTERN ~BAERIE~ 55
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2949 /* ~Put your silly romantic notions aside, Aerie. This isn't some childish fantasy, nor some grand adventure. Any one of us could die out here at any moment.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 56
END

IF ~~ THEN BEGIN 8 // from:
  SAY #2951 /* ~Sometimes they don't come back! Sometimes some people, no matter how much you love them and no matter what you try to do, get... they get taken away. ~ */
  IF ~~ THEN GOTO 454
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2491 /* ~Nature's servant makes no judgment on the woodlands. Your tone betrays you, Korgan. ~ [JAHEIR65] */
  IF ~~ THEN EXTERN ~BKORGAN~ 26
END

IF WEIGHT #49 /* Triggers after states #: 29 31 38 40 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
Global("JaheiraPokesEdwin","LOCALS",0)
~ THEN BEGIN 10 // from:
  SAY #7280 /* ~What is the matter, Edwin? You look as though you chafe within your very skin. Oh, wait. That is because you ARE chafing within your very skin. Hm! How thoughtless of me to remind you.~ [JAHEIR51] */
  IF ~~ THEN DO ~IncrementGlobal("JaheiraPokesEdwin","LOCALS",1)
~ EXTERN ~BEDWIN~ 92
END

IF ~~ THEN BEGIN 11 // from:
  SAY #7399 /* ~That I do, pretty, pretty Edwin. That I do.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #50 /* Triggers after states #: 29 31 38 40 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
Global("JaheiraPokesEdwin","LOCALS",1)
~ THEN BEGIN 12 // from:
  SAY #7400 /* ~There is harmony in nature, and all things are balanced in the end. Perhaps, Edwin, you are now as you should be.~ [JAHEIR52] */
  IF ~~ THEN DO ~SetGlobal("JaheiraPokesEdwin","LOCALS",2)
~ EXTERN ~BEDWIN~ 93
END

IF ~~ THEN BEGIN 13 // from:
  SAY #7402 /* ~Perhaps, though you never did strike me as particularly manly. Perhaps nature has just been slow in this regard. ~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 94
END

IF ~~ THEN BEGIN 14 // from:
  SAY #7534 /* ~Edwin, an oak staff can cave a skull from only inches away. And none would mourn your passing. ~ [JAHEIR67] */
  IF ~~ THEN EXTERN ~BEDWIN~ 30
END

IF ~~ THEN BEGIN 15 // from:
  SAY #7902 /* ~You adopt his cause but not his company? As you wish, but I will make certain the matter is given due attention in his absence.~ */
  IF ~~ THEN EXTERN ~CERND~ 78
END

IF ~~ THEN BEGIN 16 // from:
  SAY #7949 /* ~You would cast this man aside! I cannot allow this! As a servant of nature, I will not allow you to ignore the plight of this place!~ */
  IF ~~ THEN EXTERN ~CERND~ 22
END

IF ~~ THEN BEGIN 17 // from:
  SAY #7958 /* ~Not your concern?! You have been given due opportunity to show you are one with nature, and you have instead chosen to spurn her when she is in need!~ */
  IF ~~ THEN GOTO 424
END

IF ~~ THEN BEGIN 18 // from:
  SAY #7960 /* ~I have not your patience! <CHARNAME>, do you accept this duty or do you claim it is not your concern? Speak! And be warned that your life is in the balance!~ */
  IF ~~ THEN REPLY #7961 /* ~Very well, it seems I have little choice.~ */ EXTERN ~CERND~ 21
  IF ~~ THEN REPLY #7962 /* ~No, I do not believe your threats.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #7963 /* ~Nature is better off without your pathetic whining! Here you shall die!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ JOURNAL #54950 /* ~Animal trouble in Trademeet: Jaheira's betrayal

I refused Cernd's request to investigate the druids near Trademeet, and my party has split because of it. Jaheira wouldn't take "no" as an answer and ultimately attacked me. A pity.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #7965 /* ~Such insolence! How dare you let your duty to nature fall flat! I should...~ */
  IF ~~ THEN EXTERN ~CERND~ 27
END

IF ~~ THEN BEGIN 21 // from:
  SAY #8654 /* ~Two people in love, swine. A rain not likely to soak your parade of scabbed obscenity anytime soon.~ [JAHEIR58] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #8822 /* ~It is a path of conscience. Some druids choose a contemplative lifestyle, but I sought a more active role in the furthering of nature's cause. And you? Did you become a priest of Helm only for honor and glory?~ [JAHEIR62] */
  IF ~~ THEN EXTERN ~BANOMEN~ 58
END

IF ~~ THEN BEGIN 23 // from:
  SAY #8901 /* ~I see. What place you choose to make for yourself remains to be seen.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 59
END

IF WEIGHT #51 /* Triggers after states #: 29 31 38 40 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BJaheira4","LOCALS",0)
~ THEN BEGIN 24 // from:
  SAY #8688 /* ~Oh, omnipresent authority figure, what are your commands now?~ [JAHEIR53] */
  IF ~~ THEN DO ~SetGlobal("BJaheira4","LOCALS",1)
~ EXTERN ~BMAZZY~ 88
END

IF ~~ THEN BEGIN 25 // from:
  SAY #8699 /* ~Bitchy?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 91
END

IF ~~ THEN BEGIN 26 // from:
  SAY #9074 /* ~Worry not for the feelings of <CHARNAME>, small one, as <PRO_HESHE> and I go far back and have an understanding of sorts.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 92
END

IF ~~ THEN BEGIN 27 // from:
  SAY #11390 /* ~Less and less mysterious with every day of your scrutiny, Lord Keldorn. Had I my choice, I would rather none but me were here at all.~ [JAHEIR66] */
  IF ~~ THEN EXTERN ~BKELDOR~ 86
END

IF ~~ THEN BEGIN 28 // from:
  SAY #11396 /* ~I am Harper, Keldorn, I am discreet when I wish. I just find other methods to be... more effective. Now, may I suggest you keep your next thoughts to yourself?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 87
END

IF WEIGHT #41 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 even though they appear after this state */
~  InParty("Nalia")
See("Nalia")
HPLT("Nalia",10)
Global("JaheiraNalia","LOCALS",0)
~ THEN BEGIN 29 // from:
  SAY #20031 /* ~You are quite unused to the pain of battle, are you not? I can see it in your face.~ [JAHEIR45] */
  IF ~~ THEN DO ~SetGlobal("JaheiraNalia","LOCALS",1)
~ EXTERN ~BNALIA~ 41
END

IF ~~ THEN BEGIN 30 // from:
  SAY #20041 /* ~You will learn many harsh realities out here, but you will also learn to deal with them. Or you may die. One or the other. ~ */
  IF ~~ THEN EXTERN ~BNALIA~ 42
END

IF WEIGHT #42 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 even though they appear after this state */
~  See("Mazzy")
InParty("Mazzy")
HPLT(Myself,15)
Global("JaheiraMazzy","LOCALS",0)
Global("JaheiraBelow15","LOCALS",0)
~ THEN BEGIN 31 // from:
  SAY #20044 /* ~My injuries sting, but I think it is mostly my pride that hurts. But we did well enough in our last battle, did we not? I'll wager we may outlive the season if we are careful.~ [JAHEIR46] */
  IF ~~ THEN DO ~SetGlobal("JaheiraMazzy","LOCALS",1)
SetGlobal("JaheiraBelow15","LOCALS",1)
~ EXTERN ~BMAZZY~ 105
END

IF ~~ THEN BEGIN 32 // from:
  SAY #20050 /* ~You do not seem worried at this prospect.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 106
END

IF WEIGHT #53 /* Triggers after states #: 38 40 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 479 482 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("BJaheira7","LOCALS",0)
~ THEN BEGIN 33 // from:
  SAY #20053 /* ~You wear the scars of battle with pride, Anomen, like one who truly believes his cause.~ [JAHEIR54] */
  IF ~~ THEN DO ~SetGlobal("BJaheira7","LOCALS",1)
~ EXTERN ~BANOMEN~ 77
END

IF ~~ THEN BEGIN 34 // from:
  SAY #20063 /* ~Those that never question do not see the whole of the issue.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 78
END

IF ~~ THEN BEGIN 35 // from:
  SAY #20076 /* ~Your world is small, if focused. The more impressive picture is always larger than you can see.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #54 /* Triggers after states #: 38 40 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 479 482 even though they appear after this state */
~  AreaType(FOREST)
InParty("Edwin")
!Gender("Edwin",FEMALE)
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("BJaheira8","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #20080 /* ~Stand away from me, Edwin! It would be unfortunate if you were to disappear under a rock somewhere. Though that might be more akin to your natural state.~ [JAHEIR55] */
  IF ~~ THEN DO ~SetGlobal("BJaheira8","LOCALS",1)
~ EXTERN ~BEDWIN~ 65
END

IF ~~ THEN BEGIN 37 // from:
  SAY #20097 /* ~Perhaps, though I doubt you would find the trip back to the cities a peaceful one. ~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 66
END

IF WEIGHT #44 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
HPLT("Aerie",10)
Global("JaheiraAerie","LOCALS",1)
Global("AerieBelow10","LOCALS",0)
~ THEN BEGIN 38 // from:
  SAY #20102 /* ~I see you are hurt, child. I will carry what extra I can if it will lighten your load.~ [JAHEIR47] */
  IF ~~ THEN DO ~SetGlobal("JaheiraAerie","LOCALS",2)
SetGlobal("AerieBelow10","LOCALS",1)
~ EXTERN ~BAERIE~ 101
END

IF ~~ THEN BEGIN 39 // from:
  SAY #20106 /* ~I have more experience in battle, Aerie. Any wound I received might have killed you comparatively.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 102
END

IF WEIGHT #46 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
HPLT(Myself,15)
Global("JaheiraKeldorn","LOCALS",0)
Global("JaheiraBelow15","LOCALS",0)
~ THEN BEGIN 40 // from:
  SAY #20110 /* ~Mm. My injuries mount, and I will need treatment soon. But it is all worth it, for our battles have dispatched many ne'er-do-wells to the nether planes. No quarter ever given or deserved, right, Paladin Keldorn?~ [JAHEIR48] */
  IF ~~ THEN DO ~SetGlobal("JaheiraKeldorn","LOCALS",1)
SetGlobal("JaheiraBelow15","LOCALS",1)
~ EXTERN ~BKELDOR~ 112
END

IF ~~ THEN BEGIN 41 // from:
  SAY #20112 /* ~Not in the least, although I do entertain the thought that they might not all be irredeemable.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 113
END

IF ~~ THEN BEGIN 42 // from:
  SAY #20122 /* ~Not within battle, no, but I gather your black-and-white views extend well beyond that. There is gray as well.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 114
END

IF WEIGHT #55 /* Triggers after states #: 53 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 479 482 even though they appear after this state */
~  InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("BJaheira11","LOCALS",0)
~ THEN BEGIN 43 // from:
  SAY #20127 /* ~You seem restless, Cernd. Is there something I can do for you? It is my duty to see you comfortable.~ [JAHEIR56] */
  IF ~~ THEN DO ~SetGlobal("BJaheira11","LOCALS",1)
~ EXTERN ~BCERND~ 69
END

IF ~~ THEN BEGIN 44 // from:
  SAY #20195 /* ~As you would have it, though you still look out of sorts.~ */
  IF ~~ THEN EXTERN ~BCERND~ 70
END

IF ~~ THEN BEGIN 45 // from:
  SAY #20197 /* ~But you have served nature for years more than I. Have you not fought for her?~ */
  IF ~~ THEN EXTERN ~BCERND~ 71
END

IF ~~ THEN BEGIN 46 // from:
  SAY #20202 /* ~No, no, I find your wit a treat, especially when it is unleashed upon the hapless that did not see it laying in wait.~ [JAHEIR60] */
  IF ~~ THEN EXTERN ~BHAERDA~ 51
END

IF ~~ THEN BEGIN 47 // from:
  SAY #20212 /* ~Forgive me the curiosity, but you are quite alien to me. You are not of this place and do not fit into the natural order, at least not by design.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 52
END

IF ~~ THEN BEGIN 48 // from:
  SAY #20219 /* ~Not so much, but I am interested to see where your niche finds itself. I am wondering what you will balance, for all things have their counterpart.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 53
END

IF ~~ THEN BEGIN 49 // from:
  SAY #20221 /* ~Or perhaps you enjoy the discord of chaos because you have not found that niche yet. We shall see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #20222 /* ~A great many things are lost to you, I would think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #20224 /* ~What does it matter what I would think of you, if at all? You could scarcely care less.~ [JAHEIR57] */
  IF ~~ THEN DO ~SetGlobal("BJaheira12","LOCALS",1)
~ EXTERN ~BKORGAN~ 116
END

IF ~~ THEN BEGIN 52 // from:
  SAY #20227 /* ~Ahh, you have quite the way of inspiring comrades. Certainly such an act would let you sleep soundly at night. Your "friends" will... watch over you intently. ~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 117
END

IF WEIGHT #47 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Viconia")
See("Viconia")
AreaType(FOREST)
!StateCheck("Viconia",STATE_SLEEPING)
Global("BJaheira13","LOCALS",0)
~ THEN BEGIN 53 // from:
  SAY #20233 /* ~Avert your eyes, dark elf! I'll not have you taint the beauty of the wood with your poison gaze.~ [JAHEIR49] */
  IF ~~ THEN DO ~SetGlobal("BJaheira13","LOCALS",1)
~ EXTERN ~BVICONI~ 121
END

IF ~~ THEN BEGIN 54 // from:
  SAY #20237 /* ~I am not to be swayed by your words, creature. I know too much of you and your kind. ~ */
  IF ~~ THEN EXTERN ~BVICONI~ 119
END

IF ~~ THEN BEGIN 55 // from:
  SAY #20240 /* ~Lies. Such respect would grant me naught but a bigger tombstone, or a nameless grave in a slightly nicer tunnel.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 120
END

IF ~~ THEN BEGIN 56 // from:
  SAY #20242 /* ~Minsc, could you please maintain a little grace while in nature's presence? Sometimes I simply do not know how you came by your title of ranger.~ [JAHEIR68] */
  IF ~~ THEN EXTERN ~BMINSC~ 87
END

IF ~~ THEN BEGIN 57 // from:
  SAY #20244 /* ~But your duties are serious things, Minsc. Do you realize that?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 88
END

IF ~~ THEN BEGIN 58 // from:
  SAY #20248 /* ~Admirable, Minsc, but you use that word like you don't know what it means.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 89
END

IF ~~ THEN BEGIN 59 // from:
  SAY #20251 /* ~Good job, Minsc. You keep it up.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #56 /* Triggers after states #: 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 479 482 even though they appear after this state */
~  InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("BJaheira14","LOCALS",0)
~ THEN BEGIN 60 // from:
  SAY #20252 /* ~You scan the horizon as a hawk, Valygar. Though with such an unnatural threat in your past, I cannot say I blame you.~ [JAHEIR63] */
  IF ~~ THEN DO ~SetGlobal("BJaheira14","LOCALS",1)
~ EXTERN ~BVALYGA~ 9
END

IF ~~ THEN BEGIN 61 // from:
  SAY #20255 /* ~Magic takes many forms, and only some dare circumvent the cycle of death. It is a power that draws from all things and need not be feared for simply being.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 10
END

IF WEIGHT #57 /* Triggers after states #: 65 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 479 482 even though they appear after this state */
~  InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("BJaheira15","LOCALS",0)
GlobalGT("ShadowWork","GLOBAL",0)
~ THEN BEGIN 62 // from:
  SAY #20262 /* ~You need not turn your eyes to me each time I drop my head, Yoshimo. I am well and fine.~ [JAHEIR64] */
  IF ~~ THEN DO ~SetGlobal("BJaheira15","LOCALS",1)
~ EXTERN ~BYOSHIM~ 80
END

IF ~~ THEN BEGIN 63 // from:
  SAY #20266 /* ~I am sure, but I will keep my thoughts to myself in this case.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 81
END

IF ~~ THEN BEGIN 64 // from:
  SAY #20270 /* ~Er, yes, whatever you wish. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #48 /* Triggers after states #: 68 76 85 91 96 107 117 129 130 140 147 162 168 181 188 196 202 211 219 224 237 245 254 264 271 280 289 295 303 313 321 334 343 356 375 386 399 409 417 418 473 482 even though they appear after this state */
~  InParty("Jan")
See("Jan")
AreaType(FOREST)
!StateCheck("Jan",STATE_SLEEPING)
Global("BJaheira16","LOCALS",0)
~ THEN BEGIN 65 // from:
  SAY #20277 /* ~You look quite interested in the local flora, Jan. ~ [JAHEIR50] */
  IF ~~ THEN DO ~SetGlobal("BJaheira16","LOCALS",1)
~ EXTERN ~BJAN~ 109
END

IF ~~ THEN BEGIN 66 // from:
  SAY #20280 /* ~Jan.~ */
  IF ~~ THEN EXTERN ~BJAN~ 110
END

IF ~~ THEN BEGIN 67 // from:
  SAY #20287 /* ~Not now.~ */
  IF ~~ THEN EXTERN ~BJAN~ 111
END

IF WEIGHT #0 ~  Global("JaheiraMatch","GLOBAL",0)
Global("LoveTalk","LOCALS",8)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 68 // from:
  SAY #20307 /* ~I will not tolerate this waste of time. Let's get moving! We've much to do!~ [JAHEIR69] */
  IF ~~ THEN REPLY #20331 /* ~There's no need to yell, Jaheira.~ */ DO ~IncrementGlobal("LoveTalk","LOCALS",1)
~ GOTO 69
  IF ~~ THEN REPLY #20334 /* ~We will do what I see fit. Keep quiet.~ */ DO ~IncrementGlobal("LoveTalk","LOCALS",1)
~ GOTO 70
  IF ~~ THEN REPLY #20335 /* ~Where would you have us go, exactly?~ */ DO ~IncrementGlobal("LoveTalk","LOCALS",1)
~ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #20336 /* ~I will yell if I wish, and I will make damn sure our enemies hear me! We must hurry and find... we...~ */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #20337 /* ~I will not! If you do not care enough to hurry, then perhaps another should lead! Someone that will make sure our fallen are avenged! Someone who... who...~ */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 68.2
  SAY #20338 /* ~We must gather ourselves and what equipment we can for the war to come. We must be ready to avenge... and fight...~ */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0 70.0 69.0
  SAY #20339 /* ~I... I am sorry. I have been thinking too much of... of Khalid. I was in shock before, but...~ */
  IF ~~ THEN REPLY #20340 /* ~You can never think too much for those departed.~ */ GOTO 73
  IF ~~ THEN REPLY #20341 /* ~Yes, you have. Let it go; we have other things to worry about.~ */ GOTO 74
  IF ~~ THEN REPLY #20342 /* ~We will have revenge for all wrongs in time. ~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #20343 /* ~I... I agree, though I shall try not to be fixated on such things. All will be dealt with in time. I will see to it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #20344 /* ~I will not forget just like that. I will... bide my time. In the end, we will deal justice to those that deserve it. Patience is all it will take.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2
  SAY #20345 /* ~Yes, in time. I will try to maintain my composure through this. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("JaheiraMatch","GLOBAL",0)
Global("LoveTalk","LOCALS",6)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 76 // from:
  SAY #20346 /* ~Nnn... No!~ [JAHEIR70] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #20347 /* ~Nnn... No! NO! Wh... what?~ */
  IF ~~ THEN REPLY #20348 /* ~You must have had a nightmare. Relax, there is nothing wrong.~ */ GOTO 78
  IF ~~ THEN REPLY #20349 /* ~You crazy wench, I thought we were under attack for a moment there!~ */ GOTO 79
  IF ~~ THEN REPLY #20350 /* ~Restless dreams. I have them myself on occasion. ~ */ GOTO 80
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #20351 /* ~N-no, there is something very wrong. More and more I feel Khalid's absence. I... I thought myself stronger than this.~ */
  IF ~~ THEN REPLY #20354 /* ~So did I. Try not to disturb the rest of us.~ */ GOTO 81
  IF ~~ THEN REPLY #20355 /* ~There is no weakness in sorrow. ~ */ GOTO 82
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #20352 /* ~I... I was. I stood beside Khalid in a battle long since won, only this time, he did not survive. There was... nothing I could do.~ */
  IF ~~ THEN REPLY #20356 /* ~There still isn't, so shut up and let the rest of us sleep.~ */ GOTO 81
  IF ~~ THEN REPLY #20357 /* ~No, there is nothing any of us can do about the past.~ */ GOTO 83
END

IF ~~ THEN BEGIN 80 // from: 77.2
  SAY #20353 /* ~Do you? Yes, you have lost people close to you as well. It is awful, isn't it, to watch as people die again in your mind?~ */
  IF ~~ THEN REPLY #20358 /* ~It keeps the nights interesting. You get used to it.~ */ GOTO 81
  IF ~~ THEN REPLY #20359 /* ~Awful, yes, but it reminds you of what you've lost.~ */ GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 80.0 79.0 78.0
  SAY #20360 /* ~I will not bother you further with such talk. I see I will gather no sympathy here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 78.1
  SAY #20363 /* ~Only in depression. Yes, I remember those parables in Alaundo's prophecies as well. Be sorry for your loss, but be grateful for what you have.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from: 79.1
  SAY #20364 /* ~But we each shape our tomorrow. I remember from the prophecies of Alaundo they taught to children for a time. Wise words. Thanks for the reminder.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 80.1
  SAY #20368 /* ~And what you still have. Wise words. From Alaundo, are they not? Thank you for the reminder.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  Global("JaheiraMatch","GLOBAL",0)
Global("LoveTalk","LOCALS",4)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 85 // from:
  SAY #20369 /* ~Well, we have the whole of Amn around us. What course shall we take?~ [JAHEIR71] */
  IF ~~ THEN REPLY #20370 /* ~That sounds like a loaded question if I ever heard one.~ */ GOTO 86
  IF ~~ THEN REPLY #20372 /* ~Wherever the trail of gold leads us. I lost much in my capture, and I will not leave poor.~ */ GOTO 87
  IF ~~ THEN REPLY #20375 /* ~Are you asking for a geographical or moral answer?~ */ GOTO 88
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #20389 /* ~Perhaps. I have a greater duty to the balance of things and, no offense, you might be able to tip such balance. It is because of what you are.~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 87 // from: 85.1
  SAY #20390 /* ~Are your motives so selfish? I... I feel I have a greater duty to balance, and I must warn you against altering it. It is dangerous for you, being what you are.~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 85.2
  SAY #20391 /* ~Moral, most definitely. I must watch the overall balance of things, and you may figure largely in the tipping. It is because of... what you are.~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0 87.0 86.0
  SAY #20392 /* ~I was merely curious about how you are coming to terms with being a child of Bhaal? It is important for you to take the right path.~ */
  IF ~~ THEN REPLY #20393 /* ~Who will judge what path is right for me? ~ */ GOTO 90
  IF ~~ THEN REPLY #20394 /* ~I will take what path I wish.~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.1 89.0
  SAY #20395 /* ~Ultimately, you will, but others like me have to deal with the outcome. I am Harper; you know this. I should hate for us to end up on opposite sides of a coin.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("JaheiraMatch","GLOBAL",0)
Global("LoveTalk","LOCALS",2)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 91 // from:
  SAY #20397 /* ~This place is not a friendly one. Be wary of who you deal with.~ [JAHEIR72] */
  IF ~~ THEN REPLY #20398 /* ~I can deal with simple cutthroats and hooligans. There is no danger here.~ */ GOTO 92
  IF ~~ THEN REPLY #20399 /* ~Why, what would anyone here wish from me?~ */ GOTO 93
  IF ~~ THEN REPLY #20400 /* ~I enjoy matching wits with cretins like these. ~ */ GOTO 94
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #20401 /* ~Not just them. Others may try to take advantage. Few know of the children of Bhaal, but that could just make you all the more valuable.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #20402 /* ~Perhaps not here as such, but you are still a valuable commodity. There are those that know of the children of Bhaal, and they may desire... services from you.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 91.2
  SAY #20403 /* ~Indeed, but not all are as clueless as you might think. Perhaps not here, but there are those that know of the children of Bhaal. They may also know of you.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0 93.0 92.0
  SAY #20404 /* ~I do not wish to alarm, but always remember what you are, and that you may be tested from time to time. I feel it is my job to warn against such things.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",2)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 96 // from:
  SAY #20405 /* ~So! Where to now, fearless leader?~ [JAHEIR73] */
  IF ~~ THEN REPLY #20406 /* ~How the hell should I know? ~ */ GOTO 97
  IF ~~ THEN REPLY #20407 /* ~Hmm, I don't rightly know. I'm taking suggestions.~ */ GOTO 98
  IF ~~ THEN REPLY #20408 /* ~Perhaps an inn. I guess it doesn't really matter, does it? ~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY #20411 /* ~Don't snap at me, mister. I thought simply you might have a plan of sorts. Obviously, I was mistaken.~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 98 // from: 96.1
  SAY #20413 /* ~I would suggest you get moving and decide on a plan. And never again say something like "don't rightly know." You sound like you were dropped as a child.~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #20415 /* ~Or kicked.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 100 // from: 96.2
  SAY #20416 /* ~It doesn't? I hope you'll come up with something better than that. I will not be put in a position where survival depends on the toss of a coin.~ */
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 101 // from: 97.0
  SAY #20417 /* ~This is ridiculous.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 100.0
  SAY #20418 /* ~Not everyone's coins land on edge, you know.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 101.0 99.0
  SAY #20419 /* ~I'm... I'm sorry, <CHARNAME>. I do not wish to cause undue strain in our party. I am merely a bit stressed, and no doubt you are as well.~ */
  IF ~~ THEN REPLY #20420 /* ~Think nothing of it, Jaheira. It is understandable.~ */ GOTO 104
  IF ~~ THEN REPLY #20421 /* ~Perhaps, but I will try to be pleasant if you will.~ */ GOTO 105
  IF ~~ THEN REPLY #20422 /* ~Stow it, Jaheira. ~ */ GOTO 106
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #20423 /* ~Yes, but not acceptable. We are friends and should act as such. I... I apologize.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 105 // from: 103.1
  SAY #20424 /* ~Agreed, though we have all suffered much and the mood may change. I will try to be civil by your side. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 103.2
  SAY #20425 /* ~I see you are more inclined to keep our relationship adversarial. I can accommodate this if you really wish.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",8)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 107 // from:
  SAY #20426 /* ~Mmph... no... no... NO! Wha... what? What?~ [JAHEIR76] */
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #20427 /* ~Nnn... no... NO! Wh... wh... what?~ */
  IF ~~ THEN REPLY #20428 /* ~I heard you thrashing all night, Jaheira. Nightmares? Relax, there is nothing wrong.~ */ GOTO 109
  IF ~~ THEN REPLY #20429 /* ~Jaheira, you scared the hell out of me. I thought we were under attack. ~ */ GOTO 455
  IF ~~ THEN REPLY #20430 /* ~Your dreams proving a bit ugly? Mine are like that sometimes as well.~ */ GOTO 111
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #20431 /* ~No, there is something very wrong. I... I have been having nightmares, and when I wake, it is still there. Khalid... I thought I was stronger than this.~ */
  IF ~~ THEN REPLY #20432 /* ~He is gone, Jaheira. The sooner you accept it, the sooner you can get on with your life.~ */ GOTO 112
  IF ~~ THEN REPLY #20433 /* ~There is no weakness in honest sorrow, Jaheira.~ */ GOTO 113
END

IF ~~ THEN BEGIN 110 // from: 455.0
  SAY #20434 /* ~Khalid was there, and he died where he should have lived. I could do nothing.~ */
  IF ~~ THEN REPLY #20437 /* ~And you can still do nothing. Move on; he is not coming back.~ */ GOTO 112
  IF ~~ THEN REPLY #20439 /* ~None of us can affect the past, Jaheira. ~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 108.2
  SAY #20440 /* ~I suppose they would; you have lost people as well. How do you deal with... watching them in your mind over and over? I did not see Khalid's death, but I feel it.~ */
  IF ~~ THEN REPLY #20441 /* ~Bah, the dead are gone. You are probably feeling a bad bit of beef, or a half-cooked potato.~ */ GOTO 112
  IF ~~ THEN REPLY #20442 /* ~You feel terrible, but you still feel. It should not consume you.~ */ GOTO 115
END

IF ~~ THEN BEGIN 112 // from: 111.0 110.0 109.0
  SAY #20443 /* ~You are harsh and cruel, but it seems to serve you well. Perhaps that is the answer. I... I don't know. I will not bother you again with this.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from: 109.1
  SAY #20444 /* ~"Only in succumbing to depression over what cannot be changed." The writings of Alaundo? I learned likewise as a child. We have more in common than I thought.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #20445 /* ~"But we each shape our tomorrow in the light of it." I remember from the prophecies of Alaundo. Gorion taught you from the same book. He was wise in this.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 115 // from: 111.1
  SAY #20446 /* ~"Lest it consume your memories, and you are left with just the sadness." From Alaundo? Gorion taught you from the same book I learned from. He was wise in this.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 115.0 114.0 113.0
  SAY #20447 /* ~Yes, well, we should be going. I am fine now. Thank you. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",4)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 117 // from:
  SAY #20448 /* ~*sigh* It has been some time since I have been this far south. I recall seeing Gorion here some years ago. He was a bit out of place away from his books, but...~ [JAHEIR74] */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #20456 /* ~Hmm... seems I cannot help but speak of the dead lately. I did not wish to cause you any distress if I have.~ */
  IF ~~ THEN REPLY #20449 /* ~Not at all. Memories serve us well.~ */ GOTO 119
  IF ~~ THEN REPLY #20454 /* ~The dead are gone. The names of people I barely remember cause me no pain.~ */ GOTO 120
  IF ~~ THEN REPLY #20455 /* ~I do not remember Gorion with sadness, despite his end.~ */ GOTO 121
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #20458 /* ~They do at that. Do you... recall his tales? They could last for days, a snippet at a time here and there. He built a history, so you felt like you were there.~ */
  IF ~~ THEN REPLY #20462 /* ~Yes, and when it was over, you felt like it was yours.~ */ GOTO 122
  IF ~~ THEN REPLY #20463 /* ~They were my window, because we could not travel in safety.~ */ GOTO 125
END

IF ~~ THEN BEGIN 120 // from: 121.2 118.1
  SAY #20464 /* ~I... I see. That attitude will not make you popular among the living that do remember. The dead leave their tendrils behind, for good or bad.~ */
  IF ~~ THEN REPLY #20465 /* ~This I know all too well. ~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 121 // from: 118.2
  SAY #20466 /* ~That is good. He would not have wished his memory to cause pain. I like to think the same is true of Khalid.~ */
  IF ~~ THEN REPLY #20467 /* ~He was a fine man, despite his cautious nature. They both were.~ */ GOTO 127
  IF ~~ THEN REPLY #20468 /* ~I think you are right. It is a shame when the dead take the living with them. ~ */ GOTO 128
  IF ~~ THEN REPLY #20477 /* ~Again you bring him up? You should really move on to other things.~ */ GOTO 120
END

IF ~~ THEN BEGIN 122 // from: 119.0
  SAY #20470 /* ~Yes. His story became yours, and you took it with you. You are not of his blood, but there is much of him in you. ~ */
  IF ~~ THEN REPLY #20471 /* ~And much of Khalid's manner in you, despite your differences.~ */ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 128.0 127.0 125.0 122.0
  SAY #20472 /* ~True... true enough. You are wise to see as such.~ */
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #20473 /* ~Well... enough of this for now. Talk such as this can get maudlin if indulged too often. I have a... a good feeling from this though. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from: 119.1
  SAY #20474 /* ~Yes, he sheltered you carefully from those that would harm you. Khalid was the same way, always taking the cautious path. ~ */
  IF ~~ THEN REPLY #20475 /* ~Slow and steady lest mistakes be made. Good things come in time.~ */ GOTO 123
END

IF ~~ THEN BEGIN 126 // from:
  SAY #20476 /* ~Yes, and they are missed. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 127 // from: 121.0
  SAY #20478 /* ~Yes, though they took risks when necessary. Khalid lived well, and would not allow me to do otherwise. Gorion was all for danger if it would prove fruitful.~ */
  IF ~~ THEN REPLY #20479 /* ~Rules that are meant to be broken, and all that. To know when the boundaries should be pushed.~ */ GOTO 123
END

IF ~~ THEN BEGIN 128 // from: 121.1
  SAY #20480 /* ~Gorion said he carried much of those that had died. He wished I would not shoulder such a weight, but if I must, it should be in a sturdy pack and not loose in my arms.~ */
  IF ~~ THEN REPLY #20481 /* ~So it would be behind you, but still with you, and would not obscure your vision.~ */ GOTO 123
END

IF WEIGHT #7 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",6)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 129 // from:
  SAY #20482 /* ~Ehh! I think I still have a stitch in my leg from lying in that cold cell we were in. It is good to be up and moving.~ [JAHEIR75] */
  IF ~~ THEN REPLY #21026 /* ~I am sorry I could not release you earlier.~ */ GOTO 155
  IF ~~ THEN REPLY #21027 /* ~I've a few pains from that incident myself, though I'm not as certain of the cause.~ */ GOTO 156
  IF ~~ THEN REPLY #21028 /* ~And is there some reason I should have to suffer by hearing you whine about it?~ */ GOTO 159
END

IF WEIGHT #8 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",10)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 130 // from:
  SAY #20483 /* ~A copper for your thoughts. You are looking rather pensive today. Doubts about your current path, perhaps?~ [JAHEIR77] */
  IF ~~ THEN REPLY #20484 /* ~Perhaps, though I have little choice in changing where I am bound.~ */ GOTO 132
  IF ~~ THEN REPLY #20485 /* ~None at all. I was not thinking; I just thought I smelled something. Pretension, that's what it was.~ */ GOTO 131
  IF ~~ THEN REPLY #20486 /* ~I have no doubt in my course. Do you have so little faith in me?~ */ GOTO 136
END

IF ~~ THEN BEGIN 131 // from: 137.1 136.1 132.1 130.1
  SAY #20487 /* ~Well, I shall disturb you no further then. Walk on quietly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 130.0
  SAY #20488 /* ~Is that your feeling? I was taught we all had choice, but then the great cycle likely did not count on divine interference. You must feel pressures that I do not.~ */
  IF ~~ THEN REPLY #20489 /* ~On occasion. There are a great many things pulling me to one side or another.~ */ GOTO 456
  IF ~~ THEN REPLY #20496 /* ~Thank you for that grasp of the obvious. ~ */ GOTO 131
END

IF ~~ THEN BEGIN 133 // from: 456.0
  SAY #20490 /* ~But you are pulled from the start, with balance being the difficult path. It is the same with nature when civilization intrudes.~ */
  IF ~~ THEN REPLY #20494 /* ~And what has been the solution there?~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #20495 /* ~Solution?~ */
  IF ~~ THEN REPLY #20497 /* ~But there has to come a time when things must end, for better or worse.~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #20498 /* ~Aye, but who knows when such an end will come? We work for balance in case the final count is taken today. Live each day as the last, just in case it is.~ */
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 130.2
  SAY #20499 /* ~Nothing of the sort, but I am interested in how you fare against your own instincts. ~ */
  IF ~~ THEN REPLY #20500 /* ~Do you think my struggle different than any other person's? ~ */ GOTO 137
  IF ~~ THEN REPLY #20501 /* ~Ah, yes, how well do I struggle against the "monster" within? I do just fine, thank you. Now leave me be.~ */ GOTO 131
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #20502 /* ~Perhaps not, but the stakes seem higher. There is external interest from all sides. There must be pressure to do the "right" thing, whatever that means today.~ */
  IF ~~ THEN REPLY #20503 /* ~On occasion. There are a great many things pulling me to one side or another.~ */ GOTO 456
  IF ~~ THEN REPLY #20504 /* ~Usually, it's you doing the talking about this and that and what I should do. Your interest is downright unhealthy.~ */ GOTO 131
END

IF ~~ THEN BEGIN 138 // from: 135.0
  SAY #20505 /* ~"The present will pass by if you live in the past. Neither should you wait too long for the future to find you." Who said this? It was... Khalid.~ */
  IF ~~ THEN GOTO 457
END

IF ~~ THEN BEGIN 139 // from: 457.0
  SAY #20506 /* ~Now look, foolish things in my head. Still, these talks always make me feel... better. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",12)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 140 // from:
  SAY #20507 /* ~Mmmmph...~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #20508 /* ~Mmph... mmph... oh... Khal... oh... Khal— NOO! I...~ [JAHEIR78] */
  IF ~~ THEN REPLY #20509 /* ~Jaheira, you were having another nightmare. It's a wonder you get any sleep at all.~ */ GOTO 142
  IF ~~ THEN REPLY #20510 /* ~Will you cut that out?! It's a wonder the rest of us get any sleep at all!~ */ GOTO 146
  IF ~~ THEN REPLY #20511 /* ~What was the vision this time? I hope it has not worsened.~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.2 141.0
  SAY #20512 /* ~I... I am not so bad. This one was not so cruel as the others. Khalid was in the distance, but he would not come closer, and I could not see the way to him.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #20514 /* ~He walked with us, from a distance. He smiled that I was content. I guess... I guess I was.~ */
  IF ~~ THEN REPLY #20516 /* ~Well, to see you traveling with a group probably meant a lot to him. It meant you could carry on.~ */ GOTO 144
  IF ~~ THEN REPLY #20517 /* ~Then we can finally be rid of his specter then? I was getting tired of you constantly depressing me.~ */ GOTO 146
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #20518 /* ~It... it was not a group. Just... it was just you and I... and I think you are right. ~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #20521 /* ~Well... um... shall we be off? It is already late in the day. Plenty to do.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from: 143.1 141.1
  SAY #20522 /* ~This is quite cruel of you. So be it; I will not endeavor to speak to you of such things again. It is a waste of... of... Let's just get out of here.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #10 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",14)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 147 // from:
  SAY #20523 /* ~It is good to be back in Amn, even under these conditions. Still, I would have wished us even further south. I have not seen the land of Tethyr in quite some time.~ [JAHEIR79] */
  IF ~~ THEN REPLY #20599 /* ~We could go, if you wish. It would be an interesting trip.~ */ GOTO 148
  IF ~~ THEN REPLY #20600 /* ~We've not the time for sightseeing. Try to be quiet, Jaheira.~ */ GOTO 149
  IF ~~ THEN REPLY #20601 /* ~Why would you want to go there?~ */ GOTO 150
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #20602 /* ~It certainly would, though not how you'd expect. Tethyr is one of the few places where I would cause more stir than you. They are not fond of Harpers.~ */
  IF ~~ THEN REPLY #20603 /* ~I can understand that. I'm not fond of them myself. Present company excepted, of course.~ */ GOTO 151
  IF ~~ THEN REPLY #20604 /* ~Why would that be? I thought Harpers were well-liked everywhere.~ */ GOTO 152
END

IF ~~ THEN BEGIN 149 // from: 147.1
  SAY #20608 /* ~Yes, well, I did not say I was interested in the scenery. It was my home, once upon a time. If you cannot understand, I will not bother you with my musings again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 147.2
  SAY #20610 /* ~It was my home, though it was a long time ago. I trained as a druid in the Forest of Tethir. Before that... well, I am told it was a chaotic time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 151 // from: 148.0
  SAY #20611 /* ~Oh really? If you had such a problem with Harpers, why did you accept me into your party? Perhaps your answer doesn't even matter. I know your feelings.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 152 // from: 148.1
  SAY #20613 /* ~We like to think so, but it does not always work out that way. I believe it began a century ago, with what seems a curse in retrospect. ~ */
  IF ~~ THEN GOTO 458
END

IF ~~ THEN BEGIN 153 // from: 458.0
  SAY #20614 /* ~Only those that did the deed know, but Harpers were rumored to have aided in the deaths. None have been welcome in Tethyr since.~ */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.0
  SAY #20615 /* ~Tragic atrocities, the exile of the Harpers being the least of them. I wish it had a happy end, or a moral about balance, but I have yet to find one in it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from: 129.0
  SAY #21098 /* ~You did what you could, and that is enough. I appreciate it, but I also worry that you suffered worse.~ */
  IF ~~ THEN REPLY #21103 /* ~I am fine, but I've no desire to allow the same to happen again.~ */ GOTO 160
  IF ~~ THEN REPLY #21104 /* ~Thanks for the concern, but whatever damage done is over with.~ */ GOTO 160
END

IF ~~ THEN BEGIN 156 // from: 129.1
  SAY #21099 /* ~I am not surprised. Irenicus seemed to have a special interest in you. I imagine he will not be the last, and I cannot blame him. I have an interest as well.~ */
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY #21100 /* ~As a Harper, I mean. I wouldn't want you to think...~ */
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158 // from: 161.0 157.0
  SAY #21101 /* ~Um... Let's just get moving.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from: 129.2
  SAY #21102 /* ~Well, I'll try not to be a bother to you in the future. If it is silence you wish, you shall have it.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 155.1 155.0
  SAY #21105 /* ~The event is behind us, but I doubt it is truly over with. We will have to find Irenicus to really put the matter to rest. At least, that is my aim. ~ */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #21106 /* ~Ah, I didn't want to turn the topic sour with this. Small talk was my intent. Not very good at it, I'm afraid.~ */
  IF ~~ THEN GOTO 158
END

IF WEIGHT #11 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",16)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 162 // from:
  SAY #21107 /* ~Blast! Our progress is not as it could be, I am sure. Ah, perhaps it is just me. I grow tired of these pursuits. My life was not always such.~ [JAHEIR80] */
  IF ~~ THEN REPLY #21108 /* ~And what did it use to be like? I cannot picture you other than as you are.~ */ GOTO 163
  IF ~~ THEN REPLY #21109 /* ~You picked an odd profession if you really desire to settle down. ~ */ GOTO 165
  IF ~~ THEN REPLY #21110 /* ~And I should care for what reason, exactly? Save your musings for your memoirs.~ */ GOTO 169
  IF ~~ THEN REPLY #21111 /* ~Now is not really the time for this, Jaheira. Could we talk later?~ */ GOTO 170
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY #21112 /* ~Oh, I am certainly meant to be this way, but I once lived quite peacefully. Druids took me in very young, and you can only be calm when surrounded by balance.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 165.0 163.0
  SAY #21113 /* ~It was like that for a long time, but I always felt I should do more. Balance needed to be... encouraged. I wouldn't let it happen again.~ */
  IF ~~ THEN REPLY #21115 /* ~You would not allow what to happen again? ~ */ GOTO 166
  IF ~~ THEN REPLY #21116 /* ~What happened to make you think so? Certainly not the unbearable calm.~ */ GOTO 166
END

IF ~~ THEN BEGIN 165 // from: 162.1
  SAY #21114 /* ~True enough, but I was not always a Harper. I was raised among druids before I sought to serve with Those Who Harp. There was balance where I was.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 166 // from: 164.1 164.0
  SAY #21117 /* ~Oh, nothing. I'm just rambling on. Talking to a trusted friend helps ease the soul. I hope I do as much for you as well.~ */
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #21118 /* ~I mean... for the good of the party.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",18)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 168 // from:
  SAY #21119 /* ~I... This may be a bad time or not, but you asked a question of me, and I brushed it aside. I would speak of it now, if you still wish to hear.~ [JAHEIR81] */
  IF ~~ THEN REPLY #21122 /* ~I did not want to press if you wanted to remain silent. ~ */ GOTO 172
  IF ~~ THEN REPLY #21123 /* ~I am interested. Another time would be better, but if you cannot wait, speak.~ */ GOTO 173
  IF ~~ THEN REPLY #21124 /* ~I am no longer interested. Save it for another day and someone else's ears.~ */ GOTO 171
END

IF ~~ THEN BEGIN 169 // from: 162.2
  SAY #21120 /* ~Be assured I will not pester you again. Silence will be your companion. Enjoy her.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 170 // from: 162.3
  SAY #21121 /* ~I... if you wish. I had just thought... never mind. We shall continue as we are.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 171 // from: 168.2
  SAY #21125 /* ~If the moment is truly lost, so be it. I will not speak of this, or much else for that matter.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 168.0
  SAY #21126 /* ~I did, but I... it is not important enough to keep aside. I would rather such things be talked of openly. I know much of you, but you know little of me. ~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 173 // from: 168.1
  SAY #21127 /* ~It is not important, but I would rather speak than keep things aside. I... was thinking it best to... to be forthcoming. I know you well, but you know little of me.~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0 172.0
  SAY #21128 /* ~You asked what made me seek the Harpers or similar service. I was made aware of what had come before, and what still happened outside of the forests.~ */
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #21129 /* ~I came to the druids after my family died during a king's fall. No, I am not royalty, and neither do I grieve. I do not feel their loss in that way.~ */
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #21130 /* ~But I was angry that a life was taken from me, even though I still live. It had happened far from the grove, but I brought the conflict there in my manner.~ */
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #21131 /* ~I decided that the balance needed help beyond the forest, or it would eventually fail there as well. Simple reasoning, I suppose.~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #21132 /* ~I... I don't know why I didn't wish this known. Maybe I thought such a history was unimportant by the standards of others such as... well... such as yourself.~ */
  IF ~~ THEN REPLY #21133 /* ~It is your experience, and you have done much with it. I see nothing trite here.~ */ GOTO 179
  IF ~~ THEN REPLY #21134 /* ~You are more of a person when you have a history. Perhaps you think that a weakness, but I do not.~ */ GOTO 179
  IF ~~ THEN REPLY #21135 /* ~Do not diminish your beginnings. You have taken control much more effectively than I have.~ */ GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.2 178.1 178.0
  SAY #21136 /* ~I thank you for those words. I find myself drawing strength from you in our close quarters. It has been... a great help.~ */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #21137 /* ~I... I am sorry. We should continue on.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",20)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 181 // from:
  SAY #21138 /* ~We continue on our path, and I cannot help but wonder if we walk in balance. I have a role to follow...~ [JAHEIR82] */
  IF ~~ THEN REPLY #21139 /* ~I assume you speak of your role as a Harper?~ */ GOTO 183
  IF ~~ THEN REPLY #21140 /* ~Your role as druid? ~ */ GOTO 183
  IF ~~ THEN REPLY #21141 /* ~Then follow as you must, but in silence, please!~ */ GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.2
  SAY #21142 /* ~I... I thought we had come to a point where such talk was valuable to... Never mind, I shall not pursue what is obviously lost. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from: 181.1 181.0
  SAY #21143 /* ~As Harper and as druid. They are complimentary, despite bards being thought the Harper standard-bearers. Both seek balance over all. I... I think I have done so.~ */
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184 // from: 183.0
  SAY #21144 /* ~Sometimes the proper course is hard to see; what is best overall may seem barbaric at first. You will know this when... if you deal with Harpers in the future.~ */
  IF ~~ THEN REPLY #21145 /* ~If you have doubts, then why do you stay affiliated with them?~ */ GOTO 185
  IF ~~ THEN REPLY #21146 /* ~It sounds like you do not trust yourself. That is very unlike you.~ */ GOTO 185
  IF ~~ THEN REPLY #21147 /* ~An ominous turn of phrase. If you dread such a meeting, why not avoid it?~ */ GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 184.2 184.1 184.0
  SAY #21148 /* ~The goal is what matters despite a questionable method. Balance in politics, balance in nature, balance in one's self—all take strong measures to maintain.~ */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #21149 /* ~I think... I think I am the one out of balance, not you. I think... well, I think many things. I... I need more time to consider this. ~ */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0
  SAY #21150 /* ~I'm afraid you'll have to indulge my silence for a time longer. I... I apologize for interrupting you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",22)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 188 // from:
  SAY #21151 /* ~I... I worry sometimes...~ [JAHEIR83] */
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("AerieRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Aerie")
~ THEN GOTO 189
  IF ~  Global("ViconiaRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 567
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
Global("AerieRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BAERIE~ 446
END

IF ~~ THEN BEGIN 189 // from: 453.0 451.0 188.0
  SAY #21152 /* ~<CHARNAME>, do you worry about missing friends? About those missing or... lost? Of course you do, I don't know what prompted me to ask.~ */
  IF ~~ THEN REPLY #21153 /* ~I do not mind. Yes, I hope to spare them the pain of loss I have felt.~ */ GOTO 192
  IF ~~ THEN REPLY #21154 /* ~Those I spent time with as a child; their absence is a great loss to me.~ */ GOTO 192
  IF ~~ THEN REPLY #21155 /* ~Some were valuable to the group, and I hope to recoup that loss as soon as possible.~ */ GOTO 192
  IF ~~ THEN REPLY #21156 /* ~I don't know either, because it is none of your business. Keep your topics to the matter at hand.~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.3
  SAY #21157 /* ~I had thought old friends remained an important matter. If I assumed too much, I am sorry. You will hear no more from me on the subject.~ */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #21158 /* ~Or any other, for that matter.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 192 // from: 189.2 189.1 189.0
  SAY #21159 /* ~I'm not sure why I brought it up. I just needed to know that... the living and dead are still in mind. They grow distant, but vengeance must still come.~ */
  IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY #21160 /* ~I am becoming used to the aftermath of death, but I will not forget what must be avenged. There must be closure. I must do this even as I... as we... move on.~ */
  IF ~~ THEN REPLY #21162 /* ~I know this better than any other. Old wrongs will not be forgotten.~ */ GOTO 194
  IF ~~ THEN REPLY #21163 /* ~Every death will be repaid tenfold.~ */ GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 193.1 193.0
  SAY #21161 /* ~That is good to know. Those passed beyond will be glad that we do not carry them as a burden, but that we do seek justice in their names.~ */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from: 194.0
  SAY #21164 /* ~I... I don't brood all the time; I was just thinking of the past and what is to come. I'm trying to balance... Well, enough whining for today. Let's move on.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",24)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 196 // from:
  SAY #21165 /* ~Ah, I do wish these scars would heal. I've a life to continue, and I do not need to be picking at old wounds.~ [JAHEIR84] */
  IF ~~ THEN REPLY #8894 /* ~They give character in the end. They define where we have been.~ */ GOTO 197
  IF ~~ THEN REPLY #8896 /* ~Nor I. There is little alternative to time, though.~ */ GOTO 199
  IF ~~ THEN REPLY #8897 /* ~I would not have thought you so weak. What are a few marks here and there?~ */ GOTO 201
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #8898 /* ~True enough, but I think I was speaking of emotional markings. ~ */
  IF ~~ THEN REPLY #8900 /* ~Perhaps I was as well.~ */ GOTO 198
  IF ~~ THEN REPLY #8908 /* ~I have heard enough of such things. Let us quit the whining.~ */ GOTO 201
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #8909 /* ~Ah, I see. They are one in the same in the long run. I imagine they will both heal in time, given favorable conditions to do so. I think we will both be fine.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 199 // from: 196.1
  SAY #8910 /* ~True enough, though I do not have to enjoy it.~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #8911 /* ~Ah, I am not fooling anyone. The leftovers of hardships that I should not be dwelling on. You speak a lot of sense when you wish to, <CHARNAME>. I thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 201 // from: 197.1 196.2
  SAY #8927 /* ~Then you will not have to hear my words again. I am glad I knew your feelings before I wasted more on you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",26)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 202 // from:
  SAY #8928 /* ~Hm... This is a dangerous life we seem to lead, it does seem. I wonder... if you always think it will be so?~ [JAHEIR85] */
  IF ~~ THEN REPLY #8929 /* ~I don't know. I can't envision settling down.~ */ DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",1)
~ GOTO 203
  IF ~~ THEN REPLY #8930 /* ~I hope so. I enjoy the battles and the dangers.~ */ DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",1)
~ GOTO 205
  IF ~~ THEN REPLY #8931 /* ~I do not think of the future much.~ */ DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",1)
~ GOTO 206
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #8932 /* ~Nor can I, but the inevitable must happen. Bones grow weary and battle becomes foolhardy. Oh, I would not wish it anytime soon, but someday.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204 // from: 206.0 205.0 203.0
  SAY #9081 /* ~Have you... given any thought to this? ~ */
  IF ~~ THEN REPLY #15132 /* ~Apparently not as much as you. Cut out the chatter, will you?~ */ GOTO 210
  IF ~~ THEN REPLY #15133 /* ~I can affect my immediate future, but there are other factors in the long term.~ */ GOTO 207
  IF ~~ THEN REPLY #24922 /* ~I would take a more active hand in this, but I am not the only one involved.~ */ GOTO 207
END

IF ~~ THEN BEGIN 205 // from: 202.1
  SAY #9084 /* ~Eventually they will become a foolhardy exercise. Bones will grow weary in time. I know it will happen, and when that time comes, there will be little choice.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 206 // from: 202.2
  SAY #9624 /* ~Not at all? There must be some planning in place eventually. What happens when age begins to take you? Even I know it will happen eventually.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 207 // from: 204.2 204.1
  SAY #24923 /* ~Yes, I suppose your heritage adds a complicating factor. You have a birthright, of a sort. I wonder what you intend to do with it when age grants you wisdom.~ */
  IF ~~ THEN REPLY #24924 /* ~I will have all that is my due. There is power here, and in time it will be mine.~ */ GOTO 208
  IF ~~ THEN REPLY #24925 /* ~In time, I will come to terms with it. I intend to live a long, normal life.~ */ GOTO 209
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #24926 /* ~That is a dangerous attitude. I hope age will temper it, given time. I really hope it does.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #24927 /* ~A fine aspiration, if not the king's choice. I know very few kings that live in peace. Equally few inspire true loyalty in followers, or their... companions.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 210 // from: 204.0
  SAY #25057 /* ~If that is what you wish, I shall cut a large measure of it. Excuse my interruption.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #17 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",28)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 211 // from:
  SAY #25058 /* ~So, what do you think of Amn so far? It is certainly not without its charms, or its hardships lately. ~ [JAHEIR92] */
  IF ~~ THEN REPLY #25063 /* ~There does not seem to be a healthy balance between the two. ~ */ GOTO 212
  IF ~~ THEN REPLY #25068 /* ~A stagnant pond of humanity and demihumans. I don't know how you lived here.~ */ GOTO 213
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #25081 /* ~Perhaps not. It has always been so, but there are many things of merit here. Perhaps not in the cities, but the forests are a great treasure.~ */
  IF ~~ THEN REPLY #25085 /* ~Bury it all as treasure then. I tire of your musings.~ */ GOTO 216
  IF ~~ THEN REPLY #25527 /* ~I would agree, though a more relaxed tour through would help my outlook.~ */ GOTO 214
END

IF ~~ THEN BEGIN 213 // from: 211.1
  SAY #25084 /* ~There is as much beauty as you are willing to see. The forests are grand, and the cities are tolerable in moderation. How much are you willing to see?~ */
  IF ~~ THEN REPLY #26467 /* ~I see what is there. Beauty is irrelevant. ~ */ GOTO 216
  IF ~~ THEN REPLY #26468 /* ~I try to see the best in everything. It is difficult sometimes.~ */ GOTO 214
END

IF ~~ THEN BEGIN 214 // from: 213.1 212.1
  SAY #26463 /* ~Then I will show you when we have the time. I will take you through the deepest lands, and you will see the beauty that I know is there. ~ */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 214.0
  SAY #26464 /* ~That is, if you have not tired of my company yet. ~ */
  IF ~~ THEN REPLY #26469 /* ~No, just the chatter.~ */ GOTO 216
  IF ~~ THEN REPLY #26470 /* ~Tire? I grow quite fond of your company. I would miss it were it gone.~ */ GOTO 217
END

IF ~~ THEN BEGIN 216 // from: 215.0 213.0 212.0
  SAY #26466 /* ~I will not trouble you with such "trivial" things as my thoughts again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 217 // from: 215.1
  SAY #26472 /* ~W... well. I would... I would miss your company too, <CHARNAME>. ~ */
  IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #26473 /* ~*cough* Well, we should be moving on again. Enough of this idle musing.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",30)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 219 // from:
  SAY #26471 /* ~We have had many people seek our deaths so far. Some would have been friends had things been different. This weighs on my mind.~ [JAHEIR93] */
  IF ~~ THEN REPLY #26756 /* ~I had hoped this would end better, but their treachery has soured me.~ */ GOTO 220
  IF ~~ THEN REPLY #26757 /* ~As it does on mine. More so that you are in conflict with your own kind.~ */ GOTO 222
  IF ~~ THEN REPLY #26758 /* ~There is little we can do to alter the past. The best must be made of it.~ */ GOTO 222
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #26760 /* ~They acted out of fear. Guarding the balance is very important. Galvarey may have been in the wrong, but those that followed him believed they did right.~ */
  IF ~~ THEN REPLY #26761 /* ~Then they are fools, as are you to stand by them.~ */ GOTO 221
  IF ~~ THEN REPLY #26762 /* ~I can only act as I will. What else can I do if they are not willing to listen?~ */ GOTO 222
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #26763 /* ~Perhaps I was more of a fool than even I thought. I will not trouble you again with such talk.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 222 // from: 220.1 219.2 219.1
  SAY #26764 /* ~I do not know what to suggest. I... I would follow you, because I know you will ultimately do good, but they are my kin. I don't know what to do.~ */
  IF ~~ THEN REPLY #26765 /* ~You can only do as you must, whatever that might be.~ */ GOTO 223
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #26766 /* ~As all good advice, that was absolutely no help at all. Come, let's get going.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",32)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 224 // from:
  SAY #26767 /* ~Again I must say how much I prefer the forest to artificial structures. Everything I see simply reinforces that to no end.~ [JAHEIR94] */
  IF ~~ THEN REPLY #26769 /* ~Yes, you are quite fond of saying that. I had not thought druids so pushy.~ */ GOTO 225
  IF ~~ THEN REPLY #26770 /* ~There is order in the city, to a degree. It is not easy to see that in nature.~ */ GOTO 226
  IF ~~ THEN REPLY #26771 /* ~I agree to an extent, though there is merit in some cities as cultural centers.~ */ GOTO 227
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #26774 /* ~It gives me comfort, something we could use more of. I will "push" no further in your direction, rest assured. Hmmph!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 226 // from: 224.1
  SAY #26775 /* ~Ah, but only if you choose not to look. Nature falls into balance, whereas man must work for his. I just prefer the simpler... the simpler roles in nature.~ */
  IF ~~ THEN REPLY #26776 /* ~Your role is as harsh as you make it, though yours is difficult because of me.~ */ GOTO 228
  IF ~~ THEN REPLY #26777 /* ~If you cannot function in society, then perhaps you should retreat and hide.~ */ GOTO 229
END

IF ~~ THEN BEGIN 227 // from: 224.2
  SAY #26778 /* ~Yes, but must the gathering be done with such fervor? When people assemble, they attract those that want to lead. Why do they not just accept their proper place?~ */
  IF ~~ THEN REPLY #26780 /* ~But one's place is not always apparent. Who decides on a person's proper place? ~ */ GOTO 459
  IF ~~ THEN REPLY #26781 /* ~Usually you speak foolish garbage, but this time your words ring true. My proper place is the god of murder, and your place is to serve as my slave!~ */ GOTO 232
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #26782 /* ~No, I find comfort because of you. Others cannot see what I do, and it is their intolerance that makes it difficult.~ */
  IF ~~ THEN REPLY #26786 /* ~And what is it you see in me?~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 226.1
  SAY #26785 /* ~Are you intentionally being adversarial? I will not have it. I was trying to confide. Not again; this is difficult as it is. I will trouble you no more.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 230 // from: 228.0
  SAY #26787 /* ~I see... I see a confidant. I see someone undeserving of the scorn of the ignorant. I see... I...~ */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #26788 /* ~Now I am babbling like a brook. We should not dawdle like this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from: 227.1
  SAY #26789 /* ~You straddle a line between confidence and megalomania. These discussions disturb me when they turn like this. I will not bring it up again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 233 // from: 459.0
  SAY #26790 /* ~You are not a slave to your parentage though, and... I guess I am no Harper.~ */
  IF ~~ THEN REPLY #26791 /* ~If they were in the wrong, then you have betrayed nothing.~ */ GOTO 235
  IF ~~ THEN REPLY #26792 /* ~They did not impress me with their behavior. You are better off as a traitor.~ */ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.1
  SAY #26793 /* ~Is that what you think I am? A traitor? I don't know if I can stomach this. I... I don't want to talk to you of this anymore.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 235 // from: 233.0
  SAY #26794 /* ~I guess that is true. That fool Galvarey sought to do an injustice. He betrayed the spirit of the Harpers, not me. This knowledge will ease my mind. ~ */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #26795 /* ~Thank you, <CHARNAME>. You are a great comfort.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",34)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 237 // from:
  SAY #26796 /* ~I have been in a similar place as this before, though it was in the company of other Harpers. I will miss those times. ~ [JAHEIR95] */
  IF ~~ THEN REPLY #26797 /* ~You would miss them anyway. Think of them fondly and move on.~ */ DO ~SetGlobal("RevianeSpawn","LOCALS",1)
SetGlobalTimer("RevianeAppear","GLOBAL",1)
~ GOTO 238
  IF ~~ THEN REPLY #26798 /* ~There must be a way to reconcile this matter. ~ */ DO ~SetGlobal("RevianeSpawn","LOCALS",1)
SetGlobalTimer("RevianeAppear","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #26800 /* ~That is a hard season to let pass. Fall and winter are bearable because spring will certainly follow. There is no guarantee that I can emerge from my winter.~ */
  IF ~~ THEN REPLY #26801 /* ~Then hold your true friends close for warmth. I will not be quick to leave you.~ */ GOTO 241
  IF ~~ THEN REPLY #26802 /* ~Then wallow in pity. And be sure to keep the rest of us updated about it.~ */ GOTO 240
END

IF ~~ THEN BEGIN 239 // from: 237.1
  SAY #26803 /* ~I doubt that it will be that easy. Galvarey was as close to a regional leader as the Harpers have. The events will be told from his favor, I am sure. ~ */
  IF ~~ THEN REPLY #26804 /* ~Then there is no need to fret about it. We know the worst and can prepare.~ */ GOTO 244
  IF ~~ THEN REPLY #26805 /* ~I will kill the next group as well if I have to. They will learn to respect me.~ */ GOTO 243
END

IF ~~ THEN BEGIN 240 // from: 238.1
  SAY #26806 /* ~It would seem that the coldest thing in sight is you. I will seek spring in not talking to you.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 244.0 238.0
  SAY #26807 /* ~No better comfort could I ask, <CHARNAME>. I will continue to stand for you if you do the same for me. Together we can... togeth...~ */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #26808 /* ~I'm sorry, I'm a bit out of sorts. Let's continue this another time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 243 // from: 239.1
  SAY #26809 /* ~Behavior like that will only serve to prove what they claim. Perhaps it does not need proving. This disturbs me. I will not speak of this again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 244 // from: 239.0
  SAY #26810 /* ~Yes, I suppose there is some peace in this. There is little that could happen to make this worse. That "WE" will prepare is also pleasing to me.~ */
  IF ~~ THEN GOTO 241
END

IF WEIGHT #21 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",36)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 245 // from:
  SAY #26811 /* ~Skies are a bit gray no matter where we go, aren't they? Or perhaps it's just my mood. Yes, that must be it. No wonder, I suppose. I cannot help but think of Reviane.~ [JAHEIR97] */
  IF ~~ THEN REPLY #26812 /* ~Her actions were in the wrong, no matter her intention. ~ */ GOTO 247
  IF ~~ THEN REPLY #26813 /* ~We did no wrong. How were we supposed to have reacted?~ */ GOTO 248
  IF ~~ THEN REPLY #26814 /* ~We should think of them all. Perhaps we should do a preemptive strike?~ */ GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.2
  SAY #26815 /* ~There are times when you seem almost reasonable, and then you say such things that only make me doubt myself. Perhaps... perhaps they were right? I don't know.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 247 // from: 245.0
  SAY #26816 /* ~I... No, I don't hope she was wrong. I wish she were right, because that would be simple, and I wouldn't have to worry about how I... feel. I have doubts...~ */
  IF ~~ THEN GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 247.0 245.1
  SAY #26820 /* ~I don't know. I begin to wish we had been wrong. It would be so much simpler. I want to believe as they do, and I wish I didn't feel like I...~ */
  IF ~~ THEN REPLY #26817 /* ~Jaheira, if we are to avoid such conflicts, I must know how to avoid them.~ */ GOTO 249
  IF ~~ THEN REPLY #26818 /* ~How is it you feel, Jaheira? What is it you are saying?~ */ GOTO 251
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #26819 /* ~Avoid them? The Harpers? What are you asking of me? ~ */
  IF ~~ THEN REPLY #26821 /* ~I must know how to evade the Harpers. Who better to show me how?~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #26822 /* ~You would ask me to further my betrayal by revealing Harper secrets? I... I cannot do this! What if you... I mean... there is still the chance that you...~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 251 // from: 248.1
  SAY #26823 /* ~I don't know. I want to stay with you, but we will need to avoid my former kin. I will have to tell you about them. What if you betray... what if you turn...~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252 // from: 251.0 250.0
  SAY #26824 /* ~I am sorry, <CHARNAME>, I didn't mean to suggest anything.~ */
  IF ~~ THEN REPLY #26825 /* ~If you do not trust me, then you should do me the courtesy of saying so.~ */ GOTO 253
  IF ~~ THEN REPLY #26826 /* ~I understand just fine. You think as they do, despite what you know.~ */ GOTO 253
END

IF ~~ THEN BEGIN 253 // from: 252.1 252.0
  SAY #26827 /* ~No! I just... this is so damn difficult to get straight. We should... we should speak of this later. Things will be said in anger... Let's move on.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",38)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 254 // from:
  SAY #26828 /* ~This may be a bad time or not, but I think we should speak.~ [JAHEIR98] */
  IF ~~ THEN REPLY #26829 /* ~This is a very bad time. Could this wait?~ */ GOTO 255
  IF ~~ THEN REPLY #26830 /* ~Very well. ~ */ GOTO 257
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #26831 /* ~No, this cannot wait. I don't think I can resolve this if it is not discussed. If this is put off... then all I am thinking must be put off.~ */
  IF ~~ THEN REPLY #26832 /* ~I am sorry. I do not wish to speak with you now.~ */ GOTO 256
  IF ~~ THEN REPLY #26833 /* ~Fine. Speak.~ */ GOTO 257
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #26834 /* ~Fine, get used to it.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.1 254.1
  SAY #26835 /* ~Yes, well, I wished to apologize for our argument before. I wanted... I wanted you to know why I cannot speak of the Harpers. There is much harm I could do.~ */
  IF ~~ THEN REPLY #26836 /* ~This is not a question of harm; it is a question of trust.~ */ GOTO 258
  IF ~~ THEN REPLY #26837 /* ~Yes, well, keep your little secrets, and I'll keep mine, and we'll both be just fine.~ */ GOTO 260
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY #26838 /* ~And I do trust you, but I do not trust myself. I am no traitor, of that I am sure, but what am I if I must hide from my brethren? What am I then? ~ */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 260.0 258.0
  SAY #26839 /* ~If I am in the right, why must I tell their secrets? If I am in the right, why must I hide? I do not have answers for these questions, and they worry me.~ */
  IF ~~ THEN REPLY #26841 /* ~That you are worried shows you care about all those involved.~ */ GOTO 262
  IF ~~ THEN REPLY #26842 /* ~The choice is simple in my mind. Defend yourself or die. Kill or be killed.~ */ GOTO 261
END

IF ~~ THEN BEGIN 260 // from: 257.1
  SAY #26840 /* ~There is no need for that tone, I feel bad as it is. You have gained an enemy, but I have lost a family. I have doubts now, and I am not used to it.~ */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 261 // from: 262.0 259.1
  SAY #26843 /* ~I begin to think that most things are simple to you. You have helped nothing with this comment. I... I do not wish to continue this. Let's just go. Quietly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 262 // from: 259.0
  SAY #26844 /* ~Yes, but can I? There is no middle ground. I am heading for an extreme of either end. With you, at least the choice is mine. It is, isn't it?~ */
  IF ~~ THEN REPLY #26845 /* ~If you do not do what is best for the party, you will be cast aside. It's that simple.~ */ GOTO 261
  IF ~~ THEN REPLY #26846 /* ~Who am I to judge? The least I can do is offer you the same as you offer me.~ */ GOTO 263
END

IF ~~ THEN BEGIN 263 // from: 262.1
  SAY #26847 /* ~I thank you for this. It helps. It does.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",40)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 264 // from:
  SAY #26848 /* ~There is an ill wind in the air. Do you feel it? I feel a storm inside, in the distance.~ [JAHEIR99] */
  IF ~~ THEN REPLY #26850 /* ~What does that mean, Jaheira? What the hell are you talking about?~ */ DO ~SetGlobal("DerminSpawn","GLOBAL",1)
SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 265
  IF ~~ THEN REPLY #26851 /* ~You are more sensitive to the weather, being a druid. You would know.~ */ DO ~SetGlobal("DerminSpawn","GLOBAL",1)
SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 267
  IF ~~ THEN REPLY #26852 /* ~Do you mean the actual weather, or is this prophecy of a sort?~ */ DO ~SetGlobal("DerminSpawn","GLOBAL",1)
SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 268
END

IF ~~ THEN BEGIN 265 // from: 264.0
  SAY #26849 /* ~I don't know, all right?! I feel uneasy! You do not make it better looking at me like I am out of my mind!~ */
  IF ~~ THEN REPLY #26853 /* ~Don't take your frustrations out on me! I won't stand for it!~ */ GOTO 266
  IF ~~ THEN REPLY #26854 /* ~Very well, I apologize, but you must admit that your words are a bit odd.~ */ GOTO 268
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #26855 /* ~Then I will make sure you do not! I will not bother you again!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 267 // from: 264.1
  SAY #26856 /* ~It is not the weather. I just... something is coming, and I do not like how it feels. I don't know what it is, but I do not like how it feels.~ */
  IF ~~ THEN GOTO 268
END

IF ~~ THEN BEGIN 268 // from: 267.0 265.1 264.2
  SAY #26857 /* ~I don't know what I meant. They say you shiver when someone walks over your grave. I feel as though something were marching back and forth across mine.~ */
  IF ~~ THEN REPLY #26858 /* ~Well, you're doomed then. Lay down and die.~ */ GOTO 269
  IF ~~ THEN REPLY #26859 /* ~A parable for change, isn't it? Not death, but change.~ */ GOTO 270
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #26860 /* ~I hope I can offer you such "kind" words when you need it. This is no time for humor, thank you. Let's just keep moving, but... stay close, if you would.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 270 // from: 268.1
  SAY #26861 /* ~I don't know. Let's just get going, and it will pass. If you don't mind, <CHARNAME>, I would walk in step with you. I... just need someone near me.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",42)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 271 // from:
  SAY #26862 /* ~I... I am sorry, but I need a moment to collect myself. ~ [JAHEIRA2] */
  IF ~~ THEN REPLY #26863 /* ~We don't have time to stop. Get moving!~ */ GOTO 273
  IF ~~ THEN REPLY #26864 /* ~No need to ask. We haven't had time to stop since your meeting with... well...~ */ GOTO 272
END

IF ~~ THEN BEGIN 272 // from: 271.1
  SAY #26865 /* ~<CHARNAME>? I don't know what to... I am NOT used to this! I am the one in control! I am... I...~ */
  IF ~~ THEN REPLY #26866 /* ~Jaheira, why did you leave the Harpers? I mean, I know "why," but why for me?~ */ GOTO 274
END

IF ~~ THEN BEGIN 273 // from: 271.0
  SAY #26868 /* ~What? You cannot give me a second to... Fine, if that is what you wish, then you have already answered any question I might have said. Let's go. Now! Go!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from: 272.0
  SAY #26867 /* ~Selfish, selfish, selfish! People have died because of... what I want, what I see in... you. The Harpers have rightfully turned their backs! Rightfully! I...~ */
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 274.0
  SAY #26869 /* ~Selfish...~ */
  IF ~~ THEN REPLY #26870 /* ~There is no shame in this. You did what you thought was right. ~ */ GOTO 276
  IF ~~ THEN REPLY #26871 /* ~They were in the wrong! You said so! You seemed sure then!~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.1 275.0
  SAY #26872 /* ~Did I? What if I am wrong? What if my own stupid thoughts have colored what I see? What if you...~ */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #26873 /* ~What if it all goes wrong? What happens to what is lost? I can't risk any more! So much is gone.~ */
  IF ~~ THEN REPLY #26874 /* ~We live, and the world goes on. Hear my cliché and smile. Please? Don't make me say another.~ */ GOTO 278
  IF ~~ THEN REPLY #26875 /* ~Perhaps, but going back is not an option now, is it?~ */ GOTO 279
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #26876 /* ~Mmph... don't... don't make me laugh, you... Thanks, <CHARNAME>, but I don't want to talk any more right now. Thanks.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 279 // from: 277.1
  SAY #26877 /* ~No. No it isn't. Blindly on, hitting walls as we go. *sniff* By the gods, let's just get moving. I do so hate getting this sick on emotion.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",44)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 280 // from:
  SAY #26878 /* ~Blast, my armor could do with a cleaning.~ [JAHEIRA3] */
  IF ~~ THEN REPLY #26879 /* ~You seem to have cheered up a bit. Feeling better?~ */ GOTO 283
  IF ~~ THEN REPLY #26880 /* ~I will get you the best armor in all of Athkatla if it will help.~ */ GOTO 286
  IF ~~ THEN REPLY #26881 /* ~It is well worn. I mean, it's used, but on you, it is well worn.~ */ GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.2
  SAY #26882 /* ~Such a line I have not heard since my early days traveling the Hordelands. Thank you for trying to cheer me, but I will manage. ~ */
  IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282 // from: 281.0
  SAY #26883 /* ~Your silver tongue could do with some smithing as well. A bit blunt, I would think. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 283 // from: 286.0 280.0
  SAY #26884 /* ~Somewhat. I am far from my old self, however. I thank you for putting up with me.~ */
  IF ~~ THEN REPLY #26885 /* ~Think nothing of it. You have done more for me.~ */ GOTO 284
  IF ~~ THEN REPLY #26886 /* ~Yes, well, as long as it does not continue. I don't wish to hear it.~ */ GOTO 287
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #26887 /* ~Yes... yes, I suppose I have. How much did I do for you, however, and how much was for me alone?~ */
  IF ~~ THEN REPLY #26888 /* ~It's not important. Come now, you were almost happy for a moment there.~ */ GOTO 285
  IF ~~ THEN REPLY #26889 /* ~Don't start all over again. I don't need to hear it again.~ */ GOTO 287
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #26890 /* ~I am fine. Let's just keep going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 286 // from: 280.1
  SAY #26891 /* ~No, no, it wouldn't. I am sorry, but this will take time once again.~ */
  IF ~~ THEN REPLY #26892 /* ~You are feeling better though?~ */ GOTO 283
  IF ~~ THEN REPLY #26893 /* ~You spend much of your life waiting. When do you get to the "doing" part?~ */ GOTO 288
END

IF ~~ THEN BEGIN 287 // from: 284.1 283.1
  SAY #26894 /* ~Then you won't. I am in the middle of a decision, and I think you have just made it for me. Come, let's get going. You'll not hear another word.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 288 // from: 286.1
  SAY #26895 /* ~When I am good and ready. I suppose I cannot blame you when I blame myself. Let's just go; there is much to do.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #26 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",46)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 289 // from:
  SAY #26896 /* ~*sigh* Your old injuries feeling all right? I thought I saw you wince a moment ago. ~ [JAHEIRA4] */
  IF ~~ THEN REPLY #26897 /* ~Hmm? No, nothing like that. Likely you just caught me looking your way.~ */ GOTO 290
  IF ~~ THEN REPLY #26898 /* ~What? Ah, yes, just a bit of... of knee trouble. A roll of the eyes for the pain. ~ */ GOTO 291
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #26899 /* ~Oh. I... I see. I am flattered, I suppose.~ */
  IF ~~ THEN REPLY #26900 /* ~I am sorry; was I out of line?~ */ GOTO 292
  IF ~~ THEN REPLY #26901 /* ~Well, thank you for being so thrilled. Makes me feel good about myself.~ */ GOTO 293
END

IF ~~ THEN BEGIN 291 // from: 289.1
  SAY #26902 /* ~And your eyes rolled my way most of the time because...? I... I guess I find your attentions pleasing, but perhaps not appropriate right now.~ */
  IF ~~ THEN REPLY #26903 /* ~I am sorry if I offended you.~ */ GOTO 292
  IF ~~ THEN REPLY #26904 /* ~Ouch. That makes me feel so good about myself.~ */ GOTO 293
END

IF ~~ THEN BEGIN 292 // from: 291.0 290.0
  SAY #26905 /* ~Oh, no, not in the least, really. I am just... I have to deal with a few things... I have to decide some things. ~ */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 293 // from: 291.1 290.1
  SAY #26906 /* ~It's not you. I am just... I need to decide a few things. I have had much to think about recently.~ */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294 // from: 293.0 292.0
  SAY #26907 /* ~I apologize for being in a foul mood. I wish I could say it would end soon, but I don't know. It's not you, though. It's not...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",48)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 295 // from:
  SAY #26908 /* ~So—ah... Could I— Could I have a few moments of your time?~ [JAHEIRA5] */
  IF ~~ THEN REPLY #26909 /* ~Is there not a better time for our little chats?~ */ GOTO 296
  IF ~~ THEN REPLY #26910 /* ~Certainly. What is it you wish to know?~ */ GOTO 297
END

IF ~~ THEN BEGIN 296 // from: 295.0
  SAY #26911 /* ~I imagine this would be awkward at any time, so I must answer no. Please, hear me out.~ */
  IF ~~ THEN REPLY #26912 /* ~I don't have the time for this now.~ */ GOTO 300
  IF ~~ THEN REPLY #26913 /* ~As inconvenient as it is, go ahead.~ */ GOTO 297
END

IF ~~ THEN BEGIN 297 // from: 296.1 295.1
  SAY #26914 /* ~Thank you. I wished to speak of the future a bit. I know we have discussed this in brief before, but I need to... clarify a few things.~ */
  IF ~~ THEN REPLY #26915 /* ~You were the one that thought my future mine to control. Has this changed?~ */ GOTO 298
  IF ~~ THEN REPLY #26916 /* ~Why? Has your recent loss affected how you see me?~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.1 297.0
  SAY #26917 /* ~No, no, not as such. I just wished to know how you fared on the path you have chosen. Granted, I am right here to see, but I don't know what you... think.~ */
  IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299 // from: 298.0
  SAY #26918 /* ~Do you still find my company beneficial? Do you still think of our missing friends as often as you did? What of your fight to remain in balance?~ */
  IF ~~ THEN REPLY #26919 /* ~Jaheira, this is not a "chat." This is more a judicial inquiry. ~ */ GOTO 301
  IF ~~ THEN REPLY #26920 /* ~What is this? Why are you trying to "extract" this information?~ */ GOTO 301
END

IF ~~ THEN BEGIN 300 // from: 296.0
  SAY #26921 /* ~I... I see. Then my decision is made for me. I am sorry for interrupting you. Rest assured that it will not happen again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 301 // from: 299.1 299.0
  SAY #26922 /* ~I am sorry then. I did not mean to test you so. Perhaps this can wait for another time. Forget I said anything.~ */
  IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #26923 /* ~What? Let's just go.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #28 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",50)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 303 // from:
  SAY #26924 /* ~I... I need to speak with you a moment.~ [JAHEIRA6] */
  IF ~~ THEN REPLY #26925 /* ~What is it, Jaheira?~ */ GOTO 305
  IF ~~ THEN REPLY #26926 /* ~What now? How do you pick these times to chat?~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.1
  SAY #26927 /* ~I just speak when I feel I... I must. Sorry if talking is a chore, but what am I here for if I cannot speak? I merely wanted to say something. Please listen.~ */
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0 303.0
  SAY #26928 /* ~I wished to apologize for my questions earlier. I was too forward. I needed to know you remain the same man that I began traveling with so long ago.~ */
  IF ~~ THEN REPLY #26929 /* ~I am as I was. If there is something new, it is because you did not see it before.~ */ GOTO 306
  IF ~~ THEN REPLY #26930 /* ~I suppose it has been some time. Many things have changed. I have not.~ */ GOTO 310
  IF ~~ THEN REPLY #26931 /* ~I have been growing annoyed with these comments of yours. Does that count?~ */ GOTO 309
END

IF ~~ THEN BEGIN 306 // from: 310.0 305.0
  SAY #26932 /* ~That does not ease my mind. I must know what is truth, or I cannot trust myself. My decisions have affected many, and I do not wish to endanger anyone else.~ */
  IF ~~ THEN REPLY #26933 /* ~I do not hide anything from you, Jaheira. I have no reason to.~ */ GOTO 307
  IF ~~ THEN REPLY #26934 /* ~And I must suffer for this? I tire of these games.~ */ GOTO 309
END

IF ~~ THEN BEGIN 307 // from: 306.0
  SAY #26935 /* ~No? The Harper in your midst? ~ */
  IF ~~ THEN REPLY #26936 /* ~You are not "the Harper in my midst," you are Jaheira by my side.~ */ GOTO 311
  IF ~~ THEN REPLY #26937 /* ~You are no longer a Harper. Any enemy of them is a friend of mine.~ */ GOTO 308
END

IF ~~ THEN BEGIN 308 // from: 307.1
  SAY #26938 /* ~Is everyone an ally or an enemy? Is everything a matter of battle to you? I had hoped it would not be, but I have had growing doubts to the contrary. ~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0 306.1 305.2
  SAY #26939 /* ~I think I have received the answer I sought. I guess I was just looking too deep. I will not bother you again, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from: 305.1
  SAY #26941 /* ~There has been change all around. You may have been affected in ways you don't know. ~ */
  IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 311 // from: 307.0
  SAY #26940 /* ~I... I don't know what to say to that. I still have many concerns that must be addressed, but you seem so...~ */
  IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #26942 /* ~I need to think on this some more. Let's get moving.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",52)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 313 // from:
  SAY #26943 /* ~How... hm. How did the last battle make you feel? Did you enjoy it?~ [JAHEIRA7] */
  IF ~~ THEN REPLY #26944 /* ~Jaheira! I have about had enough of this. You do not trust me. Say so!~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 314
  IF ~~ THEN REPLY #26945 /* ~No more than you, I am sure. I do what must be done. Is that wrong?~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 316
  IF ~~ THEN REPLY #26946 /* ~Very much so. I enjoy combat. I have seen you enjoy it too. Is that so wrong?~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 316
END

IF ~~ THEN BEGIN 314 // from: 316.1 316.0 313.0
  SAY #26947 /* ~I... I am sorry! But I must know! I must know that you are more human than not! I must know that your... your poison blood has not taken your senses! ~ */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #26948 /* ~I must know that the child of Bhaal in front of me is as sincere as he seems, so I do not get myself... I mean, get anyone else hurt... pursuing your company.~ */
  IF ~~ THEN REPLY #26952 /* ~If my word and your eyes are not enough, ask yourself what could be?~ */ GOTO 318
  IF ~~ THEN REPLY #26953 /* ~It sounds like you are not ready to "pursue" anyone. Leave me be.~ */ GOTO 317
END

IF ~~ THEN BEGIN 316 // from: 313.2 313.1
  SAY #26949 /* ~No, but what were your motivations? You can be violent like any other person, but there is more at stake with you. What were you thinking?~ */
  IF ~~ THEN REPLY #26950 /* ~This is growing tiresome, Jaheira. If you do not trust me, say so.~ */ GOTO 314
  IF ~~ THEN REPLY #26951 /* ~I do not recall. How long before your questions mirror Galvarey's?~ */ GOTO 314
END

IF ~~ THEN BEGIN 317 // from: 315.1
  SAY #26954 /* ~I guess that would be best, wouldn't it? For... for the best. I will not bother you again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 318 // from: 315.0
  SAY #26955 /* ~So you are saying that if nothing could ever make things right, it is me that is wrong. I am... I am looking for excuses to avoid you... and what I feel.~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #26956 /* ~I do not recall myself being such a mess. It is time, I guess, to move or get off the pot. Chaos in their passage indeed; you have nothing on me, <CHARNAME>.~ */
  IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #26957 /* ~Let's get to walking. I have yet more thinking to do.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #30 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",54)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 321 // from:
  SAY #27261 /* ~Is... is this an inconvenient time for us to speak?~ [JAHEIRA9] */
  IF ~~ THEN REPLY #27367 /* ~Speak your mind, Jaheira. I will make time.~ */ GOTO 323
  IF ~~ THEN REPLY #27369 /* ~These little chats never go well, Jaheira, regardless of the time.~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.1
  SAY #27368 /* ~I see. I should think it bad that you have said so now. We have been traveling together long, and... and you seemed responsive enough. Have I been wrong?~ */
  IF ~~ THEN REPLY #27370 /* ~Very wrong. Now, will you please be quiet?~ */ GOTO 324
  IF ~~ THEN REPLY #27371 /* ~I'm sorry, it's just the stress of travel. Speak your mind.~ */ GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 322.1 321.0
  SAY #27372 /* ~I am sorry if this seems odd, but I wanted to thank you. You did not have to follow me to the Harper Hold. In fact, I seem to recall telling you not to.~ */
  IF ~~ THEN REPLY #27373 /* ~Did you not want me to, or is it that you just thought I wouldn't?~ */ GOTO 325
  IF ~~ THEN REPLY #27375 /* ~I did not trust that Dermin, and your letter did nothing to ease my mind.~ */ GOTO 332
END

IF ~~ THEN BEGIN 324 // from: 322.0
  SAY #27376 /* ~I see. Then why did you come? Was I merely a lost mule? I... I am glad this has come to light. It stops me from... I shall be quiet, most certainly.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 325 // from: 323.0
  SAY #27377 /* ~I... I am sorry, <CHARNAME>. You are right; it is not fair to you. You have proven reliable, and yet I was afraid... of what I felt, and whom I felt it for.~ */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 332.0 325.0
  SAY #27378 /* ~You have proven master of your path, and as... as much as I wish to walk it with you, there is much unfinished business that has been eating away at my will.~ */
  IF ~~ THEN GOTO 328
END

IF ~~ THEN BEGIN 327 // from: 329.0
  SAY #27380 /* ~So I will fear no more. I... I value your company, <CHARNAME>. After all we have been through, I must know: Do you value my company as well?~ */
  IF ~~ THEN REPLY #27381 /* ~Very much so, Jaheira. You are an integral part of the party.~ */ GOTO 330
  IF ~~ THEN REPLY #27382 /* ~Jaheira, your loss would be a tragedy. I need you here... with me.~ */ GOTO 331
END

IF ~~ THEN BEGIN 328 // from: 326.0
  SAY #27379 /* ~Khalid's death, my need to move on, these Harpers that have forced my own treachery—and in the background is who and what you are: a spawn of murder and lies.~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #27384 /* ~But you have left behind the evil that your very nature is built upon. If you can do that, proving to be the caring person you are, then why do I fear?~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 330 // from: 327.0
  SAY #27383 /* ~...of the party? So, business alone has kept you with me. Very well... Best I know now, before... Well, that is quite enough of that. Let's go, shall we?~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 331 // from: 327.1
  SAY #27385 /* ~Those are nice words, <CHARNAME>, and I am not so fearful to hear them anymore. I am not so sure how to act upon them, but knowing you feel as I do is a start.~ */
  IF ~~ THEN GOTO 333
END

IF ~~ THEN BEGIN 332 // from: 323.1
  SAY #27374 /* ~And I am glad for it! The shame of Dermin's accusation colored my own sight. He is the one that has changed. You would have been a better guide...~ */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 333 // from: 331.0
  SAY #27386 /* ~I won't delay us any longer for now. We will speak again on this, in better spirits, I hope.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #31 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",56)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 334 // from:
  SAY #27387 /* ~Ahh! The dawning of our day. Though it is very rarely that we seem to match our sleep cycle to the day or night.~ [JAHEIRB1] */
  IF ~~ THEN REPLY #27388 /* ~We take our rest where we can. It is a necessity sometimes.~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 335
  IF ~~ THEN REPLY #27389 /* ~We don't seem to see the daylight all that often. I am sorry about that.~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 336
  IF ~~ THEN REPLY #27390 /* ~If we were that predictable, we would be easy targets for our enemies.~ */ DO ~SetGlobalTimer("DerminAppear","GLOBAL",1)
~ GOTO 337
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #27391 /* ~Oh, I don't dispute that, and neither was I criticizing, but I wouldn't mind waking to the sunrise a little more often.~ */
  IF ~~ THEN REPLY #27392 /* ~Sunrises are but one of, oh, at least two things worth waking to I could think of.~ */ GOTO 340
  IF ~~ THEN REPLY #27393 /* ~If it would make you happier, then I will see what I can do.~ */ GOTO 336
END

IF ~~ THEN BEGIN 336 // from: 335.1 334.1
  SAY #27394 /* ~Do not trouble yourself over it. I was merely saying I enjoy it, not that we should order our lives around it. It is beautiful, but I know it is there.~ */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 337 // from: 334.2
  SAY #27397 /* ~I was not suggesting that we make a habit of bedding down before dusk each and every night. There is nature and beauty to see in the dark as well.~ */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 337.0 336.0
  SAY #27398 /* ~Besides, do I strike you as a person that would adjust well to such a strict timeline?~ */
  IF ~~ THEN REPLY #27399 /* ~Not before I suffered greatly. Your wit would exact payment, I am sure.~ */ GOTO 339
  IF ~~ THEN REPLY #27400 /* ~No need to. No sunrise could compare with your beauty in the moonlight. ~ */ GOTO 340
END

IF ~~ THEN BEGIN 339 // from: 340.0 338.0
  SAY #27395 /* ~Perhaps, though I intend no malice. I would laugh at you as I laugh at myself, and... hopefully I will come to know you that well. ~ */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 340 // from: 338.1 335.0
  SAY #27396 /* ~Such talk! Have you found some poor apprentice bard to draft you lines, or are you practicing on the maidens we meet?~ */
  IF ~~ THEN REPLY #27401 /* ~Oh, you sting my heart when you say such things. Hehe. How cruel you are.~ */ GOTO 339
  IF ~~ THEN REPLY #27402 /* ~I... I meant no offense, Jaheira. I thought you might be flattered.~ */ GOTO 341
END

IF ~~ THEN BEGIN 341 // from: 340.1
  SAY #27403 /* ~What... no, I meant... I'm sorry, <CHARNAME>, I was just having fun. I was flattered, but you know I am not inclined to such talk. I lost my wide eyes years ago.~ */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 342 // from: 341.0 339.0
  SAY #27404 /* ~Your words were pleasing; do not think otherwise. Eh, perhaps we should just get moving for now.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #32 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",60)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 343 // from:
  SAY #27440 /* ~What?! What is it you want?~ [JAHEIRB4] */
  IF ~~ THEN REPLY #27441 /* ~All I did was look your way, Jaheira. Are you all right?~ */ GOTO 344
  IF ~~ THEN REPLY #27442 /* ~Nothing, though morale is going to slip if you keep glaring at people. ~ */ GOTO 346
  IF ~~ THEN REPLY #27443 /* ~Well, you're in a good mood. It's about that fight with Dermin, isn't it?~ */ GOTO 347
END

IF ~~ THEN BEGIN 344 // from: 343.0
  SAY #27444 /* ~Fine. I'm just fine.~ */
  IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 345 // from: 346.0 344.0
  SAY #27445 /* ~Well?~ */
  IF ~~ THEN REPLY #27446 /* ~W-well what? You said you were fine.~ */ GOTO 349
  IF ~~ THEN REPLY #27447 /* ~Oh no. I'm not going to bait this mood any more than I have to. It's dangerous.~ */ GOTO 351
END

IF ~~ THEN BEGIN 346 // from: 343.1
  SAY #27448 /* ~Funny. Can we just get going? I'm fine. Just fine.~ */
  IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 347 // from: 343.2
  SAY #27449 /* ~Very good, you've mastered the obvious. Now consult your navel about what to do next.~ */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #27450 /* ~I'm sorry, I didn't mean that. It's just... I am so mad, and I don't know how to get it out. It's because... it's because...~ */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 349 // from: 345.0
  SAY #27451 /* ~That's what I said but I meant... I'm sorry, I shouldn't need to play these games. I'm just so mad, and I don't know how to get it out.~ */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 350 // from: 374.0
  SAY #27452 /* ~Isn't that ridiculous? The bastard was putting people in danger for nothing, and I feel guilty for ending it!~ */
  IF ~~ THEN REPLY #27455 /* ~He put you in the position of opposing a mentor. It couldn't help but trouble you. ~ */ GOTO 352
  IF ~~ THEN REPLY #27456 /* ~I know you did right. I hope that my view is worth something to you.~ */ GOTO 353
  IF ~~ THEN REPLY #27457 /* ~I don't know what to say, Jaheira. What do you need me to say?~ */ GOTO 355
END

IF ~~ THEN BEGIN 351 // from: 345.1
  SAY #27453 /* ~Don't belittle my mood! I... no... no, I'm sorry. I don't usually fall into these kinds of games. I'm just so mad, and I don't know how to get it out.~ */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 352 // from: 350.0
  SAY #27454 /* ~I know; I was just not prepared for this. I am not used to mourning my enemies. It's not much easier than mourning friends, and I have done enough of that.~ */
  IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 353 // from: 350.1
  SAY #27458 /* ~It is, believe me. It means a lot. I am sorry I am not better company. When this is over, we should... well, I don't want to put a cloud over the future.~ */
  IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 355.0 353.0 352.0
  SAY #27459 /* ~I will need a bit of space for now. Damn, why is this so hard? Remove the bad seeds and walk into the sunset; that's how it's supposed to go. Nice and clean.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 355 // from: 350.2
  SAY #27460 /* ~I need you to say... what? I don't know either. I'm sorry, this is not fair to you at all. ~ */
  IF ~~ THEN GOTO 354
END

IF WEIGHT #33 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",58)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 356 // from:
  SAY #27461 /* ~Ugh, it is about time we rested. I have seen enough waking hours, thank you very much.~ [JAHEIRB3] */
  IF ~~ THEN REPLY #27509 /* ~Jaheira, your frown does not do your face justice. Try to be cheerful.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 357
  IF ~~ THEN REPLY #27510 /* ~I was not aware that morale was so low. What can I do to make you happy?~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 358
  IF ~~ THEN REPLY #27511 /* ~If you would stop snapping at me, we could get the rest you want.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 359
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #27513 /* ~I do not wish to be cheerful; I wish to be miserable, hating everything that has led to what we are. ~ */
  IF ~~ THEN REPLY #27514 /* ~If I knew what was wrong, I could help.~ */ GOTO 360
  IF ~~ THEN REPLY #27515 /* ~Is this a real problem or one that you have manufactured for us?~ */ GOTO 359
END

IF ~~ THEN BEGIN 358 // from: 356.1
  SAY #27519 /* ~I do not want to be happy. I want to be angry and not feel bad about it.~ */
  IF ~~ THEN REPLY #27520 /* ~If I knew what was wrong, I could help.~ */ GOTO 360
  IF ~~ THEN REPLY #27521 /* ~Is this a real problem or one that you have manufactured for us?~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.1 357.1 356.2
  SAY #27523 /* ~Yes, there it is. Work up your wrath and get mad at me. Be unreasonable, so I can be angry for a reason. Do it! Act as you should!~ */
  IF ~~ THEN REPLY #9852 /* ~Calm down, Jaheira. This isn't making any sense.~ */ GOTO 361
  IF ~~ THEN REPLY #9854 /* ~You are doing a fine job of tormenting yourself. Why ask me to help?~ */ GOTO 362
END

IF ~~ THEN BEGIN 360 // from: 358.0 357.0
  SAY #27528 /* ~Stop being so damned reasonable. Get mad and say you won't stand for it. Act like you should!~ */
  IF ~~ THEN REPLY #27535 /* ~Jaheira, calm yourself. This makes no sense.~ */ GOTO 361
  IF ~~ THEN REPLY #27536 /* ~You are doing a fine job of tormenting yourself. Why ask me to help?~ */ GOTO 362
END

IF ~~ THEN BEGIN 361 // from: 360.0 359.0
  SAY #27274 /* ~It... it makes a lot of sense to me. If you had only acted like everyone said, if you had just been the murderous bastard you were born to be...~ */
  IF ~~ THEN GOTO 363
END

IF ~~ THEN BEGIN 362 // from: 360.1 359.1
  SAY #27538 /* ~Because you are supposed to! Damn it! If you would have just acted like you were supposed to, like everyone said you would...~ */
  IF ~~ THEN GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.0 361.0
  SAY #27539 /* ~None of this would have happened if you had accepted your evil heritage. I would not have sided with you. I would not have fought for you. I would not have...~ */
  IF ~~ THEN REPLY #27541 /* ~I did not force you to do anything. You have made your own choices.~ */ GOTO 364
  IF ~~ THEN REPLY #27542 /* ~Jaheira? Making you wrong will not change anything.~ */ GOTO 365
END

IF ~~ THEN BEGIN 364 // from: 363.0
  SAY #27540 /* ~What if they were the wrong ones? I have turned this over and over in my mind, and the dead have piled up, and I have still gone forward.~ */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 365 // from: 364.0 363.1
  SAY #27552 /* ~If I were wrong, at least the dead would have died for just reasons. So many... that are dead and we are the cause. How can all those people have been wrong?~ */
  IF ~~ THEN REPLY #27561 /* ~They simply were. You know in your heart that you are right in this.~ */ GOTO 366
  IF ~~ THEN REPLY #27562 /* ~Numbers do not make it right. We are alone, but we are correct.~ */ GOTO 370
  IF ~~ THEN REPLY #27569 /* ~Because they were idiots that knew no better. Stupidity killed them.~ */ GOTO 373
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #27573 /* ~Bah! What does the heart know? It makes you do foolish things for no cause. It makes you forget the dead before you should. It makes you fall in...~ */
  IF ~~ THEN GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #27579 /* ~It... makes you do things that wreak havoc on your mind. I'm sorry, <CHARNAME>, you should not have to hear this. You have been good and true. ~ */
  IF ~~ THEN GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 371.0 367.0
  SAY #27581 /* ~I should be happy, but I am not. Even with all we have done to make things right, I am still troubled. ~ */
  IF ~~ THEN REPLY #27582 /* ~Time heals all wounds. Unless, of course, they get infected.~ */ GOTO 369
  IF ~~ THEN REPLY #27583 /* ~I can't wait forever. I do what I can, but it is difficult.~ */ GOTO 372
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #27584 /* ~Funny. I'm just not in a mood for laughing. Let's just get some rest.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 370 // from: 365.1
  SAY #27585 /* ~Everyone is wrong except the failed Harper and the pariah born evil. That's rich.~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 373.0 370.0
  SAY #27598 /* ~I'm sorry, <CHARNAME>. I know we are in the right and that you are not the creature of chaos they claim. I am not sure why I feel this way.~ */
  IF ~~ THEN GOTO 368
END

IF ~~ THEN BEGIN 372 // from: 368.1
  SAY #27600 /* ~I know, and I need your company. I am just not comfortable with needing it. Let's get some rest for now. I'll try to straighten this out.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 373 // from: 365.2
  SAY #27601 /* ~And arrogance will kill you. They thought they were right, and we think we are right. Is there so much of a difference? ~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 374 // from: 351.0 349.0 348.0
  SAY #27602 /* ~I... I know why I am upset, but I just can't seem to shake it. I am angry with that dungweasel Dermin for... for making me feel guilty for killing him!~ */
  IF ~~ THEN GOTO 350
END

IF WEIGHT #34 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",62)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 375 // from:
  SAY #27603 /* ~You needn't keep a distance between us. I am in less of a mood now. ~ [JAHEIRB5] */
  IF ~~ THEN REPLY #27604 /* ~Are you? I did not want to risk setting you off once more.~ */ GOTO 376
  IF ~~ THEN REPLY #27605 /* ~I was thinking of other things at the moment, but I am glad you feel better.~ */ GOTO 377
  IF ~~ THEN REPLY #27606 /* ~Should I tailor my mood to yours? You have proven unresponsive in the past.~ */ GOTO 378
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #27607 /* ~I do not blame you. Such trouble I have been. Simple feelings made more difficult by the strangest things. I hope I have not harmed your view of me.~ */
  IF ~~ THEN REPLY #27608 /* ~It has been difficult, but... but I would not trade your company for anyone's.~ */ GOTO 381
  IF ~~ THEN REPLY #27609 /* ~You have questioned our relationship at every step, even as you pursued it. ~ */ GOTO 379
END

IF ~~ THEN BEGIN 377 // from: 375.1
  SAY #27611 /* ~Yes, I shouldn't expect a warm reaction after what I have been like. Simple feelings complicated beyond recognition. I hope I have not soured your view of me.~ */
  IF ~~ THEN REPLY #27615 /* ~It has been difficult, but... but I would not trade your company for anyone's.~ */ GOTO 381
  IF ~~ THEN REPLY #27616 /* ~You have questioned our relationship at every step, even as you pursued it. ~ */ GOTO 379
END

IF ~~ THEN BEGIN 378 // from: 375.2
  SAY #27612 /* ~I suppose I deserve your suspicion and scorn, but I hope I have not soured you completely.~ */
  IF ~~ THEN REPLY #27617 /* ~It has been difficult, but... but I would not trade your company for anyone's.~ */ GOTO 381
  IF ~~ THEN REPLY #27618 /* ~You have questioned our relationship at every step, even as you pursued it. ~ */ GOTO 379
END

IF ~~ THEN BEGIN 379 // from: 378.1 377.1 376.1
  SAY #27623 /* ~It must have been confusing for you, and I cannot say how sorry I am. You have shown the patience of a saint, despite your detractors and my... fluctuations.~ */
  IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 380 // from: 381.0 379.0
  SAY #27626 /* ~Know that I care for you, even if I do not show it well. If this meant nothing, it would have been easy to deal with. Small consolation, I know.~ */
  IF ~~ THEN REPLY #27630 /* ~Very small. I will not continue like this. My own feelings must take precedence.~ */ GOTO 382
  IF ~~ THEN REPLY #27631 /* ~Not so small. Does this mean you are comfortable with me?~ */ GOTO 383
END

IF ~~ THEN BEGIN 381 // from: 378.0 377.0 376.0
  SAY #27632 /* ~You do not know how glad I am. I worried I had ruined what we... You are my stability, you know? Perhaps it doesn't always seem like it, but you are.~ */
  IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 382 // from: 380.0
  SAY #27639 /* ~I see. I cannot blame you. I have waited too long and strained too many ties. Perhaps it is for the best. Perhaps.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 380.1
  SAY #27642 /* ~I am trying. You have shown such caring so far. I have taken you for granted as someone that would always be here, even as I questioned our very friendship. ~ */
  IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #27644 /* ~I will not make such a mistake again. Of this I am sure. ~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #27647 /* ~We should get moving. Walk with me, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #35 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",64)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 386 // from:
  SAY #27649 /* ~I have... had a realization. I have been walking with my eyes downcast for so long I had forgotten the beauty of the land. Aye, all we have seen... I had thought never to feel the warmth of nature again.~ [JAHEIRB6] */
  IF ~  AreaType(FOREST)
~ THEN REPLY #27656 /* ~You make me appreciate such things. I never appreciated a simple forest before you. ~ */ GOTO 387
  IF ~~ THEN REPLY #27657 /* ~Do we not see nature in everything? Even in the deepest dungeons? ~ */ GOTO 388
  IF ~  !AreaType(FOREST)
~ THEN REPLY #62034 /* ~What brought this on? We are not in nature right now.~ */ GOTO 460
  IF ~~ THEN REPLY #62035 /* ~You think about these things too much, Jaheira. Not everyone appreciates nature as you do.~ */ GOTO 391
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #27659 /* ~They are not simple forests, but ancient places in harmony for untold years. I have walked through many, but I had forgotten... how they stir my soul.~ */
  IF ~~ THEN REPLY #27662 /* ~It is the elf in you, and the druid. Culture and nature together in balance.~ */ GOTO 390
  IF ~~ THEN REPLY #27663 /* ~Really? They are grand, I am sure, but I do not feel the same exhilaration you do.~ */ GOTO 391
END

IF ~~ THEN BEGIN 388 // from: 386.1
  SAY #27664 /* ~The chasms we walk in jut from the earth like a spear, kept in check by a lack of balance, which means helping them would damn another land. It is chaos...~ */
  IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 460.0 388.0
  SAY #27668 /* ~Forests, grasslands; they have been in harmony for untold years, complementing, not competing. I have walked by many but had forgotten. They stir my soul.~ */
  IF ~~ THEN REPLY #27670 /* ~It is the elf in you, and the druid. Culture and nature together in balance.~ */ GOTO 390
  IF ~~ THEN REPLY #27671 /* ~Really? They are grand, I am sure, but I do not feel the same exhilaration you do.~ */ GOTO 391
END

IF ~~ THEN BEGIN 390 // from: 389.0 387.0
  SAY #27675 /* ~Yes, and if the balance can be struck there, it can happen where I am willing. It was my calling as a druid and as a Harper. I had forgotten...~ */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 391 // from: 389.1 387.1 386.3
  SAY #27684 /* ~It doesn't matter; you don't need to. Nature balances because it is willing; I can bring that if I am willing. It was my calling as a druid and as a Harper.~ */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0 390.0
  SAY #27687 /* ~I forgot that balance does not mean conformity; equilibrium does not need to sacrifice variety. Dermin forgot that too. Difference does not have to be chaos.~ */
  IF ~~ THEN REPLY #27690 /* ~Heh, you are beautiful when you have epiphanies.~ */ GOTO 395
  IF ~~ THEN REPLY #27692 /* ~I would purchase a mirror if I wished only a reflection of myself as company.~ */ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.1
  SAY #27693 /* ~And I would stay by the brooks of home if I wished only my reflection. I would like to see some of myself in your face, but not so much that I lose what is you. ~ */
  IF ~~ THEN GOTO 394
END

IF ~~ THEN BEGIN 394 // from: 396.0 393.0
  SAY #27691 /* ~<CHARNAME>, I care for you. I have not always shown as such, and my words may seem harsh on occasion, but my feelings are true just the same.~ */
  IF ~~ THEN REPLY #27719 /* ~I knew. I had faith you would come around in time.~ */ GOTO 397
  IF ~~ THEN REPLY #27720 /* ~Well, it's about bloody time. Damn, I'm happy.~ */ GOTO 397
END

IF ~~ THEN BEGIN 395 // from: 392.0
  SAY #27700 /* ~Oh, stop it. I'm being serious here. ~ */
  IF ~~ THEN GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #27702 /* ~No, no, don't stop it. I have been far too serious and have worried about too much for too long. What is so wrong with this? Nothing!~ */
  IF ~~ THEN GOTO 394
END

IF ~~ THEN BEGIN 397 // from: 394.1 394.0
  SAY #27713 /* ~Perhaps this changes nothing, perhaps everything. I don't care anymore. My heart cannot have nature within and be ashamed as well. ~ */
  IF ~~ THEN REPLY #27715 /* ~I prefer you with a smile. I should have camped us in a forest or grove months ago.~ */ GOTO 398
END

IF ~~ THEN BEGIN 398 // from: 397.0
  SAY #27716 /* ~What? We would have missed out on all the fun. Yes, I am joking. Let's go, <CHARNAME>. I feel happy for the first time in a long time.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #36 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",66)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 399 // from:
  SAY #27721 /* ~We have to be nearing our goal. It has been so long a journey, and we've been through so much! I hope this does not end up all being for naught.~ [JAHEIRB7] */
  IF ~~ THEN REPLY #27722 /* ~Sometimes, I have the feeling that this will be. Perhaps we should just give up while we can.~ */ GOTO 400
  IF ~~ THEN REPLY #27723 /* ~I could not have come this far without you helping me, Jaheira. ~ */ GOTO 401
  IF ~~ THEN REPLY #27724 /* ~We will survive and get some payback in the end. This has been quite the ordeal.~ */ GOTO 402
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #27725 /* ~Do not think like that, <CHARNAME>. We will prevail. We have not come all this way to simply fail. We will make sure that this Irenicus pays dearly.~ */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 401 // from: 399.1
  SAY #27726 /* ~I am not here only for you. There are dead to avenge, and I will not rest until Irenicus is paid in full. I will move on in life, but I leave no debts behind.~ */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 402 // from: 399.2
  SAY #27727 /* ~On this we agree. We will do what we can, but we must be sure to exact a payment from this Irenicus that will prove permanent.~ */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403 // from: 402.0 401.0 400.0
  SAY #27728 /* ~There can be no mercy for this creature. What he has done is unforgivable. ~ */
  IF ~~ THEN REPLY #27729 /* ~And if there is no alternative but to end his life, whatever the results?~ */ GOTO 404
  IF ~~ THEN REPLY #27730 /* ~And still some good has come out of all of this.~ */ GOTO 405
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #27732 /* ~I can live with that.~ */
  IF ~~ THEN REPLY #27733 /* ~Good. So can I.~ */ GOTO 408
  IF ~~ THEN REPLY #27734 /* ~I would see him a failure, but will settle for dead.~ */ GOTO 408
END

IF ~~ THEN BEGIN 405 // from: 403.1
  SAY #27731 /* ~Remarkably, we wouldn't be this close without him. We might have parted company once we left Baldur's Gate, and I would still... well, things would be different.~ */
  IF ~~ THEN REPLY #27735 /* ~Heh, then I will thank this Irenicus just before I feed him his own limbs.~ */ GOTO 406
  IF ~~ THEN REPLY #27736 /* ~I would bring back our fallen if I could, but I would not wish to lose you.~ */ GOTO 407
END

IF ~~ THEN BEGIN 406 // from: 405.0
  SAY #27738 /* ~Aw, that's sweet of you. Come, let's get moving.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 407 // from: 405.1
  SAY #27737 /* ~Do not waste time thinking of what would have been. It is fruitless and only results in tears. I would know. Let's just get going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 408 // from: 404.1 404.0
  SAY #27739 /* ~Then we will continue with a single mind for what must be done. We will find a way to end this. Come, let's get going.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #37 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",68)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 409 // from:
  SAY #27740 /* ~Can I— I would— *ahem* Hear my words while I have the nerve.~ [JAHEIRB8] */
  IF ~~ THEN GOTO 410
END

IF ~~ THEN BEGIN 410 // from: 409.0
  SAY #27741 /* ~<CHARNAME>, as we learn of our situation, I want to say... that there is much to come, and I find I need your company more and more. You are a great comfort in this time.~ */
  IF ~~ THEN REPLY #27743 /* ~You know you can count on me being with you, Jaheira.~ */ GOTO 411
  IF ~~ THEN REPLY #27744 /* ~I would not have wished this time to be spent with anyone else.~ */ GOTO 411
  IF ~~ THEN REPLY #27745 /* ~As are you. Rest now. Who knows what we will face tomorrow?~ */ GOTO 413
END

IF ~~ THEN BEGIN 411 // from: 410.1 410.0
  SAY #27746 /* ~I know. We are great friends... and more. Your words ease my thoughts, and many are the times we have saved one another in battle. We have grown quite close.~ */
  IF ~~ THEN REPLY #27747 /* ~What are you getting at, Jaheira?~ */ GOTO 412
  IF ~~ THEN REPLY #27748 /* ~I recall all of this fondly. Anything I can do to assist you, I will.~ */ GOTO 414
END

IF ~~ THEN BEGIN 412 // from: 414.0 413.0 411.0
  SAY #27742 /* ~Stay with me tonight, <CHARNAME>. If... if you wish.~ */
  IF ~~ THEN REPLY #27750 /* ~Are you certain of this?~ */ GOTO 415
END

IF ~~ THEN BEGIN 413 // from: 410.2
  SAY #27751 /* ~Who knows indeed? Yesterday saw friends die, saw blood spilled. Tomorrow...~ */
  IF ~~ THEN GOTO 412
END

IF ~~ THEN BEGIN 414 // from: 411.1
  SAY #27752 /* ~You can be yourself, be there for me. You can... be here for me as well.~ */
  IF ~~ THEN GOTO 412
END

IF ~~ THEN BEGIN 415 // from: 412.0
  SAY #27753 /* ~No, but I am less sure of many things these days. I worry less about it though. I will set aside my hesitation if you will.~ */
  IF ~~ THEN REPLY #27754 /* ~Jaheira, there is no other answer I could give.~ */ DO ~SetGlobal("JaheiraNookie","GLOBAL",1)
IncrementGlobal("LoveTalk","LOCALS",1)
RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27755 /* ~When we are through with Irenicus. If you feel the same then...~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.1
  SAY #27756 /* ~I see. Then stay up and talk with me for a while. I doubt I shall sleep. ~ */
  IF ~~ THEN DO ~IncrementGlobal("LoveTalk","LOCALS",1)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #38 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",70)
Global("JaheiraNookie","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 417 // from:
  SAY #27749 /* ~Good morning! Shall we get ourselves ready for the road? We've much to do, so we should get an early start.~ [JAHEIRB9] */
  IF ~~ THEN REPLY #27762 /* ~Jaheira? About last night...~ */ DO ~RealSetGlobalTimer("TerminselAppear","GLOBAL",TWELVE_HOURS)
SetGlobal("TerminselSpawn","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 422
  IF ~~ THEN REPLY #27765 /* ~Are you ready for travel? I don't think you slept much.~ */ DO ~RealSetGlobalTimer("TerminselAppear","GLOBAL",TWELVE_HOURS)
SetGlobal("TerminselSpawn","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 423
END

IF WEIGHT #39 ~  Global("JaheiraMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",70)
Global("JaheiraNookie","GLOBAL",0)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 418 // from:
  SAY #27757 /* ~We are ready to move on? I think it best that we get an early start.~ [JAHEIRC1] */
  IF ~~ THEN REPLY #27758 /* ~Jaheira? About last night...~ */ DO ~RealSetGlobalTimer("TerminselAppear","GLOBAL",TWELVE_HOURS)
SetGlobal("TerminselSpawn","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 419
  IF ~~ THEN REPLY #27759 /* ~Perhaps we should take some time to talk. ~ */ DO ~RealSetGlobalTimer("TerminselAppear","GLOBAL",TWELVE_HOURS)
SetGlobal("TerminselSpawn","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 419
  IF ~~ THEN REPLY #27763 /* ~Are you all right this morning? You did not sleep much.~ */ DO ~RealSetGlobalTimer("TerminselAppear","GLOBAL",TWELVE_HOURS)
SetGlobal("TerminselSpawn","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",2)
~ GOTO 421
END

IF ~~ THEN BEGIN 419 // from: 418.1 418.0
  SAY #27760 /* ~Nothing to be said. Always err on the side of caution. A wise policy; not everyone shares it.~ */
  IF ~~ THEN GOTO 420
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #27761 /* ~Let's go now. We've justice to attend to.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 421 // from: 418.2
  SAY #27764 /* ~I slept well enough. Better than I should have liked. Come, we've not time for this prattling about. We've still a task to do.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 422 // from: 417.0
  SAY #27766 /* ~Shhh, nothing to be said. Let's get going now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 423 // from: 417.1
  SAY #27767 /* ~Neither did you, so pipe down. Let's get going.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 424 // from: 17.0
  SAY #37385 /* ~You are not even worthy of the lowest sponges; they remain nature's children in their lowest of forms while you degrade yourself by choice!~ */
  IF ~~ THEN EXTERN ~CERND~ 25
END

IF ~~ THEN BEGIN 425 // from:
  SAY #56254 /* ~Have some backbone, girl. Do not wilt like a flower and expect him to pick you up. Have some respect for yourself.~ [JAHEIRI5] */
  IF ~~ THEN EXTERN ~BAERIE~ 419
END

IF ~~ THEN BEGIN 426 // from:
  SAY #56256 /* ~I suggest you forget your scars, child. Life has treated you harshly, but it will be harsher still if you cannot get over your loss.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 420
END

IF ~~ THEN BEGIN 427 // from:
  SAY #56275 /* ~None of our travels have been overly pleasant, child. If your view is that we are on some carefree outing, you are desperately in need of correction.~ [JAHEIRF6] */
  IF ~~ THEN EXTERN ~BAERIE~ 424
END

IF ~~ THEN BEGIN 428 // from:
  SAY #56277 /* ~Bitter and nagging, am I? Better that than a wide-eyed doe with no sense to realize the universe does not revolve around her. Experience will bring perspective, I imagine.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 425
END

IF ~~ THEN BEGIN 429 // from:
  SAY #56298 /* ~Oh, come now, child. I have been listening to your simpering for quite some time, and it begins to grate on my nerves. You are in this group to help, as I recall... pull yourself together!~ [JAHEIRF7] */
  IF ~~ THEN EXTERN ~BAERIE~ 429
END

IF ~~ THEN BEGIN 430 // from:
  SAY #56303 /* ~I... I do no such thing! You are mad, girl! Obviously, a life of adventuring is too much for you.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 430
END

IF ~~ THEN BEGIN 431 // from:
  SAY #56305 /* ~You cross a line, Aerie. You do not know enough about love to question my love for Khalid. Mention his name again, and you shall regret it.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 428
END

IF ~~ THEN BEGIN 432 // from:
  SAY #56323 /* ~If you continue to cry in such a fashion while we are attempting to help him on his quest, then you are indeed useless! For the last time: Pull yourself together, girl!~ [JAHEIRF8] */
  IF ~~ THEN EXTERN ~BAERIE~ 437
END

IF ~~ THEN BEGIN 433 // from:
  SAY #56325 /* ~I warned you before, girl! You know nothing of my Khalid, and I will not tolerate your speaking of him!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 438
END

IF ~~ THEN BEGIN 434 // from:
  SAY #56327 /* ~I never said he was! And I will not have a foolish girl disparage my dead husband regardless of what you think my intentions towards <CHARNAME> are!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 439
END

IF ~~ THEN BEGIN 435 // from:
  SAY #56329 /* ~You are being foolish. This is obviously some attempt to gather <CHARNAME>'s attentions. <CHARNAME>, I suggest you let the girl down easy before more harm is done.~ */
  IF ~~ THEN REPLY #56330 /* ~I think she's right. You're the one who's jealous, Jaheira. Just cool down... you and I are only friends.~ */ GOTO 436
  IF ~~ THEN REPLY #56331 /* ~I happen to like Aerie, Jaheira. I'll do no such thing.~ */ GOTO 437
  IF ~~ THEN REPLY #56332 /* ~Perhaps you're right. Aerie... you do know that I don't have any feelings like that for you, right?~ */ EXTERN ~BAERIE~ 440
  IF ~~ THEN REPLY #56333 /* ~Easy? Aerie: Back off. Khalid doesn't deserve to be attacked, and neither does Jaheira! That's enough out of you!~ */ GOTO 438
END

IF ~~ THEN BEGIN 436 // from: 435.0
  SAY #56334 /* ~I... I never implied otherwise, <CHARNAME>. We have simply been through so much, I thought... well, it does not matter. I shall leave the girl in your hands, then.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~BAERIE~ 434
END

IF ~~ THEN BEGIN 437 // from: 435.1
  SAY #56335 /* ~*sigh* Then it is up to you to help her, <CHARNAME>, if you have such feelings. I shall stay out of it... and away from you. Obviously, our friendship upsets her.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~BAERIE~ 434
END

IF ~~ THEN BEGIN 438 // from: 435.3
  SAY #56337 /* ~Ach, <CHARNAME>... I said easy...~ */
  IF ~~ THEN EXTERN ~BAERIE~ 436
END

IF ~~ THEN BEGIN 439 // from:
  SAY #56338 /* ~Hmph. We are meant to find this a revelation, coming from you? It might surprise you to find that most would consider you without redeeming qualities either, drow.~ [JAHEIRI2] */
  IF ~~ THEN EXTERN ~BVICONI~ 551
END

IF ~~ THEN BEGIN 440 // from:
  SAY #56340 /* ~Yet you speak them loudly enough for everyone to hear. Perhaps a little longer attached to that stake might have improved your outlook.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 552
END

IF ~~ THEN BEGIN 441 // from:
  SAY #56348 /* ~You spit your venom in so many directions, drow, I find it surprising that you think none would fall on him. Perhaps you think your motives are not transparent.~ [JAHEIRI3] */
  IF ~~ THEN EXTERN ~BVICONI~ 554
END

IF ~~ THEN BEGIN 442 // from:
  SAY #56350 /* ~Utter his name not, drow. I'll not have you defile his memory, I warn you.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 555
END

IF ~~ THEN BEGIN 443 // from:
  SAY #56352 /* ~Enough! Enough! Khalid would never... I would never... enough! I will not tolerate this; I swear I will kill you!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 556
END

IF ~~ THEN BEGIN 444 // from:
  SAY #56374 /* ~Are we to be entertained by another of your stories, drow? No doubt they consist of little but one set of lies strung to another. Why you bother is beyond me.~ [JAHEIRI4] */
  IF ~~ THEN EXTERN ~BVICONI~ 563
END

IF ~~ THEN BEGIN 445 // from:
  SAY #56385 /* ~Jealous? I am <CHARNAME>'s friend. I would warn him of a nearby snake readying to attack the same I would warn him away from your lascivious attentions.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 564
END

IF ~~ THEN BEGIN 446 // from:
  SAY #56386 /* ~Khalid would not begrudge my moving on! You hold yourself in such high esteem? You think <CHARNAME> would find such a soulless harlot as yourself attractive?~ */
  IF ~~ THEN GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #56387 /* ~What say you, <CHARNAME>? I give fair warning of this serpent's intentions. Warn her off before she entwines her way around your heart and it is too late.~ */
  IF ~~ THEN REPLY #56388 /* ~I'll do as I like with Viconia, Jaheira. Back off.~ */ GOTO 448
  IF ~~ THEN REPLY #56389 /* ~I value your opinion, Jaheira. Consider me duly warned.~ */ GOTO 449
  IF ~~ THEN REPLY #56390 /* ~I have no feelings of that kind for Viconia... surely she knows that, although I mean no offense.~ */ EXTERN ~BVICONI~ 565
  IF ~~ THEN REPLY #56391 /* ~Hah! I could never love such a heartless bitch! Don't even worry about it!~ */ EXTERN ~BVICONI~ 565
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #56392 /* ~So be it. Obviously, your tastes lie where I did not anticipate. Enjoy your pleasures while you may, then, <CHARNAME>. I'll not be there to bail you out.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~BVICONI~ 566
END

IF ~~ THEN BEGIN 449 // from: 447.1
  SAY #56393 /* ~But you will do nothing about it? I see. Then I shall leave you to her tender mercies, if that is what you prefer, and you shall hear no "I-told-you-so's" from me.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~BVICONI~ 566
END

IF ~~ THEN BEGIN 450 // from:
  SAY #56398 /* ~My words were for him, drow. You shall know I am addressing you if I spit in your direction.~ [JAHEIRF9] */
  IF ~~ THEN EXTERN ~BVICONI~ 568
END

IF ~~ THEN BEGIN 451 // from:
  SAY #56400 /* ~<CHARNAME>'s and my own relationship is none of your concern, if you could even conceive of such a notion. I shall speak to him, and you will be silent.~ */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 452 // from:
  SAY #56402 /* ~What has gotten into you, Aerie? I would not expect you to leap upon me so for a simple statement.~ [JAHEIRG1] */
  IF ~~ THEN EXTERN ~BAERIE~ 447
END

IF ~~ THEN BEGIN 453 // from:
  SAY #56404 /* ~Perhaps experience in the real world will serve to give you perspective. Not that I would wish to nag you away from your spite; excuse me.~ */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 454 // from: 8.0
  SAY #60894 /* ~You're young, Aerie... You'll figure it out soon enough.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 455 // from: 108.1
  SAY #60895 /* ~I... I am sorry. I did not wish to disturb you with this. In my... my dream, we WERE under attack, in a battle we had long since won, but it was different.~ */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 456 // from: 137.0 132.0
  SAY #60896 /* ~Ah, I understand. Most of us would tend towards equilibrium. It would require effort to pull in one direction or another. ~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 457 // from: 138.0
  SAY #60897 /* ~He did not dwell on things and wished I would not either. I wonder what...~ */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 458 // from: 152.0
  SAY #60898 /* ~A royal house of Tethyr devastated by murder and death, specifically seven princesses that met their end on the same night.~ */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 459 // from: 227.0
  SAY #60916 /* ~Nature, though I guess we are not all born to our proper station. If you were, I would have gladly helped my Harper kin in your capture.~ */
  IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 460 // from: 386.2
  SAY #62036 /* ~True, true. But we have traveled so much... and when we last stepped into nature's heart, I did not even notice it. That... bothered me, <CHARNAME>. I should not forget what nature means to me.~ */
  IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 461 // from:
  SAY #98777 /* ~Why do you ask?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 33
END

IF ~~ THEN BEGIN 462 // from:
  SAY #98779 /* ~I am fine, Rasaad. I was just thinking...~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 34
END

IF ~~ THEN BEGIN 463 // from:
  SAY #98782 /* ~My husband, Khalid.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 36
END

IF ~~ THEN BEGIN 464 // from:
  SAY #98784 /* ~No, don't. I could use the company.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 37
END

IF ~~ THEN BEGIN 465 // from:
  SAY #98786 /* ~Few did. ~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 38
END

IF ~~ THEN BEGIN 466 // from:
  SAY #98788 /* ~He could be... difficult. But he was a good man. A strong man.~ */
  IF ~~ THEN REPLY #98789 /* ~He is missed.~ */ GOTO 472
  IF ~~ THEN REPLY #98790 /* ~He loved you dearly, Jaheira.~ */ GOTO 469
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN REPLY #98791 /* ~A dead man.~ */ EXTERN ~BIMOEN2~ 5
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Korgan")
~ THEN REPLY #98791 /* ~A dead man.~ */ EXTERN ~BKORGAN~ 134
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Korgan")
~ THEN REPLY #98791 /* ~A dead man.~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.4
  SAY #98794 /* ~Is that how Gorion raised you, <CHARNAME>? I think he would be ashamed to see what you have become.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 39
END

IF ~~ THEN BEGIN 468 // from:
  SAY #98796 /* ~Nor have you. <CHARNAME>'s the one who reopened the wound.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 40
END

IF ~~ THEN BEGIN 469 // from: 466.1
  SAY #98797 /* ~And I, him.~ */
  IF ~~ THEN REPLY #98798 /* ~I remember when you were separated at Bridgefort. I don't think I've ever seen you so upset.~ */ GOTO 470
END

IF ~~ THEN BEGIN 470 // from: 472.0 469.0
  SAY #98799 /* ~That was a... trying time. And we weren't to have much time after it.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 40
END

IF ~~ THEN BEGIN 471 // from:
  SAY #98801 /* ~I try, Rasaad. I try every day.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 472 // from: 466.0
  SAY #98802 /* ~Dearly missed.~ */
  IF ~~ THEN REPLY #98803 /* ~I remember when you were separated at Bridgefort. I don't think I've ever seen you so upset.~ */ GOTO 470
END

IF WEIGHT #43 ~  IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Dorn")
!AreaType(DUNGEON)
Global("OHD_jaheira","GLOBAL",0)
~ THEN BEGIN 473 // from:
  SAY #99664 /* ~This has gone on too long, <CHARNAME>. I can stand no more.~ */
  IF ~~ THEN REPLY #99665 /* ~You have a problem, Jaheira?~ */ DO ~SetGlobal("OHD_jaheira","GLOBAL",1)
~ GOTO 474
  IF ~~ THEN REPLY #99666 /* ~I'd probably agree if I had any idea what you were talking about.~ */ DO ~SetGlobal("OHD_jaheira","GLOBAL",1)
~ GOTO 474
  IF ~~ THEN REPLY #99667 /* ~I'm sorry to hear that. Though not, I suspect, as sorry as I'll be to find out what you can no longer stand.~ */ DO ~SetGlobal("OHD_jaheira","GLOBAL",1)
~ GOTO 474
END

IF ~~ THEN BEGIN 474 // from: 473.2 473.1 473.0
  SAY #99668 /* ~This blackguard is an affront to the natural order. He is an aberration, spreading evil and chaos, and I'll tolerate it no longer.~ */
  IF ~~ THEN EXTERN ~BDORN~ 49
END

IF ~~ THEN BEGIN 475 // from:
  SAY #99670 /* ~I hardly think that is possible.~ */
  IF ~~ THEN EXTERN ~BDORN~ 50
END

IF ~~ THEN BEGIN 476 // from:
  SAY #99672 /* ~There is nothing natural in you, half-orc.~ */
  IF ~~ THEN EXTERN ~BDORN~ 51
END

IF ~~ THEN BEGIN 477 // from:
  SAY #99674 /* ~You are a poison. Even your words are toxic.~ */
  IF ~~ THEN EXTERN ~BDORN~ 52
END

IF ~~ THEN BEGIN 478 // from:
  SAY #102017 /* ~I heard that, Edwin.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 120
  IF ~  InParty("Viconia")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 589
END

IF WEIGHT #52 /* Triggers after states #: 482 even though they appear after this state */
~  IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_jaheira","GLOBAL",0)
~ THEN BEGIN 479 // from:
  SAY #99192 /* ~You should know that I neither trust nor like you, Hexxat.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_jaheira","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 72
END

IF ~~ THEN BEGIN 480 // from:
  SAY #99194 /* ~<CHARNAME> seems to like you well enough, and I have great respect for <PRO_HIMHER>.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 73
END

IF ~~ THEN BEGIN 481 // from:
  SAY #99196 /* ~I know you did not seek to become what you are. I will try to look past it as best I can.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 74
END

IF WEIGHT #45 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("JAHEIRA")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_jaheira","GLOBAL",0)
~ THEN BEGIN 482 // from:
  SAY #88584 /* ~I am curious, Neera. What does a wild surge feel like?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_jaheira","GLOBAL",1)
~ EXTERN ~BNEERA~ 65
END

IF ~~ THEN BEGIN 483 // from:
  SAY #88586 /* ~Not the same, I am sure. I may feel wrath if the nature of my spell is violent, or calm if it is for healing. Beneath it all, I feel a oneness with nature that never changes.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 66
END

IF ~~ THEN BEGIN 484 // from:
  SAY #88588 /* ~Why? You have this sense of oneness when you use magic?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 67
END

IF ~~ THEN BEGIN 485 // from:
  SAY #88590 /* ~And when it's not?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 68
END

IF ~~ THEN BEGIN 486 // from:
  SAY #88592 /* ~That sounds... unsafe.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 69
END

IF ~~ THEN BEGIN 487 // from:
  SAY #88594 /* ~We are not talking about wind and windows. We are talking about power and your mind. Be careful of that glass.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 488 // from:
  SAY #88704 /* ~Do not bully her, ranger.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 101
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~BANOMEN~ 613
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~BKELDOR~ 173
END

IF ~~ THEN BEGIN 489 // from:
  SAY #88749 /* ~Anomen! I am almost embarrassed to request marzipan; it is so excessively sweet. But I do like it.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 177
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~BNALIA~ 72
  IF ~  IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~BMAZZY~ 153
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~BVICONI~ 610
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~BAERIE~ 477
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~BIMOEN2~ 34
END
