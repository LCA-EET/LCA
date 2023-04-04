// creator  : weidu (version 24900)
// argument : RASAADJ.DLG
// game     : .
// source   : ./override/RASAADJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~RASAADJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_bgeeromance","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #97361 /* ~I tell you, <CHARNAME>, I can understand the desire to take a break from adventuring, but I question your taste in accommodations.~ */
  IF ~~ THEN REPLY #97362 /* ~I'm sorry?~ */ DO ~SetGlobal("OHR_bgeeromance","GLOBAL",3)
SetGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 1
  IF ~~ THEN REPLY #97363 /* ~A brief dungeon stay is good for the soul. You should try it sometime.~ */ DO ~SetGlobal("OHR_bgeeromance","GLOBAL",3)
SetGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 4
  IF ~~ THEN REPLY #97364 /* ~Some advice for you, Rasaad: Leave the jokes to those who're good at them.~ */ DO ~SetGlobal("OHR_bgeeromance","GLOBAL",3)
SetGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #97365 /* ~Forgive me. I was trying to make a joke.~ */
  IF ~~ THEN REPLY #97362 /* ~I'm sorry?~ */ GOTO 2
  IF ~~ THEN REPLY #97366 /* ~I see. For future reference, you'll generally want to leave a few weeks between the imprisonment and torture and making jokes about it.~ */ GOTO 5
  IF ~~ THEN REPLY #97367 /* ~Next time, try harder. Actually, don't let there be a next time.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #97368 /* ~I was trying to make a joke.~ */
  IF ~~ THEN REPLY #97362 /* ~I'm sorry?~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #97369 /* ~I was trying to lighten your mood with a joke.~ */
  IF ~~ THEN REPLY #97370 /* ~I heard you. I'm just sorry.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.1 0.1
  SAY #97371 /* ~Really?~ */
  IF ~~ THEN REPLY #97372 /* ~Not really, no. Getting tortured by a mad wizard is not something I can recommend, at least not in good conscience.~ */ GOTO 8
  IF ~~ THEN REPLY #97373 /* ~It's good you're working on your sense of humor, Rasaad. But you really need to work a little harder.~ */ GOTO 6
  IF ~~ THEN REPLY #97374 /* ~No. I was trapped in a dungeon by an insane wizard, you idiot.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.0 1.2 1.1 0.2
  SAY #97375 /* ~You once told me to—lighten up. I was trying to follow your advice.~ */
  IF ~~ THEN REPLY #97376 /* ~You took MY advice? Gods help you.~ */ GOTO 7
  IF ~~ THEN REPLY #97377 /* ~Some things you don't joke about. The imprisonment and torture of your friends? Definitely one of them.~ */ GOTO 4
  IF ~~ THEN REPLY #97378 /* ~Poor advice on my part. Grim suits you. In the future, try to stick to it.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #97379 /* ~I will endeavor to do so.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.0 4.2
  SAY #97380 /* ~I did not mean to offend you.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 4.0
  SAY #97381 /* ~I am sorry if I offended you. That was not my intent.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0 6.0
  SAY #97382 /* ~I had hoped to see the smile I remember so well from our previous time together.~ */
  IF ~~ THEN REPLY #97383 /* ~You might, someday. But not someday soon, I fear.~ */ GOTO 10
  IF ~~ THEN REPLY #97384 /* ~I'm not in a smiling mood at the moment.~ */ GOTO 10
  IF ~~ THEN REPLY #97385 /* ~Treasure the memory, monk. It's all you'll have for some time to come.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.0
  SAY #97386 /* ~I am sorry to hear that.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #97387 /* ~That is regrettable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #97388 /* ~Even so, I am glad Selûne has seen fit to cross our paths once more.~ */
  IF ~~ THEN REPLY #97389 /* ~Me too. It hasn't been the same without you.~ */ EXIT
  IF ~~ THEN REPLY #97390 /* ~So Selûne's the one I should blame for inflicting you on me once more?~ */ GOTO 13
  IF ~~ THEN REPLY #97391 /* ~Yes, I'd be happy to see me too.~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #97392 /* ~Now you are joking with me.~ */
  IF ~~ THEN REPLY #97393 /* ~Am I?~ */ GOTO 14
  IF ~~ THEN REPLY #97394 /* ~If you say so.~ */ GOTO 16
  IF ~~ THEN REPLY #97395 /* ~Believe that if you will. I care not.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 16.0 13.0
  SAY #97396 /* ~Aren't you?~ */
  IF ~~ THEN REPLY #97397 /* ~Of course I am.~ */ GOTO 15
  IF ~~ THEN REPLY #97398 /* ~That is the question, isn't it?~ */ GOTO 15
  IF ~~ THEN REPLY #97399 /* ~You'll never know.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 14.0
  SAY #97400 /* ~Ah!~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #97401 /* ~You ARE joking with me.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 15.0 12.2
  SAY #97402 /* ~There is the smile I was looking for.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #97403 /* ~You are changed, <CHARNAME>. It seems to me there was once a light in your eyes... but no longer.~ */
  IF ~~ THEN REPLY #97404 /* ~Being tortured by a madman does tend to dim some things. The light in one's eyes. The hope for a brighter tomorrow. One's view of humanity.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 19
  IF ~~ THEN REPLY #97405 /* ~Says the monk obsessed with avenging his dead brother.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 20
  IF ~~ THEN REPLY #97406 /* ~The look in my eyes is no business of yours, monk.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #97407 /* ~I believe you will recover all these things. You are stronger than anyone I have ever known.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #97408 /* ~I have faced many trials in my time. But none to compare to yours, I think.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.2
  SAY #97409 /* ~I am worried about you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 20.0 19.0
  SAY #97410 /* ~Did Irenicus give you any clue what he wanted from you?~ */
  IF ~~ THEN REPLY #97411 /* ~Yes, he detailed his entire plan to me. Something to do with awakening an undead squirrel behemoth, as I recall.~ */ GOTO 23
  IF ~~ THEN REPLY #97412 /* ~He kept experimenting, trying to provoke... something. I know not what, and don't much care, now that I think of it.~ */ GOTO 28
  IF ~~ THEN REPLY #97413 /* ~No. Now let's talk of something else. Or better still, not talk at all.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #97414 /* ~You try to hide your pain with humor. You do not need to do this with me, <CHARNAME>.~ */
  IF ~~ THEN REPLY #97415 /* ~I'm sorry, Rasaad. It's a hard habit to break.~ */ GOTO 32
  IF ~~ THEN REPLY #97416 /* ~You'd have me treat you differently than everyone else? Are you truly so vain?~ */ GOTO 24
  IF ~~ THEN REPLY #97417 /* ~My pain is my own. I'll not share it, with you or anyone.~ */ GOTO 32
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #97418 /* ~Perhaps it is vanity—but yes. I would have you treat me differently than the others.~ */
  IF ~~ THEN REPLY #97419 /* ~Be patient with me, please. What you want may come, with time.~ */ GOTO 27
  IF ~~ THEN REPLY #97420 /* ~Oh. OH. Oh dear. I'm sorry, Rasaad. You seem to have gotten the wrong idea. A VERY wrong idea.~ */ GOTO 25
  IF ~~ THEN REPLY #97421 /* ~It's not going to happen.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2 24.1
  SAY #97422 /* ~I see. Thank you for—clearing that up.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #97423 /* ~I shall leave you to your thoughts.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #97424 /* ~Take as much time as you need. I will be here. I just—~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 28 // from: 22.1
  SAY #97425 /* ~Whatever it is, I am glad he kept you alive.~ */
  IF ~~ THEN REPLY #97426 /* ~You and me both.~ */ GOTO 32
  IF ~~ THEN REPLY #97427 /* ~Where there's life, there's hope.~ */ GOTO 30
  IF ~~ THEN REPLY #97428 /* ~I'm sure your happiness was uppermost on Irenicus's mind.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.2
  SAY #97429 /* ~I've offended you. I'm sorry. I just—~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #97430 /* ~A worthy sentiment.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY #97431 /* ~I am sorry. I just—~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 29.0 28.0 27.0 23.2 23.0
  SAY #97432 /* ~I—I wish there were something I could do.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 30.0
  SAY #97433 /* ~Things were simpler when I was in the order. The light less harsh. ~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #97434 /* ~Now... the world is darker. The light does nothing but cast more shadows.~ */
  IF ~~ THEN REPLY #97435 /* ~I believe the light will guide us from the darkness, Rasaad. In time.~ */ GOTO 35
  IF ~~ THEN REPLY #97436 /* ~Gods, you're depressing.~ */ GOTO 36
  IF ~~ THEN REPLY #97437 /* ~People like us walk in the darkness, Rasaad. It was always thus.~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #97438 /* ~I believed the same thing once.~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #97439 /* ~I fear I am. Sometimes I close my eyes and pretend things are as they were. But they cannot stay closed forever.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 35.0
  SAY #97440 /* ~Things are different now. Our path is not so clear, and more dangerous than ever before.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 36.0 34.2
  SAY #97441 /* ~Yet still we must find our way.~ */
  IF ~~ THEN REPLY #97442 /* ~Whatever path we choose will be the right one, I am sure of it.~ */ GOTO 39
  IF ~~ THEN REPLY #97443 /* ~We could just stop. Set up a tavern, maybe—or a temple, if you'd prefer.~ */ GOTO 40
  IF ~~ THEN REPLY #97444 /* ~And we will. There's no point in worrying about the future, Rasaad. ~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #97445 /* ~I am glad you remain optimistic, <CHARNAME>. I hope you are right.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #97446 /* ~I know you are joking, <CHARNAME>. But still I am tempted.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2
  SAY #97447 /* ~And yet I do.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",4)
~ THEN BEGIN 42 // from:
  SAY #97448 /* ~It is strange to be back in Athkatla after what happened here between Gamaz and I.~ */
  IF ~~ THEN DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #97449 /* ~This place holds few pleasant memories. ~ */
  IF ~~ THEN REPLY #97450 /* ~I'm sorry we have to spend so much time here.~ */ GOTO 44
  IF ~~ THEN REPLY #97451 /* ~Surely you've moved past that by now?~ */ GOTO 45
  IF ~~ THEN REPLY #97452 /* ~Why did you come back?~ */ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #97453 /* ~Don't be, please. I am here of my own volition.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY #97454 /* ~I thought I had, but now that I am here once more...~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 44.0 43.2
  SAY #97455 /* ~This is where my pursuit of the Heretics led. That you were here as well was a happy coincidence.~ */
  IF ~~ THEN REPLY #97456 /* ~I'm glad we found each other again.~ */ GOTO 47
  IF ~~ THEN REPLY #97457 /* ~"Happy" is a very strong word.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #97458 /* ~And I am made glad to hear it.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #97459 /* ~But fitting, for me at least.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 47.0 45.0
  SAY #97460 /* ~Had you seen Athkatla before you escaped Irenicus's dungeon?~ */
  IF ~~ THEN REPLY #97461 /* ~No. Never. It's a strange and twisted path that brought me here.~ */ GOTO 51
  IF ~~ THEN REPLY #97462 /* ~No. I'd have been happy not to have seen it at all.~ */ GOTO 51
  IF ~~ THEN REPLY #97463 /* ~What business is that of yours?~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.2
  SAY #97464 /* ~I did not mean to pry, my friend. I will leave you be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 49.0
  SAY #97465 /* ~Have you been to any cities, aside from Baldur's Gate and now Athkatla?~ */
  IF ~~ THEN REPLY #97466 /* ~The walls of Candlekeep were pretty high.~ */ GOTO 52
  IF ~~ THEN REPLY #97467 /* ~I've read about many of them, but never been.~ */ GOTO 54
  IF ~~ THEN REPLY #97468 /* ~Does it matter?~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #97469 /* ~Aye. It was as much fortress as library.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 51.2
  SAY #97470 /* ~It's not a matter of life and death, by any means. I merely seek to pass the time.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 52.0 51.1
  SAY #97471 /* ~What was it like, seeing a city for the first time?~ */
  IF ~~ THEN REPLY #97472 /* ~It was a little overwhelming at first. ~ */ GOTO 55
  IF ~~ THEN REPLY #97473 /* ~It wasn't the sight that hit me first, but the smell. Ye gods, how do people live with the stench?~ */ GOTO 56
  IF ~~ THEN REPLY #97474 /* ~They're not so different from villages. A little larger, that is all.~ */ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #97475 /* ~I can imagine.~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #97476 /* ~Calimport was worse, thanks to the heat. After a time, you'll no longer notice it.~ */
  IF ~~ THEN REPLY #97477 /* ~Five senses is more than any sensible person needs.~ */ GOTO 60
  IF ~~ THEN REPLY #97478 /* ~Anywhere that smells this bad can't be safe to live in.~ */ GOTO 58
  IF ~~ THEN REPLY #97479 /* ~Somehow, I doubt that.~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 54.2
  SAY #97480 /* ~Perhaps you are right.~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #97481 /* ~Is there any safe place, in this world?~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #97482 /* ~You will see.~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 58.0 57.0 56.0 55.0
  SAY #97483 /* ~We walk very different paths, <CHARNAME>. But I am glad they led us to one another. ~ */
  IF ~~ THEN REPLY #97484 /* ~As am I.~ */ EXIT
  IF ~~ THEN REPLY #97485 /* ~We are very different people, Rasaad.~ */ GOTO 61
  IF ~~ THEN REPLY #97486 /* ~I'd be glad to have met me, too.~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #97487 /* ~I think life would be boring if we were not. Though I'd choose boredom over at least some of the excitement we've had. Better a boring life than an exciting death, eh? ~ */
  IF ~~ THEN REPLY #97488 /* ~We are fortunate to be able to choose how we live. Few get to choose how they die.~ */ EXIT
  IF ~~ THEN REPLY #97489 /* ~A long, boring life sounds good to me.~ */ EXIT
  IF ~~ THEN REPLY #97490 /* ~For you, perhaps. I am made of sterner stuff.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.2
  SAY #97491 /* ~Hah! That there, your humor, is why you make such fine company.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",6)
~ THEN BEGIN 63 // from:
  SAY #85861 /* ~Can I speak to you, <CHARNAME>?~ [OH85861] */
  IF ~~ THEN REPLY #85862 /* ~Of course, Rasaad.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 65
  IF ~~ THEN REPLY #85863 /* ~Could I stop you?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 64
  IF ~~ THEN REPLY #85864 /* ~Not now.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",-1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY #85865 /* ~You could, of course, though I would prefer to think you'd be happier not to.~ [OH85865] */
  IF ~~ THEN REPLY #85866 /* ~Much happier. What can I do for you?~ */ GOTO 66
  IF ~~ THEN REPLY #85867 /* ~A lot hinges on the topic you choose to discuss.~ */ GOTO 66
  IF ~~ THEN REPLY #85868 /* ~Think again, monk.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.0
  SAY #85869 /* ~It is not too unpleasant a subject, I hope.~ [OH85869] */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 64.1 64.0
  SAY #85870 /* ~I just—how to put this? When I embarked on this journey to avenge Gamaz, I felt that I must do so alone.~ [OH85870] */
  IF ~~ THEN REPLY #85871 /* ~You need never be alone, Rasaad. Not while I live.~ */ GOTO 67
  IF ~~ THEN REPLY #85872 /* ~You know better now, I hope.~ */ GOTO 70
  IF ~~ THEN REPLY #85873 /* ~We are all alone in the end.~ */ GOTO 71
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #85874 /* ~So you feel as I do?~ [OH85874] */
  IF ~~ THEN REPLY #85875 /* ~Nobody wants to be alone.~ */ GOTO 68
  IF ~~ THEN REPLY #85876 /* ~That depends on how you feel.~ */ GOTO 68
  IF ~~ THEN REPLY #85877 /* ~I don't like to discuss feelings. If I say "yes," can we drop this?~ */ GOTO 72
  IF ~~ THEN REPLY #85878 /* ~Would that I could. I'm afraid you're not my type, Rasaad.~ */ GOTO 75
END

IF ~~ THEN BEGIN 68 // from: 71.0 70.0 67.1 67.0
  SAY #85879 /* ~I do not know what I'd do if I were to lose you, <CHARNAME>.~ [OH85879] */
  IF ~~ THEN REPLY #85880 /* ~Let's not find out.~ */ GOTO 73
  IF ~~ THEN REPLY #85881 /* ~My best guess—? Mope. You've a gift for it.~ */ GOTO 69
  IF ~~ THEN REPLY #85882 /* ~Much the same as you did before you met me, I imagine.~ */ GOTO 74
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #85883 /* ~Old habits die hard, <CHARNAME>. But with your help, I believe they can be broken.~ [OH85883] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #85884 /* ~I do. I cannot tell you what your company—your support—has meant to me.~ [OH85884] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 66.2
  SAY #85885 /* ~The end is a ways away—at least, I hope it is. And until it arrives, I hope you will be by my side.~ [OH85885] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 67.2
  SAY #85886 /* ~That is enough for me—for now, at least.~ [OH85886] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from: 68.0
  SAY #85887 /* ~I'll do everything I can to avoid it.~ [OH85887] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 68.2
  SAY #85888 /* ~Perhaps. I hope never to find out.~ [OH85888] */
  IF ~~ THEN REPLY #85889 /* ~You and me both.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 67.3
  SAY #85890 /* ~I—see. Thank you for your time, <CHARNAME>—and for clarifying things for me.~ [OH85890] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",8)
~ THEN BEGIN 76 // from:
  SAY #85894 /* ~It is cold tonight.~ [OH85894] */
  IF ~~ THEN REPLY #85895 /* ~I fear it will get colder.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 81
  IF ~~ THEN REPLY #85896 /* ~Looking for a little warmth, are you?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 80
  IF ~~ THEN REPLY #85897 /* ~I've been colder.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 81.0 80.0 76.2
  SAY #85898 /* ~There was a time when I preferred the night. I felt the Moonmaiden watching over me.~ [OH85898] */
  IF ~~ THEN GOTO 82
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 189
END

IF ~~ THEN BEGIN 78 // from:
  SAY #85900 /* ~No. Sometimes, I thought I heard her singing, though.~ [OH85900] */
  IF ~~ THEN EXTERN ~VICONIJ~ 190
END

IF ~~ THEN BEGIN 79 // from:
  SAY #85902 /* ~No. Her voice was high and melodic, a lullaby that calmed the mind and filled the heart with hope.~ [OH85902] */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 80 // from: 76.1
  SAY #85903 /* ~There's little enough of it in this world.~ [OH85903] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 81 // from: 76.0
  SAY #85904 /* ~I fear you are right.~ [OH85904] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 82 // from: 79.0 77.0
  SAY #85905 /* ~On a night like this, I would feel whole and serene once. Now, it is different.~ [OH85905] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85906 /* ~You have moved on. Once, Selûne was your only mistress. Now, you have found another, or at the least, you do not see her in the same way.~ */ EXTERN ~VICONIJ~ 191
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85906 /* ~You have moved on. Once, Selûne was your only mistress. Now, you have found another, or at the least, you do not see her in the same way.~ */ GOTO 85
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85907 /* ~Stay the course, Rasaad. You'll find serenity again, I am sure of it.~ */ EXTERN ~VICONIJ~ 192
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85907 /* ~Stay the course, Rasaad. You'll find serenity again, I am sure of it.~ */ GOTO 88
  IF ~~ THEN REPLY #85908 /* ~Best to get used to it. I don't see much serenity in any of our futures.~ */ GOTO 94
END

IF ~~ THEN BEGIN 83 // from:
  SAY #85910 /* ~There is a part of me that will belong to her always, it is true. But that part no longer rules my life as it once did.~ [OH85910] */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 84 // from:
  SAY #85912 /* ~You say there is hope for me yet, <CHARNAME>.~ [OH85912] */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 83.0 82.1
  SAY #85913 /* ~For a time, there was room in my heart for nothing but vengeance. My brother's death consumed me—it still does. And yet, as time passes, I see a time that it will no longer be enough to sustain me. Perhaps then I can return fully to the Sun Soul.~ [OH85913] */
  IF ~~ THEN REPLY #85914 /* ~Perhaps you will find something else to lean on. Or someone.~ */ GOTO 95
  IF ~~ THEN REPLY #85915 /* ~Is that what you truly want?~ */ GOTO 93
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85916 /* ~If they'll have you.~ */ EXTERN ~VICONIJ~ 193
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85916 /* ~If they'll have you.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.3
  SAY #85918 /* ~If they will not... I do not know what I'll do.~ [OH85918] */
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85919 /* ~You'll always have a place with me.~ */ GOTO 88
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85919 /* ~You'll always have a place with me.~ */ EXTERN ~VICONIJ~ 194
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85920 /* ~You're a resourceful man. You'll think of something.~ */ EXTERN ~VICONIJ~ 195
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85920 /* ~You're a resourceful man. You'll think of something.~ */ GOTO 96
  IF ~~ THEN REPLY #85921 /* ~I suspect you've a while to go before you have to figure it out.~ */ GOTO 94
END

IF ~~ THEN BEGIN 87 // from:
  SAY #85924 /* ~I doubt it will get that bad, drow. But I will keep it in mind. You call me resourceful, <CHARNAME>?~ [OH85924] */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 88 // from: 96.1 86.0 84.0 82.3
  SAY #85925 /* ~Do you mean that?~ [OH85925] */
  IF ~~ THEN REPLY #85926 /* ~Of course.~ */ GOTO 90
  IF ~~ THEN REPLY #85927 /* ~You doubt me?~ */ GOTO 89
  IF ~~ THEN REPLY #85928 /* ~No, Rasaad. I'm lying to your face.~ */ GOTO 97
END

IF ~~ THEN BEGIN 89 // from: 97.0 88.1
  SAY #85929 /* ~I am more comfortable with your humor than I once was, but... there are still times I cannot tell if you are serious or not.~ [OH85929] */
  IF ~~ THEN REPLY #85930 /* ~Fear not. I'm not mocking you.~ */ GOTO 90
  IF ~~ THEN REPLY #85931 /* ~You'd generally be safer assuming I wasn't. But in this instance, I am. I will never turn against you.~ */ GOTO 90
  IF ~~ THEN REPLY #85932 /* ~Figure it out for yourself. I've better things to do with my time than explain myself to you.~ */ GOTO 94
END

IF ~~ THEN BEGIN 90 // from: 89.1 89.0 88.0
  SAY #85933 /* ~You do not know what that means to me, <CHARNAME>. When it seemed as though all the world had turned on me, I could rely on you and you alone.~ [OH85933] */
  IF ~~ THEN REPLY #85934 /* ~I feel the same.~ */ DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #85935 /* ~That's what friends are for.~ */ GOTO 91
  IF ~~ THEN REPLY #85936 /* ~Put your trust in someone else, monk. I won't be responsible for you.~ */ GOTO 98
END

IF ~~ THEN BEGIN 91 // from: 90.1
  SAY #85937 /* ~Yes. Friends.~ [OH85937] */
  IF ~~ THEN REPLY #85938 /* ~You would be more than that?~ */ GOTO 93
  IF ~~ THEN REPLY #85939 /* ~You think we're something else?~ */ GOTO 92
  IF ~~ THEN REPLY #85940 /* ~Better that than enemies.~ */ GOTO 94
END

IF ~~ THEN BEGIN 92 // from: 91.1
  SAY #85941 /* ~I think—I hoped, for a moment—we might be something more? Ah! Ignore me.~ [OH85941] */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0 91.0 85.1
  SAY #85942 /* ~In truth, I do not know. I no longer trust my own heart.~ [OH85942] */
  IF ~~ THEN REPLY #85943 /* ~Well, when your heart and your mind are made up, I will be here.~ */ DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #85944 /* ~Well, it has gotten you into an awful lot of trouble, you must admit. But that doesn't always have to be the case.~ */ GOTO 101
  IF ~~ THEN REPLY #85945 /* ~Then try using your mind for a change.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 98.1 96.3 93.2 91.2 89.2 86.4 82.4
  SAY #85946 /* ~You are right, of course. Good night.~ [OH85946] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 197
END

IF ~~ THEN BEGIN 95 // from: 85.0
  SAY #85947 /* ~Perhaps I will at that. Good night.~ [OH85947] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 197
END

IF ~~ THEN BEGIN 96 // from: 87.0 86.3
  SAY #85948 /* ~I do not know if that is true. Were it not for you, I fear I would be lost.~ [OH85948] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85949 /* ~I won't let you get lost, Rasaad.~ */ EXTERN ~VICONIJ~ 196
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #85949 /* ~I won't let you get lost, Rasaad.~ */ GOTO 88
  IF ~~ THEN REPLY #85950 /* ~The blind lead the blind. We're in serious trouble now.~ */ GOTO 103
  IF ~~ THEN REPLY #85951 /* ~You are lost, Rasaad. And you alone are responsible for forging your new path.~ */ GOTO 94
END

IF ~~ THEN BEGIN 97 // from: 88.2
  SAY #85953 /* ~Are you mocking me?~ [OH85953] */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 98 // from: 90.2
  SAY #85954 /* ~I—I am sorry, <CHARNAME>. I did not mean to offend. Forgive me.~ [OH85954] */
  IF ~~ THEN REPLY #85955 /* ~I'm the one who should apologize. I am tired, and my words were sharper than they were intended.~ */ GOTO 99
  IF ~~ THEN REPLY #85956 /* ~Relax, Rasaad. You worry too much.~ */ GOTO 94
  IF ~~ THEN REPLY #85957 /* ~First, you go away. Then I forgive.~ */ GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.2 98.0
  SAY #85958 /* ~I will bid you good night, then.~ [OH85958] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 197
END

IF ~~ THEN BEGIN 100 // from:
  SAY #85960 /* ~My apologies, Viconia. I was saying good night to you both.~ [OH85960] */
  IF ~~ THEN EXTERN ~VICONIJ~ 198
END

IF ~~ THEN BEGIN 101 // from: 93.1
  SAY #85962 /* ~I hope you are right—I will consider the matter.~ [OH85962] */
  IF ~~ THEN GOTO 102
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 199
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #85964 /* ~Good night, <CHARNAME>.~ [OH85964] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 197
END

IF ~~ THEN BEGIN 103 // from: 96.2
  SAY #85965 /* ~You will see us through them, I am sure. You always have. Good night.~ [OH85965] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 197
END

IF WEIGHT #8 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",10)
~ THEN BEGIN 104 // from:
  SAY #97492 /* ~Your combat technique is improving, <CHARNAME>.~ */
  IF ~~ THEN REPLY #97493 /* ~I wasn't doing well before?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 105
  IF ~~ THEN REPLY #97494 /* ~Thank you, Rasaad. You're not doing so badly yourself.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 106
  IF ~~ THEN REPLY #97495 /* ~What do you want?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 107
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #97496 /* ~Well enough—you survived, after all. But you have improved.~ */
  IF ~~ THEN REPLY #97497 /* ~I see.~ */ GOTO 112
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY #97498 /* ~It is good of you to notice. And kind of you to say.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 107 // from: 104.2
  SAY #97499 /* ~Your company, that is all.~ */
  IF ~~ THEN REPLY #97500 /* ~You've got it. But enjoy it in silence, for now.~ */ GOTO 110
  IF ~~ THEN REPLY #97501 /* ~Is it?~ */ GOTO 108
  IF ~~ THEN REPLY #97502 /* ~I'm not in the mood for talking right now.~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 107.1
  SAY #97503 /* ~What more could I want?~ */
  IF ~~ THEN REPLY #97504 /* ~I can think of a few things.~ */ GOTO 111
  IF ~~ THEN REPLY #97505 /* ~*sigh* Nothing. You could want nothing more.~ */ GOTO 112
  IF ~~ THEN REPLY #97506 /* ~You need to ask? I thought you a man. I see how how very wrong I was.~ */ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 112.2 108.2
  SAY #97507 /* ~Oh.~ */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 122.2 117.2 111.1 109.0 107.2 107.0
  SAY #97508 /* ~Perhaps we'll talk another time, then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from: 108.0
  SAY #97509 /* ~Such as?~ */
  IF ~~ THEN REPLY #97510 /* ~Use your imagination. I'm sure you've got one buried deep in that thick skull of yours.~ */ GOTO 112
  IF ~~ THEN REPLY #97511 /* ~Figure it out, Rasaad. If you ever do, come talk to me again.~ */ GOTO 110
  IF ~~ THEN REPLY #97512 /* ~You're a man, not a child. I shouldn't have to explain these things to you.~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.2 111.0 108.1 106.0 105.0
  SAY #97513 /* ~It's a lovely day. ~ */
  IF ~~ THEN REPLY #97514 /* ~It is, isn't it?~ */ GOTO 114
  IF ~~ THEN REPLY #97515 /* ~You are utterly hopeless.~ */ GOTO 113
  IF ~~ THEN REPLY #97516 /* ~It is. I think I'd enjoy it more on my own.~ */ GOTO 109
END

IF ~~ THEN BEGIN 113 // from: 112.1
  SAY #97517 /* ~I—I only meant to say—~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0 112.0
  SAY #97518 /* ~It cannot compare to your beauty, but it is lovely nonetheless.~ */
  IF ~~ THEN REPLY #97519 /* ~You are a terrible liar, Rasaad. But a sweet one.~ */ GOTO 115
  IF ~~ THEN REPLY #97520 /* ~Hm. Perhaps you aren't UTTERLY hopeless.~ */ GOTO 116
  IF ~~ THEN REPLY #97521 /* ~"It cannot compare"—? You missed your calling, Rasaad. You should have been a bard.~ */ GOTO 117
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #97522 /* ~I am a servant of Selûne. I would not lie to you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 116 // from: 114.1
  SAY #97523 /* ~That is good to hear.~ */
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 117 // from: 114.2
  SAY #97524 /* ~I have offended you. I apologize. I shall go now.~ */
  IF ~~ THEN REPLY #97525 /* ~No, Rasaad, don't go.~ */ GOTO 118
  IF ~~ THEN REPLY #97526 /* ~I'm not offended.~ */ GOTO 119
  IF ~~ THEN REPLY #97527 /* ~Good idea.~ */ GOTO 110
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #97528 /* ~As you wish.~ */
  IF ~~ THEN REPLY #97529 /* ~I know you're doing your best here. It's just—I've much on my mind at the moment.~ */ GOTO 121
  IF ~~ THEN REPLY #97530 /* ~I know you're doing the best you can with this. It's not your fault you're terrible at it.~ */ GOTO 122
  IF ~~ THEN REPLY #97531 /* ~For future reference: If you want my company, you've got it. If you want my companionship, you'll get further just asking for it.~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 117.1
  SAY #97532 /* ~Oh. Good.~ */
  IF ~~ THEN REPLY #97533 /* ~I know you're doing your best here. It's just—I've much on my mind at the moment.~ */ GOTO 121
  IF ~~ THEN REPLY #97534 /* ~I know you're doing the best you can with this. It's not your fault you're terrible at it.~ */ GOTO 122
  IF ~~ THEN REPLY #97535 /* ~For future reference: If you want my company, you've got it. If you want my companionship, you'll get further just asking for it.~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.2 118.2
  SAY #97536 /* ~Such things do not come easily to me. I will try to keep this in mind going forward.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.0 118.0 116.0 115.0
  SAY #97537 /* ~I should leave you to your thoughts then.~ */
  IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 121.0 119.1 118.1
  SAY #97538 /* ~I'm sorry. This is a waste of time.~ */
  IF ~~ THEN REPLY #97539 /* ~It will have been, if you learned nothing from it.~ */ GOTO 124
  IF ~~ THEN REPLY #97540 /* ~So I'm a waste of your time now?~ */ GOTO 123
  IF ~~ THEN REPLY #97541 /* ~Yes. You let it become one.~ */ GOTO 110
END

IF ~~ THEN BEGIN 123 // from: 122.1
  SAY #97542 /* ~I seem to be making a mess of this. ~ */
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0 122.0
  SAY #97543 /* ~It should not be this hard to compliment someone.~ */
  IF ~~ THEN REPLY #97544 /* ~If I made this easy, it would be no fun.~ */ GOTO 125
  IF ~~ THEN REPLY #97545 /* ~No, it shouldn't. I think you need to practice.~ */ GOTO 126
  IF ~~ THEN REPLY #97546 /* ~Complimenting someone is easy. Getting them to respond favorably to the compliment is the tricky part.~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #97547 /* ~I might enjoy it more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from: 124.1
  SAY #97548 /* ~I will do so.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",12)
~ THEN BEGIN 127 // from:
  SAY #97549 /* ~You are so...~ */
  IF ~~ THEN REPLY #97550 /* ~Did you say something?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 130
  IF ~~ THEN REPLY #97551 /* ~So...?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 130
  IF ~~ THEN REPLY #97552 /* ~Please don't finish that sentence. We need to talk.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.2
  SAY #97553 /* ~I... what?~ */
  IF ~~ THEN REPLY #97554 /* ~I'm not interested in you—that way. I'm sorry.~ */ GOTO 132
  IF ~~ THEN REPLY #97555 /* ~You're going to say something I'll regret. I can smell it.~ */ GOTO 129
  IF ~~ THEN REPLY #97556 /* ~I see the way you look at me. Stop it. We are friends, nothing more.~ */ GOTO 132
END

IF ~~ THEN BEGIN 129 // from: 128.1
  SAY #97557 /* ~Ah. What I meant to say... I mean...~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0 127.1 127.0
  SAY #97558 /* ~<CHARNAME>, you are the most beautiful, astounding creature on the face of Toril. Your grace and elegance entrance me. Your light shines brighter than any other.~ */
  IF ~~ THEN REPLY #97559 /* ~Is this a joke?~ */ GOTO 135
  IF ~~ THEN REPLY #97560 /* ~You are very observant.~ */ GOTO 136
  IF ~~ THEN REPLY #97561 /* ~I see. And how much time did you spend rehearsing that line?~ */ GOTO 137
END

IF ~~ THEN BEGIN 131 // from:
  SAY #97562 /* ~As you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 138.2 138.1 137.2 136.2 136.1 128.2 128.0
  SAY #97563 /* ~I... see. Thank you for your honesty. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from: 137.1
  SAY #97564 /* ~That is difficult to hear, but important to know. Thank you, <CHARNAME>. I will endeavor to follow your advice in the future.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #97565 /* ~I am glad you think so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from: 130.0
  SAY #97566 /* ~Does it... amuse you?~ */
  IF ~~ THEN REPLY #97567 /* ~It's the funniest thing I've heard in days.~ */ EXIT
  IF ~~ THEN REPLY #97568 /* ~You're not going to put any jesters out of work with that kind of material.~ */ GOTO 138
  IF ~~ THEN REPLY #97569 /* ~No.~ */ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 130.1
  SAY #97570 /* ~This is no joke, <CHARNAME>. I speak from my heart.~ */
  IF ~~ THEN REPLY #97571 /* ~Less talking. More kissing.~ */ GOTO 139
  IF ~~ THEN REPLY #97572 /* ~Next time, go for the joke.~ */ GOTO 132
  IF ~~ THEN REPLY #97573 /* ~I'm sorry to hear that. I can't give you what you want, Rasaad.~ */ GOTO 132
END

IF ~~ THEN BEGIN 137 // from: 130.2
  SAY #97574 /* ~It took a while.~ */
  IF ~~ THEN REPLY #97575 /* ~It was beautiful. Come and kiss me.~ */ GOTO 139
  IF ~~ THEN REPLY #97576 /* ~Next time, speak from the heart, not some book of poorly written verse. You'll get farther that way, I promise you.~ */ GOTO 133
  IF ~~ THEN REPLY #97577 /* ~Wasted time. We are friends, monk. And that is all we shall ever be.~ */ GOTO 132
END

IF ~~ THEN BEGIN 138 // from: 135.2 135.1
  SAY #97578 /* ~It was no joke. I spoke from the heart.~ */
  IF ~~ THEN REPLY #97579 /* ~Less talking. More kissing.~ */ GOTO 139
  IF ~~ THEN REPLY #97580 /* ~Next time, go for the joke.~ */ GOTO 132
  IF ~~ THEN REPLY #97581 /* ~I'm sorry to hear that. I can't give you what you want, Rasaad.~ */ GOTO 132
END

IF ~~ THEN BEGIN 139 // from: 138.0 137.0 136.0
  SAY #97582 /* ~Mm.~ */
  IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #97583 /* ~That was... ~ */
  IF ~~ THEN REPLY #97584 /* ~More.~ */ GOTO 141
  IF ~~ THEN REPLY #97585 /* ~A little sloppy. We'll work on it.~ */ GOTO 142
  IF ~~ THEN REPLY #97586 /* ~Better than I expected. I didn't know you had it in you.~ */ GOTO 143
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #97587 /* ~As you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from: 140.1
  SAY #97588 /* ~You'll find I learn quickly.~ */
  IF ~~ THEN REPLY #97589 /* ~I hope so.~ */ EXIT
  IF ~~ THEN REPLY #97590 /* ~You'd better.~ */ EXIT
END

IF ~~ THEN BEGIN 143 // from: 140.2
  SAY #97591 /* ~There is much you don't know about me, <CHARNAME>.~ */
  IF ~~ THEN REPLY #97592 /* ~I look forward to finding out more.~ */ EXIT
  IF ~~ THEN REPLY #97593 /* ~Perhaps I'll find out more... some other day.~ */ GOTO 144
  IF ~~ THEN REPLY #97594 /* ~Let's keep it that way.~ */ EXIT
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #97595 /* ~I await that day eagerly, if not happily.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",14)
~ THEN BEGIN 145 // from:
  SAY #97596 /* ~I wish I had seen more places such as this as a child. The city was wondrous, but this puts marble and gold to shame. ~ */
  IF ~~ THEN REPLY #97597 /* ~Nothing quite matches the majesty of nature.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 146
  IF ~~ THEN REPLY #97598 /* ~What was Calimport like?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 148
  IF ~~ THEN REPLY #97599 /* ~Give me marble and gold over flies and bugs any day.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #97600 /* ~Few things, at least.~ */
  IF ~~ THEN REPLY #97601 /* ~What things are these, then?~ */ GOTO 150
  IF ~~ THEN REPLY #97602 /* ~You jest. What could be more glorious than dirt, and weeds, and more dirt?~ */ GOTO 147
  IF ~~ THEN REPLY #97603 /* ~I said nothing, and I meant it.~ */ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.2 146.1
  SAY #97604 /* ~You do not see everything that I see, <CHARNAME>.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #97605 /* ~Calimport is larger than Athkatla or Baldur's Gate. The houses are made of stone, built together in groups. Children run through the streets playing games.~ */
  IF ~~ THEN REPLY #97606 /* ~You sound like you miss it.~ */ GOTO 151
  IF ~~ THEN REPLY #97607 /* ~I'd love to go there someday.~ */ GOTO 152
  IF ~~ THEN REPLY #97608 /* ~So a city, like any other.~ */ GOTO 153
END

IF ~~ THEN BEGIN 149 // from: 145.2
  SAY #97609 /* ~Cities have their own irritants.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 150 // from: 146.0
  SAY #97610 /* ~Well—you, for one.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 151 // from: 148.0
  SAY #97611 /* ~Sometimes. But then I look to you, and it doesn't bother me quite so much.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 152 // from: 148.1
  SAY #97612 /* ~Perhaps someday, when this is all over, I could take you.~ */
  IF ~~ THEN REPLY #97613 /* ~I would like that.~ */ GOTO 156
  IF ~~ THEN REPLY #97614 /* ~I think you'd like that.~ */ GOTO 154
  IF ~~ THEN REPLY #97615 /* ~I'd prefer to go on my own.~ */ GOTO 155
END

IF ~~ THEN BEGIN 153 // from: 148.2
  SAY #97616 /* ~That is one way of looking at it, I suppose.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 154 // from: 152.1
  SAY #97617 /* ~I would indeed.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 155 // from: 152.2
  SAY #97618 /* ~I'm sorry to hear that.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156 // from: 155.0 154.0 153.0 152.0 151.0 150.0 149.0 147.0
  SAY #97619 /* ~You are a remarkable woman. You have no idea how glad I am to have you at my side.~ */
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY #97620 /* ~You've done more for me than you will ever know. You have made me a better man.~ */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 158 // from:
  SAY #97621 /* ~Yes. Let's...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from: 157.0
  SAY #97622 /* ~I just... wanted to tell you that.~ */
  IF ~~ THEN REPLY #97623 /* ~That was beautiful, Rasaad.~ */ GOTO 160
  IF ~~ THEN REPLY #97624 /* ~Well... Thanks?~ */ GOTO 161
  IF ~~ THEN REPLY #97625 /* ~You are... full of surprises, Rasaad.~ */ GOTO 165
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #97626 /* ~You are too kind. It is a pale reflection of the beauty that inspired it, but I meant every word.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 161 // from: 159.1
  SAY #97627 /* ~You're... welcome.~ */
  IF ~~ THEN REPLY #97628 /* ~Is this awkward? It feels awkward to me.~ */ GOTO 163
  IF ~~ THEN REPLY #97629 /* ~Well... Let's be about our business, then, shall we?~ */ GOTO 163
END

IF ~~ THEN BEGIN 162 // from:
  SAY #97630 /* ~You are very kind, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 163 // from: 161.1 161.0
  SAY #97631 /* ~Very awkward. Perhaps it would be best to—pretend it never happened.~ */
  IF ~~ THEN REPLY #97632 /* ~No, I don't want to do that. It was beautiful, I just—I'm not sure how to respond.~ */ GOTO 164
  IF ~~ THEN REPLY #97633 /* ~Yeah, I think that would be best.~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY #97634 /* ~When you figure it out, please let me know. Until that time, let us be about our business.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 165 // from: 159.2
  SAY #97635 /* ~A life without surprises is a living death.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 0
END

IF WEIGHT #11 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",16)
~ THEN BEGIN 166 // from:
  SAY #85966 /* ~I must tell you, <CHARNAME>—after the events of these past weeks, I feel myself drawn to you, in a way I never imagined possible.~ [OH85966] */
  IF ~~ THEN REPLY #85967 /* ~There are more possibilities available to you than you are aware, Rasaad.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
SetGlobal("RasaadRomanceActive","GLOBAL",2)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 183
  IF ~~ THEN REPLY #85968 /* ~Fortunately for you, I've a much more active imagination.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
SetGlobal("RasaadRomanceActive","GLOBAL",2)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 168
  IF ~~ THEN REPLY #85969 /* ~Nor should you. Our relationship is what it is, and that is all it will ever be.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
SetGlobal("RasaadRomanceActive","GLOBAL",2)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 198.2 195.2 177.2 175.2 173.2 168.2 166.2
  SAY #85970 /* ~I— Thank you for your bluntness. I shall say no more.~ [OH85970] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #85971 /* ~Oh? And what do you imagine?~ [OH85971] */
  IF ~~ THEN REPLY #85972 /* ~I imagine you happy. I suspect that's more than you're able to do.~ */ GOTO 180
  IF ~~ THEN REPLY #85973 /* ~I don't think the Moonmaiden or the Twofold or whatever goddess you serve this week would approve of it. Especially not when it involves one of her monks.~ */ GOTO 169
  IF ~~ THEN REPLY #85974 /* ~I imagine you with no mouth. I like you better when you don't speak.~ */ GOTO 167
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #85975 /* ~Romantic relationships are rare in my order, but they are not technically forbidden.~ [OH85975] */
  IF ~~ THEN REPLY #85976 /* ~That is good to know. I'd hate to think we were doing something forbidden.~ */ GOTO 198
  IF ~~ THEN REPLY #85977 /* ~It's not like you've much problem doing what's forbidden when it suits you anyway.~ */ GOTO 170
  IF ~~ THEN REPLY #85978 /* ~A shame. There are few things sweeter than forbidden fruit.~ */ GOTO 189
END

IF ~~ THEN BEGIN 170 // from: 169.1
  SAY #85979 /* ~I do what honor demands.~ [OH85979] */
  IF ~~ THEN REPLY #85980 /* ~Will honor keep you warm at night?~ */ GOTO 199
  IF ~~ THEN REPLY #85981 /* ~And that is why we can be nothing more than friends. You are too honorable by far.~ */ GOTO 179
  IF ~~ THEN REPLY #85982 /* ~You tell yourself that if you must. I know what impulses really drive you.~ */ GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.2
  SAY #85983 /* ~I think you know nothing of my impulses, <CHARNAME>.~ [OH85983] */
  IF ~~ THEN REPLY #85984 /* ~I know only what you choose to reveal to me.~ */ GOTO 177
  IF ~~ THEN REPLY #85985 /* ~Then you should be more impulsive.~ */ GOTO 172
  IF ~~ THEN REPLY #85986 /* ~You're a man, Rasaad. I know all I need to know of what drives you.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 171.1
  SAY #85987 /* ~Would you like that?~ [OH85987] */
  IF ~~ THEN REPLY #85988 /* ~Try it and find out.~ */ GOTO 178
  IF ~~ THEN REPLY #85989 /* ~You ask if I would like it? Do you even know what impulsive means?~ */ GOTO 173
  IF ~~ THEN REPLY #85990 /* ~*sigh* You do not know what you just lost, you bloody great oaf. And you never will.~ */ GOTO 201
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #85991 /* ~I do not wish to presume.~ [OH85991] */
  IF ~~ THEN REPLY #85992 /* ~There's no sin in declaring your feelings clearly, Rasaad.~ */ GOTO 187
  IF ~~ THEN REPLY #85993 /* ~Presume away. If you go too far, you will know it quickly, I assure you.~ */ GOTO 174
  IF ~~ THEN REPLY #85994 /* ~Nor should you. You wouldn't like where that led.~ */ GOTO 167
END

IF ~~ THEN BEGIN 174 // from: 178.0 173.1
  SAY #85995 /* ~Come with me, then. I'd like to do something impulsive with you.~ [OH85995] */
  IF ~~ THEN REPLY #85996 /* ~All right.~ */ DO ~SetGlobal("OHR_morningafter","GLOBAL",1)
RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #85997 /* ~Now we're talking.~ */ DO ~SetGlobal("OHR_morningafter","GLOBAL",1)
RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #85998 /* ~I bet you would. As a monk, I'm sure you're accustomed to being denied baser pleasures.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.2
  SAY #85999 /* ~So after all we've been through, you would deny me?~ [OH85999] */
  IF ~~ THEN REPLY #86000 /* ~Our time will come, Rasaad. But it's not here yet.~ */ GOTO 176
  IF ~~ THEN REPLY #86001 /* ~For now, I will. Maybe later that will change. What can I say? I'm mercurial.~ */ GOTO 176
  IF ~~ THEN REPLY #86002 /* ~After all we've gone through, denying you is the sole joy you provide me.~ */ GOTO 167
END

IF ~~ THEN BEGIN 176 // from: 175.1 175.0
  SAY #86003 /* ~Then I shall wait for the winds to change. Hopefully, they will blow in my direction—that would be a pleasant change of pace.~ [OH86003] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from: 171.0
  SAY #86004 /* ~Would you see more?~ [OH86004] */
  IF ~~ THEN REPLY #86005 /* ~I would see everything. I'll not be satisfied while there are secrets yet between us.~ */ GOTO 178
  IF ~~ THEN REPLY #86006 /* ~Yes. Show me more, now.~ */ GOTO 187
  IF ~~ THEN REPLY #86007 /* ~I've seen more than I care to already. Please, I beg you—be an impossible riddle, an unsolvable mystery to me. I would prefer that to your constant whining.~ */ GOTO 167
END

IF ~~ THEN BEGIN 178 // from: 198.0 196.0 195.0 194.0 191.0 188.0 186.2 185.1 185.0 184.0 181.0 179.2 179.1 179.0 177.0 172.0
  SAY #86008 /* ~For some time now, I've restrained my baser urges, for fear of alienating you. I can no longer contain them, and in truth I do not want to.~ [OH86008] */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 179 // from: 186.1 170.1
  SAY #86009 /* ~Without honor, I have nothing.~ [OH86009] */
  IF ~~ THEN REPLY #86010 /* ~That's not true. You'd still have me... if you wanted me.~ */ GOTO 178
  IF ~~ THEN REPLY #86011 /* ~I don't know about that. If you were a little less honorable, you might have a lot more fun.~ */ GOTO 178
  IF ~~ THEN REPLY #86012 /* ~Do I truly mean so little to you?~ */ GOTO 178
END

IF ~~ THEN BEGIN 180 // from: 168.0
  SAY #86013 /* ~My brother's killer yet lives. My friends, with you excepted, are dead or have turned their backs upon me. My life is a shambles. How can I be happy under such dire circumstances?~ [OH86013] */
  IF ~~ THEN REPLY #86014 /* ~You are with me. Does that count for nothing?~ */ GOTO 181
  IF ~~ THEN REPLY #86015 /* ~If you have to ask, you'll never know.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #86016 /* ~You choose to embrace misery when you could have embraced something else altogether. Your lack of vision will be your destruction, mark me on this.~ */ GOTO 182
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #86017 /* ~It counts for more than you know.~ [OH86017] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 182 // from: 180.2
  SAY #86018 /* ~You are probably right, <CHARNAME>. But I am what I am. And I must do what I must do.~ [OH86018] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 183 // from: 166.0
  SAY #86019 /* ~Oh? And what are those?~ [OH86019] */
  IF ~~ THEN REPLY #86020 /* ~You do not know? You must at least suspect...~ */ GOTO 184
  IF ~~ THEN REPLY #86021 /* ~You would have me do all the work here? No, no. I've gone as far as I'm willing to alone. The next step must be yours.~ */ GOTO 184
  IF ~~ THEN REPLY #86022 /* ~They are yours to discover, not mine to reveal.~ */ GOTO 185
END

IF ~~ THEN BEGIN 184 // from: 183.1 183.0
  SAY #86023 /* ~I think I understand...~ [OH86023] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 185 // from: 183.2
  SAY #86024 /* ~I look forward to uncovering these possibilities.~ [OH86024] */
  IF ~~ THEN REPLY #86025 /* ~I would too, were I in your sandals.~ */ GOTO 178
  IF ~~ THEN REPLY #86026 /* ~That's not all you look forward to uncovering, I hope.~ */ GOTO 178
  IF ~~ THEN REPLY #86027 /* ~You say the words, but lack the conviction. Speak plainly now, or leave me until you're ready to act like an adult.~ */ GOTO 187
END

IF ~~ THEN BEGIN 186 // from: 197.0
  SAY #86028 /* ~Yet I hesitate to move forward. I respect you deeply, <CHARNAME>. I do not want to sully that.~ [OH86028] */
  IF ~~ THEN REPLY #86029 /* ~Respect me enough to speak plainly, and I will do the same.~ */ GOTO 187
  IF ~~ THEN REPLY #86030 /* ~I would have more than just your respect, Rasaad.~ */ GOTO 179
  IF ~~ THEN REPLY #86031 /* ~If I feel disrespected, you will know it very quickly, I promise you that.~ */ GOTO 178
END

IF ~~ THEN BEGIN 187 // from: 186.0 185.2 177.1 173.0
  SAY #86032 /* ~Very well.~ [OH86032] */
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #86033 /* ~Damn me for a fool! I feel like a one-legged man walking a tightrope. I am better than this! All right then. The truth.~ [OH86033] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 189 // from: 169.2
  SAY #86034 /* ~Though not forbidden, such things are not looked upon favorably. I knew a monk once who was roundly castigated for his relationship with a woman of, ah, negotiable affection. He was trying to lead her to the path of the Sun Soul and got led somewhere very different. It cost him many friends in the order, but he seemed to have few regrets.~ [OH86034] */
  IF ~~ THEN REPLY #86035 /* ~Such feelings are quite complicated enough without one's faith adding to them.~ */ GOTO 191
  IF ~~ THEN REPLY #86036 /* ~So if you were to become romantically involved, it would be, what, semi-forbidden?~ */ GOTO 195
  IF ~~ THEN REPLY #86037 /* ~You compare me to some whore?~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.2
  SAY #86038 /* ~No! I—I meant only to say that romantic relationships are fraught with complications for men of my faith.~ [OH86038] */
  IF ~  Class(Player1,MONK)
~ THEN REPLY #101740 /* ~Men of your faith? Men *and* women. And I know better than most.~ */ GOTO 191
  IF ~~ THEN REPLY #86039 /* ~You would risk the consequences, though?~ */ GOTO 191
  IF ~~ THEN REPLY #86040 /* ~Hah! You should see the look on your face, Rasaad.~ */ GOTO 192
  IF ~~ THEN REPLY #86041 /* ~Well, I'd hate to complicate things for you.~ */ GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.3 190.1 190.0 189.0
  SAY #86042 /* ~In your case, <CHARNAME>, I would gladly deal with the complications.~ [OH86042] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 192 // from: 200.2 200.1 190.2
  SAY #86043 /* ~You make a joke of my feelings.~ [OH86043] */
  IF ~~ THEN REPLY #86044 /* ~Not to hurt you—I'm trying to make this easier for you, though I seem to be failing to do so.~ */ GOTO 194
  IF ~~ THEN REPLY #86045 /* ~I'm not laughing at you, Rasaad. I'm laughing at a space just slightly to your left. You need to lighten up.~ */ GOTO 194
  IF ~~ THEN REPLY #86046 /* ~Your feelings are a joke, Rasaad. In future, keep them to yourself.~ */ GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.2
  SAY #86047 /* ~I will do that, then.~ [OH86047] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 194 // from: 200.0 192.1 192.0
  SAY #86048 /* ~These are serious matters, <CHARNAME>. ~ [OH86048] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 195 // from: 189.1
  SAY #86049 /* ~ 'Twould be the semi-sweetest fruit.~ [OH86049] */
  IF ~~ THEN REPLY #86050 /* ~Overly sweet things hurt my teeth anyway.~ */ GOTO 178
  IF ~~ THEN REPLY #86051 /* ~Is that a joke you're making? By the gods, there's hope for you yet.~ */ GOTO 196
  IF ~~ THEN REPLY #86052 /* ~Not sweet enough for me.~ */ GOTO 167
END

IF ~~ THEN BEGIN 196 // from: 199.1 195.1
  SAY #86053 /* ~If I might speak seriously for a moment... there is something I must tell you.~ [OH86053] */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 197 // from: 198.1
  SAY #86054 /* ~I do, more than you know.~ [OH86054] */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 198 // from: 169.0
  SAY #86055 /* ~We are doing something, then?~ [OH86055] */
  IF ~~ THEN REPLY #86056 /* ~I think so. Don't you?~ */ GOTO 178
  IF ~~ THEN REPLY #86057 /* ~Is that what you want?~ */ GOTO 197
  IF ~~ THEN REPLY #86058 /* ~Somethings. Separate things. Not together.~ */ GOTO 167
END

IF ~~ THEN BEGIN 199 // from: 170.0
  SAY #86059 /* ~Honor... and a blanket.~ [OH86059] */
  IF ~~ THEN REPLY #86060 /* ~I've something that could keep you warmer.~ */ GOTO 200
  IF ~~ THEN REPLY #86061 /* ~Is that a joke you're making? By the gods, there's hope for you yet.~ */ GOTO 196
  IF ~~ THEN REPLY #86062 /* ~Sleep well, then, and dream of what might have been, had you been slightly less bullheadedly stoic.~ */ GOTO 201
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #86063 /* ~Do not toy with me, <CHARNAME>. I beg you.~ [OH86063] */
  IF ~~ THEN REPLY #86064 /* ~You think too little of me.~ */ GOTO 194
  IF ~~ THEN REPLY #86065 /* ~Awww. Where's the fun in that?~ */ GOTO 192
  IF ~~ THEN REPLY #86066 /* ~I like to make you beg, monk.~ */ GOTO 192
END

IF ~~ THEN BEGIN 201 // from: 199.2 172.2
  SAY #86067 /* ~I'm sorry...?~ [OH86067] */
  IF ~~ THEN REPLY #86068 /* ~You should be, you idiot.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_morningafter","GLOBAL",1)
~ THEN BEGIN 202 // from:
  SAY #97637 /* ~Good morning, <CHARNAME>. You slept well, I trust?~ */
  IF ~~ THEN REPLY #97638 /* ~Quite well. And you?~ */ DO ~SetGlobal("OHR_morningafter","GLOBAL",2)
~ GOTO 203
  IF ~~ THEN REPLY #97639 /* ~I didn't really sleep much, but... somehow, I don't mind.~ */ DO ~SetGlobal("OHR_morningafter","GLOBAL",2)
~ GOTO 204
  IF ~~ THEN REPLY #97640 /* ~Terribly. You kept pushing me off your roll in your sleep.~ */ DO ~SetGlobal("OHR_morningafter","GLOBAL",2)
~ GOTO 205
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #97641 /* ~Well. Very well. ~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 204 // from: 202.1
  SAY #97642 /* ~That is good to hear.~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 205 // from: 202.2
  SAY #97643 /* ~I am sorry. I'm—not used to sleeping with another.~ */
  IF ~~ THEN REPLY #97644 /* ~Don't worry about it. ~ */ GOTO 207
  IF ~~ THEN REPLY #97645 /* ~I could tell.~ */ GOTO 207
  IF ~~ THEN REPLY #97646 /* ~Have you ever slept with another?~ */ GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.2
  SAY #97647 /* ~I— No. I never really wanted to, before now.~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0 205.1 205.0 204.0 203.0
  SAY #97648 /* ~You aren't having second thoughts, I hope.~ */
  IF ~~ THEN REPLY #97649 /* ~None at all. I'd like to do that again sometime.~ */ GOTO 208
  IF ~~ THEN REPLY #97650 /* ~I don't think so. What about you?~ */ GOTO 209
  IF ~~ THEN REPLY #97651 /* ~I... I'm sorry, Rasaad. It just wasn't what I expected.~ */ GOTO 210
  IF ~~ THEN REPLY #97652 /* ~Why would I?~ */ GOTO 211
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #97653 /* ~I think that can be managed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #97654 /* ~Not at all. I shall treasure the memory.~ */
  IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 210 // from: 207.2
  SAY #97655 /* ~Oh. I see. It... it won't happen again.~ */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 211 // from: 207.3
  SAY #97656 /* ~I just wanted to make sure that—you enjoyed yourself as much as I.~ */
  IF ~~ THEN REPLY #97657 /* ~I did. Don't you worry about that.~ */ GOTO 212
  IF ~~ THEN REPLY #97658 /* ~It was fine.~ */ GOTO 213
  IF ~~ THEN REPLY #97659 /* ~I don't know about that. You seemed to enjoy yourself an awful lot.~ */ GOTO 215
END

IF ~~ THEN BEGIN 212 // from: 215.0 214.0 213.2 213.0 211.0 209.0
  SAY #97660 /* ~We should get up before the others wake... Thank you, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #97661 /* ~It was my pleasure. I mean that.~ */ EXIT
  IF ~~ THEN REPLY #97662 /* ~Any time.~ */ EXIT
  IF ~~ THEN REPLY #97663 /* ~Mm.~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 211.1
  SAY #97664 /* ~Fine? That is all?~ */
  IF ~~ THEN REPLY #97665 /* ~That's better than many. Trust me.~ */ GOTO 212
  IF ~~ THEN REPLY #97666 /* ~It'll get better, with a little practice.~ */ GOTO 214
  IF ~~ THEN REPLY #97667 /* ~It's good enough.~ */ GOTO 212
END

IF ~~ THEN BEGIN 214 // from: 215.1 213.1
  SAY #97668 /* ~So we will... practice. That is good to know.~ */
  IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 215 // from: 211.2
  SAY #97669 /* ~You didn't?~ */
  IF ~~ THEN REPLY #97670 /* ~I had a good time. Don't worry about that.~ */ GOTO 212
  IF ~~ THEN REPLY #97671 /* ~I enjoyed myself well enough. I'll enjoy myself more once you've had some practice.~ */ GOTO 214
  IF ~~ THEN REPLY #97672 /* ~What, would you have me hold your hand and tell you it was the most glorious night of my life? It was a decent night. I've no complaints. Be happy with that—or don't, I care not.~ */ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.2
  SAY #97673 /* ~I—I see.~ */
  IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #97674 /* ~Let us rise before the others wake.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",18)
~ THEN BEGIN 218 // from:
  SAY #86069 /* ~You are driving me to distraction, <CHARNAME>!~ [OH86069] */
  IF ~~ THEN REPLY #86070 /* ~I'm sorry, Rasaad. Is there something in particular that's causing you problems?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 220
  IF ~~ THEN REPLY #86071 /* ~Not the worst distraction you could have, I hope.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 219
  IF ~~ THEN REPLY #86072 /* ~I thought monks were masters of focus and concentration.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 235
END

IF ~~ THEN BEGIN 219 // from: 218.1
  SAY #86073 /* ~It is not without its charms, nor are you. But we cannot go on as we have been.~ [OH86073] */
  IF ~~ THEN REPLY #86074 /* ~How would you go forward from here, then?~ */ GOTO 220
  IF ~~ THEN REPLY #86075 /* ~Are you sure? I quite like the way things have been.~ */ GOTO 220
  IF ~~ THEN REPLY #86076 /* ~We have had a fruitful partnership thus far, Rasaad. Do not seek to change it.~ */ GOTO 220
END

IF ~~ THEN BEGIN 220 // from: 219.2 219.1 219.0 218.0
  SAY #86077 /* ~Your very presence tears at my heart. I can bear this no longer. I must know where we stand.~ [OH86077] */
  IF ~~ THEN REPLY #86078 /* ~We stand wherever you would have us stand, Rasaad. I trust my feelings are clear.~ */ GOTO 235
  IF ~~ THEN REPLY #86079 /* ~Where do we stand? Beside each other, as we always have.~ */ GOTO 221
  IF ~~ THEN REPLY #86080 /* ~We stand as friends and allies. I'd have thought this was clear by now.~ */ GOTO 221
END

IF ~~ THEN BEGIN 221 // from: 220.2 220.1
  SAY #86081 /* ~As allies united against our common enemies—and nothing more?~ [OH86081] */
  IF ~~ THEN REPLY #86082 /* ~What more could we be?~ */ GOTO 239
  IF ~~ THEN REPLY #86083 /* ~Allies and friends. Is that not enough?~ */ GOTO 223
  IF ~~ THEN REPLY #86084 /* ~Nothing more. That should be enough for any man.~ */ GOTO 222
END

IF ~~ THEN BEGIN 222 // from: 226.2 223.2 221.2
  SAY #86085 /* ~Then it will be enough for me. My thanks, <CHARNAME>. We'll speak of this no more.~ [OH86085] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 223 // from: 221.1
  SAY #86086 /* ~Is that truly enough for you?~ [OH86086] */
  IF ~~ THEN REPLY #86087 /* ~No. It isn't.~ */ GOTO 235
  IF ~~ THEN REPLY #86088 /* ~If I'm honest, I hadn't really given it that much thought.~ */ GOTO 224
  IF ~~ THEN REPLY #86089 /* ~It is.~ */ GOTO 222
END

IF ~~ THEN BEGIN 224 // from: 223.1
  SAY #86090 /* ~Consider it now then, for I must have an answer.~ [OH86090] */
  IF ~~ THEN REPLY #86091 /* ~If I must give you an answer, the answer is this: I love you. I trust you are now clear on where I stand, at least.~ */ GOTO 235
  IF ~~ THEN REPLY #86092 /* ~Can I think it over?~ */ GOTO 225
  IF ~~ THEN REPLY #86093 /* ~You do not want to pressure me, monk.~ */ GOTO 226
END

IF ~~ THEN BEGIN 225 // from: 224.1
  SAY #86094 /* ~If you've anything to think over, I have my answer.~ [OH86094] */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 226 // from: 224.2
  SAY #86095 /* ~You've left me little choice in the matter.~ [OH86095] */
  IF ~~ THEN REPLY #86096 /* ~You know I have feelings for you, Rasaad.~ */ GOTO 227
  IF ~~ THEN REPLY #86097 /* ~You choose to make this an issue, Rasaad. You, not me.~ */ GOTO 235
  IF ~~ THEN REPLY #86098 /* ~Then here is my answer: We are allies, and nothing more. That is enough for me—given the way you're acting now, it's more than it's worth.~ */ GOTO 222
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #86099 /* ~Yet you do not share them with me.~ [OH86099] */
  IF ~~ THEN REPLY #86100 /* ~You want me to share them?~ */ GOTO 229
  IF ~~ THEN REPLY #86101 /* ~Oh, and you're so talkative and forthcoming. You cannot put this on me, Rasaad, at least not entirely.~ */ GOTO 231
  IF ~~ THEN REPLY #86102 /* ~Our lifestyles do not always allow us to follow our hearts.~ */ GOTO 228
END

IF ~~ THEN BEGIN 228 // from: 227.2
  SAY #86103 /* ~They do not always prevent it, either.~ [OH86103] */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0 227.0
  SAY #86104 /* ~In this matter, if no other, I would know your heart.~ [OH86104] */
  IF ~~ THEN REPLY #86105 /* ~I love you, Rasaad. Is that plain enough for you?~ */ GOTO 239
  IF ~~ THEN REPLY #86106 /* ~I treasure my secrets, Rasaad. You've not earned the right to know this one. Not yet.~ */ GOTO 237
  IF ~~ THEN REPLY #86107 /* ~I had sought to spare your feelings, but you have forced my hand. There is nothing between us, Rasaad. You are a means for me to achieve my own ends. Nothing more.~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.2
  SAY #86108 /* ~I do not believe you.~ [OH86108] */
  IF ~~ THEN REPLY #86109 /* ~Fine, then. I sought to save us further heartache, but you will be satisfied with nothing less. I love you. There, I said it. Are you happy now?~ */ GOTO 240
  IF ~~ THEN REPLY #86110 /* ~You cling to hope where there is none.~ */ GOTO 237
  IF ~~ THEN REPLY #86111 /* ~Believe it or don't, it matters not to me. Learn to live with it, or leave.~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.2 227.1 225.0
  SAY #86112 /* ~I have lost everything then. My faith, my friends, my brother, and now you. Farewell, <CHARNAME>.~ [OH86112] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #86113 /* ~Don't go, Rasaad. We can still do much for each other.~ */ GOTO 233
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #86113 /* ~Don't go, Rasaad. We can still do much for each other.~ */ GOTO 234
  IF ~~ THEN REPLY #86114 /* ~Fare thee well, Rasaad. I hope someday you find the peace you seek.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #86115 /* ~You still have vengeance. That is no small thing.~ */ GOTO 232
END

IF ~~ THEN BEGIN 232 // from: 231.3
  SAY #86116 /* ~It will have to keep me. But I had hoped for something more.~ [OH86116] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 233 // from: 231.0
  SAY #86117 /* ~I shall stay, then, for as long as I can bear it. Perhaps the hurt will grow less painful with time.~ [OH86117] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 234 // from: 237.0 231.1
  SAY #86118 /* ~I cannot stay with you any longer. I see now it is my destiny to walk this dark path, forever alone. Goodbye.~ [OH86118] */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 235 // from: 226.1 224.0 223.0 220.0 218.2
  SAY #86119 /* ~I have lost everything that has ever mattered to me. My brother, my friends, my faith, and my order. All that I have left is revenge, and you.~ [OH86119] */
  IF ~~ THEN REPLY #86120 /* ~And when you have had your revenge, you will still have me.~ */ GOTO 238
  IF ~~ THEN REPLY #86121 /* ~That's more than most.~ */ GOTO 239
  IF ~~ THEN REPLY #86122 /* ~You are half-right.~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.2
  SAY #86123 /* ~You say this is my burden to bear, then?~ [OH86123] */
  IF ~~ THEN REPLY #86124 /* ~Your burdens are mine, Rasaad. You should know that by now.~ */ GOTO 238
  IF ~~ THEN REPLY #86125 /* ~The quest for vengeance is a burden you must bear alone, Rasaad. Keeping you alive to see it through is mine.~ */ GOTO 239
  IF ~~ THEN REPLY #86126 /* ~I cannot help you.~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 239.2 236.2 230.1 229.1
  SAY #86127 /* ~Then I am left with no choice.~ [OH86127] */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 238 // from: 236.0 235.0
  SAY #86128 /* ~You promise me this? I will not be abandoned by you, as I have been by so many others?~ [OH86128] */
  IF ~~ THEN REPLY #86129 /* ~Never.~ */ GOTO 239
  IF ~~ THEN REPLY #86130 /* ~If this is going to work, you must learn to trust me, Rasaad.~ */ GOTO 239
  IF ~~ THEN REPLY #86131 /* ~Were I inclined to abandon you, I'd have done it long before now.~ */ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 240.0 238.2 238.1 238.0 236.1 235.1 229.0 221.0
  SAY #86132 /* ~You are my life now, <CHARNAME>. What light penetrates my darkened heart comes from you and nothing else. If I lose you, I will lose myself.~ [OH86132] */
  IF ~~ THEN REPLY #86133 /* ~Then I guess you'd better not lose me.~ */ EXIT
  IF ~~ THEN REPLY #86134 /* ~If you ever lose yourself, the first thing you need to do is find a mirror. That should sort things out fairly quickly.~ */ GOTO 241
  IF ~~ THEN REPLY #86135 /* ~If you would use me as a guide, you truly are lost, monk.~ */ GOTO 237
END

IF ~~ THEN BEGIN 240 // from: 230.0
  SAY #86136 /* ~Happy? No, that is beyond me still. But I can at least see the potential for happiness.~ [OH86136] */
  IF ~~ THEN GOTO 239
END

IF ~~ THEN BEGIN 241 // from: 239.1
  SAY #86137 /* ~I shall look in that mirror and pray I see you standing beside me still.~ [OH86137] */
  IF ~~ THEN REPLY #86138 /* ~You will. Always.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",20)
~ THEN BEGIN 242 // from:
  SAY #97675 /* ~For so long, I have wanted to lean in and kiss you, but held back. I can hardly believe I am now able to do this... ~ */
  IF ~~ THEN REPLY #97676 /* ~Mmm...~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 246
  IF ~~ THEN REPLY #97677 /* ~What do you think you're doing?!~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 243
  IF ~~ THEN REPLY #97678 /* ~Not right now. Later.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 242.1
  SAY #97679 /* ~Is it not obvious?~ */
  IF ~~ THEN REPLY #97680 /* ~Very. What isn't obvious is where you got the idea you could do that whenever you want.~ */ GOTO 245
  IF ~~ THEN REPLY #97681 /* ~I don't think so.~ */ GOTO 245
END

IF ~~ THEN BEGIN 244 // from: 242.2
  SAY #97682 /* ~As... as you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 245 // from: 243.1 243.0
  SAY #97683 /* ~Forgive me, <CHARNAME>. I was inconsiderate. It won't happen again, I promise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 246 // from: 242.0
  SAY #97684 /* ~I fear I will wake up soon, and you will be leagues away, even though you slumber just a few feet from my bedroll.~ */
  IF ~~ THEN REPLY #97685 /* ~If that's the case, make a point of not waking up. I like things just how they are.~ */ GOTO 247
  IF ~~ THEN REPLY #97686 /* ~Don't worry, Rasaad. I'm not going anywhere.~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #97687 /* ~I will avoid it as best I can. I'd not see this dream end.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 248 // from: 246.1
  SAY #97688 /* ~That is good. I would be lost without you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("RasaadLovetalks","GLOBAL",22)
~ THEN BEGIN 249 // from:
  SAY #97689 /* ~<CHARNAME>. We need to talk.~ */
  IF ~~ THEN REPLY #97690 /* ~Rasaad? What is it?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
~ GOTO 252
  IF ~~ THEN REPLY #97691 /* ~If this is about your shirt, I'm sorry. I'll have it mended as soon as I can.~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
~ GOTO 250
  IF ~~ THEN REPLY #97692 /* ~Can it wait?~ */ DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)
~ GOTO 251
END

IF ~~ THEN BEGIN 250 // from: 249.1
  SAY #97693 /* ~It's not about the shirt. ~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 251 // from: 249.2
  SAY #97694 /* ~I wish it could.~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252 // from: 251.0 250.0 249.0
  SAY #97695 /* ~These last few weeks together... It is as if Selûne herself heard my prayers and granted me my ultimate wish.~ */
  IF ~~ THEN REPLY #97696 /* ~I don't think I like where this is headed.~ */ GOTO 254
  IF ~~ THEN REPLY #97697 /* ~So what's the problem?~ */ GOTO 254
  IF ~~ THEN REPLY #97698 /* ~That's sweet of you to say.~ */ GOTO 253
END

IF ~~ THEN BEGIN 253 // from: 252.2
  SAY #97699 /* ~Please. Let me finish. This is hard enough as it is.~ */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0 252.1 252.0
  SAY #97700 /* ~We have become close. Friends. More than that. I thought... perhaps that would be enough. Perhaps I could set aside my vengeance and stand by your side, steadfast and true.~ */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #97701 /* ~But it cannot be. There is no future for me, not until Alorgoth lies dead.~ */
  IF ~~ THEN REPLY #97702 /* ~Then we'll find him, and we'll kill him. It's simple.~ */ GOTO 256
  IF ~~ THEN REPLY #97703 /* ~What you're saying is that I'm not enough for you.~ */ GOTO 257
  IF ~~ THEN REPLY #97704 /* ~I think I understand.~ */ GOTO 259
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #97705 /* ~I wish it were.~ */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 257 // from: 255.1
  SAY #97706 /* ~I want you to be.~ */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY #97707 /* ~But you are not.~ */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0 256.0 255.2
  SAY #97708 /* ~Killing Alorgoth may cost me my life. In some ways, it already has.~ */
  IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #97709 /* ~My vengeance is all that matters to me. That isn't fair to you.~ */
  IF ~~ THEN REPLY #97710 /* ~I understand.~ */ GOTO 261
  IF ~~ THEN REPLY #97711 /* ~I love you, Rasaad. We can get through this together, I promise you.~ */ GOTO 262
  IF ~~ THEN REPLY #97712 /* ~Then you have made your preference clear.~ */ GOTO 263
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #97713 /* ~That is why this must end now.~ */
  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 262 // from: 260.1
  SAY #97714 /* ~No. I'll not do that to you.~ */
  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263 // from: 262.0 261.0 260.2
  SAY #97715 /* ~I am sorry, <CHARNAME>-but we are done. Until Alorgoth is dead, this cannot be. It would destroy us both.~ */
  IF ~~ THEN REPLY #97716 /* ~If you were truly sorry, Rasaad, you would not do this. ~ */ GOTO 267
  IF ~~ THEN REPLY #97717 /* ~You selfish, arrogant man. How dare you?~ */ GOTO 264
  IF ~~ THEN REPLY #97718 /* ~I don't care. Please. Don't do this to me. Don't do this to us.~ */ GOTO 265
  IF ~~ THEN REPLY #97719 /* ~Then, if I must... I will wait. We will kill Alorgoth, and I will wait until it can be.~ */ GOTO 266
END

IF ~~ THEN BEGIN 264 // from: 263.1
  SAY #97720 /* ~I am sorry, but this is what I must do. ~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 265 // from: 263.2
  SAY #97721 /* ~I do this FOR us. For you.~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 266 // from: 263.3
  SAY #97722 /* ~And if I die? If it takes until the end of my days?~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0 265.0 264.0 263.0
  SAY #97723 /* ~I will stay with you, <CHARNAME>, as a friend. A dear friend, and nothing more.~ */
  IF ~~ THEN REPLY #97724 /* ~And if that isn't enough for me?~ */ GOTO 268
  IF ~~ THEN REPLY #97725 /* ~I'm sorry you feel that way.~ */ GOTO 269
  IF ~~ THEN REPLY #97726 /* ~No, you will not. Your heart might be made of ice, but mine is not. ~ */ GOTO 270
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #97727 /* ~I am sorry. ~ */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 269 // from: 267.1
  SAY #97728 /* ~No more than I.~ */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 270 // from: 267.2
  SAY #97729 /* ~I deserve that. ~ */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 271
END

IF ~~ THEN BEGIN 271 // from: 270.0 269.0 268.0
  SAY #97730 /* ~These weeks have been some of the brightest of my life. Thank you. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_soul","GLOBAL",2)
~ THEN BEGIN 272 // from:
  SAY #97731 /* ~I do not know what to say. What Irenicus did to you...~ */
  IF ~~ THEN REPLY #97732 /* ~There is nothing to say, Rasaad. What happened, happened.~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("OHR_soultimer","GLOBAL",TWELVE_HOURS)
~ GOTO 274
  IF ~~ THEN REPLY #97733 /* ~I know what he did to me. It's not something I care to discuss.~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("OHR_soultimer","GLOBAL",TWELVE_HOURS)
~ GOTO 273
  IF ~~ THEN REPLY #97734 /* ~What he did to me will be repaid with blood.~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("OHR_soultimer","GLOBAL",TWELVE_HOURS)
~ GOTO 274
END

IF ~~ THEN BEGIN 273 // from: 272.1
  SAY #97735 /* ~Just know that I am here if you have need of me. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 274 // from: 272.2 272.0
  SAY #97736 /* ~Does it—hurt? Can you feel its absence?~ */
  IF ~~ THEN REPLY #97737 /* ~I feel little else.~ */ GOTO 275
  IF ~~ THEN REPLY #97738 /* ~Of course it hurts. I've lost my bloody soul. How do you think that feels?~ */ GOTO 276
  IF ~~ THEN REPLY #97739 /* ~It doesn't hurt. I just feel... tired. Drained.~ */ GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 276.0 274.2 274.0
  SAY #97740 /* ~I cannot imagine what this must be like. ~ */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 276 // from: 274.1
  SAY #97741 /* ~I do not know. That's why I asked.~ */
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 277 // from: 275.0
  SAY #97742 /* ~May Selûne's light guide us from this place, and quickly, that we can restore what has been taken from you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_soul","GLOBAL",4)
~ THEN BEGIN 278 // from:
  SAY #97746 /* ~You look pale. Are you all right?~ */
  IF ~~ THEN REPLY #97747 /* ~I'm just a little tired, that's all.~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 281
  IF ~~ THEN REPLY #97748 /* ~I look pale? Great. And just when I thought my skin was getting some color.~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 279
  IF ~~ THEN REPLY #97749 /* ~I'm all right. What about you?~ */ DO ~IncrementGlobal("OHR_soul","GLOBAL",1)
RealSetGlobalTimer("RasaadLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 280
END

IF ~~ THEN BEGIN 279 // from: 278.1
  SAY #97750 /* ~You're still joking. That's a good sign.~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 280 // from: 278.2
  SAY #97751 /* ~Don't try to change the subject, <CHARNAME>. ~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0 279.0 278.0
  SAY #97752 /* ~I was wondering if you would meditate with me. Clearing my mind of distractions helps me when I am struggling.~ */
  IF ~~ THEN REPLY #97753 /* ~I've never tried meditating before. ~ */ GOTO 282
  IF ~~ THEN REPLY #97754 /* ~My mind will not be easily cleared, but I'm willing to give it a shot. How does it work?~ */ GOTO 285
  IF ~  !Class(Player1,MONK)
~ THEN REPLY #97755 /* ~Meditation is for monks. I'll not sit around gazing at my navel when there's work to be done.~ */ GOTO 283
END

IF ~~ THEN BEGIN 282 // from: 281.0
  SAY #97756 /* ~You should. It will help you.~ */
  IF ~~ THEN REPLY #97757 /* ~How does it work?~ */ GOTO 285
  IF ~~ THEN REPLY #97758 /* ~Ah, no. No, I don't think so.~ */ GOTO 284
END

IF ~~ THEN BEGIN 283 // from: 281.2
  SAY #97759 /* ~I understand how it might seem that way, but there's more to it than that. As you're clearly uninterested, I'll say no more about it.~ */
  IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 284 // from: 282.1
  SAY #97760 /* ~As you wish.~ */
  IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 285 // from: 282.0 281.1
  SAY #97761 /* ~You take a deep breath, count to six. Breathe out for six counts. Breathe in, one, two, three, four, five, six. Breathe out, one, two, three, four, five, six.~ */
  IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #97762 /* ~It is a very simple exercise, but very relaxing.~ */
  IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0 284.0 283.0
  SAY #97763 /* ~You were moaning in your sleep again last night. ~ */
  IF ~~ THEN REPLY #97764 /* ~It's nothing. Don't worry about it.~ */ GOTO 288
  IF ~~ THEN REPLY #97766 /* ~I've been having dreams, nightmares, but... somehow they feel more than that.~ */ GOTO 291
  IF ~~ THEN REPLY #97765 /* ~It—was a nightmare! Nothing to do with you shirtless. At all. Ahahaha. ~ */ GOTO 289
  IF ~~ THEN REPLY #97767 /* ~I'm done talking with you.~ */ GOTO 290
END

IF ~~ THEN BEGIN 288 // from: 289.0 287.0
  SAY #97768 /* ~It sounded like you were in pain. ~ */
  IF ~~ THEN REPLY #97769 /* ~I've been having nightmares. Bhaal's blood is growing restless.~ */ GOTO 291
  IF ~~ THEN REPLY #97770 /* ~I'm fine, Rasaad. Really. ~ */ GOTO 291
  IF ~~ THEN REPLY #97771 /* ~I told you not to worry about it. So don't.~ */ GOTO 290
END

IF ~~ THEN BEGIN 289 // from: 287.2
  SAY #97772 /* ~I'm fairly sure that wasn't the kind of dream you were having.~ */
  IF ~~ THEN GOTO 288
END

IF ~~ THEN BEGIN 290 // from: 288.2 287.3
  SAY #97773 /* ~As you wish. But if there is anything I can do, please know you have but to ask.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 291 // from: 288.1 288.0 287.1
  SAY #97774 /* ~Is there anything I can do? ~ */
  IF ~~ THEN REPLY #97775 /* ~Hmm... now that you mention it, a massage before we sleep might help...~ */ GOTO 292
  IF ~~ THEN REPLY #97776 /* ~Not really. But thank you for asking nonetheless.~ */ GOTO 293
  IF ~~ THEN REPLY #97777 /* ~Stop worrying. That's really all you can do for me.~ */ GOTO 294
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #97778 /* ~Of course. I will do what I can to soothe your pain. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.1
  SAY #97779 /* ~Of course.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 294 // from: 291.2
  SAY #97780 /* ~If only it were that easy.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_anomenconflict","GLOBAL",2)
~ THEN BEGIN 295 // from:
  SAY #100016 /* ~May I speak with you, <CHARNAME>?~ */
  IF ~~ THEN REPLY #100017 /* ~Of course, Rasaad.~ */ DO ~SetGlobal("OHR_anomenconflict","GLOBAL",3)
~ GOTO 296
  IF ~~ THEN REPLY #100018 /* ~I doubt I could stop you...~ */ DO ~SetGlobal("OHR_anomenconflict","GLOBAL",3)
~ GOTO 296
  IF ~~ THEN REPLY #100019 /* ~Not now.~ */ DO ~RealSetGlobalTimer("OHR_anomenconflict_timer","GLOBAL",SIX_HOURS)
SetGlobal("OHR_anomenconflict","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 296 // from: 295.1 295.0
  SAY #100020 /* ~I have noticed... Anomen has been eyeing you of late. Eyeing you with some fervor.~ */
  IF ~~ THEN REPLY #100021 /* ~What of it?~ */ GOTO 298
  IF ~~ THEN REPLY #100022 /* ~Jealous?~ */ GOTO 297
  IF ~~ THEN REPLY #100023 /* ~Anomen eyes a lot of women.~ */ GOTO 298
END

IF ~~ THEN BEGIN 297 // from: 296.1
  SAY #100024 /* ~Have I something to be jealous of?~ */
  IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 298 // from: 296.2 296.0
  SAY #100025 /* ~He is a tempestuous man, brave and courageous to a fault. I am glad to call him friend.~ */
  IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299 // from: 298.0
  SAY #100026 /* ~But...~ */
  IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0 297.0
  SAY #100027 /* ~It pains me to ask this, but I have to know. Do you have feelings for him, <CHARNAME>?~ */
  IF ~~ THEN REPLY #100028 /* ~I'm sorry, Rasaad. I do.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 301
  IF ~~ THEN REPLY #100029 /* ~You HAVE to know? Why?~ */ GOTO 302
  IF ~~ THEN REPLY #100030 /* ~Anomen? Gods, no!~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ GOTO 304
END

IF ~~ THEN BEGIN 301 // from: 303.0 300.0
  SAY #100031 /* ~I... I am glad you told me. I hope he gives you what you are looking for.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #100032 /* ~You know why.~ */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from: 302.0
  SAY #100033 /* ~<CHARNAME>? Is he the one?~ */
  IF ~~ THEN REPLY #100034 /* ~He is.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 301
  IF ~~ THEN REPLY #100035 /* ~It's not him. I don't think so, anyway.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ GOTO 305
  IF ~~ THEN REPLY #100036 /* ~Never. Not him.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.2 300.2
  SAY #100037 /* ~I am glad to hear that. Thank you, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 305 // from: 303.1
  SAY #100038 /* ~I am glad to hear that. For the moment, anyway.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #78238 /* ~Hammerhelm! Betrayer!~ [OH78238] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 127
END

IF ~~ THEN BEGIN 307 // from:
  SAY #78240 /* ~You know my name—now know my vengeance!~ [OH78240] */
  IF ~~ THEN DO ~SetGlobal("OHR_CULT_HOSTILE","GLOBAL",1)
AddJournalEntry(85026,INFO)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 308 // from: 379.0
  SAY #78304 /* ~You are right, of course. I could never turn my back on my vows.~ [OH78304] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 128
END

IF ~~ THEN BEGIN 309 // from:
  SAY #78306 /* ~All I want from that monster is his life.~ [OH78306] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 310 // from:
  SAY #98356 /* ~What is this bloodbath you speak of?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 311 // from:
  SAY #98358 /* ~A grim prediction, but one that may well prove accurate. I shall consider your words carefully, Kveroslava.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 312 // from: 789.7
  SAY #98365 /* ~There is no place you could hide, Bodhi. Your fate is sealed.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 313 // from:
  SAY #98366 /* ~Where is this I have been brought now? An ill-starred place, there can be no doubting it. We should leave here, <CHARNAME>—at the earliest opportunity.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~IMOEN2J~ 10
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~AERIEJ~ 131
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ FLAGS 128 EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 314 // from:
  SAY #98367 /* ~We will see, Irenicus—though you'll soon wish you had not!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
END

IF ~~ THEN BEGIN 315 // from:
  SAY #98367 /* ~We will see, Irenicus—though you'll soon wish you had not!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
END

IF ~~ THEN BEGIN 316 // from:
  SAY #98367 /* ~We will see, Irenicus—though you'll soon wish you had not!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
END

IF ~~ THEN BEGIN 317 // from:
  SAY #98367 /* ~We will see, Irenicus—though you'll soon wish you had not!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,MALE)
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,FEMALE)
~ THEN EXTERN ~IMOEN2J~ 39
END

IF ~~ THEN BEGIN 318 // from:
  SAY #98378 /* ~Even now, I'm not sure when you are joking, <CHARNAME>. I hope you are now—at this point, you should have no doubts that I will support you in this.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
END

IF ~~ THEN BEGIN 319 // from:
  SAY #98370 /* ~This is no time for words, <CHARNAME>, but I will speak nonetheless.~ */
  IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #98371 /* ~I would be dead now were it not for you. No, worse—I would be lost. You have given me direction and purpose where the gods and fate offered nothing but darkness and confusion.~ */
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #98372 /* ~To say I love you is to state the obvious, but as you know, stating the obvious is a habit of mine. And I do, I do love you, in a way I never imagined possible.~ */
  IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #98373 /* ~I will see you made whole, one way or another. I will see that which has been stolen returned, or die in the attempt. And I will do so happily, because I do it for you.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
END

IF ~~ THEN BEGIN 323 // from:
  SAY #98381 /* ~Irenicus has finally paid the price for his crimes. You have won, <CHARNAME>. How do you feel?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 324 // from:
  SAY #98382 /* ~Do you need to rest, <CHARNAME>?~ */
  IF ~~ THEN REPLY #98391 /* ~I'll be all right. Come on.~ */ EXIT
  IF ~~ THEN REPLY #98392 /* ~Desperately, but I don't think I'll be able to while we're still in this hellhole.~ */ EXIT
  IF ~~ THEN REPLY #98393 /* ~Keep walking, monk.~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from:
  SAY #98383 /* ~In all my years, I've never seen such—such evil. <CHARNAME>, tell me you are yourself once more, I beg you.~ */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #98384 /* ~In the Selûnite sect, I learned of Bhaal and his various incarnations. That was the Slayer—you became a dead god's avatar. How is this thing possible?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 327 // from:
  SAY #98385 /* ~Are you all right? You're trembling.~ */
  IF ~~ THEN REPLY #98394 /* ~Get back, Rasaad! I don't know if I can save you from what is coming...~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",90)
~ GOTO 328
  IF ~~ THEN REPLY #98395 /* ~You would be too, in my boots. Get away from me, quickly!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",90)
~ GOTO 328
  IF ~~ THEN REPLY #98396 /* ~Back away, monk! If you value your miserable life, get as far from me as you can!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",90)
~ GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.2 327.1 327.0
  SAY #98386 /* ~What is that, <CHARNAME>? Your lips move, but you say nothing—<CHARNAME>? What's— Selûne's light, what's happening?~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 329 // from:
  SAY #98387 /* ~Selûne's light shine upon you, <CHARNAME>. A monster stirs within you.~ */
  IF ~~ THEN GOTO 330
END

IF ~~ THEN BEGIN 330 // from: 329.0
  SAY #98388 /* ~How is this possible? And what can be done to stop it?~ */
  IF ~~ THEN REPLY #98397 /* ~I don't know.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 331
  IF ~~ THEN REPLY #98398 /* ~You say that like you expect me to have an answer.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 331
  IF ~~ THEN REPLY #98399 /* ~In truth, I do not know if I WANT it to stop.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 332
END

IF ~~ THEN BEGIN 331 // from: 330.1 330.0
  SAY #98389 /* ~We'll find the answer... together.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 332 // from: 330.2
  SAY #98390 /* ~A terrifying prospect. Let's not speak of it till we learn more of the creature's provenance.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 333 // from:
  SAY #97301 /* ~Everything. I have lost everything.~ [OH97301] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 22
END

IF ~~ THEN BEGIN 334 // from:
  SAY #97303 /* ~You will show me nothing, monster!~ [OH97303] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHRBODHI",FALSE)
~ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_shadowrestored","AR1400",1)
~ THEN BEGIN 335 // from:
  SAY #102384 /* ~I am glad to see light can penetrate even the darkest of situations. Let us hope that is the last of it... we've seen more than enough shadows this day.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_shadowrestored","AR1400",2)
~ EXIT
END

IF ~~ THEN BEGIN 336 // from:
  SAY #102382 /* ~We must aid against the encroachment of shadow, <CHARNAME>. Will you tell us of your efforts, my halfling friend?~ */
  IF ~~ THEN EXTERN ~MAZZY~ 16
END

IF ~~ THEN BEGIN 337 // from:
  SAY #102383 /* ~We cannot leave without freeing this woman and this place of shadow, <CHARNAME>. I will not allow it. Light *must* pierce the shade.~ */
  IF ~~ THEN EXTERN ~MAZZY~ 13
END

IF ~~ THEN BEGIN 338 // from:
  SAY #102385 /* ~We will do what we can, Hendak. No person should be forced to live—and fight and die—at the whim of others.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 9
END

IF ~~ THEN BEGIN 339 // from:
  SAY #77773 /* ~I am Rasaad. Who are you?~ [OH77773] */
  IF ~~ THEN EXTERN ~OHRCLOAK~ 2
END

IF ~~ THEN BEGIN 340 // from:
  SAY #77788 /* ~A word, <CHARNAME>?~ [OH77788] */
  IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #77789 /* ~We would do well to feign interest in the heretics. Attending this meeting may help us find their hidden temple.~ [OH77789] */
  IF ~~ THEN REPLY #77790 /* ~You take to deception just a little too easily for my taste, Rasaad.~ */ GOTO 342
  IF ~~ THEN REPLY #77791 /* ~A good plan. We'll never get the answers you seek simply by asking questions.~ */ GOTO 344
  IF ~~ THEN REPLY #77792 /* ~Feign interest? I am interested!~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #77793 /* ~You think I like this? Far from it. But I'll do what must be done to deal with the heretics.~ [OH77793] */
  IF ~~ THEN REPLY #77794 /* ~I will support you, but be wary, lest you become in reality that which you pretend to be.~ */ GOTO 349
  IF ~~ THEN REPLY #77795 /* ~There must be other ways to get the answers you seek.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.1
  SAY #77796 /* ~Perhaps, but none so quickly as this.~ [OH77796] */
  IF ~~ THEN REPLY #77797 /* ~The righteous do not abandon their principles for expediency's sake.~ */ GOTO 345
  IF ~~ THEN REPLY #77798 /* ~You are right. Do what you must and get it over with.~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 349.0 348.0 343.1 341.1
  SAY #77799 /* ~Where will this meeting occur?~ [OH77799] */
  IF ~~ THEN EXTERN ~OHRCLOAK~ 7
END

IF ~~ THEN BEGIN 345 // from: 343.0
  SAY #77800 /* ~You and my conscience are in agreement, <CHARNAME>. I only wish it were not so.~ [OH77800] */
  IF ~~ THEN GOTO 346
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #77801 /* ~The only truth is Selûne's. I care nothing for your heresy, stranger.~ [OH77801] */
  IF ~~ THEN EXTERN ~OHRCLOAK~ 9
END

IF ~~ THEN BEGIN 347 // from: 341.2
  SAY #77802 /* ~This is no time for jokes, <CHARNAME>.~ [OH77802] */
  IF ~~ THEN REPLY #77803 /* ~You are right, Rasaad. This is deadly serious business that I take deadly seriously. Deadly. Seriously.~ */ GOTO 348
  IF ~~ THEN REPLY #77804 /* ~So says you. I say life's too short to let any opportunity for a laugh go to waste. You there, hooded mysterious cloaked lady—where will this meeting of like minds take place?~ */ EXTERN ~OHRCLOAK~ 7
  IF ~~ THEN REPLY #77805 /* ~I'm not joking, Rasaad. I'd know more of this so-called heresy. You there—when will this meeting occur?~ */ EXTERN ~OHRCLOAK~ 7
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #77806 /* ~Please, <CHARNAME>, I beg you, at least act as though this is a serious matter.~ [OH77806] */
  IF ~~ THEN REPLY #77807 /* ~Okay, I'll try.~ */ GOTO 344
END

IF ~~ THEN BEGIN 349 // from: 342.0
  SAY #77808 /* ~Believe me, <CHARNAME>, I am keenly aware of the line I walk with this deception.~ [OH77808] */
  IF ~~ THEN REPLY #77809 /* ~Good. Lose sight of it for a moment and you may lose all that matters.~ */ GOTO 344
END

IF ~~ THEN BEGIN 350 // from:
  SAY #77816 /* ~In a moment of weakness, I forgot myself. It took a true friend to remind me who I really am.~ [OH77816] */
  IF ~~ THEN EXTERN ~OHRCLOAK~ 10
END

IF ~~ THEN BEGIN 351 // from:
  SAY #77818 /* ~Am I doing the right thing, <CHARNAME>? This deceit goes against everything I learned as a servant of Selûne.~ [OH77818] */
  IF ~~ THEN REPLY #77819 /* ~You do what you must for the best of all possible reasons, Rasaad. You must stay the course, no matter how distasteful you find this deception.~ */ GOTO 352
  IF ~~ THEN REPLY #77820 /* ~I know you would sacrifice much to capture your brother's killer, but you must be wary not to darken your heart with deception.~ */ GOTO 353
  IF ~~ THEN REPLY #77821 /* ~Everything you learned as a servant of Selûne was wrong, Rasaad. You'll see that, in time.~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #77822 /* ~You give me the strength to continue, <CHARNAME>. Without you, I fear I would be lost.~ [OH77822] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 353 // from: 351.1
  SAY #77823 /* ~My heart is already dark with grief and despair. I fear that when I lost Gamaz, I lost my way.~ [OH77823] */
  IF ~~ THEN REPLY #77824 /* ~I have faith that you'll find your path again, Rasaad. I'll do what I can to help you.~ */ EXIT
  IF ~~ THEN REPLY #77825 /* ~Perhaps you found a new way, and simply have yet to recognize it.~ */ EXIT
  IF ~~ THEN REPLY #77826 /* ~Cease your wretched whimpering, Rasaad. At least try to act like a man.~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY #78070 /* ~Hammerhelm has turned against the Sun Soul philosophy?~ [OH78070] */
  IF ~~ THEN GOTO 355
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 228
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #78071 /* ~He was one of Selûne's most dedicated followers once.~ [OH78071] */
  IF ~~ THEN REPLY #78072 /* ~Those days appear to be well behind him.~ */ GOTO 356
  IF ~~ THEN REPLY #78073 /* ~Seems like you and he have something in common.~ */ GOTO 358
  IF ~~ THEN REPLY #78074 /* ~As were you. It is time you embraced the change.~ */ GOTO 357
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #78075 /* ~Better I should be struck blind than see Hammerhelm's fall.~ [OH78075] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 2
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 229
END

IF ~~ THEN BEGIN 357 // from: 355.2
  SAY #78076 /* ~You would have me renounce Selûne?~ [OH78076] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78077 /* ~Your brothers in the Sun Soul order have already renounced you.~ */ EXTERN ~VICONIJ~ 230
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78077 /* ~Your brothers in the Sun Soul order have already renounced you.~ */ GOTO 359
END

IF ~~ THEN BEGIN 358 // from: 355.1
  SAY #78078 /* ~How can you say that? You know my heart still belongs to Selûne.~ [OH78078] */
  IF ~~ THEN REPLY #78079 /* ~Your brothers in the Sun Soul order would say otherwise.~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0 357.1
  SAY #78080 /* ~They don't know the truth.~ [OH78080] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78081 /* ~Because you lied to them. At least Hammerhelm's treachery is honest.~ */ EXTERN ~VICONIJ~ 231
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78081 /* ~Because you lied to them. At least Hammerhelm's treachery is honest.~ */ GOTO 360
  IF ~~ THEN REPLY #78082 /* ~The truth is a slippery thing, Rasaad. The harder you hang onto it, the more surely it will escape your grasp.~ */ GOTO 360
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78083 /* ~Perhaps it's you who has yet to see the truth.~ */ EXTERN ~VICONIJ~ 232
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78083 /* ~Perhaps it's you who has yet to see the truth.~ */ GOTO 361
END

IF ~~ THEN BEGIN 360 // from: 359.2 359.1
  SAY #78084 /* ~What would you have me do, <CHARNAME>?~ [OH78084] */
  IF ~~ THEN REPLY #78085 /* ~What do you think Selûne would have you do in the face of this blasphemy?~ */ EXTERN ~OHRHHELM~ 3
  IF ~~ THEN REPLY #78086 /* ~Right now? Play along with our heretic friends. Later? Who knows?~ */ EXTERN ~OHRHHELM~ 2
  IF ~~ THEN REPLY #78087 /* ~Listen to Hammerhelm speak, for one thing.~ */ EXTERN ~OHRHHELM~ 2
  IF ~~ THEN REPLY #78088 /* ~Strike down the betrayer. Not for Selûne's sake, but your own.~ */ EXTERN ~OHRHHELM~ 126
END

IF ~~ THEN BEGIN 361 // from: 359.4
  SAY #78089 /* ~What are you saying, <CHARNAME>? ~ [OH78089] */
  IF ~~ THEN REPLY #78090 /* ~Despite your vows, you have resorted to lies and deceit to achieve your ends. That's good. But it's not Selûne's way.~ */ GOTO 363
  IF ~~ THEN REPLY #78091 /* ~Nothing more than you're thinking, I'm sure.~ */ EXTERN ~OHRHHELM~ 2
  IF ~~ THEN REPLY #78092 /* ~I'm saying there's power here, and it's yours to take, Rasaad. So take it.~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 361.2
  SAY #78093 /* ~You would have me turn my back on Selûne?~ [OH78093] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78094 /* ~I would have you do what best serves you, nothing more and nothing less.~ */ EXTERN ~OHRHHELM~ 2
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78094 /* ~I would have you do what best serves you, nothing more and nothing less.~ */ EXTERN ~OHRHHELM~ 3
  IF ~~ THEN REPLY #78095 /* ~At least consider your options, Rasaad.~ */ EXTERN ~OHRHHELM~ 2
  IF ~~ THEN REPLY #78096 /* ~Selûne offers you nothing but heartbreak and disappointment. You've served her long and well, and what have you gotten in return?~ */ GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.3 361.0
  SAY #78097 /* ~I... These things you say... The Moonmaiden is everything to me...~ [OH78097] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 2
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 233
END

IF ~~ THEN BEGIN 364 // from:
  SAY #78105 /* ~You are the one who has closed your eyes to the truth, Hammerhelm!~ [OH78105] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 5
END

IF ~~ THEN BEGIN 365 // from:
  SAY #78107 /* ~It is I, Hammerhelm. Though you will soon wish otherwise.~ [OH78107] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 6
END

IF ~~ THEN BEGIN 366 // from:
  SAY #78109 /* ~I could never turn against Selûne, Hammerhelm! Would that you could say the same.~ [OH78109] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 7
END

IF ~~ THEN BEGIN 367 // from:
  SAY #78123 /* ~You've all been misled, turned into heretics by Alorgoth!~ [OH78123] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 13
END

IF ~~ THEN BEGIN 368 // from:
  SAY #78130 /* ~Strike the heretic down!~ [OH78130] */
  IF ~~ THEN DO ~SetGlobal("OHR_ATTACK_HAMMER","OH4000",1)
ActionOverride("OHRHHELM",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 369 // from:
  SAY #78148 /* ~If it's not for them, what about me? I have turned against all I've known and loved to pursue the Twofold Truth. Would you turn me away now, Hammerhelm?~ [OH78148] */
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #78149 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 22
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY #78149 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 23
  IF ~~ THEN REPLY #78150 /* ~Forget it, Rasaad. You can do better than this pack of liars.~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 28
  IF ~~ THEN REPLY #78151 /* ~Enough of this deception, Rasaad. This man has betrayed everything you believe in. He must pay for that.~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 370 // from:
  SAY #78205 /* ~Hammerhelm! Forget them. I am Rasaad. You know me. I have turned against all I've known and loved to pursue the Twofold Truth. Would you turn me away now?~ [OH78205] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78206 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 22
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78206 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 23
  IF ~~ THEN REPLY #78207 /* ~Forget it, Rasaad. Better to run with a pack of dogs than this pack of liars.~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 25
  IF ~~ THEN REPLY #78208 /* ~Enough deception, Rasaad! This man has betrayed everything you believe in. He must pay for that!~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #78236 /* ~For Selûne!~ [OH78236] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 372 // from:
  SAY #78246 /* ~Hammerhelm!~ [OH78246] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 55
END

IF ~~ THEN BEGIN 373 // from:
  SAY #78251 /* ~I wish I could say it was good to see you, Hammerhelm. I'd rather have died than see you revealed for a heretic!~ [OH78251] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 61
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 248
END

IF ~~ THEN BEGIN 374 // from:
  SAY #78265 /* ~I... I didn't expect to see you here, Hammerhelm.~ [OH78265] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 60
END

IF ~~ THEN BEGIN 375 // from:
  SAY #78285 /* ~I cannot do it, Hammerhelm.~ [OH78285] */
  IF ~~ THEN REPLY #78286 /* ~How did I know that was what you were going to say? Oh right. I've met you.~ */ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #78287 /* ~I have sacrificed much seeking Alorgoth, <CHARNAME>. But I will not sacrifice my honor.~ [OH78287] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78288 /* ~I hear you. I just hope you don't end up sacrificing both our lives.~ */ EXTERN ~VICONIJ~ 251
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78288 /* ~I hear you. I just hope you don't end up sacrificing both our lives.~ */ EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 377 // from:
  SAY #78289 /* ~You would have me swear to listen to my brother's murderer, <CHARNAME>? No! I won't do it!~ [OH78289] */
  IF ~~ THEN REPLY #78290 /* ~Damn it, Rasaad, Hammerhelm was ready to deliver Darathon to us on a silver platter.~ */ GOTO 378
END

IF ~~ THEN BEGIN 378 // from: 377.0
  SAY #78291 /* ~And all it would cost is my honor. Too high a price by far.~ [OH78291] */
  IF ~~ THEN REPLY #78292 /* ~All right. I guess we do this the hard way.~ */ EXTERN ~OHRHHELM~ 26
END

IF ~~ THEN BEGIN 379 // from:
  SAY #78300 /* ~I am torn, <CHARNAME>. What say you?~ [OH78300] */
  IF ~~ THEN REPLY #78301 /* ~I say that regardless of your standing with the Sun Soul order, your heart belongs to Selûne.~ */ GOTO 308
  IF ~~ THEN REPLY #78302 /* ~You have sacrificed almost everything you have on this journey. You must press on.~ */ GOTO 380
  IF ~~ THEN REPLY #78303 /* ~What do I say? I say it's a wonder we haven't already slain this treacherous dog.~ */ EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 380 // from: 379.1
  SAY #78307 /* ~I am fortunate I still have you to counsel me. Very well, Hammerhelm. I would know more of your Twofold Truth. How do I proceed?~ [OH78307] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 78
END

IF ~~ THEN BEGIN 381 // from:
  SAY #78312 /* ~You think this is funny, <CHARNAME>? Remember who Darathon actually is.~ [OH78312] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 67
END

IF ~~ THEN BEGIN 382 // from:
  SAY #78323 /* ~Flee if you must, <CHARNAME>. I've come too far, lost too much to turn back now.~ [OH78323] */
  IF ~~ THEN GOTO 383
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 252
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #78324 /* ~HAMMERHELM!~ [OH78324] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 70
END

IF ~~ THEN BEGIN 384 // from:
  SAY #78326 /* ~You are?~ [OH78326] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 56
END

IF ~~ THEN BEGIN 385 // from:
  SAY #102675 /* ~Ignore them, Hammerhelm. You know me.~ [OH78334] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 78
END

IF ~~ THEN BEGIN 386 // from:
  SAY #78334 /* ~Ignore them, Hammerhelm. You know me. You know I have turned against all I've known and loved to pursue the Twofold Truth. Would you turn me away now?~ [OH78334] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78335 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ GOTO 388
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78335 /* ~I know I've an inappropriate tendency to make light of things, Hammerhelm, but you know Rasaad is another matter. Would you truly deny him the solace of the Twofold Goddess?~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 23
  IF ~~ THEN REPLY #78336 /* ~Forget it, Rasaad. Better to run with a pack of feral gerbils than this pack of liars.~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 25
  IF ~~ THEN REPLY #78337 /* ~No more, Rasaad! This man has betrayed everything you believe in. He must be made to pay!~ */ DO ~AddJournalEntry(85020,INFO)
~ EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 387 // from:
  SAY #78340 /* ~Hammerhelm? You are... one of these?~ [OH78340] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 75
END

IF ~~ THEN BEGIN 388 // from: 386.0
  SAY #78344 /* ~Hammerhelm is... was... one of the most respected elders of the Sun Soul order.~ [OH78344] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 78
END

IF ~~ THEN BEGIN 389 // from:
  SAY #78349 /* ~I would never—~ [OH78349] */
  IF ~~ THEN REPLY #78350 /* ~Turn away from the truth. And he senses the truth in the Twofold philosophy, like I do.~ */ EXTERN ~OHRHHELM~ 81
  IF ~~ THEN REPLY #78351 /* ~Blindly follow dogma. I know Rasaad has always appeared to be a resolute defender of the Selûnite sect, but he never surrendered his open mind.~ */ EXTERN ~OHRHHELM~ 90
  IF ~~ THEN REPLY #78352 /* ~Turn against Selûne. Unfortunately, asking questions about the Twofold Goddess turned his sect upon him. Just days ago, he was attacked by those who once called him teacher and friend.~ */ EXTERN ~OHRHHELM~ 79
  IF ~~ THEN REPLY #78353 /* ~Suffer a traitor and a heretic to Selûne to live!~ */ EXTERN ~OHRHHELM~ 104
END

IF ~~ THEN BEGIN 390 // from:
  SAY #78355 /* ~It... is as you say, Hammerhelm.~ [OH78355] */
  IF ~~ THEN REPLY #78356 /* ~Rasaad's made himself an enemy of both the Sun Soul and Dark Moon orders. He seeks refuge in service to Collus Darathon and the Twofold Goddess, like I do.~ */ EXTERN ~OHRHHELM~ 81
  IF ~~ THEN REPLY #78357 /* ~Of course it is! How else could it be?~ */ EXTERN ~OHRHHELM~ 80
  IF ~~ THEN REPLY #78358 /* ~Oh please, Rasaad. If you're going to deceive this moron, at least put a little effort into it. You couldn't convince a child to eat a sweet.~ */ EXTERN ~OHRHHELM~ 97
END

IF ~~ THEN BEGIN 391 // from:
  SAY #78360 /* ~I am fine, Hammerhelm. It's just—seeing you again, in this context... It's a lot to take in.~ [OH78360] */
  IF ~~ THEN REPLY #78361 /* ~He's had a rough few months, but he'll pull through. Now tell us more about how we get to see Collus Darathon.~ */ EXTERN ~OHRHHELM~ 82
END

IF ~~ THEN BEGIN 392 // from:
  SAY #78371 /* ~Ignore them. Their sense of humor is... idiosyncratic. ~ [OH78371] */
  IF ~~ THEN REPLY #78372 /* ~You are the picture of diplomacy, Rasaad. Most would call it ridiculous, and consider themselves charitable in doing so.~ */ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #78373 /* ~Tell us more of how we proceed from here.~ [OH78373] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 84
END

IF ~~ THEN BEGIN 394 // from:
  SAY #78379 /* ~She is attempting to make a joke. It doesn't come naturally to her.~ [OH78379] */
  IF ~~ THEN EXTERN ~VICONIJ~ 256
END

IF ~~ THEN BEGIN 395 // from:
  SAY #96203 /* ~Forgive her, please. She has yet to learn the value of silence. Now, let us talk more of these trials. I promise you I will endure anything if it brings me to Collus Darathon.~ [OH96203] */
  IF ~~ THEN EXTERN ~VICONIJ~ 257
END

IF ~~ THEN BEGIN 396 // from:
  SAY #78393 /* ~It was good to see you again, Hammerhelm.~ [OH78393] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 92
END

IF ~~ THEN BEGIN 397 // from:
  SAY #78405 /* ~Ignore them, Hammerhelm. My friend is blunt, but I value their counsel greatly.~ [OH78405] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 94
END

IF ~~ THEN BEGIN 398 // from:
  SAY #78424 /* ~I pray Selûne will forgive me my deception. I do only what's necessary to avenge my brother.~ [OH78424] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 101
END

IF ~~ THEN BEGIN 399 // from:
  SAY #78427 /* ~I believe Collus Darathon and Alorgoth are one and the same.~ [OH78427] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 102
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 262
END

IF ~~ THEN BEGIN 400 // from:
  SAY #78432 /* ~Have a care, <CHARNAME>. I am standing right here.~ [OH78432] */
  IF ~~ THEN REPLY #78433 /* ~My apologies, Rasaad.~ */ EXTERN ~OHRHHELM~ 106
  IF ~~ THEN REPLY #78434 /* ~Sorry, Rasaad. I call them like I see them.~ */ EXTERN ~OHRHHELM~ 106
END

IF ~~ THEN BEGIN 401 // from:
  SAY #78439 /* ~Forgive me, Hammerhelm. I have come here under false pretenses... If it makes a difference, I know Selûne will judge me harshly for my deception. But I do what I must to find my brother's murderer.~ [OH78439] */
  IF ~~ THEN EXTERN ~OHRHHELM~ 101
END

IF ~~ THEN BEGIN 402 // from:
  SAY #78449 /* ~There's more to this than you understand, Sixscar.~ [OH78449] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 2
END

IF ~~ THEN BEGIN 403 // from:
  SAY #78455 /* ~You think I would kill my friends? My students? You don't know me at all, <CHARNAME>.~ [OH78455] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 4
END

IF ~~ THEN BEGIN 404 // from:
  SAY #78458 /* ~Fallen brothers and sisters?~ [OH78458] */
  IF ~~ THEN GOTO 406
END

IF ~~ THEN BEGIN 405 // from:
  SAY #78463 /* ~I did what I thought needed to be done, <CHARNAME>. Selûne will judge me for my duplicity.~ [OH78463] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 5
END

IF ~~ THEN BEGIN 406 // from: 404.0
  SAY #78465 /* ~You accuse me of murder?~ [OH78465] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 6
END

IF ~~ THEN BEGIN 407 // from:
  SAY #78475 /* ~There is only one man I would have as a victim, and he's never set foot in any Sun Soul temple.~ [OH78475] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 0
END

IF ~~ THEN BEGIN 408 // from:
  SAY #78477 /* ~I have no need to lie, Ghell Rando. I know nothing of the crimes you accuse me of. Please, tell me what has happened.~ [OH78477] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 4
END

IF ~~ THEN BEGIN 409 // from:
  SAY #78484 /* ~Fallen servants—? Tell me, who has fallen?~ [OH78484] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 9
END

IF ~~ THEN BEGIN 410 // from:
  SAY #78492 /* ~Restrain yourself, <CHARNAME>, I beg you. I must know what has happened to my friends.~ [OH78492] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 10
END

IF ~~ THEN BEGIN 411 // from:
  SAY #78494 /* ~I tell you I am no murderer. What has happened in Athkatla?~ [OH78494] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 4
END

IF ~~ THEN BEGIN 412 // from:
  SAY #78500 /* ~You know me, Ghell Rando. You must know that whatever has occurred, I could have no part in it.~ [OH78500] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 0
END

IF ~~ THEN BEGIN 413 // from:
  SAY #78502 /* ~What—? That... that cannot be...~ [OH78502] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 0
END

IF ~~ THEN BEGIN 414 // from:
  SAY #78513 /* ~I appreciate your support, <CHARNAME>, but perhaps it would be best if you were to depart.~ [OH78513] */
  IF ~~ THEN REPLY #78514 /* ~I won't consider such a thing, certainly not until I know exactly what they accuse you of.~ */ EXTERN ~OHRGHELL~ 2
  IF ~~ THEN REPLY #78515 /* ~Obviously it would be best for me, but I'm damned if I'll let these murderous goons take you without a fight.~ */ GOTO 415
  IF ~~ THEN REPLY #78516 /* ~I'll see them departed first, one way or the other.~ */ GOTO 416
END

IF ~~ THEN BEGIN 415 // from: 414.1
  SAY #78517 /* ~If only they were just thugs looking for a brawl. I know these people, <CHARNAME>. I was a teacher to some of them, a friend to others. Though I am currently at odds with the Sun Soul order, the fact that they're here now, accusing me of such vile acts... I know not what has occurred in Athkatla, but my heart is heavy with the dread possibilities.~ [OH78517] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 17
END

IF ~~ THEN BEGIN 416 // from: 414.2
  SAY #78522 /* ~I fear this situation is getting out of control.~ [OH78522] */
  IF ~~ THEN REPLY #78523 /* ~You only just noticed that? Someone needs to meditate a little more—your focus leaves something to be desired.~ */ EXTERN ~OHRSSCAR~ 18
  IF ~~ THEN REPLY #78524 /* ~Don't worry. It'll be substantially more manageable once this rabble's been slain.~ */ EXTERN ~OHRSSCAR~ 14
END

IF ~~ THEN BEGIN 417 // from:
  SAY #78533 /* ~What? You say the Athkatla chapter of the order is dead?~ [OH78533] */
  IF ~~ THEN EXTERN ~OHRTREYA~ 3
END

IF ~~ THEN BEGIN 418 // from:
  SAY #78555 /* ~You would try to turn these loyal Sun Soul members to the Twofold Heresy, <CHARNAME>?~ [OH78555] */
  IF ~~ THEN REPLY #78556 /* ~For your sake, I would turn them from their current course by whatever means I'm able.~ */ EXTERN ~OHRSSCAR~ 23
  IF ~~ THEN REPLY #78557 /* ~I would turn water into wine to save my own skin.~ */ EXTERN ~OHRSSCAR~ 22
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #78558 /* ~I merely want them to consider alternative viewpoints.~ */ EXTERN ~OHRSSCAR~ 24
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY #78558 /* ~I merely want them to consider alternative viewpoints.~ */ EXTERN ~OHRSSCAR~ 65
END

IF ~~ THEN BEGIN 419 // from:
  SAY #78569 /* ~Take care, <CHARNAME>. Though they accuse me of heinous crimes, I still consider these people friends. I would not see them turned from their beliefs.~ [OH78569] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 5
END

IF ~~ THEN BEGIN 420 // from:
  SAY #78585 /* ~<CHARNAME>, please, be silent a moment. These people are my friends, in spite of everything that's gone between us. I would not see them torn apart for your amusement.~ [OH78585] */
  IF ~~ THEN GOTO 421
END

IF ~~ THEN BEGIN 421 // from: 420.0
  SAY #78586 /* ~Please, friends, I beg you—go on your way. I have no quarrel with you.~ [OH78586] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78587 /* ~You have much to ponder, I think.~ */ EXTERN ~OHRGHELL~ 6
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78587 /* ~You have much to ponder, I think.~ */ EXTERN ~OHRSSCAR~ 30
END

IF ~~ THEN BEGIN 422 // from:
  SAY #78596 /* ~If Sixscar is mad, it is grief that's made her so. And it's a grief I know too well.~ [OH78596] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 33
END

IF ~~ THEN BEGIN 423 // from:
  SAY #78624 /* ~What you say is true, Sixscar... and I spend my every waking moment haunted by the knowledge that I have failed our mistress.~ [OH78624] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 8
END

IF ~~ THEN BEGIN 424 // from:
  SAY #78628 /* ~Peace, <CHARNAME>. It's a fair question. The Twofold Heretics are a threat that must be dealt with. But that was not my sole—not even my primary—concern when I embarked upon this path.~ [OH78628] */
  IF ~~ THEN GOTO 425
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #78629 /* ~The heretics are led by a man named Collus Darathon.~ [OH78629] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 9
END

IF ~~ THEN BEGIN 426 // from:
  SAY #78631 /* ~I have reason to believe that Darathon is actually Alorgoth.~ [OH78631] */
  IF ~~ THEN REPLY #78632 /* ~"Reason" may be pushing it. But it's what he believes. ~ */ EXTERN ~OHRGHELL~ 7
END

IF ~~ THEN BEGIN 427 // from:
  SAY #78653 /* ~<CHARNAME>? What are you saying?~ [OH78653] */
  IF ~~ THEN REPLY #78654 /* ~Nothing but that the Twofold Trust has more to offer you than the Sun Soul order ever has—especially now that the Sun Soul offers nothing but swift and merciless execution.~ */ GOTO 428
  IF ~~ THEN REPLY #78655 /* ~Love is blind, and I've rarely met a man who saw less than you, Rasaad. The Dark Moon heresy—the Twofold Trust—that is your future now, but you refuse to accept the obvious.~ */ GOTO 429
  IF ~~ THEN REPLY #78656 /* ~The Dark Moon heretics offer you something the Sun Soul order never would—true power. You must take it.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 429.0 427.2 427.0
  SAY #78657 /* ~But... I have lived my life in service to the Moonmaiden...~ [OH78657] */
  IF ~~ THEN REPLY #78658 /* ~I'm sure she appreciates that—more than her followers do, at any rate. But when you decided Collus Darathon's death took precedence over everything else in your life, things changed.~ */ GOTO 430
  IF ~~ THEN REPLY #78659 /* ~You deserve better than a life of service to a cold, uncaring goddess, Rasaad. And you will have it, when Collus Darathon is dead and you lead the Twofold Trust.~ */ GOTO 436
  IF ~~ THEN REPLY #78660 /* ~You are a better liar than you give yourself credit for, Rasaad. A shame the one you choose to deceive is yourself.~ */ GOTO 431
END

IF ~~ THEN BEGIN 429 // from: 427.1
  SAY #78661 /* ~I... I could never turn my back on Selûne...~ [OH78661] */
  IF ~~ THEN REPLY #78662 /* ~You already have, when you chose a path of lies and deception.~ */ GOTO 428
END

IF ~~ THEN BEGIN 430 // from: 428.0
  SAY #78663 /* ~Alorgoth must pay for what he took from me.~ [OH78663] */
  IF ~~ THEN REPLY #78664 /* ~I am with you, Rasaad. Which is more than can be said for those you once called your brothers and sisters. You were once the greatest monk of the Sun Soul order—and look what it got you. You will be the greatest monk in the Twofold Trust—and once Collus Darathon, Alorgoth, whoever he is, is eliminated, you shall be in a position to lead them to great things.~ */ EXTERN ~OHRSSCAR~ 65
END

IF ~~ THEN BEGIN 431 // from: 428.2
  SAY #78665 /* ~You doubt my devotion?~ [OH78665] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78664 /* ~I am with you, Rasaad. Which is more than can be said for those you once called your brothers and sisters. You were once the greatest monk of the Sun Soul order—and look what it got you. You will be the greatest monk in the Twofold Trust—and once Collus Darathon, Alorgoth, whoever he is, is eliminated, you shall be in a position to lead them to great things.~ */ GOTO 432
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78664 /* ~I am with you, Rasaad. Which is more than can be said for those you once called your brothers and sisters. You were once the greatest monk of the Sun Soul order—and look what it got you. You will be the greatest monk in the Twofold Trust—and once Collus Darathon, Alorgoth, whoever he is, is eliminated, you shall be in a position to lead them to great things.~ */ GOTO 434
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #78667 /* ~So you believe I should become that which I pretended to be?~ [OH78667] */
  IF ~~ THEN REPLY #78668 /* ~I believe you should embrace that which you have become, Rasaad. You are a deceiver, but as you know, there are times deception can serve a higher purpose. ~ */ GOTO 437
  IF ~~ THEN REPLY #78669 /* ~There's a fine line between pretending to be something and actually being it, Rasaad. And I'm pretty sure you vaulted several feet over it when you decided to deceive your brothers.~ */ GOTO 434
  IF ~~ THEN REPLY #78670 /* ~You were the greatest of the Sun Soul order, Rasaad. The only deception you're capable of is self-deception.~ */ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.2
  SAY #78671 /* ~You are right, <CHARNAME>. I tried to tell myself otherwise, but I turned my back on Selûne when I chose to pursue the heretics' leader. I have doomed myself.~ [OH78671] */
  IF ~~ THEN REPLY #78672 /* ~Far from it, Rasaad. Deception is just a tool, one that can be used for good purpose as well as ill.~ */ GOTO 437
  IF ~~ THEN REPLY #78673 /* ~Doom may be slightly overstating things, Rasaad. There's a bright future ahead of you. Not the immediate future, unfortunately—that's looking to be a dark and bloody thing.~ */ EXTERN ~OHRSSCAR~ 47
  IF ~~ THEN REPLY #78674 /* ~We'll see, Rasaad. It may be that you have just taken the first step down a new and rewarding path.~ */ EXTERN ~OHRSSCAR~ 47
END

IF ~~ THEN BEGIN 434 // from: 432.1 431.1
  SAY #78676 /* ~Your words trouble me, <CHARNAME>.~ [OH78676] */
  IF ~~ THEN REPLY #78677 /* ~My words should trouble you less than your own actions, Rasaad. In your deeds, you are revealed. But take heart—your cause is a righteous one.~ */ GOTO 435
  IF ~~ THEN REPLY #78678 /* ~I hope they trouble you less than the Tears' blades. Words are more easily ignored.~ */ EXTERN ~OHRSSCAR~ 14
  IF ~~ THEN REPLY #78679 /* ~While your inaction troubles me. These dogs accuse you of treachery and murder. They must be brought to heel.~ */ EXTERN ~OHRSSCAR~ 65
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #78680 /* ~Alorgoth must pay for Gamaz's death.~ [OH78680] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 13
END

IF ~~ THEN BEGIN 436 // from: 428.1
  SAY #78681 /* ~You would have me usurp Alorgoth and take control of the heretics?~ [OH78681] */
  IF ~~ THEN REPLY #78682 /* ~Who better?~ */ EXTERN ~OHRSSCAR~ 65
  IF ~~ THEN REPLY #78683 /* ~There is much good the heretics could do—with a good man to lead them.~ */ EXTERN ~OHRSSCAR~ 65
  IF ~~ THEN REPLY #78684 /* ~Think of the power you would wield as the master of the Twofold Trust, Rasaad. How can you resist it?~ */ EXTERN ~OHRSSCAR~ 65
END

IF ~~ THEN BEGIN 437 // from: 433.0 432.0
  SAY #78685 /* ~But... Selûne...~ [OH78685] */
  IF ~~ THEN REPLY #78686 /* ~Selûne will forgive you your sins, Rasaad. You cannot afford to think of her, not while Alorgoth yet lives.~ */ EXTERN ~OHRSAHAN~ 13
  IF ~~ THEN REPLY #78687 /* ~What of her? She's a goddess. You think she cares one whit what you or any of these lackwits do in her name?~ */ EXTERN ~OHRSSCAR~ 65
  IF ~~ THEN REPLY #78688 /* ~Forget the Moonmaiden, Rasaad. You must focus your energies on the Twofold Trust.~ */ EXTERN ~OHRSSCAR~ 65
END

IF ~~ THEN BEGIN 438 // from:
  SAY #78694 /* ~I believe Alorgoth and Collus Darathon are the same man.~ [OH78694] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 7
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 272
END

IF ~~ THEN BEGIN 439 // from:
  SAY #78707 /* ~Think what you will of me, Sixscar, and know I hardly think better of myself. I will do what I must to avenge Gamaz.~ [OH78707] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 52
END

IF ~~ THEN BEGIN 440 // from:
  SAY #78710 /* ~There are few things I'll not do to avenge my brother—but killing another member of the Sun Soul order? Ghell Rando, Treya—you cannot believe I did this thing.~ [OH78710] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78711 /* ~You know this man. Look into your hearts—is he truly capable of the slaughter you describe?~ */ EXTERN ~OHRGHELL~ 8
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78711 /* ~You know this man. Look into your hearts—is he truly capable of the slaughter you describe?~ */ EXTERN ~OHRTREYA~ 7
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78712 /* ~Come on, guys. He's not as bad as that. He's not even close, really.~ */ EXTERN ~OHRSAHAN~ 14
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78712 /* ~Come on, guys. He's not as bad as that. He's not even close, really.~ */ EXTERN ~OHRTREYA~ 7
  IF ~~ THEN REPLY #78713 /* ~Who cares what these thuggish shrews believe?~ */ GOTO 441
END

IF ~~ THEN BEGIN 441 // from: 440.4
  SAY #78714 /* ~Take pity on them, <CHARNAME>. They've lost people they care about. It's a grief I know too well.~ [OH78714] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 14
END

IF ~~ THEN BEGIN 442 // from:
  SAY #78727 /* ~Take pity on them, <CHARNAME>. The pain of their loss is fresh. It's a grief I know too well.~ [OH78727] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 17
END

IF ~~ THEN BEGIN 443 // from:
  SAY #78732 /* ~Please, <CHARNAME>. This is not the time for threats or recrimination.~ [OH78732] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 17
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 274
END

IF ~~ THEN BEGIN 444 // from:
  SAY #78734 /* ~I would give anything to be able to do that, Sahana. But I cannot, not while Alorgoth yet lives.~ [OH78734] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 18
END

IF ~~ THEN BEGIN 445 // from:
  SAY #78740 /* ~Let it go, <CHARNAME>. She is a victim to her grief—a position I know all too well.~ [OH78740] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 9
END

IF ~~ THEN BEGIN 446 // from:
  SAY #78741 /* ~Be silent a moment, <CHARNAME>. I thank you for the item, Sahana. I will hold it close to my heart. Now it is time we went our separate ways.~ [OH78741] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 9
END

IF ~~ THEN BEGIN 447 // from:
  SAY #78750 /* ~I know the pain of your loss, Sixscar... I feel it myself. I beg you, leave now. I'd not see it compounded.~ [OH78750] */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 60
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 276
END

IF WEIGHT #20 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_TEARS_TALK","OH4010",1)
Global("OHR_TEARS_OUTCOME","GLOBAL",1)
~ THEN BEGIN 448 // from: 482.0
  SAY #78763 /* ~Am I doing the right thing, <CHARNAME>? With every step I take away from the Sun Soul, more of my former relations are poisoned. How can petty vengeance justify the toll exacted on those I know and love?~ [OH78763] */
  IF ~~ THEN REPLY #78764 /* ~You must be driven by more than anger and revenge, Rasaad. Everything you have done may yet be in service to a higher purpose.~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ GOTO 449
  IF ~~ THEN REPLY #78765 /* ~You're not the one spilling the blood, Rasaad. Self-doubt is self-indulgence—focus on your enemies.~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ GOTO 453
  IF ~~ THEN REPLY #78766 /* ~The death of Alorgoth will justify many things.~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ EXIT
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #78767 /* ~What purpose is that?~ [OH78767] */
  IF ~~ THEN REPLY #78768 /* ~To destroy the Dark Moon heresy and restore Selûne to her proper place.~ */ GOTO 450
  IF ~~ THEN REPLY #78769 /* ~When Darathon is killed, you must take your place at the head of the Twofold Trust.~ */ GOTO 455
  IF ~~ THEN REPLY #78770 /* ~If slaughtering Alorgoth and his Twofold Heretics isn't purpose enough for you, then I really don't know what is.~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #78771 /* ~Dare I even hope for such a thing at this point?~ [OH78771] */
  IF ~~ THEN REPLY #78772 /* ~It's possible the Sun Soul order will never forgive you your moral lapses. But the Moonmaiden knows your heart. And the gods can be very forgiving to those who destroy their enemies.~ */ GOTO 451
  IF ~~ THEN REPLY #78773 /* ~I would. Hope is a cheap and convenient alternative to certainty.~ */ GOTO 452
  IF ~~ THEN REPLY #78774 /* ~Hope for it? Stop cringing and stand tall, Rasaad. You're a man, not a mouse. You don't hope for anything: You make it happen. Now get out of my sight. Your moaning sickens me.~ */ EXIT
END

IF ~~ THEN BEGIN 451 // from: 450.0
  SAY #78775 /* ~I pray you're right, <CHARNAME>.~ [OH78775] */
  IF ~~ THEN REPLY #78776 /* ~Selûne hears those prayers, Rasaad. Trust me.~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 453.1 450.1
  SAY #78777 /* ~No matter how dire the circumstances, you always make me smile, <CHARNAME>. ~ [OH78777] */
  IF ~~ THEN REPLY #78778 /* ~That's what I'm here for.~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 455.1 448.1
  SAY #78779 /* ~You cut to the heart of the matter. Would that I had your clarity.~ [OH78779] */
  IF ~~ THEN REPLY #78780 /* ~You're not on this journey alone. I'm here beside you. If you need my clarity, you need only ask for it. ~ */ GOTO 454
  IF ~~ THEN REPLY #78781 /* ~I fear you're too intelligent to ever enjoy the sundry delights of moral clarity, Rasaad. Perhaps a few more blows to the head will help you with that.~ */ GOTO 452
  IF ~~ THEN REPLY #78782 /* ~Oh please, Rasaad. Spare me your self-involved whimpering. Where there are no barriers, you build your own, just so you've something to whine about. Go now, before your feeble mewling forces me to teach you a lesson in fortitude.~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.0
  SAY #78783 /* ~I miss my friend and students and mourn the passing of those who are dead, but the distance between me and my former life grows larger with each passing second. Once the order gave me stability and purpose, but when I feel lost now, it is you I turn to. You'll never know how grateful I am to have you stand beside me.~ [OH78783] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 278
END

IF ~~ THEN BEGIN 455 // from: 449.1
  SAY #78784 /* ~You would have me turn against Selûne?~ [OH78784] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78785 /* ~You turned against the order when you opted to use deception to achieve your ends. But the order is not Selûne—I believe the Twofold Truth offers you a way to enjoy her grace once again, outside the Sun Soul order's pointlessly stifling restrictions.~ */ GOTO 464
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78785 /* ~You turned against the order when you opted to use deception to achieve your ends. But the order is not Selûne—I believe the Twofold Truth offers you a way to enjoy her grace once again, outside the Sun Soul order's pointlessly stifling restrictions.~ */ GOTO 453
  IF ~~ THEN REPLY #78786 /* ~You may not have noticed this, but the Sun Soul order's spent the last month doing everything in its power to kill you.~ */ GOTO 467
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78787 /* ~The Twofold Truth encompasses the Selûnite teachings, and the Dark Moon's as well. It offers another way to commune with the Moonmaiden—one more accommodating to the needs of the real world.~ */ GOTO 463
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78787 /* ~The Twofold Truth encompasses the Selûnite teachings, and the Dark Moon's as well. It offers another way to commune with the Moonmaiden—one more accommodating to the needs of the real world.~ */ EXTERN ~VICONIJ~ 279
END

IF ~~ THEN BEGIN 456 // from:
  SAY #96221 /* ~I am not satisfied. You said the Twofold might offer a way back into Selûne's grace.~ [OH96221] */
  IF ~~ THEN REPLY #96222 /* ~I merely sought to open your eyes to possibilities you may not have considered.~ */ EXTERN ~VICONIJ~ 283
  IF ~~ THEN REPLY #96223 /* ~And so it might.~ */ GOTO 457
  IF ~~ THEN REPLY #96224 /* ~I do not know that ISN'T true.~ */ EXTERN ~VICONIJ~ 282
END

IF ~~ THEN BEGIN 457 // from: 456.1
  SAY #96225 /* ~But you do not believe it to be true.~ [OH96225] */
  IF ~~ THEN REPLY #96226 /* ~I don't know enough of it to know what I believe yet.~ */ GOTO 458
  IF ~~ THEN REPLY #96227 /* ~I do not. It's a nice idea, but I've seen little evidence to support it yet. Still, I advise keeping an open mind, in this and all things.~ */ EXTERN ~VICONIJ~ 281
  IF ~~ THEN REPLY #96228 /* ~What I believe is of little consequence to the gods.~ */ GOTO 458
END

IF ~~ THEN BEGIN 458 // from: 457.2 457.0
  SAY #96229 /* ~I know what I believe.~ [OH96229] */
  IF ~~ THEN GOTO 463
END

IF ~~ THEN BEGIN 459 // from:
  SAY #96231 /* ~Nor I from mine.~ [OH96231] */
  IF ~~ THEN GOTO 463
END

IF ~~ THEN BEGIN 460 // from:
  SAY #96238 /* ~I understand. And I hope you will understand that I cannot turn back now.~ [OH96238] */
  IF ~~ THEN GOTO 461
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #96239 /* ~Farewell, <CHARNAME>. I hope we will meet again, but if we do not, may Selûne's light shine always upon you.~ [OH96239] */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR2000",1673,1503,S)
~ EXIT
END

IF ~~ THEN BEGIN 462 // from:
  SAY #96256 /* ~Though it is not something I admit happily, the drow is right.~ [OH96256] */
  IF ~~ THEN GOTO 463
END

IF ~~ THEN BEGIN 463 // from: 462.0 459.0 458.0 455.3
  SAY #78788 /* ~Selûne's guidance is sound.~ [OH78788] */
  IF ~~ THEN REPLY #78789 /* ~I will say nothing against Selûne—just those who claim to speak for her. Like all living creatures, she is fluid and changing. Why then are her servants so inflexible? It will not bend, so it breaks, and its former adherents flock to the Twofold Truth.~ */ GOTO 468
  IF ~~ THEN REPLY #78790 /* ~Precisely. Selûne offers guidance—not commandments. By demanding blind obedience to unreasonable restrictions, the Sun Soul order drives a wedge between the goddess and those who would know her grace. With the right man in control of the things, the Twofold Truth could bridge that gap.~ */ GOTO 464
END

IF ~~ THEN BEGIN 464 // from: 468.4 468.2 468.0 463.1 455.0
  SAY #78791 /* ~I know you speak heresy, yet... there's some truth in your words I cannot deny.~ [OH78791] */
  IF ~~ THEN REPLY #78792 /* ~Don't make your decision now—we've still got Alorgoth to kill. All I ask is that you consider the possibilities. The Twofold Trust can be a tool for good, in the hands of the right man.~ */ GOTO 465
END

IF ~~ THEN BEGIN 465 // from: 468.3 468.1 466.0 464.0
  SAY #78793 /* ~You have given me much to consider, <CHARNAME>. I will think on it.~ [OH78793] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 466 // from:
  SAY #78794 /* ~The Dark Moon heresy is an atrocity that must be destroyed!~ [OH78794] */
  IF ~~ THEN REPLY #78795 /* ~That so many would turn from the Dark Moon and Sun Soul orders is proof the Twofold Trust offers something those sad and dying orders do not. The heretics' leader is a monster and must be destroyed—but the heretics themselves are just like you, men and women seeking the truth. The right man could help them find that truth.~ */ GOTO 465
END

IF ~~ THEN BEGIN 467 // from: 455.2
  SAY #78796 /* ~That is the price I pay for debasing myself with deception.~ [OH78796] */
  IF ~~ THEN REPLY #78797 /* ~And a ridiculous price it is. ~ */ GOTO 468
END

IF ~~ THEN BEGIN 468 // from: 467.0 463.0
  SAY #78798 /* ~You criticize principles that have guided the order for hundreds of years.~ [OH78798] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #78799 /* ~And I've little doubt those principles were effective and useful in those other centuries. But this is a new day. That so many would turn to the Twofold Trust is proof it offers something the Selûnites and Sharrans do not. The heretics' leader is a monster and must be destroyed—but the heretics themselves are just like you, men and women seeking the truth. The right man could help them find that truth.~ */ GOTO 464
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #78799 /* ~And I've little doubt those principles were effective and useful in those other centuries. But this is a new day. That so many would turn to the Twofold Trust is proof it offers something the Selûnites and Sharrans do not. The heretics' leader is a monster and must be destroyed—but the heretics themselves are just like you, men and women seeking the truth. The right man could help them find that truth.~ */ GOTO 465
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #78800 /* ~A new day dawns, Rasaad, and it is yours for the taking. Collus Darathon's death will not change the fact that dozens, perhaps hundreds, of your fellow Selûnites have turned from their sect. There's a problem there. You have it in you to offer a workable solution.~ */ GOTO 464
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #78800 /* ~A new day dawns, Rasaad, and it is yours for the taking. Collus Darathon's death will not change the fact that dozens, perhaps hundreds, of your fellow Selûnites have turned from their sect. There's a problem there. You have it in you to offer a workable solution.~ */ GOTO 465
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #78801 /* ~They stink with the mold of ages past. Renounce the order as your sect has renounced you, and be reborn a free man.~ */ GOTO 464
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #78801 /* ~They stink with the mold of ages past. Renounce the order as your sect has renounced you, and be reborn a free man.~ */ GOTO 469
END

IF ~~ THEN BEGIN 469 // from: 468.5
  SAY #78802 /* ~What you call free I see as a life burdened by the chains of ignorance.~ [OH78802] */
  IF ~~ THEN REPLY #78803 /* ~I hope when this is over, you will see things as they truly are.~ */ EXIT
  IF ~~ THEN REPLY #78804 /* ~I'd rather carry metaphorical chains than be cut by real swords, Rasaad. The Sun Soul order is done with you. I hope you can find the strength to be done with it before it's too late.~ */ EXIT
  IF ~~ THEN REPLY #78805 /* ~You already carry the weight of those chains, Rasaad. A shame you're unwilling to see them.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Dead("OHRSSCAR")
Global("OHR_TEARS_OUTCOME","GLOBAL",2)
Global("OHR_TEARS_TALK","OH4010",1)
~ THEN BEGIN 470 // from:
  SAY #78806 /* ~I begged you, Sixscar. I begged you not to let it come to this.~ [OH78806] */
  IF ~~ THEN DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ EXTERN ~OHRSAHAN~ 20
END

IF ~~ THEN BEGIN 471 // from:
  SAY #78809 /* ~There is nothing to forgive, Sahana. I know too well what drove her to this. The same grief, the same... madness?... has put me on my current path.~ [OH78809] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 21
END

IF ~~ THEN BEGIN 472 // from:
  SAY #78814 /* ~You know I cannot, <CHARNAME>. Not until my brother is avenged.~ [OH78814] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 11
END

IF ~~ THEN BEGIN 473 // from:
  SAY #78819 /* ~I value their advice, for they see things in ways I cannot.~ [OH78819] */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 24
END

IF ~~ THEN BEGIN 474 // from:
  SAY #78821 /* ~Ideally, I would never have needed their unique perspective. But ideally, my brother would still be alive.~ [OH78821] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 10
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 293
END

IF ~~ THEN BEGIN 475 // from:
  SAY #78822 /* ~Please, <CHARNAME>. This is not the time.~ [OH78822] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 10
END

IF ~~ THEN BEGIN 476 // from:
  SAY #78827 /* ~I recognize my folly but am helpless to avoid it. My brother must be avenged by whatever means necessary.~ [OH78827] */
  IF ~~ THEN EXTERN ~OHRTREYA~ 13
END

IF ~~ THEN BEGIN 477 // from:
  SAY #78829 /* ~My heart breaks to think of your losses, Treya. But I cannot turn back now.~ [OH78829] */
  IF ~~ THEN EXTERN ~OHRTREYA~ 14
END

IF ~~ THEN BEGIN 478 // from:
  SAY #78832 /* ~I fear regret is something none of us will hunger for in the coming days.~ [OH78832] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 13
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 294
END

IF ~~ THEN BEGIN 479 // from:
  SAY #78835 /* ~I would never take up arms against the Sun Soul order.~ [OH78835] */
  IF ~~ THEN REPLY #78836 /* ~In taking control of the Trust, you will lead them back to Selûne's light.~ */ EXTERN ~OHRTREYA~ 15
  IF ~~ THEN REPLY #78837 /* ~Would that they could say the same about you.~ */ EXTERN ~OHRGHELL~ 13
  IF ~~ THEN REPLY #78838 /* ~Unless they raised their arms against you first, of course.~ */ EXTERN ~OHRGHELL~ 13
END

IF ~~ THEN BEGIN 480 // from:
  SAY #86702 /* ~I recognize my folly, but I am helpless to avoid it. My brother must be avenged by whatever means necessary.~ [OH86702] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 19
END

IF ~~ THEN BEGIN 481 // from:
  SAY #86704 /* ~My heart breaks to think of your losses, Ghell. But I cannot turn back now.~ [OH86704] */
  IF ~~ THEN EXTERN ~OHRGHELL~ 20
END

IF ~~ THEN BEGIN 482 // from:
  SAY #86707 /* ~Thank you, Ghell. Farewell.~ [OH86707] */
  IF ~~ THEN DO ~ActionOverride("OHRGHELL",EscapeArea())
~ GOTO 448
END

IF ~~ THEN BEGIN 483 // from:
  SAY #86709 /* ~I would never take up arms against the Sun Soul order.~ [OH86709] */
  IF ~~ THEN REPLY #86710 /* ~In taking control of the Trust, you will lead them back to Selûne's light.~ */ EXTERN ~OHRGHELL~ 22
  IF ~~ THEN REPLY #86712 /* ~Would that they could say the same about you.~ */ EXTERN ~OHRGHELL~ 13
  IF ~~ THEN REPLY #86713 /* ~Unless they raised their arms against you first, of course.~ */ EXTERN ~OHRGHELL~ 13
END

IF ~~ THEN BEGIN 484 // from:
  SAY #86722 /* ~It is, Ghell.~ */
  IF ~~ THEN EXTERN ~OHRGHELL~ 25
END

IF ~~ THEN BEGIN 485 // from:
  SAY #86730 /* ~I recognize my folly, but I cannot avoid it. My brother must be avenged, whatever the cost. My heart breaks to think of your losses, Treya. But I cannot turn back now.~ [OH86730] */
  IF ~~ THEN EXTERN ~OHRTREYA~ 17
END

IF ~~ THEN BEGIN 486 // from:
  SAY #86734 /* ~I would never take up arms against the Sun Soul order.~ [OH86734] */
  IF ~~ THEN REPLY #86735 /* ~In taking control of the Trust, you will lead them back to Selûne's light.~ */ EXTERN ~OHRTREYA~ 19
  IF ~~ THEN REPLY #86736 /* ~Would that they could say the same about you.~ */ EXTERN ~OHRTREYA~ 20
  IF ~~ THEN REPLY #86737 /* ~Unless they raised their arms against you first, of course.~ */ EXTERN ~OHRTREYA~ 20
END

IF ~~ THEN BEGIN 487 // from:
  SAY #86746 /* ~It's true, Treya.~ [OH86746] */
  IF ~~ THEN EXTERN ~OHRTREYA~ 23
END

IF WEIGHT #22 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Dead("OHRSSCAR")
Dead("OHRTREYA")
Dead("OHRGHELL")
Dead("OHRSAHAN")
Global("OHR_TEARS_TALK","OH4010",1)
Global("OHR_TEARS_OUTCOME","GLOBAL",4)
~ THEN BEGIN 488 // from:
  SAY #86929 /* ~What have I come to, <CHARNAME>?~ [OH86929] */
  IF ~~ THEN REPLY #86930 /* ~What do you mean?~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ GOTO 489
  IF ~~ THEN REPLY #86931 /* ~I'm not certain I understand the question.~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ GOTO 489
  IF ~~ THEN REPLY #86932 /* ~I know not, and I'm not of a mind to find out at the moment.~ */ DO ~SetGlobal("OHR_TEARS_TALK","OH4010",2)
~ EXIT
END

IF ~~ THEN BEGIN 489 // from: 488.1 488.0
  SAY #86933 /* ~The Tears of Selûne—they are good people. What does it say when all who I once called friend turn on me?~ [OH86933] */
  IF ~~ THEN REPLY #86934 /* ~Not all, Rasaad.~ */ GOTO 491
  IF ~~ THEN REPLY #86935 /* ~In this case, I'm pretty sure it says someone set you up to take the fall for mass murder.~ */ GOTO 490
  IF ~~ THEN REPLY #86936 /* ~I don't care what it says. Nor should you.~ */ GOTO 493
END

IF ~~ THEN BEGIN 490 // from: 489.1
  SAY #86937 /* ~I want to believe you, <CHARNAME>. But I fear there is more to it than that.~ [OH86937] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 491 // from: 489.0
  SAY #86938 /* ~Ah! Forgive me, my friend; I meant no offense.~ [OH86938] */
  IF ~~ THEN REPLY #86939 /* ~And I will take none—as you should take none from the Tears' willful blindness. They don't want the truth, just someone to blame.~ */ GOTO 492
  IF ~~ THEN REPLY #86940 /* ~I'll get over it. You will too.~ */ GOTO 494
  IF ~~ THEN REPLY #86941 /* ~Forget it. I have.~ */ GOTO 495
END

IF ~~ THEN BEGIN 492 // from: 491.0
  SAY #86942 /* ~I know from hard experience that you are right. But that rational understanding makes it no easier to deal with.~ [OH86942] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 493 // from: 489.2
  SAY #86943 /* ~Would that I had your capacity for apathy, <CHARNAME>. My life would be much simpler.~ [OH86943] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 494 // from: 491.1
  SAY #86944 /* ~I wish I was as sure of that as you seem to be.~ [OH86944] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 495 // from: 491.2
  SAY #86945 /* ~I wish I could simply—~ [OH86945] */
  IF ~~ THEN REPLY #86946 /* ~I said forget it, Rasaad. So FORGET IT.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_TEMPLE_TALK","LOCALS",1)
AreaCheck("OH4100")
~ THEN BEGIN 496 // from:
  SAY #78847 /* ~The heretics' temple. How best do we approach this, <CHARNAME>?~ [OH78847] */
  IF ~~ THEN REPLY #78848 /* ~There's only one fitting way to approach these heretics—directly.~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",2)
AddJournalEntry(85034,QUEST)
~ EXIT
  IF ~~ THEN REPLY #78849 /* ~Approach it? Look at that thing. We'd best run screaming in the opposite direction.~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",2)
AddJournalEntry(85034,QUEST)
~ EXIT
  IF ~~ THEN REPLY #78850 /* ~To know the truth of the Dark Moon heresy, it would be best if they believed we were followers of it.~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",2)
AddJournalEntry(85034,QUEST)
~ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_TEMPLE_TALK","LOCALS",3)
AreaCheck("OH4100")
See("OHRHERAT")
~ THEN BEGIN 497 // from:
  SAY #78853 /* ~That woman is clearly in distress. We must help her.~ [OH78853] */
  IF ~~ THEN REPLY #78854 /* ~She could obviously use a hand.~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",4)
~ GOTO 501
  IF ~~ THEN REPLY #78855 /* ~Great, we'll help her. Who's going to help us?~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",4)
~ GOTO 500
  IF ~~ THEN REPLY #78856 /* ~Let her go, Rasaad. We've other matters to attend to.~ */ DO ~SetGlobal("OHR_TEMPLE_TALK","LOCALS",4)
~ GOTO 498
END

IF ~~ THEN BEGIN 498 // from: 497.2
  SAY #78857 /* ~But—~ [OH78857] */
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #78858 /* ~Your brother isn't going to avenge himself. Collus Darathon awaits us in the temple.~ */ GOTO 499
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY #78858 /* ~Your brother isn't going to avenge himself. Collus Darathon awaits us in the temple.~ */ GOTO 501
END

IF ~~ THEN BEGIN 499 // from: 502.0 498.0
  SAY #78859 /* ~Very well. ~ [OH78859] */
  IF ~~ THEN DO ~ActionOverride("OHRHERAT",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 500 // from: 497.1
  SAY #78860 /* ~Selûne will guide our—~ [OH78860] */
  IF ~~ THEN REPLY #78861 /* ~Yeah, right, whatever. You there! I am <CHARNAME>. This is Rasaad. We were just on our way to the temple, and we couldn't help but notice someone had beat the living dung out of you. What happened to you?~ */ EXTERN ~OHRHERAT~ 1
END

IF ~~ THEN BEGIN 501 // from: 498.1 497.0
  SAY #78862 /* ~Ho there! I am Rasaad, and this is my friend <CHARNAME>. Can we be of assistance?~ [OH78862] */
  IF ~~ THEN EXTERN ~OHRHERAT~ 0
END

IF ~~ THEN BEGIN 502 // from:
  SAY #78857 /* ~But—~ [OH78857] */
  IF ~~ THEN REPLY #95160 /* ~Your brother isn't going to avenge himself, Rasaad.~ */ GOTO 499
END

IF ~~ THEN BEGIN 503 // from:
  SAY #78874 /* ~Neither is acceptable.~ [OH78874] */
  IF ~~ THEN EXTERN ~OHRHERAT~ 9
END

IF ~~ THEN BEGIN 504 // from:
  SAY #78883 /* ~What manner of barbarism is Alor—Collus Darathon presiding over here?~ [OH78883] */
  IF ~~ THEN EXTERN ~OHRHERAT~ 4
END

IF ~~ THEN BEGIN 505 // from:
  SAY #78889 /* ~This is an atrocity. The heretics must be destroyed.~ [OH78889] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78890 /* ~Agreed. Once, I thought the Twofold Trust might offer a valid path to enlightenment. No more.~ */ EXTERN ~VICONIJ~ 204
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #78890 /* ~Agreed. Once, I thought the Twofold Trust might offer a valid path to enlightenment. No more.~ */ EXTERN ~OHRHERAT~ 11
  IF ~~ THEN REPLY #78891 /* ~The heretics? No. Just their leader.~ */ EXTERN ~OHRHERAT~ 6
  IF ~~ THEN REPLY #78892 /* ~The heretics must be led. Shown the error of their ways by a proper leader.~ */ EXTERN ~OHRHERAT~ 7
END

IF ~~ THEN BEGIN 506 // from:
  SAY #78905 /* ~I know you're trying to lighten the mood, <CHARNAME>, but this really is not the time.~ [OH78905] */
  IF ~  Global("OHR_PAIN_ROOM","OH4100",1)
~ THEN REPLY #78906 /* ~You'd rather explore the Room of Pain than spend time with this charming young lady? I just don't know about you, Rasaad.~ */ DO ~ActionOverride("OHRHERAT",EscapeArea())
~ EXIT
  IF ~  Global("OHR_PAIN_ROOM","OH4100",0)
~ THEN DO ~ActionOverride("OHRHERAT",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 507 // from:
  SAY #79094 /* ~Selûne and Shar—or as we now know her, the Twofold Goddess—were created from the primordial essence of the universe. Sel—the Twofold Goddess created the heavens and the worlds, blessing them with light and shadow, and all was right. Then, somehow, people came to embrace a falsehood—that the twin aspects of the goddess were in fact two separate goddesses...~ [OH79094] */
  IF ~~ THEN EXTERN ~OHRHGUA2~ 19
END

IF ~~ THEN BEGIN 508 // from:
  SAY #79096 /* ~As you say. Thankfully, Collus Darathon discovered the truth and spread the word to all the followers of the splintered goddess. Now, at last, we who worshipped Selûne—or Shar—have an opportunity to serve the true goddess, the Twofold.~ [OH79096] */
  IF ~~ THEN EXTERN ~OHRHGUA2~ 22
END

IF ~~ THEN BEGIN 509 // from:
  SAY #79127 /* ~This sort of torture has no place in anything associated with the Sun Soul. I beg you, stop this madness!~ [OH79127] */
  IF ~~ THEN EXTERN ~OHRBSSM2~ 3
END

IF ~~ THEN BEGIN 510 // from:
  SAY #79163 /* ~What new madness has Alorgoth devised?~ [OH79163] */
  IF ~~ THEN EXTERN ~OHRSLARA~ 0
END

IF ~~ THEN BEGIN 511 // from:
  SAY #79170 /* ~Such a waste. These heretics have no sense of the sanctity of life.~ [OH79170] */
  IF ~~ THEN EXTERN ~OHRSLARA~ 2
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 229
END

IF ~~ THEN BEGIN 512 // from:
  SAY #79355 /* ~Oh yes. I know Alorgoth.~ [OH79355] */
  IF ~~ THEN EXTERN ~OHRLEMZE~ 24
END

IF ~~ THEN BEGIN 513 // from:
  SAY #79412 /* ~The Dark Moon leader has many schemes.~ [OH79412] */
  IF ~~ THEN EXTERN ~OHRLEMZE~ 40
END

IF ~~ THEN BEGIN 514 // from:
  SAY #79470 /* ~It is him! Alorgoth is here!~ [OH79470] */
  IF ~~ THEN REPLY #79471 /* ~Alorgoth, or just Collus?~ */ GOTO 515
  IF ~~ THEN REPLY #79472 /* ~Patience, Rasaad. Wait for the right moment.~ */ EXTERN ~OHRCOLLU~ 1
  IF ~~ THEN REPLY #79473 /* ~Then do something about it.~ */ GOTO 516
END

IF ~~ THEN BEGIN 515 // from: 514.0
  SAY #79474 /* ~I tell you, <CHARNAME>, they are the same man!~ [OH79474] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 1
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 312
END

IF ~~ THEN BEGIN 516 // from: 522.0 514.2
  SAY #79479 /* ~Alorgoth! Face me now!~ [OH79479] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 2
END

IF ~~ THEN BEGIN 517 // from:
  SAY #79481 /* ~Deceiver! I'm not fooled by your tricks!~ [OH79481] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79482 /* ~Are you sure it's a trick, Rasaad?~ */ EXTERN ~VICONIJ~ 207
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79482 /* ~Are you sure it's a trick, Rasaad?~ */ EXTERN ~OHRCOLLU~ 3
  IF ~~ THEN REPLY #79483 /* ~Unlike, you know, every one who's ever met both Alorgoth and Darathon. But hey, they're just everyone who's ever met both Alorgoth and Darathon. Give them no heed.~ */ EXTERN ~OHRCOLLU~ 3
  IF ~~ THEN REPLY #79484 /* ~Alorgoth or Darathon, it matters not. Whatever your name, your death is at hand!~ */ EXTERN ~OHRCOLLU~ 5
END

IF ~~ THEN BEGIN 518 // from:
  SAY #79491 /* ~Flee with vengeance at hand? You know me better than that, <CHARNAME>.~ [OH79491] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 5
END

IF ~~ THEN BEGIN 519 // from:
  SAY #79493 /* ~No! He mustn't escape!~ [OH79493] */
  IF ~~ THEN REPLY #79494 /* ~We've got other things to worry about right now, Rasaad.~ */ EXTERN ~OHRHERET~ 0
END

IF ~~ THEN BEGIN 520 // from:
  SAY #79504 /* ~The Twofold Trust, apparently.~ [OH79504] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 8
END

IF ~~ THEN BEGIN 521 // from:
  SAY #79505 /* ~We've little choice at this point, <CHARNAME>. ~ [OH79505] */
  IF ~~ THEN REPLY #79506 /* ~If you say so.~ */ EXTERN ~OHRCOLLU~ 7
  IF ~~ THEN REPLY #79507 /* ~You're getting a little too comfortable with deception, Rasaad. If I were you, I'd kill Collus Darathon now and be done with this Twofold nonsense once and for all.~ */ GOTO 522
END

IF ~~ THEN BEGIN 522 // from: 521.1
  SAY #79508 /* ~Your words sting, but I cannot deny their truth.~ [OH79508] */
  IF ~~ THEN GOTO 516
END

IF WEIGHT #25 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("ohr_collus_leaves","oh4101",1)
!InMyArea("ohrcollu")
~ THEN BEGIN 523 // from:
  SAY #79513 /* ~I should have struck when I had the chance.~ [OH79513] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79514 /* ~Better opportunities will present themselves, Rasaad.~ */ DO ~SetGlobal("ohr_collus_leaves","oh4101",2)
~ EXTERN ~VICONIJ~ 314
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79514 /* ~Better opportunities will present themselves, Rasaad.~ */ DO ~SetGlobal("ohr_collus_leaves","oh4101",2)
~ EXIT
  IF ~~ THEN REPLY #79515 /* ~Well sure, you say that now, but where was that initiative a minute ago?~ */ DO ~SetGlobal("ohr_collus_leaves","oh4101",2)
~ GOTO 524
  IF ~~ THEN REPLY #79516 /* ~You're right. You should have.~ */ DO ~SetGlobal("ohr_collus_leaves","oh4101",2)
~ EXIT
END

IF ~~ THEN BEGIN 524 // from: 523.2
  SAY #79517 /* ~I'll bear those words in mind next time you advise restraint, <CHARNAME>.~ [OH79517] */
  IF ~~ THEN REPLY #79518 /* ~All the wisdom I've blessed you with, and this is what you choose to remember. I don't know why I bother with you, Rasaad, I really don't.~ */ GOTO 525
  IF ~~ THEN REPLY #79519 /* ~Restraint? Me? I think you've got the wrong <PRO_GIRLBOY>, Rasaad.~ */ EXIT
  IF ~~ THEN REPLY #79520 /* ~Restraint is for cowards.~ */ EXIT
END

IF ~~ THEN BEGIN 525 // from: 524.0
  SAY #79521 /* ~It must be my winning personality.~ [OH79521] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 526 // from:
  SAY #96260 /* ~Excuse me, my friend. I must prepare myself for the tests.~ [OH96260] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 316
END

IF ~~ THEN BEGIN 527 // from:
  SAY #96261 /* ~I must prepare for the tests. Excuse me.~ [OH96261] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 319
END

IF ~~ THEN BEGIN 528 // from:
  SAY #96294 /* ~<CHARNAME>? Where are you going?~ [OH96294] */
  IF ~~ THEN REPLY #96295 /* ~Out of this place. Come with me.~ */ GOTO 529
  IF ~~ THEN REPLY #96296 /* ~Viconia's convinced me this is a fool's errand, Rasaad. We're leaving. Come with us, please.~ */ GOTO 529
  IF ~~ THEN REPLY #96297 /* ~I've indulged this silliness long enough. We will leave this place now.~ */ GOTO 529
END

IF ~~ THEN BEGIN 529 // from: 528.2 528.1 528.0
  SAY #96298 /* ~You know I cannot do that.~ [OH96298] */
  IF ~~ THEN REPLY #96299 /* ~I know, but I had to try. I'm afraid this is where we part ways.~ */ GOTO 530
  IF ~~ THEN REPLY #96300 /* ~Then you should know I cannot stay.~ */ GOTO 530
  IF ~~ THEN REPLY #96301 /* ~You are a fool. For your sake, I hope you are a lucky fool. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 530 // from: 529.1 529.0
  SAY #96302 /* ~I understand. Go now, while you are still able. If I survive the tests, perhaps we shall meet again.~ [OH96302] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 531 // from:
  SAY #79554 /* ~That voice... No! It cannot be!~ [OH79554] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 5
END

IF ~~ THEN BEGIN 532 // from:
  SAY #79559 /* ~He is—was—the Sun Soul order's Master of Combat.~ [OH79559] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 6
END

IF ~~ THEN BEGIN 533 // from: 534.1
  SAY #79561 /* ~How is this possible? What madness has taken you that you have taken up service to Alorgoth?~ [OH79561] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 9
END

IF ~~ THEN BEGIN 534 // from:
  SAY #79562 /* ~<CHARNAME>, wait! Stay your hand. I know this man. He is—was—the Sun Soul order's Master of Combat.~ [OH79562] */
  IF ~~ THEN REPLY #79563 /* ~Another Sun Soul turned to the heresy? At this rate, the order will have no members at all come next tenday.~ */ EXTERN ~OHRMOCOM~ 7
  IF ~~ THEN REPLY #79564 /* ~Master of Combat? Let me guess: He was the cook.~ */ GOTO 533
  IF ~~ THEN REPLY #79565 /* ~I'll stay my hand when the wretch lies dead at my feet!~ */ EXTERN ~OHRMOCOM~ 8
END

IF ~~ THEN BEGIN 535 // from:
  SAY #79572 /* ~Explain yourself, heretic!~ [OH79572] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 10
END

IF ~~ THEN BEGIN 536 // from:
  SAY #79574 /* ~Impossible!~ [OH79574] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 11
END

IF ~~ THEN BEGIN 537 // from:
  SAY #79584 /* ~No. The Master of Combat is right. I've deceived everyone, myself most of all.~ [OH79584] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 538 // from:
  SAY #79585 /* ~It goes against everything I've been taught.~ [OH79585] */
  IF ~~ THEN REPLY #79586 /* ~Turn back to the light, Rasaad. Strike now, in Selûne's name.~ */ GOTO 539
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #79587 /* ~Much of which was taught to you by him, if I understand things correctly. If he can see things differently, why can't you do the same?~ */ GOTO 540
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #79587 /* ~Much of which was taught to you by him, if I understand things correctly. If he can see things differently, why can't you do the same?~ */ GOTO 539
  IF ~~ THEN REPLY #79588 /* ~What you've been taught has no place in the real world.~ */ EXTERN ~OHRMOCOM~ 16
END

IF ~~ THEN BEGIN 539 // from: 538.2 538.0
  SAY #79589 /* ~Forgive me, master. I cannot allow this to continue. You will renounce this heresy—or pay the price for it.~ [OH79589] */
  IF ~~ THEN DO ~SetGlobal("OHR_SENTRY","OH4101",1)
ActionOverride("ohrmocom",Enemy())
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN DO ~SetGlobal("OHR_SENTRY","OH4101",1)
ActionOverride("ohrmocom",Enemy())
~ EXTERN ~VICONIJ~ 331
END

IF ~~ THEN BEGIN 540 // from: 538.1
  SAY #79590 /* ~Perhaps there is something to what you say.~ [OH79590] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 14
END

IF ~~ THEN BEGIN 541 // from:
  SAY #79595 /* ~What do you mean, <CHARNAME>?~ [OH79595] */
  IF ~~ THEN REPLY #79596 /* ~Just that your Master of Combat's making sense.~ */ EXTERN ~OHRMOCOM~ 16
  IF ~~ THEN REPLY #79597 /* ~The Twofold may or may not accurately represent Selûne and Shar. But it is a far more reasonable philosophy than that which the Sun Soul order espouses.~ */ GOTO 542
  IF ~~ THEN REPLY #79598 /* ~These men and women have abandoned the Sun Soul and Dark Moon for a reason. They are looking for a workable philosophy—and a worthy leader. You could be that leader.~ */ EXTERN ~OHRMOCOM~ 15
END

IF ~~ THEN BEGIN 542 // from: 541.1
  SAY #79600 /* ~What of it?~ [OH79600] */
  IF ~~ THEN REPLY #79601 /* ~An age of reason—and accommodation—is something worth fighting for.~ */ EXTERN ~OHRMOCOM~ 16
  IF ~~ THEN REPLY #79602 /* ~Much good could be done by a group such as this—if the group has the right person at its head.~ */ GOTO 543
  IF ~~ THEN REPLY #79603 /* ~Why would you make yourself a slave to an unworkable worldview?~ */ EXTERN ~OHRMOCOM~ 16
END

IF ~~ THEN BEGIN 543 // from: 542.1
  SAY #79604 /* ~You would have me lead the Twofold Trust?~ [OH79604] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 544 // from:
  SAY #79606 /* ~But... everything I learned... everything I was taught...~ [OH79606] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 545 // from:
  SAY #79612 /* ~I lose more family by the second. Gamaz, Hammerhelm, now you, master. What sins have I committed that I should be abandoned so?~ [OH79612] */
  IF ~~ THEN REPLY #79613 /* ~Your sin is pride, Rasaad.~ */ GOTO 546
  IF ~~ THEN REPLY #79614 /* ~We are toys to the gods, Rasaad. Only a fool seeks logic in their caprices.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79615 /* ~You have sinned against yourself—willingly limited your own potential.~ */ EXTERN ~OHRMOCOM~ 19
END

IF ~~ THEN BEGIN 546 // from: 545.0
  SAY #79616 /* ~How can you say that of me, <CHARNAME>?~ [OH79616] */
  IF ~~ THEN REPLY #79617 /* ~You are not proud of yourself, Rasaad—though you've good reason to be. No, your sin is in your devotion to the unworkable restraints of the Sun Soul order. There must be a reason so many have abandoned it in favor of the Twofold Truth.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79618 /* ~Easy. I've talked to you for more than fifteen minutes.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79619 /* ~You spout the pious platitudes of the Sun Soul order, but believe yourself above its precepts. How quickly did you turn to deception when it suited your needs?~ */ GOTO 547
END

IF ~~ THEN BEGIN 547 // from: 546.2
  SAY #79620 /* ~You damn me with the truth.~ [OH79620] */
  IF ~~ THEN REPLY #79621 /* ~The Twofold Truth offers you freedom, if only you're willing to take it.~ */ EXTERN ~OHRMOCOM~ 19
  IF ~~ THEN REPLY #79622 /* ~Damnation is a state of mind, nothing more.~ */ GOTO 548
  IF ~~ THEN REPLY #79623 /* ~I do nothing of the sort. I am trying to show you a new perspective, one you would do well to consider.~ */ GOTO 549
END

IF ~~ THEN BEGIN 548 // from: 547.1
  SAY #79624 /* ~An easy thing to say, <CHARNAME>. Not so easy to change.~ [OH79624] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 549 // from: 547.2
  SAY #79625 /* ~What perspective is this?~ [OH79625] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 550 // from:
  SAY #79627 /* ~You would have me kneel before Alorgoth? No, never.~ [OH79627] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 551 // from:
  SAY #79640 /* ~No! It cannot be!~ [OH79640] */
  IF ~~ THEN REPLY #79641 /* ~What's the matter?~ */ EXTERN ~OHRMOCOM~ 28
  IF ~~ THEN REPLY #79642 /* ~Yes! It must be! What are we talking about?~ */ EXTERN ~OHRMOCOM~ 28
  IF ~~ THEN REPLY #79643 /* ~What are you babbling about now?~ */ EXTERN ~OHRMOCOM~ 28
END

IF ~~ THEN BEGIN 552 // from:
  SAY #79647 /* ~He is—was—the Sun Soul order's Master of Combat.~ [OH79647] */
  IF ~~ THEN REPLY #79648 /* ~Another Sun Soul turned to the heresy? At this rate, the order will have no members at all come next tenday.~ */ EXTERN ~OHRMOCOM~ 30
  IF ~~ THEN REPLY #79649 /* ~Master of Combat? Let me guess: He was the cook.~ */ GOTO 553
  IF ~~ THEN REPLY #79650 /* ~And now the traitor will die.~ */ EXTERN ~OHRMOCOM~ 31
END

IF ~~ THEN BEGIN 553 // from: 554.1 552.1
  SAY #79653 /* ~How is this possible? What madness has taken you that you have taken up service to Alorgoth?~ [OH79653] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 32
END

IF ~~ THEN BEGIN 554 // from:
  SAY #79562 /* ~<CHARNAME>, wait! Stay your hand. I know this man. He is—was—the Sun Soul order's Master of Combat.~ [OH79562] */
  IF ~~ THEN REPLY #79563 /* ~Another Sun Soul turned to the heresy? At this rate, the order will have no members at all come next tenday.~ */ EXTERN ~OHRMOCOM~ 30
  IF ~~ THEN REPLY #79564 /* ~Master of Combat? Let me guess: He was the cook.~ */ GOTO 553
  IF ~~ THEN REPLY #79565 /* ~I'll stay my hand when the wretch lies dead at my feet!~ */ EXTERN ~OHRMOCOM~ 31
END

IF ~~ THEN BEGIN 555 // from:
  SAY #79572 /* ~Explain yourself, heretic!~ [OH79572] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 33
END

IF ~~ THEN BEGIN 556 // from:
  SAY #79574 /* ~Impossible!~ [OH79574] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 34
END

IF ~~ THEN BEGIN 557 // from:
  SAY #79584 /* ~No. The Master of Combat is right. I've deceived everyone, myself most of all.~ [OH79584] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 558 // from:
  SAY #79585 /* ~It goes against everything I've been taught.~ [OH79585] */
  IF ~~ THEN REPLY #79586 /* ~Turn back to the light, Rasaad. Strike now, in Selûne's name.~ */ GOTO 559
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #79587 /* ~Much of which was taught to you by him, if I understand things correctly. If he can see things differently, why can't you do the same?~ */ GOTO 560
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #79587 /* ~Much of which was taught to you by him, if I understand things correctly. If he can see things differently, why can't you do the same?~ */ GOTO 559
  IF ~~ THEN REPLY #79588 /* ~What you've been taught has no place in the real world.~ */ EXTERN ~OHRMOCOM~ 39
END

IF ~~ THEN BEGIN 559 // from: 558.2 558.0
  SAY #79589 /* ~Forgive me, master. I cannot allow this to continue. You will renounce this heresy—or pay the price for it.~ [OH79589] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 560 // from: 558.1
  SAY #79590 /* ~Perhaps there is something to what you say.~ [OH79590] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 37
END

IF ~~ THEN BEGIN 561 // from:
  SAY #79595 /* ~What do you mean, <CHARNAME>?~ [OH79595] */
  IF ~~ THEN REPLY #79596 /* ~Just that your Master of Combat's making sense.~ */ EXTERN ~OHRMOCOM~ 39
  IF ~~ THEN REPLY #79597 /* ~The Twofold may or may not accurately represent Selûne and Shar. But it is a far more reasonable philosophy than that which the Sun Soul order espouses.~ */ GOTO 562
  IF ~~ THEN REPLY #79598 /* ~These men and women have abandoned the Sun Soul and Dark Moon for a reason. They are looking for a workable philosophy—and a worthy leader. You could be that leader.~ */ EXTERN ~OHRMOCOM~ 38
END

IF ~~ THEN BEGIN 562 // from: 561.1
  SAY #79600 /* ~What of it?~ [OH79600] */
  IF ~~ THEN REPLY #79601 /* ~An age of reason—and accommodation—is something worth fighting for.~ */ EXTERN ~OHRMOCOM~ 39
  IF ~~ THEN REPLY #79602 /* ~Much good could be done by a group such as this—if the group has the right person at its head.~ */ GOTO 563
  IF ~~ THEN REPLY #79603 /* ~Why would you make yourself a slave to an unworkable worldview?~ */ EXTERN ~OHRMOCOM~ 39
END

IF ~~ THEN BEGIN 563 // from: 562.1
  SAY #79604 /* ~You would have me lead the Twofold Trust?~ [OH79604] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 564 // from:
  SAY #79606 /* ~But... everything I learned... everything I was taught...~ [OH79606] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 565 // from:
  SAY #79612 /* ~I lose more family by the second. Gamaz, Hammerhelm, now you, master. What sins have I committed that I should be abandoned so?~ [OH79612] */
  IF ~~ THEN REPLY #79613 /* ~Your sin is pride, Rasaad.~ */ GOTO 566
  IF ~~ THEN REPLY #79614 /* ~We are toys to the gods, Rasaad. Only a fool seeks logic in their caprices.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79615 /* ~You have sinned against yourself—willingly limited your own potential.~ */ EXTERN ~OHRMOCOM~ 42
END

IF ~~ THEN BEGIN 566 // from: 565.0
  SAY #79616 /* ~How can you say that of me, <CHARNAME>?~ [OH79616] */
  IF ~~ THEN REPLY #79617 /* ~You are not proud of yourself, Rasaad—though you've good reason to be. No, your sin is in your devotion to the unworkable restraints of the Sun Soul order. There must be a reason so many have abandoned it in favor of the Twofold Truth.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79618 /* ~Easy. I've talked to you for more than fifteen minutes.~ */ EXTERN ~OHRTWOFO~ 0
  IF ~~ THEN REPLY #79619 /* ~You spout the pious platitudes of the Sun Soul order, but believe yourself above its precepts. How quickly did you turn to deception when it suited your needs?~ */ GOTO 567
END

IF ~~ THEN BEGIN 567 // from: 566.2
  SAY #79620 /* ~You damn me with the truth.~ [OH79620] */
  IF ~~ THEN REPLY #79621 /* ~The Twofold Truth offers you freedom, if only you're willing to take it.~ */ EXTERN ~OHRMOCOM~ 42
  IF ~~ THEN REPLY #79622 /* ~Damnation is a state of mind, nothing more.~ */ GOTO 568
  IF ~~ THEN REPLY #79623 /* ~I do nothing of the sort. I am trying to show you a new perspective, one you would do well to consider.~ */ GOTO 569
END

IF ~~ THEN BEGIN 568 // from: 567.1
  SAY #79624 /* ~An easy thing to say, <CHARNAME>. Not so easy to change.~ [OH79624] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 569 // from: 567.2
  SAY #79625 /* ~What perspective is this?~ [OH79625] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 570 // from:
  SAY #79627 /* ~You would have me kneel before Alorgoth? No, never.~ [OH79627] */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 0
END

IF ~~ THEN BEGIN 571 // from:
  SAY #79667 /* ~Prepare for a siege.~ [OH79667] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 49
END

IF ~~ THEN BEGIN 572 // from:
  SAY #79669 /* ~The Dark Moon approaches, <CHARNAME>. Who will you stand with?~ [OH79669] */
  IF ~~ THEN REPLY #79670 /* ~With you, Rasaad. Always with you. But will you stand next to your old master, or simply watch the slaughter unfold?~ */ GOTO 573
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79671 /* ~Stand? I was thinking more in terms of, you know, running.~ */ EXTERN ~VICONIJ~ 342
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79671 /* ~Stand? I was thinking more in terms of, you know, running.~ */ GOTO 575
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79672 /* ~I stand with myself, though that's a distinction I doubt the Sharrans will take into consideration. We have no choice but to join the Twofolders—at least until an opportunity to escape appears.~ */ EXTERN ~VICONIJ~ 343
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79672 /* ~I stand with myself, though that's a distinction I doubt the Sharrans will take into consideration. We have no choice but to join the Twofolders—at least until an opportunity to escape appears.~ */ GOTO 587
END

IF ~~ THEN BEGIN 573 // from: 572.0
  SAY #79673 /* ~I am torn. My loyalty to the Sun Soul tells me I should let the heretics be smashed by the Sharrans—darkness blotting out darkness. Yet so many here were once my brothers or sisters, and I have stood my entire life against the servants of Shar.~ [OH79673] */
  IF ~~ THEN REPLY #79674 /* ~Without our help, the Twofolders don't stand a chance. You've no love for Collus Darathon, but are you willing to stand by while those he's duped fall in his name?~ */ GOTO 588
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79675 /* ~You think you're torn now, wait until the Dark Moon has us drawn and quartered.~ */ EXTERN ~VICONIJ~ 344
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79675 /* ~You think you're torn now, wait until the Dark Moon has us drawn and quartered.~ */ GOTO 574
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79676 /* ~You owe these traitors nothing, Rasaad. Do as I plan to—hang back and wait for an opportunity to escape.~ */ EXTERN ~VICONIJ~ 345
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #79676 /* ~You owe these traitors nothing, Rasaad. Do as I plan to—hang back and wait for an opportunity to escape.~ */ GOTO 576
END

IF ~~ THEN BEGIN 574 // from: 577.0 573.2
  SAY #79677 /* ~We must join forces with the Trust if we are to survive this.~ [OH79677] */
  IF ~~ THEN REPLY #79678 /* ~Agreed.~ */ GOTO 587
  IF ~~ THEN REPLY #79679 /* ~I'm not sure we do...~ */ GOTO 576
  IF ~~ THEN REPLY #79680 /* ~Join forces with them? No, Rasaad. If we're to survive this, you must lead them.~ */ EXTERN ~OHRMOCOM~ 50
END

IF ~~ THEN BEGIN 575 // from: 572.2
  SAY #79681 /* ~The Master of Combat says there is no escape. Believe me, he would know.~ [OH79681] */
  IF ~~ THEN REPLY #79682 /* ~Then I guess I'm fighting with the Twofolders.~ */ GOTO 587
  IF ~~ THEN REPLY #79683 /* ~Up until ten minutes ago, you believed the Master of Combat was a loyal member of the Sun Soul order. You'll forgive me if I'm a little hesitant to take you at your word where he's concerned.~ */ GOTO 576
  IF ~~ THEN REPLY #79684 /* ~For the patient and the wise, there's always a way to escape.~ */ GOTO 576
END

IF ~~ THEN BEGIN 576 // from: 575.2 575.1 574.1 573.4
  SAY #79685 /* ~You would leave these people to die?~ [OH79685] */
  IF ~~ THEN REPLY #79686 /* ~Not happily.~ */ GOTO 579
  IF ~  OR(2)
Global("OHR_TEMPLE_HOSTILE","GLOBAL",1)
Global("OHR_SENTRY","OH4101",3)
~ THEN REPLY #79687 /* ~In fairness, these people were just trying to kill me.~ */ GOTO 580
  IF ~~ THEN REPLY #79688 /* ~If it means I get to live, yes. You owe them nothing, Rasaad.~ */ GOTO 577
END

IF ~~ THEN BEGIN 577 // from: 576.2
  SAY #79689 /* ~Maybe not, but the thought of a Dark Moon victory galls me.~ [OH79689] */
  IF ~~ THEN REPLY #79690 /* ~Then we'll have to make it a costly victory—or an imaginary one.~ */ GOTO 574
  IF ~~ THEN REPLY #79691 /* ~I'll take being galled over being dead. Think, Rasaad—if you die, who will avenge your brother?~ */ GOTO 578
  IF ~~ THEN REPLY #79692 /* ~Dark Moon, Twofold Heretics... They're all enemies, Rasaad. Let them die.~ */ GOTO 579
END

IF ~~ THEN BEGIN 578 // from: 580.2 577.1
  SAY #79693 /* ~Enough, <CHARNAME>. I'll do as you say, though I like it not.~ [OH79693] */
  IF ~~ THEN REPLY #79694 /* ~Fair enough.~ */ DO ~AddJournalEntry(85065,INFO)
AddJournalEntry(85067,QUEST)
~ EXTERN ~OHRMOCOM~ 51
END

IF ~~ THEN BEGIN 579 // from: 577.2 576.0
  SAY #79695 /* ~I don't like this, <CHARNAME>. Yes, we were at odds with the Twofolders.~ [OH79695] */
  IF ~~ THEN GOTO 580
END

IF ~~ THEN BEGIN 580 // from: 579.0 576.1
  SAY #79696 /* ~Even so, I'll not let them fall to the Dark Moon scum.~ [OH79696] */
  IF ~~ THEN REPLY #79697 /* ~I'll fight with the Twofolders... for now.~ */ GOTO 587
  IF ~~ THEN REPLY #79698 /* ~Then you must lead them.~ */ GOTO 583
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #79699 /* ~Then you'll die for a faith you don't believe in.~ */ GOTO 578
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #79699 /* ~Then you'll die for a faith you don't believe in.~ */ GOTO 581
END

IF ~~ THEN BEGIN 581 // from: 580.3
  SAY #79700 /* ~I imagine this is where we part company, then. Farewell, <CHARNAME>.~ [OH79700] */
  IF ~~ THEN REPLY #79701 /* ~Wait, wait. I've no love for the Twofolders, but I'll not abandon a friend.~ */ GOTO 582
  IF ~~ THEN REPLY #79703 /* ~Damn it, Rasaad, you win. I'll fight with the Twofolders, on one condition. You must be the one to lead them.~ */ GOTO 583
END

IF ~~ THEN BEGIN 582 // from: 581.0
  SAY #79704 /* ~Thank you, <CHARNAME>. You don't know what your support means to me.~ [OH79704] */
  IF ~~ THEN GOTO 587
END

IF ~~ THEN BEGIN 583 // from: 581.1 580.1
  SAY #79705 /* ~Lead the Twofold Trust? You're mad, <CHARNAME>.~ [OH79705] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 50
END

IF ~~ THEN BEGIN 584 // from:
  SAY #79707 /* ~I cannot...~ [OH79707] */
  IF ~~ THEN REPLY #79708 /* ~Then we'll all die. You carry a heavy burden already—are you really so eager to add to it?~ */ GOTO 586
  IF ~~ THEN REPLY #79709 /* ~This is no time for false modesty, Rasaad. Or any modesty. These people need you.~ */ GOTO 585
  IF ~~ THEN REPLY #79710 /* ~You will, because you must. You were born to lead, Rasaad.~ */ GOTO 585
END

IF ~~ THEN BEGIN 585 // from: 584.2 584.1
  SAY #79711 /* ~Very well, <CHARNAME>. I'll do what I can to justify your faith.~ [OH79711] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 586 // from: 584.0
  SAY #79712 /* ~The burden will grow no matter what I do. But if you and the Master of Combat are in agreement, I have little choice.~ [OH79712] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 587 // from: 588.0 582.0 580.0 575.0 574.0 572.4
  SAY #79713 /* ~Master of Combat—we no longer see eye to eye on everything, but when it comes to the Order of the Dark Moon, we are of one mind. What would you have us do?~ [OH79713] */
  IF ~~ THEN DO ~AddJournalEntry(85062,INFO)
AddJournalEntry(85067,QUEST)
~ EXTERN ~OHRMOCOM~ 51
END

IF ~~ THEN BEGIN 588 // from: 573.0
  SAY #79715 /* ~I am not.~ [OH79715] */
  IF ~~ THEN GOTO 587
END

IF ~~ THEN BEGIN 589 // from: 586.0 585.0
  SAY #79716 /* ~HEED ME, YOU WHO SEEK THE TWOFOLD TRUTH! If you would see tomorrow's dawn, follow me now! If we strike now, before the Sharran forces have a chance to assemble, we may yet win the day.~ [OH79716] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 52
END

IF ~~ THEN BEGIN 590 // from:
  SAY #79755 /* ~I've come too far to turn back now, <CHARNAME>. I must enter the room.~ [OH79755] */
  IF ~~ THEN EXTERN ~OHRROPM1~ 6
END

IF ~~ THEN BEGIN 591 // from:
  SAY #79869 /* ~I don't like the sound of that.~ [OH79869] */
  IF ~~ THEN EXTERN ~OHRBSM~ 4
END

IF ~~ THEN BEGIN 592 // from:
  SAY #79879 /* ~This is my only chance to reach Alorgoth, <CHARNAME>. I must take it.~ [OH79879] */
  IF ~~ THEN EXTERN ~OHRBSM~ 7
END

IF ~~ THEN BEGIN 593 // from:
  SAY #79895 /* ~We are one step closer to joining the Twofold Trust. One step closer to Alorgoth.~ [OH79895] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 594 // from:
  SAY #79927 /* ~Whatever awaits, we must go forward.~ [OH79927] */
  IF ~~ THEN EXTERN ~OHRBMM~ 3
END

IF ~~ THEN BEGIN 595 // from:
  SAY #79941 /* ~I know not if there is any truth left in my heart.~ [OH79941] */
  IF ~~ THEN EXTERN ~OHRBMM~ 8
END

IF ~~ THEN BEGIN 596 // from:
  SAY #79943 /* ~Watch your step, <CHARNAME>. I doubt those who stray from the path go unpunished.~ [OH79943] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 597 // from:
  SAY #79963 /* ~What do you want from us?~ [OH79963] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 7
END

IF ~~ THEN BEGIN 598 // from:
  SAY #79965 /* ~A secret, that is all?~ [OH79965] */
  IF ~~ THEN REPLY #79966 /* ~This is no small thing, Rasaad.~ */ GOTO 600
  IF ~~ THEN REPLY #79967 /* ~Beware, Rasaad. A secret shared is a secret no longer.~ */ EXTERN ~OHRTRUTH~ 11
  IF ~~ THEN REPLY #79968 /* ~You'll get no secrets from me, monster. I'll die before I reveal myself to you.~ */ EXTERN ~OHRTRUTH~ 8
END

IF ~~ THEN BEGIN 599 // from:
  SAY #79970 /* ~Wait! If it's a secret you want, I shall give you one.~ [OH79970] */
  IF ~~ THEN REPLY #79971 /* ~You don't have to do this, Rasaad.~ */ EXTERN ~OHRTRUTH~ 9
  IF ~~ THEN REPLY #79972 /* ~It better not be about me.~ */ GOTO 605
  IF ~~ THEN REPLY #79973 /* ~Hah! You have no secrets, Rasaad. It's not in your nature.~ */ EXTERN ~OHRTRUTH~ 10
END

IF ~~ THEN BEGIN 600 // from: 598.0
  SAY #79976 /* ~And yet I must supply it to move forward. I'll give you a secret, monster.~ [OH79976] */
  IF ~~ THEN REPLY #79977 /* ~You don't have to do this, Rasaad.~ */ EXTERN ~OHRTRUTH~ 9
  IF ~~ THEN REPLY #79978 /* ~It better not be about me.~ */ GOTO 605
  IF ~~ THEN REPLY #79979 /* ~Hah! You have no secrets, Rasaad. It's not in your nature.~ */ EXTERN ~OHRTRUTH~ 10
END

IF ~~ THEN BEGIN 601 // from:
  SAY #79988 /* ~You too, <CHARNAME>? I thought you of all people would take me at my word.~ [OH79988] */
  IF ~~ THEN REPLY #79989 /* ~It matters not what you believe, Rasaad. I am not here for Collus Darathon or Alorgoth or this shadow beast or anything in this temple. I am here because whatever you believe, I believe in you.~ */ GOTO 602
  IF ~~ THEN REPLY #79990 /* ~I'm sorry, Rasaad. Alorgoth is the founder of the Dark Moon order—it makes no sense that he'd conspire against the very religion that he leads.~ */ EXTERN ~OHRTRUTH~ 25
  IF ~~ THEN REPLY #79991 /* ~What does it matter? Am I not here, beside you?~ */ GOTO 603
END

IF ~~ THEN BEGIN 602 // from: 601.0
  SAY #79993 /* ~You humble me, <CHARNAME>. I... do not have the words to thank you.~ [OH79993] */
  IF ~~ THEN REPLY #79994 /* ~Then say nothing, my friend. We know where we stand.~ */ EXTERN ~OHRTRUTH~ 25
END

IF ~~ THEN BEGIN 603 // from: 601.2
  SAY #79995 /* ~You are. Do not think I don't appreciate it.~ [OH79995] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 25
END

IF ~~ THEN BEGIN 604 // from:
  SAY #79996 /* ~What would you have me tell him, <CHARNAME>?~ [OH79996] */
  IF ~~ THEN REPLY #79997 /* ~A secret is a secret, but not all secrets need be world-shattering. Tell it something small and harmless.~ */ GOTO 606
  IF ~~ THEN REPLY #79998 /* ~I haven't the foggiest idea. But don't lie.~ */ GOTO 607
  IF ~~ THEN REPLY #79999 /* ~Tell it the truth. If it damns us, so be it.~ */ GOTO 608
END

IF ~~ THEN BEGIN 605 // from: 600.1 599.1
  SAY #80000 /* ~I must tell him something, <CHARNAME>? But what?~ [OH80000] */
  IF ~~ THEN REPLY #80001 /* ~A secret is a secret, but not all secrets need be world-shattering. Tell it something small and harmless.~ */ GOTO 606
  IF ~~ THEN REPLY #80002 /* ~I haven't the foggiest idea. But don't lie.~ */ GOTO 607
  IF ~~ THEN REPLY #80003 /* ~Tell it the truth. If it damns us, so be it.~ */ GOTO 608
END

IF ~~ THEN BEGIN 606 // from: 605.0 604.0
  SAY #80004 /* ~I knew my brother, Gamaz, would come to a bad end. And I always feared it would be at my hand.~ [OH80004] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 14
END

IF ~~ THEN BEGIN 607 // from: 605.1 604.1
  SAY #80005 /* ~I came to this place under false pretenses. I did not seek to join the Trust at first.~ [OH80005] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 15
END

IF ~~ THEN BEGIN 608 // from: 605.2 604.2
  SAY #80006 /* ~This is my secret, then: Once, I was certain that Alorgoth and Collus Darathon were one and the same. I said as much to you, <CHARNAME>, and I believed it at the time. But now—I am not so sure.~ [OH80006] */
  IF ~~ THEN REPLY #80007 /* ~You followed your heart as you always have, Rasaad. It doesn't matter if Alorgoth and Darathon are the same man or not—I came here to support you, not kill them. Though I'd be willing to do all three, if it comes to it.~ */ EXTERN ~OHRTRUTH~ 14
  IF ~~ THEN REPLY #80008 /* ~Well, I'm glad you realized that before we strode into the middle of a temple full of enemies. Oh, WAIT...~ */ EXTERN ~OHRTRUTH~ 14
  IF ~~ THEN REPLY #80009 /* ~Damn it, Rasaad. You led me into this pit of vipers on a hunch even you no longer believe. I should kill you where you stand.~ */ EXTERN ~OHRTRUTH~ 14
END

IF ~~ THEN BEGIN 609 // from:
  SAY #80015 /* ~I changed my mind. I would be a part of the Twofold Trust, if it will have me.~ [OH80015] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 16
END

IF ~~ THEN BEGIN 610 // from:
  SAY #80020 /* ~I have a problem with it. The creature knows the truth of the matter. I sought to join the Trust solely for selfish reasons.~ [OH80020] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 17
END

IF ~~ THEN BEGIN 611 // from:
  SAY #80022 /* ~What? But... I... I lied!~ [OH80022] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 18
END

IF ~~ THEN BEGIN 612 // from:
  SAY #80026 /* ~I turned against the Sun Soul philosophy.~ [OH80026] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 21
END

IF ~~ THEN BEGIN 613 // from:
  SAY #80031 /* ~I do not want to join the Trust.~ [OH80031] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 22
END

IF ~~ THEN BEGIN 614 // from:
  SAY #80033 /* ~What? But I... I lied...~ [OH80033] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 23
END

IF ~~ THEN BEGIN 615 // from:
  SAY #80035 /* ~The truth? The truth is this: I no longer know where my heart lies. What was once clear to me is now clouded and uncertain. I am lost.~ [OH80035] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 24
END

IF ~~ THEN BEGIN 616 // from:
  SAY #80041 /* ~<CHARNAME>, no! What have you done?~ [OH80041] */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 26
END

IF ~~ THEN BEGIN 617 // from:
  SAY #80120 /* ~I am pleased to have taken another step in my quest to join the Twofold Trust.~ [OH80120] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 618 // from:
  SAY #80151 /* ~Alorgoth has twisted his followers' minds. They no longer know what truth is.~ [OH80151] */
  IF ~~ THEN EXTERN ~OHRPHM~ 7
END

IF ~~ THEN BEGIN 619 // from:
  SAY #80164 /* ~They would have us betray those we would call brothers.~ [OH80164] */
  IF ~~ THEN EXTERN ~OHRPHM~ 9
END

IF ~~ THEN BEGIN 620 // from:
  SAY #80177 /* ~It is a philosophical trap—by exposing another's failing, we dishonor ourselves and must therefore pay a price.~ [OH80177] */
  IF ~~ THEN EXTERN ~OHRPHM~ 12
END

IF ~~ THEN BEGIN 621 // from:
  SAY #80187 /* ~No, <CHARNAME>. We can't turn back now. The path to Darathon leads through the Chamber of Penance.~ [OH80187] */
  IF ~~ THEN EXTERN ~OHRPHM~ 15
END

IF ~~ THEN BEGIN 622 // from: 628.3
  SAY #80205 /* ~<CHARNAME>, no!~ [OH80205] */
  IF ~  CheckStatGT(Player1,11,DEX)
~ THEN EXTERN ~OHRCONF~ 2
  IF ~  CheckStatLT(Player1,12,DEX)
~ THEN EXTERN ~OHRCONF~ 3
END

IF ~~ THEN BEGIN 623 // from:
  SAY #80209 /* ~You would have me betray those I would call my brothers and sisters.~ [OH80209] */
  IF ~~ THEN EXTERN ~OHRCONF~ 5
END

IF ~~ THEN BEGIN 624 // from:
  SAY #80214 /* ~I cannot slur those I would stand beside.~ [OH80214] */
  IF ~~ THEN REPLY #80215 /* ~Then you must tell him of your own sin against the Twofold.~ */ GOTO 626
  IF ~~ THEN REPLY #80216 /* ~Sure you can. You can do anything you put your mind to.~ */ GOTO 625
  IF ~~ THEN REPLY #80217 /* ~Damn it, Rasaad! Your honor will be the death of you.~ */ GOTO 626
END

IF ~~ THEN BEGIN 625 // from: 624.1
  SAY #80218 /* ~I know you're joking, <CHARNAME>, but this is not a laughing matter. I'll not begin my time with the Trust with an act of treachery.~ [OH80218] */
  IF ~~ THEN GOTO 626
END

IF ~~ THEN BEGIN 626 // from: 625.0 624.2 624.0
  SAY #80219 /* ~My name is Rasaad yn Bashir. I did not come here to join the Trust. I am here to slay the man you know as Collus Darathon.~ [OH80219] */
  IF ~~ THEN REPLY #80220 /* ~Not precisely the sin I had in mind, Rasaad...~ */ EXTERN ~OHRCONF~ 3
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #80221 /* ~He doesn't mean that. Not really.~ */ EXTERN ~OHRCONF~ 6
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY #80221 /* ~He doesn't mean that. Not really.~ */ EXTERN ~OHRCONF~ 3
  IF ~~ THEN REPLY #80222 /* ~Oh, you damned fool...~ */ EXTERN ~OHRCONF~ 3
END

IF ~~ THEN BEGIN 627 // from:
  SAY #80236 /* ~I came here to kill Alorgoth.~ [OH80236] */
  IF ~~ THEN EXTERN ~OHRCONF~ 10
END

IF ~~ THEN BEGIN 628 // from:
  SAY #80238 /* ~I... would know the Twofold Truth. If it proves itself a worthy philosophy, then yes, I would join the Trust.~ [OH80238] */
  IF ~~ THEN REPLY #80239 /* ~He seeks the Twofold, as surely as any man ever has. Would you deny him the opportunity to know her Truth?~ */ EXTERN ~OHRCONF~ 11
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY #80240 /* ~There. Happy now?~ */ EXTERN ~OHRCONF~ 6
  IF ~  CheckStatLT(Player1,18,CHR)
~ THEN REPLY #80240 /* ~There. Happy now?~ */ EXTERN ~OHRCONF~ 13
  IF ~~ THEN REPLY #80241 /* ~The funny thing is, Rasaad here is a man of honor—he'll actually do what he claims. A shame you'll not live to see it, confessor.~ */ GOTO 622
END

IF ~~ THEN BEGIN 629 // from:
  SAY #80243 /* ~I am ready.~ [OH80243] */
  IF ~~ THEN EXTERN ~OHRCONF~ 12
END

IF ~~ THEN BEGIN 630 // from:
  SAY #80245 /* ~I shall. Thank you, confessor.~ [OH80245] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 631 // from:
  SAY #80332 /* ~That is not Collus Darathon.~ [OH80332] */
  IF ~~ THEN GOTO 632
END

IF ~~ THEN BEGIN 632 // from: 631.0
  SAY #80334 /* ~It's Alorgoth!~ [OH80334] */
  IF ~~ THEN REPLY #80335 /* ~Are you certain?~ */ EXTERN ~OHRCOLLU~ 23
  IF ~~ THEN REPLY #80336 /* ~That's Alorgoth? I somehow thought he'd be taller.~ */ EXTERN ~OHRCOLLU~ 23
  IF ~~ THEN REPLY #80337 /* ~Finally. Let's kill him.~ */ GOTO 633
END

IF ~~ THEN BEGIN 633 // from: 632.2
  SAY #80339 /* ~You may have fooled these others, Alorgoth—but I know the truth! Face me now, coward!~ [OH80339] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 24
END

IF ~~ THEN BEGIN 634 // from:
  SAY #80341 /* ~You know it is, Alorgoth!~ [OH80341] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 25
END

IF ~~ THEN BEGIN 635 // from:
  SAY #80349 /* ~You doubted me, <CHARNAME>?~ [OH80349] */
  IF ~~ THEN REPLY #80350 /* ~I never doubted you, Rasaad. Now is the moment you've been waiting for—avenge your brother!~ */ GOTO 638
  IF ~~ THEN REPLY #80351 /* ~Not all of you. Just, you know... your mind.~ */ GOTO 636
  IF ~~ THEN REPLY #80352 /* ~Alorgoth being Darathon! It's ridiculous! Madness!~ */ GOTO 636
END

IF ~~ THEN BEGIN 636 // from: 635.2 635.1
  SAY #80354 /* ~What was the point of this charade, Alorgoth? What did you gain by turning your own followers against Shar?~ [OH80354] */
  IF ~~ THEN EXTERN ~OHRALOR~ 1
END

IF ~~ THEN BEGIN 637 // from:
  SAY #80359 /* ~One who only holds darkness in his heart.~ [OH80359] */
  IF ~~ THEN GOTO 638
END

IF ~~ THEN BEGIN 638 // from: 637.0 635.0
  SAY #80360 /* ~Hear me now, disciples of the Twofold Truth! The man you called Darathon stands revealed as a deceiver who plotted your destruction! But in his deceit, he has revealed a greater truth—a Twofold Truth worth living, worth dying, worth fighting for! Join me now, friends! We may die this day, but we'll not die alone for no good cause!~ [OH80360] */
  IF ~~ THEN REPLY #80361 /* ~Strike now, in the Twofold's name!~ */ EXTERN ~OHRDMH2~ 3
  IF ~~ THEN REPLY #80362 /* ~Strike now, in the name of the goddess of your choosing!~ */ EXTERN ~OHRALOR~ 3
  IF ~~ THEN REPLY #80363 /* ~Strike now, and you will become legend!~ */ DO ~AddJournalEntry(85085,INFO)
AddJournalEntry(85086,QUEST_DONE)
SetGlobal("OHR_PLOT","GLOBAL",5)
UnhideGUI()
EndCutSceneMode()
ActionOverride("OHRALOR",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 639 // from:
  SAY #80371 /* ~That's not Collus, master.~ [OH80371] */
  IF ~~ THEN GOTO 640
END

IF ~~ THEN BEGIN 640 // from: 639.0
  SAY #80372 /* ~ALORGOTH! I KNOW THAT'S YOU! FACE ME NOW, COWARD! ~ [OH80372] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 27
END

IF ~~ THEN BEGIN 641 // from:
  SAY #80374 /* ~You know it is, fiend.~ [OH80374] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 28
END

IF ~~ THEN BEGIN 642 // from:
  SAY #80378 /* ~What was the point of this charade, Alorgoth? What did you gain by turning your own followers against Shar?~ [OH80378] */
  IF ~~ THEN EXTERN ~OHRALOR~ 7
END

IF ~~ THEN BEGIN 643 // from:
  SAY #80383 /* ~One who holds only darkness in his heart!~ [OH80383] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 64
END

IF ~~ THEN BEGIN 644 // from:
  SAY #80392 /* ~Selûne help us...~ [OH80392] */
  IF ~~ THEN REPLY #80393 /* ~Look there—is that Collus Darathon standing under Shar's banner?~ */ GOTO 645
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80394 /* ~You better hope she does, because I don't think anyone else will.~ */ EXTERN ~VICONIJ~ 352
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80394 /* ~You better hope she does, because I don't think anyone else will.~ */ EXTERN ~OHRCOLLU~ 33
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80395 /* ~You have my help, Rasaad. You need no other's.~ */ EXTERN ~VICONIJ~ 352
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80395 /* ~You have my help, Rasaad. You need no other's.~ */ EXTERN ~OHRCOLLU~ 33
END

IF ~~ THEN BEGIN 645 // from: 644.0
  SAY #80396 /* ~Not Darathon. Alorgoth.~ [OH80396] */
  IF ~~ THEN REPLY #80397 /* ~Then the time has come for you to avenge your brother.~ */ GOTO 646
  IF ~~ THEN REPLY #80398 /* ~Are you sure they're the same person?~ */ GOTO 646
  IF ~~ THEN REPLY #80399 /* ~Excellent. Let's kill him.~ */ GOTO 646
END

IF ~~ THEN BEGIN 646 // from: 645.2 645.1 645.0
  SAY #80400 /* ~ALORGOTH! I KNOW THAT'S YOU HIDING WITHIN THE SKIN OF COLLUS DARATHON! FACE ME NOW, COWARD! ~ [OH80400] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 32
END

IF ~~ THEN BEGIN 647 // from:
  SAY #80402 /* ~You know it is, fiend.~ [OH80402] */
  IF ~~ THEN DO ~SetGlobal("OHR_COLLUS_CHANGE","OH4100",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHRCUT04",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 648 // from:
  SAY #80408 /* ~What was the point of this charade, Alorgoth? What did you gain by turning your own followers against Shar?~ [OH80408] */
  IF ~~ THEN EXTERN ~OHRALOR~ 16
END

IF ~~ THEN BEGIN 649 // from:
  SAY #80414 /* ~Because he's not Darathon.~ [OH80414] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 34
END

IF ~~ THEN BEGIN 650 // from:
  SAY #80416 /* ~You know it is, Alorgoth!~ [OH80416] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 35
END

IF ~~ THEN BEGIN 651 // from:
  SAY #80418 /* ~You may have fooled the others, Alorgoth, but I know the truth. Cast your mask aside and face me now, coward!~ [OH80418] */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 36
END

IF ~~ THEN BEGIN 652 // from:
  SAY #80422 /* ~This is no joke, <CHARNAME>.~ [OH80422] */
  IF ~~ THEN EXTERN ~OHRALOR~ 17
END

IF ~~ THEN BEGIN 653 // from:
  SAY #80424 /* ~What was the point of this charade, Alorgoth? What did you gain by turning your own followers against Shar?~ [OH80424] */
  IF ~~ THEN EXTERN ~OHRALOR~ 18
END

IF ~~ THEN BEGIN 654 // from:
  SAY #80429 /* ~One who holds only darkness in his heart!~ [OH80429] */
  IF ~~ THEN EXTERN ~OHRALOR~ 23
END

IF ~~ THEN BEGIN 655 // from:
  SAY #80472 /* ~No! Alorgoth yet lives!~ [OH80472] */
  IF ~~ THEN REPLY #80473 /* ~So do we, my friend. Let's count our blessings where we may.~ */ GOTO 656
  IF ~~ THEN REPLY #80474 /* ~It won't last, Rasaad. We'll make sure of it, I promise you.~ */ GOTO 657
  IF ~~ THEN REPLY #80475 /* ~Calm yourself, Rasaad. This is but a temporary setback.~ */ GOTO 661
END

IF ~~ THEN BEGIN 656 // from: 655.0
  SAY #80476 /* ~Whose blessing would that be, <CHARNAME>? Selûne's? Shar's? The Twofold Goddess's?~ [OH80476] */
  IF ~~ THEN REPLY #80477 /* ~Selûne's, of course. You would have no other's, I know.~ */ GOTO 657
  IF ~~ THEN REPLY #80478 /* ~When it comes to blessings, I try not to be so picky. Let's go.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 672
  IF ~~ THEN REPLY #80479 /* ~Take your pick. In the end, one's worth the same as another.~ */ GOTO 657
END

IF ~~ THEN BEGIN 657 // from: 656.2 656.0 655.1
  SAY #80480 /* ~I wish I were as certain of that as you seem to be, <CHARNAME>.~ [OH80480] */
  IF ~~ THEN REPLY #80481 /* ~You will be, in time.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
~ GOTO 659
  IF ~~ THEN REPLY #80482 /* ~Yes, well. "Seem" may be the key word there.~ */ GOTO 658
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80483 /* ~You harbor doubts?~ */ EXTERN ~VICONIJ~ 363
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80483 /* ~You harbor doubts?~ */ GOTO 660
END

IF ~~ THEN BEGIN 658 // from: 657.1
  SAY #80484 /* ~Do you believe I hold Selûne in my heart, <CHARNAME>? The things I've done of late... broken my vows, turned against my friends... Once, I was sure of where I stood. No longer.~ [OH80484] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80485 /* ~I believe Selûne smiles on those who are true, Rasaad. And I know none more true than you.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
~ EXTERN ~VICONIJ~ 364
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80485 /* ~I believe Selûne smiles on those who are true, Rasaad. And I know none more true than you.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
~ GOTO 659
  IF ~~ THEN REPLY #80486 /* ~Not knowing where you stand isn't necessarily a bad thing. It means you need to keep your eyes on the ground and watch your step. People who don't know where they stand are far less likely to trip.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 659
  IF ~~ THEN REPLY #80487 /* ~Save your self-pity for another day, Rasaad. While Alorgoth lives, you've more important things to consider than your relationship with the Moonmaiden.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 659
END

IF ~~ THEN BEGIN 659 // from: 658.3 658.2 658.1 657.0
  SAY #80488 /* ~Your words comfort me, <CHARNAME>, and few things do these days. I thank you for that.~ [OH80488] */
  IF ~~ THEN DO ~AddJournalEntry(85088,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 660 // from: 657.3
  SAY #80489 /* ~I'm ashamed to admit I do. I have sacrificed everything, and what have I to show for it? My hands are empty and my heart heavy with despair.~ [OH80489] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 67
END

IF ~~ THEN BEGIN 661 // from: 655.2
  SAY #80490 /* ~A temporary setback, <CHARNAME>? For you, perhaps. I have sacrificed everything I cherished, and what have I to show for it? Nothing!~ [OH80490] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 67
END

IF ~~ THEN BEGIN 662 // from:
  SAY #97282 /* ~Selûne's light will show the way. It always does in the end.~ [OH97282] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 71
END

IF ~~ THEN BEGIN 663 // from:
  SAY #97286 /* ~For the order, or for us?~ [OH97286] */
  IF ~~ THEN REPLY #97287 /* ~For you, of course. You'll do better without the restraints of the order holding you back.~ */ EXTERN ~OHRMOCOM~ 72
  IF ~~ THEN REPLY #97288 /* ~For the order. Clearly, neither you nor the Master of Combat truly belonged there.~ */ GOTO 666
  IF ~~ THEN REPLY #97289 /* ~For everyone involved.~ */ GOTO 682
  IF ~~ THEN REPLY #97290 /* ~I'll let you decide that.~ */ GOTO 682
END

IF ~~ THEN BEGIN 664 // from:
  SAY #80502 /* ~What are you saying?~ [OH80502] */
  IF ~~ THEN REPLY #80503 /* ~You know the Sun Soul order has no place for you now. Its restraints serve many well—but they bind you, make you weaker. That is why you turned to deceit rather than your fellow monks when seeking your vengeance.~ */ GOTO 666
  IF ~~ THEN REPLY #80504 /* ~Nothing of any import, I'm sure. Feel free to ignore me.~ */ GOTO 673
  IF ~~ THEN REPLY #80505 /* ~The Trust is weakened, but not broken. With the right man in charge, it could become a force to be reckoned with.~ */ GOTO 665
END

IF ~~ THEN BEGIN 665 // from: 666.2 664.2
  SAY #80506 /* ~You believe I should lead the Trust?~ [OH80506] */
  IF ~~ THEN GOTO 674
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 366
END

IF ~~ THEN BEGIN 666 // from: 664.0 663.1
  SAY #80507 /* ~I fear you are right.~ [OH80507] */
  IF ~~ THEN REPLY #80508 /* ~There's nothing there to fear, Rasaad. The Twofold Trust offers you a new, less restrictive choice.~ */ GOTO 668
  IF ~~ THEN REPLY #80509 /* ~Then take the opportunity being offered. Join the Twofold Trust. Forge it into a weapon that will stab Alorgoth in his black heart.~ */ GOTO 667
  IF ~~ THEN REPLY #80510 /* ~Fear? Fear won't help you avenge your brother. An order of warrior monks under your command is another matter entirely.~ */ GOTO 665
END

IF ~~ THEN BEGIN 667 // from: 666.1
  SAY #80511 /* ~You have never led me wrong, <CHARNAME>. I will take your advice.~ [OH80511] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 668 // from: 666.0
  SAY #80512 /* ~You say I should join the Trust?~ [OH80512] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 73
END

IF ~~ THEN BEGIN 669 // from:
  SAY #80516 /* ~In truth, <CHARNAME>, I no longer know my own heart.~ [OH80516] */
  IF ~~ THEN REPLY #80517 /* ~Then stay with me for now. Your path will become clear in time, I'm sure of it.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 672
  IF ~~ THEN REPLY #80518 /* ~You'll figure it out. You just need some time to rest.~ */ GOTO 671
  IF ~~ THEN REPLY #80519 /* ~Then we must part for now. When you see things clearly again, I'll be waiting.~ */ DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 670 // from:
  SAY #80524 /* ~It is not. But I believe I have made it.~ */
  IF ~~ THEN GOTO 672
END

IF ~~ THEN BEGIN 671 // from: 669.1
  SAY #80525 /* ~You have the truth of it. Perhaps there is something in what you say. I do long for a return to the discipline of the monk's existence. Yes. I shall stay here, at least for a time. Help rebuild a new order, one worthy of Selûne's grace. And then, when the time is right... Alorgoth is still out there...~ [OH80525] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 672 // from: 673.0 670.0 669.0 656.1
  SAY #80526 /* ~You have always guided me well. As long as you'll have me, I'll be at your side.~ [OH80526] */
  IF ~~ THEN DO ~AddJournalEntry(85088,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN DO ~AddJournalEntry(85088,INFO)
~ EXTERN ~VICONIJ~ 367
END

IF ~~ THEN BEGIN 673 // from: 682.2 664.1
  SAY #80527 /* ~I may disagree with you from time to time, <CHARNAME>, but I'll never ignore you.~ [OH80527] */
  IF ~~ THEN GOTO 672
END

IF ~~ THEN BEGIN 674 // from: 665.0
  SAY #80536 /* ~Me?~ [OH80536] */
  IF ~~ THEN REPLY #80537 /* ~If that is your will, yes.~ */ GOTO 675
  IF ~~ THEN REPLY #80538 /* ~Someone's got to. Who's better qualified than you?~ */ GOTO 680
  IF ~~ THEN REPLY #80539 /* ~Who better?~ */ GOTO 680
END

IF ~~ THEN BEGIN 675 // from: 674.0
  SAY #80540 /* ~The idea makes me...~ [OH80540] */
  IF ~~ THEN REPLY #80541 /* ~Uncomfortable?~ */ GOTO 676
  IF ~~ THEN REPLY #80542 /* ~Nervous?~ */ GOTO 676
  IF ~~ THEN REPLY #80543 /* ~Excited?~ */ GOTO 677
END

IF ~~ THEN BEGIN 676 // from: 675.1 675.0
  SAY #80544 /* ~Yes.~ [OH80544] */
  IF ~~ THEN GOTO 678
END

IF ~~ THEN BEGIN 677 // from: 675.2
  SAY #80545 /* ~Uncomfortable.~ [OH80545] */
  IF ~~ THEN GOTO 678
END

IF ~~ THEN BEGIN 678 // from: 677.0 676.0
  SAY #80546 /* ~The Master of Combat should lead the Trust.~ [OH80546] */
  IF ~~ THEN REPLY #80547 /* ~He's certainly proven himself worthy of the task. But what of you?~ */ GOTO 679
  IF ~~ THEN REPLY #80548 /* ~The Master of Combat can teach them how to fight. Only you can give them something worth fighting for.~ */ GOTO 684
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80549 /* ~A man assigned to command by Alorgoth? You cannot be comfortable with that.~ */ EXTERN ~VICONIJ~ 369
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80549 /* ~A man assigned to command by Alorgoth? You cannot be comfortable with that.~ */ GOTO 681
END

IF ~~ THEN BEGIN 679 // from: 685.0 682.0 680.0 678.0
  SAY #80550 /* ~I'll stay here for a time. Help them rebuild—make sure what they construct is on a firm foundation. And when I'm satisfied that job's complete... Alorgoth awaits.~ [OH80550] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 680 // from: 674.2 674.1
  SAY #80551 /* ~The Master of Combat, obviously.~ [OH80551] */
  IF ~~ THEN REPLY #80552 /* ~He's proven himself worthy of the role, no doubt. But what will you do?~ */ GOTO 679
  IF ~~ THEN REPLY #80553 /* ~The Master of Combat can teach them how to fight. Only you can give them something worth fighting for.~ */ GOTO 684
  IF ~~ THEN REPLY #80554 /* ~A man assigned to command by Alorgoth? You cannot be comfortable with that.~ */ GOTO 681
END

IF ~~ THEN BEGIN 681 // from: 680.2 678.3
  SAY #80555 /* ~He did not know that Darathon and Alorgoth were one and the same.~ [OH80555] */
  IF ~~ THEN REPLY #80556 /* ~No one did. No one but you, Rasaad.~ */ GOTO 682
  IF ~~ THEN REPLY #80557 /* ~And don't you think he should have?~ */ GOTO 682
  IF ~~ THEN REPLY #80558 /* ~But you did, Rasaad. And that's why you and you alone are fit to command this new order of Selûne.~ */ GOTO 684
END

IF ~~ THEN BEGIN 682 // from: 681.1 681.0 663.3 663.2
  SAY #80559 /* ~Ah! You are giving me a headache.~ [OH80559] */
  IF ~~ THEN REPLY #80560 /* ~I'm sorry, my friend. I know this can't be easy for you. But the time has come for you to choose a path. What's it going to be?~ */ GOTO 679
  IF ~~ THEN REPLY #80561 /* ~That's because you're not used to thinking. Don't worry, it'll pass.~ */ GOTO 683
  IF ~~ THEN REPLY #80562 /* ~This isn't a hard decision to make, Rasaad. If you want to join the Trust, do so. If you want to lead it to Selûne's light, do that. If you want to stay with me, I can always use a man of your talents. Hell, if you want to try and return to the Sun Soul order, I'll even support you in that (though I can't honestly say I expect you'll succeed). Pick a path. Walk it. It's simple.~ */ GOTO 673
END

IF ~~ THEN BEGIN 683 // from: 682.1
  SAY #80563 /* ~So you believe I should take command of the Trust, and lead its followers to Selûne's light.~ [OH80563] */
  IF ~~ THEN GOTO 684
END

IF ~~ THEN BEGIN 684 // from: 683.0 681.2 680.1 678.1
  SAY #80564 /* ~And if the Battle Master won't stand aside?~ [OH80564] */
  IF ~~ THEN REPLY #80565 /* ~If he's got his followers' best interest at heart, he will.~ */ GOTO 686
  IF ~~ THEN REPLY #80566 /* ~Then you've got a decision to make.~ */ GOTO 686
  IF ~~ THEN REPLY #80567 /* ~Then you must sweep him aside. For the good of all who have followed him.~ */ GOTO 685
END

IF ~~ THEN BEGIN 685 // from: 684.2
  SAY #80568 /* ~Maybe someday it will come to that. But not today.~ [OH80568] */
  IF ~~ THEN GOTO 679
END

IF ~~ THEN BEGIN 686 // from: 684.1 684.0
  SAY #80569 /* ~Master of Combat, may I speak with you?~ [OH80569] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 74
END

IF ~~ THEN BEGIN 687 // from:
  SAY #80579 /* ~Hold, <CHARNAME>. There's been enough death here this day.~ [OH80579] */
  IF ~~ THEN REPLY #80580 /* ~Only a fool would try to deny it. Forgive me, Battle Master. My passion on this issue carried me away.~ */ EXTERN ~OHRMOCOM~ 77
  IF ~~ THEN REPLY #80581 /* ~As you wish.~ */ GOTO 689
  IF ~~ THEN REPLY #80582 /* ~No. We're still one death short. The Master of Combat's.~ */ EXTERN ~OHRMOCOM~ 78
END

IF ~~ THEN BEGIN 688 // from:
  SAY #80586 /* ~You think me unworthy?~ [OH80586] */
  IF ~~ THEN REPLY #80587 /* ~He merely asks a question, Rasaad. Don't let anger cloud your judgment.~ */ GOTO 689
  IF ~~ THEN REPLY #80588 /* ~It matters not what he thinks. Tell him to bend his knee or suffer the consequences.~ */ EXTERN ~OHRMOCOM~ 80
  IF ~~ THEN REPLY #80589 /* ~He let Alorgoth pull his strings for months, and he finds you unworthy? I'll kill the dog myself!~ */ EXTERN ~OHRMOCOM~ 81
END

IF ~~ THEN BEGIN 689 // from: 688.0 687.1
  SAY #80597 /* ~Master of Combat, you know I have the utmost respect for you, both as a warrior and a man. But you served the will of Alorgoth and in doing so nearly saw the Trust to ultimate destruction.~ [OH80597] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 84
END

IF ~~ THEN BEGIN 690 // from:
  SAY #80599 /* ~I believe there is something valuable here. A solid foundation upon which we might build something great. But these people cannot trust their old leaders. For the Trust to thrive, someone new must take control.~ [OH80599] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 85
END

IF ~~ THEN BEGIN 691 // from:
  SAY #80601 /* ~Not rule, but lead. If you'll accept me in the role.~ [OH80601] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #80602 /* ~You know this man, Master of Combat—you taught him. In your heart of hearts, you must know he and Selûne are the Trust's best hope.~ */ EXTERN ~OHRMOCOM~ 90
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #80602 /* ~You know this man, Master of Combat—you taught him. In your heart of hearts, you must know he and Selûne are the Trust's best hope.~ */ EXTERN ~OHRMOCOM~ 87
  IF ~~ THEN REPLY #80603 /* ~Please don't challenge him to a trial by combat. PLEASE don't challenge him to a trial by combat...~ */ EXTERN ~OHRMOCOM~ 87
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #80604 /* ~You have a new master now. Kneel before Rasaad.~ */ EXTERN ~OHRMOCOM~ 90
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #80604 /* ~You have a new master now. Kneel before Rasaad.~ */ EXTERN ~OHRMOCOM~ 86
END

IF ~~ THEN BEGIN 692 // from:
  SAY #80607 /* ~Trial by combat.~ [OH80607] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #80608 /* ~I beg you to reconsider. This day has seen enough blood shed.~ */ EXTERN ~OHRMOCOM~ 90
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #80608 /* ~I beg you to reconsider. This day has seen enough blood shed.~ */ EXTERN ~OHRMOCOM~ 88
  IF ~~ THEN REPLY #80609 /* ~Beat the living hell out of each other like civilized men. Of course. You wouldn't want to do something crazy, like let the group vote on their leader or something.~ */ EXTERN ~OHRMOCOM~ 88
  IF ~~ THEN REPLY #80610 /* ~You want a fight, monk? I'll give you a trial.~ */ EXTERN ~OHRMOCOM~ 81
END

IF WEIGHT #26 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("ohr_watch_rasaad_mocom","oh4100",2)
Dead("ohrmocom")
~ THEN BEGIN 693 // from:
  SAY #80612 /* ~What have you done, <CHARNAME>?~ [OH80612] */
  IF ~~ THEN REPLY #80613 /* ~He was a servant of Alorgoth. He needed to be eliminated. Now address your followers—before their weapons address us and more blood is shed.~ */ DO ~SetGlobal("ohr_watch_rasaad_mocom","oh4100",0)
~ EXTERN ~OHRDMH1~ 4
  IF ~~ THEN REPLY #80614 /* ~I've done you a favor. You're welcome.~ */ DO ~SetGlobal("ohr_watch_rasaad_mocom","oh4100",0)
~ EXTERN ~OHRDMH1~ 6
  IF ~~ THEN REPLY #80615 /* ~I removed the final obstacle to your taking control of the Twofold Trust.~ */ DO ~SetGlobal("ohr_watch_rasaad_mocom","oh4100",0)
~ EXTERN ~OHRDMH1~ 3
END

IF ~~ THEN BEGIN 694 // from: 695.0
  SAY #80619 /* ~It is true. The Master of Combat is dead, and none feel his loss more deeply than I. But hear me, you men and women of the Twofold Trust: While I admired and respected the Battle Master, his judgment was impaired. He was led astray by the fiend Alorgoth. Your order needs a new leader—one who sees clearly, one beholden to only the truth, one who was not fooled by the deception of Collus Darathon. Follow me now, and I promise you a new and brighter day for all who seek the truth.~ [OH80619] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",2)
~ EXTERN ~OHRDMH2~ 7
END

IF ~~ THEN BEGIN 695 // from:
  SAY #80626 /* ~WAIT!~ [OH80626] */
  IF ~~ THEN GOTO 694
END

IF ~~ THEN BEGIN 696 // from:
  SAY #80635 /* ~They speak the truth. I am sorry, master, but for the good of my people, you must die.~ [OH80635] */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 91
END

IF ~~ THEN BEGIN 697 // from:
  SAY #80637 /* ~You were a puppet of Alorgoth who blindly led your people towards destruction. There is no place for you in the Trust that I shall build.~ [OH80637] */
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("ohr_watch_rasaad_mocom","oh4100",4)
ActionOverride("ohrmocom",FaceObject("rasaad"))
Wait(1)
MoveToObject("ohrmocom")
FaceObject("ohrmocom")
Wait(1)
CreateVisualEffectObject("SPGRWHRL",Myself)
PlaySound("WWATTACK")
SmallWait(5)
SetSequence(SEQ_ATTACK_SLASH)
Wait(1)
ApplyDamagePercent("ohrmocom",100,PIERCING)
Wait(2)
ActionOverride("ohrdmh1",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 698 // from:
  SAY #80638 /* ~Will you serve me, Master of Combat?~ */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 92
END

IF ~~ THEN BEGIN 699 // from:
  SAY #80641 /* ~They are joking, master. It's one of <CHARNAME>'s habits, and one I've been unable to break.~ [OH80641] */
  IF ~~ THEN GOTO 700
END

IF ~~ THEN BEGIN 700 // from: 699.0
  SAY #80642 /* ~You taught me many things, Master of Combat. I sincerely hope that will continue to be the case as we forge this new Trust together.~ [OH80642] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
~ EXTERN ~OHRMOCOM~ 94
END

IF WEIGHT #27 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_PLOT","GLOBAL",5)
Global("OHR_RASAAD_TFT","GLOBAL",3)
AreaCheck("OH4100")
Global("ohr_sharrans_dead","oh4100",1)
~ THEN BEGIN 701 // from:
  SAY #80645 /* ~No! Alorgoth yet lives!~ [OH80645] */
  IF ~~ THEN REPLY #80646 /* ~So do we, my friend. Let's count our blessings where we may.~ */ DO ~SetGlobal("OHR_PLOT","GLOBAL",6)
~ GOTO 702
  IF ~~ THEN REPLY #80647 /* ~It won't last, Rasaad. We'll make sure of it, I promise you.~ */ DO ~SetGlobal("OHR_PLOT","GLOBAL",6)
~ GOTO 703
  IF ~~ THEN REPLY #80648 /* ~Calm yourself, Rasaad. This is but a temporary setback.~ */ DO ~SetGlobal("OHR_PLOT","GLOBAL",6)
~ GOTO 707
END

IF ~~ THEN BEGIN 702 // from: 701.0
  SAY #80649 /* ~Whose blessing would that be, <CHARNAME>? Selûne's? Shar's? The Twofold Goddess's?~ [OH80649] */
  IF ~~ THEN REPLY #80650 /* ~Selûne's, of course. You would have no other's, I know.~ */ GOTO 703
  IF ~~ THEN REPLY #80651 /* ~When it comes to blessings, I try not to be so picky. Let's go.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 717
  IF ~~ THEN REPLY #80652 /* ~Take your pick. In the end, one's worth the same as another.~ */ GOTO 703
END

IF ~~ THEN BEGIN 703 // from: 702.2 702.0 701.1
  SAY #80653 /* ~I wish I were as certain of that as you seem to be, <CHARNAME>.~ [OH80653] */
  IF ~~ THEN REPLY #80654 /* ~You will be, in time.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
AddJournalEntry(85088,INFO)
~ GOTO 705
  IF ~~ THEN REPLY #80655 /* ~Yes, well. "Seem" may be the key word there.~ */ GOTO 704
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80656 /* ~You harbor doubts?~ */ EXTERN ~VICONIJ~ 372
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80656 /* ~You harbor doubts?~ */ GOTO 706
END

IF ~~ THEN BEGIN 704 // from: 703.1
  SAY #80657 /* ~Do you believe I hold Selûne in my heart, <CHARNAME>? The things I've done of late... broken my vows, turned against the Sun Soul philosophy... Once, I was sure of where I stood. No longer.~ [OH80657] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80658 /* ~I believe Selûne smiles on those who are true, Rasaad. And I know none more true than you.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
AddJournalEntry(85088,INFO)
~ EXTERN ~VICONIJ~ 373
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80658 /* ~I believe Selûne smiles on those who are true, Rasaad. And I know none more true than you.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",1)
AddJournalEntry(85088,INFO)
~ GOTO 705
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80659 /* ~Not knowing where you stand isn't necessarily a bad thing. It means you need to keep your eyes on the ground and watch your step. People who don't know where they stand are far less likely to trip.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
AddJournalEntry(85088,INFO)
~ EXTERN ~VICONIJ~ 374
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80659 /* ~Not knowing where you stand isn't necessarily a bad thing. It means you need to keep your eyes on the ground and watch your step. People who don't know where they stand are far less likely to trip.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
AddJournalEntry(85088,INFO)
~ GOTO 705
  IF ~~ THEN REPLY #80660 /* ~Save your self-pity for another day, Rasaad. While Alorgoth lives, you've more important things to consider than your relationship with the Moonmaiden.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 705
END

IF ~~ THEN BEGIN 705 // from: 704.4 704.3 704.1 703.0
  SAY #80661 /* ~Your words comfort me, <CHARNAME>, and few things do these days. I thank you for that.~ [OH80661] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 706 // from: 703.3
  SAY #80662 /* ~I'm ashamed to admit I do. I have sacrificed everything, and what have I to show for it? My hands are empty and my heart heavy with despair.~ [OH80662] */
  IF ~  !Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #97296 /* ~You say you have nothing. I say there is much for you here... if you have the strength to accept it.~ */ GOTO 708
  IF ~  Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN GOTO 713
END

IF ~~ THEN BEGIN 707 // from: 701.2
  SAY #80663 /* ~A temporary setback, <CHARNAME>? For you, perhaps. I have sacrificed everything I cherished, and what have I to show for it? Nothing!~ [OH80663] */
  IF ~  !Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80664 /* ~You say you have nothing. I say there is much for you to take here... if you have the strength to do so.~ */ GOTO 708
  IF ~  Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN GOTO 713
END

IF ~~ THEN BEGIN 708 // from: 707.0 706.0
  SAY #80665 /* ~What are you saying?~ [OH80665] */
  IF ~~ THEN REPLY #80666 /* ~You know the Sun Soul order has no place for you now. Its restraints serve many well—but they bind you, make you weaker. That is why you turned to deceit rather than your fellow monks when seeking your vengeance.~ */ GOTO 710
  IF ~~ THEN REPLY #80667 /* ~Nothing of any import, I'm sure. Feel free to ignore me.~ */ GOTO 718
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80668 /* ~The Trust is weakened, but not broken. With the right man in charge, it could become a force to be reckoned with.~ */ EXTERN ~VICONIJ~ 375
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80668 /* ~The Trust is weakened, but not broken. With the right man in charge, it could become a force to be reckoned with.~ */ GOTO 709
END

IF ~~ THEN BEGIN 709 // from: 710.2 708.3
  SAY #80669 /* ~You believe I should lead the Trust?~ [OH80669] */
  IF ~~ THEN GOTO 721
END

IF ~~ THEN BEGIN 710 // from: 708.0
  SAY #80670 /* ~I fear you are right.~ [OH80670] */
  IF ~~ THEN REPLY #80671 /* ~There's nothing there to fear, Rasaad. The Trust offers an opportunity to continue worshipping Selûne in a more realistic, less restrictive manner than her sect in the Sun Soul order.~ */ GOTO 712
  IF ~~ THEN REPLY #80672 /* ~Then take the opportunity being offered. Join the Twofold Trust. Forge it into a weapon that will stab Alorgoth in his black heart.~ */ GOTO 711
  IF ~~ THEN REPLY #80673 /* ~Fear? Fear won't help you avenge your brother. An order of warrior monks under your command is another matter entirely.~ */ GOTO 709
END

IF ~~ THEN BEGIN 711 // from: 710.1
  SAY #80674 /* ~You have never led me wrong, <CHARNAME>. I will take your advice. Perhaps the Twofold Truth does hold the peace I seek.~ [OH80674] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 712 // from: 710.0
  SAY #80675 /* ~You say I should join the Trust?~ [OH80675] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80676 /* ~Listen to your heart, Rasaad. What does it say?~ */ EXTERN ~VICONIJ~ 376
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80676 /* ~Listen to your heart, Rasaad. What does it say?~ */ GOTO 713
  IF ~~ THEN REPLY #80677 /* ~These are people like you, Rasaad. People who found the teachings of their leaders unworkable. You could do worse.~ */ GOTO 716
  IF ~~ THEN REPLY #80678 /* ~I say you should lead it.~ */ GOTO 721
END

IF ~~ THEN BEGIN 713 // from: 720.0 712.1 707.1 706.1
  SAY #80679 /* ~In truth, <CHARNAME>, I no longer know my own heart.~ [OH80679] */
  IF ~  !Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80680 /* ~Then stay with me for now. Your path will become clear in time, I'm sure of it.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 717
  IF ~  !Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80681 /* ~You'll figure it out. You just need some time to rest.~ */ GOTO 716
  IF ~  !Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80682 /* ~Then we must part for now. When you see things clearly again, I'll be waiting.~ */ DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
  IF ~  Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80680 /* ~Then stay with me for now. Your path will become clear in time, I'm sure of it.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 717
  IF ~  Global("OHR_RASAAD_TFT","GLOBAL",3)
~ THEN REPLY #80681 /* ~You'll figure it out. You just need some time to rest.~ */ DO ~SetGlobal("OHR_TFT_OUTCOME","GLOBAL",2)
~ GOTO 717
END

IF ~~ THEN BEGIN 714 // from:
  SAY #80683 /* ~These are serious matters, <CHARNAME>. Do not make light of them.~ */
  IF ~~ THEN REPLY #80684 /* ~I'm sorry, my friend. I shouldn't have teased you. This can't be an easy decision.~ */ GOTO 715
  IF ~~ THEN REPLY #80685 /* ~You see? You're made for the monk's life. And the Sun Soul order will never accept you again, not after what you pulled.~ */ GOTO 716
  IF ~~ THEN REPLY #80686 /* ~There was a kernel of truth in my jest. Why settle for a single goddess when you can answer the call of two?~ */ GOTO 719
END

IF ~~ THEN BEGIN 715 // from: 714.0
  SAY #80687 /* ~It is not. But I believe I have made it.~ */
  IF ~~ THEN GOTO 717
END

IF ~~ THEN BEGIN 716 // from: 719.1 714.1 713.1 712.2
  SAY #80688 /* ~Perhaps there is something in what you say. Many of my fellow monks found solace in the Twofold—though the comfort was built on a false premise, there is still some value in it, is there not? Yes, I shall stay here, at least for a time. Help rebuild. Guide them towards Selûne's light. And then, when the time is right... Alorgoth is still out there...~ [OH80688] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",1)
AddJournalEntry(85093,QUEST_DONE)
LeaveParty()
GivePartyAllEquipment()
~ EXIT
END

IF ~~ THEN BEGIN 717 // from: 718.0 715.0 713.4 713.3 713.0 702.1
  SAY #80689 /* ~You have always guided me well. As long as you'll have me, I'll be at your side.~ [OH80689] */
  IF ~~ THEN DO ~AddJournalEntry(85088,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN DO ~AddJournalEntry(85088,INFO)
~ EXTERN ~VICONIJ~ 377
END

IF ~~ THEN BEGIN 718 // from: 726.2 719.0 708.1
  SAY #80690 /* ~I may disagree with you from time to time, <CHARNAME>, but I'll never ignore you.~ [OH80690] */
  IF ~~ THEN GOTO 717
END

IF ~~ THEN BEGIN 719 // from: 714.2
  SAY #80691 /* ~What you suggest is heresy.~ */
  IF ~~ THEN REPLY #80692 /* ~Then ignore me. I seek only to offer you a fresh perspective.~ */ GOTO 718
  IF ~~ THEN REPLY #80693 /* ~A heresy embraced by how many of your fellow Sun Soul followers?~ */ GOTO 716
  IF ~~ THEN REPLY #80694 /* ~Heresy is nothing but a truth that hasn't yet been embraced.~ */ GOTO 720
END

IF ~~ THEN BEGIN 720 // from: 719.2
  SAY #80695 /* ~And you would have me embrace the Twofold?~ */
  IF ~~ THEN REPLY #80696 /* ~What does your heart say? It won't lead you wrong.~ */ GOTO 713
  IF ~~ THEN REPLY #80697 /* ~I would have you do that which will make you happiest. When you've reached a decision, well, I'm not hard to find.~ */ EXIT
  IF ~~ THEN REPLY #80698 /* ~No, Rasaad. I would have you lead it.~ */ GOTO 721
END

IF ~~ THEN BEGIN 721 // from: 720.2 712.3 709.0
  SAY #80699 /* ~Me?~ [OH80699] */
  IF ~~ THEN REPLY #80700 /* ~If that is your will, yes.~ */ GOTO 722
  IF ~~ THEN REPLY #80701 /* ~Someone's got to. The Master of Combat is dead, and Collus Darathon stands revealed as a fraud. Who else can guide these lost souls back to Selûne's light?~ */ GOTO 722
  IF ~~ THEN REPLY #80702 /* ~Who better?~ */ GOTO 722
END

IF ~~ THEN BEGIN 722 // from: 721.2 721.1 721.0
  SAY #80703 /* ~The idea makes me...~ [OH80703] */
  IF ~~ THEN REPLY #80704 /* ~Uncomfortable?~ */ GOTO 723
  IF ~~ THEN REPLY #80705 /* ~Nervous?~ */ GOTO 723
  IF ~~ THEN REPLY #80706 /* ~Excited?~ */ GOTO 724
END

IF ~~ THEN BEGIN 723 // from: 722.1 722.0
  SAY #80707 /* ~Yes.~ [OH80707] */
  IF ~~ THEN GOTO 726
END

IF ~~ THEN BEGIN 724 // from: 722.2
  SAY #80708 /* ~Uncomfortable.~ [OH80708] */
  IF ~~ THEN GOTO 726
END

IF ~~ THEN BEGIN 725 // from: 726.0
  SAY #80709 /* ~I'll stay here for a time. Help them rebuild—make sure what they construct is on a firm foundation. And when I'm satisfied that job's complete... Alorgoth awaits.~ [OH80709] */
  IF ~~ THEN GOTO 729
END

IF ~~ THEN BEGIN 726 // from: 724.0 723.0
  SAY #80710 /* ~Ah! You are giving me a headache.~ [OH80710] */
  IF ~~ THEN REPLY #80711 /* ~I'm sorry, my friend. I know this can't be easy for you. But the time has come for you to choose a path. What's it going to be?~ */ GOTO 725
  IF ~~ THEN REPLY #80712 /* ~That's because you're not used to thinking. Don't worry, it'll pass.~ */ GOTO 727
  IF ~~ THEN REPLY #80713 /* ~This isn't a hard decision to make, Rasaad. If you want to join the Trust, do so. If you want to lead it, do that. If you want to stay with me, I can always use a man of your talents. Hell, if you want to try and return to the Sun Soul order, I'll even support you in that (though I can't honestly say I expect you'll succeed.) Pick a path. Walk it. It's simple.~ */ GOTO 718
END

IF ~~ THEN BEGIN 727 // from: 726.1
  SAY #80714 /* ~Your humor holds no comfort for me, <CHARNAME>.~ [OH80714] */
  IF ~~ THEN GOTO 728
END

IF ~~ THEN BEGIN 728 // from: 727.0
  SAY #80715 /* ~So... you believe I should take command of the Twofold Trust. Very well. ~ [OH80715] */
  IF ~~ THEN GOTO 729
END

IF ~~ THEN BEGIN 729 // from: 728.0 725.0
  SAY #80716 /* ~Hear me, you men and women of the Twofold Trust! You have been led astray by the fiend Alorgoth, and it nearly destroyed you. Nearly. For Alorgoth thought you weak in body, mind, and spirit. You have proven him wrong this day. You can recover from this blow, stronger and more committed than ever before. I tell you, you shall be redeemed! I promise you a new and brighter day in the Moonmaiden's service. From Alorgoth's shadows, I shall lead you into the light! Who is with me?~ [OH80716] */
  IF ~~ THEN DO ~SetGlobal("ohr_rasaad_stays_tft","global",2)
~ EXTERN ~OHRDMH2~ 12
END

IF WEIGHT #28 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_HOSTILE_TALK","LOCALS",1)
~ THEN BEGIN 730 // from:
  SAY #80827 /* ~What have you done, <CHARNAME>?~ [OH80827] */
  IF ~~ THEN REPLY #80828 /* ~Excuse me?~ */ DO ~SetGlobal("OHR_HOSTILE_TALK","LOCALS",2)
~ GOTO 731
  IF ~~ THEN REPLY #80829 /* ~Could you be a bit more specific?~ */ DO ~SetGlobal("OHR_HOSTILE_TALK","LOCALS",2)
~ GOTO 741
  IF ~~ THEN REPLY #80830 /* ~I fought your enemies at your side. You have a problem with this?~ */ DO ~SetGlobal("OHR_HOSTILE_TALK","LOCALS",2)
~ GOTO 734
END

IF ~~ THEN BEGIN 731 // from: 741.0 730.0
  SAY #80831 /* ~All is lost! The Trust will never accept me now—and I'll never learn the truth about Collus Darathon. My brother's spirit cries out for vengeance, and I have nothing to give him.~ [OH80831] */
  IF ~~ THEN REPLY #80832 /* ~Take heart, Rasaad. If Darathon is indeed Alorgoth, then he is a target of both the Sun Soul and Dark Moon orders. If he survives that, you will have other chances to avenge your brother, I'm sure of it.~ */ GOTO 733
  IF ~~ THEN REPLY #80833 /* ~Nothing you could give him will bring your brother back to life, Rasaad. You'd do well to accept that—if not well, better than you have so far.~ */ GOTO 736
  IF ~~ THEN REPLY #80834 /* ~It is your heart that yearns for vengeance, Rasaad. Leave your brother out of it.~ */ GOTO 732
END

IF ~~ THEN BEGIN 732 // from: 731.2
  SAY #80835 /* ~And if that's true? Have I not earned my revenge?~ [OH80835] */
  IF ~~ THEN REPLY #80836 /* ~Patience, Rasaad. Your day will come, I am sure of it.~ */ GOTO 733
  IF ~~ THEN REPLY #80837 /* ~I'm really not qualified to say. Take it up with Selûne.~ */ GOTO 740
  IF ~~ THEN REPLY #80838 /* ~We don't always get what we deserve. Make peace with that fact and get on with your life.~ */ GOTO 735
END

IF ~~ THEN BEGIN 733 // from: 732.0 731.0
  SAY #80839 /* ~Would that I had your confidence, <CHARNAME>.~ [OH80839] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 264
END

IF ~~ THEN BEGIN 734 // from: 730.2
  SAY #80841 /* ~My enemy is Alorgoth, and he still lives.~ [OH80841] */
  IF ~~ THEN REPLY #80842 /* ~With all due respect, Rasaad, there's no proof of that.~ */ GOTO 735
  IF ~~ THEN REPLY #80843 /* ~Cheer up, Rasaad. That can't last forever.~ */ GOTO 746
  IF ~~ THEN REPLY #80844 /* ~Then rejoice. You still have time to kill him.~ */ GOTO 742
END

IF ~~ THEN BEGIN 735 // from: 734.0 732.2
  SAY #80845 /* ~Now you doubt me, <CHARNAME>?~ [OH80845] */
  IF ~~ THEN REPLY #80846 /* ~The loss of a brother is no small thing. I fear you're not thinking straight.~ */ GOTO 736
  IF ~~ THEN REPLY #80847 /* ~Doubt you? Perhaps a little. But more than that, I fear for you, my friend. This path you're on will surely lead to your doom.~ */ GOTO 745
  IF ~~ THEN REPLY #80848 /* ~Does it matter? I came here on your behalf.~ */ GOTO 747
END

IF ~~ THEN BEGIN 736 // from: 735.0 731.1
  SAY #80849 /* ~Perhaps... You're right. I need to take some time—meditate, clear my head.~ [OH80849] */
  IF ~~ THEN REPLY #80850 /* ~Take as long as you need, my friend. You know I'm here for you when you need me.~ */ GOTO 737
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #80851 /* ~The last thing you need right now is to be on your own. Stay with me—let me help you through this.~ */ GOTO 738
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #80851 /* ~The last thing you need right now is to be on your own. Stay with me—let me help you through this.~ */ GOTO 739
  IF ~~ THEN REPLY #80852 /* ~You spend too much time in your head as it is. What you need is blood—the thrill of battle.~ */ GOTO 748
END

IF ~~ THEN BEGIN 737 // from: 736.0
  SAY #80853 /* ~I appreciate it. More than you can know. Farewell, <CHARNAME>.~ [OH80853] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 738 // from: 736.1
  SAY #80854 /* ~Very well. We have come this far together; it makes little sense to part now.~ [OH80854] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 739 // from: 736.2
  SAY #80855 /* ~I know you mean well, <CHARNAME>. But I fear I'll soon find myself in a dark place, and I'd not drag you down there with me. I appreciate what you've done for me—more than you will ever know. But this is where we part ways—at least for the time being.~ [OH80855] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 740 // from: 732.1
  SAY #80856 /* ~Maybe someday I shall.~ [OH80856] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 741 // from: 730.1
  SAY #80857 /* ~You have seen us driven from the Twofold's temple.~ [OH80857] */
  IF ~~ THEN GOTO 731
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 265
END

IF ~~ THEN BEGIN 742 // from: 734.2
  SAY #80859 /* ~You mock me?~ [OH80859] */
  IF ~~ THEN REPLY #80860 /* ~Merely trying to look on the bright side of things. As a worshipper of Selûne, I'd have thought you'd approve.~ */ GOTO 743
  IF ~~ THEN REPLY #80861 /* ~Not at all. I merely state the truth. While Alorgoth lives, so does your chance to avenge your brother.~ */ GOTO 744
END

IF ~~ THEN BEGIN 743 // from: 746.1 742.0
  SAY #80863 /* ~What you say is true, but it is also true that Alorgoth should have died today. And that is a bitter draught to swallow.~ [OH80863] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 744 // from: 742.1
  SAY #80862 /* ~Perhaps in time I'll be able to see this "bright side." For now, my heart is dark with the knowledge that Alorgoth has thwarted me.~ [OH80862] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 745 // from: 735.1
  SAY #80864 /* ~The only death I fear is a meaningless one. And after today I'm closer to that than ever before.~ [OH80864] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 746 // from: 734.1
  SAY #80865 /* ~You mock me?~ [OH80865] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80866 /* ~Merely trying to look on the bright side of things. As a worshipper of Selûne, I'd have thought you'd approve.~ */ EXTERN ~VICONIJ~ 266
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #80866 /* ~Merely trying to look on the bright side of things. As a worshipper of Selûne, I'd have thought you'd approve.~ */ GOTO 743
END

IF ~~ THEN BEGIN 747 // from: 735.2
  SAY #80868 /* ~And now I leave on yours. The Twofold Heretics will continue to spread their corruption. Their leader lives, and Gamaz is dead. This is a dark day, <CHARNAME>. A dark day indeed.~ [OH80868] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 748 // from: 736.3
  SAY #80869 /* ~I hope you're right, <CHARNAME>. And I trust that in your company I'll not have to wait long to find out.~ [OH80869] */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_REP8","LOCALS",1)
~ THEN BEGIN 749 // from:
  SAY #85123 /* ~I am concerned, <CHARNAME>.~ [OH85123] */
  IF ~~ THEN REPLY #85124 /* ~Concerned, Rasaad? About what?~ */ DO ~SetGlobal("OHR_REP8","LOCALS",2)
~ GOTO 755
  IF ~~ THEN REPLY #85125 /* ~All things considered, I can't say I blame you.~ */ DO ~SetGlobal("OHR_REP8","LOCALS",2)
~ GOTO 750
  IF ~~ THEN REPLY #85126 /* ~Would that this surprised me.~ */ DO ~SetGlobal("OHR_REP8","LOCALS",2)
~ GOTO 750
END

IF ~~ THEN BEGIN 750 // from: 755.0 749.2 749.1
  SAY #85127 /* ~The direction you are headed is fraught with danger—not just physically, but morally.~ [OH85127] */
  IF ~~ THEN REPLY #85128 /* ~I know you're right. I'll do what I can to steer myself in a less... unsavory direction.~ */ GOTO 754
  IF ~~ THEN REPLY #85129 /* ~I'm primarily concerned about the physical.~ */ GOTO 751
  IF ~~ THEN REPLY #85130 /* ~You are troubled by the morality of my actions?~ */ GOTO 753
END

IF ~~ THEN BEGIN 751 // from: 750.1
  SAY #85131 /* ~I know it, and that is why I wish to caution you. I cannot countenance some of the things I have witnessed in your company.~ [OH85131] */
  IF ~~ THEN REPLY #85132 /* ~You are a moral anchor in these troubled times, my friend. I will do what I can to make things more comfortable for you going forward.~ */ GOTO 754
  IF ~~ THEN REPLY #85133 /* ~You're not the only one having difficulty, Rasaad. I'll do what I can to ensure things get better going forward.~ */ GOTO 754
  IF ~~ THEN REPLY #85134 /* ~If you've a problem with it, perhaps it would be best if you left my company.~ */ GOTO 752
END

IF ~~ THEN BEGIN 752 // from: 753.2 751.2
  SAY #85135 /* ~If that is your wish, I shall abide by it. Fare thee well, <CHARNAME>.~ [OH85135] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 753 // from: 750.2
  SAY #85136 /* ~I cannot countenance some of the things I have witnessed in your company.~ [OH85136] */
  IF ~~ THEN REPLY #85137 /* ~I am truly sorry to hear that. I can make no promises, but I will see what I can do to ensure your comfort going forward—if not with events themselves, at least with my response to them.~ */ GOTO 754
  IF ~~ THEN REPLY #85138 /* ~Things have been pretty grim of late. I cannot promise they'll get better, but I will do what I can to improve things.~ */ GOTO 754
  IF ~~ THEN REPLY #85139 /* ~If you've a problem with it, perhaps it would be best if you left my company.~ */ GOTO 752
END

IF ~~ THEN BEGIN 754 // from: 753.1 753.0 751.1 751.0 750.0
  SAY #85140 /* ~I can ask for no more. Thank you, <CHARNAME>.~ [OH85140] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 755 // from: 749.0
  SAY #85141 /* ~The path you're on of late worries me.~ [OH85141] */
  IF ~~ THEN GOTO 750
END

IF WEIGHT #30 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("ohr_animal_fight","oh4100",1)
~ THEN BEGIN 756 // from:
  SAY #79170 /* ~Such a waste. These heretics have no sense of the sanctity of life.~ [OH79170] */
  IF ~~ THEN EXTERN ~OHRSLARA~ 2
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 229
END

IF ~~ THEN BEGIN 757 // from:
  SAY #78845 /* ~It is, Ghell.~ */
  IF ~~ THEN EXTERN ~OHRGHELL~ 17
END

IF WEIGHT #31 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHR_TEMPLE_BSSM","LOCALS",1)
AreaCheck("OH4100")
~ THEN BEGIN 758 // from:
  SAY #79103 /* ~Selûne's tears. What madness is this?~ [OH79103] */
  IF ~~ THEN DO ~SetGlobal("OHR_TEMPLE_BSSM","LOCALS",2)
~ EXTERN ~OHRBSSM1~ 0
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN DO ~SetGlobal("OHR_TEMPLE_BSSM","LOCALS",2)
~ EXTERN ~VICONIJ~ 304
END

IF ~~ THEN BEGIN 759 // from:
  SAY #97919 /* ~Each day, you are faced with decisions fraught with difficulty and danger. Yet you act without hesitation, always certain of your purpose. How do you manage it?~ */
  IF ~~ THEN REPLY #97920 /* ~Act first, think later. If I can avoid thinking at all, so much the better.~ */ GOTO 760
  IF ~~ THEN REPLY #97921 /* ~Is that how it seems? It's good to know I've fooled someone into thinking I know what I'm doing. Now if I could just convince myself...~ */ GOTO 761
  IF ~~ THEN REPLY #97922 /* ~That would be telling.~ */ GOTO 762
END

IF ~~ THEN BEGIN 760 // from: 759.0
  SAY #97923 /* ~That explains a great deal. ~ */
  IF ~~ THEN GOTO 763
END

IF ~~ THEN BEGIN 761 // from: 759.1
  SAY #97924 /* ~You make it look simple. It's... reassuring to know that's not the case.~ */
  IF ~~ THEN GOTO 763
END

IF ~~ THEN BEGIN 762 // from: 759.2
  SAY #97925 /* ~I wish I had your confidence.~ */
  IF ~~ THEN GOTO 763
END

IF ~~ THEN BEGIN 763 // from: 762.0 761.0 760.0
  SAY #97926 /* ~How can you be sure you are making the right choice?~ */
  IF ~~ THEN REPLY #97927 /* ~I can't. I do the best I can and live with the consequences.~ */ GOTO 765
  IF ~~ THEN REPLY #97928 /* ~I am very wise.~ */ GOTO 764
  IF ~~ THEN REPLY #97929 /* ~Being the child of a god does tend to give one a certain confidence.~ */ GOTO 765
END

IF ~~ THEN BEGIN 764 // from: 763.1
  SAY #97930 /* ~You are so quick to joke, but these are serious matters.~ */
  IF ~~ THEN GOTO 765
END

IF ~~ THEN BEGIN 765 // from: 764.0 763.2 763.0
  SAY #97931 /* ~It seems to me the decisions we face are becoming more and more complex.~ */
  IF ~~ THEN REPLY #97932 /* ~It's not just you. Things are getting harder.~ */ GOTO 766
  IF ~~ THEN REPLY #97933 /* ~I think we just understand more than we used to.~ */ GOTO 766
  IF ~~ THEN REPLY #97934 /* ~It's never been easy.~ */ GOTO 767
  IF ~~ THEN REPLY #97935 /* ~True. But we've more experience dealing with them. It evens out.~ */ GOTO 768
END

IF ~~ THEN BEGIN 766 // from: 768.0 767.0 765.1 765.0
  SAY #97936 /* ~I once saw things as either good or bad, light or dark. ~ */
  IF ~~ THEN GOTO 769
END

IF ~~ THEN BEGIN 767 // from: 765.2
  SAY #97937 /* ~You're right about that.~ */
  IF ~~ THEN GOTO 766
END

IF ~~ THEN BEGIN 768 // from: 765.3
  SAY #97938 /* ~I am glad that is the case for you. It is not so for me.~ */
  IF ~~ THEN GOTO 766
END

IF ~~ THEN BEGIN 769 // from: 766.0
  SAY #97939 /* ~Now all I see is gray. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 770 // from:
  SAY #102386 /* ~Is there no way to resolve this amicably, Balthazar?~ */
  IF ~~ THEN EXTERN ~BALTH~ 31
END

IF WEIGHT #32 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 771 // from:
  SAY #77507 /* ~Here beats Resurrection Gorge's dark heart. How long has it been since Selûne's light graced this place?~ [OH77507] */
  IF ~  !IsValidForPartyDialogue("imoen2")
~ THEN REPLY #77508 /* ~A long time, Rasaad, if she ever shone here at all.~ */ DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN REPLY #77508 /* ~A long time, Rasaad, if she ever shone here at all.~ */ EXTERN ~IMOEN2J~ 56
END

IF WEIGHT #33 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 772 // from:
  SAY #98215 /* ~I cannot believe you would take this monster into your bed. We are through, <CHARNAME>. ~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 793 794 795 even though they appear after this state */
~  Global("OHH_rasaadconflict","GLOBAL",2)
~ THEN BEGIN 773 // from:
  SAY #100173 /* ~You and Hexxat are becoming close of late.~ */
  IF ~~ THEN REPLY #100179 /* ~You've noticed.~ */ DO ~SetGlobal("OHH_rasaadconflict","GLOBAL",3)
~ GOTO 774
  IF ~~ THEN REPLY #100180 /* ~She intrigues me.~ */ DO ~SetGlobal("OHH_rasaadconflict","GLOBAL",3)
~ GOTO 774
  IF ~~ THEN REPLY #100181 /* ~Me and the vampire? Are you kidding? No.~ */ DO ~SetGlobal("OHH_rasaadconflict","GLOBAL",3)
~ GOTO 775
END

IF ~~ THEN BEGIN 774 // from: 773.1 773.0
  SAY #100174 /* ~Remember the bones of those young women in Dragomir's Tomb. Remember what happened to the woman you once called Hexxat.~ */
  IF ~~ THEN REPLY #100182 /* ~I remember them all too well.~ */ GOTO 775
  IF ~~ THEN REPLY #100183 /* ~What's life without a little excitement?~ */ GOTO 776
  IF ~~ THEN REPLY #100184 /* ~Everyone dies, Rasaad. Fools die quicker than most.~ */ GOTO 775
END

IF ~~ THEN BEGIN 775 // from: 776.0 774.2 774.0 773.2
  SAY #100175 /* ~Promise me you won't get involved with her, <CHARNAME>. I would not see you tossed aside like those others she has used.~ */
  IF ~~ THEN REPLY #100185 /* ~Don't worry. I have no such plans.~ */ GOTO 777
  IF ~~ THEN REPLY #100186 /* ~It's a risk I'm willing to take.~ */ GOTO 778
END

IF ~~ THEN BEGIN 776 // from: 774.1
  SAY #100176 /* ~Risking death excites you? I did not think you so reckless.~ */
  IF ~~ THEN GOTO 775
END

IF ~~ THEN BEGIN 777 // from: 775.0
  SAY #100177 /* ~I am glad to hear it.~ */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 778 // from: 775.1
  SAY #100178 /* ~I hope you will not regret it. ~ */
  IF ~~ THEN DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 779 // from:
  SAY #102406 /* ~This is no ordinary woman, <CHARNAME>. She reeks of evil.~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 592
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 128
END

IF ~~ THEN BEGIN 780 // from:
  SAY #102302 /* ~Do not be fooled, <CHARNAME>. Deal with this creature and you forfeit your soul.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 597
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 836
  IF ~  IsValidForPartyDialogue("rasaad")
IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 835
END

IF ~~ THEN BEGIN 781 // from:
  SAY #102306 /* ~I cannot be party to such an arrangement. Safe travels, <CHARNAME>. I will not be joining you.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 150
END

IF ~~ THEN BEGIN 782 // from:
  SAY #102306 /* ~I cannot be party to such an arrangement. Safe travels, <CHARNAME>. I will not be joining you.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 150
END

IF ~~ THEN BEGIN 783 // from:
  SAY #102306 /* ~I cannot be party to such an arrangement. Safe travels, <CHARNAME>. I will not be joining you.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 150
END

IF ~~ THEN BEGIN 784 // from:
  SAY #102306 /* ~I cannot be party to such an arrangement. Safe travels, <CHARNAME>. I will not be joining you.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 150
END

IF ~~ THEN BEGIN 785 // from:
  SAY #102310 /* ~Forgive me, <CHARNAME>, but this man's sincerity is less than convincing. We had best watch our step.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 131
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 603
END

IF ~~ THEN BEGIN 786 // from:
  SAY #102326 /* ~We must do all we can to recover it.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 605
END

IF ~~ THEN BEGIN 787 // from:
  SAY #102326 /* ~We must do all we can to recover it.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 606
END

IF ~~ THEN BEGIN 788 // from:
  SAY #102326 /* ~We must do all we can to recover it.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 607
END

IF ~~ THEN BEGIN 789 // from:
  SAY #102328 /* ~The only thing that ends here is your evil, vampire!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ GOTO 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 611
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 840
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 135
END

IF ~~ THEN BEGIN 790 // from:
  SAY #102338 /* ~Shar worshipper or no, <CHARNAME>, we cannot leave her like this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 791 // from:
  SAY #102338 /* ~Shar worshipper or no, <CHARNAME>, we cannot leave her like this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 792 // from:
  SAY #102338 /* ~Shar worshipper or no, <CHARNAME>, we cannot leave her like this.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("OH_UnderdarkComments","GLOBAL",1)
~ THEN BEGIN 793 // from:
  SAY #102297 /* ~I know not where we are, <CHARNAME>, but I will tell you this: Selûne's light shines weakly here, if at all.~ */
  IF ~~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 612
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 137
END

IF WEIGHT #1 ~  Global("OH_tanner","AR0502",1)
~ THEN BEGIN 794 // from:
  SAY #102314 /* ~Selûne's light, what is that *stench*?~ */
  IF ~~ THEN DO ~SetGlobal("OH_tanner","AR0502",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 614
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 139
END

IF WEIGHT #2 ~  Global("OH_Adalon","AR2102",1)
~ THEN BEGIN 795 // from:
  SAY #102333 /* ~<CHARNAME>, no! You cannot! Adalon, I come to your aid!~ */
  IF ~~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
ChangeAIScript("",DEFAULT)
Enemy()
LeaveParty()
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 845
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 615
END
