// creator  : weidu (version 24900)
// argument : KELDOR.DLG
// game     : .
// source   : ./override/KELDOR.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~KELDOR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #8256 /* ~Halt and go no further, laymen! There be a grave evil here, the source of which I have yet to find. Please, forgive the harshness of my tone, but state your business in this place.~ [KELDOR01] */
  IF ~~ THEN REPLY #8257 /* ~You should know better than to ask questions of people who wander the sewers.~ */ DO ~SetGlobalTimer("KeldornMetPlayer","GLOBAL",FIFTY_DAYS)
~ GOTO 17
  IF ~~ THEN REPLY #8259 /* ~We have been sent by the church to search these depths for missing followers. ~ */ DO ~SetGlobalTimer("KeldornMetPlayer","GLOBAL",FIFTY_DAYS)
~ GOTO 18
  IF ~~ THEN REPLY #8264 /* ~A grave evil, you say... Of what sort, and who are you to seek it out?~ */ DO ~SetGlobalTimer("KeldornMetPlayer","GLOBAL",FIFTY_DAYS)
~ GOTO 22
  IF ~~ THEN REPLY #8290 /* ~If there be an evil here, old man, I assure you that we are quite well equipped for it.~ */ DO ~SetGlobalTimer("KeldornMetPlayer","GLOBAL",FIFTY_DAYS)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 17.0
  SAY #8269 /* ~Today, however, I fear the current nature of my duty bars me from letting anyone slip by unquestioned. So please, what brings you to this place?~ */
  IF ~~ THEN REPLY #8281 /* ~We have church orders to search these depths for the fate of their missing followers.~ */ GOTO 18
  IF ~~ THEN REPLY #8288 /* ~That is none of your business. Let me pass; I have not come to hurt you...~ */ GOTO 21
  IF ~~ THEN REPLY #8297 /* ~Do not question me. Get out of here before I cut your tongue from its case.~ */ GOTO 21
END

IF ~~ THEN BEGIN 2 // from: 19.0
  SAY #8304 /* ~Come, let us seal our fates together and seek it out. I was instructed to await the group that I would aid in this matter. It is my duty to serve for the greater good.~ */
  IF ~~ THEN REPLY #8310 /* ~I think it best that we maintain separate paths. May the gods bless and keep you.~ */ GOTO 20
  IF ~~ THEN REPLY #8317 /* ~Your presence in my group would be most welcome. I accept your service.~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 20.0
  SAY #8319 /* ~After your work in this place is done, seek me out at the Order of the Radiant Heart. This city is the heart of much corruption, and the work of an old paladin is never done.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornMove","GLOBAL",1)
EscapeAreaMove("AR0903",734,368,SEE)
~ SOLVED_JOURNAL #48019 /* ~Sir Keldorn returns to the Radiant Heart 

I encountered a paladin of the Most Noble Order of the Radiant Heart in the sewers beneath the city, apparently searching for the source of this cult as I am. He invited me to seek him out later at the Radiant Heart headquarters in the Temple District, once the cult business is finished.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #8335 /* ~Lead on then; I will direct my sword where you wish. Let us seek an exit from these pits that leads to the greater blackness below.~ */
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42204 /* ~I should tell you, I think, that I have another mission as well. I seek to rescue an old friend of mine named Imoen who has been captured by the Cowled Wizards.~ */ GOTO 39
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #61243 /* ~You should know that I am hunting a powerful mage by the name of Irenicus. He was taken by Cowled Wizards, and there will be considerable danger.~ */ GOTO 39
  IF ~~ THEN REPLY #42205 /* ~Very well, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 21.0
  SAY #8346 /* ~If not, then I shall do my best to make your death as painless as possible. Come, let us finish this unhappy task and be done with it.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 23.0
  SAY #8354 /* ~Now surely you must understand that I cannot let you pass without an answer to my questions. What is your business here?~ */
  IF ~~ THEN REPLY #8369 /* ~My church dictates that I search these depths. If you do the same, tell me what you know. ~ */ GOTO 19
  IF ~~ THEN REPLY #8372 /* ~Like yourself, I have been sent to search this place for clues. Found anything?~ */ GOTO 24
  IF ~~ THEN REPLY #8377 /* ~I don't jump for paladins, so move aside. We'll not disturb your precious quest.~ */ GOTO 21
END

IF ~~ THEN BEGIN 7 // from: 24.1
  SAY #8381 /* ~Aye, I would appreciate the company, especially against an unknown foe. Come, let us find an exit from these pits that do not open skyward.~ */
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42207 /* ~I should tell you, I think, that I have another mission as well. I seek to rescue an old friend of mine named Imoen who has been captured by the Cowled Wizards.~ */ GOTO 39
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58681 /* ~Very well. You should know, however, that I am hunting a powerful wizard by the name of Irenicus. There will be considerable danger.~ */ GOTO 39
  IF ~~ THEN REPLY #42208 /* ~Very well, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8387 /* ~When our duties here are done, perhaps we might share more favorably in each other's company. I maintain my quarters at the Order of the Radiant Heart. Seek me out there.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornMove","GLOBAL",1)
EscapeAreaMove("AR0903",734,368,SEE)
~ SOLVED_JOURNAL #48019 /* ~Sir Keldorn returns to the Radiant Heart 

I encountered a paladin of the Most Noble Order of the Radiant Heart in the sewers beneath the city, apparently searching for the source of this cult as I am. He invited me to seek him out later at the Radiant Heart headquarters in the Temple District, once the cult business is finished.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 26.0
  SAY #8397 /* ~Now surely you must understand that I cannot let you pass without an answer to my questions. What is your business here?~ */
  IF ~~ THEN REPLY #8404 /* ~My church dictates that I search these depths. If you do the same, tell me what you know. ~ */ GOTO 19
  IF ~~ THEN REPLY #8405 /* ~I don't jump for paladins, so move aside. We'll not disturb your precious quest.~ */ GOTO 21
  IF ~~ THEN REPLY #8406 /* ~I have similar objectives to your own. What you have found out about this place?~ */ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 28.0 24.0
  SAY #8409 /* ~When that presence has been felled, search for me at the Order of the Radiant Heart and perhaps we can benefit more fully from each other's company. Until then, walk in faith...~ */
  IF ~~ THEN DO ~SetGlobal("KeldornMove","GLOBAL",1)
EscapeAreaMove("AR0903",734,368,SEE)
~ SOLVED_JOURNAL #48019 /* ~Sir Keldorn returns to the Radiant Heart 

I encountered a paladin of the Most Noble Order of the Radiant Heart in the sewers beneath the city, apparently searching for the source of this cult as I am. He invited me to seek him out later at the Radiant Heart headquarters in the Temple District, once the cult business is finished.~ */ EXIT
END

IF ~  Global("KeldornMove","GLOBAL",1)
Dead("UnseeingEye")
~ THEN BEGIN 11 // from:
  SAY #8428 /* ~Welcome to the guild house of my Order, old friends. It seems you fared better than I in those sewers—I felt the evil below me fade, which is well. Tell me, how might I be of service to you?~ [KELDOR83] */
  IF ~~ THEN REPLY #8497 /* ~I am here to learn more of your Order, Keldorn, if you would be so kind.~ */ GOTO 29
  IF ~~ THEN REPLY #8500 /* ~That is all right. I shall find my own way about, thank you.~ */ GOTO 15
  IF ~~ THEN REPLY #8502 /* ~I have come to petition for your service. I have need of an experienced knight to assist me in my journeys.~ */ GOTO 31
END

IF ~~ THEN BEGIN 12 // from: 30.0
  SAY #8513 /* ~Due to the nature of our calling, so few paladins live to see their fortieth year... but the Radiant Heart accepts nothing less, <GABBER>.~ */
  IF ~~ THEN REPLY #8524 /* ~Well, I could use some of that wisdom right now, Keldorn. Have you the freedom to travel with me for a while?~ */ GOTO 31
  IF ~~ THEN REPLY #8527 /* ~So the Radiant Heart is sort of a retirement home for paladins who have passed their prime, is that it?~ */ GOTO 32
  IF ~~ THEN REPLY #8528 /* ~Thank you, Keldorn. It has been enlightening.~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 31.0
  SAY #8529 /* ~Come, I have no baggage beyond what I carry with me now.~ */
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42209 /* ~I feel I should tell you first that I plan to rescue an old friend of mine named Imoen. She is held captive by the Cowled Wizards, and there could be considerable danger.~ */ GOTO 40
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58679 /* ~Very well. You should know, however, that I am hunting a powerful wizard by the name of Irenicus. There will be considerable danger.~ */ GOTO 41
  IF ~~ THEN REPLY #42210 /* ~All right, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 33.0
  SAY #8534 /* ~Wisdom does not fade with age, my friend. If anything, it grows stronger. Now excuse me, but I have some other tasks to perform.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornMove","GLOBAL",1)
EscapeAreaMove("AR0903",734,368,SEE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.1 12.2 11.1
  SAY #8545 /* ~It is my pleasure, as always.~ */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 16 // from:
  SAY #8548 /* ~Ah, 'tis always good to see you. How might I be of service?~ [KELDOR84] */
  IF ~~ THEN REPLY #8550 /* ~I am here to learn more of your Order, Keldorn, if you would be so kind.~ */ GOTO 29
  IF ~~ THEN REPLY #8551 /* ~That is all right. I shall find my own way about, thank you.~ */ GOTO 15
  IF ~~ THEN REPLY #8552 /* ~I have come to petition for your service. I have need of an experienced knight to assist me in my journeys.~ */ GOTO 31
END

IF ~~ THEN BEGIN 17 // from: 0.0
  SAY #33988 /* ~Aye, were times and circumstances different than what they are, I might let a petty purse-thief pass.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 1.0 0.1
  SAY #33989 /* ~Aye, then we are well met. I am a humble servant of the Most Noble Order of the Radiant Heart, and I believe I am to meet you here. Our quests are linked.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 9.0 6.0
  SAY #33990 /* ~The evil of which I spoke, its presence is quite strong and, unsurprisingly, it emanates from somewhere deep below us.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 2.0
  SAY #33991 /* ~They always have, for some reason. They always have...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 9.1 6.2 1.2 1.1
  SAY #33992 /* ~Something has been preying on the priests and knights of my Order, friend, so I fear I cannot let you pass. If you wish to fight, then draw what steel you wish.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY #33993 /* ~I am Keldorn, servant of the Most Noble Order of the Radiant Heart.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #33994 /* ~As for the evil of which I speak, I know only that it has preyed upon my brothers in faith. I have heard that the other churches have suffered similar losses of late.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 24 // from: 6.1
  SAY #33995 /* ~Only that whatever evil lurks about, it does so far below these simple sewers. I have not yet found a downward exit to this place, but I am sure that is where the evil sleeps. ~ */
  IF ~~ THEN REPLY #37842 /* ~Then I wish you luck finding it. I will go on my own. ~ */ GOTO 10
  IF ~~ THEN REPLY #37843 /* ~I would rather have us work together. We know not how powerful our foe shall be, and your sword would be welcome.~ */ GOTO 7
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY #33996 /* ~And with an attitude like that, you'll never reach my age at all, friend...~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #33997 /* ~I am Keldorn, servant of the Most Noble Order of the Radiant Heart. I have been sent here to root out an evil that has preyed twice on my brothers in faith. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 9.2
  SAY #33998 /* ~I have found little here, save the presence of evil's stench. Whatever it is, it is very powerful and has created about itself some perverse guise of faith.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #33999 /* ~It is below us somewhere... Deep. That is all I know.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 16.0 11.0
  SAY #34000 /* ~Certainly, though it is not so much a question of kindness as one of pride—one of my many failings, I fear.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #34001 /* ~The Most Noble Order of the Radiant Heart is among the most prestigious of knightly orders. It honors not only distinguished service in the name of the church, but also the wisdom of age.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 16.2 12.0 11.2
  SAY #34002 /* ~The Order has always granted me a certain degree of autonomy in my dealings. If it is to do battle against the pressing dark, then I shall be humbly present at your side.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 12.1
  SAY #34003 /* ~Ha, faith is not something from which you can retire, friend. It sparks your imagination and holds you forever in its passions.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #34004 /* ~I am one of the lucky ones in that my body still serves. But when it fails me, as someday it must, then I shall offer myself up to the courts and teach nobles to use their power gently and with grace...~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 34 // from:
  SAY #41432 /* ~You! I sense the stench of Talos upon you! I warn you, I am here to purge this place of the evil that has been claiming innocents, and if you are involved, I will see you dead!~ */
  IF ~~ THEN REPLY #41433 /* ~I seek the same as you, old man, so if you stay out of my way, we should get along fine.~ */ GOTO 35
  IF ~~ THEN REPLY #41434 /* ~I do not take kindly to threats! Withdraw your words before I feed them to you!~ */ GOTO 36
  IF ~~ THEN REPLY #41435 /* ~Can we not work together on this? I have been sent by the church to investigate.~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 36.0 34.0
  SAY #41438 /* ~If you are as you say, then I wish you well, though I will not have you at my back. Go, and search where you must. I shall take another route away from you.~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #41440 /* ~I will do no such thing. I sense the taint in you. If you wish to make an issue of it, then we shall come to blows. Move carefully here. I have seen no crime, so we may yet pass peacefully.~ */
  IF ~~ THEN REPLY #41442 /* ~Then go on your way. I will find what I seek without your meddling, paladin.~ */ GOTO 35
  IF ~~ THEN REPLY #41443 /* ~I will not have you wandering behind me waiting to pounce. Raise your weapon!~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY #41441 /* ~I doubt I should want any part of your church. No, if you must be here, then go your own way. I shall take a different route where you are not at my back. Farewell.~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #41445 /* ~As you would have it. I will not mourn the loss of your taint, even though there are greater battles to be fought.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 7.1 7.0 4.1 4.0
  SAY #42206 /* ~I know little of the wizards except that they meddle in the affairs of others far too often. Aid me first in this cause, my friend, and I will then strive to aid you in yours. Let us be off.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.0
  SAY #42211 /* ~The presence of danger does not deter me. And as for the wizards, I know little of them beyond their reputation for suspicious activities. Let us begin this task, then, of freeing your friend.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.1
  SAY #58680 /* ~If this wizard deserves his fate, as most do, then danger is no deterrent for me. I will aid you in your quest, as I have said.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END
