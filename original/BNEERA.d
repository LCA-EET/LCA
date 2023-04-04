// creator  : weidu (version 24900)
// argument : BNEERA.DLG
// game     : .
// source   : ./override/BNEERA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BNEERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #102020 /* ~That's too bad. I've got a really good one.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  !Global("NeeraRomanceActive","GLOBAL",1)
!Global("NeeraRomanceActive","GLOBAL",2)
IsValidForPartyDialogue(Player1)
IsValidForPartyDialogue(Myself)
CombatCounter(0)
!See([ENEMY])
!AreaType(DUNGEON)
!Global("chapter","GLOBAL",17)
OR(2)
GlobalLT("OHN_PLOT","GLOBAL",3)
GlobalGT("OHN_PLOT","GLOBAL",5)
Global("OHN_friendtalks","GLOBAL",1)
RealGlobalTimerExpired("OHN_friendtalkstimer","GLOBAL")
~ THEN BEGIN 1 // from:
  SAY #98563 /* ~So how does it feel to call the shots? No one named you leader, but you seem to come by it pretty naturally.~ */
  IF ~~ THEN REPLY #98564 /* ~It's a privilege, but it's also a burden. I feel responsible for all of you.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",2)
RealSetGlobalTimer("OHN_friendtalkstimer","GLOBAL",10800)
~ GOTO 2
  IF ~~ THEN REPLY #98565 /* ~Do I? Every day, I wake up astonished that people are still following me around.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",2)
RealSetGlobalTimer("OHN_friendtalkstimer","GLOBAL",10800)
~ GOTO 4
  IF ~~ THEN REPLY #98566 /* ~I would have it no other way. I was born to lead.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",2)
RealSetGlobalTimer("OHN_friendtalkstimer","GLOBAL",10800)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #98567 /* ~I think that's how I would feel. It would probably end up being too much for me.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 5.0 4.0 2.0
  SAY #98568 /* ~I've had a taste of being a leader at the camp, though Telana has carried more of the weight than I have. I've learned that things... go wrong a lot.~ */
  IF ~~ THEN REPLY #98569 /* ~I suppose that's what leaders are for—to help make decisions when things don't go the way people expect.~ */ GOTO 6
  IF ~~ THEN REPLY #98570 /* ~It's true. I often feel less like a leader and more like someone who's forced to salvage good things from bad circumstances.~ */ GOTO 8
  IF ~~ THEN REPLY #98571 /* ~A strong leader is prepared for all eventualities, especially the worst ones.~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #98572 /* ~Ha! Yes, sometimes I wake up astonished to find myself still in your company. There's just something about you, though. It smells like destiny.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #98573 /* ~That's confident! Do all successful leaders lack humility?~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #98574 /* ~The world must be full of leaders, then, because I don't think things EVER go the way people expect.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 9.0 8.0 6.0
  SAY #98575 /* ~In any case, I suppose we should get back to what we were doing. "Lead on," as they say.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #98576 /* ~Like fire arrows from kobold corpses, or sphene gems from basilisks. I get it.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #98577 /* ~Wow, this "strong leader" of yours sounds really, really boring! Don't ever bring <PRO_HIMHER> to a party.~ */
  IF ~~ THEN GOTO 7
END

IF WEIGHT #1 ~  !Global("NeeraRomanceActive","GLOBAL",1)
!Global("NeeraRomanceActive","GLOBAL",2)
IsValidForPartyDialogue(Player1)
IsValidForPartyDialogue(Myself)
CombatCounter(0)
!See([ENEMY])
!AreaType(DUNGEON)
!Global("chapter","GLOBAL",17)
Global("OHN_friendtalks","GLOBAL",2)
RealGlobalTimerExpired("OHN_friendtalkstimer","GLOBAL")
~ THEN BEGIN 10 // from:
  SAY #98578 /* ~Do you notice the way people look at you wherever we go? You've made quite the name for yourself here. Sometimes I feel like I'm traveling with royalty or, you know, someone with an improbable deformity.~ */
  IF ~~ THEN REPLY #98579 /* ~My deeds have won me some acclaim, but I don't let such things go to my head.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #98580 /* ~Do they? I haven't noticed.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",3)
~ GOTO 12
  IF ~~ THEN REPLY #98581 /* ~Of course they stare. Their awe is but a meager tribute to all that I have done.~ */ DO ~SetGlobal("OHN_friendtalks","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #98582 /* ~That's good! I'd have a hard time not letting it go to my head if I were you. ~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #98583 /* ~Look at that! Already too famous to care what the world thinks of you.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #98584 /* ~Can you move your head for a second? It's blocking my view of EVERYTHING.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 12.0 11.0
  SAY #98585 /* ~I know that I'm just riding your coattails, but I wanted to say that I'm proud, in my way, to be riding them. Even if all the corpses you leave behind do make the road a little bumpy.~ */
  IF ~~ THEN REPLY #98586 /* ~You're not riding anyone's coattails, Neera. What would I do without you?~ */ GOTO 15
  IF ~~ THEN REPLY #98587 /* ~Thanks. Now back to the coattails with you!~ */ GOTO 16
  IF ~~ THEN REPLY #98588 /* ~You're "proud"? It's foolish to take pride in the accomplishments of others.~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #98589 /* ~Simple: You'd fill my spot with a less attractive and less intriguing spellcaster. Still, that's nice of you—thanks!~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #98590 /* ~Ha ha ha! Fine, but don't forget that being on the coattails gives me a good position from which to kick your posterior.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #98591 /* ~Not as foolish as trying to compliment a person who already thinks too highly of <PRO_HIMHER>self, apparently.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0 15.0
  SAY #98592 /* ~Anyway, lead on. More brilliant fame and glory await you. I'll just be avoiding the glare here in your shadow.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 117 even though they appear after this state */
~  IsValidForPartyDialogue(Player1)
IsValidForPartyDialogue(Myself)
CombatCounter(0)
!See([ENEMY])
!AreaType(DUNGEON)
!Global("chapter","GLOBAL",17)
OR(2)
GlobalLT("OHN_PLOT","GLOBAL",3)
GlobalGT("OHN_PLOT","GLOBAL",5)
Global("OHN_WM_PC","LOCALS",1)
GlobalTimerExpired("OHN_WM_PC_TIMER","GLOBAL")
~ THEN BEGIN 19 // from:
  SAY #98611 /* ~So how have you been, <CHARNAME>?~ */
  IF ~~ THEN REPLY #98612 /* ~Well.~ */ DO ~SetGlobal("OHN_WM_PC","LOCALS",2)
~ GOTO 20
  IF ~~ THEN REPLY #98613 /* ~Not so well.~ */ DO ~SetGlobal("OHN_WM_PC","LOCALS",2)
~ GOTO 21
  IF ~~ THEN REPLY #98614 /* ~Didn't I already tell you how I've been?~ */ DO ~SetGlobal("OHN_WM_PC","LOCALS",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 21.0 19.2 19.0
  SAY #98615 /* ~I mean, you know. With the magic.~ */
  IF ~~ THEN REPLY #98616 /* ~Oh, I see what you're getting at. They've been going well.~ */ GOTO 33
  IF ~~ THEN REPLY #98617 /* ~You mean the surges? I'm alive, and nobody I didn't want to be is dead. I shouldn't complain—but I will, just to keep in practice.~ */ GOTO 42
  IF ~~ THEN REPLY #98618 /* ~I'd rather not talk about it. I'm sure you understand.~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #98619 /* ~Well, I'm sorry to hear that. That really bites the weed. But when I asked how you were, I was talking less generally and more specifically...~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 22 // from: 24.0
  SAY #98620 /* ~And it helps. Sometimes. Usually. I think it does, anyway.~ */
  IF ~~ THEN REPLY #98621 /* ~I'm sure it does.~ */ GOTO 25
  IF ~~ THEN REPLY #98622 /* ~It may help you—I'm not sure how much it does for the person you're talking to.~ */ GOTO 32
  IF ~~ THEN REPLY #98623 /* ~You may want to think again.~ */ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #98624 /* ~I get it, believe me. But...~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #98625 /* ~...Sometimes it helps to talk about it. At least, that's what I've found.~ */
  IF ~~ THEN REPLY #98626 /* ~Yes, I've noticed you like to talk.~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #98627 /* ~So... You want to talk?~ */
  IF ~~ THEN REPLY #98628 /* ~What do you want me to say, Neera? I struggle to control my magic, same as you. It does things I—don't want it to do, same as yours.~ */ GOTO 42
  IF ~~ THEN REPLY #98629 /* ~Not about my magic.~ */ GOTO 26
  IF ~~ THEN REPLY #98630 /* ~No.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.2 25.1 22.2
  SAY #98631 /* ~Ah. Well, if you change your mind, you know where to find me. Usually. I'm eminently findable.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #98632 /* ~Just ask the Order of Eight Staves. They find me all the time.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #98633 /* ~How do they DO that?~ */
  IF ~~ THEN REPLY #98634 /* ~It's their job. They've probably had lots of practice.~ */ GOTO 45
  IF ~~ THEN REPLY #98635 /* ~There aren't that many pink-haired half-elven arsonists in the world.~ */ GOTO 29
  IF ~~ THEN REPLY #98636 /* ~You're not the most subtle person in the world, Neera.~ */ GOTO 46
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #98637 /* ~I'm not an arsonist! I don't LIKE setting things on fire.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #98638 /* ~It just happens sometimes.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #98639 /* ~I don't want to talk about that.~ */
  IF ~~ THEN REPLY #98640 /* ~I don't blame you.~ */ EXIT
  IF ~~ THEN REPLY #98641 /* ~And now you know how I feel discussing my wild magic.~ */ GOTO 32
  IF ~~ THEN REPLY #98642 /* ~Then we won't. Let's enjoy a silence together—I'm sure the calm won't last.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 22.1
  SAY #98643 /* ~You could've just said "I'd rather not talk," you know. I would've got the hint.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.0
  SAY #98644 /* ~Really? Great! That's great!~ */
  IF ~~ THEN REPLY #98645 /* ~And how are yours?~ */ GOTO 34
  IF ~~ THEN REPLY #98646 /* ~No, not really. And it's NOT great. The surges are just as hard to control as always. You know what it's like.~ */ GOTO 42
  IF ~~ THEN REPLY #98647 /* ~It's satisfactory. For the time being.~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #98648 /* ~Oh, you know. Infrequent, uncontrollable, and generally pretty explosive.~ */
  IF ~~ THEN REPLY #98649 /* ~So no changes, then.~ */ GOTO 35
  IF ~~ THEN REPLY #98650 /* ~I know how it is.~ */ GOTO 42
  IF ~~ THEN REPLY #98651 /* ~You're still alive. That's something.~ */ GOTO 50
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #98652 /* ~Not really, now. But hope springs eternal!~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 50.0 35.0
  SAY #98653 /* ~At least for a while.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.2
  SAY #98654 /* ~Slow down there, <CHARNAME>. Don't go crazy with the celebrating. You wouldn't want to lose control.~ */
  IF ~~ THEN REPLY #98655 /* ~I won't.~ */ GOTO 38
  IF ~~ THEN REPLY #98656 /* ~I haven't.~ */ GOTO 38
  IF ~~ THEN REPLY #98657 /* ~I don't know. Losing control has a certain appeal sometimes.~ */ GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 37.1 37.0
  SAY #98658 /* ~That was sarcasm.~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #98659 /* ~What I said was sarcasm. Suddenly, I'm not sure if you were being sarcastic or not.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #98660 /* ~You are a riddle wrapped in an enigma, <CHARNAME>. That must be why I like you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2
  SAY #98661 /* ~It's always funny until someone loses an eye and over seventy-five percent of their skin. Don't even joke about losing control, <CHARNAME>. Just—DON'T.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 34.1 33.1 25.0 20.1
  SAY #98662 /* ~Well... misery loves company?~ */
  IF ~~ THEN REPLY #98663 /* ~That's true enough. I'm glad to have your company, Neera.~ */ GOTO 44
  IF ~~ THEN REPLY #98664 /* ~I suppose it does at that. I'm glad to have met you again, Neera.~ */ GOTO 44
  IF ~~ THEN REPLY #98665 /* ~We can talk until we're blue in the face. It changes nothing in the end. I'll not waste my time with it.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.2
  SAY #98666 /* ~Nice talking to you too, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1 42.0
  SAY #98667 /* ~Of course you are. What sane <PRO_GIRLBOY> wouldn't be?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.0
  SAY #98668 /* ~That's why the Refuge is so important. We wild mages need to hang together if we're going to beat the Order.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #98669 /* ~I can be subtle, when it's called for. I CAN. You'll see.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #98670 /* ~I'll show you subtle like you've never SEEN before.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #98671 /* ~You won't even see it when I show it to you. THAT's how subtle I'll be.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #98672 /* ~<CHARNAME> says I'm not subtle. I'll show <PRO_HIMHER>...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 34.2
  SAY #98673 /* ~It's SOMETHING. It's just not ENOUGH. But hope springs eternal!~ */
  IF ~~ THEN GOTO 36
END

IF WEIGHT #4 /* Triggers after states #: 117 even though they appear after this state */
~  IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("NEERA")
CombatCounter(0)
See("MINSC")
!AreaType(DUNGEON)
Global("OHN_minsc","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #88554 /* ~Minsc? I think we should have a serious talk about Boo.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_minsc","GLOBAL",1)
~ EXTERN ~BMINSC~ 121
END

IF ~~ THEN BEGIN 52 // from:
  SAY #88556 /* ~Don't get me wrong. Boo is really, really cute. "Handsome" might be stretching it. But about that "strong" part—~ */
  IF ~~ THEN EXTERN ~BMINSC~ 122
END

IF ~~ THEN BEGIN 53 // from:
  SAY #88558 /* ~Well, that's just it... Can he? I mean, it was one thing when you and Boo were killing kobolds back on the Sword Coast. But the things we have to face these days—~ */
  IF ~~ THEN EXTERN ~BMINSC~ 123
END

IF ~~ THEN BEGIN 54 // from:
  SAY #88560 /* ~No. I'm afraid he'll be beaten to a bloody pulp or choke during a cloudkill spell. ~ */
  IF ~~ THEN EXTERN ~BMINSC~ 124
END

IF ~~ THEN BEGIN 55 // from:
  SAY #88562 /* ~No, I imagine him going down a dragon's throat and showing him how good hamster tastes.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 125
END

IF ~~ THEN BEGIN 56 // from:
  SAY #88564 /* ~It's really more that I think he'll die.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 126
END

IF ~~ THEN BEGIN 57 // from:
  SAY #88567 /* ~What did I do now? Oh... oh my.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 128
END

IF ~~ THEN BEGIN 58 // from:
  SAY #88569 /* ~You know I can't control it, Minsc. I am so sorry! But I swear it's only temporary.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 129
END

IF ~~ THEN BEGIN 59 // from:
  SAY #88572 /* ~Pink... pink like the flowers that give us the dark honey! So, not that much of a change, right? Anyway, you like flowers.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 131
END

IF ~~ THEN BEGIN 60 // from:
  SAY #88574 /* ~Good point. You know, I could probably fix that—~ */
  IF ~~ THEN EXTERN ~BMINSC~ 132
END

IF ~~ THEN BEGIN 61 // from:
  SAY #88577 /* ~Sorry? What for?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 134
END

IF ~~ THEN BEGIN 62 // from:
  SAY #88579 /* ~Apology accepted! I wasn't too upset—I'm used to my magic making people mad.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 135
END

IF ~~ THEN BEGIN 63 // from:
  SAY #88581 /* ~You're right. Except when you make things pink by accident because that's the color of their entrails.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 136
END

IF ~~ THEN BEGIN 64 // from:
  SAY #88583 /* ~Right... I'm going to stand over there now. Way over there!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #88585 /* ~It depends. I never know what to expect. The surges are all different from each other. How does it feel when you cast spells?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 483
END

IF ~~ THEN BEGIN 66 // from:
  SAY #88587 /* ~Maybe it's not so different after all.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 484
END

IF ~~ THEN BEGIN 67 // from:
  SAY #88589 /* ~Sort of. My mind becomes part of... something. What, I don't know—I don't think it's nature. The Weave, I guess? Or maybe chaos? But yeah, it's kind of like "oneness," except it seems more like I'm looking at it through a window. When my magic is working properly, anyway.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 485
END

IF ~~ THEN BEGIN 68 // from:
  SAY #88591 /* ~A wild surge is like that window shattering into a million pieces of glass.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 486
END

IF ~~ THEN BEGIN 69 // from:
  SAY #88593 /* ~I don't mind. If you've been indoors a long time, sometimes you like the feel of a cold gust of wind.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 487
END

IF WEIGHT #5 /* Triggers after states #: 117 even though they appear after this state */
~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("IMOEN2")
CombatCounter(0)
See("IMOEN2")
!AreaType(DUNGEON)
GlobalGT("AsylumPlot","GLOBAL",55)
Global("OHN_imoen","GLOBAL",0)
~ THEN BEGIN 70 // from:
  SAY #88595 /* ~Heya, Imoen! I'm so sorry you had to spend so long in that... place. I can't imagine. Actually, I can, which makes it worse.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_imoen","GLOBAL",1)
~ EXTERN ~BIMOEN2~ 28
END

IF ~~ THEN BEGIN 71 // from:
  SAY #88597 /* ~We ought to form a magical society to strike fear into the hearts of all conspiring wizards! We could battle Red Wizards, Cowled Wizards, wizards who steal souls... What other kinds of wizards are there? We could fight them, too.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 29
END

IF ~~ THEN BEGIN 72 // from:
  SAY #88599 /* ~You're right. I'll think some up and get back to you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 117 even though they appear after this state */
~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("IMOEN2")
CombatCounter(0)
See("IMOEN2")
!AreaType(DUNGEON)
Global("OHN_imoen","GLOBAL",1)
~ THEN BEGIN 73 // from:
  SAY #88600 /* ~Imoen? I was thinking. Green is the opposite of red, you know?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_imoen","GLOBAL",2)
~ EXTERN ~BIMOEN2~ 30
END

IF ~~ THEN BEGIN 74 // from:
  SAY #88602 /* ~No books on color theory at Candlekeep? Well, it's true. Green is the opposite of red. And we oppose the Red Wizards of Thay. So how about we call our magical society the Green Wizards of Amn? Zaviak would love it!~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 31
END

IF ~~ THEN BEGIN 75 // from:
  SAY #88604 /* ~You're right, you're right. Did you come up with anything?~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 32
END

IF ~~ THEN BEGIN 76 // from:
  SAY #88606 /* ~Yes! We could also name our adventuring band "Adventuring Band." Meanwhile, Athkatla could start calling itself "Well-Populated City."~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 33
END

IF ~~ THEN BEGIN 77 // from:
  SAY #88635 /* ~My tale? Well, I come from the High Forest in the north. My childhood was pretty wild, I guess. Ever seen a korred?~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 93
END

IF ~~ THEN BEGIN 78 // from:
  SAY #88637 /* ~Well, korreds are about the size of halflings, but unlike halflings, they usually wear absolutely nothing. It doesn't really matter, though, because their body hair grows really fast and covers everything up. They're not too friendly, but their dances are a hoot.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 94
END

IF ~~ THEN BEGIN 79 // from:
  SAY #88639 /* ~Once or twice. Once you start, you can't stop. You can even die doing it—so it came pretty naturally to me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #88641 /* ~The High Forest? It's very, very big.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 96
END

IF ~~ THEN BEGIN 81 // from:
  SAY #88643 /* ~I don't know how the High Forest compares, but like I said, it's big. There are places no one goes—or no one good, anyway. There were thickets as dark as night, and glades full of sunshine. I miss it sometimes.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 97
END

IF ~~ THEN BEGIN 82 // from:
  SAY #88645 /* ~I was banished. ~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 98
END

IF ~~ THEN BEGIN 83 // from:
  SAY #88648 /* ~Self-possessed and confident? Have you MET me? I'm a bundle of nerves! Every time one of my spells goes off, I worry it's going to go way, wayyyy off.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 474
END

IF ~~ THEN BEGIN 84 // from:
  SAY #88650 /* ~I suppose I keep casting spells because that's who I am. If I stopped, I wouldn't know myself anymore. I'd be a fish without fins, a bird without—uhh...~ */
  IF ~~ THEN EXTERN ~BAERIE~ 475
END

IF ~~ THEN BEGIN 85 // from:
  SAY #88652 /* ~I'm sorry, Aerie! Gods! My foot's so far in my mouth I'm chewing on my ankle! It tastes terrible! Don't cry! I am so sorry. I didn't mean to—~ */
  IF ~~ THEN EXTERN ~BAERIE~ 476
END

IF ~~ THEN BEGIN 86 // from:
  SAY #88664 /* ~Oh. I'm sorry to hear that...? Wait. What... what is that smell?~ */
  IF ~~ THEN EXTERN ~BVICONI~ 606
END

IF ~~ THEN BEGIN 87 // from:
  SAY #88666 /* ~By the gods, what IS that? Oh, wait, Viconia, it's just you. For a moment I thought <CHARNAME> had picked up a powerful cheese while I wasn't looking.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 607
END

IF ~~ THEN BEGIN 88 // from:
  SAY #88668 /* ~It's not bad, just a little pungent. Maybe you picked up the scent when you still worshipped Lolth? They say she lives in the Demonweb Pits. A place with that kind of name probably doesn't smell very pleasant.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 608
END

IF ~~ THEN BEGIN 89 // from:
  SAY #88670 /* ~All right, Viconia, let me be direct for a second. You like directness, right? You started this conversation, and you started it by insulting me. "I dislike you." That's what you said.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #88671 /* ~Do you really think people will listen to anything you have to say when you talk to them like that? You called me childish. Is it less childish to threaten me? Yeah, really reasonable and adult.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 609
END

IF ~~ THEN BEGIN 91 // from:
  SAY #88673 /* ~Good. Because you smell, and the smell is only getting stronger.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 117 even though they appear after this state */
~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("JAN")
CombatCounter(0)
See("JAN")
!AreaType(DUNGEON)
Global("OHN_jan","GLOBAL",0)
~ THEN BEGIN 92 // from:
  SAY #88674 /* ~Oh, Jan! That one was great. Did your Aunt Peony's second husband Lor really divide his property among his six children with a butter knife? They must have been so confused when he came to the furniture!~ */
  IF ~~ THEN DO ~SetGlobal("OHN_jan","GLOBAL",1)
~ EXTERN ~BJAN~ 150
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN DO ~SetGlobal("OHN_jan","GLOBAL",1)
~ EXTERN ~BKORGAN~ 162
END

IF ~~ THEN BEGIN 93 // from:
  SAY #88677 /* ~How did they settle it? I'm on the edge of my seat here! Well, not literally. Imagine I'm sitting.~ */
  IF ~~ THEN EXTERN ~BJAN~ 151
END

IF ~~ THEN BEGIN 94 // from:
  SAY #88679 /* ~Moral of the story: Whether you're the Lord of Murder or Aunt Peony's second husband, having heirs is tricky business.~ */
  IF ~~ THEN EXTERN ~BJAN~ 152
END

IF ~~ THEN BEGIN 95 // from:
  SAY #88682 /* ~Enough with the heavy stuff, Keldorn! I'm just trying to make it from day to day and hold myself together, and now you want me to worry about my path?! What does that even mean, anyway? Isn't my "path" the one I'm on?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 170
END

IF ~~ THEN BEGIN 96 // from:
  SAY #88684 /* ~You think I should be somewhere else. I get it. My magic makes you uneasy.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 171
END

IF ~~ THEN BEGIN 97 // from:
  SAY #88686 /* ~Awww, Keldorn! That is sweet. Really, really sweet. Especially that part about not understanding me.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 172
END

IF ~~ THEN BEGIN 98 // from:
  SAY #88688 /* ~You'd miss my tongue? Ewww.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #88700 /* ~Oh... uh, hi, Valygar! I thought you might ask me something like this.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 174
END

IF ~~ THEN BEGIN 100 // from:
  SAY #88702 /* ~N-no? I—~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 175
END

IF ~~ THEN BEGIN 101 // from:
  SAY #88707 /* ~I—I don't know! When you put it like that, I... Can I get back to you on this?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 176
END

IF ~~ THEN BEGIN 102 // from:
  SAY #88710 /* ~Well, here's the thing. I can control it, mostly. Sometimes it slips out of my control, and you're right—then it's a risk. But usually I can make it do what I want, and usually what I want it to do is good!~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 178
END

IF ~~ THEN BEGIN 103 // from:
  SAY #88712 /* ~It doesn't seem likely—I mean, you two are really powerful, and—~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 179
END

IF ~~ THEN BEGIN 104 // from:
  SAY #88714 /* ~Y-yes.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 180
END

IF ~~ THEN BEGIN 105 // from:
  SAY #88716 /* ~I don't know. I don't know! I do it because it's who I am. I'd be a waste of air and flesh otherwise. I do it because I feel like I'd die if I didn't.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 181
END

IF ~~ THEN BEGIN 106 // from:
  SAY #88721 /* ~If by "proper knight," you mean you, then no, but I've got a feeling I'm about to get a taste.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 615
END

IF ~~ THEN BEGIN 107 // from:
  SAY #88723 /* ~Oh, gross! Go away!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #88725 /* ~Who's daring you? Not me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #88727 /* ~Okay, you're excused. That it?~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 618
END

IF ~~ THEN BEGIN 110 // from:
  SAY #88729 /* ~Please don't, Anomen.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 619
END

IF ~~ THEN BEGIN 111 // from:
  SAY #88731 /* ~Great. I hate having syllables on my chin.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #88733 /* ~You know, every time you call me that, I imagine myself with antlers.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 621
END

IF ~~ THEN BEGIN 113 // from:
  SAY #88735 /* ~What? You want pants made of soft grass? This is getting so weird, Anomen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #88737 /* ~WHAT?!~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 623
END

IF ~~ THEN BEGIN 115 // from:
  SAY #88739 /* ~Bloody hells. If it'll give me some peace and quiet, I'll give you what you're asking for.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 624
END

IF ~~ THEN BEGIN 116 // from:
  SAY #88741 /* ~Yes. All you had to do was be a little bold. I like my men—manly, I guess, or whatever it is you were being. I'll come to you when no one's looking.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("ANOMEN")
CombatCounter(0)
See("ANOMEN")
!AreaType(DUNGEON)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
!Global("NeeraRomanceActive","GLOBAL",1)
!Global("NeeraRomanceActive","GLOBAL",2)
OR(8)
AreaCheck("AR0020")
AreaCheck("AR0300")
AreaCheck("AR0400")
AreaCheck("AR0500")
AreaCheck("AR0700")
AreaCheck("AR0800")
AreaCheck("AR0900")
AreaCheck("AR1000")
Global("OHN_anomen","GLOBAL",5)
~ THEN BEGIN 117 // from:
  SAY #88742 /* ~Here you go.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_anomen","GLOBAL",6)
~ EXTERN ~BANOMEN~ 625
END

IF ~~ THEN BEGIN 118 // from:
  SAY #88744 /* ~I was resistant at first, I'll admit, but once you brought it up, I couldn't stop fantasizing!~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 626
END

IF ~~ THEN BEGIN 119 // from:
  SAY #88746 /* ~Do you want me to tell you what I imagined first? Shortbread biscuits with strawberry preserves! I know, I know. Not that creative—but so delicious! Then I thought about glazed pears, mincemeat pies, puddings, gingerbread... ~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 627
END

IF ~~ THEN BEGIN 120 // from:
  SAY #88748 /* ~Yes! A pound of sugar from Waukeen's Promenade. As promised. Get cooking!~ */
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
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~BJAHEIR~ 489
END

IF ~~ THEN BEGIN 121 // from:
  SAY #88757 /* ~Oh, I'm not really into codes. If you want to pass on a secret message, there are spells for that. Codes SOUND like fun, but it's hard enough to communicate as it is. Why come up with ways to make it even harder?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 155
END

IF ~~ THEN BEGIN 122 // from:
  SAY #88759 /* ~My ethical code? Huh. I've never really thought about it. I guess I don't have one.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 156
END

IF ~~ THEN BEGIN 123 // from:
  SAY #88761 /* ~No principles! I just work out the best thing to do.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 157
END

IF ~~ THEN BEGIN 124 // from:
  SAY #88763 /* ~Gut instinct? Intuition? Rolling the dice? Drawing lots? Having inklings? Why do you care so much?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 158
END

IF ~~ THEN BEGIN 125 // from:
  SAY #88765 /* ~Good thing you're not me. To me, your "ethical code" doesn't seem very different from the secret codes I was talking about. It SOUNDS like a good idea, but in the end it just makes figuring things out more difficult.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 159
END

IF ~~ THEN BEGIN 126 // from:
  SAY #88768 /* ~I'd love to go with you, but: banished, you know?~ */
  IF ~~ THEN EXTERN ~BCERND~ 117
END

IF ~~ THEN BEGIN 127 // from:
  SAY #88770 /* ~Aw, I like that sort of thing. Trees, clouds, heavens, birds, those weird mushrooms that look like brains... Count me in!~ */
  IF ~~ THEN EXTERN ~BCERND~ 118
END

IF ~~ THEN BEGIN 128 // from:
  SAY #88772 /* ~Are you sure? I think nature isn't too crazy about me. You don't know the whole story. I was banished by a TREE, for crying out loud. The treant Turlang—ever hear of him?~ */
  IF ~~ THEN EXTERN ~BCERND~ 119
END

IF ~~ THEN BEGIN 129 // from:
  SAY #88774 /* ~Not punished? I was kicked out of my home, separated from my kindred. I'm an outcast, a freak of nature, okay? I'm fine with it! Really, I am.~ */
  IF ~~ THEN EXTERN ~BCERND~ 120
END

IF ~~ THEN BEGIN 130 // from:
  SAY #88776 /* ~Then what? What is your argument, exactly?~ */
  IF ~~ THEN EXTERN ~BCERND~ 121
END

IF ~~ THEN BEGIN 131 // from:
  SAY #88778 /* ~I don't want to change. I'm not giving up my magic.~ */
  IF ~~ THEN EXTERN ~BCERND~ 122
END

IF ~~ THEN BEGIN 132 // from:
  SAY #88781 /* ~Why not go with Neera? That's what most people call me. Names are pretty handy that way.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 178
END

IF ~~ THEN BEGIN 133 // from:
  SAY #88783 /* ~Pretty sure it's a half-elf's, but to be fair, I haven't checked.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 179
END

IF ~~ THEN BEGIN 134 // from:
  SAY #88786 /* ~Yes, Haer'Dalis. I'd also like to catch some fish in my bright yellow bill.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 181
END

IF ~~ THEN BEGIN 135 // from:
  SAY #88788 /* ~That doesn't sound too bad. It must be quite the life: food swimming around below you, a sky all yours above you, sitting still and moving along all at once.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #88789 /* ~I don't know, though. I imagine it could get very dull.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 182
END

IF ~~ THEN BEGIN 137 // from:
  SAY #88791 /* ~Ducks don't usually get that far, do they?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 183
END

IF ~~ THEN BEGIN 138 // from:
  SAY #88793 /* ~I suppose I'm not.~ */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #88794 /* ~...Haer'Dalis?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 184
END

IF ~~ THEN BEGIN 140 // from:
  SAY #88796 /* ~I like it. I like "duck."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #88798 /* ~Is this an "all bark, no bite" contest? Because if it is, you win.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 164
END

IF ~~ THEN BEGIN 142 // from:
  SAY #88800 /* ~Well, you know what they say about minnows.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 165
END

IF ~~ THEN BEGIN 143 // from:
  SAY #88802 /* ~They, uh... carry a dangerous stomach parasite? So, you wouldn't want them... nibbling... because they might... give it to you? ~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 166
END

IF ~~ THEN BEGIN 144 // from:
  SAY #88804 /* ~Fine. You win.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 167
END

IF ~~ THEN BEGIN 145 // from:
  SAY #88806 /* ~I didn't concede any of that! When I said you won, I didn't say you won reality, Korgan. Sheesh.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 168
END

IF ~~ THEN BEGIN 146 // from:
  SAY #88808 /* ~The "all bark, no bite" contest. Good job! There's an "utterly useless" contest coming up—you've a good shot at winning that one, too.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 169
END

IF ~~ THEN BEGIN 147 // from:
  SAY #88811 /* ~I have plenty of spare moments. Of course you can have one!~ */
  IF ~~ THEN EXTERN ~BNALIA~ 74
END

IF ~~ THEN BEGIN 148 // from:
  SAY #88813 /* ~It wasn't just my dream—it was a dream for everyone else, too. A little grove where we could be ourselves. Don't worry about me, though—I'm feeling better now that the Order's out of the picture. And I wouldn't say my ideals have been shaken.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 75
END

IF ~~ THEN BEGIN 149 // from:
  SAY #88815 /* ~It wasn't my fault. Hayes was responsible.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 76
END

IF ~~ THEN BEGIN 150 // from:
  SAY #88817 /* ~What are you saying? I can't figure it out. You noble types sure know how to beat around the well-trimmed hedge.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 77
END

IF ~~ THEN BEGIN 151 // from:
  SAY #88819 /* ~I'm sorry to hear that. Let's move on, shall we?~ */
  IF ~~ THEN EXTERN ~BNALIA~ 78
END

IF ~~ THEN BEGIN 152 // from:
  SAY #88846 /* ~You know my secret? My magic is all just sleight of hand? Shhh! Don't tell anyone.~ */
  IF ~~ THEN EXTERN ~BDORN~ 114
END

IF ~~ THEN BEGIN 153 // from:
  SAY #88848 /* ~Act? There's no act. I don't act; I don't even lie—or, hardly ever. What are you going on about, Dorn?!~ */
  IF ~~ THEN EXTERN ~BDORN~ 115
END

IF ~~ THEN BEGIN 154 // from:
  SAY #88850 /* ~You're wrong. You're wrong! And do NOT look into my eyes. It's creepy. Also, slaying the weak? Creepy AND bad.~ */
  IF ~~ THEN EXTERN ~BDORN~ 116
END

IF ~~ THEN BEGIN 155 // from:
  SAY #88852 /* ~Please don't, or I'll start calling you creepy uncle.~ */
  IF ~~ THEN EXTERN ~BDORN~ 117
END

IF ~~ THEN BEGIN 156 // from:
  SAY #88854 /* ~I've had enough of this! Don't speak to me about this again. Do not speak to ME again!~ */
  IF ~~ THEN EXTERN ~BDORN~ 118
END

IF WEIGHT #8 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHN_hexxat","GLOBAL",0)
~ THEN BEGIN 157 // from:
  SAY #91762 /* ~So... what does blood taste like, Hexxat?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_hexxat","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 178
END

IF ~~ THEN BEGIN 158 // from:
  SAY #91764 /* ~I thought it'd be different for vampires. I guess it could be an acquired taste, but it's so—coppery? It has this weird tang. ~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 179
END

IF ~~ THEN BEGIN 159 // from:
  SAY #91766 /* ~Are vampires like cats? I've heard that cats taste through smell!~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 180
END

IF ~~ THEN BEGIN 160 // from:
  SAY #91768 /* ~Ah, all right. Rude of me to pry. It must be a—um—very private experience.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 181
END

IF ~~ THEN BEGIN 161 // from:
  SAY #91770 /* ~What? NO! No. I mean—sorry. No. I just, um. Not that there's anything wrong with it, of course—well, there kind of is if someone dies maybe, but two consenting adults and all that... No. Sorry. No.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 182
END

IF WEIGHT #9 ~  IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("Neera")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHN_rasaad","GLOBAL",0)
~ THEN BEGIN 162 // from:
  SAY #101882 /* ~...and so I asked, "Why don't you just turn it yellow?" And she laughed at me. LAUGHED. Can you imagine that?~ */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY #101883 /* ~Rasaad? Are you alright?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_rasaad","GLOBAL",1)
~ EXTERN ~BRASAAD~ 121
END

IF ~~ THEN BEGIN 164 // from:
  SAY #101885 /* ~Oh no! I hate headaches. I remember this one time—~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 122
END

IF ~~ THEN BEGIN 165 // from:
  SAY #101887 /* ~What on Toril would anyone want to contemplate silently?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 123
END

IF ~~ THEN BEGIN 166 // from:
  SAY #101889 /* ~Ah. Sorry. Sometimes I just get excited, you know, and—~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 124
END
