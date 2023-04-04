// creator  : weidu (version 24900)
// argument : BNALIA.DLG
// game     : .
// source   : ./override/BNALIA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BNALIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  InParty("Mazzy")
See("Mazzy")
AreaType(CITY)
!StateCheck("Mazzy",STATE_SLEEPING)
Global("BNalia1","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #24578 /* ~Look how these people squander their wealth. Children lie starving in the street while the wealthy concern themselves with acquiring the latest Calimshan silks.~ [NALIA51] */
  IF ~~ THEN DO ~SetGlobal("BNalia1","LOCALS",1)
~ GOTO 47
END

IF ~~ THEN BEGIN 1 // from:
  SAY #24579 /* ~Ignorance has always been a convenient excuse for the rich to live out their lives in comfort.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY #24580 /* ~It can be done. My noble birth does not affect my actions today, but I do agree that most nobility will not understand poverty until they suffer it themselves.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #24581 /* ~For a time, yes. But the poor understand what it's like to be trampled upon. They would show compassion.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 115
END

IF ~~ THEN BEGIN 4 // from:
  SAY #24599 /* ~Perhaps this is something that I should think upon, but I still say there is no excuse for the actions of some.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 15
END

IF WEIGHT #1 ~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("BNalia2","LOCALS",0)
~ THEN BEGIN 5 // from:
  SAY #710 /* ~All this traveling is beginning to wear on me... I can't remember the last time I walked so much in a single day. Haha haha... it's something my aunt should try, I think... instead of being hauled about in her gilded carriage.~ [NALIA53] */
  IF ~~ THEN DO ~SetGlobal("BNalia2","LOCALS",1)
~ EXTERN ~BJAN~ 23
END

IF ~~ THEN BEGIN 6 // from:
  SAY #711 /* ~I don't think that I could be very much like a person named Cletus.~ */
  IF ~~ THEN EXTERN ~BJAN~ 24
END

IF ~~ THEN BEGIN 7 // from:
  SAY #712 /* ~Please, Jan! This is too ridiculous, even for you!~ */
  IF ~~ THEN EXTERN ~BJAN~ 25
END

IF ~~ THEN BEGIN 8 // from:
  SAY #713 /* ~This is disgusting, Jan.~ */
  IF ~~ THEN EXTERN ~BJAN~ 28
END

IF ~~ THEN BEGIN 9 // from:
  SAY #714 /* ~I'm sorry. His illness killed him, did it?~ */
  IF ~~ THEN EXTERN ~BJAN~ 29
END

IF ~~ THEN BEGIN 10 // from:
  SAY #715 /* ~Honestly, Jan, that is the stupidest thing I've ever heard.~ */
  IF ~~ THEN EXTERN ~BJAN~ 31
END

IF WEIGHT #2 ~  InParty("HaerDalis")
See("HaerDalis")
AreaType(CITY)
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("BNalia3","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #1124 /* ~I can't stand seeing all these taverns around the city. They exist simply to drain the poorer classes of their money and throw them into such a stupor that they can't even realize their oppression.~ [NALIA54] */
  IF ~~ THEN DO ~SetGlobal("BNalia3","LOCALS",1)
~ EXTERN ~BHAERDA~ 0
END

IF ~~ THEN BEGIN 12 // from:
  SAY #1126 /* ~Don't patronize me, Haer'Dalis, for I have never done the same to you.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 1
END

IF WEIGHT #3 ~  InParty("Aerie")
See("Aerie")
HPPercentLT("Aerie",25)
CombatCounter(0)
!StateCheck("Aerie",STATE_SLEEPING)
Global("BNalia4","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #2597 /* ~Could we get a bit of help over here? Someone in the party is injured and needs attention. Aerie, are you all right?~ [NALIA55] */
  IF ~~ THEN DO ~SetGlobal("BNalia4","LOCALS",1)
MoveToObject("Aerie")
~ EXTERN ~BAERIE~ 11
END

IF ~~ THEN BEGIN 14 // from:
  SAY #2601 /* ~We need a cleric here! She's injured!~ */
  IF ~~ THEN EXTERN ~BAERIE~ 12
END

IF ~~ THEN BEGIN 15 // from:
  SAY #2618 /* ~All right, Aerie... but be careful out there.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #2621 /* ~Yes, my dear?~ [NALIA48] */
  IF ~~ THEN EXTERN ~BAERIE~ 14
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2623 /* ~It has to start somewhere, Aerie.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 15
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2626 /* ~Love... justice... the rights of people to choose their own destiny in this world.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 16
END

IF ~~ THEN BEGIN 19 // from:
  SAY #2629 /* ~Oh, Aerie, with the exception of Gond, our gods are not clockmakers. They have made us living, breathing creatures with minds, emotions, desires.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2981 /* ~What provoked this hostility, Korgan?~ [NALIA49] */
  IF ~~ THEN EXTERN ~BKORGAN~ 91
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2982 /* ~I'm sorry, Korgan. I seek no conflict and wish only to be left alone. Forgive my slights, if I made any.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 38
END

IF ~~ THEN BEGIN 22 // from:
  SAY #5036 /* ~I think that goes without saying.~ [NALIA50] */
  IF ~~ THEN EXTERN ~BYOSHIM~ 8
END

IF ~~ THEN BEGIN 23 // from:
  SAY #5037 /* ~If I had wanted your tutelage, surely I would have asked for it!~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 9
END

IF ~~ THEN BEGIN 24 // from:
  SAY #5038 /* ~I know, Yoshimo. I'm not angry with you, really... I'm just nervous. I would feel very guilty if I set off a trap by accident. ~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 10
END

IF ~~ THEN BEGIN 25 // from:
  SAY #5039 /* ~I will try not to disappoint.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BNalia5","LOCALS",0)
~ THEN BEGIN 26 // from:
  SAY #7094 /* ~An interesting little situation you've found yourself in, Edwin. I trust you'll use it to better learn how others think and feel?~ [NALIA56] */
  IF ~~ THEN DO ~SetGlobal("BNalia5","LOCALS",1)
~ EXTERN ~BEDWIN~ 84
END

IF ~~ THEN BEGIN 27 // from:
  SAY #7231 /* ~But you could do so much more. How can you throw away this opportunity to really walk a mile in another's shoes? I would love such an...~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 85
END

IF ~~ THEN BEGIN 28 // from:
  SAY #7233 /* ~But I just thought...~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 86
END

IF WEIGHT #6 /* Triggers after states #: 73 even though they appear after this state */
~  InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BNalia6","LOCALS",0)
~ THEN BEGIN 29 // from:
  SAY #7274 /* ~Edwin, you should learn to walk a little more dignified... carry yourself in a better manner.~ [NALIA57] */
  IF ~~ THEN DO ~SetGlobal("BNalia6","LOCALS",1)
~ EXTERN ~BEDWIN~ 87
END

IF ~~ THEN BEGIN 30 // from:
  SAY #7277 /* ~You... well, the way you walk about, some might think you were... of little moral fiber. You should present a more wholesome image if you are to remain like this.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 88
END

IF ~~ THEN BEGIN 31 // from:
  SAY #7278 /* ~Very well then, but if we get too close to the docks, you might find the less upstanding members of society getting more... familiar than you would like.~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 32 // from:
  SAY #7472 /* ~Edwin, I was not pampered, cajoled, or spoiled! True, I wanted for little, but yearned for more than wandering about estates. Is it not true that you're of noble birthright yourself? Calling the kettle red, wizard?~ [NALIA59] */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 33 // from:
  SAY #7475 /* ~Nothing in this world is more dangerous to me, Edwin, than your stupidity.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #8517 /* ~Viconia, it's simply a matter of even distribution of goods. There are those whose consumption is a crime against nature, and that injustice should be corrected whenever possible.~ [NALIA45] */
  IF ~~ THEN EXTERN ~BVICONI~ 6
END

IF ~~ THEN BEGIN 35 // from:
  SAY #8519 /* ~My kinship with the disenfranchised is my own affair, Viconia. To deny the need to help our fellows is cruel arrogance. And I am simply not that type of person.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 112
END

IF WEIGHT #7 /* Triggers after states #: 73 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
AreaCheck("AR0903")
Global("BNalia7","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #10855 /* ~So *this* is the guild house of the infamous Most Noble Order of the Radiant Heart, is it?~ [NALIA58] */
  IF ~~ THEN DO ~SetGlobal("BNalia7","LOCALS",1)
~ EXTERN ~BKELDOR~ 133
END

IF ~~ THEN BEGIN 37 // from:
  SAY #10857 /* ~Such as yourself, Keldorn?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 53
END

IF ~~ THEN BEGIN 38 // from:
  SAY #10859 /* ~And the Order pays for your estate?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 134
END

IF ~~ THEN BEGIN 39 // from:
  SAY #10863 /* ~And yet these halls and all your sacred vows are reserved only for us humans... Believe what lies you wish, Keldorn, but it shan't make them any truer.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.0
  SAY #18262 /* ~But that sort of comment coming from you is not any surprise, he who would rather live on his knees than die on his feet.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 5
END

IF ~~ THEN BEGIN 41 // from:
  SAY #20039 /* ~It shows, does it? I hoped I would be of some help to those less fortunate, but I seem to be quite prone to bruising.~ [NALIA44] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 30
END

IF ~~ THEN BEGIN 42 // from:
  SAY #20043 /* ~Thanks for your support... I think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21482 /* ~I am uncomfortable with their wealth, Valygar. There are so many who live in squalor, and yet we are supposed to hoist ourselves above them because we are nobles?~ [NALIA47] */
  IF ~~ THEN EXTERN ~BVALYGA~ 78
END

IF ~~ THEN BEGIN 44 // from:
  SAY #21484 /* ~Tell that to a starving peasant.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 79
END

IF ~~ THEN BEGIN 45 // from:
  SAY #21486 /* ~Well... no, of course not. But that has—~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 80
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21488 /* ~I... I suppose...~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 81
END

IF ~~ THEN BEGIN 47 // from: 0.0
  SAY #37625 /* ~I'm sure that, as we speak, the nobles argue over the relative benefits of white and red Evermeet wine, merely 1,000 gold pieces per glass. ~ [NALIA52] */
  IF ~~ THEN EXTERN ~BMAZZY~ 3
END

IF ~~ THEN BEGIN 48 // from:
  SAY #37626 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 19.0
  SAY #37627 /* ~Only birth and death are destiny; all else is choice and consequence... Come, the sun is setting, and it casts long shadows on our thoughts.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 31.0
  SAY #37628 /* ~As well, I would suggest you treat the party with civility lest someone arrange for such an occurrence to happen. Perhaps nearer the zoo.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 89
END

IF WEIGHT #8 /* Triggers after states #: 73 even though they appear after this state */
~  IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_nalia","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #98978 /* ~I admire you, Rasaad. The Sun Soul order has done great things for the poor.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_nalia","GLOBAL",1)
~ EXTERN ~BRASAAD~ 101
END

IF ~~ THEN BEGIN 52 // from:
  SAY #98980 /* ~The destitute do appreciate the little things more than the noble class.~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #98981 /* ~I sometimes wish I'd been born to a lesser rank. Their lives are hard, but they have meaning, wouldn't you agree? There's a nobility inherent in struggle.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 102
END

IF ~~ THEN BEGIN 54 // from:
  SAY #98983 /* ~I guess you're right. I was born to a high station, but I try to make a difference in the lives of those unfortunate people I meet.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #98984 /* ~I care about them. I want to help them.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 103
END

IF ~~ THEN BEGIN 56 // from:
  SAY #98986 /* ~Some do. Some are just—well, rude.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #102127 /* ~Wh-what?~ */
  IF ~~ THEN EXTERN ~BDORN~ 105
END

IF ~~ THEN BEGIN 58 // from:
  SAY #102129 /* ~Fine then! Next time I'll just let you get hurt!~ */
  IF ~~ THEN EXTERN ~BDORN~ 106
END

IF ~~ THEN BEGIN 59 // from:
  SAY #99331 /* ~Of course, Hexxat. What can I do for you?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 116
END

IF ~~ THEN BEGIN 60 // from:
  SAY #99333 /* ~I don't know what you're talking about.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 117
END

IF ~~ THEN BEGIN 61 // from:
  SAY #99335 /* ~I did know that. I forgot about it temporarily, but it was something I was aware of, at one point.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 118
END

IF ~~ THEN BEGIN 62 // from:
  SAY #99337 /* ~...~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #99338 /* ~I'm sorry I went through your things.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 119
END

IF ~~ THEN BEGIN 64 // from:
  SAY #99340 /* ~I wasn't going to ROB you.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 120
END

IF ~~ THEN BEGIN 65 // from:
  SAY #99342 /* ~No! I just wanted to—see what sort of things you carried. I wanted to see if they were as, as—exotic as you are.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 121
END

IF ~~ THEN BEGIN 66 // from:
  SAY #99344 /* ~They weren't. It was just a normal pack.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 122
END

IF ~~ THEN BEGIN 67 // from:
  SAY #99347 /* ~Rude?!~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #99348 /* ~I mean—I'm sorry. Next time, I'll do as you say.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 124
END

IF ~~ THEN BEGIN 69 // from:
  SAY #102222 /* ~You're an evil woman.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 165
END

IF ~~ THEN BEGIN 70 // from:
  SAY #102224 /* ~You know, you talk as though the world has done you some great wrong, and the women you killed somehow deserved what you did to them. Do you know what I think?~ */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #102225 /* ~I think you're lying to yourself. Because it's easier than facing the truth of your own existence. I think you're pathetic. And this conversation is over.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #88754 /* ~Oh, Anomen! I'd love some sweet spiced wine. Our cellars were full of wine from the Vilhon Reach that our cooks would make into the most delicious concoctions... ~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 177
END

IF WEIGHT #5 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("NALIA")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
GlobalGT("OHN_PLOT","GLOBAL",5)
Global("OHN_nalia","GLOBAL",0)
~ THEN BEGIN 73 // from:
  SAY #88810 /* ~Neera? Can you spare a moment?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_nalia","GLOBAL",1)
~ EXTERN ~BNEERA~ 147
END

IF ~~ THEN BEGIN 74 // from:
  SAY #88812 /* ~I just wanted to say I—I'm very sorry for what happened to your sanctuary. I know how it must have felt to see your dreams go up in smoke, to have your ideals shaken like that.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 148
END

IF ~~ THEN BEGIN 75 // from:
  SAY #88814 /* ~Oh? You weren't quite yourself until the enclave was destroyed. An eye for an eye, of course. There's a kind of primitive justice in that. But you must still be disappointed things went—the way they went.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 149
END

IF ~~ THEN BEGIN 76 // from:
  SAY #88816 /* ~Of course, of course. All I'm saying—~ */
  IF ~~ THEN EXTERN ~BNEERA~ 150
END

IF ~~ THEN BEGIN 77 // from:
  SAY #88818 /* ~I'm sorry. I just wanted you to know I understand how it feels to have the grim realities of the world challenge your ideals. It's happened to me, too. It KEEPS happening to me, in fact.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 151
END

IF ~~ THEN BEGIN 78 // from:
  SAY #88820 /* ~Yes. Pardon. Of course.~ */
  IF ~~ THEN EXIT
END
