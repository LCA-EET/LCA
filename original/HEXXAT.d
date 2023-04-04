// creator  : weidu (version 24900)
// argument : HEXXAT.DLG
// game     : .
// source   : ./override/HEXXAT.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~HEXXAT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #81269 /* ~<CHARNAME>. Good to finally meet you.~ [OH81269] */
  IF ~~ THEN REPLY #81270 /* ~I wish I could say the same. Who are you?~ */ DO ~SetGlobal("OHH_hexxat","OH7000",3)
~ GOTO 8
  IF ~~ THEN REPLY #81271 /* ~Did you say "meet," or "eat"?~ */ DO ~SetGlobal("OHH_hexxat","OH7000",3)
~ GOTO 5
  IF ~~ THEN REPLY #81272 /* ~You'll not think so in a couple of seconds.~ */ DO ~SetGlobal("OHH_hexxat","OH7000",3)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #81273 /* ~I've no desire to fight you.~ [OH81273] */
  IF ~~ THEN REPLY #81274 /* ~If you seek to kill me, you're going to have to. Not all of us are so happy to be devoured.~ */ GOTO 13
  IF ~~ THEN REPLY #81275 /* ~What do you desire?~ */ GOTO 11
  IF ~  !IsValidForPartyDialogue("aerie")
!IsValidForPartyDialogue("keldorn")
~ THEN REPLY #102469 /* ~Then don't. Join me instead—I could use a vampire's talents.~ */ GOTO 2
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN REPLY #102469 /* ~Then don't. Join me instead—I could use a vampire's talents.~ */ EXTERN ~AERIEJ~ 236
  IF ~  !IsValidForPartyDialogue("aerie")
IsValidForPartyDialogue("keldorn")
~ THEN REPLY #102469 /* ~Then don't. Join me instead—I could use a vampire's talents.~ */ EXTERN ~KELDORJ~ 268
  IF ~~ THEN REPLY #81276 /* ~Good. That should make killing you a lot easier.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 11.1 1.2
  SAY #81357 /* ~If we are going to work together, <CHARNAME>, there's something you need to know about me: There is nothing I won't do to stay alive. Nothing. Do you understand?~ [OH81357] */
  IF ~~ THEN REPLY #102472 /* ~Understood. What is your name?~ */ GOTO 8
  IF ~~ THEN REPLY #102473 /* ~I see where you're coming from, but technically speaking, I think that ship has sailed.~ */ GOTO 5
  IF ~~ THEN REPLY #102474 /* ~A pity. We could have done great things together, but that sort of attitude is of no use to me.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 1.5
  SAY #81277 /* ~I just spent more than two hundred years in a coffin. I won't let you put me in another.~ [OH81277] */
  IF ~~ THEN REPLY #81278 /* ~Who are you?~ */ GOTO 8
  IF ~~ THEN REPLY #81279 /* ~All right. I'll put you back in the same one.~ */ GOTO 4
  IF ~~ THEN REPLY #81280 /* ~We'll see about that, monster!~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1
  SAY #81281 /* ~A waste of time!~ [OH81281] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 0.1
  SAY #81282 /* ~Very droll, but I expect nothing more at this point.~ [OH81282] */
  IF ~~ THEN REPLY #81283 /* ~You act as though we know each other.~ */ GOTO 6
  IF ~~ THEN REPLY #81284 /* ~I make it a habit to keep people's expectations of me as low as possible. Who are you again?~ */ GOTO 8
  IF ~~ THEN REPLY #81285 /* ~You can expect a point through your heart if you don't explain yourself.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #81286 /* ~We do, after a fashion. I am Hexxat of Mezro.~ [OH81286] */
  IF ~~ THEN REPLY #81287 /* ~And the person whose blood you just guzzled?~ */ GOTO 17
  IF ~~ THEN REPLY #81288 /* ~You share the name of the person you just killed. What an astonishing coincidence.~ */ GOTO 16
  IF ~~ THEN REPLY #81289 /* ~And I've got an appointment anywhere else.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
  IF ~~ THEN REPLY #81290 /* ~Like hell you are.~ */ GOTO 15
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #81291 /* ~Explain myself? What's to explain?~ [OH81291] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 13.2 11.0 7.0 5.1 3.0 2.0 0.0
  SAY #81292 /* ~I am Hexxat. Try and keep up.~ [OH81292] */
  IF ~~ THEN REPLY #81287 /* ~And the person whose blood you just guzzled?~ */ GOTO 17
  IF ~~ THEN REPLY #81293 /* ~Slow and steady wins the race.~ */ GOTO 9
  IF ~~ THEN REPLY #81294 /* ~You just ate Hexxat, which rather inclines me to try and put you down.~ */ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #81295 /* ~That really depends on the kind of race you're running now, doesn't it?~ [OH81295] */
  IF ~~ THEN REPLY #81296 /* ~What kind of race are you running, Hexxat?~ */ GOTO 18
  IF ~~ THEN REPLY #81297 /* ~I'll show you the kind I'm running—feel free to take part in a completely different kind, preferably in the opposite direction.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
  IF ~~ THEN REPLY #81298 /* ~I don't run.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #81299 /* ~Then you haven't been properly inspired. Yet. I have things to do. Meet me back at the Copper Coronet in two hours.~ [OH81299] */
  IF ~~ THEN REPLY #81300 /* ~All right.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
  IF ~~ THEN REPLY #81301 /* ~Things? What things?~ */ GOTO 20
  IF ~~ THEN REPLY #81302 /* ~You're in no position to give me orders.~ */ GOTO 25
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY #81303 /* ~That is a good question. Friends are always handy. But we should get out of this place first.~ [OH81303] */
  IF ~~ THEN REPLY #81304 /* ~No, first you should tell me your name.~ */ GOTO 8
  IF ~  !IsValidForPartyDialogue("aerie")
!IsValidForPartyDialogue("keldorn")
~ THEN REPLY #102475 /* ~It's friends you want? I'm a good friend to have.~ */ GOTO 2
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN REPLY #102475 /* ~It's friends you want? I'm a good friend to have.~ */ EXTERN ~AERIEJ~ 236
  IF ~  !IsValidForPartyDialogue("aerie")
IsValidForPartyDialogue("keldorn")
~ THEN REPLY #102475 /* ~It's friends you want? I'm a good friend to have.~ */ EXTERN ~KELDORJ~ 268
  IF ~~ THEN REPLY #81305 /* ~The most sensible thing I've heard all day, and it comes from the woman who just used another woman as a wineskin.~ */ GOTO 12
  IF ~~ THEN REPLY #81306 /* ~All right then. Let's go.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 31.0 13.1 11.5 11.4
  SAY #81307 /* ~I've some personal matters that need tending to. Meet me at the Copper Coronet in two hours.~ [OH81307] */
  IF ~~ THEN REPLY #81308 /* ~What are you going to do?~ */ GOTO 20
  IF ~~ THEN REPLY #81309 /* ~And if I don't?~ */ GOTO 24
  IF ~~ THEN REPLY #81310 /* ~You would give me orders? I don't think so.~ */ GOTO 25
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #81311 /* ~I couldn't eat you if I wanted to. A girl's got to watch her weight.~ [OH81311] */
  IF ~~ THEN REPLY #81312 /* ~So you won't kill me. You murdered Hexxat. Do you think I'll let that go unanswered?~ */ GOTO 14
  IF ~~ THEN REPLY #81313 /* ~Is that supposed to make me feel more comfortable?~ */ GOTO 12
  IF ~~ THEN REPLY #81314 /* ~She better watch a hell of a lot more than that if she wants to walk out of here in one piece. Who are you?~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #81315 /* ~I am Hexxat.~ [OH81315] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 6.3
  SAY #81316 /* ~Your confusion is understandable. While the corpse did my bidding, I let her use my name.~ [OH81316] */
  IF ~~ THEN REPLY #81317 /* ~Who is she?~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 8.2 6.1
  SAY #81318 /* ~She merely borrowed my name.~ [OH81318] */
  IF ~~ THEN REPLY #81317 /* ~Who is she?~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 15.0 8.0 6.0
  SAY #81319 /* ~A pawn in a game I've been playing a long, long time. Her sacrifice was unfortunate, but necessary.~ [OH81319] */
  IF ~~ THEN REPLY #81320 /* ~Death is no game.~ */ GOTO 29
  IF ~~ THEN REPLY #81321 /* ~What gives you the right to make that decision?~ */ GOTO 33
  IF ~~ THEN REPLY #81322 /* ~While yours is unnecessary, but will prove enjoyable.~ */ GOTO 30
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #81323 /* ~One that shouldn't have lasted as long as it did. Meet me back at the Copper Coronet in two hours.~ [OH81323] */
  IF ~~ THEN REPLY #81324 /* ~What are you going to do?~ */ GOTO 20
  IF ~~ THEN REPLY #81325 /* ~Sure. I'll bring the pitchforks and the torch-wielding villagers.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
  IF ~~ THEN REPLY #81326 /* ~You expect me to come running at your beck and call?~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2
  SAY #81327 /* ~I expect nothing of you, <CHARNAME>. You don't want to see me again? Fine.~ [OH81327] */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 18.0 12.0 10.1
  SAY #81328 /* ~I need to see an... old friend.~ [OH81328] */
  IF ~~ THEN REPLY #81329 /* ~I'll come with you.~ */ GOTO 23
  IF ~~ THEN REPLY #81330 /* ~How old? How long have you been stuck here?~ */ GOTO 22
  IF ~~ THEN REPLY #81331 /* ~Go, then. But don't expect to see me again.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.2
  SAY #81332 /* ~Your call, <CHARNAME>.~ [OH81332] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #81333 /* ~Too long. See you in two hours.~ [OH81333] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0
  SAY #81334 /* ~No. You'll meet me at the Copper Coronet in two hours.~ [OH81334] */
  IF ~~ THEN REPLY #81335 /* ~And if I don't?~ */ GOTO 24
  IF ~~ THEN REPLY #81336 /* ~See you there.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
  IF ~~ THEN REPLY #81337 /* ~You don't give me orders, woman.~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 36.0 23.0 12.1
  SAY #81338 /* ~Then I'll be disappointed. Two hours.~ [OH81338] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 19.0 12.2 10.2
  SAY #81339 /* ~Then don't meet me back at the Copper Coronet. You've already done what I needed you to do.~ [OH81339] */
  IF ~~ THEN REPLY #81340 /* ~You could have just asked for my help.~ */ GOTO 26
  IF ~~ THEN REPLY #81341 /* ~Yes, and don't think I'm happy being used as a food delivery service.~ */ GOTO 32
  IF ~~ THEN REPLY #81342 /* ~Yes, and I believe I was promised "great treasure" in exchange for doing so.~ */ GOTO 28
  IF ~~ THEN REPLY #81343 /* ~You owe me, Hexxat. Don't forget that.~ */ DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #81344 /* ~You'd be surprised how many people aren't excited by the thought of helping a vampire.~ [OH81344] */
  IF ~~ THEN REPLY #81345 /* ~How did you convince this unfortunate woman to sacrifice herself?~ */ GOTO 38
  IF ~~ THEN REPLY #81346 /* ~I really don't think I would be.~ */ GOTO 37
  IF ~~ THEN REPLY #81347 /* ~I'm not like other people.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #81348 /* ~Truer words have never been spoken, <CHARNAME>. Two hours, at the Coronet.~ [OH81348] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 36.1 25.2
  SAY #81349 /* ~I can't be held responsible for promises made by other people using my name. But for what it's worth, you'll find my company's a great treasure indeed. The Copper Coronet. Two hours.~ [OH81349] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 17.0
  SAY #81350 /* ~Everything's a game, <CHARNAME>.~ [OH81350] */
  IF ~~ THEN REPLY #81351 /* ~No. I won't stand here and listen to you diminish the life of the person you killed this way.~ */ GOTO 36
  IF ~~ THEN REPLY #81352 /* ~What if I don't want to play?~ */ GOTO 31
  IF ~~ THEN REPLY #81353 /* ~If that's true, I'm sorry to have to tell you this: You lose.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 36.2 29.2 17.2
  SAY #81354 /* ~Damn it, <CHARNAME>! We could have done great things together.~ [OH81354] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #81355 /* ~Then you'll lose.~ [OH81355] */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #81356 /* ~Don't you think I'm not appreciative. But now I must go.~ [OH81356] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.1
  SAY #81357 /* ~If we are going to work together, <CHARNAME>, there's something you need to know about me: There is nothing I won't do to stay alive. Nothing. Do you understand?~ [OH81357] */
  IF ~~ THEN REPLY #81358 /* ~Perfectly. But I don't like it.~ */ GOTO 36
  IF ~~ THEN REPLY #81359 /* ~I've got to say, that doesn't exactly make working with you sound tremendously appealing.~ */ GOTO 34
  IF ~~ THEN REPLY #81360 /* ~I feel exactly the same.~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #81361 /* ~I'll make it worth your while. Two hours, at the Coronet.~ [OH81361] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY #81362 /* ~Good. See you at the Coronet in two hours.~ [OH81362] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0 29.0
  SAY #81364 /* ~Then let's talk no more about it. I'll meet you at the Copper Coronet in two hours.~ [OH81364] */
  IF ~~ THEN REPLY #81366 /* ~And if I'm not there?~ */ GOTO 24
  IF ~~ THEN REPLY #81367 /* ~I believe there's still a matter of some, and I quote, "great treasure" that I'm owed...~ */ GOTO 28
  IF ~~ THEN REPLY #81368 /* ~You'll meet your death in the next two minutes!~ */ GOTO 30
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #81370 /* ~The Coronet. Two hours.~ [OH81370] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.0
  SAY #81372 /* ~I can be very persuasive when I put my mind to it. See you in a couple hours.~ [OH81372] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmove","OH7000",1)
EraseJournalEntry(84945)
AddJournalEntry(84953,QUEST)
~ JOURNAL #84951 /* ~The woman who called herself Hexxat was naught but a puppet of the real thing. A vampire trapped in Dragomir's Tomb, Hexxat used his casque to mentally dominate the false Hexxat and lure us here to free her. The false Hexxat was turned into a <DAYNIGHTALL> meal for the real one.~ */ EXIT
END

IF ~  Global("OHH_cloakmissing","OH7000",1)
~ THEN BEGIN 39 // from:
  SAY #81363 /* ~Where is it? Where is Dragomir's Cloak?~ [OH81363] */
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81365 /* ~The vampire's rag? I've got it.~ */ DO ~SetGlobal("OHH_cloakmissing","OH7000",2)
EraseJournalEntry(84953)
AddJournalEntry(84954,INFO)
~ UNSOLVED_JOURNAL #84955 /* ~Hexxat's request

Hexxat requires Dragomir's cloak to walk in the daylight.~ */ GOTO 40
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81369 /* ~I have no idea.~ */ DO ~SetGlobal("OHH_cloakmissing","OH7000",2)
EraseJournalEntry(84953)
AddJournalEntry(84954,INFO)
~ UNSOLVED_JOURNAL #84955 /* ~Hexxat's request

Hexxat requires Dragomir's cloak to walk in the daylight.~ */ GOTO 44
  IF ~  !PartyHasItem("ohhcloak")
~ THEN REPLY #81369 /* ~I have no idea.~ */ DO ~SetGlobal("OHH_cloakmissing","OH7000",2)
EraseJournalEntry(84953)
AddJournalEntry(84954,INFO)
~ UNSOLVED_JOURNAL #84955 /* ~Hexxat's request

Hexxat requires Dragomir's cloak to walk in the daylight.~ */ GOTO 46
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81371 /* ~Dragomir's cloak? Uh uh. <CHARNAME>'s cloak now.~ */ DO ~SetGlobal("OHH_cloakmissing","OH7000",2)
EraseJournalEntry(84953)
AddJournalEntry(84954,INFO)
~ UNSOLVED_JOURNAL #84955 /* ~Hexxat's request

Hexxat requires Dragomir's cloak to walk in the daylight.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 44.1 39.3 39.0
  SAY #81373 /* ~Give it to me.~ [OH81373] */
  IF ~~ THEN REPLY #81374 /* ~Very well.~ */ GOTO 116
  IF ~~ THEN REPLY #81375 /* ~What's the magic word?~ */ GOTO 59
  IF ~~ THEN REPLY #81376 /* ~Maybe I will, maybe I won't. First, you're going to give me some answers.~ */ GOTO 62
  IF ~~ THEN REPLY #81378 /* ~What will you give me in exchange?~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 45.0 40.3
  SAY #81377 /* ~It's of no value to you.~ [OH81377] */
  IF ~~ THEN REPLY #81379 /* ~I'll give it to you when you give me some answers.~ */ GOTO 62
  IF ~~ THEN REPLY #81380 /* ~I'll be the judge of that.~ */ GOTO 42
  IF ~~ THEN REPLY #81381 /* ~It clearly is to you, though. So what're you offering?~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.1
  SAY #81382 /* ~I have nothing of value.~ [OH81382] */
  IF ~~ THEN REPLY #81383 /* ~Knowledge is incredibly valuable.~ */ GOTO 62
  IF ~~ THEN REPLY #81384 /* ~Fine. You'll owe me a favor.~ */ GOTO 116
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81385 /* ~Then I guess it's not your lucky day.~ */ GOTO 43
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81385 /* ~Then I guess it's not your lucky day.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.2
  SAY #81386 /* ~Damn you! I'll take the cloak from your corpse!~ [OH81386] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY #81387 /* ~Don't lie to me, <CHARNAME>. ~ [OH81387] */
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81388 /* ~All right, all right. No need to get your blood-soaked death shroud in a knot. Here, take it.~ */ GOTO 116
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81389 /* ~Did I say I didn't know where the cloak was? Sorry, I meant to say I've got it.~ */ GOTO 40
  IF ~~ THEN REPLY #81390 /* ~You call me a liar?~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.2
  SAY #81391 /* ~I've no patience for your games right now. Give me the cloak.~ [OH81391] */
  IF ~~ THEN REPLY #81392 /* ~What're you offering in exchange?~ */ GOTO 41
  IF ~~ THEN REPLY #81393 /* ~I will—once you give me some answers.~ */ GOTO 62
  IF ~~ THEN REPLY #81394 /* ~Why do you want it?~ */ GOTO 93
END

IF ~~ THEN BEGIN 46 // from: 39.2
  SAY #81395 /* ~I need that cloak if I'm to leave this place.~ [OH81395] */
  IF ~~ THEN REPLY #81396 /* ~Perhaps it would be better if you didn't leave.~ */ GOTO 47
  IF ~~ THEN REPLY #81397 /* ~Then I guess we'd best find the thing.~ */ EXIT
  IF ~~ THEN REPLY #81398 /* ~You think you'll be allowed to leave?~ */ GOTO 55
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #81399 /* ~Better for who?~ [OH81399] */
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #81400 /* ~For those who've yet to feel your cold embrace.~ */ GOTO 48
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #81400 /* ~For those who've yet to feel your cold embrace.~ */ GOTO 51
  IF ~~ THEN REPLY #81401 /* ~For me. You're trouble, Hexxat. Don't bother to deny it.~ */ GOTO 56
  IF ~~ THEN REPLY #81402 /* ~Best for everyone if I just put you down now, I think.~ */ GOTO 58
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #81403 /* ~Don't judge my embrace before you feel one. You might like it.~ [OH81403] */
  IF ~~ THEN REPLY #81405 /* ~We'll never know.~ */ GOTO 52
  IF ~~ THEN REPLY #81406 /* ~Maybe someday I'll find out.~ */ GOTO 49
  IF ~~ THEN REPLY #81407 /* ~I might at that. Shall we find out?~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #81408 /* ~That's something neither of us will enjoy if I don't get the cloak.~ [OH81408] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY #81409 /* ~Find me the cloak first. Then... we'll talk.~ [OH81409] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #81410 /* ~Men have died to feel my embrace.~ [OH81410] */
  IF ~~ THEN REPLY #81411 /* ~That was before you were embraced by Dragomir.~ */ GOTO 52
  IF ~~ THEN REPLY #81412 /* ~I'll bet they did. I, however, won't be one of them.~ */ GOTO 52
  IF ~~ THEN REPLY #81413 /* ~No more men will die for you, monster.~ */ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 56.0 55.0 51.1 51.0 48.0
  SAY #81414 /* ~You'd truly leave me here to rot?~ [OH81414] */
  IF ~~ THEN REPLY #81415 /* ~You are what you are. You mustn't be allowed to roam free. Goodbye, Hexxat.~ */ EXIT
  IF ~~ THEN REPLY #81416 /* ~If I had a lick of sense, I doubtless would. You're lucky I've no sense whatsoever.~ */ EXIT
  IF ~~ THEN REPLY #81417 /* ~Yes, but I'll send you to your final rest before I do so.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.2
  SAY #81418 /* ~You'll try, at least.~ [OH81418] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 51.2
  SAY #81419 /* ~We'll see about that.~ [OH81419] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 46.2
  SAY #81420 /* ~You would stop me now?~ [OH81420] */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 47.2
  SAY #81421 /* ~I'll not deny it—if you don't deny there's a part of you that LIKES trouble.~ [OH81421] */
  IF ~~ THEN REPLY #81422 /* ~As a rule, it's something I'd rather avoid.~ */ GOTO 52
  IF ~~ THEN REPLY #81423 /* ~You make it seem enticing.~ */ GOTO 57
  IF ~~ THEN REPLY #81424 /* ~I don't like trouble. I LOVE it.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.2 56.1
  SAY #81425 /* ~Then find me the cloak and we'll go make some trouble together.~ [OH81425] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 59.2 47.3
  SAY #81426 /* ~I've lost a dozen lifetimes in this bloody crypt, <PRO_RACE>. I'll not lose my last one to you.~ [OH81426] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 40.1
  SAY #81427 /* ~I'm not averse to playing games, <CHARNAME>. But I'll not play this one with you.~ [OH81427] */
  IF ~~ THEN REPLY #81428 /* ~I'll look forward to playing another then. Here, take the cloak.~ */ GOTO 116
  IF ~~ THEN REPLY #81429 /* ~Give it a try. You'll enjoy it, I promise.~ */ GOTO 60
  IF ~~ THEN REPLY #81430 /* ~Then we'll play another game. I call it Life and Death. Guess who wins?~ */ GOTO 58
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY #81431 /* ~You can give me the cloak now, or I'll take it later. The choice is yours.~ [OH81431] */
  IF ~~ THEN REPLY #81432 /* ~Take it, then, but know I'm disappointed. You need to lighten up, woman.~ */ GOTO 116
  IF ~~ THEN REPLY #81433 /* ~Try and take it. I dare you.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #81434 /* ~Damn it! This didn't have to happen, <PRO_RACE>!~ [OH81434] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 45.1 42.0 41.0 40.2
  SAY #81435 /* ~What do you want to know?~ [OH81435] */
  IF ~~ THEN REPLY #81436 /* ~Who was the woman you murdered?~ */ GOTO 63
  IF ~~ THEN REPLY #81437 /* ~How did you come to be trapped in Dragomir's Tomb?~ */ GOTO 67
  IF ~~ THEN REPLY #81438 /* ~What use is the cloak to you?~ */ GOTO 93
END

IF ~~ THEN BEGIN 63 // from: 87.1 62.0
  SAY #81439 /* ~Her name was Clara. She was nobody. Raised on a farm, came to Athkatla to be an actress. Ended up working on her back until an old thief took pity on her and taught her the craft. She wasn't bad at it, either. Not great, but passably skilled.~ [OH81439] */
  IF ~~ THEN REPLY #81440 /* ~She'll never use those skills again, thanks to you.~ */ GOTO 64
  IF ~~ THEN REPLY #81441 /* ~A regrettable tale, but not an uncommon one—up until its end, at any rate. How did she come to serve you?~ */ GOTO 70
  IF ~~ THEN REPLY #81442 /* ~And tasty.~ */ GOTO 83
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #81443 /* ~Sometimes sacrifices have to be made.~ [OH81443] */
  IF ~  !IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("jaheira")
~ THEN REPLY #81444 /* ~What kind of person are you, to so casually dismiss the lives of others?~ */ GOTO 65
  IF ~  !IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("jaheira")
~ THEN REPLY #81444 /* ~What kind of person are you, to so casually dismiss the lives of others?~ */ EXTERN ~JAHEIRAJ~ 548
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #81444 /* ~What kind of person are you, to so casually dismiss the lives of others?~ */ EXTERN ~DORNJ~ 815
  IF ~~ THEN REPLY #81445 /* ~It's especially convenient when the sacrifices aren't yours.~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #81448 /* ~What kind of person am I? I'm a survivor, <CHARNAME>. Nothing more and nothing less.~ [OH81448] */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 66 // from: 98.2 64.3
  SAY #81449 /* ~You have no idea what I sacrificed, <PRO_RACE>.~ [OH81449] */
  IF ~~ THEN REPLY #81450 /* ~I know it's less than Clara did.~ */ GOTO 83
  IF ~  !IsValidForPartyDialogue("jan")
~ THEN REPLY #81451 /* ~So explain it to me. I'm all ears.~ */ GOTO 67
  IF ~  IsValidForPartyDialogue("jan")
~ THEN REPLY #81451 /* ~So explain it to me. I'm all ears.~ */ EXTERN ~JANJ~ 196
  IF ~~ THEN REPLY #81452 /* ~Nor do I care.~ */ GOTO 92
END

IF ~~ THEN BEGIN 67 // from: 87.2 66.1 62.1
  SAY #81455 /* ~It was supposed to be a simple job. Break into a tomb, grab the guest of honor's helmet, and get out.~ [OH81455] */
  IF ~~ THEN REPLY #81456 /* ~Who gave you the job?~ */ GOTO 98
  IF ~~ THEN REPLY #81457 /* ~Easy as sneezing.~ */ GOTO 68
  IF ~~ THEN REPLY #81458 /* ~I see you've got Dragomir's helm, so let's finish this job and get us both the hell out of here.~ */ EXIT
  IF ~~ THEN REPLY #81459 /* ~Things didn't go as planned.~ */ GOTO 69
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #81460 /* ~So it seemed at first.~ [OH81460] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 67.3
  SAY #81461 /* ~Getting in was easy. Talking my way past Burich wasn't much harder. I found Dragomir's body in what appeared to be a deep slumber. Took the helmet from his head, and that's when everything went to hell. What I didn't know was that the casque was cursed. Dragomir wasn't sleeping—he was paralyzed, at least until I removed his helm. Once it was off, he attacked.~ [OH81461] */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 70 // from: 63.1
  SAY #81462 /* ~I thank Dragomir's Casque for that. It is capable of more than the old monster ever knew. ~ [OH81462] */
  IF ~~ THEN REPLY #81463 /* ~What can it do?~ */ GOTO 71
  IF ~~ THEN REPLY #81464 /* ~It lets you control others?~ */ GOTO 77
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #81466 /* ~Open necrotic portals. Let its wearer move from tomb to tomb. Two problems. First, the wards 'round Dragomir's Tomb kept the portals closed. Second, the casque paralyzes its wearer. ~ [OH81466] */
  IF ~~ THEN REPLY #81467 /* ~Which is why you thought he was asleep. You took the helmet off and he attacked.~ */ GOTO 76
  IF ~~ THEN REPLY #81468 /* ~That's... kind of a major design flaw.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #81470 /* ~I didn't make the thing.~ [OH81470] */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #81471 /* ~Anyway. I thought Dragomir was asleep. Took the casque...~ [OH81471] */
  IF ~~ THEN REPLY #81472 /* ~And he woke up and turned you.~ */ GOTO 74
  IF ~~ THEN REPLY #81473 /* ~I think I know the rest of the story.~ */ GOTO 76
  IF ~~ THEN REPLY #81474 /* ~And paid the price for your ignorance.~ */ GOTO 76
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #81475 /* ~Then he put the casque on me, to keep me paralyzed. I think it was meant as a cruel joke. ~ [OH81475] */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #95215 /* ~Consumed by rage, he didn't realize the helm had properties beyond the obvious one. Like a berserker focused on smashing through a door, he gave no thought to the window right next to it. ~ [OH95215] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 73.2 73.1 71.0 69.0
  SAY #81476 /* ~After I was turned, at the peak of my thirst, he put the casque on me, keeping me from feeding even on the vermin that infested the tomb. What he didn't realize was that the helm had other properties.~ [OH81476] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0 75.0 70.1
  SAY #81477 /* ~It took me years before I realized the voices in my head weren't just in my head. When I concentrated, I could hear the thoughts of those above. And with extreme effort, I could reach out to others who were most like me in life and, in some cases, guide them.~ [OH81477] */
  IF ~~ THEN REPLY #81478 /* ~How many? How many did you lure down here to their deaths before we finally found our way to you?~ */ GOTO 78
  IF ~~ THEN REPLY #81479 /* ~Guide them to their deaths.~ */ GOTO 83
  IF ~~ THEN REPLY #81480 /* ~The helm lets you control the minds of other people?~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #81481 /* ~A couple. A dozen. A hundred. Does it matter?~ [OH81481] */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 79 // from: 77.2
  SAY #81482 /* ~Just those who were like me. And the wearer cannot move with the casque on their head.~ [OH81482] */
  IF ~~ THEN REPLY #81483 /* ~Wearing it must have been torture.~ */ GOTO 81
  IF ~~ THEN REPLY #81484 /* ~Have you tried using it without putting it on your head?~ */ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.1
  SAY #81486 /* ~No, and I'm not about to try. I've been trapped in this pit far too long as it is.~ [OH81486] */
  IF ~~ THEN REPLY #81488 /* ~You're going to let fear stop you?~ */ GOTO 85
  IF ~~ THEN REPLY #81489 /* ~Fair enough. Let's get out of here and then we can experiment a bit.~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.0
  SAY #81491 /* ~It wasn't pleasant. Now will you let me have the cloak or not?~ [OH81491] */
  IF ~~ THEN REPLY #81492 /* ~I'm sorry for what you had to endure. Here is the cloak.~ */ GOTO 116
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81493 /* ~Can't do it. Sorry.~ */ GOTO 96
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81493 /* ~Can't do it. Sorry.~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 105.4 105.2 102.3 100.3 94.3 91.1 87.4 81.2
  SAY #81495 /* ~To the Abyss with you, then.~ [OH81495] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexmovefalsedawn","OH7000",1)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.0 77.1 66.0 65.0 63.2
  SAY #81496 /* ~I won't apologize for doing what I had to do to survive.~ [OH81496] */
  IF ~~ THEN REPLY #81497 /* ~And if I refuse to hand over the cloak? What will you do then?~ */ GOTO 84
  IF ~~ THEN REPLY #81498 /* ~Sometimes compromises have to be made. Here, take the cloak. I've no use for it.~ */ GOTO 116
  IF ~~ THEN REPLY #81499 /* ~Nor would I expect you to.~ */ GOTO 89
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #81500 /* ~What I must.~ [OH81500] */
  IF ~~ THEN REPLY #81501 /* ~Here then, take it.~ */ GOTO 116
  IF ~~ THEN REPLY #81503 /* ~Take your best shot, vampire.~ */ GOTO 96
END

IF ~~ THEN BEGIN 85 // from: 80.0
  SAY #81504 /* ~Fear keeps people alive.~ [OH81504] */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #81505 /* ~Now will you give me the cloak?~ [OH81505] */
  IF ~~ THEN REPLY #81506 /* ~I'd burn it before I let a vampire walk around in daylight unimpeded.~ */ GOTO 96
  IF ~~ THEN REPLY #81507 /* ~Sure. What could possibly go wrong?~ */ GOTO 116
  IF ~~ THEN REPLY #81509 /* ~The only thing you'll get from me is a second, and more permanent, death.~ */ GOTO 96
END

IF ~~ THEN BEGIN 87 // from: 95.0
  SAY #81510 /* ~Give me the cloak!~ [OH81510] */
  IF ~~ THEN REPLY #81511 /* ~Take it, then.~ */ GOTO 116
  IF ~~ THEN REPLY #81512 /* ~First, tell me of this girl you killed.~ */ GOTO 63
  IF ~~ THEN REPLY #81513 /* ~I will, I will... after you tell me how you came to be imprisoned here.~ */ GOTO 67
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81514 /* ~And give a vampire the ability to wander around in daylight unimpeded? I think I'll hang onto the cloak a while longer, thank you very much.~ */ GOTO 96
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81514 /* ~And give a vampire the ability to wander around in daylight unimpeded? I think I'll hang onto the cloak a while longer, thank you very much.~ */ GOTO 82
  IF ~~ THEN REPLY #81515 /* ~I'll give you death, you sallow witch!~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.5
  SAY #81516 /* ~Tried that already. It didn't stick.~ [OH81516] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 94.0 90.0 83.2
  SAY #81517 /* ~Satisfied now? Give me the cloak.~ [OH81517] */
  IF ~~ THEN REPLY #81518 /* ~Very well.~ */ GOTO 116
  IF ~~ THEN REPLY #81519 /* ~Say "please."~ */ GOTO 91
  IF ~~ THEN REPLY #81520 /* ~I'll be satisfied when you're dead at my hand.~ */ GOTO 96
END

IF ~~ THEN BEGIN 90 // from: 93.0
  SAY #81521 /* ~If you want to get technical about it, then yes.~ [OH81521] */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #81522 /* ~No.~ [OH81522] */
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81523 /* ~Then I guess you don't really want the cloak, do you?~ */ GOTO 96
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81523 /* ~Then I guess you don't really want the cloak, do you?~ */ GOTO 82
  IF ~~ THEN REPLY #81524 /* ~You're no fun at all. Here, take the cloak. I've no use for it.~ */ GOTO 116
  IF ~~ THEN REPLY #81525 /* ~Then die a second time!~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 66.3
  SAY #81526 /* ~Enough of this talking. I need to go. Will you let me have the cloak or not?~ [OH81526] */
  IF ~~ THEN REPLY #81527 /* ~I'd burn it before I handed it over to the likes of you.~ */ GOTO 96
  IF ~~ THEN REPLY #81528 /* ~Take it.~ */ GOTO 116
  IF ~~ THEN REPLY #81529 /* ~I think I'll keep it.~ */ GOTO 96
END

IF ~~ THEN BEGIN 93 // from: 62.2 45.2
  SAY #81530 /* ~It protects the wearer from the sunlight.~ [OH81530] */
  IF ~~ THEN REPLY #81531 /* ~Protects vampires from the sunlight, you mean.~ */ GOTO 90
  IF ~~ THEN REPLY #81532 /* ~Most cloaks do. They're also handy when it comes to dealing with wind, rain, and snow.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.1
  SAY #81533 /* ~Not for vampires they don't.~ [OH81533] */
  IF ~~ THEN REPLY #81534 /* ~Ah. I see.~ */ GOTO 89
  IF ~~ THEN REPLY #81535 /* ~Been a vampire long, have you? Lots of experience being out in the sun with cloaks?~ */ GOTO 95
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81536 /* ~I'm afraid that's your problem, not mine.~ */ GOTO 96
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81536 /* ~I'm afraid that's your problem, not mine.~ */ GOTO 82
END

IF ~~ THEN BEGIN 95 // from: 94.1
  SAY #81537 /* ~I know what happens to vampires in the sun, <CHARNAME>. And I'd rather it not happen to me.~ [OH81537] */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 96 // from: 100.2 94.2 92.2 92.0 91.3 91.0 89.2 87.3 86.2 86.0 84.1 81.1
  SAY #81546 /* ~Damn you, <CHARNAME>! I didn't want to do this!~ [OH81546] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #81559 /* ~We'll see, <PRO_RACE>.~ [OH81559] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 67.0
  SAY #81560 /* ~I don't know his true name. He goes by "L."~ [OH81560] */
  IF ~~ THEN REPLY #81561 /* ~You don't know his identity, but still you do his bidding?~ */ GOTO 100
  IF ~~ THEN REPLY #81562 /* ~Wait, you're telling me you work for L? THE L?~ */ GOTO 99
  IF ~~ THEN REPLY #81563 /* ~You let someone you don't know pull your strings. No wonder you came to a bad end.~ */ GOTO 66
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY #81564 /* ~You know him?~ [OH81564] */
  IF ~~ THEN REPLY #81768 /* ~No. Please continue.~ */ GOTO 104
END

IF ~~ THEN BEGIN 100 // from: 98.0
  SAY #81565 /* ~Anonymity is highly valued by many in my business. L's intelligence was always accurate, and he always paid in full, on time. Now, if you please: Hand over the cloak.~ [OH81565] */
  IF ~~ THEN REPLY #81566 /* ~Fine, take it.~ */ GOTO 116
  IF ~~ THEN REPLY #81567 /* ~L's intelligence seems to have fallen short on this occasion.~ */ GOTO 104
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81568 /* ~I think I'll keep the cloak a little longer.~ */ GOTO 96
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81568 /* ~I think I'll keep the cloak a little longer.~ */ GOTO 82
END

IF ~~ THEN BEGIN 101 // from:
  SAY #81569 /* ~I'm not ended yet.~ [OH81569] */
  IF ~~ THEN REPLY #81570 /* ~Perhaps you should be.~ */ GOTO 102
  IF ~~ THEN REPLY #81571 /* ~You're resilient and resourceful. I'll give you that. I'll also give you this cloak, but you owe me a favor.~ */ GOTO 116
  IF ~~ THEN REPLY #81572 /* ~That's where you're wrong.~ */ GOTO 107
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #81573 /* ~I don't deal in perhaps. Now, if you'd be so good as to hand over the cloak?~ [OH81573] */
  IF ~~ THEN REPLY #81574 /* ~It's yours. Take it.~ */ GOTO 116
  IF ~~ THEN REPLY #81575 /* ~You'll pay me back for this, Hexxat. One way or another.~ */ GOTO 116
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81576 /* ~You'll get the cloak over my dead body.~ */ GOTO 103
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81576 /* ~You'll get the cloak over my dead body.~ */ GOTO 82
END

IF ~~ THEN BEGIN 103 // from: 105.3 102.2
  SAY #81577 /* ~If that's how you want to play it.~ [OH81577] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 100.1 99.0
  SAY #81578 /* ~I'd done countless jobs for L in the past. There hadn't been problems—not serious problems—before this one.~ [OH81578] */
  IF ~~ THEN REPLY #81579 /* ~I hope you'll take these issues up with him when next you meet. Here is the cloak.~ */ GOTO 116
  IF ~~ THEN REPLY #81580 /* ~The problems on this job got you killed. And brought back to life, admittedly, but even still. Being turned into a vampire and imprisoned for years is no small thing.~ */ GOTO 105
  IF ~~ THEN REPLY #81581 /* ~Look on the bright side, Hexxat—your problems are about to come to a permanent end.~ */ GOTO 107
END

IF ~~ THEN BEGIN 105 // from: 104.1
  SAY #81582 /* ~I'll be taking the matter up with L, believe me. Now, the cloak?~ [OH81582] */
  IF ~~ THEN REPLY #81583 /* ~Here, take it.~ */ GOTO 116
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81584 /* ~I can't let you have the cloak, Hexxat. Sorry.~ */ GOTO 106
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81584 /* ~I can't let you have the cloak, Hexxat. Sorry.~ */ GOTO 82
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81585 /* ~It stays with me.~ */ GOTO 103
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81585 /* ~It stays with me.~ */ GOTO 82
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY #81586 /* ~You aren't sorry. Not yet. But you will be.~ [OH81586] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 107 // from: 104.2 101.2
  SAY #81587 /* ~Curse you, <CHARNAME>! We could've done good work together.~ [OH81587] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~  GlobalLT("OHH_FALSE_DAWN","OH7000",2)
Global("OHH_cloakmissing","OH7000",2)
~ THEN BEGIN 108 // from:
  SAY #81769 /* ~Have you found the cloak yet?~ [OH81769] */
  IF ~~ THEN REPLY #81770 /* ~I have, but I'll not give it to you.~ */ GOTO 109
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81771 /* ~Indeed I have. Here, take it.~ */ GOTO 116
  IF ~~ THEN REPLY #81772 /* ~No, not yet.~ */ GOTO 110
  IF ~~ THEN REPLY #81773 /* ~Do you really need the thing?~ */ GOTO 115
  IF ~~ THEN REPLY #81774 /* ~And if I have? What's it worth to you?~ */ GOTO 113
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #81775 /* ~Have mercy, <CHARNAME>. Give me the cloak and you'll not find me unappreciative.~ [OH81775] */
  IF ~~ THEN REPLY #102559 /* ~(Give Hexxat the cloak.)~ */ GOTO 116
  IF ~~ THEN REPLY #102560 /* ~(Do not give Hexxat the cloak.)~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 113.1 109.1 108.2
  SAY #81776 /* ~For pity's sake, help me, <CHARNAME>. Without that cloak, I'll never be free of this place.~ [OH81776] */
  IF ~~ THEN REPLY #81777 /* ~I'm sure you'll do fine, cloak or no. You strike me as a resourceful woman.~ */ GOTO 112
  IF ~~ THEN REPLY #81778 /* ~What kind of talk is that? There are dozens, hundreds of vampires who get along just fine without protective cloaks. Come, join me. I'll take care of you.~ */ GOTO 111
  IF ~~ THEN REPLY #81779 /* ~Then you'll never be free of this place.~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 115.1 112.1 112.0 110.1
  SAY #81780 /* ~I'll join you, but you'd find me a more pleasant companion if I had that cloak about my shoulders.~ [OH81780] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 112 // from: 115.0 110.0
  SAY #81781 /* ~You strike me as someone who could use a resourceful woman.~ [OH81781] */
  IF ~~ THEN REPLY #81782 /* ~I am at that.~ */ GOTO 111
  IF ~~ THEN REPLY #81783 /* ~You would join my company?~ */ GOTO 111
  IF ~~ THEN REPLY #81784 /* ~One I could trust, yes. I don't believe you qualify.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 108.4
  SAY #81785 /* ~Give me the cloak, and you'll find me most appreciative. ~ [OH81785] */
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81786 /* ~Here then. But remember, you owe me for this.~ */ GOTO 116
  IF ~~ THEN REPLY #81787 /* ~Tempting, but I think I'll hold on to it for the moment.~ */ GOTO 110
  IF ~~ THEN REPLY #81788 /* ~It'll take more than "appreciation" for me to hand it over.~ */ GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.2
  SAY #81789 /* ~I'm afraid that's all I can offer—at least until I get the cloak.~ [OH81789] */
  IF ~  PartyHasItem("ohhcloak")
~ THEN REPLY #81790 /* ~Take it then, but don't forget, you owe me.~ */ GOTO 116
  IF ~~ THEN REPLY #81791 /* ~That's unfortunate for you.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 108.3
  SAY #81792 /* ~Only if I want to survive.~ [OH81792] */
  IF ~~ THEN REPLY #81793 /* ~I'm sure you'll do fine, cloak or no. You strike me as a resourceful woman.~ */ GOTO 112
  IF ~~ THEN REPLY #81794 /* ~What kind of talk is that? There are dozens, hundreds of vampires who get along just fine without protective cloaks. Come, join me. I'll take care of you.~ */ GOTO 111
  IF ~~ THEN REPLY #81795 /* ~Then I fear you're doomed.~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 137.1 137.0 134.1 131.0 126.1 126.0 114.0 113.0 109.0 108.1 105.0 104.0 102.1 102.0 101.1 100.0 92.1 91.2 89.0 87.0 86.1 84.0 83.1 81.0 60.0 59.0 44.0 42.1 40.0
  SAY #81796 /* ~Ah! It feels like I'm wearing a wet rug and is nowhere near as fetching.~ [OH81796] */
  IF ~~ THEN REPLY #81797 /* ~What's the matter?~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ GOTO 117
  IF ~~ THEN REPLY #81798 /* ~You're right about that.~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ GOTO 124
  IF ~~ THEN REPLY #81800 /* ~I'm sorry to hear that.~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
SetGlobal("OHH_contactedL","GLOBAL",1)
EraseJournalEntry(84955)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 124.0 116.0
  SAY #81801 /* ~Nothing... It's nothing. For a moment, I felt—different. The protection spells were rougher than I expected.~ [OH81801] */
  IF ~~ THEN REPLY #81802 /* ~So you're all right?~ */ GOTO 118
  IF ~~ THEN REPLY #81803 /* ~Protection spells that hurt the wearer. Dragomir had a... unique perspective, didn't he?~ */ GOTO 118
  IF ~~ THEN REPLY #81804 /* ~Good.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 118 // from: 124.1 117.1 117.0
  SAY #81805 /* ~Fine. I'm fine. There's business I must attend to. Meet me at the Coronet in two hours.~ [OH81805] */
  IF ~~ THEN REPLY #81806 /* ~Is that a good idea? Perhaps you should stick with me for the time being.~ */ GOTO 119
  IF ~~ THEN REPLY #81807 /* ~That's it? You get the cloak and you leave?~ */ GOTO 120
  IF ~~ THEN REPLY #81808 /* ~You're not going anywhere, vampire.~ */ GOTO 121
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #81809 /* ~You're right. If L's waited this long, another few hours won't hurt him.~ [OH81809] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #81810 /* ~That's it.~ [OH81810] */
  IF ~~ THEN DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 121 // from: 118.2
  SAY #81811 /* ~And how do you think you'll stop me, <PRO_RACE>?~ [OH81811] */
  IF ~~ THEN REPLY #81812 /* ~By appealing to your survival instinct. You're new to this undead life of yours. Until you're more familiar with your abilities, you should keep yourself surrounded by those you can trust.~ */ GOTO 123
  IF ~~ THEN REPLY #81813 /* ~I'll ask. REALLY. NICELY. Please don't go yet. You've just woken up after years of slumber. You shouldn't be alone right now.~ */ GOTO 122
  IF ~~ THEN REPLY #81814 /* ~Any way I can. I've made an investment in you. You'll stay with me until it's paid off.~ */ GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 123.0 121.2 121.1
  SAY #81815 /* ~All right. L's waited this long to hear from me; another few hours won't kill him.~ [OH81815] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.0
  SAY #81816 /* ~You think I can trust you, then?~ [OH81816] */
  IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 124 // from: 116.1
  SAY #81817 /* ~I am?~ [OH81817] */
  IF ~~ THEN REPLY #81818 /* ~I was joking. What's the problem?~ */ GOTO 117
  IF ~~ THEN REPLY #81819 /* ~Don't worry. You manage to pull it off. Are you all right?~ */ GOTO 118
END

IF ~  Global("OHH_FALSE_DAWN","OH7000",2)
~ THEN BEGIN 125 // from:
  SAY #81825 /* ~False dawn trap. If I'd been a fraction slower, it would have killed me.~ [OH81825] */
  IF ~~ THEN REPLY #81826 /* ~Such is the price a vampire pays.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 126
  IF ~~ THEN REPLY #81827 /* ~For an old broad, you're pretty quick.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 129
  IF ~~ THEN REPLY #81828 /* ~A shame you weren't a little slower. It would have saved me a little effort.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #81829 /* ~I wouldn't have to pay it if you'd given me Dragomir's Cloak.~ [OH81829] */
  IF ~~ THEN REPLY #81830 /* ~I shouldn't be so selfish. Here, take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~~ THEN REPLY #81831 /* ~You're not going to let that one go, are you? Fine, here it is, take it. You're WELCOME.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~~ THEN REPLY #81832 /* ~Get used to paying the price, woman. You're not getting the cloak.~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.2
  SAY #81833 /* ~Killing me will take more than a little effort, <CHARNAME>!~ [OH81833] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.2
  SAY #81834 /* ~That's where you're wrong, <PRO_RACE>!~ [OH81834] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 129 // from: 125.1
  SAY #81835 /* ~Old?~ [OH81835] */
  IF ~~ THEN REPLY #81836 /* ~I meant only that you've been trapped down here for a good many years. All things considered, you look fabulous.~ */ GOTO 131
  IF ~~ THEN REPLY #81837 /* ~No, not old. Well-worn. Experienced. Durable.~ */ GOTO 130
  IF ~~ THEN REPLY #81838 /* ~What else could I call it?~ */ GOTO 133
END

IF ~~ THEN BEGIN 130 // from: 131.2 129.1
  SAY #81839 /* ~Shut up.~ [OH81839] */
  IF ~~ THEN REPLY #81840 /* ~Gladly.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0
  SAY #81841 /* ~I wouldn't need to worry about the false dawn if I had Dragomir's cloak.~ [OH81841] */
  IF ~~ THEN REPLY #81842 /* ~Here, then. Take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81843 /* ~I wouldn't have needed to worry about an insane vampire trying to kill me if you hadn't brought me here. Life is a series of challenges.~ */ GOTO 134
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81843 /* ~I wouldn't have needed to worry about an insane vampire trying to kill me if you hadn't brought me here. Life is a series of challenges.~ */ GOTO 130
  IF ~~ THEN REPLY #81844 /* ~It's unfortunate that you don't have it, then.~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.3
  SAY #81845 /* ~Not as unfortunate as it's about to become for you.~ [OH81845] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 133 // from: 129.2
  SAY #81846 /* ~I'd not mention it at all, and I suggest you do the same.~ [OH81846] */
  IF ~~ THEN REPLY #81847 /* ~As you wish.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
  IF ~~ THEN REPLY #81848 /* ~Mention what? I mention nothing. NOTHING.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
  IF ~~ THEN REPLY #81849 /* ~Feeling your age, Hexxat?~ */ GOTO 137
END

IF ~~ THEN BEGIN 134 // from: 131.1
  SAY #81850 /* ~Hand it over, <PRO_RACE>. This is your last chance.~ [OH81850] */
  IF ~~ THEN REPLY #81851 /* ~I dislike ultimatums.~ */ GOTO 135
  IF ~~ THEN REPLY #81852 /* ~Ah, the hell with you. Take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~~ THEN REPLY #81853 /* ~You know what this is? This is me squandering my last chance. What are you going to do about it?~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #81854 /* ~Perhaps death will be more to your liking!~ [OH81854] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.2
  SAY #81855 /* ~I'll show you!~ [OH81855] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 137 // from: 133.2
  SAY #81856 /* ~I'll feel your blood pouring down my throat if you don't give me Dragomir's Cloak.~ [OH81856] */
  IF ~~ THEN REPLY #81857 /* ~It's yours. The smell was beginning to get to me anyway.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~~ THEN REPLY #81858 /* ~Here, take it. You could've just said please, you know. ~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 116
  IF ~~ THEN REPLY #81859 /* ~Try it, witch.~ */ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.2
  SAY #81860 /* ~Die!~ [OH81860] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~  Global("OHH_coronet","AR0406",0)
!RealGlobalTimerExpired("OHH_hexxatcoronettimer","GLOBAL")
~ THEN BEGIN 139 // from:
  SAY #81861 /* ~You came. I'm glad.~ [OH81861] */
  IF ~~ THEN REPLY #81862 /* ~Surprised?~ */ GOTO 140
  IF ~~ THEN REPLY #81863 /* ~Your gladness warms my heart. My living, still-beating heart.~ */ GOTO 148
  IF ~~ THEN REPLY #81864 /* ~I'm not here for you.~ */ GOTO 157
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #81865 /* ~No, but I wouldn't have been surprised if you hadn't shown up, either.~ [OH81865] */
  IF ~~ THEN REPLY #81866 /* ~Have you taken care of your business?~ */ GOTO 141
  IF ~~ THEN REPLY #81867 /* ~It was a close call, I must admit. What will you do now?~ */ GOTO 141
  IF ~~ THEN REPLY #81868 /* ~Then you won't be surprised when I leave now, either.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from: 158.0 140.1 140.0
  SAY #81869 /* ~My employer is aware of the situation. He'll be in contact in due course, I'm sure. Until then, I may do as I wish.~ [OH81869] */
  IF ~~ THEN REPLY #81870 /* ~And what do you wish?~ */ GOTO 142
  IF ~~ THEN REPLY #81871 /* ~By which you mean going places, meeting interesting new people, killing them, and drinking their blood.~ */ GOTO 156
  IF ~~ THEN REPLY #81872 /* ~Good luck on whatever you choose to pursue.~ */ EXIT
END

IF ~~ THEN BEGIN 142 // from: 154.0 149.0 141.0
  SAY #81873 /* ~The question is what you wish, <CHARNAME>.~ [OH81873] */
  IF ~~ THEN REPLY #81874 /* ~You may join me and my friends, if you want.~ */ GOTO 144
  IF ~~ THEN REPLY #81875 /* ~What I wish is that I'd never heard the name Hexxat. Farewell, vampire. We'll not meet again.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #81876 /* ~Someone of your skills could be of great use to me. Why not join me and my friends?~ */ GOTO 143
  IF ~~ THEN REPLY #81877 /* ~What I wish is that I'd killed you in Dragomir's Tomb. But better late than never, I suppose.~ */ GOTO 147
END

IF ~~ THEN BEGIN 143 // from: 156.2 142.2
  SAY #81878 /* ~I thought you'd never ask.~ [OH81878] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 144 // from: 142.0
  SAY #81879 /* ~Do you want that?~ [OH81879] */
  IF ~~ THEN REPLY #81880 /* ~Of course.~ */ GOTO 146
  IF ~~ THEN REPLY #81881 /* ~You ate the last person who worked with you. Let's say I'm of two minds on the issue.~ */ GOTO 145
  IF ~~ THEN REPLY #81882 /* ~Don't play games with me, vampire. I wouldn't have suggested it otherwise.~ */ GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.2 144.1
  SAY #81883 /* ~Not the most inviting of invitations, but it's the best I've had in some time. Very well, I'll join you.~ [OH81883] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 146 // from: 144.0
  SAY #81884 /* ~Very well. I accept.~ [OH81884] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 148.2 142.3
  SAY #81885 /* ~Damn you for a fool, <CHARNAME>! It didn't have to be like this!~ [OH81885] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 159.1 139.1
  SAY #81886 /* ~Are we going to have a problem here, <CHARNAME>?~ [OH81886] */
  IF ~~ THEN REPLY #81887 /* ~No. No problems.~ */ GOTO 149
  IF ~~ THEN REPLY #81888 /* ~You tell me.~ */ GOTO 152
  IF ~~ THEN REPLY #81889 /* ~Just one, but it'll be over soon.~ */ GOTO 147
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #81890 /* ~Excellent. We'll do great things together, you and I.~ [OH81890] */
  IF ~~ THEN REPLY #81891 /* ~You would join me?~ */ GOTO 142
  IF ~~ THEN REPLY #81892 /* ~I'm not sure our definitions of "great things" are completely in alignment.~ */ GOTO 150
  IF ~~ THEN REPLY #81893 /* ~You better be right, Hexxat.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 150 // from: 149.1
  SAY #81894 /* ~Mutually rewarding things, then.~ [OH81894] */
  IF ~~ THEN REPLY #81895 /* ~I can live with that. Provided my new ally doesn't kill me, of course.~ */ GOTO 151
  IF ~~ THEN REPLY #81906 /* ~Such as?~ */ GOTO 153
  IF ~~ THEN REPLY #81908 /* ~I look forward to it.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #81909 /* ~I'll try and restrain myself. You might want to do the same.~ [OH81909] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 157.1 156.1 148.1
  SAY #81910 /* ~We can be good for each other, you and I.~ [OH81910] */
  IF ~~ THEN REPLY #81911 /* ~I don't think so.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81912 /* ~I hope you're right. I'll admit part of me looks forward to finding out.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
  IF ~~ THEN REPLY #81913 /* ~So far, I've been very good for you. How good you are for me remains to be seen. We'll find out. Soon.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #81914 /* ~Use your imagination, <CHARNAME>.~ [OH81914] */
  IF ~~ THEN REPLY #81915 /* ~I have been. That's why I'm so nervous having you around.~ */ GOTO 154
  IF ~~ THEN REPLY #81916 /* ~Stick around awhile. I'm sure I'll come up with something.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 154 // from: 153.0
  SAY #81917 /* ~But you will have me around.~ [OH81917] */
  IF ~~ THEN REPLY #81918 /* ~If that is what you wish.~ */ GOTO 142
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #81919 /* ~Best to have you near, I think. That way I can keep an eye on you.~ */ GOTO 155
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #81919 /* ~Best to have you near, I think. That way I can keep an eye on you.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
  IF ~~ THEN REPLY #81920 /* ~I'll have you, vampire. For now.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from: 154.1
  SAY #81921 /* ~Keep both eyes on me. You won't be disappointed.~ [OH81921] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 141.1
  SAY #81922 /* ~I'll try to limit the killing and blood-drinking to boring people.~ [OH81922] */
  IF ~~ THEN REPLY #81923 /* ~You try to turn cold-blooded murder into a joke. I cannot be around you.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81924 /* ~I'll admire your restraint, just as soon as I see it.~ */ GOTO 152
  IF ~~ THEN REPLY #81925 /* ~Well, you certainly won't be going hungry that way. Will you stay on with me for a while—at least until your employer contacts you again?~ */ GOTO 143
END

IF ~~ THEN BEGIN 157 // from: 139.2
  SAY #81926 /* ~Are you sure of that?~ [OH81926] */
  IF ~~ THEN REPLY #81927 /* ~Very. ~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81928 /* ~Pretty sure. A solid seventy-five percent sure, at least.~ */ GOTO 152
  IF ~~ THEN REPLY #81929 /* ~You lured me into a mad vampire's tomb. What makes you think I have any regard for you whatsoever?~ */ GOTO 158
END

IF ~~ THEN BEGIN 158 // from: 157.2
  SAY #81930 /* ~The fact that you're here.~ [OH81930] */
  IF ~~ THEN GOTO 141
END

IF ~  Global("OHH_coronet","AR0406",0)
RealGlobalTimerExpired("OHH_hexxatcoronettimer","GLOBAL")
~ THEN BEGIN 159 // from:
  SAY #81948 /* ~You're late, <CHARNAME>.~ [OH81948] */
  IF ~~ THEN REPLY #81949 /* ~Better late than never.~ */ GOTO 160
  IF ~~ THEN REPLY #81950 /* ~You should be glad I showed up at all.~ */ GOTO 148
  IF ~~ THEN REPLY #81952 /* ~I'm not here for you.~ */ GOTO 170
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #81953 /* ~You greet me with a cliché? I expected better of you.~ [OH81953] */
  IF ~~ THEN REPLY #81954 /* ~I'm sorry to have disappointed you. Have you taken care of your outstanding business?~ */ GOTO 161
  IF ~~ THEN REPLY #81955 /* ~Stick with me. I'll soon fix that.~ */ GOTO 165
  IF ~~ THEN REPLY #81956 /* ~There's a lesson for you there. Unfortunately, it will be your last.~ */ GOTO 167
END

IF ~~ THEN BEGIN 161 // from: 171.0 160.0
  SAY #81957 /* ~My employer is aware of my situation. He'll be in contact in due course, I'm sure. Until then, I may do as I wish.~ [OH81957] */
  IF ~~ THEN REPLY #81958 /* ~And what do you wish?~ */ GOTO 162
  IF ~~ THEN REPLY #81959 /* ~By which you mean going places, meeting interesting new people, killing them, and drinking their blood.~ */ GOTO 169
  IF ~~ THEN REPLY #81960 /* ~Good luck on whatever you choose to pursue.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #81961 /* ~The question is what you wish, <CHARNAME>.~ [OH81961] */
  IF ~~ THEN REPLY #81962 /* ~You may join me and my friends, if you want.~ */ GOTO 164
  IF ~~ THEN REPLY #81963 /* ~What I wish is that I'd never heard the name Hexxat. Farewell, vampire. We'll not meet again.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #81964 /* ~Someone of your skills could be of great use to me. Why not join me and my friends?~ */ GOTO 163
  IF ~~ THEN REPLY #81966 /* ~What I wish is that I'd killed you in Dragomir's Tomb. But better late than never, I suppose.~ */ GOTO 167
END

IF ~~ THEN BEGIN 163 // from: 169.2 162.2
  SAY #81967 /* ~I thought you'd never ask.~ [OH81967] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from: 162.0
  SAY #81968 /* ~Is that what you want?~ [OH81968] */
  IF ~~ THEN REPLY #81969 /* ~Of course.~ */ GOTO 166
  IF ~~ THEN REPLY #81970 /* ~You ate the last person who worked with you. Let's say I'm of two minds on the issue.~ */ GOTO 165
  IF ~~ THEN REPLY #81971 /* ~Don't play games with me, vampire. I wouldn't have suggested it otherwise.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.2 164.1 160.1
  SAY #81973 /* ~One of the more backhanded invitations I've received, but it's the best I've had in some time. Very well, I'll join you.~ [OH81973] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 166 // from: 164.0
  SAY #81974 /* ~Very well. I accept.~ [OH81974] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 167 // from: 162.3 160.2
  SAY #81975 /* ~Damn you for a fool, <CHARNAME>! It didn't have to be like this!~ [OH81975] */
  IF ~~ THEN DO ~ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 168 // from: 170.1 169.1
  SAY #81976 /* ~We can be good for each other, you and I.~ [OH81976] */
  IF ~~ THEN REPLY #81978 /* ~I don't think so.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81979 /* ~I hope you're right. I'll admit part of me looks forward to finding out.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
  IF ~~ THEN REPLY #81980 /* ~So far, I've been very good for you. How good you are for me remains to be seen. We'll find out. Soon.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
  IF ~~ THEN REPLY #81981 /* ~Stick around awhile. I'm sure I'll come up with something.~ */ DO ~SetGlobal("OHH_hexxatjoined","LOCALS",1)
EraseJournalEntry(84958)
EraseJournalEntry(84955)
AddJournalEntry(84964,QUEST)
JoinParty()
~ JOURNAL #84963 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I've tentatively allowed her to join me. We'll see how things go.~ */ EXIT
END

IF ~~ THEN BEGIN 169 // from: 161.1
  SAY #81982 /* ~I'll try to limit the killing and blood-drinking to boring people.~ [OH81982] */
  IF ~~ THEN REPLY #81983 /* ~You try to turn cold-blooded murder into a joke. I cannot be around you.~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81985 /* ~I'll admire your restraint, just as soon as I see it.~ */ GOTO 168
  IF ~~ THEN REPLY #81986 /* ~Well, you certainly won't be going hungry that way. Will you stay on with me for a while—at least until your employer contacts you again?~ */ GOTO 163
END

IF ~~ THEN BEGIN 170 // from: 159.2
  SAY #81987 /* ~Are you sure of that?~ [OH81987] */
  IF ~~ THEN REPLY #81988 /* ~Very. ~ */ JOURNAL #84962 /* ~Hexxat's purpose

Hexxat believes we can be of value to each other. She can help me in my ventures, while I can assist her in assignments for "L," the mysterious employer who sent her into Dragomir's embrace. I declined—there's little I've heard of L that inspires confidence in him. Hexxat will remain at the Copper Coronet for the time being.~ */ EXIT
  IF ~~ THEN REPLY #81989 /* ~Pretty sure. A solid seventy-five percent sure, at least.~ */ GOTO 168
  IF ~~ THEN REPLY #81990 /* ~You lured me into a mad vampire's tomb. What makes you think I have any regard for you whatsoever?~ */ GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.2
  SAY #81991 /* ~I hold myself in very high esteem, and rightly so.~ [OH81991] */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 172 // from:
  SAY #81268 /* ~Forgive me, Clara... This is the only way.~ [OH81268] */
  IF ~~ THEN DO ~ClearAllActions()
DisplayStringHead("OHHFAK",102468)
StartCutSceneMode()
StartCutSceneEx("ohhcut12",FALSE)
~ EXIT
END
