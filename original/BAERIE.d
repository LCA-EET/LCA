// creator  : weidu (version 24900)
// argument : BAERIE.DLG
// game     : .
// source   : ./override/BAERIE.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BAERIE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #422 /* ~Yes, civilization is—is still a bit frightening, though.~ [AERIE61] */
  IF ~~ THEN EXTERN ~BMAZZY~ 29
END

IF ~~ THEN BEGIN 1 // from:
  SAY #423 /* ~Challenge myself?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 30
END

IF ~~ THEN BEGIN 2 // from:
  SAY #424 /* ~How can you tell whom to trust, Mazzy?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 31
END

IF ~~ THEN BEGIN 3 // from:
  SAY #425 /* ~I—I'll do what I can, Mazzy... I know I can always trust you.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 32
END

IF ~~ THEN BEGIN 4 // from:
  SAY #675 /* ~Y-yes—yes, sir.~ [AERIE57] */
  IF ~~ THEN EXTERN ~BJAN~ 10
END

IF ~~ THEN BEGIN 5 // from:
  SAY #676 /* ~A... A griffon-baiter?~ */
  IF ~~ THEN EXTERN ~BJAN~ 11
END

IF ~~ THEN BEGIN 6 // from:
  SAY #677 /* ~Oh, I didn't think you could tame a wyvern. ~ */
  IF ~~ THEN EXTERN ~BJAN~ 12
END

IF ~~ THEN BEGIN 7 // from:
  SAY #678 /* ~Why, that's ridiculous!~ */
  IF ~~ THEN EXTERN ~BJAN~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #679 /* ~I... I wish I could fly. I haven't since I was a—since I was a kid.~ */
  IF ~~ THEN EXTERN ~BJAN~ 15
END

IF ~~ THEN BEGIN 9 // from:
  SAY #1368 /* ~I like how you always pretend people are birds.~ [AERIE47] */
  IF ~~ THEN EXTERN ~BHAERDA~ 162
END

IF ~~ THEN BEGIN 10 // from:
  SAY #1369 /* ~You promise?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 16
END

IF ~~ THEN BEGIN 11 // from:
  SAY #2596 /* ~Ugh! It—it hurts, Nalia.~ [AERIE66] */
  IF ~~ THEN EXTERN ~BNALIA~ 14
END

IF ~~ THEN BEGIN 12 // from:
  SAY #2617 /* ~It's all right, I can—I shall heal myself.~ */
  IF ~~ THEN DO ~Spell(Myself,CLERIC_CURE_LIGHT_WOUNDS)
~ EXTERN ~BNALIA~ 15
END

IF WEIGHT #32 /* Triggers after states #: 19 28 66 71 84 87 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("BAerie2","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #2620 /* ~Nalia?~ [AERIE48] */
  IF ~~ THEN DO ~SetGlobal("BAerie2","LOCALS",1)
~ EXTERN ~BNALIA~ 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #2622 /* ~How come you care so much for people?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #2625 /* ~What has to start?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 18
END

IF ~~ THEN BEGIN 16 // from:
  SAY #2627 /* ~But don't the gods choose our destinies?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 19
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2634 /* ~I—I'm sorry, <CHARNAME>, it... it won't happen again.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 1
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2636 /* ~Please, Yoshimo, just let me—let me gather up my belongings.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 2
END

IF WEIGHT #25 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
TimeGT(5)
TimeLT(8)
Global("BAerie3","LOCALS",0)
~ THEN BEGIN 19 // from:
  SAY #2638 /* ~Look, Anomen, the sun is rising...~ [AERIE49] */
  IF ~~ THEN DO ~SetGlobal("BAerie3","LOCALS",1)
~ EXTERN ~BANOMEN~ 0
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2640 /* ~What do you mean?~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 1
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2642 /* ~Are you... are you scared about your test at all?~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 2
END

IF ~~ THEN BEGIN 22 // from:
  SAY #2647 /* ~I used to want to be a—an actress.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 3
END

IF ~~ THEN BEGIN 23 // from:
  SAY #2652 /* ~No, sir.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 4
END

IF ~~ THEN BEGIN 24 // from:
  SAY #2654 /* ~Yes—yes, sir.~ [AERIE57] */
  IF ~~ THEN EXIT
END

IF WEIGHT #33 /* Triggers after states #: 28 66 71 84 87 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("BAerie4","LOCALS",0)
~ THEN BEGIN 25 // from:
  SAY #2655 /* ~Anomen... I... I've been watching you since you failed your Test, and... you... you're starting to scare me a little, I—I think...~ [AERIE50] */
  IF ~~ THEN DO ~SetGlobal("BAerie4","LOCALS",1)
~ EXTERN ~BANOMEN~ 5
END

IF ~~ THEN BEGIN 26 // from:
  SAY #2657 /* ~Just because you failed your Test doesn't mean you have to abandon everything good about the Order, does it? I mean... you were almost a paladin!~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 6
END

IF ~~ THEN BEGIN 27 // from:
  SAY #2660 /* ~But Anomen-~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 7
END

IF WEIGHT #26 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 even though they appear after this state */
~  AreaCheck("AR0607")
InParty("Keldorn")
See("Keldorn")
Global("BAerie5","LOCALS",0)
~ THEN BEGIN 28 // from:
  SAY #2706 /* ~Coming back here seems so strange, Keldorn. One moment it makes me happy, and... and the next it just leaves me sad all over.~ [AERIE51] */
  IF ~~ THEN DO ~SetGlobal("BAerie5","LOCALS",1)
~ EXTERN ~BKELDOR~ 0
END

IF ~~ THEN BEGIN 29 // from:
  SAY #2712 /* ~I... I suppose you would know, wouldn't you? I—I'm sorry, I didn't mean to bring it up that way.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #2715 /* ~Do you still love her?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 2
END

IF ~~ THEN BEGIN 31 // from:
  SAY #2750 /* ~What about you? Do you have a... a place to come home to?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 3
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2779 /* ~Torm?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 4
END

IF WEIGHT #34 /* Triggers after states #: 66 71 84 87 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  AreaType(CITY)
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("BAerie6","LOCALS",0)
~ THEN BEGIN 33 // from:
  SAY #2810 /* ~You don't seem... comfortable here.~ [AERIE52] */
  IF ~~ THEN DO ~SetGlobal("BAerie6","LOCALS",1)
~ EXTERN ~BCERND~ 6
END

IF ~~ THEN BEGIN 34 // from:
  SAY #2812 /* ~What is there to understand? Cities are where you go when you have no place else to be.~ */
  IF ~~ THEN EXTERN ~BCERND~ 7
END

IF ~~ THEN BEGIN 35 // from:
  SAY #2852 /* ~Oh, please, Cernd. I—I would like that very much.~ */
  IF ~~ THEN EXTERN ~BCERND~ 8
END

IF ~~ THEN BEGIN 36 // from:
  SAY #2903 /* ~They're so beautiful, Cernd, and—*shiver*—and their light's so cold.~ [AERIE70] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #2904 /* ~Oh, I wish they could grow forever! How could you ever leave such a place?~ [AERIE71] */
  IF ~~ THEN EXTERN ~BCERND~ 12
END

IF ~~ THEN BEGIN 38 // from:
  SAY #2906 /* ~I can just imagine the dreams I'd have in such a place, Cernd.~ [AERIE72] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #2907 /* ~But... but it is who I am—it is how Quayle taught me.~ [AERIE46] */
  IF ~~ THEN EXTERN ~BVALYGA~ 1
END

IF ~~ THEN BEGIN 40 // from:
  SAY #2910 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #2912 /* ~Eek!~ [AERIE58] */
  IF ~~ THEN DO ~MoveToObject(Player1)
SetGlobal("KorganAerieGrump","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #2915 /* ~I—I tried my—my best, sir.~ [AERIE59] */
  IF ~~ THEN EXTERN ~BKORGAN~ 33
END

IF ~~ THEN BEGIN 43 // from:
  SAY #2918 /* ~You are a filthy and horrible little man, Korgan! If he's—if he's still with us this time tomorrow, I'm going back to the circus!~ [AERIE60] */
  IF ~~ THEN EXTERN ~BKORGAN~ 35
END

IF WEIGHT #40 /* Triggers after states #: 54 63 66 71 84 87 96 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 449 469 473 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("CDAerieJanBanter","LOCALS",0)
~ THEN BEGIN 44 // from:
  SAY #2920 /* ~Jan, how come you're always telling stories?~ */
  IF ~~ THEN DO ~SetGlobal("CDAerieJanBanter","LOCALS",1)
~ EXTERN ~BJAN~ 69
END

IF ~~ THEN BEGIN 45 // from:
  SAY #2923 /* ~A dragon? Really?~ */
  IF ~~ THEN EXTERN ~BJAN~ 70
END

IF ~~ THEN BEGIN 46 // from:
  SAY #2927 /* ~Me? Oh no, not that...~ */
  IF ~~ THEN EXTERN ~BJAN~ 71
END

IF ~~ THEN BEGIN 47 // from:
  SAY #2929 /* ~Oh my! Was it the dragon?~ */
  IF ~~ THEN EXTERN ~BJAN~ 72
END

IF ~~ THEN BEGIN 48 // from:
  SAY #2931 /* ~No, I can imagine it just fine, Mister Jansen.~ */
  IF ~~ THEN EXTERN ~BJAN~ 73
END

IF ~~ THEN BEGIN 49 // from:
  SAY #2933 /* ~Whatever happened?~ */
  IF ~~ THEN EXTERN ~BJAN~ 74
END

IF ~~ THEN BEGIN 50 // from:
  SAY #2935 /* ~Always wipe your lenses?~ */
  IF ~~ THEN EXTERN ~BJAN~ 75
END

IF ~~ THEN BEGIN 51 // from:
  SAY #2937 /* ~And your grandmother, did he make her a new lens-hat so she could finally see?~ */
  IF ~~ THEN EXTERN ~BJAN~ 76
END

IF ~~ THEN BEGIN 52 // from:
  SAY #2942 /* ~I'm a healer too, Jaheira.~ [AERIE68] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 4
END

IF ~~ THEN BEGIN 53 // from:
  SAY #2944 /* ~Y-yes, ma'am.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 5
END

IF WEIGHT #35 /* Triggers after states #: 66 71 84 87 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("BAerie7","LOCALS",0)
~ THEN BEGIN 54 // from:
  SAY #2946 /* ~This... this light makes your hair look really pretty, Jaheira.~ [AERIE53] */
  IF ~~ THEN DO ~SetGlobal("BAerie7","LOCALS",1)
~ EXTERN ~BJAHEIR~ 6
END

IF ~~ THEN BEGIN 55 // from:
  SAY #2948 /* ~But—~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 7
END

IF ~~ THEN BEGIN 56 // from:
  SAY #2950 /* ~But we can go to the priests and—and they raise us from the dead again, as good as new, can't we?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 8
END

IF ~~ THEN BEGIN 57 // from:
  SAY #2953 /* ~I—I don't know what you're after, drow. Just—just stay away from me.~ [AERIE44] */
  IF ~~ THEN EXTERN ~BVICONI~ 1
END

IF ~~ THEN BEGIN 58 // from:
  SAY #2955 /* ~Get away from me, Viconia! I—I want nothing to do with your type, and you'll not get me down there!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #3044 /* ~Really?~ [AERIE62] */
  IF ~~ THEN EXTERN ~BMAZZY~ 64
END

IF ~~ THEN BEGIN 60 // from:
  SAY #3048 /* ~I... I don't have my wings anymore, Mazzy, and... and I'm never going to get them back. They're gone.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 65
END

IF ~~ THEN BEGIN 61 // from:
  SAY #3050 /* ~But it won't give me wings...~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 66
END

IF ~~ THEN BEGIN 62 // from:
  SAY #3056 /* ~I... I see, Mazzy... And—and thank you.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 67
END

IF WEIGHT #36 /* Triggers after states #: 66 71 84 87 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BAerie9","LOCALS",0)
~ THEN BEGIN 63 // from:
  SAY #3070 /* ~Why do you talk to yourself, Edwin?~ [AERIE54] */
  IF ~~ THEN EXTERN ~BEDWIN~ 0
END

IF ~~ THEN BEGIN 64 // from:
  SAY #3072 /* ~I—I was just wondering when I get to meet him.~ */
  IF ~~ THEN DO ~SetGlobal("BAerie9","LOCALS",1)
~ EXTERN ~BEDWIN~ 1
END

IF ~~ THEN BEGIN 65 // from:
  SAY #3082 /* ~Edwin! Hold your—hold your ground, and I shall try to heal you!~ [AERIE73] */
  IF ~~ THEN EXTERN ~BEDWIN~ 3
END

IF WEIGHT #27 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 even though they appear after this state */
~  Gender(Player1,FEMALE)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("BAerie10","LOCALS",0)
~ THEN BEGIN 66 // from:
  SAY #3096 /* ~*giggle* It's—it is nice to have a woman in charge for a change. Men always steal the blankets! *giggle*~ [AERIEB2] */
  IF ~~ THEN REPLY #3097 /* ~You slept well then?~ */ DO ~SetGlobal("BAerie10","LOCALS",1)
~ GOTO 67
  IF ~~ THEN REPLY #3098 /* ~And what do you know of men?~ */ DO ~SetGlobal("BAerie10","LOCALS",1)
~ GOTO 68
  IF ~~ THEN REPLY #3099 /* ~Women can steal the blankets too, you know.~ */ DO ~SetGlobal("BAerie10","LOCALS",1)
~ GOTO 69
  IF ~~ THEN REPLY #3100 /* ~Men will steal more than the blankets if you let them, sister.~ */ DO ~SetGlobal("BAerie10","LOCALS",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #3101 /* ~I—I had a dream that I had wings again and was resting my head on the cloudy peaks of home. Oh, <CHARNAME>, it was just beautiful.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.1
  SAY #3102 /* ~Not... Not very much at all, <CHARNAME>, but if I find one kind enough to share the blankets on a cold night, I think I would... I think I would like him very much.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from: 66.2
  SAY #3103 /* ~Aye, but you didn't. Haha, this is going to be a good day, I can already feel it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.3
  SAY #3104 /* ~Well, first they have to learn that they can have whatever they want if they just don't steal the covers when the nights get cold!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #28 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 even though they appear after this state */
~  TimeGT(20)
TimeLT(23)
AreaType(FOREST)
See(Player1)
Global("BAerie11","LOCALS",0)
~ THEN BEGIN 71 // from:
  SAY #3105 /* ~The—the sunsets are so much prettier here than in the city... don't you think?~ [AERIEB3] */
  IF ~~ THEN REPLY #3108 /* ~Growing up in Candlekeep, I would scale the ramparts in the evenings to watch the sun fall into the sea...~ */ DO ~SetGlobal("BAerie11","LOCALS",1)
~ GOTO 72
  IF ~~ THEN REPLY #3109 /* ~True... there are not so many buildings to obstruct the view.~ */ DO ~SetGlobal("BAerie11","LOCALS",1)
~ GOTO 73
  IF ~~ THEN REPLY #3110 /* ~It will be dark soon. The last thing I want is to be ambushed while mooning over some foolish sunset.~ */ DO ~SetGlobal("BAerie11","LOCALS",1)
~ GOTO 74
  IF ~~ THEN REPLY #3115 /* ~You are a hopeless romantic. Halt, everyone! Let us face west and have a moment's silence for the fading sun!~ */ DO ~SetGlobal("BAerie11","LOCALS",1)
~ GOTO 75
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #3122 /* ~Our... Our childhoods were not so different, were they...?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #3123 /* ~Aye, but even the colors are richer here... I—I could stay here forever, I think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.2
  SAY #3126 /* ~I—I wasn't mooning! I was— I was— Oh, never mind, let it grow dark, then!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.3
  SAY #3127 /* ~Ha! It's... It's infectious, isn't it?~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #41 /* Triggers after states #: 84 87 96 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 449 469 473 even though they appear after this state */
~  InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("CDAerieMinscBanter","LOCALS",0)
AreaType(FOREST)
~ THEN BEGIN 76 // from:
  SAY #3137 /* ~Isn't the... Isn't the forest wonderful, Minsc? All the birds flying about, making you dizzy!~ */
  IF ~~ THEN DO ~SetGlobal("CDAerieMinscBanter","LOCALS",1)
~ EXTERN ~BMINSC~ 18
END

IF ~~ THEN BEGIN 77 // from:
  SAY #3147 /* ~Haha! But Boo likes his baths too, doesn't he?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 19
END

IF ~~ THEN BEGIN 78 // from:
  SAY #3149 /* ~Well, just make sure you don't clutch him too firmly, Minsc. Give him some... some space and room to grow.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 20
END

IF ~~ THEN BEGIN 79 // from:
  SAY #3180 /* ~You are from Rashemen? I had—I had thought such a land was the stuff of fable.~ [AERIE65] */
  IF ~~ THEN DO ~SetGlobal("BMinsc4","LOCALS",1)
~ EXTERN ~BMINSC~ 33
END

IF ~~ THEN BEGIN 80 // from:
  SAY #3183 /* ~Why would you ever travel so far from home? I—I was torn from mine and had no choice.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 34
END

IF ~~ THEN BEGIN 81 // from:
  SAY #3185 /* ~Oh, don't cry. You and Boo have fought bravely! Who could count the foes you've vanquished?! Dynaheir would be proud of you...~ */
  IF ~~ THEN EXTERN ~BMINSC~ 35
END

IF ~~ THEN BEGIN 82 // from:
  SAY #3187 /* ~If you will be my guardian, Minsc, I shall be your witch. Your dajemma has not been for nothing, and Dynaheir's death shall not go unavenged.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 36
END

IF ~~ THEN BEGIN 83 // from:
  SAY #3189 /* ~Oh! You and Boo did all you could, Minsc... Oh, cheer up, you two—I'm back, aren't I?~ [AERIE64] */
  IF ~~ THEN EXTERN ~BMINSC~ 38
END

IF WEIGHT #30 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  TimeOfDay(NIGHT)
InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
GlobalLT("HaerDalisRomance","GLOBAL",3)
Global("BAerie12","LOCALS",0)
~ THEN BEGIN 84 // from:
  SAY #3197 /* ~Is there a moon in Sigil?~ [AERIE55] */
  IF ~~ THEN DO ~SetGlobal("BAerie12","LOCALS",1)
~ EXTERN ~BHAERDA~ 35
END

IF ~~ THEN BEGIN 85 // from:
  SAY #3210 /* ~I have been to too many cities and... and every one of them the same. The moon is better because it's always changing.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 36
END

IF ~~ THEN BEGIN 86 // from:
  SAY #3215 /* ~You don't have to trade a city for it... I want to smile and—and you make it so easy, Haer'Dalis.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 37
END

IF WEIGHT #31 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  CheckStatGT("Aerie",5,FATIGUE)
OR(2)
TimeGT(DUSK_END)
TimeLT(5)
!AreaType(CITY)
!AreaType(DUNGEON)
See(Player1)
Global("BAerie13","LOCALS",0)
~ THEN BEGIN 87 // from:
  SAY #3220 /* ~Please, it is so dark... and late... and I am so tired. Is there no chance that we might stop and rest for a while?~ [AERIEB4] */
  IF ~~ THEN REPLY #3226 /* ~It's just a little dark, Aerie... there's nothing to be afraid of.~ */ DO ~SetGlobal("BAerie13","LOCALS",1)
~ GOTO 88
  IF ~~ THEN REPLY #3227 /* ~Aye, in a while yet. There is still some work here that we must finish.~ */ DO ~SetGlobal("BAerie13","LOCALS",1)
~ GOTO 89
  IF ~~ THEN REPLY #3228 /* ~Certainly. We shall set up camp right here.~ */ DO ~SetGlobal("BAerie13","LOCALS",1)
~ GOTO 90
  IF ~~ THEN REPLY #3229 /* ~Nonsense, Aerie. I won't have your foolishness slow us down.~ */ DO ~SetGlobal("BAerie13","LOCALS",1)
~ GOTO 91
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #3230 /* ~I—I'm not scared... I'm only tired, and maybe a little unused to traveling so late at night. N-never mind... I'll be fine...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from: 87.1
  SAY #3231 /* ~All right, but don't take long... You may think me silly, but I... I am just unused to traveling so late at night...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from: 87.2
  SAY #3232 /* ~Thank you... I... I'll try not to be such a bother. I'm just... unused to traveling in such darkness...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 87.3
  SAY #3233 /* ~I—I'm sorry, I just have a... a bad feeling...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #6932 /* ~Edwin! You scared me, imagine that... Oh, you wouldn't believe how silly you look... Now what—what do you want?~ [AERIE63] */
  IF ~~ THEN EXTERN ~BEDWIN~ 76
END

IF ~~ THEN BEGIN 93 // from:
  SAY #6995 /* ~Tee hee! No, you're not, you're standing just like the rest of us! ...And honestly, what is there to heal? Next time... you'll be more careful how you word your wishes, won't you?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 77
END

IF ~~ THEN BEGIN 94 // from:
  SAY #7512 /* ~What? Where did that emerge from, spellbinder? What have I done to you?~ [AERIE67] */
  IF ~~ THEN EXTERN ~BEDWIN~ 23
END

IF ~~ THEN BEGIN 95 // from:
  SAY #8628 /* ~Viconia, why are you so cruel? There's absolutely no reason to be so foul and petty, no reason at all!~ [AERIE45] */
  IF ~~ THEN EXTERN ~BVICONI~ 21
END

IF WEIGHT #37 /* Triggers after states #: 103 112 124 130 139 152 167 193 201 211 218 224 232 240 270 294 302 306 313 324 335 341 351 364 373 473 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BAerie18","LOCALS",0)
~ THEN BEGIN 96 // from:
  SAY #11142 /* ~Keldorn, do... do you have a moment?~ [AERIE56] */
  IF ~~ THEN DO ~SetGlobal("BAerie18","LOCALS",1)
~ EXTERN ~BKELDOR~ 69
END

IF ~~ THEN BEGIN 97 // from:
  SAY #11214 /* ~I... Quayle taught me to be a cleric, but—but I know so little of the world... He taught me to worship Baervan Wildwanderer, god of the gnomes...~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 70
END

IF ~~ THEN BEGIN 98 // from:
  SAY #11248 /* ~I remember a few of the elven gods, but... oh, it was so long ago. And here I am, neither elf nor gnome nor human in my beliefs but a—a hodge-podge of them all... Am I wrong to be that way, Keldorn?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 71
END

IF ~~ THEN BEGIN 99 // from:
  SAY #11256 /* ~My heart?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 140
END

IF ~~ THEN BEGIN 100 // from:
  SAY #11267 /* ~Oh, thank you, Keldorn... One of these days, you'll have to teach me all the things you say I've learned.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 73
END

IF ~~ THEN BEGIN 101 // from:
  SAY #20104 /* ~I am not weak, Jaheira, and you were as likely to be hurt as I!~ [AERIE69] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 39
END

IF ~~ THEN BEGIN 102 // from:
  SAY #20108 /* ~So you say, but I shall not learn avoidance of such by cowering behind you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",2)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 103 // from:
  SAY #1362 /* ~My wings have been clipped... oh, how I wish you could understand how it feels to be bound to the ground, chained and weighted like a miserable prisoner of earth...~ [AERIE88] */
  IF ~~ THEN REPLY #1364 /* ~What was it like to fly, Aerie?~ */ GOTO 104
  IF ~~ THEN REPLY #1366 /* ~We're all prisoners of the earth down here.~ */ GOTO 107
  IF ~~ THEN REPLY #3248 /* ~If you're going to whine, do it somewhere else.~ */ GOTO 108
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #3251 /* ~Oh... it—it's so hard to describe. It's the ultimate freedom, to soar above the clouds and become part of the wind itself.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #3255 /* ~I remember I used to be so happy. The clouds are a special place up there, <CHARNAME>... it's like a land of billowing white beauty that you can almost walk upon.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 107.0
  SAY #3257 /* ~But I suppose that place is forever denied to me now. It... it just feels so slow and mundane to walk everywhere. I don't know how you can stand it.~ */
  IF ~~ THEN REPLY #3258 /* ~You get used to it... there's plenty of beauty on the ground as well.~ */ GOTO 109
  IF ~~ THEN REPLY #3260 /* ~It's no hardship.~ */ GOTO 110
  IF ~~ THEN REPLY #3261 /* ~Well, I would start getting used to it if I were you.~ */ GOTO 111
END

IF ~~ THEN BEGIN 107 // from: 103.1
  SAY #3262 /* ~Oh, y-yes, I know... I meant no offense to you. I just remember what it was like... to effortlessly soar through the clouds like the birds overhead. To be truly free.~ */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 103.2
  SAY #3266 /* ~I—I'm sorry, <CHARNAME>... I didn't mean to bother you. I'll talk to somebody else instead.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 106.0
  SAY #3268 /* ~Is there? All I can think of is how majestic something might look from up high. I'm sorry... you would think by now I would know better than to dwell upon it. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 110 // from: 106.1
  SAY #3271 /* ~Maybe not for you, but for me it is very different. I was born to fly. But I should not dwell on it so... you would think after all this time I had learned better. Excuse me, please...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from: 106.2
  SAY #3272 /* ~I... I have been trying for many years to get used to it, <CHARNAME>. It is not an easy thing, for one born to the skies. But... but you are right, of course. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",4)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 112 // from:
  SAY #3273 /* ~Have you... have you ever heard of my people? The avariel?~ [AERIE89] */
  IF ~~ THEN REPLY #3275 /* ~The winged elves? Very little. I thought they were all gone.~ */ GOTO 113
  IF ~~ THEN REPLY #3276 /* ~I really don't have time to discuss that right now, Aerie.~ */ GOTO 116
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #3277 /* ~Most of us were, according to what I remember my mother telling me. Killed by the dragons before the First Flowering. But some of us still survive in isolated places.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #3278 /* ~My own people live high in the mountains to the far south, in a place called Faenya-Dail, separated from contact with others. It is... was... a grand and majestic place.~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #3279 /* ~My memory is dim, but whenever the thought of it crosses my mind, my eyes still blur with tears.~ */
  IF ~~ THEN REPLY #3280 /* ~Tell me more about your people, Aerie.~ */ GOTO 117
  IF ~~ THEN REPLY #3281 /* ~Well, we should really get moving on.~ */ GOTO 116
  IF ~~ THEN REPLY #3282 /* ~Must you always be so melodramatic? It makes me ill.~ */ GOTO 123
END

IF ~~ THEN BEGIN 116 // from: 115.1 112.1
  SAY #3284 /* ~Oh... of course, <CHARNAME>. I didn't mean to bother you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from: 115.0
  SAY #3285 /* ~Our... our homes were open places of marble pillars and vistas from which you could watch the entire mountain range below. There was no place you could not spread your wings...~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #3286 /* ~We cherished the wind and the rains... we breathed in life, <CHARNAME>, and lived in peace with each other.~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #3288 /* ~There were distinct societies among us, as I remember. There were... great aerial warriors who defended us, possessing glass weapons that radiated in the sunlight...~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #3289 /* ~And my own class pursued art and knowledge, building the great buildings and filling them with glorious wonders. It... it was...~ */
  IF ~  Dead("QUAYLE")
~ THEN GOTO 121
  IF ~  !Dead("QUAYLE")
~ THEN GOTO 122
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #3290 /* ~...I am sorry, <CHARNAME>, I can speak of it no longer. I think of my lost home, and I am reminded of my poor uncle Quayle. It... it simply wrenches my heart...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.1
  SAY #3291 /* ~...I am sorry, <CHARNAME>, I can speak of it no longer. I am suddenly homesick, as silly as that seems. I miss... so much, it makes me ache. I suppose I must seem very foolish to you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123 // from: 115.2
  SAY #3292 /* ~I... I must seem very foolish to you, I suppose. I will not bother you again, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #2 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",6)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 124 // from:
  SAY #3293 /* ~I... Everyone here seems so unhappy and severe... I—I am so unused to living this way. In the circus, we always were cheerful. Or, at least, Uncle Quayle was determined to be.~ [AERIE90] */
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #3294 /* ~He used to say that a frown would never get anything useful done. I think everyone could use some cheering up... What about you, <CHARNAME>?~ */
  IF ~~ THEN REPLY #61142 /* ~Whatever. Just don't go turning anyone into a chicken or anything foolish like that.~ */ GOTO 126
  IF ~~ THEN REPLY #61143 /* ~I have more serious things to worry about, Aerie.~ */ GOTO 127
  IF ~~ THEN REPLY #61144 /* ~I think that's the stupidest thing I've ever heard.~ */ GOTO 128
  IF ~~ THEN REPLY #61145 /* ~Heh... you're probably right. If only things were so easy.~ */ GOTO 129
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #3295 /* ~*giggle* A chicken? Now, that would be a neat trick! I'll have to work on that, you silly man! Ha ha ha!~ */
  IF ~~ THEN DO ~IncrementGlobal("LoveTalk","LOCALS",1)
RealSetGlobalTimer("AerieRomance","GLOBAL",TWELVE_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 125.1
  SAY #3297 /* ~*sigh* I suppose that's true. It's too bad... Quayle used to go out of his way to make sure I laughed. Even in the worst of times. But I suppose it can't be helped.~ */
  IF ~~ THEN DO ~IncrementGlobal("LoveTalk","LOCALS",1)
RealSetGlobalTimer("AerieRomance","GLOBAL",TWELVE_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 125.2
  SAY #3299 /* ~Oh. I... I suppose it is... rather silly, after all. Quayle was, still, a... a wonderful man. But... I suppose you are not interested...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 129 // from: 125.3
  SAY #3300 /* ~Yes, I suppose your... recent life would leave little to laugh about. One day... one day this will all be over for you, <CHARNAME>. And then maybe we can *all* laugh.~ */
  IF ~~ THEN DO ~IncrementGlobal("LoveTalk","LOCALS",1)
RealSetGlobalTimer("AerieRomance","GLOBAL",TWELVE_HOURS)
~ EXIT
END

IF WEIGHT #3 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",8)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 130 // from:
  SAY #3313 /* ~I... I have been looking at the scars... on my back. The stumps that were... that were once my wings. They do not... they do not make me truly homely, do they? Am I... am I ugly to you?~ [AERIE91] */
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #3316 /* ~Of course you're not ugly, Aerie. Far from it.~ */ GOTO 131
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #3318 /* ~It would take far more than a couple of scars to hide all the other beauty you possess, Aerie.~ */ GOTO 131
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #3319 /* ~I have no time for such foolish vanity. Leave me be.~ */ GOTO 135
  IF ~  Global("ViconiaRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 537
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
Global("JaheiraRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BJAHEIR~ 425
END

IF ~~ THEN BEGIN 131 // from: 420.1 420.0 417.1 417.0 130.1 130.0
  SAY #3321 /* ~R-really? You are... very kind to say so, <CHARNAME>. I... I suppose I am too proud, that I miss my white wings so.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #3323 /* ~When I was first enslaved, I was kept in a small cage and put on display. I had no room to stand, much less stretch my wings. I... I tried to warn my captor. I pleaded to him...~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #3324 /* ~...but my wings withered and became bloody and diseased. Until, finally, he was forced to... to... saw them off. It was... it was so painful and horrid!~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #3325 /* ~I've felt like a great part of me has been missing ever since. I am incomplete. I... do not feel beautiful, <CHARNAME>. Not anymore.~ */
  IF ~~ THEN REPLY #3328 /* ~Don't be so hard on yourself, Aerie... Like I said, you're still a beautiful elf.~ */ GOTO 136
  IF ~~ THEN REPLY #3329 /* ~You placed too much of yourself in your wings, Aerie. You have to look at the rest of yourself and find beauty in that, too.~ */ GOTO 137
  IF ~~ THEN REPLY #3330 /* ~*sigh* If you're going to whine over every little thing, then just do it quietly, all right?~ */ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 420.2 417.2 130.2
  SAY #3327 /* ~Vanity? I... I suppose it is. That and my silly pride. I... I'll not bother you with such nonsense again, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #3331 /* ~You... you make me blush with such comments. It makes me wonder if you are sincere, <CHARNAME>... but I thank you nonetheless.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from: 134.1
  SAY #3332 /* ~It is... very hard for me. But I shall try to think as you say... and I thank you for your kind words.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from: 134.2
  SAY #3333 /* ~Y-yes, <CHARNAME>. I—I'm sorry to be such a bother...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #4 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",10)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 139 // from:
  SAY #3335 /* ~Have I told you of how I was captured and enslaved, initially?~ [AERIE92] */
  IF ~~ THEN REPLY #3336 /* ~No, you haven't.~ */ GOTO 140
  IF ~~ THEN REPLY #3337 /* ~No... but I have no time to hear the story now.~ */ GOTO 146
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #3338 /* ~It was... my fault, really. I was away from Faenya-Dail, flying just for the glory of it. I... spotted a large group of armed men assaulting some humans on the ground below.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #3339 /* ~They were slavers, although I didn't know that at the time. When I saw a human child crying and desperately trying to run away from them, my heart clenched with concern.~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #3340 /* ~I was distraught. My mother had always warned me to be wary of outsiders... but I did not heed her warnings this time. I flew down to aid the child, swooping to carry him away.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #3341 /* ~The child was surprised and frightened, and his struggles slowed me... enough so that a slaver struck me with an arrow. I plummeted to the ground and was knocked unconscious.~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #3342 /* ~When I awoke... I was in my cage. I was the prize of the slavers... to be sold to the highest bidder. They were pleased to sell me to the circus for a great amount of gold...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #3343 /* ~I... I suppose... I suppose I was glad to learn that the child escaped, after all. He ran away after my fall. Hopefully, he survived...~ */
  IF ~~ THEN REPLY #3344 /* ~What else could you have done? It's not your fault it turned out as it did, Aerie.~ */ GOTO 147
  IF ~~ THEN REPLY #3345 /* ~That was noble of you, if foolish.~ */ GOTO 150
  IF ~~ THEN REPLY #3346 /* ~You were an idiot to take such a risk for a child. I suppose you paid for it, however.~ */ GOTO 151
END

IF ~~ THEN BEGIN 146 // from: 139.1
  SAY #3347 /* ~Yes... I suppose now is not the time for talk. Forgive me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.0
  SAY #3348 /* ~It is, though... it was foolish of me to disregard my teachings. And I have paid for it dearly. I was bereft of my home... and then my wings, <CHARNAME>.~ */
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN GOTO 148
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN GOTO 149
END

IF ~~ THEN BEGIN 148 // from: 150.0 147.0
  SAY #3349 /* ~To be bereft of Quayle as well is almost more than I can bear. I think, sometimes, that the gods punish me for my pride. Even Baervan, my deity, gives me little comfort.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from: 150.1 147.1
  SAY #30852 /* ~I... I am glad that Quayle yet lives. And... and I have found you, <CHARNAME>. Perhaps the gods have begun to forgive my foolish pride.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 145.1
  SAY #30853 /* ~Yes, it was. I disregarded my teachings, and I have paid for it. I was taken from my home forever and bereft of my wings... a great and final punishment upon me.~ */
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN GOTO 148
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN GOTO 149
END

IF ~~ THEN BEGIN 151 // from: 145.2
  SAY #30854 /* ~I... I have paid for it, <CHARNAME>. But saving that child was all I could do! I hope he lives yet... and I cannot believe that you would be so cruel as to cast that in my face!~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",12)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 152 // from:
  SAY #30855 /* ~I miss my Uncle Quayle... I miss his presence dearly.~ [AERIE93] */
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN REPLY #30856 /* ~It's obvious that you're very close to him.~ */ GOTO 153
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN REPLY #30857 /* ~It's obvious that you were very close to him.~ */ GOTO 153
  IF ~  !Dead("Quayle")
!Dead("quaylem")
~ THEN REPLY #30858 /* ~Why don't you go back to the circus, then?~ */ GOTO 156
  IF ~  OR(2)
Dead("Quayle")
Dead("quaylem")
~ THEN REPLY #30859 /* ~He's dead, Aerie... and nothing's going to change that.~ */ GOTO 157
  IF ~~ THEN REPLY #30860 /* ~Please, no more tears, Aerie... I am quickly growing tired of this.~ */ GOTO 158
END

IF ~~ THEN BEGIN 153 // from: 157.0 156.0 152.1 152.0
  SAY #30862 /* ~Quayle befriended me when I was caged. H-he would... bring me things. To eat... or to make me more comfortable. And he would teach me sometimes.~ */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.0
  SAY #30863 /* ~He hated the owner for keeping me caged. And... and when they had to cut off my wings, he took me in. He taught me all he knew and gave me my faith in Baervan Wildwanderer.~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.0
  SAY #30864 /* ~I was happy... of a sort... while I was with him. I owe him so much.~ */
  IF ~~ THEN REPLY #30868 /* ~Baervan Wildwanderer? That is a gnomish god, isn't it?~ */ GOTO 159
  IF ~~ THEN REPLY #30870 /* ~Yes, well, let's just keep moving now.~ */ GOTO 163
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #30865 /* ~I don't mean it that way, <CHARNAME>. I... I am here because I must be... because I have to find my own way. I... simply miss Quayle still. I don't know... is that not right?~ */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 157 // from: 152.3
  SAY #30866 /* ~I... I know that, <CHARNAME>. His loss is a chill dagger in my heart. If I speak of him, it is because he was one of the rare things since my capture that had given me happiness.~ */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 158 // from: 152.4
  SAY #30867 /* ~Quayle... he was one of the rare things that gave me happiness since my enslavement. If this is so disturbing to you, then I shall not speak of it... or... or to you, for that matter.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from: 155.0
  SAY #30872 /* ~Yes. After I lost my wings, I could not bear to turn to my winged goddess, Aerdrie Faenya. I was filled with utter loss. It was Quayle who consoled me and renewed my faith.~ */
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #30873 /* ~Baervan is called the Masked Leaf... he is the gnomish god of nature. I... I know it is strange for an elf to pay him homage, but that is the way it is.~ */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #30875 /* ~I was always entranced by Quayle's tales of Baervan's escapades with his raccoon companion, Chiktikka Fastpaws. They were filled with humor and kindness, and indicative of Baervan's gentle nature.~ */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #30878 /* ~Baervan brought me my faith back... he gave me peace when I needed it most. And I shall always pay him homage in my heart. Is that so strange, <CHARNAME>?~ */
  IF ~~ THEN REPLY #30885 /* ~No, not at all.~ */ GOTO 164
  IF ~~ THEN REPLY #30886 /* ~Perhaps a little.~ */ GOTO 165
  IF ~~ THEN REPLY #30887 /* ~Yes, I think it's frighteningly odd.~ */ GOTO 166
END

IF ~~ THEN BEGIN 163 // from: 166.0 165.0 164.0 155.1
  SAY #30883 /* ~I shall think of my dear friend, then, and sing a quiet song to honor both him and Baervan while we travel.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from: 162.0
  SAY #30888 /* ~Thank you for saying so, <CHARNAME>, but I think it is a little odd. But, then, I am a flightless girl lost in a strange world. I will take what comfort I can get.~ */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 165 // from: 162.1
  SAY #30889 /* ~Ha, you are probably correct. I am a flightless elf lost in a strange land and am plenty strange myself. What I would not give, sometimes, to forget what I have known.~ */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 166 // from: 162.2
  SAY #30892 /* ~Is it so bad that it should threaten you? But, then, I am mightily odd myself. A stranger, alone and cast off from all I have known. If only... if only you could understand.~ */
  IF ~~ THEN GOTO 163
END

IF WEIGHT #6 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",14)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 167 // from:
  SAY #30894 /* ~Have you traveled much? I have been over much of Amn and Tethyr with the circus... although it was not always the most pleasant way to voyage.~ [AERIE94] */
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #30901 /* ~I have been traveling since I left Candlekeep many, many months ago.~ */ GOTO 168
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #30902 /* ~I've no wish to discuss my travels, Aerie.~ */ GOTO 172
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #30899 /* ~Don't whine to me about the circus, Aerie... my travels have not been by choice either, and likely less pleasant than yours.~ */ GOTO 173
  IF ~  Global("ViconiaRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 540
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
Global("JaheiraRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BJAHEIR~ 427
END

IF ~~ THEN BEGIN 168 // from: 425.0 423.0 167.0
  SAY #30905 /* ~I have not been that far north... the circus mainly made its way around Amn and further south. I've been to Eshpurta and Murann, among other places... but people are all the same.~ */
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #30908 /* ~They gawked at me when I was caged... pointed and were cruel. Once I was out of my cage, the people were no kinder... if it were not for Quayle, I could not have stood it.~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY #30909 /* ~I... I think I am glad, finally, to be traveling away from the staring and jeering crowds. I am away from prying eyes, voyaging freely... on the ground, at least.~ */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #30910 /* ~And... and I am glad to be traveling with you, <CHARNAME>. You have saved my life and... made me feel very welcome.~ */
  IF ~~ THEN REPLY #30913 /* ~I am glad you are here, Aerie. You've proven your worth more than once.~ */ GOTO 174
  IF ~~ THEN REPLY #30915 /* ~I would have it no other way, Aerie.~ */ GOTO 175
  IF ~~ THEN REPLY #30917 /* ~Don't flatter yourself... you're here because you're useful and that's it.~ */ GOTO 176
  IF ~~ THEN REPLY #30920 /* ~*sigh* Is this constant melodramatic gushing going to continue on much? If so, you're going to make our travels quite unbearable.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 177
END

IF ~~ THEN BEGIN 172 // from: 425.1 423.1 167.1
  SAY #30922 /* ~As you wish, <CHARNAME>. It... it was only an errant wish for talk and nothing more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from: 425.2 423.2 167.2
  SAY #30924 /* ~I... I am not whining, <CHARNAME>! I know that you have not had an easy time, but neither have I! Must you... must you be so cruel?~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 171.0
  SAY #30926 /* ~You... you are making me blush, <CHARNAME>. Th-thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from: 171.1
  SAY #30927 /* ~Nor would I, <CHARNAME>. Thank you, truly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 176 // from: 177.2 171.2
  SAY #30928 /* ~I... I see. Th-then I shall endeavor to remain useful for you, <CHARNAME>. To travel with you, if nothing else.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 177 // from: 171.3
  SAY #30930 /* ~I see... I see I was mistaken. If my presence makes it so unbearable for you, <CHARNAME>, then perhaps I should leave...~ */
  IF ~~ THEN REPLY #30931 /* ~Yes, that's probably best. It'll give me some peace for once.~ */ GOTO 178
  IF ~~ THEN REPLY #30932 /* ~Do as you like; it matters not to me.~ */ GOTO 178
  IF ~~ THEN REPLY #30933 /* ~No, don't go. You're quite useful here.~ */ GOTO 176
  IF ~~ THEN REPLY #30934 /* ~No... I apologize, Aerie. I meant nothing by it.~ */ GOTO 179
END

IF ~~ THEN BEGIN 178 // from: 177.1 177.0
  SAY #30879 /* ~Very well. G-goodbye then, <CHARNAME>.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXIT
END

IF ~~ THEN BEGIN 179 // from: 177.3
  SAY #30941 /* ~Then... then I shall stay with you. For now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY #30949 /* ~It... it is nothing, truly, Haer'Dalis. I am simply... thinking of a time when I still had my wings. Sometimes... sometimes the memory still wrenches my soul.~ [AERIE74] */
  IF ~~ THEN EXTERN ~BHAERDA~ 59
END

IF ~~ THEN BEGIN 181 // from:
  SAY #30954 /* ~Do you? I... mean no offense, Haer'Dalis, but I find that hard to believe if you have never flown.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 60
END

IF ~~ THEN BEGIN 182 // from:
  SAY #30969 /* ~That's... that was very lovely, Haer'Dalis.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 62
END

IF ~~ THEN BEGIN 183 // from:
  SAY #30971 /* ~I... th-thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 184 // from:
  SAY #30980 /* ~Oh... but you will surely laugh at me for such an admission.~ [AERIE75] */
  IF ~~ THEN EXTERN ~BHAERDA~ 64
END

IF ~~ THEN BEGIN 185 // from:
  SAY #30996 /* ~You flatter me, now, Haer'Dalis. But... yes, my mother used to tell me that I would be a fine actress. I... I used to dream of fluttering onto the great stage in Faenya-Dail...~ */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #30997 /* ~A useless dream now, I suppose. My mother is long behind me and likely thinks me dead.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 65
END

IF ~~ THEN BEGIN 187 // from:
  SAY #31005 /* ~Oh, I doubt that, truly.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 66
END

IF ~~ THEN BEGIN 188 // from:
  SAY #31007 /* ~You are funny and strange, Haer'Dalis... but I thank you for the compliments nevertheless.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 189 // from:
  SAY #31009 /* ~Oh? H-have you, Haer'Dalis? And to what manner of role shall I be subjected, then?~ [AERIE76] */
  IF ~~ THEN EXTERN ~BHAERDA~ 68
END

IF ~~ THEN BEGIN 190 // from:
  SAY #31014 /* ~That... that sounds lovely, Haer'Dalis... but it's hardly me.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 71
END

IF ~~ THEN BEGIN 191 // from:
  SAY #31016 /* ~Oh, I don't think I ever could... I don't think you know me, really...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 72
END

IF ~~ THEN BEGIN 192 // from:
  SAY #31018 /* ~You've a pretty way with words, bard. Well... I think I'll disappoint you surely, but if you wish to teach me your play, I won't object to it.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 73
END

IF WEIGHT #7 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",16)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 193 // from:
  SAY #31021 /* ~AHHH! HELP ME! HELP ME, PLEEEAAASE!~ [AERIE95] */
  IF ~~ THEN REPLY #31022 /* ~What is it, Aerie? By the gods... you're drenched with sweat! What's wrong?!~ */ GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #31023 /* ~I... *gasp*... I was having a dream. A most dreadful nightmare! Please... please sit with me for but a short while... I am shaken to my very core...~ */
  IF ~~ THEN REPLY #31025 /* ~Certainly. What was the dream about?~ */ GOTO 195
  IF ~~ THEN REPLY #31026 /* ~I've no time for this nonsense, Aerie. Pull yourself together and stop bothering me.~ */ GOTO 198
END

IF ~~ THEN BEGIN 195 // from: 194.0
  SAY #31028 /* ~*shudder* I... I was back in the circus, after my owner had decided that my wings had become too diseased. I had been lying in my cage, sweating and delirious for days...~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #31030 /* ~...his men came and pulled me out, and my wings burned so! I could barely cry out; I was so weak! And... and they began to saw off my wings... hacking at them with rusted knives!~ */
  IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #31031 /* ~*shudder* I screamed and screamed! They... hacked off... my wings and then used... torches to seal my wounds. Oh, <CHARNAME>...! *sob* Oh, <CHARNAME>, I... I...!~ */
  IF ~~ THEN REPLY #31033 /* ~It's all right, Aerie... that was a long time ago. Calm yourself...~ */ GOTO 199
  IF ~~ THEN REPLY #31034 /* ~Shhh... calm yourself. I understand.~ */ GOTO 199
  IF ~~ THEN REPLY #31035 /* ~Pull yourself together, Aerie. I grow tired of your constant tears!~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.2 194.1
  SAY #31032 /* ~I... *sob*... I didn't mean to bother you. Please forgive me... it won't happen again...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 199 // from: 197.1 197.0
  SAY #31036 /* ~It... it felt like I was there again! I can... I can still feel my wings being torn from my back...~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #31037 /* ~I... I'm sorry, <CHARNAME>. It was so long ago, I should not still be so torn. I... I must resign myself to my fate. Come... let us continue on with your journey...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",18)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 201 // from:
  SAY #31038 /* ~I have been thinking... I shall never fly again... never taste the freedom of my wings, I am sure of it. I... I don't know if I can face this wretched existence on the ground...!~ [AERIE96] */
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #31040 /* ~Life down here isn't so wretched, Aerie.~ */ GOTO 202
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #31041 /* ~Well, you're going to have to accept it, Aerie. You're going to have to find the strength to face up to it.~ */ GOTO 203
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #31042 /* ~Don't say that... we'll find some way to restore your wings, I promise!~ */ GOTO 206
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #31043 /* ~If you continue to act so weak and maudlin, then I agree... you'll never survive.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 210
  IF ~  Global("ViconiaRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 541
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
Global("JaheiraRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BJAHEIR~ 429
END

IF ~~ THEN BEGIN 202 // from: 428.0 201.0
  SAY #31044 /* ~But it IS! It is, <CHARNAME>! How could you understand, when you haven't flown in the clouds? To feel weightless and free! Ohhh, how I miss it!~ */
  IF ~~ THEN REPLY #31045 /* ~Well, your wings are gone now, aren't they? You're going to have to find the strength to face up to it!~ */ GOTO 203
  IF ~~ THEN REPLY #31046 /* ~We'll find a way to restore your wings, Aerie... I promise you that.~ */ GOTO 206
  IF ~~ THEN REPLY #31047 /* ~Well, this constant whining isn't getting you anywhere, is it?! I for one, am getting sick of it!~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 210
END

IF ~~ THEN BEGIN 203 // from: 428.1 202.0 201.1
  SAY #31048 /* ~Find the strength?! Find the strength?! How can you be so cruel as to cast that at me?! I... I am a member of a proud race... my wings were everything to me!~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #31049 /* ~I can never go back to Faenya-Dail! I could not face them without my wings! Here I am, stuck like an insect crawling on the dirt...~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #31050 /* ~And you tell me to simply be strong?! W-well... what am I supposed to be strong for?! I... I hate this existence...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 206 // from: 428.2 202.1 201.2
  SAY #31051 /* ~You promise me?! You promise?! There is no way, <CHARNAME>! Do you not think Quayle would have found a way if one existed?!~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #31052 /* ~He tried and tried and tried! But my muscles will no longer support wings! They have grown too weak, and I am forever banished to walk on the ground!~ */
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #31053 /* ~I can never go back to Faenya-Dail, never look another of my kind in the eyes again! I could not face them without my wings!~ */
  IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #31054 /* ~Y-your promises are empty! I... I h-hate myself and this l-life! Just... just stay away from me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 210 // from: 428.3 202.2 201.3
  SAY #31055 /* ~How... how could you be so cruel? *sob* I... I h-hate this life... I hate m-myself... and I hate you! Just... just stay away from me...! Just stay away!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXIT
END

IF WEIGHT #9 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",20)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 211 // from:
  SAY #31056 /* ~I—I am sorry for the way I yelled at you. I sometimes... *sigh*... feel as if I've been weighted down by many stones... but I should not have reacted so to your words.~ [AERIE97] */
  IF ~~ THEN REPLY #31057 /* ~It's all right, Aerie... but you are going to have to accept your fate and find a way to deal with it.~ */ GOTO 212
  IF ~~ THEN REPLY #31058 /* ~Don't worry about it, Aerie. But we should continue on here.~ */ GOTO 213
  IF ~~ THEN REPLY #31059 /* ~Forget it... if you can't deal with your problems, I'm not about to let you drag me into them.~ */ GOTO 214
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #31060 /* ~I... I suppose you are correct. But how can I? Tell me how I can ever accept this, <CHARNAME>?~ */
  IF ~~ THEN REPLY #31061 /* ~You're going to have to be strong. We all must face life on the terms it allows for us, Aerie.~ */ GOTO 215
  IF ~~ THEN REPLY #31062 /* ~You've got to find another reason to live, Aerie... something else to hold on to.~ */ GOTO 216
  IF ~~ THEN REPLY #31063 /* ~Don't look to me for the answers... I don't have them.~ */ GOTO 217
END

IF ~~ THEN BEGIN 213 // from: 217.0 211.1
  SAY #31064 /* ~I will try to carry on with you, <CHARNAME>. I just... I just don't know if I can. But I will try.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 214 // from: 211.2
  SAY #31065 /* ~I understand, <CHARNAME>. I will try... to deal with it as best I can. I just don't know if I am strong enough. Please forgive me...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 215 // from: 212.0
  SAY #31066 /* ~Be strong? I... I'll try, <CHARNAME>. I just... I just don't know if I can, but I will try.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 216 // from: 212.1
  SAY #31067 /* ~I just wish I knew what that was. It was once so easy... why have the gods punished me so? I shall try, <CHARNAME>... I will try to be strong. I just... don't know if I can.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from: 212.2
  SAY #31068 /* ~Yes... I know. I must find the answer on my own. Nothing... nothing could make me sadder, I think.~ */
  IF ~~ THEN GOTO 213
END

IF WEIGHT #10 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",22)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 218 // from:
  SAY #31069 /* ~Why must we always be fighting? All I see is bloodshed and battle... and it drains me. Oh... Do y—do you not yearn for a life of peace and contemplation?~ [AERIE98] */
  IF ~~ THEN REPLY #31072 /* ~Aye, I do. Nothing would please me more than to stop all this violence.~ */ GOTO 219
  IF ~~ THEN REPLY #31073 /* ~Sometimes battle is required, Aerie... it is not something that I have a choice about.~ */ GOTO 220
  IF ~~ THEN REPLY #31074 /* ~Struggle and combat bring strength, Aerie... and I have needed all my strength just to survive!~ */ GOTO 221
  IF ~~ THEN REPLY #31075 /* ~More whining, Aerie? Please keep it to yourself, will you?~ */ GOTO 222
END

IF ~~ THEN BEGIN 219 // from: 220.1 218.0
  SAY #31076 /* ~And yet it continues on and on. I... I don't know how much more of this I can take. I feel so empty inside...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from: 218.1
  SAY #31077 /* ~None of us have ever had a choice, I suppose. But I see no good that comes out of fighting and constant struggle.~ */
  IF ~~ THEN REPLY #31080 /* ~Fighting has brought me strength, Aerie... the strength to survive. You could use the same.~ */ GOTO 221
  IF ~~ THEN REPLY #31081 /* ~I suppose you are right, Aerie. It is pointless, I sometimes think.~ */ GOTO 219
  IF ~~ THEN REPLY #31082 /* ~You have a choice, Aerie... you can always go back to the circus, if you wish.~ */ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0 218.2
  SAY #31083 /* ~Strength... always you talk of strength and being stronger. I... I do not know if I have your strength, <CHARNAME>. I am beginning to think it is almost not worth it...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 222 // from: 218.3
  SAY #31084 /* ~*sigh* I will, <CHARNAME>. I will stay so quiet that you shall not even hear me... nor notice when I am finally gone, I suppose, and more's the better when that happens.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 223 // from: 220.2
  SAY #31085 /* ~I... do not wish to go back to the circus, <CHARNAME>. There is nothing for me there. I just... I just wish I had your strength... that it was easier to forget what I once was.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",24)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 224 // from:
  SAY #31149 /* ~I... I need you to tell me what the worth of a life on the ground is. Is there anything to compare to the freedom of living in the clouds?~ [AERIE99] */
  IF ~~ THEN REPLY #31150 /* ~There are many things that are wonderful, but I don't know if they are better than your former life.~ */ GOTO 225
  IF ~~ THEN REPLY #31152 /* ~There's no point in your musings, Aerie... this is the way things are, and there's no avoiding them.~ */ GOTO 226
  IF ~~ THEN REPLY #31153 /* ~I'm not here to convince you, Aerie. Find someone else to bother.~ */ GOTO 227
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #31154 /* ~No... they can't be. Everything of beauty can be seen from the sky. And there are so many places you cannot go if all you can do is walk.~ */
  IF ~~ THEN REPLY #31155 /* ~Well, you're going to have to get used to it.~ */ GOTO 226
  IF ~~ THEN REPLY #31156 /* ~It's the way life is. But I'll be here to show you the better parts.~ */ GOTO 228
  IF ~~ THEN REPLY #31157 /* ~Yeah, yeah, yeah. Life in the clouds is so much better. Tell it to someone who cares.~ */ GOTO 229
END

IF ~~ THEN BEGIN 226 // from: 225.0 224.1
  SAY #31159 /* ~Yes... I'll have to get used to it. An unpleasant prospect, when a life looms over you without joy or freedom. I... I don't know if I can, <CHARNAME>.~ */
  IF ~~ THEN REPLY #31160 /* ~There is joy and freedom, Aerie. But you have to search for them.~ */ GOTO 230
  IF ~~ THEN REPLY #31161 /* ~That's too bad, isn't it? Time to buck up.~ */ GOTO 229
  IF ~~ THEN REPLY #31162 /* ~Get over yourself already. Stop being such a coward!~ */ GOTO 231
END

IF ~~ THEN BEGIN 227 // from: 224.2
  SAY #31163 /* ~I don't mean to bother you, <CHARNAME>. I am used to remaining in cages, neglected. I'll... just keep my thoughts to myself from now on.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from: 225.1
  SAY #31164 /* ~Are there better parts, <CHARNAME>? How would I recognize them if I discovered them? I... I just don't know if I can wait for them to come along.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 230.0 228.0 226.1 225.2
  SAY #31165 /* ~Just... just ignore me, <CHARNAME>. I must seem very pitiful and wretched to moan so all the time. You must despise me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 230 // from: 226.0
  SAY #31166 /* ~Search for them? I'm not sure I would even recognize them. Nor do I think I can go on much longer... I just can't... stand it any more.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 231 // from: 226.2
  SAY #31167 /* ~A coward. Y-you're likely right, but it's still cruel to say so. How you must despise my weakness and moaning. I... I'll not bother you any longer, <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #12 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",26)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 232 // from:
  SAY #31168 /* ~We're—we're stopping? *sob* I just feel like collapsing here and dying; I just don't think I can go on.~ [AERIEA1] */
  IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #31169 /* ~Perhaps it is better and more fitting if I just... just die. Like a bird whose wings are broken, I am useless, <CHARNAME>... utterly useless. *sob!*~ */
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Jaheira")
~ THEN GOTO 234
  IF ~  Global("ViconiaRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~BVICONI~ 544
  IF ~  OR(2)
!Global("ViconiaRomanceActive","GLOBAL",1)
!IsValidForPartyDialogue("Viconia")
Global("JaheiraRomanceActive","GLOBAL",1)
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BJAHEIR~ 432
END

IF ~~ THEN BEGIN 234 // from: 434.0 233.0
  SAY #31171 /* ~I've... I've had enough of this life! *sob* P-perhaps it would be better if I... just went back to the circus...~ */
  IF ~~ THEN REPLY #31173 /* ~If all you're going to do is whine and complain, then maybe you should leave.~ */ GOTO 235
  IF ~~ THEN REPLY #31174 /* ~Perhaps it is time that you made your own way, Aerie. Obviously, this isn't working out for you.~ */ GOTO 236
  IF ~~ THEN REPLY #31175 /* ~Pull yourself together, Aerie! You haven't even tried to face this!~ */ GOTO 237
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #31176 /* ~Y-you are so heartless! I... I will go! Forgive me, Baervan, but I can do this no longer!~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
Wait(2)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 236 // from: 238.0 237.0 234.1
  SAY #31177 /* ~Y-yes... forgive me, <CHARNAME>... I tried, I really did. I... I'm just not strong enough. G-goodbye...~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
Wait(2)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2
  SAY #31178 /* ~But I have, <CHARNAME>, I have! I... I just don't have the strength! I'm so useless...~ */
  IF ~~ THEN REPLY #31179 /* ~Fine. If that's how you're going to be, then perhaps you should find your own way.~ */ GOTO 236
  IF ~~ THEN REPLY #31180 /* ~You're not useless, Aerie! And you do have the strength! You just have to reach down and find it!~ */ GOTO 238
END

IF ~~ THEN BEGIN 238 // from: 237.1
  SAY #31181 /* ~*sob* I... I can't!~ */
  IF ~~ THEN REPLY #31182 /* ~*sigh* Then go. Obviously, this isn't working out for you. Maybe it's best if you find your own way.~ */ GOTO 236
  IF ~~ THEN REPLY #31183 /* ~Yes, you can! You have a choice, Aerie: Either be strong and live or lay down and die! That's your choice! Do you WANT to die?~ */ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 238.1
  SAY #31184 /* ~N-no... no, I don't want to die. Maybe... maybe I will think on what you have said. Let... let me just sleep... for now.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #13 ~  Global("AerieMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",28)
!StateCheck(Player1,STATE_SLEEPING)
Global("RomanceConflict","GLOBAL",0)
~ THEN BEGIN 240 // from:
  SAY #31185 /* ~I have been thinking... and you are right. I have been foolish. I may not have my wings, but I have everything else... especially... my life, and people who care for me.~ [AERIEA2] */
  IF ~~ THEN DO ~SetGlobal("RomanceConflict","GLOBAL",1)
RealSetGlobalTimer("RomanceConflictStart","GLOBAL",SIX_HOURS)
~ GOTO 241
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #31186 /* ~I am such a silly woman. Whining and crying... I must seem so ridiculous and petty. No man will ever want me, I think... I feel so embarrassed.~ */
  IF ~~ THEN REPLY #31187 /* ~Well... it's good to see that you're feeling better, at least. Let's just continue our travels, shall we?~ */ GOTO 242
  IF ~~ THEN REPLY #31188 /* ~And you should be. Such weakness is pitiful.~ */ GOTO 243
  IF ~~ THEN REPLY #31189 /* ~I'm glad you're better... but you're wrong, still. There are many reasons a man would want you... not least of which is your beauty.~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 245.0 244.0 241.0
  SAY #31190 /* ~Certainly, <CHARNAME>. And... thank you... f-for your encouragement to me.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 243 // from: 241.1
  SAY #31191 /* ~O-oh... I didn't know you f-felt that way. I... I will just stay out of your way, then... for now.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 244 // from: 241.2
  SAY #31192 /* ~Oh, now you're just flattering me, <CHARNAME>! None of that is true, really!~ */
  IF ~~ THEN REPLY #31193 /* ~True enough, I suppose. Let's just continue on our journey, then, all right?~ */ GOTO 242
  IF ~~ THEN REPLY #31194 /* ~Of course it's true. I say what I mean, Aerie.~ */ GOTO 245
END

IF ~~ THEN BEGIN 245 // from: 244.1
  SAY #31195 /* ~Oh... I see. Well... thank you, <CHARNAME>. Umm... do you... do you think I'm beautiful? I mean... do you feel all these things about me?~ */
  IF ~~ THEN REPLY #31196 /* ~Don't mistake me, Aerie... you are beautiful and everything, but I would prefer we maintain our friendship. Let's just continue our voyage, shall we?~ */ GOTO 242
  IF ~~ THEN REPLY #31197 /* ~Yes, I do. I care about you, Aerie.~ */ GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.1
  SAY #31198 /* ~And I care for you, <CHARNAME>. Th-thank you... for everything you have done... for me. I feel... much better.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 247 // from:
  SAY #31200 /* ~I—I've read the play, yes... but, Haer'Dalis, I still honestly don't think I can play this... Tersis character.~ [AERIE77] */
  IF ~~ THEN EXTERN ~BHAERDA~ 75
END

IF ~~ THEN BEGIN 248 // from:
  SAY #31202 /* ~Well... the scene where the goddess confronts Lord Jhovan, the ruler of the gods. She chastises him rather... forcefully...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 76
END

IF ~~ THEN BEGIN 249 // from:
  SAY #31204 /* ~*giggle* Oh, Haer'Dalis... I could never do that! The words would sound like a mouse were speaking them, coming from me. I've no such voice in me...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 77
END

IF ~~ THEN BEGIN 250 // from:
  SAY #31207 /* ~*sigh* I... I'll try. "H-hold, my lord... I will n-not... not be judged..." No, no... it's just no use.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 78
END

IF ~~ THEN BEGIN 251 // from:
  SAY #31211 /* ~Haer'Dalis! What a cruel thing to say!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 79
END

IF ~~ THEN BEGIN 252 // from:
  SAY #31213 /* ~Fine. "H-hold, my lord... I w-will... n-not... not be—"~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 80
END

IF ~~ THEN BEGIN 253 // from:
  SAY #31216 /* ~"H-hold, my lord! I will... n-not... not be... j-judged—"~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 81
END

IF ~~ THEN BEGIN 254 // from:
  SAY #31218 /* ~Then stop interrupting me!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 82
END

IF ~~ THEN BEGIN 255 // from:
  SAY #31220 /* ~"Hold, my lord! I will not be judged by the lowest of my brethren, nor shall I be judged by my king! I refuse to be silent! I am Tersis! And I WILL be heard!"~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 83
END

IF ~~ THEN BEGIN 256 // from:
  SAY #31222 /* ~I... I did it, didn't I? Th-thank you, Haer'Dalis! That... that felt wonderful!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 257 // from:
  SAY #31224 /* ~Well... I was only wondering... um... m-my scenes that I read to you the other day... was I... was I any good? Please, tell me truthfully.~ [AERIE78] */
  IF ~~ THEN EXTERN ~BHAERDA~ 85
END

IF ~~ THEN BEGIN 258 // from:
  SAY #31230 /* ~You... you aren't just saying that? I'm not that good...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 86
END

IF ~~ THEN BEGIN 259 // from:
  SAY #31233 /* ~Ha... it's too bad, then, that there's nowhere to perform our piece.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 87
END

IF ~~ THEN BEGIN 260 // from:
  SAY #31238 /* ~Ha ha ha! You are a silly man, Haer'Dalis!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 90
END

IF ~~ THEN BEGIN 261 // from:
  SAY #31240 /* ~And it is good to laugh. Thank you, my comical bard.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY #31244 /* ~"Aye... Tersis has come to you, my Donner. Your yearning has called to me across the void, and against all sober advice, I have come."~ [AERIE79] */
  IF ~~ THEN EXTERN ~BHAERDA~ 92
END

IF ~~ THEN BEGIN 263 // from:
  SAY #31249 /* ~Er... Haer'Dalis...?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 93
END

IF ~~ THEN BEGIN 264 // from:
  SAY #31251 /* ~Haer'Dalis, your words... your words aren't in the play.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 94
END

IF ~~ THEN BEGIN 265 // from:
  SAY #31254 /* ~I... I thank you for your words, Haer'Dalis... but...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 96
END

IF ~~ THEN BEGIN 266 // from:
  SAY #31256 /* ~E-enough... please. I... I am flattered... but... but I was not expecting this. Please... leave me alone but for a while...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from:
  SAY #31261 /* ~Haer'Dalis, thi-this is all so... sudden...~ [AERIE80] */
  IF ~~ THEN EXTERN ~BHAERDA~ 98
END

IF ~~ THEN BEGIN 268 // from:
  SAY #31264 /* ~I... I do not deny that I hold you in great esteem, Haer'Dalis. You have been most kind. It... it is just that...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 100
END

IF ~~ THEN BEGIN 269 // from:
  SAY #31266 /* ~I... I don't know. I truly don't...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 101
END

IF WEIGHT #14 ~  Global("DecideLove","GLOBAL",1)
Global("LoveTalk","LOCALS",30)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 270 // from:
  SAY #31268 /* ~I have something I need to ask you.~ [AERIE81] */
  IF ~~ THEN REPLY #31269 /* ~What is it, Aerie?~ */ DO ~SetGlobal("DecideLove","GLOBAL",2)
~ GOTO 271
  IF ~~ THEN REPLY #31270 /* ~It will have to wait for later, Aerie, I'm too busy for a discussion right now.~ */ DO ~SetGlobal("DecideLove","GLOBAL",2)
~ GOTO 272
END

IF ~~ THEN BEGIN 271 // from: 272.0 270.0
  SAY #31271 /* ~I... I know this may seem an... odd question. But I need to know... how do you... f-feel about me?~ */
  IF ~~ THEN REPLY #31272 /* ~I love you, Aerie... I thought you knew.~ */ GOTO 273
  IF ~~ THEN REPLY #31273 /* ~I care for you deeply, Aerie.~ */ GOTO 275
  IF ~~ THEN REPLY #31274 /* ~Feel? You are a friend... no more and no less.~ */ GOTO 276
  IF ~~ THEN REPLY #31275 /* ~This is a ridiculous question and I'll not discuss it.~ */ GOTO 277
END

IF ~~ THEN BEGIN 272 // from: 270.1
  SAY #31276 /* ~It... it cannot wait, <CHARNAME>. Or at least my heart will not let it wait.~ */
  IF ~~ THEN REPLY #31277 /* ~All right... what is the question?~ */ GOTO 271
  IF ~~ THEN REPLY #31278 /* ~Well, it will have to, so forget about it for now!~ */ GOTO 277
END

IF ~~ THEN BEGIN 273 // from: 271.0
  SAY #31279 /* ~Ah... no... no, I did not know. I suspected... and hoped... but I did not know. Oh, <CHARNAME>, this is so terrible!~ */
  IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274 // from: 275.0 273.0
  SAY #31280 /* ~Oh, that sounds all wrong! I... I do care for you very much, <CHARNAME>! I do! But I... I also care for Haer'Dalis! This is... so confusing... I must think about this...~ */
  IF ~~ THEN DO ~RealSetGlobalTimer("HaerDalisRomance","GLOBAL",TEN_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 275 // from: 271.1
  SAY #31281 /* ~Oh, <CHARNAME>... I... th-thank you for saying so! My heart is fluttering so... oh, this is so terrible!~ */
  IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 276 // from: 271.2
  SAY #31283 /* ~I... I see. That answers my question most... f-fully. Th-thank you, <CHARNAME>... I think of you as a... friend... as well.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 277 // from: 272.1 271.3
  SAY #31284 /* ~I... I see. F-forget about my question, then, <CHARNAME>. It... it does not matter, really.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 278 // from:
  SAY #31317 /* ~I... oh, Haer'Dalis! I never expected for any of this to happen. I... I love both you and him in different ways; I—I cannot simply choose between you!~ [AERIE82] */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.0
  SAY #31318 /* ~Please... can't you understand that? I beg of you not to press me!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 112
END

IF ~~ THEN BEGIN 280 // from:
  SAY #31324 /* ~No! No, this is madness! I will not allow you to fight over me. I will not allow it!~ */
  IF ~~ THEN REPLY #31325 /* ~Aerie is right, Haer'Dalis. We should not fight. Put down your swords, and let us talk.~ */ EXTERN ~BHAERDA~ 116
  IF ~~ THEN REPLY #31326 /* ~Step aside, Aerie... the bard wants a duel, and he'll have it.~ */ GOTO 287
END

IF ~~ THEN BEGIN 281 // from:
  SAY #31327 /* ~<CHARNAME>? Y-you would... you would simply give up on me? Give up on your feelings for me?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 114
END

IF ~~ THEN BEGIN 282 // from:
  SAY #31329 /* ~I... I do love you, Haer'Dalis. I am glad that you did not f-fight over me, but I must... I must have time to set my heart straight. Please... g-give me time.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 115
END

IF ~~ THEN BEGIN 283 // from:
  SAY #31332 /* ~NOOOO!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 117
END

IF ~~ THEN BEGIN 284 // from:
  SAY #31334 /* ~No, Haer'Dalis! It is NOT the only possible end! I said I would not allow you to fight over me, and I meant it!~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #31335 /* ~I am not something for you to become impassioned over like a jewel or a poem, Haer'Dalis! I do not think your love is real if you would resort to violence to prove it!~ */
  IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #31336 /* ~I love <CHARNAME>. I love him deeply and without hesitation... and I know he feels for me as well. And that... that is how it shall be.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 118
END

IF ~~ THEN BEGIN 287 // from: 280.1
  SAY #31344 /* ~No, <CHARNAME>! I said I would not allow you to fight over me, and I meant it!~ */
  IF ~~ THEN GOTO 288
END

IF ~~ THEN BEGIN 288 // from: 287.0
  SAY #31345 /* ~If you would resort to violence to prove your love for me, then you are not the man I thought you were! I... I love Haer'Dalis... I know that to be true now.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 121
END

IF ~~ THEN BEGIN 289 // from:
  SAY #31346 /* ~Yes, my bard... I do love you. <CHARNAME>... put down your arms and accept that... that this is the way it will be. I... I am so sorry.~ */
  IF ~~ THEN REPLY #31348 /* ~I... I can't bear to watch you with another, Aerie.~ */ GOTO 290
  IF ~~ THEN REPLY #31349 /* ~*sigh* I suppose I will have to accept it, then. I hope you will continue to travel with me?~ */ GOTO 292
  IF ~~ THEN REPLY #31350 /* ~So be it! At least this mess is over with now.~ */ GOTO 293
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #31351 /* ~It... it breaks my heart that I must leave you... but leave you I must, then.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 122
END

IF ~~ THEN BEGIN 291 // from:
  SAY #31353 /* ~I'm sorry that this couldn't have... worked out better. Farewell, <CHARNAME>... I hope... I hope that we meet again someday.~ */
  IF ~~ THEN DO ~LeaveParty()
ActionOverride("HaerDalis",LeaveParty())
EscapeArea()
ActionOverride("HaerDalis",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 292 // from: 289.1
  SAY #31354 /* ~I shall. I am your friend, <CHARNAME>, and you will always hold a dear place in my heart. If you would continue to wish to have me fight by your side, I would be glad of it.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 123
END

IF ~~ THEN BEGIN 293 // from: 289.2
  SAY #31356 /* ~I... I suppose I was correct, then. Your feelings do not run as deep as those of my bard's. Come, then... I would be glad to fight by your side. Let us continue your quest.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 124
END

IF WEIGHT #15 ~  Global("LoveTalk","LOCALS",32)
Global("AerieRomance","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("HaerDalisRomanceActive","GLOBAL",1)
Global("HaerDalisRomanceActive","GLOBAL",2)
InParty("HaerDalis")
~ THEN BEGIN 294 // from:
  SAY #31360 /* ~I have... something that I must ask of you... an awkward question, if you will.~ [AERIEA3] */
  IF ~~ THEN REPLY #31361 /* ~What is it, Aerie?~ */ GOTO 295
  IF ~~ THEN REPLY #31362 /* ~It will have to wait for later, Aerie. I'm too busy for a discussion right now.~ */ GOTO 296
END

IF ~~ THEN BEGIN 295 // from: 296.0 294.0
  SAY #31363 /* ~I have been thinking about you quite a bit of late. I know this may seem an... odd question. But I need to know... how do you... f-feel about me?~ */
  IF ~~ THEN REPLY #31364 /* ~I love you, Aerie... I thought you knew.~ */ GOTO 297
  IF ~~ THEN REPLY #31365 /* ~I care for you deeply, Aerie.~ */ GOTO 299
  IF ~~ THEN REPLY #31366 /* ~Feel? You are a friend... no more and no less.~ */ GOTO 301
  IF ~~ THEN REPLY #31367 /* ~This is a ridiculous question, and I'll not discuss it.~ */ GOTO 300
END

IF ~~ THEN BEGIN 296 // from: 294.1
  SAY #31368 /* ~It... it cannot wait, <CHARNAME>. Or, at least, my heart will not let it wait.~ */
  IF ~~ THEN REPLY #31370 /* ~All right, what is the question?~ */ GOTO 295
  IF ~~ THEN REPLY #31373 /* ~Well, it will still have to wait, regardless... this is not the time.~ */ GOTO 300
END

IF ~~ THEN BEGIN 297 // from: 295.0
  SAY #31374 /* ~And I love you too, <CHARNAME>. Ooh, this is a most wonderful relief. You have been... so kind and helpful to me; I am glad of your love.~ */
  IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 299.0 297.0
  SAY #31375 /* ~Come, then... let us continue on our travels, and we can speak more of this later.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 299 // from: 295.1
  SAY #31376 /* ~And I too care for you. You have been... so kind and supportive. I... I thank you, <CHARNAME>. I feel awkward, but I am most pleased that you have requited my feelings.~ */
  IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 300 // from: 296.1 295.3
  SAY #31378 /* ~As... as you wish, <CHARNAME>. Forget my question, then... it was of no importance.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 301 // from: 295.2
  SAY #31379 /* ~A... a friend? Then it is... then it is good that I have asked this. I am glad we are friends, <CHARNAME>... let us continue on your quest, and I shall be glad to fight by your side.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #16 ~  Global("LoveTalk","LOCALS",34)
InParty("HaerDalis")
See("HaerDalis")
OR(2)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("HaerDalisRomanceActive","GLOBAL",1)
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("AerieHaerDalis1","LOCALS",0)
~ THEN BEGIN 302 // from:
  SAY #31380 /* ~Haer'Dalis? Might I have a... a word with you?~ [AERIE87] */
  IF ~~ THEN DO ~SetGlobal("AerieHaerDalis1","LOCALS",1)
~ EXTERN ~BHAERDA~ 125
END

IF ~~ THEN BEGIN 303 // from:
  SAY #31394 /* ~I... I just wanted you to know... I've noticed the amount of time you've spent with me...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 126
END

IF ~~ THEN BEGIN 304 // from:
  SAY #31401 /* ~Th-thank you... but I wanted you to know that I... that I have feelings. For <CHARNAME>. I... didn't want you to get the wrong idea...~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 127
END

IF ~~ THEN BEGIN 305 // from:
  SAY #31405 /* ~Ha ha! Oh, you rascal! It... it's nothing like that! But... but thank you for your understanding...~ */
  IF ~~ THEN DO ~SetGlobal("HaerDalisRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #17 ~  Global("LoveTalk","LOCALS",36)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("HaerDalisRomance","GLOBAL",3)
!InParty("HaerDalis")
~ THEN BEGIN 306 // from:
  SAY #31407 /* ~I've... I've been thinking about some of the things you've told me. I... I wanted you to know that I've come to a decision.~ [AERIEA4] */
  IF ~~ THEN REPLY #31409 /* ~And what decision is that?~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ GOTO 307
  IF ~~ THEN REPLY #31410 /* ~Not right now, Aerie... this isn't the best time.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ GOTO 309
END

IF ~~ THEN BEGIN 307 // from: 306.0
  SAY #31433 /* ~I am determined to... to face this life on the ground, <CHARNAME>. My wings are gone, and that can never be changed. I must learn to appreciate the beauty that I can still see.~ */
  IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 308 // from: 307.0
  SAY #31435 /* ~And I... I hope that you will be here to teach me about it, <CHARNAME>. To show me how one can live on the ground and still... still be happy.~ */
  IF ~~ THEN REPLY #31456 /* ~I'd like that, Aerie.~ */ GOTO 310
  IF ~~ THEN REPLY #31457 /* ~Who knows what the future will bring, Aerie?~ */ GOTO 311
  IF ~~ THEN REPLY #31460 /* ~I doubt it... we'll be lucky enough to stay alive with death waiting around every corner for us.~ */ GOTO 312
END

IF ~~ THEN BEGIN 309 // from: 306.1
  SAY #31461 /* ~It was nothing complicated, <CHARNAME>... but if you say it is a bad time, then I will have to believe you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from: 308.0
  SAY #31464 /* ~That makes me glad. I am beginning to wonder what I would have done if you had never come along, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 311 // from: 308.1
  SAY #31467 /* ~Yes, I know that our life has its risks... but I have a feeling that Baervan has had his hand in my path. We shall see what the gods have planned for us, I suppose.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 312 // from: 308.2
  SAY #31470 /* ~Our life is filled with uncertainty, that is true... but you could at least make the attempt, <CHARNAME>. Well... we shall see, I suppose, what the gods have in store for us.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 ~  Global("LoveTalk","LOCALS",38)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 313 // from:
  SAY #31471 /* ~I have heard from some of the others, about your adventures in the lands of the Sword Coast north of here. It all sounds rather exciting!~ [AERIEA5] */
  IF ~~ THEN REPLY #31472 /* ~Exciting? That doesn't sound like you, Aerie.~ */ GOTO 314
  IF ~~ THEN REPLY #31473 /* ~It wasn't by choice, Aerie. And I lost much.~ */ GOTO 317
  IF ~~ THEN REPLY #31474 /* ~Yes, it was a great adventure... and a successful one as well. I defeated my half-brother and stopped a war.~ */ GOTO 319
  IF ~~ THEN REPLY #31475 /* ~Aerie, you don't know what you're talking about. Please shut up for once.~ */ GOTO 320
END

IF ~~ THEN BEGIN 314 // from: 319.0 318.0 313.0
  SAY #31476 /* ~Oh, I know it must sound strange to hear me say it... but if I'm going to face my life as it is, I want to experience everything that I can.~ */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #31477 /* ~I want to feel the thrill and fear of combat... to pit my magic against our foes. I want to be awed and terrified... to feel everything that my life has to offer me, good or bad.~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #31478 /* ~Does that sound strange, <CHARNAME>? Does that make me odd?~ */
  IF ~~ THEN REPLY #31479 /* ~No odder than the rest of us, Aerie.~ */ GOTO 321
  IF ~~ THEN REPLY #31480 /* ~No... I am glad to see the change in you, in fact.~ */ GOTO 322
  IF ~~ THEN REPLY #31481 /* ~It makes you naive and foolish. You haven't a clue, do you?~ */ GOTO 323
END

IF ~~ THEN BEGIN 317 // from: 313.1
  SAY #31482 /* ~But you gained as well, <CHARNAME>. I am told that many people speak reverentially of the deeds you have performed, whether you intended them or not.~ */
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #31483 /* ~I have lost much... as you have. But I am beginning to think that perhaps I might be able to gain something back as well. I look forward to freeing myself from my doubts and fears.~ */
  IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 319 // from: 313.2
  SAY #31484 /* ~Many people speak reverentially of you. You have gained much... and I want to have that as well. I want to shed my doubt and wring whatever I can out of the life I have.~ */
  IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 320 // from: 313.3
  SAY #31485 /* ~You always disregard what I am thinking, don't you? Obviously, I was mistaken about you. I'll just... keep to myself, if it's all the same to you.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 321 // from: 316.0
  SAY #31493 /* ~Good... that makes me feel a little better. It is strange to be thrilled and yet shivering at the same time... I am free, and I am traveling... and I feel like I am flying.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 322 // from: 316.1
  SAY #31494 /* ~Thank you, <CHARNAME>... I am glad of it as well. I... I am free... and traveling... and both excited and nervous at the same time. I almost feel as if I am flying again.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 323 // from: 316.2
  SAY #31496 /* ~Always you must be cruel with your words. Naive, am I? Well, I am not so stupid as to continue playing the fool. Obviously, I was mistaken about you.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #19 ~  Global("LoveTalk","LOCALS",40)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 324 // from:
  SAY #31498 /* ~Have you been to very many other places besides Amn?~ [AERIEA6] */
  IF ~~ THEN REPLY #31499 /* ~Just to Baldur's Gate and several other places along the Sword Coast up north... so far, at least.~ */ GOTO 325
  IF ~~ THEN REPLY #31500 /* ~Not now, Aerie... this isn't a good time to talk.~ */ GOTO 330
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #31501 /* ~I have never been that far north... nor have I traveled anywhere outside of the circus. I have been told about some of the other places in the world where one can go, however...~ */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #31503 /* ~Calimshan is supposed to be a great place of sand and silks, merchants of all kinds... there are supposed to be strange and exotic dancers and great spiraling towers.~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #31504 /* ~The Moonshae islands are supposed to have magnificent mountains and waterfalls... along with beaches of blue sand and ancient forests that time has barely touched.~ */
  IF ~~ THEN GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #31508 /* ~And... and the jungles of Chult! Towering trees and vines, exotic spices and flowers that smell of the sultry heat... rainstorms that last for days...~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #31510 /* ~I... I want to go to these places, <CHARNAME>! I want to voyage there and see their beauty for myself... I want to stand there and feel it... touch it with my hands.~ */
  IF ~~ THEN REPLY #31511 /* ~That sounds wonderful, Aerie... I wouldn't mind joining you someday.~ */ GOTO 331
  IF ~~ THEN REPLY #31513 /* ~I think we should concern ourselves with surviving the next few weeks and not make plans like that.~ */ GOTO 332
  IF ~~ THEN REPLY #31514 /* ~Get your head out of the clouds, Aerie. It'll never happen.~ */ GOTO 333
END

IF ~~ THEN BEGIN 330 // from: 324.1
  SAY #31516 /* ~I see. All right, <CHARNAME>... I'll be quiet, if that's what you want.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 331 // from: 329.0
  SAY #31518 /* ~I would like that, <CHARNAME>... although of course we must pay attention to surviving first. Likely, we will face death many times... but it is pleasant to dream, isn't it?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.1
  SAY #31519 /* ~Oh, I know. I do not plan on running off to go to these places. I know we face death here, and will many times. It is just... pleasant to dream, isn't it?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 333 // from: 329.2
  SAY #31520 /* ~And who are you to say it will never happen? I know I face death fighting by your side... and I am happy to do so... but I would like to dream of the future as well.~ */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #31522 /* ~I... I would have thought you capable of dreaming, <CHARNAME>. Not everything must be hard steel and stern decisions.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 ~  Global("LoveTalk","LOCALS",42)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 335 // from:
  SAY #31535 /* ~I've been wondering... do you have any advice for me for combat?~ [AERIEA7] */
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY #31536 /* ~You're doing fine, Aerie. Why do you ask?~ */ GOTO 336
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY #31539 /* ~You're doing fine, Aerie. Why do you ask?~ */ GOTO 338
  IF ~~ THEN REPLY #31537 /* ~Stay in the back and use your spells... that's the best help you can be.~ */ GOTO 339
  IF ~~ THEN REPLY #31541 /* ~Not really.~ */ GOTO 340
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #31542 /* ~I know how you feel about my being strong, <CHARNAME>... and I want to fight well by your side. I... I don't want your foes, powerful as they are, to get the best of you.~ */
  IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 340.0 339.0 338.0 336.0
  SAY #31551 /* ~I shall try to improve my skills with magic, over and above what my Uncle Quayle was able to teach me. I suppose... I suppose that is the best way I can aid you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 338 // from: 335.1
  SAY #31553 /* ~I know that you are determined to combat evil... and I wish to do so as well. I don't want to be a burden... I want to be effective. I want to survive so that I can see the world.~ */
  IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 339 // from: 335.2
  SAY #31556 /* ~I think that's what I have been doing... I know I'll never be that good with weapons, as some of your other companions are. If... if you need me to fight by your side, <CHARNAME>, I will do so... to the death, if need be.~ */
  IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 340 // from: 335.3
  SAY #31558 /* ~None at all, <CHARNAME>? I... I don't want to be a burden to your group. I want to fight effectively by your side... and survive, so that I may travel the world with you.~ */
  IF ~~ THEN GOTO 337
END

IF WEIGHT #21 ~  Global("LoveTalk","LOCALS",44)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 341 // from:
  SAY #31559 /* ~I—I know that it might be difficult to foresee what is to happen in the future, but... do you have any plans? Once this is all over, I mean...~ [AERIEA8] */
  IF ~~ THEN REPLY #31564 /* ~I haven't given it much thought, actually.~ */ GOTO 342
  IF ~~ THEN REPLY #31565 /* ~I don't know... I was thinking of settling down somewhere...~ */ GOTO 343
  IF ~~ THEN REPLY #31566 /* ~I'm not sure if it will ever be over. I suspect I'll always be on the road.~ */ GOTO 344
  IF ~~ THEN REPLY #31567 /* ~I'm not about to start talking about this with you, Aerie.~ */ GOTO 345
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #31569 /* ~Well... do you see yourself traveling? Or settling down? Do you... do you see yourself with me?~ */
  IF ~~ THEN REPLY #31570 /* ~I honestly couldn't say. Anything could happen.~ */ GOTO 345
  IF ~~ THEN REPLY #31571 /* ~I would prefer to be with you, Aerie... if the gods are willing.~ */ GOTO 346
  IF ~~ THEN REPLY #31572 /* ~I doubt that we'll be together for long. My life is too chaotic.~ */ GOTO 345
END

IF ~~ THEN BEGIN 343 // from: 341.1
  SAY #31573 /* ~You want to settle down? Here in Amn, perhaps? Do you... do you see me in that picture?~ */
  IF ~~ THEN REPLY #31574 /* ~I thought you wanted to travel, Aerie.~ */ GOTO 347
  IF ~~ THEN REPLY #31575 /* ~Of course I see you... if you see yourself, that is.~ */ GOTO 346
  IF ~~ THEN REPLY #31576 /* ~Nope... I don't see you there. Sorry.~ */ GOTO 349
END

IF ~~ THEN BEGIN 344 // from: 341.2
  SAY #31577 /* ~Yes... you have god's blood in you, I'm told. When you... when you travel, do you see me traveling beside you?~ */
  IF ~~ THEN REPLY #31578 /* ~It's too difficult to tell, Aerie. Anything could happen.~ */ GOTO 345
  IF ~~ THEN REPLY #31579 /* ~I'd want you beside me... if you wanted to be there.~ */ GOTO 346
  IF ~~ THEN REPLY #31585 /* ~No, I really don't see us together.~ */ GOTO 350
END

IF ~~ THEN BEGIN 345 // from: 344.0 342.2 342.0 341.3
  SAY #31586 /* ~Oh... don't you... don't you want to be with me? In the... future, I mean?~ */
  IF ~~ THEN REPLY #31587 /* ~Of course I do... if it's possible.~ */ GOTO 346
  IF ~~ THEN REPLY #31589 /* ~There's no point in talking about it, Aerie. Nothing is sure in my life... and I have lost too many people to start forming new attachments.~ */ GOTO 350
  IF ~~ THEN REPLY #31590 /* ~No, I don't, really.~ */ GOTO 349
END

IF ~~ THEN BEGIN 346 // from: 348.0 345.0 344.1 343.1 342.1
  SAY #31591 /* ~That's... that's good. I would like to be with you, if the gods will it. Th-thank you, <CHARNAME>... I just... I just wanted to be sure that you felt the same for me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 347 // from: 343.0
  SAY #31593 /* ~I do... but I also want to be with you. I... think I want to be with you more. You are more exciting and thrilling than any wonder of the land that I could encounter, I think.~ */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #31594 /* ~But... that is... that is only if you want to be with me too. Do you?~ */
  IF ~~ THEN REPLY #31595 /* ~Of course I do, if it's at all possible.~ */ GOTO 346
  IF ~~ THEN REPLY #31596 /* ~There's no point in talking about it, Aerie. Nothing is sure in my life... and I have lost too many people to start forming new attachments.~ */ GOTO 350
  IF ~~ THEN REPLY #31597 /* ~Well, no... not really.~ */ GOTO 349
END

IF ~~ THEN BEGIN 349 // from: 348.2 345.2 343.2
  SAY #31599 /* ~Ah. So you end it with cruel finality. I... I suppose I should have expected that from you. I was... hoping for something more, <CHARNAME>. I suppose I shall look elsewhere...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 350 // from: 348.1 345.1 344.2
  SAY #31601 /* ~How ironic... that you would push me to be strong, and yet be too frightened to attach yourself to someone. I... was hoping for more. I suppose I shall look elsewhere.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #22 ~  Global("LoveTalk","LOCALS",46)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 351 // from:
  SAY #31607 /* ~My love...? I—I know that you are tired from the day's travels and—and that you wish to rest, but I... I wish to ask you something... before you retire to your blankets...~ [AERIEA9] */
  IF ~~ THEN REPLY #31621 /* ~Very well... what is it that you wish?~ */ GOTO 352
  IF ~~ THEN REPLY #31622 /* ~Not now, Aerie... I'm too tired to discuss anything.~ */ GOTO 356
END

IF ~~ THEN BEGIN 352 // from: 356.0 351.0
  SAY #31613 /* ~Here... come with me away from the eyes of the others. We will not be very far from them. I simply wish privacy.~ */
  IF ~~ THEN GOTO 353
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #31614 /* ~Now that we are alone... let me speak for a moment. You have led me to a tremendous discovery, <CHARNAME>... I have found that I do not need wings to fly.~ */
  IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #31615 /* ~I... do not have much experience with love, <CHARNAME>. With your urging, I have become eager to experience many things... and now I wish to experience this.~ */
  IF ~~ THEN GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #31616 /* ~I... I will show you my body, <CHARNAME>... and I hope it pleases you. Would you... would you stay with me this night, <CHARNAME>? Will you show me what true love consists of?~ */
  IF ~~ THEN REPLY #31617 /* ~How could I refuse such a sweet offer?~ */ DO ~SetGlobal("SleptAerie","GLOBAL",1)
~ GOTO 358
  IF ~~ THEN REPLY #31618 /* ~This isn't all love is, Aerie. Wouldn't you rather wait until the time is right?~ */ GOTO 359
  IF ~~ THEN REPLY #31619 /* ~Er... I can't get past those huge lumps of scar tissue on your shoulders. I'm really not in the mood.~ */ GOTO 361
  IF ~~ THEN REPLY #31620 /* ~Get lost, Aerie... I'm really not interested in being your tutor.~ */ GOTO 361
END

IF ~~ THEN BEGIN 356 // from: 351.1
  SAY #31623 /* ~Please, <CHARNAME>... the time is right, and I must speak to you of this.~ */
  IF ~~ THEN REPLY #31624 /* ~*sigh* Fine. What is it you wish?~ */ GOTO 352
  IF ~~ THEN REPLY #31625 /* ~It will have to wait, Aerie. Good night.~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.1
  SAY #31627 /* ~I... I see my wishes have no bearing on your moods. As... as you wish. I will sleep by myself tonight and from here on. Good night, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 358 // from: 355.0
  SAY #31632 /* ~C-come close to me then, <CHARNAME>. Let me feel your hands on my skin... let us lie together so I may experience your love and become a woman at last...~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from: 355.1
  SAY #31633 /* ~I... don't know what love is, <CHARNAME>. But... maybe it would be better to wait until all of this is over. The thought of lying with a man frightens me a little, I must admit...~ */
  IF ~~ THEN GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #31634 /* ~Stay with me for the night, then, <CHARNAME>, and hold me to you. I... don't want to be alone, and I so desperately need to be near you...~ */
  IF ~~ THEN REPLY #31636 /* ~As you wish... that I am more than willing to do.~ */ DO ~SetGlobal("SleptAerie","GLOBAL",0)
SetGlobal("SleptAerie","GLOBAL",0)
~ GOTO 363
  IF ~~ THEN REPLY #31637 /* ~Forget it, Aerie... I'm not interested in someone who is so needy.~ */ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.1 355.3 355.2
  SAY #31679 /* ~So you send me away with... with your cruel words. I... I thought I loved you... and yet you cut me open without hesitation. I... should have known better, I suppose.~ */
  IF ~~ THEN GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #31680 /* ~Very well, <CHARNAME>... I shall go and sleep by myself and console myself that it is better that I never allowed one such as you to touch me. I... shall not trouble you further.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 363 // from: 360.0
  SAY #31684 /* ~You are sweet to be so patient with me, <CHARNAME>. Let us sleep, then.~ */
  IF ~~ THEN DO ~SetGlobal("SleptAerie","GLOBAL",0)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #23 ~  Global("LoveTalk","LOCALS",48)
Global("SleptAerie","GLOBAL",0)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 364 // from:
  SAY #31685 /* ~So... you are awake at last? I have been... watching you sleep for some time now. It calms me, watching you... and it gave me time to think.~ [AERIEB1] */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 365 // from: 364.0
  SAY #31686 /* ~I've been... thinking about last night. You were right, of course... it isn't the right time to experience love when we are always in danger of perishing.~ */
  IF ~~ THEN GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #31687 /* ~I was so eager to experience everything new that I... did not think. Thank you for respecting me. I... I love you... and I want our first time together to be something special.~ */
  IF ~~ THEN REPLY #31688 /* ~I love you too, Aerie... and I agree.~ */ GOTO 367
  IF ~~ THEN REPLY #31689 /* ~Yes, well... let's just continue our travels, shall we?~ */ GOTO 368
  IF ~~ THEN REPLY #31690 /* ~You're out of your mind, Aerie.~ */ GOTO 370
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #31691 /* ~Let us go, then, and find this Irenicus. Once this is over, I want to experience everything with you. I... I never thought I would find something... better than flying. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 368 // from: 366.1
  SAY #31692 /* ~Of course, <CHARNAME>. Let's... finish your quest, and then we can see where we stand. And where we can go from there, yes?~ */
  IF ~~ THEN GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #31693 /* ~In... in case I die... or in case we part ways... I just wanted to tell you, <CHARNAME>, that I never thought I would find something better than flying. But I have... and thank you.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 370 // from: 366.2
  SAY #31694 /* ~I am? I had thought you had cared for me. But... perhaps you kept me away because... because you did not care enough for me. I had not thought of that.~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #31695 /* ~I am too quick to assume, <CHARNAME>... and I have much to learn. I wish you would have been gentler with me, but you have taught me much, and I thank you.~ */
  IF ~~ THEN GOTO 372
END

IF ~~ THEN BEGIN 372 // from: 371.0
  SAY #31696 /* ~Let us just... continue on your quest. I shall trouble you no further... and will look to further my experience elsewhere.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #24 ~  Global("LoveTalk","LOCALS",48)
Global("SleptAerie","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 373 // from:
  SAY #31697 /* ~So... you are awake at last? I have been... watching you sleep for some time now. It calms me, watching you... and it gave me time to think.~ */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #31698 /* ~You... have made a woman out of me, <CHARNAME>. I love you more deeply than I can say and can only thank you for what you have done for me.~ */
  IF ~~ THEN GOTO 375
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #31699 /* ~But... at the same time... I cannot help but think that things need to be slowed. I am so full of emotion... I want to experience too much and am doing it all too quickly.~ */
  IF ~~ THEN GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #31700 /* ~I feel overbalanced, <CHARNAME>. Quayle would never approve of this, I think.~ */
  IF ~~ THEN GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.0
  SAY #31701 /* ~My heart clenches at the thought, but we must stop ourselves from going down this path. I need to... to find out more about myself... before I can attach myself to another. I... hope you understand.~ */
  IF ~~ THEN REPLY #31703 /* ~I do... but maybe you need to find your own way, Aerie.~ */ GOTO 378
  IF ~~ THEN REPLY #31704 /* ~If that's what you want, there is nothing I can do.~ */ GOTO 379
  IF ~~ THEN REPLY #31705 /* ~No, Aerie! I love you!~ */ GOTO 381
  IF ~~ THEN REPLY #31707 /* ~No, I don't understand! Why are you doing this?!~ */ GOTO 383
END

IF ~~ THEN BEGIN 378 // from: 385.0 377.0
  SAY #31712 /* ~If... if that is what you think I should do... then perhaps I must. I... I shall miss you, <CHARNAME>. I shall always hold you dear in my heart.~ */
  IF ~~ THEN GOTO 382
END

IF ~~ THEN BEGIN 379 // from: 377.1
  SAY #31717 /* ~Oh, please don't be sad, <CHARNAME>. I shall remain with you and fight by your side... this quest of yours is too important for me not to help you with it.~ */
  IF ~~ THEN GOTO 413
END

IF ~~ THEN BEGIN 380 // from: 413.0
  SAY #31720 /* ~But come... a new day awaits us, <CHARNAME>. Let us... let us see what it holds.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 381 // from: 377.2
  SAY #31721 /* ~I... I know, <CHARNAME>. You have been very patient with me, and very kind. But I have not found my way in the world yet... you know so much more than I do.~ */
  IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 382 // from: 378.0
  SAY #31722 /* ~One day we shall meet again, <CHARNAME>... and I... I hope that I will be ready to love you then. F-farewell...~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
LeaveParty()
GivePartyAllEquipment()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 377.3
  SAY #31723 /* ~I... I am doing this because I must, <CHARNAME>. My life has never been my own... I am frightened by the unfamiliar, and I am unfamiliar with most everything.~ */
  IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0 381.0
  SAY #31733 /* ~I need to... find out more about myself, <CHARNAME>... I need to become familiar with and experience everything... but slowly. And with you, it will never be slow.~ */
  IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 385 // from: 414.0
  SAY #31737 /* ~I... I do love you, <CHARNAME>, and I hope you understand. If you would find it too hard... if you want me to go now... I will understand.~ */
  IF ~~ THEN REPLY #31738 /* ~Yes, I would prefer it if you left, Aerie.~ */ GOTO 378
  IF ~~ THEN REPLY #31739 /* ~No... please stay, Aerie.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
~ GOTO 415
END

IF ~~ THEN BEGIN 386 // from:
  SAY #31745 /* ~Oh, Haer'Dalis, I—I am not ready to...~ [AERIE83] */
  IF ~~ THEN EXTERN ~BHAERDA~ 131
END

IF ~~ THEN BEGIN 387 // from:
  SAY #31762 /* ~Why... that's sweet, Haer'Dalis. I'm... I'm honored.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 133
END

IF ~~ THEN BEGIN 388 // from:
  SAY #31766 /* ~I... I do love you, Haer'Dalis. You have swept me off my feet... and I can no longer deny it.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 135
END

IF ~~ THEN BEGIN 389 // from:
  SAY #31773 /* ~It is nothing, Haer'Dalis. Just... just some errant thoughts.~ [AERIE84] */
  IF ~~ THEN EXTERN ~BHAERDA~ 137
END

IF ~~ THEN BEGIN 390 // from:
  SAY #31780 /* ~Well... I was just wondering, Haer'Dalis... where do you see us in the future? You have spoken of plays and acting... have you been serious?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 138
END

IF ~~ THEN BEGIN 391 // from:
  SAY #31782 /* ~Your love has given me new hope, my bard... I want to see what life has to offer, no matter my lack of wings. I... I want to travel, to see this world. Will you... be there with me?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 139
END

IF ~~ THEN BEGIN 392 // from:
  SAY #31787 /* ~Live in the moment? I... I have always done that, Haer'Dalis. I want to live for the future now... don't you?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 141
END

IF ~~ THEN BEGIN 393 // from:
  SAY #31794 /* ~Hmm. A limerick for every occasion, Haer'Dalis?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 143
END

IF ~~ THEN BEGIN 394 // from:
  SAY #31796 /* ~Ha ha! Very well, my bard, I'll smile for you. Today, at least.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 144
END

IF ~~ THEN BEGIN 395 // from:
  SAY #31799 /* ~Actually, Haer'Dalis, I have a question. All your plays... they seem to end in tragedy or destruction. They're all so... so dark. Have you no happy plays?~ [AERIE85] */
  IF ~~ THEN EXTERN ~BHAERDA~ 146
END

IF ~~ THEN BEGIN 396 // from:
  SAY #31829 /* ~Foolish? You... you can't honestly think that. Is there no room for hope in your world?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 147
END

IF ~~ THEN BEGIN 397 // from:
  SAY #31833 /* ~But... but you can't embrace destruction... you have to fight against it, don't you?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 148
END

IF ~~ THEN BEGIN 398 // from:
  SAY #31835 /* ~But why would you... why would you even build a home or... or fall in love... if you thought that way? If all things decay, why start anything?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 149
END

IF ~~ THEN BEGIN 399 // from:
  SAY #31839 /* ~A brief and...? No... no! Love should be enduring! It embodies hope and strength... are you saying that you expect it to end?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 150
END

IF ~~ THEN BEGIN 400 // from:
  SAY #31846 /* ~No... no, I... I just want to know that you'll love me... and that you'll be there for me... that is all.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 153
END

IF ~~ THEN BEGIN 401 // from:
  SAY #31849 /* ~I... I guess that'll have to be enough. For now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 402 // from:
  SAY #31885 /* ~I—I've just... I've just been thinking. About all this death, all these horrifying things Irenicus has done. He actually stole a soul, and—and all these people died for nothing!~ [AERIE86] */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403 // from: 402.0
  SAY #31886 /* ~And for what? Some "vengeance" that Irenicus wants! For that he throws people aside like mere objects?! I... I cannot believe that such evil is allowed to exist!~ */
  IF ~~ THEN GOTO 404
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #31887 /* ~Haer'Dalis! We must scour the face of Faerûn of such foulness! The very stink of it clogs my every breath! No mercy! No mercy must be shown to such evil!~ */
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN GOTO 405
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN EXTERN ~BHAERDA~ 155
END

IF ~~ THEN BEGIN 405 // from: 404.0
  SAY #31888 /* ~And you, <CHARNAME>... I now see much of the same mark of evil in you. I will watch you carefully. You have earned my respect, but I will not tolerate the callousness I see in you any longer.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 155
END

IF ~~ THEN BEGIN 406 // from:
  SAY #31893 /* ~I am not here to destroy, Haer'Dalis! I want to stop Irenicus! I wish to fight against evil that exists in this world!~ */
  IF ~~ THEN GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.0
  SAY #31894 /* ~I will not sit idly by and be pathetic! I have paid too much attention to my own sorrows and experiences... and not enough to the evil that has surrounded me!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 156
END

IF ~~ THEN BEGIN 408 // from:
  SAY #31896 /* ~I don't care a whit for your philosophy, Haer'Dalis! I am so full of anger that I cannot control it... and this callous evil that I see, it will pay!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 157
END

IF ~~ THEN BEGIN 409 // from:
  SAY #31898 /* ~Well, I am not pleased! And it is obvious that you do not really care for me after all! We are through, you and I!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 158
END

IF ~~ THEN BEGIN 410 // from:
  SAY #31900 /* ~So be it! Come, then, <CHARNAME>... let us go and complete your quest. I shall fight by your side until this is over... and then I shall make my own way in the world for once.~ */
  IF ~~ THEN DO ~SetGlobal("AerieHardened","GLOBAL",1)
SetGlobal("HaerDalisRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 411 // from:
  SAY #37147 /* ~But that is how I was in the circus when I was kept in a—a cage. It was horrible, Valygar, but Quayle came and healed me... healed my sores where...~ */
  IF ~~ THEN GOTO 412
END

IF ~~ THEN BEGIN 412 // from: 411.0
  SAY #37148 /* ~He healed where my wings had come off... He taught... he taught me magic, and it freed me. It's not spells that change people. Good people do good things...~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 2
END

IF ~~ THEN BEGIN 413 // from: 379.0
  SAY #56239 /* ~Once it's over, I'll find my own way in the world for a while. And... and then perhaps one day we will meet again. And then we'll talk.~ */
  IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 414 // from: 384.0
  SAY #56240 /* ~I... I am willing to stay with you now. Your quest is too important for me not to help you, even if... if it will be hard, with you so close. And then, after, I can leave.~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 415 // from: 385.1
  SAY #56241 /* ~Then let us continue. A new day awaits us.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 416 // from:
  SAY #56243 /* ~I was talking to him, not to you! You've made your feelings on everything apparent enough!~ [AERIED3] */
  IF ~~ THEN EXTERN ~BVICONI~ 538
END

IF ~~ THEN BEGIN 417 // from:
  SAY #56245 /* ~Go away, Viconia. M-maybe it is silly of me to ask you about my scars, <CHARNAME>. I... I just respect your opinion.~ */
  IF ~~ THEN REPLY #56247 /* ~I don't think they make you ugly, Aerie. Far from it.~ */ GOTO 131
  IF ~~ THEN REPLY #56248 /* ~It would take far more than a couple of scars to hide all the other beauty you possess, Aerie.~ */ GOTO 131
  IF ~~ THEN REPLY #56249 /* ~I have no time to discuss your vanity, Aerie.~ */ GOTO 135
  IF ~~ THEN REPLY #56251 /* ~Viconia's right. What am I supposed to say? Let's just keep going.~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.3
  SAY #56252 /* ~Well, if... if you're going to listen to her, then fine. You are very cruel, <CHARNAME>. You deserve someone like her, obviously.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 419 // from:
  SAY #56255 /* ~I was just asking for his opinion... is that so bad, Jaheira?~ [AERIEE1] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 426
END

IF ~~ THEN BEGIN 420 // from:
  SAY #56259 /* ~I... I don't know. Maybe it was silly of me to ask you, <CHARNAME>. I just... respect your opinion. I have no idea what I look like... to men.~ */
  IF ~~ THEN REPLY #56260 /* ~I don't think your scars make you ugly, Aerie. Far from it.~ */ GOTO 131
  IF ~~ THEN REPLY #56262 /* ~It would take far more than a couple of scars to hide all the other beauty you possess, Aerie.~ */ GOTO 131
  IF ~~ THEN REPLY #56263 /* ~I have no time to discuss your vanity, Aerie.~ */ GOTO 135
  IF ~~ THEN REPLY #56264 /* ~Jaheira's right. You should forget about them and move on.~ */ GOTO 421
END

IF ~~ THEN BEGIN 421 // from: 420.3
  SAY #56266 /* ~I... maybe you're right. It was silly of me to bring it up. I'll not bother you again about anything.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 422 // from:
  SAY #56268 /* ~I was just trying to talk to someone about traveling. Why must you be so cruel?~ [AERIED6] */
  IF ~~ THEN EXTERN ~BVICONI~ 539
END

IF ~~ THEN BEGIN 423 // from:
  SAY #56270 /* ~You are no martyr, Viconia. You don't fool me! And... and I am not interested in *your* travels—I was asking <CHARNAME> about his!~ */
  IF ~~ THEN REPLY #56271 /* ~I have been traveling since I left Candlekeep many, many months ago.~ */ GOTO 168
  IF ~~ THEN REPLY #56272 /* ~I am not interested in discussing my travels, Aerie.~ */ GOTO 172
  IF ~~ THEN REPLY #56273 /* ~Viconia's right... if you want to whine about your difficulties, do it somewhere else.~ */ GOTO 173
END

IF ~~ THEN BEGIN 424 // from:
  SAY #56276 /* ~I never said that was what I thought! And even if I did, I... I... I don't think I would need correction from such a bitter, nagging woman as you!~ [AERIEE2] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 428
END

IF ~~ THEN BEGIN 425 // from:
  SAY #56278 /* ~Yes, well, I don't need the benefit of *your* experience, Jaheira. I was asking <CHARNAME> about his. I... I just wanted to talk about his travels, is all.~ */
  IF ~~ THEN REPLY #56279 /* ~I have been traveling since I left Candlekeep many, many months ago.~ */ GOTO 168
  IF ~~ THEN REPLY #56280 /* ~I am not interested in discussing my travels, Aerie.~ */ GOTO 172
  IF ~~ THEN REPLY #56281 /* ~Listen, Aerie... if you want to whine about your difficulties, do it somewhere else.~ */ GOTO 173
END

IF ~~ THEN BEGIN 426 // from:
  SAY #56283 /* ~Oh yes, I know! I've seen you sizing him up like... like he's some piece of steak! You think the rest of us don't know?~ [AERIED7] */
  IF ~~ THEN EXTERN ~BVICONI~ 542
END

IF ~~ THEN BEGIN 427 // from:
  SAY #56285 /* ~That... that has *nothing* to do with it! What... what's pathetic is that you actually think anyone would be interested in a cold, heartless, evil woman like you!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 543
END

IF ~~ THEN BEGIN 428 // from:
  SAY #56287 /* ~I don't care! I don't care! <CHARNAME>, I can't stand this! I can't stand *her*, and I especially can't stand being stuck on the ground like some worm. Oh Baervan, help me!~ */
  IF ~~ THEN REPLY #56288 /* ~Life down here isn't so wretched, Aerie.~ */ GOTO 202
  IF ~~ THEN REPLY #56289 /* ~Well, you're going to have to accept it, Aerie. You're going to have to find the strength to face up to it.~ */ GOTO 203
  IF ~~ THEN REPLY #56290 /* ~Don't say that... we'll find some way to restore your wings, I promise!~ */ GOTO 206
  IF ~~ THEN REPLY #56291 /* ~If you continue to act so weak and maudlin, then I agree... you'll never survive.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 210
END

IF ~~ THEN BEGIN 429 // from:
  SAY #56301 /* ~I am *not* your child! I'm older than you are, more than likely! And... and the only thing my "simpering" does is distract you from those little looks you're always giving him!~ [AERIEE3] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 430
END

IF ~~ THEN BEGIN 430 // from:
  SAY #56304 /* ~If... if a life of adventure will turn me into an annoying, heartless woman ready to abandon her dead husband's memory so soon after his death, then... then maybe you're right!~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 431
END

IF ~~ THEN BEGIN 431 // from:
  SAY #56307 /* ~Shut up, drow! Shut up! Ugh! As if anyone would listen to... to the opinions of some poisonous serpent! Spend your venom elsewhere, Viconia; he won't listen to you!~ [AERIED8] */
  IF ~~ THEN EXTERN ~BVICONI~ 545
END

IF ~~ THEN BEGIN 432 // from:
  SAY #56309 /* ~Nobody deserves you, just like nobody deserves some horrid disease! You're like some affliction that should be cut off from the rest of the body!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 546
END

IF ~~ THEN BEGIN 433 // from:
  SAY #56311 /* ~There... there is more to love and affection than frequent trips to the bedroom, Viconia! I'm sure <CHARNAME> wouldn't care for someone who has spent most of her life on her back!~ */
  IF ~~ THEN EXTERN ~BVICONI~ 547
END

IF ~~ THEN BEGIN 434 // from:
  SAY #56318 /* ~Oh, <CHARNAME>... this... this is so embarrassing! I... I didn't mean for it all to come out like this! Nothing ever seems to go right!~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 435 // from:
  SAY #56321 /* ~Obviously, you two... deserve each other then. I... I'll just go and sleep elsewhere then, and be alone. You are not the man I mistook you for, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 436 // from:
  SAY #56322 /* ~I... how could you be so cruel?! I... I was only trying my best; I... I was only trying to win your approval. I'm... I'll never be... oh, I have to go! I have to leave!~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
Wait(2)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 437 // from:
  SAY #56324 /* ~Shut up, Jaheira! You think he'll be somehow impressed because... because you're so mean? You do nothing but boss people around! No wonder that Khalid was the only man who would marry you!~ [AERIEE4] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 433
END

IF ~~ THEN BEGIN 438 // from:
  SAY #56326 /* ~Or what?! I do know of your Khalid! They say... they say he was a weak man whom you bossed around! Well, <CHARNAME> isn't like that! He isn't!~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 434
END

IF ~~ THEN BEGIN 439 // from:
  SAY #56328 /* ~But it's you who are jealous, Jaheira! You're constantly picking on me, glaring at me! You want <CHARNAME> to yourself!~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 435
END

IF ~~ THEN BEGIN 440 // from:
  SAY #56336 /* ~I... I never... I didn't mean. Ooooh, just... just leave me alone, <CHARNAME>. Just leave me alone. I... I'll sleep away from everyone else... I just need to be alone.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 441 // from:
  SAY #56344 /* ~*sigh* And you probably wonder why they don't think much of you... or any drow, for that matter.~ [AERIED4] */
  IF ~~ THEN EXTERN ~BVICONI~ 553
END

IF ~~ THEN BEGIN 442 // from:
  SAY #56357 /* ~You are "exceedingly harsh" in your treatment of everyone, Viconia. Why should he be any different?~ [AERIED5] */
  IF ~~ THEN EXTERN ~BVICONI~ 557
END

IF ~~ THEN BEGIN 443 // from:
  SAY #56359 /* ~I can't imagine what you think to accomplish. You think <CHARNAME> doesn't see the saliva dripping from your fangs? You're not worthy of him, Viconia.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 558
END

IF ~~ THEN BEGIN 444 // from:
  SAY #56361 /* ~M-maybe <CHARNAME> doesn't care for your lusts, drow. Evil like yours isn't seductive, it's just sick, and... and seeing you crawl all over <CHARNAME> makes me retch.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 559
END

IF ~~ THEN BEGIN 445 // from:
  SAY #56369 /* ~F-fine, then. If... if that's what you want, <CHARNAME>, then she's all yours. Obviously, you are not the man I thought you to be.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~BVICONI~ 562
END

IF ~~ THEN BEGIN 446 // from:
  SAY #56401 /* ~You worry away at things... sometimes so much I expect them to fall apart. Why he should be interested in your nagging I don't know.~ [AERIED9] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 452
END

IF ~~ THEN BEGIN 447 // from:
  SAY #56403 /* ~But we all know what is coming, Jaheira. Nagging, picking, bossing. That's... that's what you're best at, isn't it? Oh, never mind.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 453
END

IF ~~ THEN BEGIN 448 // from:
  SAY #58598 /* ~F-fine! I'll go! If <CHARNAME> has a... a thug like you around, then there's no need for me, is there?!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 469 473 even though they appear after this state */
~  IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!Global("AerieRomanceActive","GLOBAL",1)
!Global("AerieRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",1)
!Global("RasaadRomanceActive","GLOBAL",2)
!AreaType(DUNGEON)
Global("OHR_aerie","GLOBAL",0)
~ THEN BEGIN 449 // from:
  SAY #98674 /* ~Hello, Rasaad.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_aerie","GLOBAL",1)
~ EXTERN ~BRASAAD~ 0
END

IF ~~ THEN BEGIN 450 // from:
  SAY #98676 /* ~Oh—nothing.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 1
END

IF ~~ THEN BEGIN 451 // from:
  SAY #98680 /* ~I was wondering—I mean, I know what it's like to be alone.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 4
END

IF ~~ THEN BEGIN 452 // from:
  SAY #98685 /* ~No! I just meant— I mean— Never mind.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 5
END

IF ~~ THEN BEGIN 453 // from: 454.0
  SAY #98710 /* ~I— Excuse me, I— Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 454 // from:
  SAY #98712 /* ~Oh, don't do that. Please, I—~ */
  IF ~~ THEN GOTO 453
END

IF ~~ THEN BEGIN 455 // from:
  SAY #99560 /* ~Um. Me?~ */
  IF ~~ THEN EXTERN ~BDORN~ 9
END

IF ~~ THEN BEGIN 456 // from:
  SAY #99562 /* ~I don't—I don't understand the question...~ */
  IF ~~ THEN EXTERN ~BDORN~ 10
END

IF ~~ THEN BEGIN 457 // from:
  SAY #99564 /* ~I'm—I'm not a simpering child.~ */
  IF ~~ THEN EXTERN ~BDORN~ 11
END

IF ~~ THEN BEGIN 458 // from:
  SAY #99566 /* ~You don't order me around. I'll go when <CHARNAME> says to go. And I don't think <PRO_HESHE> will say that.~ */
  IF ~~ THEN EXTERN ~BDORN~ 12
END

IF ~~ THEN BEGIN 459 // from:
  SAY #98331 /* ~What? No! No.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 22
END

IF ~~ THEN BEGIN 460 // from:
  SAY #98333 /* ~Say to you? I— No. No. Sorry.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 23
END

IF ~~ THEN BEGIN 461 // from:
  SAY #98335 /* ~For— I'm sorry?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 24
END

IF ~~ THEN BEGIN 462 // from:
  SAY #98337 /* ~I don't know— I—I just...~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 25
END

IF ~~ THEN BEGIN 463 // from:
  SAY #98339 /* ~Yes. I guess.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 26
END

IF ~~ THEN BEGIN 464 // from:
  SAY #98341 /* ~You think we're friends?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 27
END

IF ~~ THEN BEGIN 465 // from:
  SAY #98343 /* ~No— I— Maybe? No—you're a vampire.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 28
END

IF ~~ THEN BEGIN 466 // from:
  SAY #98345 /* ~Yes, but—I can't talk to you about this.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 29
END

IF ~~ THEN BEGIN 467 // from:
  SAY #98347 /* ~No, don't— I mean—~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 30
END

IF ~~ THEN BEGIN 468 // from:
  SAY #98349 /* ~Thank you?~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #38 /* Triggers after states #: 473 even though they appear after this state */
~  IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_aerie2","GLOBAL",0)
~ THEN BEGIN 469 // from:
  SAY #102131 /* ~Do you think w-we don't know what you do at night, when we're sleeping?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_aerie2","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 154
END

IF ~~ THEN BEGIN 470 // from:
  SAY #102133 /* ~I've seen you. I've seen the stains. You... you kill people. Innocent people.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 155
END

IF ~~ THEN BEGIN 471 // from:
  SAY #102135 /* ~You don't deserve to travel with us. You... you don't deserve anything at all.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 156
END

IF ~~ THEN BEGIN 472 // from:
  SAY #102137 /* ~I—what?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 157
END

IF WEIGHT #29 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("AERIE")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_aerie","GLOBAL",0)
~ THEN BEGIN 473 // from:
  SAY #88647 /* ~Neera? C-can I ask you a question? It's just—well, you seem so self-possessed. How do you do it? How do you make yourself confident?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_aerie","GLOBAL",1)
~ EXTERN ~BNEERA~ 83
END

IF ~~ THEN BEGIN 474 // from:
  SAY #88649 /* ~But you cast them anyway. If I feared my spells would go wrong, I don't think I would.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 84
END

IF ~~ THEN BEGIN 475 // from:
  SAY #88651 /* ~Without wings? Yes. Flying was that way for me once. Perhaps that is why I feel as I do.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 85
END

IF ~~ THEN BEGIN 476 // from:
  SAY #88653 /* ~It's not your fault, Neera. I just need a moment to myself, please.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 477 // from:
  SAY #88751 /* ~Does liking shortbread seem too obvious, Anomen? Because I do! It seems hard to make... Good luck!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 177
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~BNALIA~ 72
  IF ~  IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~BMAZZY~ 153
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~BVICONI~ 610
END
