// creator  : weidu (version 24900)
// argument : MINSCJ.DLG
// game     : .
// source   : ./override/MINSCJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~MINSCJ~

IF ~  ReputationGT(Player1,13)
Global("MinscGoodRep","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #2632 /* ~We do good things here! All will remember the heroes that are Minsc and Boo and you! ~ [MINSC78] */
  IF ~~ THEN REPLY #2644 /* ~Minsc, we'll not make friends with you boasting about what heroes we are. ~ */ GOTO 3
  IF ~~ THEN REPLY #2645 /* ~Right you are, Minsc. Only good things will come from the examples we set. ~ */ GOTO 2
  IF ~~ THEN REPLY #2646 /* ~Er, yes. Now let's get going before we draw a crowd. No need to flaunt our deeds. ~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2648 /* ~Nonsense! All enjoy the sight of heroes. We'll be the talk of the town for days! Wave to the nice people, Boo. Wave to the nice hamster, people. WAVE!~ */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #2650 /* ~Yes! Lead evil by example, and one day we need no longer put the boots to those that stray off the path of goodness into the muck and bile of villainy and track great bloody footprints across our lily-white tiles! Boo will have clean wood shavings, you evil bastards!~ */
  IF ~~ THEN REPLY #2668 /* ~Ooookaaaay.~ */ DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #2651 /* ~Good has no need of low profiles! There is no shame in boasting if one follows through, and I am not about to keep my voice low! Perhaps Boo will, but not I!~ */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~  ReputationGT(Player1,15)
Global("MinscGoodRep2","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY #2669 /* ~We follow the path that surely leads to glory! Boo is proud to be here, I can tell.~ [MINSC79] */
  IF ~~ THEN REPLY #2670 /* ~It is not worthy of such a fuss, Minsc. A simple, uninspiring act of charity.~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY #2671 /* ~And he should be! We are the righteous standard by which others are judged!~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #2672 /* ~I am not trying to please your rodent. I do this because it will benefit me in the long term.~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY #2673 /* ~Minsc, have you considered getting restorative magic for that head of yours? ~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #2674 /* ~Then say it louder! We must inspire fear in evil! Quiet tales of hamsters are foolish, but a man and his hamster that tear evil limb from limb? That's scary!~ */
  IF ~~ THEN REPLY #2675 /* ~I only help because it's profitable to do so! I am not some traveling charity show!~ */ GOTO 8
  IF ~~ THEN REPLY #2679 /* ~Eeeh, yes, though I don't think you will be scaring quite who you expect.~ */ GOTO 9
  IF ~~ THEN REPLY #2680 /* ~How do I get out of this dog and pony show?~ */ GOTO 10
  IF ~~ THEN REPLY #2681 /* ~Ahh, what the hell. Right-o, Minsc! Our deeds will ring in the evil ears we box and label "Do not open 'til midwinter fest"!~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.3 4.1
  SAY #2676 /* ~Now you are speaking the language of Minsc! Next we must get you a hamster! Or perhaps an ice weasel, whatever your tastes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #2677 /* ~It's good that I know you are kidding. I would hate to have to cleanse my own party of evil. Always strive to be on the safe end of the justice boot.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 4.3
  SAY #2678 /* ~I know I think clearly because Boo tells me so. That is enough for me, though it never seems to be enough for anyone else. Their loss, for I am content.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #2682 /* ~As long as some are scared and tell the rest, that is all that matters. Come, we must press on against the tide of naughtiness. Mind your step.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY #2683 /* ~I don't understand the reference, but Boo enjoyed it. An omen of good things... or of horrible and humorous death, I am not sure which.~ */
  IF ~~ THEN GOTO 231
END

IF ~  ReputationGT(Player1,18)
Global("MinscGoodRep3","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #2684 /* ~These acts will place our names in the songs of skalds and bards from here to my home! There can be no doubt.~ [MINSC80] */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep3","LOCALS",1)
~ EXIT
END

IF ~  ReputationLT(Player1,7)
Global("MinscBadRep","LOCALS",0)
~ THEN BEGIN 12 // from:
  SAY #2685 /* ~I will not tolerate actions such as this! We should strive to be just and fair.~ [MINSC81] */
  IF ~~ THEN DO ~SetGlobal("MinscBadRep","LOCALS",1)
~ EXIT
END

IF ~  ReputationLT(Player1,3)
Global("MinscBadRep2","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #2689 /* ~When making a glorious egg dish of goodness, I understand some eggs must be broken. But actions such as this are... simply deplorable!~ [MINSC82] */
  IF ~~ THEN REPLY #2690 /* ~Do you think before you speak, or do words just stumble out on their own?~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY #2691 /* ~You are right, Minsc. I shall try to be nicer in my dealings with people. Yes, I shall try. ~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 15
  IF ~~ THEN REPLY #2692 /* ~It was a momentary lapse, though I can see how this might be profitable. ~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #2693 /* ~Words are just loud air. Actions must take priority in my mind. A phrase might cause some discomfort, but it is good deeds that cause evil the most pain.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #2694 /* ~That is all that can be asked. A crusade might be better, but few have the focus required. I will be the example if anyone wishes to follow in my wake.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #2695 /* ~A hero needs no profit. A sword is just a few coins; armor is only a few more. No, it is evil that needs gold to fund their machinations, not heroes.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",0)
~ THEN BEGIN 17 // from:
  SAY #2696 /* ~I, uh... I could use a bit of a lie-down... lest I drop Boo on the battlefield. Have we a healer near?~ [MINSC83] */
  IF ~~ THEN REPLY #2697 /* ~Hang in there, big fella. We'll get you fixed up as soon as possible.~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 18
  IF ~~ THEN REPLY #2698 /* ~Suck it up, Minsc! I never figured the big and powerful Minsc for a weakling!~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY #2699 /* ~You must be patient, Minsc. We are not always in the best circumstance for quick healing.~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #2700 /* ~Yes, that would be best. I should not like evil to get the jump on a weakened Minsc. We must be at our best for the fight to come.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #2701 /* ~Minsc is no weakling! I have survived more than you could bear! It is just unwise to let wounds go untreated! Enemies will find their work half done already!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #2702 /* ~I know this, but Boo worries. ~ */
  IF ~~ THEN EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",1)
~ THEN BEGIN 21 // from:
  SAY #2703 /* ~Ugh! We must rest and get healthy. It would not do for us to be caught unsuspecting with Minsc in this kind of shape.~ [MINSC84] */
  IF ~~ THEN DO ~SetGlobal("MinscInjured","LOCALS",2)
~ EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",2)
~ THEN BEGIN 22 // from:
  SAY #2704 /* ~I do not get through many battles without injury. Why is Minsc always on the front line taking damage? ~ [MINSC85] */
  IF ~~ THEN REPLY #2707 /* ~Are you a freakishly large juggernaut that charges at the drop of a hat? Just a guess on my part.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 23
  IF ~~ THEN REPLY #2708 /* ~But you have deferred damage away from another. That is a valiant sacrifice, Minsc.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 24
  IF ~~ THEN REPLY #2709 /* ~Do you wish to cower away from battle? I would not have expected such from you. ~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 25
  IF ~~ THEN REPLY #2711 /* ~If you continue to complain, I shall make certain you are left on the battlefield altogether. ~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #2713 /* ~Perhaps I am a touch quick to combat, but I temper my temper with common sense about who I should attack. What? I do too! Why does Boo snicker?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #2717 /* ~If I protect more people by being at the forefront, then so be it! I shall charge in an instant and make my enemies sorry they were born as bad as they are! ~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #2735 /* ~If that is what you think, then you do not know Minsc. I never cower! Boo does, but he fears being underfoot. I do not! I am the over-foot placing evil at end-of-boot!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY #2774 /* ~If you don't care about your party, then it will be you that is left on the battlefield eventually! I can only fight as long as I have my health...~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 27 // from:
  SAY #2486 /* ~Boo points, I punch! Is very simple relationship, but it is effective. ~ [MINSC49] */
  IF ~~ THEN EXTERN ~BKORGAN~ 23
END

IF ~~ THEN BEGIN 28 // from:
  SAY #3022 /* ~Boo is a fine friend, and powerful in ways you don't let yourself see! To insult Boo is to insult all things small that try hard. Oh, and Minsc as well.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 24
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14216 /* ~Boo is no rat, tiny one. He is a space hamster, and he will go for the eyeballs of children who call him rat.~ */
  IF ~~ THEN EXTERN ~BRAT1~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #14247 /* ~No. I have had enough of tiny people trying to steal Boo. Away!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14311 /* ~Stupid is as stupid does, young one. So says Boo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14496 /* ~No! Boo is NOT for eating! Boo is mighty and wise and probably quite stringy. Er, and he is my companion!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14533 /* ~I am sorry. I am only for Boo and my witch.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #15154 /* ~<CHARNAME> decides if I enjoy my spirits. Such friendly froth sometimes makes me dizzy, but I thank you for the offer. So does Boo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15461 /* ~I am not impressed by fighting slaves. But I would CRUSH any true opponent who dared to face me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #15959 /* ~You are coming from Rashemen? I remember it fondly and hope to take Boo to see it once I have completed my dajemma.~ */
  IF ~~ THEN EXTERN ~SHOP03~ 6
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15960 /* ~No. Boo is my hamster. And Boo is my friend.~ */
  IF ~~ THEN EXTERN ~SHOP03~ 7
END

IF ~~ THEN BEGIN 38 // from:
  SAY #24851 /* ~Yes? You talking to Minsc?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 1
END

IF ~~ THEN BEGIN 39 // from:
  SAY #24855 /* ~Boo says such a sphere will not fit into my pocket. If I can't carry it with me, it's just not a good buy.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 2
END

IF ~~ THEN BEGIN 40 // from:
  SAY #24858 /* ~Yes indeed. Boo is exceptionally smart for a hamster. Smarter than all the hucksters in Calimshan.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 3
END

IF ~~ THEN BEGIN 41 // from:
  SAY #24861 /* ~He mutters occasionally about fellow hamsters that will kill you all, but he is just moody, so don't worry. See how he glares? Shhh, we should leave him be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #25009 /* ~Nobody cheats Minsc! If somebody dares to cheat me, they are in for a boot-stomping adjustment to their moral value systems!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #25370 /* ~I am always willing to help those in need! I will give your troubles the one-two boot-stomp of goodness! ~ */
  IF ~~ THEN EXTERN ~RADEEL~ 6
END

IF ~~ THEN BEGIN 44 // from:
  SAY #25375 /* ~I sometimes feel lost, but Boo tells me where to go. Boo points, I punch! Well, Boo actually just kind of runs, but I still punch! Yes, sir!~ */
  IF ~~ THEN EXTERN ~RADEEL~ 7
END

IF ~~ THEN BEGIN 45 // from:
  SAY #25378 /* ~Boo knows everything and is ever so willing to help others. You... you are kind to animals, aren't you? Rodents in particular?~ */
  IF ~~ THEN EXTERN ~RADEEL~ 8
END

IF ~~ THEN BEGIN 46 // from:
  SAY #25380 /* ~Boo doesn't like rats either. Something about their tails makes him... edgy, and you don't know creepy until you've seen an edgy hamster! ~ */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 47 // from:
  SAY #25385 /* ~Yes, Boo is friend to all. Such greatness, packed into a small, furry bundle of goodness.~ */
  IF ~~ THEN EXTERN ~RADEEL~ 10
END

IF ~~ THEN BEGIN 48 // from:
  SAY #25452 /* ~Eh? You are speaking of me? How do you know this?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 49 // from:
  SAY #25589 /* ~No. I do not act. I fight, and fight for real.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #25649 /* ~I am sorry, little halfling.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #25686 /* ~Why does this impish halfling jump around me like that? Is he dancing? Boo likes it when halflings dance around!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #25807 /* ~I think this is good for you. Boo also is sending his congratulations.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #26277 /* ~I might join your hunt another time, but seabirds make Boo uncomfortable. It is best I spare them his wrath. Yes, best for all! But I must go now, little one.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #27689 /* ~Boo is no pet... he is a fine companion for Minsc. But he seems to like you anyway.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #29580 /* ~Perhaps people just need a swift kick in the punctuals! ~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 9
END

IF ~~ THEN BEGIN 56 // from:
  SAY #29582 /* ~No, I seldom have time for reading. Too much work to be done! ~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 10
END

IF ~~ THEN BEGIN 57 // from:
  SAY #29662 /* ~Why? In beloved Rashemen, if things don't work, we encourage them with a loving backhand of productivity!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #29838 /* ~A thinking game! Minsc knows the answer then! Evil ends in death, because I put my foot in its backside!~ */
  IF ~~ THEN EXTERN ~RIFTG01~ 13
END

IF ~~ THEN BEGIN 59 // from:
  SAY #29839 /* ~Oops. I apologize.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #29854 /* ~This is a foolish question! Who travels with you? Minsc does! What else matters?~ */
  IF ~~ THEN EXTERN ~RIFTG01~ 16
END

IF ~~ THEN BEGIN 61 // from:
  SAY #29857 /* ~Oops. I apologize. Next time, I let Boo answer.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #30107 /* ~You cannot have Boo, little girl! But you may pet him and make pretty cooing noises if you wishes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #33134 /* ~Boo is not food, <CHARNAME>. Maybe I should throw you to the cute little meat-eaters and see how you like it?~ */
  IF ~~ THEN EXTERN ~OBSHAL03~ 4
END

IF ~~ THEN BEGIN 64 // from:
  SAY #38668 /* ~This is silly! Buttons are not how one escapes dungeons! I would smash the button and rain beatings liberally down on the wizard for playing such a trick!~ */
  IF ~~ THEN EXTERN ~AATAQAH~ 23
END

IF ~~ THEN BEGIN 65 // from:
  SAY #38696 /* ~Irenicus? There is a special place in my bootprint for him, and I shall fill it in the name of Dynaheir! Such evil to keep forest spirits locked away!~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 16
END

IF ~~ THEN BEGIN 66 // from:
  SAY #38723 /* ~I would hate being forgotten in a bottle. It might depend somewhat on the type of bottle, but overall I expect the effect would be similar. It is not right.~ */
  IF ~~ THEN EXTERN ~LIFE2~ 2
END

IF ~~ THEN BEGIN 67 // from:
  SAY #38764 /* ~We must help this child! I will find who took his mother and teach them a thing or three about decency, respect, and keeping their hands off of people's parents!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #34112 /* ~Find the boy's mother inside the circus tent

A little boy is lost outside of the circus tent while his mother is apparently trapped inside. I will see if she is still within.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #38774 /* ~Owl wizards?~ */
  IF ~~ THEN EXTERN ~BYSTAND2~ 17
END

IF ~~ THEN BEGIN 69 // from:
  SAY #38779 /* ~It is no risk! Not so long as we have swords and braveness to the brim of the tall glass of goodness! Right, Boo?~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 25
END

IF ~~ THEN BEGIN 70 // from:
  SAY #38911 /* ~I will protect my witch! EVIL SHALL SUFFER AT THE HANDS OF MINSC AND HIS WITCH! WOE TO THOSE WHO WOULD BRING DANGER TO AERIE!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 32
END

IF ~~ THEN BEGIN 71 // from:
  SAY #38936 /* ~<CHARNAME>! We must aid him! Evil stands before me and demands a quick kick in the posterior!~ */
  IF ~~ THEN DO ~Attack("SlumsMugger4")
ActionOverride("Mazzy",Attack("SlumsMugger2"))
~ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #38943 /* ~I will not stand and watch men carting slaves! THEY SHALL FEEL MY BLADE AND BOOT AND BACKHAND AS WELL! GO FOR THE EYES, BOO, GO FOR THE EYES!~ */
  IF ~~ THEN DO ~Attack("SlumsSlaver2")
~ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #38960 /* ~Hmmm... the sphere is awfully big for only 500 gold pieces. It might be a good bargain. What say you, Boo?~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 143
END

IF ~~ THEN BEGIN 74 // from:
  SAY #39182 /* ~We shall go and save the village for the boy! I will crush the evil! All of the evil! Even the small, rodent-sized evil... although that is more Boo's job.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 44
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 320
END

IF ~~ THEN BEGIN 75 // from:
  SAY #39270 /* ~They throw this man into a pit with a wild beast? This is a crime against man AND nature! They will surely feel my wrath for this travesty!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut02c",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #39288 /* ~We are going to free this warrior and his people? This is a task of great honor! We shall be great heroes for this, heroes doing heroic things for all to see!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 9
END

IF ~~ THEN BEGIN 77 // from:
  SAY #39353 /* ~This man is a great evil if he does such things! The shining blades of goodness must be raised against him! Justice demands a painful, pointy thrashing!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 6
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39365 /* ~More children kept as slaves! Boo is outraged by the evil that leaps about this city like a hot-footed weasel! We must save the children, <CHARNAME>, we must!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~HENDAK~ 24
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 323
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 33
END

IF ~~ THEN BEGIN 79 // from:
  SAY #39403 /* ~It cannot be! I would sooner tear out my eyes than strike down innocent animals! Well, perhaps only one eye... but do not think me any less incensed!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 87
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 51
END

IF ~~ THEN BEGIN 80 // from:
  SAY #39410 /* ~You will not! I will fight to save each and every creature, dwarf! The forest feeds and nurtures, and I will not hesitate to put a birch up your backside!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 52
END

IF ~~ THEN BEGIN 81 // from:
  SAY #39411 /* ~Why? I have never heard such head-biting villainy, except perhaps in the larger cities, but what passes for entertainment these days is not for me to decide.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 53
END

IF ~~ THEN BEGIN 82 // from:
  SAY #39412 /* ~Your strange jest is wearing thin, dwarf. I suggest you sate yourself with chicken in the proper place and time, and leave the woodland creatures as they were.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #39419 /* ~You insult <CHARNAME>, and you insult Minsc! There will be liberal butt-kicking now!~ */
  IF ~~ THEN DO ~Attack("amalas")
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #39425 /* ~You pay for dogs to fight in this filthy place? You cannot imagine my anger! I shall find properly heroic companions elsewhere if you continue such outrages!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("SurlyFight","AR0406",1)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #39591 /* ~Irenicus? There is a special place in my bootprint for him, and I shall fill it in the name of Dynaheir! Such evil to keep forest spirits locked away here!~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 15
END

IF ~~ THEN BEGIN 86 // from:
  SAY #40230 /* ~What? No, Boo is no glove! Boo is a hamster, and far more than a handful if he wishes, tiny woman!~ */
  IF ~~ THEN EXTERN ~ARNGRL01~ 11
END

IF ~~ THEN BEGIN 87 // from:
  SAY #42222 /* ~A brave man has fallen here, but that is no cause to hurl insults at the living. Here, Boo shall comfort you.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 341
END

IF ~~ THEN BEGIN 88 // from:
  SAY #44075 /* ~Pirate Lord? Such a name does not conjure images of righteous behavior. Stand still a moment and let Boo have a look at you.~ */
  IF ~  !IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~PPDESH~ 14
  IF ~  IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~YOSHJ~ 127
END

IF ~~ THEN BEGIN 89 // from:
  SAY #44077 /* ~Boo will soon have you figured out. You certainly seem friendlier than I would think a Pirate Lord would be. And where is your peg?~ */
  IF ~~ THEN EXTERN ~PPDESH~ 15
END

IF ~~ THEN BEGIN 90 // from:
  SAY #44079 /* ~Your peg. A proper pirate has a peg, whether a leg, arm or... uh... some other expendable extremity. And a parrot.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 16
END

IF ~~ THEN BEGIN 91 // from:
  SAY #44081 /* ~Certainly! As I have my Boo, so too must you have your parrot. Boo likes parrots. They could wrassel.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 17
END

IF ~~ THEN BEGIN 92 // from:
  SAY #44176 /* ~Little Imoen, it is Minsc. See, here's Boo... Boo, stop that. It's Imoen. Sure she looks a bit... stressed, but it's still her.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #44177 /* ~I don't know what's wrong. Boo is all jittery. Something is different about Imoen.~ */
  IF ~~ THEN EXTERN ~PPIMOEN~ 1
END

IF ~~ THEN BEGIN 94 // from:
  SAY #47088 /* ~Oooh! This is most goodness of news, is it not, Boo?!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #48504 /* ~What?! They have no shame in trading lives of others?! Evil, meet my trusty sword! Sword: MEET EVIL!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #48525 /* ~Ooh! To take swords against monsters of great evil! Already I feel Boo wriggling in excited anticipation!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 97
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 41
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 97 // from:
  SAY #48526 /* ~Of course it is Boo. Boo is always happy when opportunities for heroism come! We shall crush these ogres, and rangers and hamsters everywhere shall rejoice!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 42
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 98 // from:
  SAY #48559 /* ~I... would strike for goodness, <CHARNAME>... but this dragon is so... so... It would not be cowardice to come back another day with bigger swords!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #48585 /* ~<CHARNAME>, we must find this fiend who steals children and disguises knights as monsters and apply a butt-kicking for goodness! All must be avenged!~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 46
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 41
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 57
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 100 // from:
  SAY #48615 /* ~This changes everything! A fellow ranger plunged into peril by evil wizards! Even Boo cringes at what we have been sent to do! <CHARNAME>, this cannot be!~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 9
END

IF ~~ THEN BEGIN 101 // from:
  SAY #48618 /* ~A fellow brother of the woods! Is this the man the wizards have sent us to kill? <CHARNAME>, tell me it is not so!~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 2
END

IF ~~ THEN BEGIN 102 // from:
  SAY #48623 /* ~You... you would not lead Boo and me astray! We do good things; we are heroes! This man lies, I say, and I shall fight with <CHARNAME>!~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 61
END

IF ~~ THEN BEGIN 103 // from:
  SAY #48624 /* ~No! I will not allow you to kill a fellow brother of the woods! You have become evil, and I have allowed it to happen! No longer will I stand by!~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
ReactionGT(Player1,10)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 61
  IF ~  IsValidForPartyDialogue("Aerie")
ReactionLT(Player1,11)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 104 // from:
  SAY #48631 /* ~Be welcome, brother of the woods! Together, you and Boo and I shall stride forward to crush all evil in our wake! Woe betide evil!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
OR(2)
!Global("HiredByCowled","GLOBAL",1)
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 93
  IF ~  !IsValidForPartyDialogue("Cernd")
Global("HiredByCowled","GLOBAL",1)
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 221
END

IF ~~ THEN BEGIN 105 // from:
  SAY #48713 /* ~Me? No, Boo would never allow such a thing! My sword is meant only for being firmly planted in the heart of evil!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #48783 /* ~WHERE?! Where is there a rat? Oh, you have frightened Boo with your screeching. Calm yourself, Boo. See? We are leaving the loud woman.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #48852 /* ~*sniff* Ahh, even Boo cringes from such a foul odor. Surely this instrument will never make beautiful music again.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 70
END

IF ~~ THEN BEGIN 108 // from:
  SAY #48902 /* ~They... they attack this funny man? Why?! This evil must be stopped with generous doses of sword-swinging! Come, Boo, we go for the eyes!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXTERN ~VALYGARJ~ 55
END

IF ~~ THEN BEGIN 109 // from:
  SAY #48946 /* ~Heroes of goodness need no warning! Where we tread, evil trembles in our wake!~ */
  IF ~~ THEN EXTERN ~INSPECT~ 5
END

IF ~~ THEN BEGIN 110 // from:
  SAY #48959 /* ~I would rather have given a sword. Give a man a fish and he eats for a day, but teach a man to fight and he can chow down on the meaty marrow of evil!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #48968 /* ~Wha-aat? This is the evil man who steals skins?! He must be stopped! He must be stopped, or all who have skins will sleep in fear!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #48969 /* ~We shall answer your attack, though even Boo sees no sense in it!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #49023 /* ~I understand none of this, but if the one who killed Dynaheir is beyond, Boo and Minsc will make short work of you! ~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN 114 // from:
  SAY #49269 /* ~We don't need money to find Imoen! We are heroes! We will crush wizard after wizard to find her! Hmm, we should start soon if we hope to be done by dinner...~ */
  IF ~~ THEN EXTERN ~GAELAN~ 75
END

IF ~~ THEN BEGIN 115 // from:
  SAY #49320 /* ~You! I remember you! And so does Boo! A craven wizard who travels with his untrustworthy halfling!~ */
  IF ~~ THEN EXTERN ~LYROS~ 29
END

IF ~~ THEN BEGIN 116 // from:
  SAY #49415 /* ~Oh, I never step on toes... except by accident, maybe. If Boo had me step on toes for real, toes would gloriously be flying everywhere in the wake of my sword!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #49474 /* ~You shall be called what you are! You are an enemy of fair, departed Dynaheir and therefore an enemy of mine! You shall be destroyed for the good of all!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 53
END

IF ~~ THEN BEGIN 118 // from:
  SAY #49479 /* ~You will not speak of sweet Dynaheir in this fashion! Terrible hamster justice will be wreaked upon you! GO FOR THE EYES, BOO, GO—~ */
  IF ~~ THEN EXTERN ~EDWIN~ 54
END

IF ~~ THEN BEGIN 119 // from:
  SAY #49481 /* ~I... no. No, our cause must not be disrupted. Righteous fury will wait for now, but one day the wizard shall pay for his words with blood! So swears Minsc!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 55
END

IF ~~ THEN BEGIN 120 // from:
  SAY #49506 /* ~My anger can only barely be contained! Speak to us as if we are anything but heroes, wizard, and you shall be receiving the rented-mule beating you deserve!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #49510 /* ~Dynaheir's enemy comes with us? Please, <CHARNAME>, say it will not be so! And if it is so, let it be brief! Boo shakes with such anger I cannot blame him!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #49554 /* ~We do the bidding of thieves now? Ehhh... this churns my belly like a hamster running endlessly within a wheel. This can't be a good sign, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 148
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 73
END

IF ~~ THEN BEGIN 123 // from:
  SAY #49556 /* ~Rashemen is my home, but I haven't seen it for many moons. I am on my dajemma. I... failed my last witch... but nothing will happen to Aerie! Nothing!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 30
END

IF ~~ THEN BEGIN 124 // from:
  SAY #49557 /* ~No, it will not be! <CHARNAME>, let Minsc and Boo take their chances here. Do not abandon Imoen to this place.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 125 // from:
  SAY #49579 /* ~Poisoned and dying! The tragedy of it sings in my skull! We must hurry and deliver this man to safe harbor, <CHARNAME>!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 219
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 94
END

IF ~~ THEN BEGIN 126 // from:
  SAY #49784 /* ~Such an offer from this woman sends chills up and down my spine like angry weasels... but <CHARNAME> will know what to do. Even Boo is confident of this.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 127 // from:
  SAY #49821 /* ~It is an option that bears no questioning! <CHARNAME> is a champion of good, just as we all are! Always must we take the choice of righteousness!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 60
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 91
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 60
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 128 // from:
  SAY #49833 /* ~No! Tell me this is not so! No heroes would commit such an act! <CHARNAME>, I could never look Boo in the eyes again if I took part in such a thing!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BODHI~ 132
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 61
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 92
END

IF ~~ THEN BEGIN 129 // from:
  SAY #49840 /* ~My hamster's heart is crushed that you have fallen so far, <CHARNAME>! How could this be? It is my fault, all mine, for letting it happen!~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #49843 /* ~I... I must leave to drown in my sorrows. If you pick yourself up, I shall be in that Copper Coronet. It seemed like a grand place for adventure, oh yes!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",658,1462,S)
~ EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0406",658,1462,S)
~ EXTERN ~VALYGARJ~ 62
END

IF ~~ THEN BEGIN 131 // from:
  SAY #49847 /* ~This is more like it! A rescue from the hostage-takers! All shall quiver in the wake of our righteous fury! Yes, Boo, show them how they will quiver!~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BODHI~ 57
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 93
END

IF ~~ THEN BEGIN 132 // from:
  SAY #49856 /* ~We will charge into the midst of the den of thieves and fling them about like pancakes! All that is glory shall be ours! And then breakfast.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 78
END

IF ~~ THEN BEGIN 133 // from:
  SAY #49871 /* ~Those who bury the living must be buried by our righteous fury! Woe betide those who would flout justice! So says Minsc, though "betide" was Boo's word.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 224
END

IF ~~ THEN BEGIN 134 // from:
  SAY #49909 /* ~You would keep this woman a prisoner? Boo is not convinced that this is right. I agree that it smells of evil. Bad <CHARNAME>! Bad!~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 81
END

IF ~~ THEN BEGIN 135 // from:
  SAY #49911 /* ~So the woman is freed? What need is there to collect a reward from the man? Are we not heroes, you and Boo and I? This is most confusing.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 64
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 411
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 61
END

IF ~~ THEN BEGIN 136 // from:
  SAY #49968 /* ~It is more dangerous to call Boo a vermin, as he may leap upon you and show you his true warrior spirit. Nothing can contend with the might of an angry hamster!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #50041 /* ~An assault on the most foul and evil of creatures! Such a victory shall make us heroes to be sung of throughout the land! Glory will be ours, oh yes!~ */
  IF ~~ THEN EXTERN ~BHARVAL~ 27
END

IF ~~ THEN BEGIN 138 // from:
  SAY #50093 /* ~The priest turns on us! For shame! Boo will gnaw on his eye sockets for this travesty!~ */
  IF ~~ THEN DO ~Attack("Gaal")
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #50106 /* ~We are stopping now? Why are we stopping? We are heroes, and heroes must face the final enemy and win over all!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #50122 /* ~Boo remembers! Baldur's Gate! Neb the child murderer! You die, gnome, you die! RAAAAAGGGGGHHHH!~ */
  IF ~~ THEN DO ~Attack("Neb")
~ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #50130 /* ~Tiny has met a god before this?~ */
  IF ~~ THEN EXTERN ~JANJ~ 132
END

IF ~~ THEN BEGIN 142 // from:
  SAY #50301 /* ~Boo is my stalwart companion, and he says that if you must wear the skins of a dead animal around your neck, the evil sharp-toothed weasel is a good choice.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #50343 /* ~Minsc and Boo fight with swords and teeth for goodness, not for countries. We are heroes, not soldiers, funny man.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #50416 /* ~He attacks? Such a display of wrongness fills even Boo with disgust! For my hamster, I must land a blow for goodness!~ */
  IF ~~ THEN DO ~Attack("gphil03")
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50537 /* ~They... they will not burn the pretty elf? There must be no burning if she has committed no crime! This is not justice! <CHARNAME>, we stop this travesty!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50557 /* ~We do not rescue her? What was her crime? Maybe darker elves are not all good, but surely not all are totally evil? I am... confused. What does Boo think?~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 113
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 179
END

IF ~~ THEN BEGIN 147 // from:
  SAY #50578 /* ~We have saved her, and she is our responsibility. What if she was captured again? Neither Boo nor I could live with ourselves. No, she must come.~ */
  IF ~~ THEN EXTERN ~VICONI~ 24
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50670 /* ~Boo is worried that these inmates will harm themselves, <CHARNAME>. We should see that they are safe and make sure they each have a hamster of their own. ~ */
  IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #50671 /* ~That last part was my idea. ~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #52288 /* ~True heroes demand no reward, <CHARNAME>, and Boo knows you to be a true hero! We need only know what foes we are to face before the boot-stomping can begin!~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 149
END

IF ~~ THEN BEGIN 151 // from:
  SAY #52295 /* ~No! Say it cannot be so! <CHARNAME>, we must rescue the nice man's child and be off! Unless... unless you have some plan? Minsc is confused.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~FIRKRA02~ 36
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 74
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 186
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 163
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 152 // from:
  SAY #52306 /* ~No! Has <CHARNAME> truly fallen so far?! A glorious rescue has turned into a nightmare of epic proportion! Minsc and Boo will stop you! ~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~FIRKRA02~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~VALYGARJ~ 75
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~KELDORJ~ 187
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MAZZYJ~ 164
END

IF ~~ THEN BEGIN 153 // from:
  SAY #52607 /* ~Boo knows! Do not stow thrones in grass houses!~ */
  IF ~~ THEN EXTERN ~UDDROW07~ 11
END

IF ~~ THEN BEGIN 154 // from:
  SAY #55186 /* ~The evil wizard is dead! Once again, Boo and Minsc and <CHARNAME> emerge as victorious heroes! Much rejoicing and celebrating must be commencing soon!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 155 // from:
  SAY #55208 /* ~Oh, such a glorious death in battle for Minsc and Boo! We were well on our way to the great fields and halls of Rashemen, but we felt you needing us, so we came!~ [MINSC87] */
  IF ~  !IsValidForPartyDialogue("Valygar")
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
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Valygar")
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
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Valygar")
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
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Valygar")
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
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 42
END

IF ~~ THEN BEGIN 156 // from:
  SAY #55668 /* ~This young minstrel has lost his wits and his songs? Minds are common enough, but tunes of merit are few and far between.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 18
END

IF ~~ THEN BEGIN 157 // from:
  SAY #55680 /* ~Yes! Such fire and conviction! A pity there are no actual enemies to warrant the screaming, but good show anyway. Boo applauds!~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 25
END

IF ~~ THEN BEGIN 158 // from:
  SAY #55684 /* ~It is okay to come out now, Boo. The pale woman is gone. You can stop shivering too. You are a warrior hamster, so be brave! Brave!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #55689 /* ~All good peoples hang their head in shame! We are betrayed! The sailor man brings the vampires back amongst us... there shall be a mighty reckoning for this!~ */
  IF ~~ THEN DO ~Attack("ppsaem")
Wait(5)
ApplySpell(Myself,MINSC_BERSERK)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #55694 /* ~I do not think Boo is too thrilled about you borrowing his face. He only has the one. You don't hurt those you mirror, do you?~ */
  IF ~~ THEN EXTERN ~PPDILI~ 4
END

IF ~~ THEN BEGIN 161 // from:
  SAY #55763 /* ~Ughh, my head spins. So many quick words from so many small sources. Countersong, Boo. Relax my frazzled nerves.~ */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #55767 /* ~What does everyone stare at? Boo's churring calms me down. See?~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 13
END

IF ~~ THEN BEGIN 163 // from:
  SAY #55776 /* ~Yes! Revenge! Revenge for precious Dynaheir! Tremble, wizard, for the mighty Boo will have your eyes! RAAAARRRRGHH!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPIRENI2~ 60
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 460
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 19
END

IF ~~ THEN BEGIN 164 // from:
  SAY #55784 /* ~That's a much shorter interjection than Boo has become used to, Jan. Are you ill?~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 158
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 109
END

IF ~~ THEN BEGIN 165 // from:
  SAY #55819 /* ~No! No collar! I will not be collared by the smelly fishmen! My warrior spirit will not bear such a thing!~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #55825 /* ~Boo too has small teeth compared to fish-men. But they hurt just the same when they latch onto the eyes, yes sir!~ */
  IF ~~ THEN EXTERN ~SAHBAR03~ 0
END

IF ~~ THEN BEGIN 167 // from:
  SAY #55861 /* ~My skin may not have scales, but it has seen many suns come and go. Boo thinks you could use some sun too. Then you might not smell so much like wet laundry.~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 8
END

IF ~~ THEN BEGIN 168 // from:
  SAY #55882 /* ~Don't worry, Aerie. I'm here to protect my witch. Boo too, though I think he would leap to protect anyone in distress. It's his heroic nature, you know.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 148
END

IF ~~ THEN BEGIN 169 // from:
  SAY #55892 /* ~Boo bristles at his words. I don't know the language, but he is insulting us for certain!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 1
END

IF ~~ THEN BEGIN 170 // from:
  SAY #55915 /* ~I cannot believe my ears! You would stand against all that is good and right?! You shall suffer a terrible vengeance for this!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
END

IF ~~ THEN BEGIN 171 // from:
  SAY #55922 /* ~Yes! Hello! Minsc is a drow! And Boo is a shadow hamster!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 24
END

IF ~~ THEN BEGIN 172 // from:
  SAY #55968 /* ~Another drow who speaks strange words! Even Boo bristles at his obvious lies! If <CHARNAME> fights, then so does Minsc! Prepare for liberal butt-kickings!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 146
END

IF ~~ THEN BEGIN 173 // from:
  SAY #56017 /* ~Ooh, another drow! I begin to see them everywhere, ever since the Underdark! They are so vicious even Boo cowers. What will we do, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~C6BRUEN1~ 8
END

IF ~~ THEN BEGIN 174 // from:
  SAY #56018 /* ~I do not cause trouble! I merely seek it out and put the bootheels of justice to it! Ask Boo!~ */
  IF ~~ THEN EXTERN ~UDDUER03~ 12
END

IF ~~ THEN BEGIN 175 // from:
  SAY #56067 /* ~Boo is impressed, Korgan. You remember well to act like drow.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 147
END

IF ~~ THEN BEGIN 176 // from:
  SAY #56086 /* ~For Dynaheir and all fallen comrades, for what is good and right, for all these things shall Minsc and Boo fall upon you today! And we shall taste victory, evil man!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 30
END

IF ~~ THEN BEGIN 177 // from:
  SAY #56092 /* ~Neither do we, right, Boo?~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #56093 /* ~What's so funny?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 179 // from:
  SAY #56112 /* ~I grow tired of shouting battle cries when fighting this mage. Boo will finish his eyeballs once and for all so he does not rise again! Evil, meet my sword! SWORD, MEET EVIL!~ [MINSC86] */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #56124 /* ~Worry not, Viconia! Minsc and Boo stand at the ready to protect! Right, Boo?~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 181 // from:
  SAY #56127 /* ~No! You will not attack the small dark ones! Minsc and Boo will not allow it! And I hope no other will either!~ */
  IF ~~ THEN REPLY #56128 /* ~Do your worst. It's my choice to make!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ SOLVED_JOURNAL #57768 /* ~Svirfneblin village concerns

I spoke with Goldander Blackenrock, lord of the svirfneblin village. His pompous title revealed the shallow nature of his needs. He spoke of a means that I might enter the drow city: by enlisting the aid of Adalon, a powerful creature that holds court at the base of the great staircase. Goldander wanted me to first perform a service for his village, defeating some creature that they had unearthed, and he offered to grant me access to Adalon as a reward, giving me a glow stone or some such so that I could pass through the darkness that protects her lair. I cut out the middleman and killed the lot of them.~ */ EXIT
  IF ~~ THEN REPLY #56129 /* ~Oh, all right! I'll help the little fool!~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 182 // from:
  SAY #56152 /* ~And then Minsc will disrupt them with his bootheel! Yes, speak more of this evil-smashing partnership!~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 17
END

IF ~~ THEN BEGIN 183 // from:
  SAY #56170 /* ~Boo shakes with disbelief! Such a crime will not go unanswered!~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 19
END

IF ~~ THEN BEGIN 184 // from:
  SAY #56198 /* ~Boo would have found her wherever she tried to put her evil foot! That's what we do!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 185 // from:
  SAY #56409 /* ~Irenicus is the most vile of villains if he dared destroy a whole city! I can't believe that, and I have believed some amazing things, let me tell you!~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 29
END

IF ~~ THEN BEGIN 186 // from:
  SAY #56420 /* ~Groves are wonderful... you wouldn't really poison one, would you? Boo suggests that perhaps you are tricking this evil little man. Smart thinking, I agree.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 220
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 162
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 187 // from:
  SAY #56429 /* ~This is the evil killer who takes skins that do not belong to him! We have discovered him, <CHARNAME>! We must take the bootheel to his ways!~ */
  IF ~~ THEN EXTERN ~TRSKIN02~ 17
END

IF ~~ THEN BEGIN 188 // from:
  SAY #56458 /* ~To decide between justice and honor! Oh, it is a conundrum that would tie even Boo up in knots. I do not envy you. My decisions are usually easier than this.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~ANOMENJ~ 52
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 165
END

IF ~~ THEN BEGIN 189 // from:
  SAY #56471 /* ~No! Minsc did not come here to kill young girls! You cannot tell us that the young girl was anything but innocent! This is not right!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 190 // from:
  SAY #56482 /* ~We serve no evil mages, no sir! But Boo looks upon you with suspicion, little man. How is it you come to be here? Never have I seen Boo's whiskers quiver so!~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 47
END

IF ~~ THEN BEGIN 191 // from:
  SAY #56484 /* ~Then you too know the hardship of being set into a maze like a helpless hamster! We are comrades in peril! Boo asks what you propose we do next, little man.~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 4
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56492 /* ~What is this? Minsc and Boo were just getting into this wonderful story when it was sadly interrupted. A work of mastery, this is!~ */
  IF ~~ THEN EXTERN ~RAELIS~ 34
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56499 /* ~Someone has rattled the little one's brains? Hmm, I know how she feels. If this was done on purpose, he deserves a mighty kick in his posterior at the least!~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~JANJ~ 37
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 166
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 177
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56514 /* ~Helping others is good! What a nice little girl you are. Would you like to see my Boo? I think he approves of you too.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 66
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 502
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56515 /* ~Helping others is good! What a nice little girl you are. Would you like to see my Boo? I think he approves of you too.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 53
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 503
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56675 /* ~I don't wish to alarm you, but Boo is absolutely fretting about your condition. Are you well? Fear in Boo is uncommon, and usually weasel-caused. ~ */
  IF ~~ THEN REPLY #56676 /* ~I will be all right. Just a bit light-headed, that's all.~ */ GOTO 197
  IF ~~ THEN REPLY #56677 /* ~There is no cause for concern. I am in control.~ */ GOTO 198
  IF ~~ THEN REPLY #56678 /* ~I am fine, Minsc. Mind your own business.~ */ GOTO 199
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #56679 /* ~We can rest if you wish. I do not understand what Irenicus did, but Boo has said that it was traumatic, and I will guard if we must stay here a while.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 198 // from: 196.1
  SAY #56680 /* ~That is good. I will guard if you need to rest. It is the least I can do, since I could not stop Irenicus. ~ */
  IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 199 // from: 196.2
  SAY #56682 /* ~Then Minsc and Boo will turn their attentions to more important things, like staying alive. We should get moving if you are through with your headache.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56881 /* ~Boo does not think so, despite your kind words. You smell of treachery. Prove me wrong or face the boot!~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56886 /* ~You'd have bought a trip to the graveyard if you had spent the money we needed to rescue Imoen! Minsc and Boo would see to that! ~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 141
END

IF ~~ THEN BEGIN 202 // from:
  SAY #57740 /* ~When all others stand numb, it falls to Minsc and Boo to make comment. <CHARNAME>...~ */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #57741 /* ~<CHARNAME>, Boo just soiled my backpack. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #57901 /* ~Boo does not favor the odds, but I have no doubt we will succeed! ~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 205 // from:
  SAY #57905 /* ~Boo would have sensed any treachery long ago! She fights well with us!~ */
  IF ~  !IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~CERNDJ~ 133
END

IF ~~ THEN BEGIN 206 // from:
  SAY #58137 /* ~Boo concurs! We must hurry and dispense with this errandry so we can get to the fighting of greater evils more worthy of my bootprint! ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 207 // from:
  SAY #58138 /* ~Minsc and Boo will protect your street, Aerie! You will cross it for your pleasure, not for fear of it! ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 208 // from:
  SAY #58179 /* ~Then let us get going! Boo and I have several talents we will unleash upon it!~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 209 // from:
  SAY #58199 /* ~Minsc owes much to the killer of Dynaheir! I stand with you! Nowhere shall I go until the heel of justice has been firmly imprinted once and for all into the wizard's evil backside! Nowhere!~ */
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
END

IF ~~ THEN BEGIN 210 // from:
  SAY #58519 /* ~No! We do not abandon comrades! Never could I look Boo in the face again after such a thing! We shall give the evil wizard a certain boot-kicking instead!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 81
END

IF ~~ THEN BEGIN 211 // from:
  SAY #58756 /* ~A slap in the face of our trust! A sword to the heart of our confidence! A boot to the prunes of our friendship! Perhaps I go too far, but Boo is absolutely incensed!~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 114
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59069 /* ~Minsc and Boo are the greatest of warriors, small one! I will crush your foes into little foe-shaped chunky bits! Who dares pick on you? Just point the way!~ */
  IF ~~ THEN EXTERN ~DELON~ 43
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59071 /* ~No foes? I am relieved. I trust those who prey on children no farther than they can be thrown, even if I manage to throw them pretty far, and throw them I shall!~ */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59072 /* ~What?! Boo is outraged! See his fury! It's small, so look close. Trust me, it's there. What is wrong with your village, small one? How can we heroes help?~ */
  IF ~~ THEN EXTERN ~DELON~ 19
END

IF ~~ THEN BEGIN 215 // from:
  SAY #59073 /* ~Minsc has been inside out and angry before, and it is never a good thing. Sometimes it frightens even Boo.~ */
  IF ~~ THEN EXTERN ~DELON~ 44
END

IF ~~ THEN BEGIN 216 // from:
  SAY #59075 /* ~Oh! Minsc has never been crazy, no sir. Being inside out was bad enough! Is there more, little boy?~ */
  IF ~~ THEN EXTERN ~DELON~ 8
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59076 /* ~Then heroes are certainly needed! Heroes like Minsc and Boo and <CHARNAME>! Where is your village, small one? Together we will save the day!~ */
  IF ~~ THEN EXTERN ~DELON~ 10
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59078 /* ~Nothing removes fear better than a good sword and a swift kick in the evil! We shall go to your village and do what heroes do, right, <CHARNAME>?~ */
  IF ~~ THEN REPLY #59080 /* ~Right you are, Minsc!~ */ DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
  IF ~~ THEN REPLY #59081 /* ~Well... as long as the reward is decent, we could always take a look.~ */ DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
  IF ~~ THEN REPLY #59082 /* ~I don't know if we have time, Minsc, but we'll see.~ */ GOTO 219
  IF ~~ THEN REPLY #59083 /* ~Forget it, Minsc. We're not running off on some fool's errand.~ */ GOTO 220
END

IF ~~ THEN BEGIN 219 // from: 218.2
  SAY #59088 /* ~There is always time to save the day! Don't worry, small one, we will go to your village as soon as I restore <CHARNAME> to <PRO_HISHER> senses. That is my job.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
END

IF ~~ THEN BEGIN 220 // from: 218.3
  SAY #59089 /* ~Kicking the posterior of evil is never a fool's errand! Hmm, <CHARNAME> is not <PRO_HISHER> usual heroic self today. An evil influence? Or have <PRO_HISHER> thoughts wandered elsewhere?~ */
  IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59090 /* ~Since <CHARNAME> is out of <PRO_HISHER> mind, I must step up as a hero should. We go to your village as soon as <CHARNAME> is better. So swear Minsc and Boo.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
END

IF ~~ THEN BEGIN 222 // from: 213.0
  SAY #59091 /* ~Er... Boo wonders what you need a warrior for when you have no foes?~ */
  IF ~~ THEN EXTERN ~DELON~ 4
END

IF ~  GlobalTimerExpired("MinscRemindsImnesvale","GLOBAL")
Global("TalkedToLloyd","GLOBAL",0)
Global("VillageSaved","GLOBAL",0)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
!AreaCheck("AR1400")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("MinscReminder","LOCALS",0)
~ THEN BEGIN 223 // from:
  SAY #59093 /* ~Boo is curious and keeps bringing up the question of when we will travel to the Imnesvale village, and I heartily agree! We are heroes, and they are in need of heroes—it is a match even Minsc can see!~ */
  IF ~~ THEN DO ~SetGlobal("MinscReminder","LOCALS",1)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59094 /* ~We must go where evil is in most need of a beating, so Minsc will leave that decision up to you, <CHARNAME>. Still... we must not disappoint the little boy.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  GlobalTimerExpired("MinscRemindsImnesvale","GLOBAL")
Global("TalkedToLloyd","GLOBAL",0)
Global("VillageSaved","GLOBAL",0)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
!AreaCheck("AR1400")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("MinscReminder","LOCALS",1)
~ THEN BEGIN 225 // from:
  SAY #59095 /* ~Did Minsc miss something? Did we already go and save the Imnesvale village? Boo demands that it is not so, but I cannot remember. Surely we would not shirk out heroic duty for so long! It cannot be!~ */
  IF ~~ THEN DO ~SetGlobal("MinscReminder","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 226 // from:
  SAY #59421 /* ~We come because the little boy, Delon, said that there was evil here in need of a butt-kicking! And good for us that we have our boots on, yes, sir!~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 6
END

IF ~~ THEN BEGIN 227 // from:
  SAY #59423 /* ~No, we can't leave this place without having destroyed all evil! Tell Boo this is not so, <CHARNAME>! Do not destroy a young hamster's innocence!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #59424 /* ~Wolves? Ogres? Witches? Oh my! It is too much for Minsc's poor head to comprehend! Which of these are evil? The edge of my sword shall find the truth!~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 19
END

IF ~~ THEN BEGIN 229 // from:
  SAY #59425 /* ~Oh, most glorious day! One step closer we come to being true heroes, yes indeedy! Even little Boo's fur stands on end from his anticipation!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 230 // from:
  SAY #59542 /* ~Minsc agrees! It would be the essence of epic heroing! Dead dragons should litter our path wherever we go!~ */
  IF ~~ THEN EXTERN ~SW2H14~ 16
END

IF ~~ THEN BEGIN 231 // from: 10.0
  SAY #60851 /* ~Bah, omens are for those that pay attention to their surroundings, not for such as we, right, Boo?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from: 46.0
  SAY #60868 /* ~Anyway, go out of city that way... Keep on the road, turn right at big church, and you will be out.~ */
  IF ~~ THEN EXTERN ~RADEEL~ 9
END

IF ~~ THEN BEGIN 233 // from: 198.0
  SAY #60876 /* ~Boo says not to blame myself, but Boo is a hamster and not as concerned with honor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 234 // from: 24.0
  SAY #60880 /* ~Actually, this changes very little. Minsc is happy.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 235 // from: 26.0
  SAY #60881 /* ~And perhaps my Boo as well...~ */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #60882 /* ~And a good sword...~ */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #60883 /* ~Ooh! And the occasional buffing, for the armor, you understand.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PostCutSpeak","AR0700",1)
~ THEN BEGIN 238 // from:
  SAY #61013 /* ~No, this cannot be! The murderer of Dynaheir flees from righteous butt-kicking vengeance! And he takes Imoen with him too!~ */
  IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)
~ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #61014 /* ~Something must be done, <CHARNAME>! We must find this evil wizard! All that is goodness cries out for this! Even little Boo, although he cannot cry out quite so loudly.~ */
  IF ~  OR(3)
!InParty("Jaheira")
Dead("Jaheira")
StateCheck("Jaheira",STATE_SLEEPING)
OR(3)
!InParty("Yoshimo")
Dead("Yoshimo")
StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXIT
  IF ~  InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
~ THEN EXTERN ~JAHEIRAJ~ 528
  IF ~  OR(3)
!InParty("Jaheira")
Dead("Jaheira")
StateCheck("Jaheira",STATE_SLEEPING)
InParty("Yoshimo")
!Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXTERN ~YOSHJ~ 150
END

IF ~~ THEN BEGIN 240 // from:
  SAY #61017 /* ~No! We must go quickly and save our friend Imoen! The wizard may be leering over her evilly even now!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 530
END

IF ~~ THEN BEGIN 241 // from:
  SAY #70550 /* ~So he wants to play a game? Minsc and Boo are fond of all sorts of games, although Boo is far better at the ones that need strategy. I am sad to say that I am far better at straightforward butt-kicking.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 242 // from:
  SAY #70530 /* ~We have been betrayed after all! Even Boo cannot believe this. Look at his tiny head shaking in disbelief. Or maybe he is cold. No... definitely disbelief!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 243 // from:
  SAY #70431 /* ~Too much talk, not enough fight!~ */
  IF ~~ THEN EXTERN ~JANJ~ 188
END

IF ~~ THEN BEGIN 244 // from:
  SAY #77677 /* ~Speak for yourself, <CHARNAME>! Boo is the warm center of the universe that I orbit during my slumber each night!~ */
  IF ~~ THEN EXTERN ~RASAAD~ 18
END

IF ~~ THEN BEGIN 245 // from:
  SAY #78870 /* ~Trusts?~ */
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #78871 /* ~Yes. There's those he takes into his trust, and those he takes into the Twofold Trust—you know what, just forget it.~ */ EXTERN ~EDWINJ~ 191
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #78871 /* ~Yes. There's those he takes into his trust, and those he takes into the Twofold Trust—you know what, just forget it.~ */ EXTERN ~OHRHERAT~ 2
END

IF ~~ THEN BEGIN 246 // from:
  SAY #79469 /* ~Boo dislikes this place. These people are trapped in a wheel that turns and turns, but never moves forward.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 514
END

IF ~~ THEN BEGIN 247 // from:
  SAY #79523 /* ~Boo dislikes this place. These people are trapped in a wheel that turns and turns, but never moves forward.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 10
END

IF ~~ THEN BEGIN 248 // from:
  SAY #74513 /* ~He's not that ugly. Boo's seen much uglier half-orcs. Haven't you, Boo?~ */
  IF ~~ THEN REPLY #74514 /* ~I shudder to think what that hamster's seen in its life.~ */ EXTERN ~DORN~ 1
END

IF ~~ THEN BEGIN 249 // from:
  SAY #74615 /* ~Are you calling Boo a fool?~ */
  IF ~~ THEN EXTERN ~DORN~ 30
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 207
END

IF ~~ THEN BEGIN 250 // from:
  SAY #74692 /* ~I'm with the hamster.~ */
  IF ~~ THEN REPLY #74689 /* ~The bride.~ */ EXTERN ~OHDDOOR1~ 2
  IF ~~ THEN REPLY #74690 /* ~The groom.~ */ EXTERN ~OHDDOOR1~ 3
  IF ~~ THEN REPLY #74691 /* ~Actually, I'm with this bloodthirsty blackguard!~ */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR07")
~ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #74818 /* ~Boo says it's rude to diminish a bride's radiance on her wedding day.~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("MINSC",Enemy())
~ EXIT
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 252 // from:
  SAY #75728 /* ~What do you think, Boo? Isn't this a nice tree?~ */
  IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #75729 /* ~Boo doesn't think this is a nice tree.~ */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #75730 /* ~I think Boo is right.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 502
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 410
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 128
END

IF ~~ THEN BEGIN 255 // from:
  SAY #80995 /* ~It's all right, Boo. They're dead, but I'm sure they're not bad—~ */
  IF ~~ THEN DO ~SetGlobal("OHH_minsccomment","OH7000",1)
SetGlobal("OHH_mazestart","OH7000",2)
ActionOverride("OHHGHST1",Enemy())
ActionOverride("OHHGHST2",Enemy())
~ EXIT
END

IF ~  Global("OHH_minsccomment","OH7000",1)
~ THEN BEGIN 256 // from:
  SAY #80996 /* ~You were right, Boo. They weren't nice at all.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_minsccomment","OH7000",2)
~ EXIT
END

IF ~  Global("OHH_FALSE_DAWN","OH7000",2)
~ THEN BEGIN 257 // from:
  SAY #81824 /* ~Boo says smoking isn't healthy.~ */
  IF ~  !IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXAT~ 125
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 320
END

IF ~~ THEN BEGIN 258 // from:
  SAY #90282 /* ~Boo says we should find the hairband! Boo believes the children are our future!~ */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 351
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 429
END

IF ~~ THEN BEGIN 259 // from:
  SAY #88082 /* ~Minsc is torn! It seems only fair that <CHARNAME> be able to walk with a small animal to advise <PRO_HIMHER>, too. But Minsc also fears for Boo... Dings might have a bad attitude toward hamsters.~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 201
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 246
END

IF ~~ THEN BEGIN 260 // from:
  SAY #93536 /* ~You will need an advisor, heir to the throne! It is Minsc's opinion that hamsters make the best advisors.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY #67912 /* ~No! Oh, say it is not so! We will no longer fight evil together? Oh... Boo will miss you, <CHARNAME>. Forever shall we hang our heads in sadness in remembrance of our great butt-kicking friend.~ [MINS2519] */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #67913 /* ~Boo and I will say we knew the hero <CHARNAME>. And people will of course not believe us. And maybe, they will look at us more strangely than they do now. Or maybe not.~ [MINS2520] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 149
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 448
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 148
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 446
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 158
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
END

IF ~~ THEN BEGIN 263 // from:
  SAY #70389 /* ~Look, Boo—everyone knows <CHARNAME> now! See how <PRO_HISHER> fame spreads like a scented cloud from your furry backside when you have had one too many crackers!~ */
  IF ~~ THEN EXTERN ~AMMONK02~ 4
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 588
END

IF ~~ THEN BEGIN 264 // from:
  SAY #70431 /* ~Too much talk, not enough fight!~ */
  IF ~~ THEN EXTERN ~JANJ~ 227
END

IF ~~ THEN BEGIN 265 // from:
  SAY #70441 /* ~Eh? He is like bad penny, this one. An armored, deep-voiced penny of most sinister evil!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 68
END

IF ~~ THEN BEGIN 266 // from:
  SAY #70530 /* ~We have been betrayed after all! Even Boo cannot believe this. Look at his tiny head shaking in disbelief. Or maybe he is cold. No... definitely disbelief!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 267 // from:
  SAY #70550 /* ~So he wants to play a game? Minsc and Boo are fond of all sorts of games, although Boo is far better at the ones that need strategy. I am sad to say that I am far better at straightforward butt-kicking.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 268 // from:
  SAY #70561 /* ~I don't understand. The witch has her heart back... why is she not nicer to us? What? Oh... yes, I see. Uh-huh. Thank you, Boo. Boo is so smart.~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 30
END

IF ~~ THEN BEGIN 269 // from:
  SAY #71388 /* ~Be not sad, pretty waitress... <CHARNAME> will make them stop. Or else Minsc and Boo will deliver an order of booted butt-stomping to the table of mean, ugly men!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 270 // from:
  SAY #71636 /* ~Oh, Boo, he is going to mention you in his book! Isn't he a nice man?~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 271 // from:
  SAY #72330 /* ~Poor Mateo. He is alone in the world, as Minsc was before Boo found him. Yes, Boo—you are right! As heroes, we must befriend the friendless. We must help the helpless. We must deaccuse the accused. Er... well, you get the idea.~ */
  IF ~~ THEN EXTERN ~SARCNT01~ 10
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 270
END

IF ~~ THEN BEGIN 272 // from:
  SAY #72353 /* ~No... the lady must not die! You are a bad <PRO_MANWOMAN>, <CHARNAME>! All who are true heroes of virtue join me in defending this woman against the naughty bad <CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #72429 /* ~Boo does not trust this Kiser, <CHARNAME>. See how his nose twitches? Something smells about this, and it is not stinky clouds from Boo's furry backside.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 37
END

IF ~~ THEN BEGIN 274 // from:
  SAY #72571 /* ~Mighty heroes like Minsc and <CHARNAME> cannot prove themselves against such unworthy opponents... maybe Boo should tackle them alone. Minsc is joking, of course. Let the kobold butt-kicking begin!~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 13
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 275 // from:
  SAY #83155 /* ~What's that, Boo? You need to speak up; I can't hear you over the incredibly loud rumbling.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 273
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 301
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 233
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 170
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 612
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 540
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 856
END

IF ~~ THEN BEGIN 276 // from:
  SAY #82718 /* ~For justice!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 626
END

IF ~~ THEN BEGIN 277 // from:
  SAY #82680 /* ~Mad angry, not mad crazy.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1011
END

IF ~  Global("OHD_constelterject","OH5500",1)
~ THEN BEGIN 278 // from:
  SAY #89867 /* ~They do have nice voices, don't they, Boo?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_constelterject","OH5500",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 632
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 281
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 279 // from:
  SAY #92235 /* ~Boo knew where the Pavilion of Righteous Wrath was the whole time. The space hamster is no stranger to Lunia.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 235
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 173
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 282
END

IF ~~ THEN BEGIN 280 // from:
  SAY #92114 /* ~Don't worry, Boo. No one will leave you behind.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 549
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 490
END

IF ~  GlobalTimerExpired("Minsc","GLOBAL")
Global("HelpMinsc","GLOBAL",0)
~ THEN BEGIN 281 // from:
  SAY #216716 /* ~We take too long! My charge is in desperate peril! If we do not go now you are a coward!~ */
  IF ~~ THEN DO ~SetGlobalTimer("Minsc","GLOBAL",SIX_DAYS)
SetGlobal("HelpMinsc","GLOBAL",1)
~ JOURNAL #204344 /* ~Minsc is getting impatient, I must go to rescue his friend soon. He previously said that she was being held at a gnoll encampment to the west of Nashkel.~ */ EXIT
END

IF ~  GlobalTimerExpired("Minsc","GLOBAL")
Global("HelpMinsc","GLOBAL",1)
~ THEN BEGIN 282 // from:
  SAY #216717 /* ~You agreed to help in my cause, yet now you break your word by your inaction! I'll have none of it! Feel the wrath of Minsc and Boo!~ */
  IF ~~ THEN DO ~SetGlobal("HelpMinsc","GLOBAL",2)
LeaveParty()
ChangeAIScript("WTASIGHT",CLASS)
Enemy()
~ EXIT
END

IF ~  HappinessLT(Myself,-290)
!InParty("Dynaheir")
~ THEN BEGIN 283 // from:
  SAY #216718 /* ~I have never seen such behavior in all my days! And you claim to be heroes? Raaaargh!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~  HappinessLT(Myself,-290)
InParty("Dynaheir")
~ THEN BEGIN 284 // from:
  SAY #216719 /* ~Boo and I were about to leave anyway! I have never seen such behavior in all my days! And you claim to be heroes? Good riddance! Come Dynaheir, I will not feel good about your safety until we are away from here.~ */
  IF ~~ THEN DO ~SetGlobal("DynaheirGone","GLOBAL",1)
ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  False()
~ THEN BEGIN 285 // from:
  SAY #216720 /* ~I am truly saddened that you wish Minsc and Boo to leave. If you have any need for a stout blade, and an even stouter man to swing it, do not hesitate to call on me.~ */
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("MINSCP_")
~ EXIT
END

IF ~  False()
~ THEN BEGIN 286 // from:
  SAY #216721 /* ~I am truly saddened that you wish Minsc and Boo to leave. If you have any need for a stout blade, and an even stouter man to swing it, do not hesitate to call on me. Let's go, Dynaheir. You are safe with me regardless.~ */
  IF ~~ THEN DO ~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialogue("DynahP"))
LeaveParty()
SetDialogue("MINSCP_")
~ EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #216722 /* ~I fear that where Dynaheir goes, so must I! It must be both of us, or neither.~ */
  IF ~~ THEN REPLY #216723 /* ~Then neither it must be. I do not need either of you.~ */ DO ~SetGlobal("DynaheirGone","GLOBAL",1)
ActionOverride("Dynaheir",EscapeArea())
EraseJournalEntry(227171)
EraseJournalEntry(227274)
EraseJournalEntry(227031)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #227029 /* ~Rescuing Dynaheir
I freed Dynaheir from the gnolls and sent her on her way.~ */ EXIT
  IF ~~ THEN REPLY #216725 /* ~Then I shall welcome you both to the party.~ */ EXTERN ~DYNAHE~ 6
END

IF ~~ THEN BEGIN 288 // from:
  SAY #216724 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 289 // from:
  SAY #228168 /* ~Did you hear that, Boo? Maybe she will turn into a hamster, and we will have a little friend for you to wrassel!~ [NED7] */
  IF ~~ THEN EXTERN ~NEERAJ~ 736
END

IF ~~ THEN BEGIN 290 // from:
  SAY #228311 /* ~I do not like this at all! This Dorn stands proud and tall like a black stallion, yet his eyes burn with the anger of a castrated demon! Boo says that we should not turn our back on him!~ */
  IF ~~ THEN EXTERN ~DORN_~ 16
  IF ~  InParty("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 626
  IF ~  InParty("xan")
~ THEN EXTERN ~XANJ~ 4
END

IF ~~ THEN BEGIN 291 // from:
  SAY #228976 /* ~Look, Boo! This one also fights without weapons. You must teach him some of your special moves.~ */
  IF ~~ THEN EXIT
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("KHALID")
!InParty("VICONIA")
~ THEN EXTERN ~KHALIJ~ 7
END

IF ~~ THEN BEGIN 292 // from:
  SAY #228977 /* ~Exceptions for butt-kicking! Boo likes this baldy monk better and better.~ */
  IF ~~ THEN EXTERN ~RSSORREM~ 2
END

IF ~~ THEN BEGIN 293 // from:
  SAY #228978 /* ~Boo smells it, too. It is the stink of evil!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 294 // from:
  SAY #228979 /* ~So many butts ripe for the kicking, you will need more boots! Boo and I will help, although he seems to have left his boots back at camp.~ */
  IF ~~ THEN EXTERN ~RSGAMAZ~ 6
END

IF ~~ THEN BEGIN 295 // from:
  SAY #230377 /* ~What is that, Boo? Someone questions our loyalty?~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1173
END

IF ~~ THEN BEGIN 296 // from:
  SAY #230379 /* ~You dare to call Boo a GERBIL! Take back your much-malignant accusation lest the mighty boots of justice leap and bound across the territory of your backside!~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1174
END

IF ~~ THEN BEGIN 297 // from:
  SAY #230524 /* ~But I said nothing about Dorn. Well, except when Boo and I were discussing whether the size of a half-orc's tusks was any indication of—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1224
END

IF ~~ THEN BEGIN 298 // from:
  SAY #230526 /* ~That is not true! Boo says only good things about our companions. Why, just the other day he was admiring Dorn's tusks, and I said—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1225
END

IF ~~ THEN BEGIN 299 // from:
  SAY #230377 /* ~What is that, Boo? Someone questions our loyalty?~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1264
END

IF ~~ THEN BEGIN 300 // from:
  SAY #230379 /* ~You dare to call Boo a GERBIL! Take back your much-malignant accusation lest the mighty boots of justice leap and bound across the territory of your backside!~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1265
END

IF ~~ THEN BEGIN 301 // from:
  SAY #230524 /* ~But I said nothing about Dorn. Well, except when Boo and I were discussing whether the size of a half-orc's tusks was any indication of—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1315
END

IF ~~ THEN BEGIN 302 // from:
  SAY #230526 /* ~That is not true! Boo says only good things about our companions. Why, just the other day he was admiring Dorn's tusks, and I said—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1316
END

IF ~~ THEN BEGIN 303 // from:
  SAY #266218 /* ~You would abandon Dynaheir? This will cost you dearly, my friend, for where Dynaheir goes, Minsc will follow, and where goes Minsc, so goes the mighty Boo.~ */
  IF ~~ THEN EXTERN ~BDDYNAHE~ 7
END

IF ~~ THEN BEGIN 304 // from:
  SAY #256895 /* ~Boo does not like your tone, <CHARNAME>. Neither do I.~ */
  IF ~~ THEN EXTERN ~BDDYNAHE~ 11
END

IF ~~ THEN BEGIN 305 // from:
  SAY #256899 /* ~Boo wants to say "bye bye"? I will tell <PRO_HIMHER>.~ */
  IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #256900 /* ~<CHARNAME>. Boo says "bye bye."~ */
  IF ~~ THEN DO ~ActionOverride("dynaheir",SetGlobal("bd_joined","locals",0))
SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
JumpToObject("dynaheir")
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY #256901 /* ~Minsc cannot stay if his witch goes.~ */
  IF ~~ THEN EXTERN ~BDDYNAHE~ 14
END

IF ~~ THEN BEGIN 308 // from:
  SAY #245932 /* ~We are kicking butts—for justice! And the Grand Dukes of Baldur's Gate. But mostly justice!~ */
  IF ~~ THEN EXTERN ~BDFF1000~ 15
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 17
END

IF ~~ THEN BEGIN 309 // from:
  SAY #246148 /* ~Boo says infections must be cut from the body before they spread. I do not know how to take that.~ */
  IF ~~ THEN EXTERN ~AJANTJ~ 14
END

IF ~~ THEN BEGIN 310 // from:
  SAY #246160 /* ~Something is honorable or it is not. In this, there can be no debate.~ */
  IF ~~ THEN EXTERN ~DYNAHJ~ 24
END

IF ~~ THEN BEGIN 311 // from:
  SAY #246166 /* ~This is grim business, <CHARNAME>. Boo says you walk a path of darkness, and he is right. This place could use a few more torches. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #252749 /* ~Do you know any songs about hamsters? I'm asking for a friend.~ [BD52749] */
  IF ~~ THEN EXTERN ~BDGARRIC~ 38
END

IF ~~ THEN BEGIN 313 // from:
  SAY #252758 /* ~Coming around is one of my favorite things! It was after a glorious battle that I came around and discovered Boo, nibbling on my provisions as he anxiously waited for me to awake. That was a good day.~ [BD52758] */
  IF ~~ THEN DO ~SetGlobal("BD_Garrick_Play","BD0109",4)
ClearActions(LastTalkedToBy("bdgarric"))
StartCutSceneMode()
ActionOverride("bdalyth",MoveToPoint([664.501]))
Wait(3)
ActionOverride("bdalyth",FaceObject(LastTalkedToBy("bdgarric")))
SmallWait(2)
EndCutSceneMode()
ActionOverride("bdalyth",StartDialogNoSet(LastTalkedToBy("bdgarric")))
~ EXIT
END

IF ~~ THEN BEGIN 314 // from:
  SAY #252759 /* ~Ale for me. And a bowl of water for my hamster.~ [BD52759] */
  IF ~~ THEN EXTERN ~BDALYTH~ 4
END

IF ~~ THEN BEGIN 315 // from:
  SAY #252785 /* ~Are you sure, little loud man? It LOOKS like a cell...~ [BD52785] */
  IF ~~ THEN EXTERN ~BDTIAX~ 24
END

IF ~~ THEN BEGIN 316 // from:
  SAY #252825 /* ~Boo says it is better to have a second hand than no hands at all. This is the wisdom of the space hamster.~ [BD52825] */
  IF ~~ THEN EXTERN ~BDRASAAD~ 63
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~DYNAHJ~ 39
END

IF ~~ THEN BEGIN 317 // from:
  SAY #252831 /* ~Yes! And Minsc and Boo will join you.~ [BD52831] */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 127
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~DYNAHJ~ 40
END

IF ~~ THEN BEGIN 318 // from:
  SAY #252833 /* ~My mind is filled with images of butts... Evil butts, and the kicking we shall give them!~ [BD52833] */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 136
END

IF ~~ THEN BEGIN 319 // from:
  SAY #252845 /* ~Boo does not like scoundrels. I do not like scoundrels either.~ [BD52845] */
  IF ~~ THEN EXTERN ~BDCORAN~ 11
END

IF ~~ THEN BEGIN 320 // from:
  SAY #252849 /* ~Boo says the more details, the better. My hamster thirsts for knowledge.~ [BD52849] */
  IF ~~ THEN EXTERN ~BDSAFANA~ 28
END

IF ~~ THEN BEGIN 321 // from:
  SAY #252853 /* ~I think she wishes us to leave. Does anyone else have that feeling?~ [BD52853] */
  IF ~~ THEN EXTERN ~BDSAFANA~ 42
END

IF ~~ THEN BEGIN 322 // from:
  SAY #252855 /* ~Minsc is an old hand at being begone. Do as I do, everyone. Be quiet and walk slowly... away...~ [BD52855] */
  IF ~~ THEN DO ~AddJournalEntry(259701,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 323 // from:
  SAY #252856 /* ~It is hard to avoid sometimes.~ [BD52856] */
  IF ~~ THEN EXTERN ~BDSAFANA~ 61
  IF ~  Gender(Player1,MALE)
~ THEN EXTERN ~BDSAFANA~ 62
END

IF ~~ THEN BEGIN 324 // from:
  SAY #252857 /* ~The more the merrier!~ [BD52857] */
  IF ~~ THEN EXTERN ~BDSAFANA~ 63
END

IF ~~ THEN BEGIN 325 // from:
  SAY #252858 /* ~Do not fear, <CHARNAME>. Her heart is not really breaking, Boo says. Her face is pretty, but her mouth is full of lies.~ [BD52858] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 326 // from:
  SAY #252859 /* ~We will see who punish murders who for murder punishment—right now!~ [BD52859] */
  IF ~~ THEN DO ~AddJournalEntry(261626,QUEST)
SetGlobal("BD_SPAWN_KORLASZ","BD0116",2)
ActionOverride("bdkorlas",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 327 // from:
  SAY #252863 /* ~I would have. My time with Boo has made me a keen observer of my surroundings.~ [BD52863] */
  IF ~~ THEN EXTERN ~BDFIST1A~ 4
END

IF ~~ THEN BEGIN 328 // from:
  SAY #252873 /* ~And what does this word "veritable" mean?~ [BD52873] */
  IF ~~ THEN EXTERN ~BDFFDOPP~ 52
END

IF ~~ THEN BEGIN 329 // from:
  SAY #252873 /* ~And what does this word "veritable" mean?~ [BD52873] */
  IF ~~ THEN EXTERN ~BDFFDOPP~ 15
END

IF ~~ THEN BEGIN 330 // from:
  SAY #252878 /* ~Let Minsc handle this, <CHARNAME>. I am good at this game. Tell me, mercenary: Is it animal, vegetable, or mineral?~ [BD52878] */
  IF ~~ THEN EXTERN ~BDFFDOPP~ 25
END

IF ~~ THEN BEGIN 331 // from:
  SAY #252907 /* ~The doppelthinger calls us crazy, Boo. This insult cannot stand!~ [BD52907] */
  IF ~~ THEN EXTERN ~BDFFDOPP~ 49
END

IF ~~ THEN BEGIN 332 // from:
  SAY #257475 /* ~All of our wraths! Boo will not abide injustice. Nor will I.~ [BD57475] */
  IF ~~ THEN EXTERN ~BDBERAHL~ 8
END

IF ~~ THEN BEGIN 333 // from:
  SAY #252913 /* ~I am not sure this is such a good idea, <CHARNAME>...~ [BD52913] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 334 // from:
  SAY #252917 /* ~You understand, doppelthingy? No path crossing for you!~ [BD52917] */
  IF ~~ THEN EXTERN ~BDFFDOPP~ 77
END

IF ~~ THEN BEGIN 335 // from:
  SAY #256300 /* ~I had children once. Their parents were not too happy about it.~ */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 255
END

IF ~~ THEN BEGIN 336 // from:
  SAY #256303 /* ~Let Minsc take care of this. Little girl. In this world, there are many butts. Some are good butts, and those we shall leave unkicked. Some butts, however...~ [BD56303] */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 251
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN EXTERN ~DYNAHJ~ 51
END

IF ~~ THEN BEGIN 337 // from:
  SAY #256306 /* ~You would do better to fight her with a sword. Hitting people with other people is not the best strategy in combat. They squirm too much.~ [BD56306] */
  IF ~~ THEN EXTERN ~BDAUDAM~ 0
END

IF ~~ THEN BEGIN 338 // from:
  SAY #256329 /* ~Don't forget "xylophone"—oh wait. You said that already.~ [BD56329] */
  IF ~~ THEN EXTERN ~BDPFAUG~ 8
END

IF ~~ THEN BEGIN 339 // from:
  SAY #242115 /* ~Minsc and Boo are ready to move, right, Boo? Boo?~ [BD42115] */
  IF ~~ THEN GOTO 340
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #242116 /* ~Boo is asleep. No matter! Minsc is ready to move!~ [BD42116] */
  IF ~~ THEN EXTERN ~BDCORWIN~ 10
END

IF ~~ THEN BEGIN 341 // from:
  SAY #242143 /* ~Your words would be those of a wise man. A wise man whose butt needs kicking!~ [BD42143] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 23
END

IF ~~ THEN BEGIN 342 // from:
  SAY #270481 /* ~Where Dynaheir goes, so goes Minsc. And you, Thayan... keep your eyes open. Someday, Boo will come for them!~ */
  IF ~~ THEN DO ~SetGlobal("bd_edwin_talk_again","bd1000",1)
ActionOverride("dynaheir",SetGlobal("bd_joined","locals",0))
ActionOverride("dynaheir",SetGlobal("bd_npc_camp","locals",1))
ActionOverride("dynaheir",ChangeAIScript("bdparty",DEFAULT))
ActionOverride("dynaheir",LeaveParty())
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 343 // from:
  SAY #242155 /* ~Aha! We have reached the part I like the best! Come here, Thayan. Your butt calls out for kicking, and Minsc shall answer that call!~ [BD42155] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 23
END

IF ~~ THEN BEGIN 344 // from:
  SAY #242222 /* ~Boo does not like the way the Thayan smiles. Or smells. Or looks. Actually, there is little about the Thayan Boo likes, other than the fact that someday, he will die.~ [BD42222] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 53
END

IF ~~ THEN BEGIN 345 // from:
  SAY #239916 /* ~If it is wisdom you need, Boo is there for you. He is a gifted counselor of the bold and the bald.~ [BD39916] */
  IF ~~ THEN DO ~ActionOverride("rasaad",JoinParty())
RemoveMapNote([2031.1510],234352)
~ EXIT
END

IF ~~ THEN BEGIN 346 // from:
  SAY #240040 /* ~*sniff*~ [BD40040] */
  IF ~~ THEN DO ~AddJournalEntry(261706,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 68
END

IF ~~ THEN BEGIN 347 // from:
  SAY #240042 /* ~Minsc has dirt in his eye. I won't miss that little mucker.~ [BD40042] */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #240043 /* ~Not even a little.~ [BD40043] */
  IF ~~ THEN DO ~AddJournalEntry(261706,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 349 // from:
  SAY #260745 /* ~Evil has taken root in the Castle of the Dragonspear. The sooner we get there, the sooner we can pull it up by the stump!~ [BD60745] */
  IF ~~ THEN EXTERN ~BDFSCOUT~ 2
END

IF ~~ THEN BEGIN 350 // from:
  SAY #235765 /* ~"Ours is not to reason why..." ~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 42
END

IF ~~ THEN BEGIN 351 // from:
  SAY #242277 /* ~Why did you invite a Thayan jackal to our circle? They bite when one's back is turned and then yelp and flee to avoid a petting from my boot!~ [BD42277] */
  IF ~~ THEN EXTERN ~DYNAHJ~ 77
  IF ~  Global("chapter","global",8)
~ THEN DO ~AddJournalEntry(259651,INFO)
EraseJournalEntry(259652)
~ EXTERN ~DYNAHJ~ 77
END

IF ~  Global("bd_edwin_join","global",1)
IsValidForPartyDialogue("edwin")
~ THEN BEGIN 352 // from:
  SAY #242279 /* ~Thayans! Ptoo! Boo says those who lay with dogs get fleas.~ [BD42279] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 60
  IF ~  InParty("edwin")
~ THEN EXTERN ~EDWINJ~ 273
END

IF ~~ THEN BEGIN 353 // from:
  SAY #242281 /* ~Wisdom! And some fleas.~ [BD42281] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 61
  IF ~  InParty("edwin")
~ THEN EXTERN ~EDWINJ~ 274
END

IF ~~ THEN BEGIN 354 // from:
  SAY #242286 /* ~A frog can sooner trust a scorpion than a hero any son of Thay. But I shall do as you say, <CHARNAME>. Farewell.~ [BD42286] */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
  IF ~  Global("chapter","global",8)
~ THEN DO ~EraseJournalEntry(259652)
AddJournalEntry(259651,INFO)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 355 // from:
  SAY #242294 /* ~I shall return to the camp... but I say (and Boo agrees) you are making a mistake. Farewell.~ [BD42294] */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
  IF ~  Global("chapter","global",8)
~ THEN DO ~EraseJournalEntry(259652)
AddJournalEntry(259651,INFO)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 356 // from:
  SAY #242530 /* ~No one at all. Minsc stands ready!~ [BD42530] */
  IF ~~ THEN EXTERN ~BDDORN~ 19
END

IF ~~ THEN BEGIN 357 // from:
  SAY #236480 /* ~Does it need to have seven legs before or after you take its leg?~ [BD36480] */
  IF ~~ THEN EXTERN ~BDNEERA~ 73
END

IF ~~ THEN BEGIN 358 // from:
  SAY #236670 /* ~Does it need to have seven legs before or after you take its leg?~ [BD36480] */
  IF ~~ THEN EXTERN ~NEERAJ~ 906
END

IF ~~ THEN BEGIN 359 // from:
  SAY #236670 /* ~Does it need to have seven legs before or after you take its leg?~ [BD36480] */
  IF ~~ THEN EXTERN ~NEERAJ~ 924
END

IF ~~ THEN BEGIN 360 // from:
  SAY #246704 /* ~There is nothing to fear but the feyr itself! And soon, it will be no more!~ [BD46704] */
  IF ~~ THEN EXTERN ~BDELANDR~ 18
END

IF ~~ THEN BEGIN 361 // from:
  SAY #246730 /* ~They will not feed on Minsc. Fear? I don't know the meaning of the word. Eh? What's that, Boo?~ [BD46730] */
  IF ~~ THEN GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #246732 /* ~Minsc now knows the meaning of the word. But feyrs will not find any in him!~ [BD46732] */
  IF ~~ THEN EXTERN ~BDTHARAN~ 7
END

IF ~~ THEN BEGIN 363 // from:
  SAY #247287 /* ~I fear you are right, my friend. I have seen her upset many times. This is what it looks like.~ [BD47287] */
  IF ~~ THEN EXTERN ~DYNAHJ~ 110
END

IF ~~ THEN BEGIN 364 // from:
  SAY #250810 /* ~What is that, puppy? Is there someone trapped in the well? But Boo says no, there is only a chicken, and Minsc should not listen to strange animals. Ha! Boo is wise.~ [BD50810] */
  IF ~~ THEN EXTERN ~BDDOGW01~ 2
END

IF ~~ THEN BEGIN 365 // from:
  SAY #247554 /* ~Boo says blood is thicker than water. Heed the wisdom of the hamster!~ [BD47554] */
  IF ~~ THEN EXTERN ~BDCORINT~ 11
END

IF ~~ THEN BEGIN 366 // from:
  SAY #241004 /* ~Minsc ate some spoiled mushrooms once. That was not a good tenday. The colors, they would not shut up.~ [BD41004] */
  IF ~~ THEN EXTERN ~BDDYINGM~ 1
END

IF ~~ THEN BEGIN 367 // from:
  SAY #241010 /* ~You know what they say— she who smelt it...~ [BD41010] */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 86
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~BDDYINGM~ 1
END

IF ~~ THEN BEGIN 368 // from:
  SAY #269577 /* ~You know what they say—he who smelt it...~ [BD69577] */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 86
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~BDDYINGM~ 1
END

IF ~~ THEN BEGIN 369 // from:
  SAY #241012 /* ~What? I didn't say it, it's what I heard. Isn't that right, Boo?~ [BD41012] */
  IF ~~ THEN EXTERN ~BDDYINGM~ 1
END

IF ~~ THEN BEGIN 370 // from:
  SAY #258218 /* ~I too guard my witch as if she were made of gold! Though gold is less fragile. Minsc would not worry so much if she were gold.~ [BD58218] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 3
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~DYNAHJ~ 89
END

IF ~~ THEN BEGIN 371 // from:
  SAY #252493 /* ~But I am here, yes! Brave Minsc and his not-quite-as-brave but much cleverer miniature giant space hamster, Boo!~ [BD52493] */
  IF ~~ THEN GOTO 372
END

IF ~~ THEN BEGIN 372 // from: 371.0
  SAY #252494 /* ~My witch, Dynaheir, she... she is not with us. For the moment. But Boo says to be brave and carry on till she returns!~ [BD52494] */
  IF ~~ THEN EXTERN ~BDJULANN~ 11
END

IF ~~ THEN BEGIN 373 // from:
  SAY #252514 /* ~Boo and I are very pleased to meet you! Say well met, Boo. Boo says, "Well met, Boo!" Such a jester this hamster is.~ [BD52514] */
  IF ~~ THEN EXTERN ~BDJULANN~ 19
END

IF ~~ THEN BEGIN 374 // from:
  SAY #252551 /* ~It is good to see another brother from the east! Minsc has been long in this foreign land where the evil is thick and the people are tiny.~ [BD52551] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 11
END

IF ~~ THEN BEGIN 375 // from:
  SAY #252557 /* ~I too know the loneliness of living in strange, smelly lands. Luckily, I have Boo and my witch for company.~ [BD52557] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 13
END

IF ~~ THEN BEGIN 376 // from:
  SAY #252558 /* ~I too know the loneliness of living in a strange, smelly land. But Minsc has Boo for company. And my witch... perhaps she will return someday. Boo says such things happen.~ [BD52558] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 13
END

IF ~~ THEN BEGIN 377 // from:
  SAY #252564 /* ~Dynaheir too has a mind unlike any other. Her brilliance makes Minsc's brain feel like a hamster's! Boo does not like it when Minsc says so, so I do not say it very loud.~ [BD52564] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 15
END

IF ~~ THEN BEGIN 378 // from:
  SAY #252565 /* ~Dynaheir too had a mind unlike any other. Her brilliance made Minsc's brain feel like a hamster's! Not like Boo's brain, though. Ho ho, Minsc should be so lucky as to have a brain like that.~ [BD52565] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 15
END

IF ~~ THEN BEGIN 379 // from:
  SAY #252575 /* ~Minsc will follow Dynaheir to the ends of Toril, though his legs may be very sore! If she sails away, he will follow her! Preferably in the boat, but Minsc can swim.~ [BD52575] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 20
END

IF ~~ THEN BEGIN 380 // from:
  SAY #252576 /* ~Minsc would have followed Dynaheir to the end of Toril and beyond. I would have followed her into death, but she would not like that. So Minsc waits, and hopes she will return.~ [BD52576] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 20
END

IF ~~ THEN BEGIN 381 // from:
  SAY #252623 /* ~Yes, we Rashemi must stand together! Not too close together, though. Minsc has a wide swing.~ [BD52623] */
  IF ~~ THEN EXTERN ~BDJULANN~ 40
END

IF ~~ THEN BEGIN 382 // from:
  SAY #252645 /* ~I cannot be believing my ears! Surely Minsc's good friend would not do such evil things!~ [BD52645] */
  IF ~~ THEN EXTERN ~BDJULANN~ 47
END

IF ~~ THEN BEGIN 383 // from:
  SAY #252653 /* ~Minsc knows what punishment HE would deal out, and it would be more than a stern butt-kicking!~ [BD52653] */
  IF ~~ THEN EXTERN ~BDRIGAH~ 34
END

IF ~~ THEN BEGIN 384 // from:
  SAY #257984 /* ~Yes! The time to fight is now, and the time to celebrate is after the time to fight!~ [BD57984] */
  IF ~~ THEN EXTERN ~BDKHALID~ 56
END

IF ~~ THEN BEGIN 385 // from:
  SAY #237258 /* ~This is no path for a true champion to walk, Boo says.~ [BD37258] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 668
END

IF ~~ THEN BEGIN 386 // from:
  SAY #244037 /* ~There is a time to watch and a time to do battle. This is one of those times.~ [BD44037] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 153
END

IF ~~ THEN BEGIN 387 // from:
  SAY #240330 /* ~What is this? Shining knights looking green and sickly? We must help them!~ [BD40330] */
  IF ~~ THEN EXTERN ~BDPCRUS~ 2
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 1385
END

IF ~  Global("BD_SDD317_WYRMS","BD5100",0)
~ THEN BEGIN 388 // from:
  SAY #241580 /* ~Boo is restless. Something is not right here.~ [BD41580] */
  IF ~~ THEN DO ~SetGlobal("BD_SDD317_WYRMS","BD5100",1)
~ EXIT
END

IF ~~ THEN BEGIN 389 // from:
  SAY #251878 /* ~Minsc believes in giving benefit of the doubt, but even he thinks twice about trusting ogres. Thrice, if there is time for that much thinking.~ [BD51878] */
  IF ~~ THEN EXTERN ~BDSLUG~ 20
END

IF ~~ THEN BEGIN 390 // from:
  SAY #237490 /* ~Minsc is also glad! Boo, are you—? Yes, Boo is glad also. We are all glad! It is good.~ [BD37490] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 14
END

IF ~~ THEN BEGIN 391 // from:
  SAY #237511 /* ~It is always better to do something instead of nothing. Right, Boo?~ [BD37511] */
  IF ~~ THEN EXTERN ~BDDELANC~ 2
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 23
END

IF ~~ THEN BEGIN 392 // from:
  SAY #237840 /* ~Minsc knows evil when he sees it—now evil will see Minsc and not know what hit it!~ [BD37840] */
  IF ~~ THEN DO ~ActionOverride("bdhepher",Enemy())
ActionOverride("bdesseri",Enemy())
ActionOverride("bdolvena",Enemy())
DisplayStringHead("bdhepher",237841)
AddJournalEntry(259795,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 393 // from:
  SAY #237842 /* ~We are done with the talking now, yes? It is time for the kicking of butt?~ [BD37842] */
  IF ~~ THEN EXTERN ~BDVOICE~ 4
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 119
END

IF ~~ THEN BEGIN 394 // from:
  SAY #238684 /* ~No prisoner for you, Light Lady of Shiny Evil Brightness!~ [BD38684] */
  IF ~~ THEN EXTERN ~BDCAELAR~ 40
END

IF ~~ THEN BEGIN 395 // from:
  SAY #238072 /* ~Let us not take battle only to the door, but to the entire castle!~ [BD38072] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 51
END

IF ~~ THEN BEGIN 396 // from:
  SAY #238409 /* ~Minsc is here to fight! Where is everyone else?~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 174
END

IF ~~ THEN BEGIN 397 // from:
  SAY #238759 /* ~Hell is no place for heroes! With me, Boo! We will fight till this place is naught but ashes!~ [BD38759] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 398 // from:
  SAY #238773 /* ~You would let these dirty devils do as they will? Boo says this is no good. And Minsc is VERY good!~ [BD38773] */
  IF ~~ THEN EXTERN ~BDILLARU~ 3
END

IF ~~ THEN BEGIN 399 // from:
  SAY #258093 /* ~Yes! Minsc and Boo will continue to fight at your side!~ [BD58093] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 82
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 83
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 84
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 85
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 400 // from:
  SAY #241658 /* ~You would take Minsc's witch? Pick another Hell, devil, for I shall send you there!~ [BD41658] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 70
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 71
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 72
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 73
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 401 // from:
  SAY #239011 /* ~Say it is not so, <CHARNAME>! You cannot give the funny fire elf to this fiend!~ [BD39011] */
  IF ~~ THEN EXTERN ~NEERAJ~ 945
END

IF ~~ THEN BEGIN 402 // from:
  SAY #241705 /* ~No! Minsc will not go quietly into this bad, BAD night! For Boo! For JUSTICE!~ [BD41705] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF ~  !Global("bd_thrix_mark_minsc","global",1)
Global("BD_Sacrifice_Minsc","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 403 // from:
  SAY #241707 /* ~Minsc knew you would never sacrifice him, <CHARNAME>. Boo... Boo was not so sure. Best you give him time to cool off.~ */
  IF ~~ THEN DO ~SetGlobal("BD_Sacrifice_Minsc","bd4500",3)
~ EXIT
END

IF ~  Global("bd_thrix_mark_minsc","global",1)
Global("BD_Sacrifice_Minsc","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 404 // from:
  SAY #269999 /* ~I do not know why we could not smite the evil devil creature at once. His is a soul fouler than Minsc's armpits after a three-day march. But if we must wait, we will wait. And when the fiend comes... oh, the buttkicking that shall follow!~ */
  IF ~~ THEN DO ~SetGlobal("BD_Sacrifice_Minsc","bd4500",3)
~ EXIT
END

IF ~~ THEN BEGIN 405 // from:
  SAY #239279 /* ~Boo says the paths we choose will take us where we're meant to be.~ [BD39279] */
  IF ~~ THEN EXTERN ~BDAUN~ 28
END

IF ~~ THEN BEGIN 406 // from:
  SAY #239282 /* ~And child's play for the gargantuan hamster of space.~ [BD39282] */
  IF ~~ THEN EXTERN ~BDAUN~ 24
END

IF ~~ THEN BEGIN 407 // from:
  SAY #239332 /* ~We are home, Boo!~ [BD39332] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 408 // from:
  SAY #239403 /* ~Avert your eyes, Boo! We cannot see our friend in such a shamed state! No space hamster should be exposed to such a scene.~ [BD39403] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 409 // from:
  SAY #239742 /* ~Rejoice, Boo! Our friends have returned to us!~ [BD39742] */
  IF ~~ THEN GOTO 410
END

IF ~~ THEN BEGIN 410 // from: 409.0
  SAY #239743 /* ~But one of our friends has been very, very naughty...~ [BD39743] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 411 // from:
  SAY #239769 /* ~A band of outlaws, on the run! Find Minsc a rich man to rob, that I may feed the poor!~ [BD39769] */
  IF ~~ THEN EXTERN ~BDIMOEN~ 126
END

IF ~  GlobalGT("bd_plot","global",599)
GlobalLT("bd_plot","global",685)
~ THEN BEGIN 412 // from:
  SAY #239784 /* ~Oh, it's nights like this that make Minsc think of the day that came before them. What a day it was, eh, Boo? Ha!~ [BD39784] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 413 // from:
  SAY #239788 /* ~Come to Minsc, shadowy men! And bring your shadowy butts, that I may kick them!~ [BD39788] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 414 // from:
  SAY #239789 /* ~What is this I feel...? Head is light—lighter than usual, even...~ [BD39789] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 415 // from:
  SAY #239790 /* ~All goes dark... Run, Boo... Run...~ [BD39790] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 416 // from:
  SAY #239794 /* ~Dynaheir! I will save you!~ [BD39794] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 417 // from:
  SAY #240689 /* ~Where are the fishfolk?~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 209
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 124
END

IF ~~ THEN BEGIN 418 // from:
  SAY #250196 /* ~Something evil. Boo says many butts here are in need of kicking. Where to begin?~ [BD50196] */
  IF ~~ THEN EXTERN ~BDDM02~ 0
END

IF ~~ THEN BEGIN 419 // from:
  SAY #250344 /* ~Fortunate for the world. Not so lucky for them!~ [BD50344] */
  IF ~~ THEN EXTERN ~BDHALAT~ 14
END

IF ~~ THEN BEGIN 420 // from:
  SAY #256653 /* ~A riddle! Minsc loves a riddle! Where is the mountain under the hill? I think it's over there!~ [BD56653] */
  IF ~~ THEN UNSOLVED_JOURNAL #259562 /* ~The Call of the Wild Mage

I should search for a portal to the Fugue Plane.

I must find the Fugue Plane to release Neera from the distraction of the wild mage Adoy's spirit. Neera senses the "mountain" of Nepenthe is very close, somewhere in these caverns.~ */ EXIT
  IF ~  IsValidForPartyDialogue("safana")
~ THEN EXTERN ~SAFANJ~ 224
END

IF ~~ THEN BEGIN 421 // from:
  SAY #256673 /* ~Ha! You see, Boo? I was right! The mountain was over there!~ [BD56673] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1123
END

IF ~~ THEN BEGIN 422 // from:
  SAY #248207 /* ~Forest rats do this too, when the pain is too much to bear. Look at his eyes! Minsc knows nothing of sickness, but he knows this man is ready to bash in a few heads! Watch out!~ [BD48207] */
  IF ~~ THEN DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 423 // from:
  SAY #248276 /* ~Boo will help translate his rat-cousins' speech!~ [BD48276] */
  IF ~~ THEN EXTERN ~BDDOSIA~ 14
END

IF ~~ THEN BEGIN 424 // from:
  SAY #248346 /* ~Nay, but Boo can! Speak to your cousins, Boo! Tell them of the sickly soldiers and ask if they know what to do.~ [BD48346] */
  IF ~~ THEN EXTERN ~BDFRAT~ 10
END

IF ~~ THEN BEGIN 425 // from:
  SAY #248350 /* ~Boo tells me of a tree in the woods around camp. It grows black thorns on its bark and mold grows on the fallen trunks.~ [BD48350] */
  IF ~~ THEN GOTO 426
END

IF ~~ THEN BEGIN 426 // from: 425.0
  SAY #248351 /* ~When the forest rats sicken, Boo says they roll around in this mold. We must find the tree and its soggy bark to heal the sick ones!~ [BD48351] */
  IF ~~ THEN DO ~AddJournalEntry(261440,QUEST)
SetGlobal("bd_sdd302_rat_hunt","global",4)
SetGlobal("bd_sdd302_blackthorn","global",1)
~ EXIT
END

IF ~  Global("bd_minsc_reputation_warning","GLOBAL",1)
~ THEN BEGIN 427 // from:
  SAY #260497 /* ~Boo is beginning to worry, <CHARNAME>. What some of these people do... is not so good.~ [BD60497] */
  IF ~~ THEN REPLY #260498 /* ~I understand. Please tell Boo that I'll try to rein the others—and myself—in a bit going forward.~ */ DO ~SetGlobal("bd_minsc_reputation_warning","GLOBAL",2)
~ GOTO 428
  IF ~~ THEN REPLY #260499 /* ~Sometimes "not so good" is the best we can be if we want to accomplish our goals.~ */ DO ~SetGlobal("bd_minsc_reputation_warning","GLOBAL",2)
~ GOTO 429
  IF ~~ THEN REPLY #260500 /* ~That's true enough. I suspect things are going to get worse before they get better.~ */ DO ~SetGlobal("bd_minsc_reputation_warning","GLOBAL",2)
~ GOTO 429
  IF ~~ THEN REPLY #260501 /* ~That sounds close to an ultimatum, Minsc. Dangerously close.~ */ DO ~SetGlobal("bd_minsc_reputation_warning","GLOBAL",2)
~ GOTO 429
  IF ~~ THEN REPLY #260502 /* ~What of it? If villainy is the cost of victory, it's a price I'm happy to pay.~ */ DO ~SetGlobal("bd_minsc_reputation_warning","GLOBAL",2)
~ GOTO 430
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #260503 /* ~Many thanks. You have made Boo a very happy hamster!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 429 // from: 427.3 427.2 427.1
  SAY #260504 /* ~There is good and there is evil. Boo knows the difference. The hamster's eyes are upon you. Do not disappoint him.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 430 // from: 427.4
  SAY #260505 /* ~You make Boo unhappy. Boo unhappy makes Minsc angry.~ */
  IF ~  InParty("Dynaheir")
~ THEN GOTO 431
  IF ~  !InParty("Dynaheir")
~ THEN GOTO 432
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #260506 /* ~Witch! Come with Minsc. I must get you away from this pack of dogs before they start to bite.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXTERN ~DYNAHJ~ 153
END

IF ~~ THEN BEGIN 432 // from: 430.1
  SAY #260508 /* ~Come, Boo! This scoundrel is no fit company for a miniature giant space hamster.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 433 // from:
  SAY #260529 /* ~Look at Boo. His miniature giant space heart is breaking. But we can no longer be a part of this. Goodbye, <CHARNAME>.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 434 // from:
  SAY #260537 /* ~How can you do this, <CHARNAME>? Look at Boo. His miniature giant space heart is breaking, for he knows we must leave you now. Goodbye.~ */
  IF ~~ THEN DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
JumpToObject("dynaheir")
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 435 // from:
  SAY #261004 /* ~And this is Boo. Say hello, Boo.~ [BD61004] */
  IF ~~ THEN DO ~PlaySound("GAM_48a")
~ EXTERN ~BDSCHAEL~ 155
END

IF ~~ THEN BEGIN 436 // from:
  SAY #261143 /* ~He seems to be crying. Boo says this is not a sign of all right. No, no, no... There is definitely something wrong here—of this I am certain.~ [BD61143] */
  IF ~~ THEN EXTERN ~BDBYZON~ 6
END

IF ~~ THEN BEGIN 437 // from:
  SAY #261149 /* ~Boo says something here stinks of evil. We will find it, and then, oh, there will be a reckoning for its backside, I tell you this!~ [BD61149] */
  IF ~~ THEN EXTERN ~BDRIGGS~ 13
END

IF ~~ THEN BEGIN 438 // from:
  SAY #239994 /* ~Boo has no problems with most drow. But THIS drow is another story—one that Boo says will not end well!~ [BD39994] */
  IF ~~ THEN EXTERN ~BDBAELOT~ 32
END

IF ~~ THEN BEGIN 439 // from:
  SAY #263647 /* ~Unsheathe your sword, <CHARNAME>! Boo's nose, it twitches—there is evil here!~ [BD63647] */
  IF ~~ THEN EXTERN ~BDDEEP~ 11
END

IF ~~ THEN BEGIN 440 // from:
  SAY #263825 /* ~This evil's butt used to belong to a dwarf, Boo. I must aim my boot a little lower than usual.~ [BD63825] */
  IF ~~ THEN EXTERN ~BDCOLDH~ 12
END

IF ~~ THEN BEGIN 441 // from:
  SAY #265555 /* ~There will be no rodent fighting while Minsc is around, I can tell you that much.~ [BD65555] */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 23
  IF ~  IsValidForPartyDialogue("baeloth")
~ THEN EXTERN ~BDMKHIIN~ 24
END
