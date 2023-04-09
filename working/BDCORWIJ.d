// creator  : weidu (version 24900)
// argument : BDCORWIJ.DLG
// game     : .
// source   : ./override/BDCORWIJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BDCORWIJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #258172 /* ~Those holy men and women who know of Caelar see her as a threat to more than the city.~ */
  IF ~~ THEN EXTERN ~BDRAYPHU~ 24
END

IF ~~ THEN BEGIN 1 // from:
  SAY #258176 /* ~These are hard times. In hard times, people take hope wherever they can find it.~ */
  IF ~~ THEN EXTERN ~BDRAYPHU~ 19
END

IF ~~ THEN BEGIN 2 // from:
  SAY #242163 /* ~We're not here to pick fights with Thayan braggarts, <CHARNAME>. Save the venom for Caelar.~ [BD42163] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 35
END

IF ~~ THEN BEGIN 3 // from:
  SAY #242164 /* ~For the love of the gods, save that filth for a chamberpot. You, Odess—Odie—wizard. Do you know where Caelar can be found?~ [BD42164] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 34
END

IF ~~ THEN BEGIN 4 // from:
  SAY #242215 /* ~Peace, mage. We've enough enemies to face without adding to the list.~ [BD42215] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 58
END

IF ~~ THEN BEGIN 5 // from:
  SAY #242217 /* ~Tell us what you know, wizard.~ [BD42217] */
  IF ~~ THEN EXTERN ~BDEDWIN~ 55
END

IF ~~ THEN BEGIN 6 // from:
  SAY #235583 /* ~Camp's set up. ~ */
  IF ~~ THEN REPLY #235584 /* ~Good. I'd like to explore the area, make sure we don't have any unpleasant surprises. ~ */ GOTO 7
  IF ~~ THEN REPLY #235585 /* ~What now? ~ */ GOTO 15
  IF ~~ THEN REPLY #235586 /* ~The camp's a waste of time. We should ride till we reach Bridgefort. ~ */ GOTO 17
END

IF ~~ THEN BEGIN 7 // from: 15.0 6.0
  SAY #235587 /* ~Wandering off on your own? I don't like it. We already know Caelar's got a target on your back. ~ */
  IF ~~ THEN REPLY #235786 /* ~It's a good thing I've got you watching it for me, then.~ */ GOTO 8
  IF ~~ THEN REPLY #235592 /* ~All the more reason for that back to keep moving. ~ */ GOTO 19
  IF ~~ THEN REPLY #235593 /* ~What you don't like matters little to me. ~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #235787 /* ~It'd be easier to watch in the camp.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #235595 /* ~But if we're going to do this at all, we should get on with it. Let's go. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #235596 /* ~I'm not finding that terribly comforting. ~ */
  IF ~~ THEN REPLY #235597 /* ~I'll be careful. ~ */ GOTO 11
  IF ~~ THEN REPLY #235598 /* ~You've lived with worse. ~ */ GOTO 12
  IF ~~ THEN REPLY #235599 /* ~Deal with it. I don't answer to you. ~ */ GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #235600 /* ~You better be. Eltan'll have my head if anything untoward happens to you. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.1 10.1
  SAY #235788 /* ~There's no way you're just going to rest like the rest of the camp, is there?~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #235602 /* ~Yeah, I'm getting that.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 16.0
  SAY #235603 /* ~That, I like. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.1
  SAY #235604 /* ~We rest, then move on to the bridge. ~ */
  IF ~~ THEN REPLY #235605 /* ~I'm not feeling particularly restful. Perhaps I'll explore the area. ~ */ GOTO 7
  IF ~~ THEN REPLY #235606 /* ~I'll go mad if I'm stuck sitting in this camp. There must be something I can do. ~ */ GOTO 16
  IF ~~ THEN REPLY #235607 /* ~Time spent here is time wasted. We should move on through the night. ~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #235789 /* ~Nothing that isn't unnecessarily risky.~ */
  IF ~~ THEN REPLY #235609 /* ~Maybe I will just go rest... ~ */ GOTO 14
  IF ~~ THEN REPLY #235790 /* ~Define "unnecessary."~ */ GOTO 12
  IF ~~ THEN REPLY #235791 /* ~What's life without risk?~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.2 6.2
  SAY #235612 /* ~These people have traveled three solid days without a break. If this keeps up, they'll be dead before they ever get close to Caelar.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.2
  SAY #235792 /* ~I wish I knew.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 21.0 18.0 13.0 12.0 10.2 7.1
  SAY #235617 /* ~Well, if we're going to do this at all, we might as well get on with it. Let's go.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("bd1000")
Global("bd_said_will_rest","bd1000",2)
~ THEN BEGIN 20 // from:
  SAY #235618 /* ~You said you were going to rest, <CHARNAME>.~ */
  IF ~~ THEN REPLY #235619 /* ~I can't. I need to move, to do something. ~ */ DO ~SetGlobal("bd_said_will_rest","bd1000",3)
~ GOTO 21
  IF ~~ THEN REPLY #235620 /* ~Yeah. I kind of lied about that. Sorry. ~ */ DO ~SetGlobal("bd_said_will_rest","bd1000",3)
~ GOTO 21
  IF ~~ THEN REPLY #235621 /* ~I changed my mind. If you've a problem with that, I suggest you deal with it. ~ */ DO ~SetGlobal("bd_said_will_rest","bd1000",3)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.2 20.1 20.0
  SAY #235622 /* ~Fine. ~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 22 // from:
  SAY #260743 /* ~I've got a few ideas myself. But I agree, we should talk to Corporal Duncan. Perhaps we could speak about Caelar first?~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 23 // from:
  SAY #240000 /* ~You can't seriously intend for us to take this drow along with us to Dragonspear.~ [BD40000] */
  IF ~~ THEN EXTERN ~BDBAELOT~ 33
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 707
END

IF ~~ THEN BEGIN 24 // from:
  SAY #243367 /* ~What are you doing? You're not really going to let Teleria turn this soldier into stone?~ */
  IF ~~ THEN REPLY #243368 /* ~No, of course not.~ */ GOTO 25
  IF ~~ THEN REPLY #262122 /* ~Better this soldier than one of us.~ */ GOTO 26
  IF ~~ THEN REPLY #243369 /* ~I believe that was the bargain.~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #243370 /* ~All right. Good.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.2 24.1
  SAY #243371 /* ~Not going to happen. Soldier! Carry on and do NOT leave this camp.~ */
  IF ~~ THEN EXTERN ~BDBRIELL~ 5
END

IF ~~ THEN BEGIN 27 // from:
  SAY #235629 /* ~Damn it. The crusade's holding the bridge.~ [BD35629] */
  IF ~~ THEN EXTERN ~BDIVANN~ 0
  IF ~  IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #256584 /* ~Scores, if not hundreds, of innocent people have been slain by those in your service.~ [BD56584] */
  IF ~~ THEN EXTERN ~BDCAELAR~ 36
END

IF ~~ THEN BEGIN 29 // from:
  SAY #235689 /* ~This may be our only opportunity to communicate directly with Caelar, <CHARNAME>. We have to take it.~ [BD35689] */
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235690 /* ~Perhaps I can persuade her to end this madness now, before more lives are lost.~ */ DO ~IncrementGlobal("bd_mdd420_good","global",1)
~ EXTERN ~RASAADJ~ 1294
  IF ~  !IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235690 /* ~Perhaps I can persuade her to end this madness now, before more lives are lost.~ */ DO ~IncrementGlobal("bd_mdd420_good","global",1)
~ GOTO 30
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235691 /* ~I don't want to do it. You do it. Don't look at me like that—! Oh, fine. I'll do it.~ */ EXTERN ~RASAADJ~ 1294
  IF ~  !IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235691 /* ~I don't want to do it. You do it. Don't look at me like that—! Oh, fine. I'll do it.~ */ GOTO 30
  IF ~~ THEN REPLY #235692 /* ~We've an opportunity to end this by putting an arrow between her eyes.~ */ DO ~IncrementGlobal("bd_mdd420_evil","global",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.3 29.1
  SAY #235695 /* ~This is new—she's never been willing to speak to anyone representing the Council before. If she'll talk to you... well, I doubt she's here to surrender, but we should hear what she has to say.~ [BD35695] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut17",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #260190 /* ~I'll not dishonor my fellows assassinating an enemy who's called for parley.~ [BD60190] */
  IF ~~ THEN REPLY #264767 /* ~I should never have asked you to. Forgive me.~ */ GOTO 34
  IF ~  !IsValidForPartyDialogue("dynaheir")
~ THEN REPLY #264768 /* ~Fear not—I'll do the dishonoring.~ */ GOTO 32
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN REPLY #264768 /* ~Fear not—I'll do the dishonoring.~ */ EXTERN ~DYNAHJ~ 73
  IF ~  !IsValidForPartyDialogue("edwin")
~ THEN REPLY #264769 /* ~Fie on your honor. She dies, here and now.~ */ DO ~IncrementGlobal("bd_mdd420_evil","global",1)
~ GOTO 32
  IF ~  IsValidForPartyDialogue("edwin")
!TimeOfDay(NIGHT)
~ THEN REPLY #264769 /* ~Fie on your honor. She dies, here and now.~ */ DO ~IncrementGlobal("bd_mdd420_evil","global",1)
~ EXTERN ~EDWINJ~ 288
  IF ~  IsValidForPartyDialogue("edwin")
TimeOfDay(NIGHT)
~ THEN REPLY #264769 /* ~Fie on your honor. She dies, here and now.~ */ DO ~IncrementGlobal("bd_mdd420_evil","global",1)
~ EXTERN ~EDWINJ~ 289
END

IF ~~ THEN BEGIN 32 // from: 31.3 31.1
  SAY #264772 /* ~She'll be shielded against any attack, arcane or otherwise. Diplomacy may prevail—or at least unsettle her.~ [BD64772] */
  IF ~~ THEN GOTO 34
  IF ~  IsValidForPartyDialogue("baeloth")
~ THEN EXTERN ~BAELOTHJ~ 15
END

IF ~~ THEN BEGIN 33 // from:
  SAY #264774 /* ~Try and kill her now and we'll do nothing but lose a valuable opportunity.~ [BD64774] */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 32.0 31.0
  SAY #264775 /* ~Maybe you can speak with her, get a sense of her weaknesses. Shield your own, and maybe we can win this day.~ [BD64775] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut17",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.0
  SAY #235729 /* ~So that was Caelar. I'm beginning to understand why so many have flocked to her banner.~ [BD35729] */
  IF ~~ THEN REPLY #235730 /* ~She will be a formidable foe, but her arrogance will be her undoing.~ */ DO ~SetGlobal("bd_plot","global",175)
~ GOTO 40
  IF ~~ THEN REPLY #235731 /* ~If you can ignore the suffering she's caused, she makes a compelling case for her crusade.~ */ DO ~SetGlobal("bd_plot","global",175)
~ GOTO 36
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #235732 /* ~Banners burn, sheep flee, and would-be prophets who overstep themselves die.  ~ */ DO ~SetGlobal("bd_plot","global",175)
~ GOTO 38
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #235732 /* ~Banners burn, sheep flee, and would-be prophets who overstep themselves die.  ~ */ DO ~SetGlobal("bd_plot","global",175)
~ EXTERN ~EDWINJ~ 290
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #235733 /* ~You're not having doubts, are you? Caelar, certainly, she... her words can be moving, but what of Baldur's Gate? The Council?~ [BD35733] */
  IF ~~ THEN REPLY #235734 /* ~I serve Baldur's Gate. I do what the city needs done.~ */ GOTO 37
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235735 /* ~This reign of terror will meet the same fate as Sarevok's.~ */ EXTERN ~RASAADJ~ 1296
  IF ~  !IsValidForPartyDialogue("rasaad")
~ THEN REPLY #235735 /* ~This reign of terror will meet the same fate as Sarevok's.~ */ GOTO 38
  IF ~~ THEN REPLY #235736 /* ~Be assured, the Shining Lady will pay for what she tried to do to Imoen and me.~ */ GOTO 41
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #235737 /* ~The dukes can prattle on; their words do not interest me. Caelar's wealth does, and it will be easier to take coin from her corpse than the Council—for now.~ */ EXTERN ~SAFANJ~ 54
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #235737 /* ~The dukes can prattle on; their words do not interest me. Caelar's wealth does, and it will be easier to take coin from her corpse than the Council—for now.~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #235743 /* ~I never knew you were so... devoted, <CHARNAME>.~ [BD35743] */
  IF ~~ THEN REPLY #235744 /* ~To all who matter to me, I am. I believe you would do no less for the dukes, for the city—and for your daughter, Corwin.~ */ GOTO 39
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY #235745 /* ~I'm full of surprises. ~ */ EXTERN ~BDGLINTJ~ 1
  IF ~  !IsValidForPartyDialogue("glint")
~ THEN REPLY #235745 /* ~I'm full of surprises. ~ */ GOTO 38
  IF ~~ THEN REPLY #235746 /* ~I have had enough talk of devotion, it is vengeance I seek. ~ */ GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 43.0 42.0 40.0 39.0 37.2 36.5 36.2 35.2
  SAY #235748 /* ~Let's head back to camp. With Tymora's favor, we might make Boareskyr Bridge before the crusade sets up another ambush for us.~ [BD35748] */
  IF ~~ THEN DO ~AddJournalEntry(259647,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.0
  SAY #235749 /* ~Hrm. There may be more to you than I thought.~ [BD35749] */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 40 // from: 35.0
  SAY #235750 /* ~I've seen the arrogant prosper too often to count on it—but I hope you're right.~ [BD35750] */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 41 // from: 37.3 36.3
  SAY #235761 /* ~That's all this is to you? Revenge?~ [BD35761] */
  IF ~~ THEN REPLY #235762 /* ~Caelar attacked Imoen, attacked me. I'd be lying if I said there was nothing personal in this. She made it personal.~ */ GOTO 43
  IF ~~ THEN REPLY #235763 /* ~That's what it's MOSTLY about, but not entirely.~ */ GOTO 42
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY #235764 /* ~Perhaps. What is it for you, Corwin? Is it enough that it is your duty to Eltan?~ */ EXTERN ~MINSCJ~ 371
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY #235764 /* ~Perhaps. What is it for you, Corwin? Is it enough that it is your duty to Eltan?~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.3 41.1
  SAY #235781 /* ~I thought there was something more to you, <CHARNAME>. Guess I was wrong.~ [BD35781] */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #235782 /* ~Fair enough. ~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 44 // from:
  SAY #235937 /* ~The crusade took the bridge out.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 16
END

IF ~~ THEN BEGIN 45 // from:
  SAY #235942 /* ~Strike the camp, Duncan. We need to move sooner than later; let's go.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 18
END

IF ~~ THEN BEGIN 46 // from:
  SAY #256066 /* ~A better one than you deserve. Now either charm the stone, if you can, or stop talking. For sanity's sake.~ [BD56066] */
  IF ~~ THEN EXTERN ~SAFANJ~ 60
END

IF ~~ THEN BEGIN 47 // from:
  SAY #242302 /* ~The watches have been set and scouts deployed, Corporal? The last thing we need is a band of trolls catching us unawares.~ [BD42302] */
  IF ~~ THEN EXTERN ~BDBENCE~ 20
END

IF ~~ THEN BEGIN 48 // from:
  SAY #242309 /* ~Getting eyes on the crusade can only help us. Don't engage the enemy if you can help it. And do NOT let them know who you are—unless you want a hundred zealots lining up to kill you.~ [BD42309] */
  IF ~~ THEN EXTERN ~BDBENCE~ 21
END

IF ~~ THEN BEGIN 49 // from:
  SAY #242311 /* ~We rode day and night from the Coast Way to here. If we're going to face the crusade, we don't want to do it half dead from lack of sleep.~ [BD42311] */
  IF ~~ THEN EXTERN ~BDBENCE~ 23
END

IF ~~ THEN BEGIN 50 // from:
  SAY #243677 /* ~There's a scroll wrapped 'round it...~ */
  IF ~~ THEN EXTERN ~BDBFORT4~ 7
  IF ~  IsValidForPartyDialogue("Khalid")
~ THEN EXTERN ~KHALIJ~ 25
END

IF ~~ THEN BEGIN 51 // from:
  SAY #243688 /* ~A code, then. A message to a crusade operative within Bridgefort's walls.~ */
  IF ~~ THEN EXTERN ~BDFRAIR~ 3
END

IF ~~ THEN BEGIN 52 // from:
  SAY #246646 /* ~Have you met many wizards that aren't?~ */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 12
END

IF ~~ THEN BEGIN 53 // from:
  SAY #246681 /* ~There's some who'd covet your place behind these walls. Better that than face the crusade, no?~ */
  IF ~~ THEN EXTERN ~BDELANDR~ 13
END

IF ~~ THEN BEGIN 54 // from:
  SAY #246717 /* ~A fear? What in the Pit is that?~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 317
END

IF ~~ THEN BEGIN 55 // from:
  SAY #249630 /* ~Hang on. I don't recognize you, gnome. And I should recognize everyone in this caravan. I'm Captain Schael Corwin of the Flaming Fist. Who the hells are you?~ [BD49630] */
  IF ~~ THEN EXTERN ~BDGLINT~ 12
END

IF ~~ THEN BEGIN 56 // from:
  SAY #249631 /* ~I'd like to know that myself. I don't recognize you, gnome. Who are you?~ [BD49631] */
  IF ~~ THEN EXTERN ~BDGLINT~ 12
END

IF ~~ THEN BEGIN 57 // from:
  SAY #249632 /* ~And you don't know any more now. I know who signed up for this mission, and Glint Gardnerson wasn't on the list.~ [BD49632] */
  IF ~~ THEN EXTERN ~BDGLINT~ 18
END

IF ~~ THEN BEGIN 58 // from:
  SAY #249634 /* ~I don't give two tugs of a dead dog's tail what your name is. What are you doing here?~ [BD49634] */
  IF ~~ THEN EXTERN ~BDGLINT~ 19
END

IF ~~ THEN BEGIN 59 // from:
  SAY #249635 /* ~My bet's on "nothing good." I know all the men assigned to this mission. The name Gardnerson isn't on the list.~ [BD49635] */
  IF ~~ THEN EXTERN ~BDGLINT~ 18
END

IF ~~ THEN BEGIN 60 // from:
  SAY #249636 /* ~Before you do that, maybe Gardnerson can explain to us exactly what he's doing here. He's not one of us.~ [BD49636] */
  IF ~~ THEN EXTERN ~BDGLINT~ 18
END

IF ~~ THEN BEGIN 61 // from:
  SAY #249637 /* ~He didn't. I know everyone assigned to join us. There's no Gardnerson on that list.~ [BD49637] */
  IF ~~ THEN EXTERN ~BDGLINT~ 18
END

IF ~~ THEN BEGIN 62 // from:
  SAY #249638 /* ~Wait a moment, <CHARNAME>. Something's off here. I know the name of everyone who's joined us so far. There's no Gardnerson on that list.~ [BD49638] */
  IF ~~ THEN EXTERN ~BDGLINT~ 18
END

IF WEIGHT #2 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",1)
~ THEN BEGIN 63 // from:
  SAY #247213 /* ~Anyone else think it's about time we got the hells out of here? ~ */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1301
END

IF WEIGHT #3 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("BD0114")
GlobalLT("BD_EXIT","BD0114",1)
StateCheck("BDBEETRH",STATE_REALLY_DEAD)
~ THEN BEGIN 64 // from:
  SAY #247219 /* ~That was time well spent.~ [BD47219] */
  IF ~~ THEN REPLY #247221 /* ~I've spent time in worse ways.~ */ GOTO 68
  IF ~~ THEN REPLY #247222 /* ~Better spent that way than dying.~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #247223 /* ~I suppose that's true enough. Let's go. ~ */
  IF ~~ THEN REPLY #247224 /* ~Let's.~ */ GOTO 67
  IF ~~ THEN REPLY #247225 /* ~In a moment, I want to look around a little more.~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 68.1 65.1
  SAY #247226 /* ~Fine.~ */
  IF ~~ THEN DO ~SetGlobal("BD_EXIT","BD0114",1)
~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 68.0 65.0
  SAY #247227 /* ~Caelar awaits.~ */
  IF ~~ THEN DO ~SetGlobal("BD_EXIT","BD0114",1)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 64.0
  SAY #247228 /* ~I don't want to know. Let's go.~ */
  IF ~~ THEN REPLY #247229 /* ~Let's.~ */ GOTO 67
  IF ~~ THEN REPLY #247230 /* ~In a moment, I want to look around a little more.~ */ GOTO 66
END

IF ~~ THEN BEGIN 69 // from:
  SAY #247449 /* ~That was an entertaining distraction, but it WAS a distraction. We have work to do. Let's go.~ [BD47449] */
  IF ~~ THEN DO ~SetGlobal("BD_SDD221","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #252418 /* ~Take what you can use and let's go. I don't even know what we're doing here.~ [BD52418] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #260786 /* ~I don't know how things work in Daggerford's militia, but you're part of a greater military force now. If you've a problem with your commanding officer, handle it through proper channels.~ */
  IF ~~ THEN EXTERN ~BDDAGF22~ 8
END

IF ~~ THEN BEGIN 72 // from:
  SAY #250018 /* ~Now that's a plan. Let's go.~ [BD50018] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #250812 /* ~What is it, boy? Do you want the chicken for dinner? We should let him take it. He looks hungry.~ [BD50812] */
  IF ~~ THEN EXTERN ~BDDOGW01~ 3
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 112
END

IF ~~ THEN BEGIN 74 // from:
  SAY #250583 /* ~Soldiers need to be able to trust the people they're fighting next to.~ */
  IF ~~ THEN EXTERN ~BDKAVA~ 7
END

IF ~~ THEN BEGIN 75 // from:
  SAY #250672 /* ~I've heard of the Barghest. He fought in the Dragonspear Wars—he's a legend in mass bloodshed circles.~ */
  IF ~~ THEN EXTERN ~BDREND~ 15
END

IF ~~ THEN BEGIN 76 // from:
  SAY #250683 /* ~That's all you can tell us?~ */
  IF ~~ THEN EXTERN ~BDREND~ 19
END

IF ~~ THEN BEGIN 77 // from:
  SAY #247791 /* ~Darker for some than for others.~ */
  IF ~~ THEN EXTERN ~BDDAMARR~ 15
END

IF ~~ THEN BEGIN 78 // from:
  SAY #247793 /* ~This isn't the time and it definitely isn't the place. Let's go.~ */
  IF ~~ THEN EXTERN ~BDDAMARR~ 3
END

IF ~~ THEN BEGIN 79 // from:
  SAY #247871 /* ~I hope you're pleased with yourself, <CHARNAME>. We've gained little playing this fool's game.~ */
  IF ~~ THEN SOLVED_JOURNAL #258721 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN SOLVED_JOURNAL #258722 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN SOLVED_JOURNAL #258723 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 349 even though they appear after this state */
~  GlobalGT("bd_famari_plot","bd4000",0)
GlobalLT("bd_famari_plot","bd4000",4)
See("bdfamari")
~ THEN BEGIN 80 // from:
  SAY #252375 /* ~Oh, bind ME... <CHARNAME>, come here. We've got to get back to camp.~ [BD52375] */
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN REPLY #252376 /* ~Corwin? What's wrong?~ */ DO ~SetGlobal("bd_famari_plot","bd4000",4)
~ EXTERN ~SAFANJ~ 84
  IF ~  !IsValidForPartyDialogue("Safana")
~ THEN REPLY #252376 /* ~Corwin? What's wrong?~ */ DO ~SetGlobal("bd_famari_plot","bd4000",4)
~ GOTO 81
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN REPLY #252377 /* ~All right, what am I missing here?~ */ DO ~SetGlobal("bd_famari_plot","bd4000",4)
~ EXTERN ~VICONIJ~ 577
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN REPLY #252377 /* ~All right, what am I missing here?~ */ DO ~SetGlobal("bd_famari_plot","bd4000",4)
~ GOTO 81
  IF ~~ THEN REPLY #252378 /* ~Go back? Explain yourself.~ */ DO ~SetGlobal("bd_famari_plot","bd4000",4)
~ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.4 80.3 80.1
  SAY #252381 /* ~I just saw a face I'd hoped never to see again. That man over there, I killed him once. And then four more times. I don't want to talk about it.~ [BD52381] */
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY #252383 /* ~You killed him five times? What could he possibly have done to deserve that?~ */ EXTERN ~DORNJ~ 1381
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY #252383 /* ~You killed him five times? What could he possibly have done to deserve that?~ */ GOTO 82
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY #252385 /* ~You slew a single man five times and you don't want to speak of it? Had I done such a thing, I'd speak of little else.~ */ EXTERN ~DORNJ~ 1382
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY #252385 /* ~You slew a single man five times and you don't want to speak of it? Had I done such a thing, I'd speak of little else.~ */ GOTO 82
  IF ~~ THEN REPLY #252382 /* ~I see. Let's get out of here before he spots you.~ */ DO ~AddJournalEntry(260238,INFO)
~ GOTO 97
END

IF ~~ THEN BEGIN 82 // from: 81.3 81.1
  SAY #252390 /* ~It was a personal matter. And his family has powerful friends in the Lathanderian clergy, so I knew he wouldn't stay dead. Well, I didn't KNOW it, but hearing he's back has never surprised me.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #252391 /* ~I'd hoped our last meeting would stay our last. Let's just get out of here, before he recognizes me.~ [BD52391] */
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY #252064 /* ~Who is he, Corwin? Why are you afraid of him?~ */ GOTO 84
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY #252067 /* ~I mislike flight. Especially from a foe I could clearly best. Explain yourself.~ */ GOTO 84
  IF ~~ THEN REPLY #252065 /* ~If he knows you, he might be willing to tell you something of the crusade's plans. This could be an opportunity.~ */ GOTO 85
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY #252066 /* ~Is that a story I smell? Tell me everything, dear lady. I'm all ears.~ */ GOTO 84
  IF ~~ THEN REPLY #252392 /* ~Very well. But once we're clear of him, I want to speak to you about this.~ */ DO ~AddJournalEntry(260238,INFO)
~ GOTO 97
END

IF WEIGHT #5 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_famari_plot","bd4000",4)
Global("bd_famari_talk","locals",0)
~ THEN BEGIN 84 // from: 83.3 83.1 83.0
  SAY #252070 /* ~His name's Beno Famari. And it's not him I'm worried about, it's the hundreds of crusaders that'll come running if we cross paths. Because if that happens, there's a better than good chance I'll kill him again.~ [BD52070] */
  IF ~~ THEN REPLY #252071 /* ~I need to know exactly what's going on, Corwin.~ */ DO ~SetGlobal("bd_famari_talk","locals",1)
~ GOTO 87
  IF ~~ THEN REPLY #252072 /* ~Or you might be able to gather some intelligence about the crusade.~ */ DO ~SetGlobal("bd_famari_talk","locals",1)
~ GOTO 85
  IF ~~ THEN REPLY #252073 /* ~We'd better get out of here, then.~ */ DO ~SetGlobal("bd_famari_talk","locals",1)
~ GOTO 97
END

IF ~~ THEN BEGIN 85 // from: 84.1 83.2
  SAY #252074 /* ~I can't imagine Beno willingly telling me anything useful. There's no love for me left in his coward heart.~ [BD52074] */
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #252075 /* ~Left? So there was love once?~ */ GOTO 88
  IF ~~ THEN REPLY #258482 /* ~If there's any chance we can learn more about the crusade's plans, we have to take it.~ */ GOTO 86
  IF ~~ THEN REPLY #252076 /* ~I need to know exactly what's going on here.~ */ GOTO 87
  IF ~~ THEN REPLY #252077 /* ~Best we avoid him, then.~ */ GOTO 97
END

IF ~~ THEN BEGIN 86 // from: 85.1
  SAY #266686 /* ~You aren't going to let this go, are you?~ [BD66686] */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0 85.2 84.0
  SAY #252083 /* ~Fine. Beno and I were... together. It was a long time ago, and it didn't end well, especially for him. I got Rohma, so I'm not complaining.~ [BD52083] */
  IF ~~ THEN REPLY #252084 /* ~He fathered your daughter?~ */ GOTO 89
  IF ~~ THEN REPLY #252085 /* ~Beno doesn't strike me as a true believer in Caelar. A mercenary, more than likely. Could you speak to him, perhaps learn something of the crusade's defenses?~ */ GOTO 94
  IF ~~ THEN REPLY #252086 /* ~This Beno—I take it he hasn't been much involved in Rohma's life.~ */ GOTO 89
  IF ~~ THEN REPLY #252088 /* ~That explains your antipathy. All right, forget Beno. Let's do what we came here to do.~ */ GOTO 97
END

IF ~~ THEN BEGIN 88 // from: 85.0
  SAY #258483 /* ~I was young, angry, and rebellious then. I'm not that woman anymore. Whatever Beno and I once shared is long dead. I got Rohma, so I'm not complaining.~ [BD58483] */
  IF ~~ THEN REPLY #258484 /* ~Beno fathered your daughter?~ */ GOTO 89
  IF ~~ THEN REPLY #258485 /* ~I take it he hasn't been much involved in Rohma's life.~ */ GOTO 89
  IF ~~ THEN REPLY #258486 /* ~I see. All right, then. Best we avoid the man.~ */ GOTO 97
END

IF ~~ THEN BEGIN 89 // from: 88.1 88.0 87.2 87.0
  SAY #252089 /* ~He was there when she was conceived. He was never her father. When I told him about Rohma...~ [BD52089] */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #266687 /* ~I was young and stupid then. Becoming a mother smartened me up fast.~ [BD66687] */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #252094 /* ~Whatever I do in this life, whatever regrets I have, Rohma's not one of them. She never will be. I love her. Which is just one of the many reasons I'd rather avoid dying here.~ [BD52094] */
  IF ~~ THEN REPLY #252090 /* ~You raised a beautiful and intelligent child. I hate that this war takes you away from her.~ */ GOTO 92
  IF ~~ THEN REPLY #252091 /* ~If you can elicit even a little information about the crusade from Beno, our chances of survival will improve.~ */ GOTO 94
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN REPLY #252092 /* ~Yet you left your daughter to go battle an army of religious zealots hundreds of miles away.~ */ EXTERN ~BDVOGHIJ~ 13
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN REPLY #252092 /* ~Yet you left your daughter to go battle an army of religious zealots hundreds of miles away.~ */ GOTO 92
  IF ~~ THEN REPLY #252093 /* ~The smart thing for us to do would be to leave this place.~ */ GOTO 97
END

IF ~~ THEN BEGIN 92 // from: 91.3 91.0
  SAY #252096 /* ~There are three things in my life that matter to me, <CHARNAME>. My daughter, my father, and the Flaming Fist. Each saved me, in their own way. When one of them calls on me, I answer. Always.~ [BD52096] */
  IF ~~ THEN GOTO 94
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 1383
END

IF ~~ THEN BEGIN 93 // from:
  SAY #266688 /* ~Look, things between Beno and I... You've probably guessed they didn't end well.~ [BD66688] */
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0 92.0 91.1 87.1
  SAY #252101 /* ~If you really think I should talk to him, I will, but I'm telling you it's not a good idea.~ [BD52101] */
  IF ~~ THEN REPLY #252102 /* ~We have to try, Corwin.~ */ GOTO 96
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY #252104 /* ~How badly did things end? Other than the part where you killed him repeatedly, I mean.~ */ EXTERN ~BDGLINTJ~ 66
  IF ~  !IsValidForPartyDialogue("Glint")
~ THEN REPLY #252104 /* ~How badly did things end? Other than the part where you killed him repeatedly, I mean.~ */ GOTO 95
  IF ~~ THEN REPLY #252105 /* ~Very well. Let us depart before he sees you.~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.2
  SAY #252106 /* ~He hurt me; I hurt him back. Let's just leave it at that. If you want to talk to him, let's go. Otherwise, we should get back to our camp.~ [BD52106] */
  IF ~~ THEN DO ~AddJournalEntry(260239,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.0
  SAY #252107 /* ~If you insist. But whatever happens is on your head.~ [BD52107] */
  IF ~~ THEN DO ~AddJournalEntry(260239,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.3 91.4 88.2 87.3 85.3 84.2 83.4 81.4
  SAY #258487 /* ~Thank you, <CHARNAME>. I appreciate this. Let's go.~ [BD58487] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #252113 /* ~...Beno.~ [BD52113] */
  IF ~~ THEN REPLY #252114 /* ~I am <CHARNAME>. Pleased to meet you.~ */ EXTERN ~BDFAMARI~ 4
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #252116 /* ~This is no time to chat, Corwin. The Shining Lady's business must be done without delay.~ */ GOTO 99
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY #252116 /* ~This is no time to chat, Corwin. The Shining Lady's business must be done without delay.~ */ EXTERN ~BDFAMARI~ 3
  IF ~~ THEN REPLY #252117 /* ~Stand aside, mercenary. I'll not waste time on the likes of you.~ */ GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.3 98.1
  SAY #252120 /* ~I have to go, Beno. We're on important business.~ [BD52120] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 1
END

IF ~~ THEN BEGIN 100 // from:
  SAY #252127 /* ~No more than I am to see you. You'll have to excuse us. We're on, uh, official crusade business.~ [BD52127] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 2
END

IF ~~ THEN BEGIN 101 // from:
  SAY #252135 /* ~That had nothing to do with what happened to us, Beno, and you know it. I'm not who I was when we were together. Motherhood opened my eyes. I want more from life than what the Fist promised. Is that so hard to believe?~ [BD52135] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 6
END

IF ~~ THEN BEGIN 102 // from:
  SAY #252156 /* ~Beno, wait. Just this once, think of Rohma...~ [BD52156] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 12
END

IF ~~ THEN BEGIN 103 // from:
  SAY #258497 /* ~<CHARNAME>, stop. You're giving him what he wants. Let's go.~ [BD58497] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 14
END

IF ~~ THEN BEGIN 104 // from:
  SAY #258503 /* ~I'd committed to changing when we met, Beno. I wanted a new life. We might have made it work if you hadn't left.~ [BD58503] */
  IF ~~ THEN REPLY #258504 /* ~The past is the past. I know who you are now, Corwin. That's all that matters to me.~ */ EXTERN ~BDFAMARI~ 17
  IF ~~ THEN REPLY #258505 /* ~Sounds like you've some interesting tales to tell, Corwin. I look forward to hearing them.~ */ EXTERN ~BDFAMARI~ 17
  IF ~~ THEN REPLY #258506 /* ~Enough. I'm putting an end to this. Keep talking, Famari, and I'll put an end to YOU.~ */ EXTERN ~BDFAMARI~ 16
END

IF ~~ THEN BEGIN 105 // from:
  SAY #252183 /* ~We should get out of here quickly, before Beno's resurrected. Let's go.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_famari_plot","bd4000",7)
~ THEN BEGIN 106 // from:
  SAY #258509 /* ~I thought, after all this time, he wouldn't be able to hurt me anymore. Or at least that I'd be less angry.~ [BD58509] */
  IF ~~ THEN REPLY #258510 /* ~He was a big part of your life. Of course you'd still feel emotional around him.~ */ DO ~SetGlobal("bd_famari_plot","bd4000",8)
~ GOTO 107
  IF ~~ THEN REPLY #258511 /* ~What you need is more distractions. Delightful distractions.~ */ DO ~SetGlobal("bd_famari_plot","bd4000",8)
~ GOTO 107
  IF ~~ THEN REPLY #258512 /* ~He's a boor and an idiot. Put him in the past where he belongs.~ */ DO ~SetGlobal("bd_famari_plot","bd4000",8)
~ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.2 106.1 106.0
  SAY #258513 /* ~I just—every time I see him I want to claw his eyes out. I hate that he can still rile me up like that. I wish I could ignore him. Forget him.~ [BD58513] */
  IF ~~ THEN REPLY #258514 /* ~He's Rohma's father, even if he was never around for her. Your reactions are perfectly natural, Schael.~ */ GOTO 108
  IF ~~ THEN REPLY #258515 /* ~Do you still care about him?~ */ GOTO 110
  IF ~~ THEN REPLY #258516 /* ~Then put him out of your mind. We have more important things to focus on.~ */ GOTO 114
END

IF ~~ THEN BEGIN 108 // from: 112.0 111.0 107.0
  SAY #258517 /* ~I worry so much about Rohma. Whenever I look at Skie Silvershield, I think... Well, this might amuse you, but I was a lot like Skie at her age. I didn't appreciate what I had, and I thought the world owed me everything.~ [BD58517] */
  IF ~~ THEN REPLY #258518 /* ~Believe me, you are NOTHING like Skie.~ */ GOTO 109
  IF ~~ THEN REPLY #258519 /* ~We all do foolish things in our youth. Well, most of us. Some of us are locked up in a dusty library because we're secretly the spawn of evil gods.~ */ GOTO 109
  IF ~~ THEN REPLY #258520 /* ~Rohma will be fine. Now come on, we have to get moving.~ */ GOTO 114
END

IF ~~ THEN BEGIN 109 // from: 108.1 108.0
  SAY #258521 /* ~I grew out of my wild behavior eventually, thanks to my father. Skie hasn't, though. Maybe she never will. What if Rohma turns out like that because I wasn't there enough for her?~ [BD58521] */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 110 // from: 107.1
  SAY #258522 /* ~Gods, no. I thought it was love at the time, but it never got close to that, not really. We were doomed from the start.~ [BD58522] */
  IF ~~ THEN REPLY #258523 /* ~So I have nothing to worry about then?~ */ GOTO 111
  IF ~~ THEN REPLY #258524 /* ~When real love comes into your life, it will be there to stay. I'm sure of it.~ */ GOTO 112
  IF ~~ THEN REPLY #258525 /* ~Good to know you won't be running after Famari with some idea of making things right. Now let's get moving. We have important business to attend to.~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #258526 /* ~You don't. Believe me, you don't. I, on the other hand...~ [BD58526] */
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 112 // from: 110.1
  SAY #258527 /* ~Real love did come into my life, the moment I held Rohma in my arms. I hope to someday share the honor of being her parent with the right person.~ [BD58527] */
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 113 // from: 109.0
  SAY #258528 /* ~No point dwelling on that now. I just wanted to say thank you. That was difficult, but it helped having you at my side.~ [BD58528] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from: 110.2 108.2 107.2
  SAY #258529 /* ~You're right. Let's go.~ [BD58529] */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_munsch_plot","global",5)
Global("bd_corwin_cage_talk","bd2000",0)
~ THEN BEGIN 115 // from:
  SAY #242633 /* ~This is the best chance we'll get to scout the camp, <CHARNAME>. We need to get out of these cages, quickly.~ [BD42633] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_cage_talk","bd2000",1)
~ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #242681 /* ~I know that name. You speak to the Butcher of Barrow, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~BDDORN~ 38
END

IF ~~ THEN BEGIN 117 // from:
  SAY #259750 /* ~<CHARNAME>, this wizard knows who you are! I overheard her talking about you! Quick, make an excuse and let's go.~ [BD59750] */
  IF ~~ THEN EXTERN ~BDOLONEI~ 1
END

IF ~~ THEN BEGIN 118 // from:
  SAY #242752 /* ~What the hells was that?~ [BD42752] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 352
END

IF ~~ THEN BEGIN 119 // from:
  SAY #262134 /* ~Do you really think it cares what we call it? This is about something else.~ [BD62134] */
  IF ~~ THEN EXTERN ~BDMYCELD~ 10
END

IF ~~ THEN BEGIN 120 // from:
  SAY #236146 /* ~Don't encourage them. There's a time for romance, and this isn't it.~ [BD36146] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1208
END

IF ~~ THEN BEGIN 121 // from:
  SAY #247429 /* ~I don't like the way she's glowing.~ [BD47429] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 209
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN EXTERN ~DYNAHJ~ 104
END

IF ~~ THEN BEGIN 122 // from:
  SAY #257953 /* ~I've heard of him. A veteran of the Dragonspear Wars and a dangerous warrior.~ [BD57953] */
  IF ~~ THEN EXTERN ~BDKHALID~ 41
END

IF ~~ THEN BEGIN 123 // from:
  SAY #236998 /* ~They're going to let us go. Incredible.~ [BD36998] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 698
END

IF ~~ THEN BEGIN 124 // from:
  SAY #237000 /* ~My father always said hope for the best but prepare for the worst.~ [BD37000] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #237019 /* ~The Flaming Fist could offer much to a warrior of your caliber.~ [BD37019] */
  IF ~~ THEN EXTERN ~BDBARGHE~ 52
END

IF ~~ THEN BEGIN 126 // from:
  SAY #265080 /* ~They kept us from crossing the Winding Water once. Odds are they'll try to do it again. We can't let that happen.~ [BD65080] */
  IF ~~ THEN EXTERN ~BDFISTM1~ 2
END

IF ~~ THEN BEGIN 127 // from:
  SAY #265098 /* ~For the love of the gods, don't encourage her. Listen, recruit, you're a Flaming Fist now. You do as your commander tells you, and you do it without complaint. You DEFINITELY don't complain in front of him. Got it?~ [BD65098] */
  IF ~~ THEN EXTERN ~BDSKIE~ 35
END

IF ~~ THEN BEGIN 128 // from:
  SAY #240510 /* ~Uh, what are you doing?~ [BD40510] */
  IF ~~ THEN EXTERN ~BDGURGLE~ 4
  IF ~  IsValidForPartyDialogue("GLINT")
Gender(Player1,MALE)
~ THEN EXTERN ~BDGLINTJ~ 87
  IF ~  IsValidForPartyDialogue("GLINT")
Gender(Player1,FEMALE)
~ THEN EXTERN ~BDGLINTJ~ 88
END

IF WEIGHT #8 /* Triggers after states #: 349 even though they appear after this state */
~  Global("BD_SDD317_WYRMS","BD5100",3)
~ THEN BEGIN 129 // from:
  SAY #241625 /* ~These wyrms have had no home but this cavern their entire lives. They probably ate whatever small creatures came out of that pit, and if nothing did, each other. Poor things.~ [BD41625] */
  IF ~~ THEN DO ~SetGlobal("BD_SDD317_WYRMS","BD5100",4)
AddJournalEntry(261916,QUEST_DONE)
~ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_bridgefort_plot","global",9)
Global("bd_corwin_bf_slaughter","bd2000",0)
GlobalLT("bd_plot","global",240)
~ THEN BEGIN 130 // from:
  SAY #237174 /* ~Damn it, <CHARNAME>! We're supposed to be helping these people.~ [BD37174] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_bf_slaughter","bd2000",1)
~ EXIT
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN DO ~SetGlobal("bd_corwin_bf_slaughter","bd2000",1)
~ EXTERN ~DYNAHJ~ 115
END

IF WEIGHT #10 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_plot","global",260)
Global("bd_betrayal_discussion","bd2000",0)
~ THEN BEGIN 131 // from:
  SAY #237236 /* ~Would you care to tell me what in the Nine Hells you were thinking giving the crusade Bridgefort, <CHARNAME>? You handed Caelar an easy victory.~ [BD37236] */
  IF ~~ THEN REPLY #237237 /* ~An easy victory, and a hollow one. Dragonspear is our goal. Forget Bridgefort—it was naught but a distraction.~ */ DO ~SetGlobal("bd_betrayal_discussion","bd2000",1)
SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
~ GOTO 132
  IF ~~ THEN REPLY #237238 /* ~It was really a spur of the moment thing...~ */ DO ~SetGlobal("bd_betrayal_discussion","bd2000",1)
SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
~ GOTO 133
  IF ~~ THEN REPLY #237239 /* ~The Bridgefortians are still alive, and we're one step closer to Caelar. The best of all worlds.~ */ DO ~SetGlobal("bd_betrayal_discussion","bd2000",1)
SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
~ GOTO 132
  IF ~~ THEN REPLY #237240 /* ~The Grand Dukes gave me authority to act as I see fit. I used it.~ */ DO ~SetGlobal("bd_betrayal_discussion","bd2000",1)
SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
~ GOTO 133
END

IF ~~ THEN BEGIN 132 // from: 131.2 131.0
  SAY #237241 /* ~Tell that to the people you just betrayed.~ [BD37241] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 45
END

IF ~~ THEN BEGIN 133 // from: 131.3 131.1
  SAY #237242 /* ~That's it? That's the best the hero of Baldur's Gate has to offer?~ [BD37242] */
  IF ~~ THEN REPLY #237243 /* ~What more do you want from me, Corwin?~ */ GOTO 135
  IF ~~ THEN REPLY #237244 /* ~I did what I thought was best in the moment. There's no going back now.~ */ GOTO 134
  IF ~~ THEN REPLY #237245 /* ~I don't answer to you, Corwin. I tolerate you, as a courtesy to the Grand Dukes. Don't make the mistake of thinking otherwise.~ */ GOTO 136
END

IF ~~ THEN BEGIN 134 // from: 133.1
  SAY #237246 /* ~That's cold comfort for the people you just betrayed.~ [BD37246] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 45
END

IF ~~ THEN BEGIN 135 // from: 133.0
  SAY #237247 /* ~I want you to think before you act. I want you to consider the lives of the people depending on you before you do something that irrevocably alters them. That's not too much to ask.~ [BD37247] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 45
END

IF ~~ THEN BEGIN 136 // from: 133.2
  SAY #237249 /* ~I understand. Now.~ [BD37249] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 45
END

IF ~~ THEN BEGIN 137 // from:
  SAY #237435 /* ~And you, Marshal Nederlok.~ [BD37435] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 1
END

IF ~~ THEN BEGIN 138 // from:
  SAY #237447 /* ~We'll do that. Thank you, sir.~ [BD37447] */
  IF ~~ THEN DO ~AddJournalEntry(259777,QUEST)
~ EXIT
  IF ~  Global("bd_nederlok_mkhiin","bd3000",1)
~ THEN DO ~AddJournalEntry(259779,INFO)
AddJournalEntry(259777,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #237449 /* ~Of course. It's always the troops' fault.~ [BD37449] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 6
END

IF ~~ THEN BEGIN 140 // from:
  SAY #237462 /* ~I'll keep her out of trouble, sir.~ [BD37462] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 10
END

IF ~~ THEN BEGIN 141 // from:
  SAY #237508 /* ~Show a little respect, <CHARNAME>...~ [BD37508] */
  IF ~~ THEN EXTERN ~BDSTONEH~ 15
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~SAFANJ~ 101
END

IF ~~ THEN BEGIN 142 // from:
  SAY #237567 /* ~We'll do that. Thank you, sir.~ [BD37567] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #243991 /* ~Let's go, <CHARNAME>.~ [BD43991] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #261094 /* ~Enough! We've better things to do than aggravate our own people. Come on, let's go.~ */
  IF ~~ THEN EXTERN ~BDWILCH~ 6
END

IF ~~ THEN BEGIN 145 // from:
  SAY #237576 /* ~Steady on, Corporal. What's the problem?~ [BD37576] */
  IF ~~ THEN EXTERN ~BDBENCE~ 34
END

IF ~~ THEN BEGIN 146 // from:
  SAY #237581 /* ~Lord Silvershield might disagree. Violently. Do we know if Skie left willingly? Or was she taken?~ [BD37581] */
  IF ~~ THEN EXTERN ~BDBENCE~ 35
END

IF ~~ THEN BEGIN 147 // from: 148.0
  SAY #237589 /* ~They don't know who she is. As far as they're concerned, she's just another Flaming Fist. This is bad. This is very bad.~ [BD37589] */
  IF ~~ THEN REPLY #237590 /* ~I'll get her back. She was heading towards Dragonspear, you say? ~ */ EXTERN ~BDBENCE~ 36
  IF ~~ THEN REPLY #237591 /* ~It's even worse than that. You're going to ask me to rescue her, aren't you?~ */ GOTO 149
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY #237592 /* ~She knows of my presence here. If that information should fall into the crusade's hands... Very well. I'll retrieve the witless cow. ~ */ EXTERN ~JAHEIRAJ~ 700
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY #237592 /* ~She knows of my presence here. If that information should fall into the crusade's hands... Very well. I'll retrieve the witless cow. ~ */ GOTO 150
END

IF ~~ THEN BEGIN 148 // from:
  SAY #237597 /* ~I'm afraid they WON'T endure it.~ [BD37597] */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 149 // from: 147.1
  SAY #237598 /* ~Someone has to. Or Silvershield will have all our heads.~ [BD37598] */
  IF ~~ THEN REPLY #237599 /* ~Grand Duke Silvershield won't lose his daughter if I've anything to say about it. I'll seek Skie out immediately.~ */ GOTO 150
  IF ~~ THEN REPLY #237600 /* ~My shoulders have become rather attached to my head over the years. You say Skie was heading towards Dragonspear?~ */ EXTERN ~BDBENCE~ 38
  IF ~~ THEN REPLY #237601 /* ~If Caelar learns of my presence here, it won't be long before I'm dealing with more assassins... Very well. I'll retrieve the witless cow before she falls into the crusade's hands.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.2 149.0 147.3
  SAY #237603 /* ~Try to do it quietly. The fewer people who learn of this, the better.~ [BD37603] */
  IF ~~ THEN DO ~AddJournalEntry(259783,QUEST)
ActionOverride("bdbence",EscapeAreaObject("crusaderbase"))
~ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 349 even though they appear after this state */
~  GlobalLT("bd_plot","global",350)
AreaCheck("bd4000")
Global("bd_skie_plot","global",1)
~ THEN BEGIN 151 // from:
  SAY #244030 /* ~All right. Let's find Skie and get out of here.~ [BD44030] */
  IF ~  !IsValidForPartyDialogue("Safana")
~ THEN REPLY #244031 /* ~I just hope we aren't too late. If the crusade gets their hands on her, our task becomes that much harder.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ GOTO 152
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN REPLY #244031 /* ~I just hope we aren't too late. If the crusade gets their hands on her, our task becomes that much harder.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ EXTERN ~SAFANJ~ 105
  IF ~  !IsValidForPartyDialogue("Khalid")
~ THEN REPLY #244032 /* ~Let's not rush back to the camp too soon. We may be able to learn something useful observing our enemies.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ GOTO 153
  IF ~  IsValidForPartyDialogue("Khalid")
~ THEN REPLY #244032 /* ~Let's not rush back to the camp too soon. We may be able to learn something useful observing our enemies.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ EXTERN ~KHALIJ~ 43
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY #244033 /* ~Agreed. Skie Silvershield knows too much. Caelar can't be allowed to get her.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ GOTO 152
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY #244033 /* ~Agreed. Skie Silvershield knows too much. Caelar can't be allowed to get her.~ */ DO ~SetGlobal("bd_skie_plot","global",2)
~ EXTERN ~DORNJ~ 1407
END

IF ~~ THEN BEGIN 152 // from: 154.0 153.0 151.4 151.0
  SAY #244035 /* ~We should scout the outside of the castle first—no point risking our lives trying to get in if she's skulking out here. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 153 // from: 151.2
  SAY #244038 /* ~We'll see what we see, but getting Silvershield's daughter is our priority.~ */
  IF ~~ THEN REPLY #244039 /* ~Agreed.~ */ GOTO 152
  IF ~~ THEN REPLY #244040 /* ~I'll decide on my own priorities.~ */ GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.1
  SAY #244042 /* ~Damn it, <CHARNAME>. You just can't make it easy, can you? All right, we play it your way—as usual.~ */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 155 // from:
  SAY #258832 /* ~Taking risks isn't always a bad thing, Skie, but you have to know what you're risking. The crusaders are dangerous. We need to keep you safe.~ [BD58832] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_skie_comment","locals",1)
~ EXTERN ~BDSKIE~ 48
END

IF ~~ THEN BEGIN 156 // from:
  SAY #244103 /* ~I'm sure they do. Come on now, back to the camp with you. Let's go.~ [BD44103] */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_corwin_skie_comment","locals",1)
GlobalLT("bd_plot","global",350)
~ THEN BEGIN 157 // from:
  SAY #258833 /* ~You handled that well, <CHARNAME>. I feared you'd be much harsher with her.~ */
  IF ~~ THEN REPLY #258834 /* ~Perhaps I should have been. Skie needs to learn this isn't a game.~ */ DO ~SetGlobal("bd_corwin_skie_comment","locals",2)
~ GOTO 158
  IF ~~ THEN REPLY #258835 /* ~I wanted to be. Believe me, I wanted to. But someone's got to keep the girl safe.~ */ DO ~SetGlobal("bd_corwin_skie_comment","locals",2)
~ GOTO 158
  IF ~~ THEN REPLY #258836 /* ~I just want her out of my way. We need to get on with our mission.~ */ DO ~SetGlobal("bd_corwin_skie_comment","locals",2)
~ GOTO 160
END

IF ~~ THEN BEGIN 158 // from: 157.1 157.0
  SAY #258837 /* ~There are some things a girl needs to learn on her own. Skie might have learned a lesson if faced with the consequences of her actions—but she'd probably be dead too.~ [BD58837] */
  IF ~~ THEN REPLY #258838 /* ~You sound like you're speaking from experience.~ */ GOTO 159
  IF ~~ THEN REPLY #258839 /* ~You say that like it's a bad thing.~ */ GOTO 159
  IF ~~ THEN REPLY #258840 /* ~Enough talk. We need to focus on our mission.~ */ GOTO 160
END

IF ~~ THEN BEGIN 159 // from: 158.1 158.0
  SAY #258841 /* ~Heh. My father let me fall down a lot. At the time, it made me angry. I thought I'd never forgive him. Then I realized how hard it was for him to let me struggle—and fail—on my own. It made me the woman I am.~ [BD58841] */
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #258842 /* ~A woman I'm very, very glad to know.~ */ GOTO 161
  IF ~~ THEN REPLY #258843 /* ~Grand Duke Silvershield seems unwilling to give Skie the same opportunities. I hope she finds her own path regardless. In any event, it's time we got on with our mission.~ */ GOTO 160
  IF ~~ THEN REPLY #258844 /* ~I'm more than happy to let Skie fall down, but we have more important matters to attend to right now.~ */ GOTO 160
  IF ~~ THEN REPLY #258845 /* ~We should get going.~ */ GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.3 159.2 159.1 158.2 157.2
  SAY #258846 /* ~Right. Let's go.~ [BD58846] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 161 // from: 159.0
  SAY #258847 /* ~Flatterer. I'm glad to know you too. Now let's get going.~ [BD58847] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 162 // from:
  SAY #250382 /* ~Water mephit!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1410
END

IF WEIGHT #13 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("bd4300")
Global("bd_plot","global",370)
Global("bd_heph_teleported","locals",0)
~ THEN BEGIN 163 // from:
  SAY #237847 /* ~Hephernaan'll be back soon, <CHARNAME>, and he won't be alone. We've got to get out of here. Let's go!~ [BD37847] */
  IF ~~ THEN DO ~SetGlobal("bd_heph_teleported","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #261307 /* ~They may call you hero, <CHARNAME>, but don't think that makes you better than any of the men and women serving in this camp. You there—where can we find the commanders?~ [BD61307] */
  IF ~~ THEN EXTERN ~BDTRUST2~ 1
END

IF ~~ THEN BEGIN 165 // from:
  SAY #238670 /* ~We know you would. But it's too dangerous.~ [BD38670] */
  IF ~~ THEN EXTERN ~BDCAELAR~ 40
END

IF ~~ THEN BEGIN 166 // from:
  SAY #237888 /* ~Let's not stand here arguing about it. It won't be long before archers start picking us off. Back to camp, <CHARNAME>. Let's go.~ [BD37888] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut39",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 167 // from:
  SAY #237890 /* ~I was there when it happened. Those men weren't there to invite us to a ball.~ [BD37890] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 48
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 720
END

IF ~~ THEN BEGIN 168 // from:
  SAY #260461 /* ~It's not too late to run, Grimgor. You still have a chance to survive this.~ [BD60461] */
  IF ~~ THEN EXTERN ~BDGRIMGO~ 3
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1414
END

IF ~~ THEN BEGIN 169 // from:
  SAY #238074 /* ~Looks like this is it, <CHARNAME>. Let's go.~ [BD38074] */
  IF ~~ THEN DO ~AddJournalEntry(266746,QUEST)
ActionOverride("bdnederl",EscapeAreaObject("npc_exit"))
~ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #264960 /* ~The Thayan was friends with this Ahdz-Azzek-Whatever the mage's name is. If he says we can't get through, I'm inclined to believe him—he's not one to underplay his own abilities. We need to find another way past the wall.~ */
  IF ~~ THEN EXTERN ~BDSTONEH~ 42
END

IF ~~ THEN BEGIN 171 // from:
  SAY #238171 /* ~We can talk about your mother some other time. Let's go!~ [BD38171] */
  IF ~~ THEN DO ~SetGlobal("bd_phossey_plot","global",9)
CreateCreature("bdwtr32",[2305.3810],NE)
CreateCreature("bdwtr30",[2360.3810],NE)
CreateCreature("bdwtr31",[2415.3810],NE)
ActionOverride("bdwtr32",SaveLocation("LOCALS","bd_default_loc",[3180.3445]))
ActionOverride("bdwtr30",SaveLocation("LOCALS","bd_default_loc",[3125.3545]))
ActionOverride("bdwtr31",SaveLocation("LOCALS","bd_default_loc",[3225.3545]))
ActionOverride("bdwtr32",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdwtr30",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdwtr31",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdwtr32",SetGlobal("bd_no_search","locals",1))
ActionOverride("bdwtr30",SetGlobal("bd_no_search","locals",1))
ActionOverride("bdwtr31",SetGlobal("bd_no_search","locals",1))
ActionOverride("bdalmur",SaveLocation("LOCALS","bd_default_loc",[3225.3485]))
ActionOverride("bdalmur",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdlugg",SaveLocation("LOCALS","bd_default_loc",[3125.3490]))
ActionOverride("bdlugg",SetGlobal("bd_retreat","locals",1))
AddJournalEntry(259803,QUEST)
ActionOverride("bdphosse",MoveToObject("bdstoneh"))
~ EXIT
END

IF ~~ THEN BEGIN 172 // from:
  SAY #261320 /* ~<CHARNAME>, look—that catapult's aimed directly at the front gates.~ [BD61320] */
  IF ~~ THEN EXTERN ~BDHELDMO~ 2
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 104
END

IF ~~ THEN BEGIN 173 // from:
  SAY #261334 /* ~Fire the catapult! Now!~ */
  IF ~~ THEN EXTERN ~BDHELDMO~ 3
END

IF ~~ THEN BEGIN 174 // from:
  SAY #238410 /* ~Caelar must be rallying her forces inside the castle. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from:
  SAY #244210 /* ~Caelar's going to wish she never started this crusade when we're done with her. Carry on, soldier.~ */
  IF ~~ THEN EXIT
  IF ~  Global("bd_mdd1247_journal","bd4000",0)
~ THEN DO ~SetGlobal("bd_mdd1247_journal","bd4000",1)
AddJournalEntry(266147,QUEST)
~ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("bd4300")
Global("bd_plot","global",480)
Global("bd_corwin_not_right","bd4300",0)
~ THEN BEGIN 176 // from:
  SAY #262258 /* ~Something's not right here.~ [BD62258] */
  IF ~~ THEN REPLY #262259 /* ~What's the matter?~ */ DO ~SetGlobal("bd_corwin_not_right","bd4300",1)
~ GOTO 177
  IF ~~ THEN REPLY #262260 /* ~We're charging into the stronghold of Caelar Argent. I can think of at least a dozen things with this scenario that aren't right.~ */ DO ~SetGlobal("bd_corwin_not_right","bd4300",1)
~ GOTO 177
  IF ~~ THEN REPLY #262261 /* ~Our enemies fall before us. It's right enough for me.~ */ DO ~SetGlobal("bd_corwin_not_right","bd4300",1)
~ GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.2 176.1 176.0
  SAY #262262 /* ~This is too easy.~ */
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY #262263 /* ~You're right. But what choice do we have but to go forward?~ */ EXTERN ~BDGLINTJ~ 106
  IF ~  !IsValidForPartyDialogue("glint")
~ THEN REPLY #262263 /* ~You're right. But what choice do we have but to go forward?~ */ GOTO 178
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #262264 /* ~Too easy? Have you been fighting the same religious zealots I have?~ */ EXTERN ~DORNJ~ 1417
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY #262264 /* ~Too easy? Have you been fighting the same religious zealots I have?~ */ GOTO 179
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN REPLY #262265 /* ~Perhaps it'll be sufficiently difficult for you when we finally face the Shining Lady.~ */ EXTERN ~VICONIJ~ 609
  IF ~  !IsValidForPartyDialogue("viconia")
~ THEN REPLY #262265 /* ~Perhaps it'll be sufficiently difficult for you when we finally face the Shining Lady.~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.5 177.1
  SAY #262267 /* ~We've come this far. There's no going back now. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 179 // from: 177.3
  SAY #262269 /* ~It's just— Forget it. We've come this far; there's no going back now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY #238470 /* ~It's strange to be so close to her. Finally, we get a chance to end this once and for all.~ [BD38470] */
  IF ~~ THEN EXTERN ~BDBENCE~ 103
END

IF ~~ THEN BEGIN 181 // from:
  SAY #238477 /* ~You're outnumbered, Bence! Go for reinforcements, now!~ [BD38477] */
  IF ~~ THEN EXTERN ~BDBENCE~ 62
END

IF ~~ THEN BEGIN 182 // from:
  SAY #238527 /* ~We need to close that portal.~ [BD38527] */
  IF ~~ THEN EXTERN ~BDDELANC~ 76
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 610
END

IF ~~ THEN BEGIN 183 // from:
  SAY #238744 /* ~Any sign of Caelar? We have to find the witch...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 184 // from:
  SAY #238866 /* ~After her! She's our only hope to seal the portal.~ */
  IF ~~ THEN EXTERN ~BDCAELAR~ 54
END

IF ~~ THEN BEGIN 185 // from:
  SAY #259728 /* ~Damn it, <CHARNAME>, if we make it through this I'm going to shove my boot so far up your backside your grandmother will taste polish...~ */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 86
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 87
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 88
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 89
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF WEIGHT #15 /* Triggers after states #: 349 even though they appear after this state */
~  False()
Global("BD_Sacrifice_Corwin","bd4500",2)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 186 // from:
  SAY #261418 /* ~You wager my soul, <CHARNAME>? You're lucky we're in Hell. If I didn't need you to escape, I'd gut you and throw your body in lava.~ [BD61418] */
  IF ~~ THEN REPLY #261419 /* ~Forgive me, Corwin. I didn't see any other way forward at the time. I should have known better.~ */ DO ~SetGlobal("BD_Sacrifice_Corwin","bd4500",3)
~ GOTO 187
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #261420 /* ~I'd never abandon you, Schael. I played the monster's game because I thought it easier than fighting. But your soul was never at risk.~ */ DO ~SetGlobal("BD_Sacrifice_Corwin","bd4500",3)
~ GOTO 188
  IF ~~ THEN REPLY #261421 /* ~The devil made the stakes, but I'd not have willingly paid them. I owe nothing to Thrix the Profane and nothing is the best he'd receive from me.~ */ DO ~SetGlobal("BD_Sacrifice_Corwin","bd4500",3)
~ GOTO 187
  IF ~~ THEN REPLY #261422 /* ~Victory requires sacrifice, Captain. Surely you understand that.~ */ DO ~SetGlobal("BD_Sacrifice_Corwin","bd4500",3)
~ GOTO 189
END

IF ~~ THEN BEGIN 187 // from: 186.2 186.0
  SAY #261423 /* ~Just... don't let it happen again. Come on. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 188 // from: 186.1
  SAY #261424 /* ~I can hardly believe I believe you. All right. I've trusted you this far and I'll keep on trusting you. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 189 // from: 186.3
  SAY #261425 /* ~Once we're out of this miserable pit, you and I will have words. Yours will be "aaargh." Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 190 // from:
  SAY #239225 /* ~And you will, once we're out of this damned inferno. Let's go.~ [BD39225] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 191 // from:
  SAY #239235 /* ~Every second we stand here talking, more devils make their way into Dragonspear. I don't mind talking, but the standing's at an end. Let's go.~ [BD39235] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 192 // from:
  SAY #239274 /* ~Sounds good to me. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 193 // from:
  SAY #239275 /* ~Forgive me, Master Argent, but we must leave this place. Belhifet's fallen, but the portal to Dragonspear is still open...~ [BD39275] */
  IF ~~ THEN EXTERN ~BDAUN~ 31
END

IF ~~ THEN BEGIN 194 // from:
  SAY #239314 /* ~It's over, <CHARNAME>. Let's go.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(259852,INFO)
StartCutSceneEx("bdcut59",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 195 // from:
  SAY #239326 /* ~It's over, <CHARNAME>. Let's go.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(259853,INFO)
StartCutSceneEx("bdcut59",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 196 // from:
  SAY #239327 /* ~It's done. Thank the gods.~ [BD39327] */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_plot","global",591)
ReputationLT(Player1,10)
~ THEN BEGIN 197 // from:
  SAY #239386 /* ~I hope you've got a good explanation for this, <CHARNAME>.~ [BD39386] */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #239387 /* ~I know how this looks, Corwin, but I swear to you I'm innocent.~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 198
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #239387 /* ~I know how this looks, Corwin, but I swear to you I'm innocent.~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 199
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #261428 /* ~She was a monster—she attacked me! I had to defend myself. I—I don't know how this happened...~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 198
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #261428 /* ~She was a monster—she attacked me! I had to defend myself. I—I don't know how this happened...~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 201
  IF ~~ THEN REPLY #239389 /* ~I'll not explain myself, to you or anyone.~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 200
END

IF ~~ THEN BEGIN 198 // from: 202.1 202.0 197.2 197.0
  SAY #239390 /* ~I want to believe you. I really do.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 68
END

IF ~~ THEN BEGIN 199 // from: 197.1
  SAY #239391 /* ~If you know how it looks, then you know why I have trouble believing you.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 68
END

IF ~~ THEN BEGIN 200 // from: 202.3 197.4
  SAY #239392 /* ~Keep talking like that and you'll face the headsman's axe—if you last that long. I doubt Duke Silvershield's justice will wait for the law to catch up to it.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 68
END

IF ~~ THEN BEGIN 201 // from: 202.2 197.3
  SAY #239393 /* ~Well, you better figure out what happened and be quick about it. Duke Silvershield's justice may not wait on the law.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 68
END

IF WEIGHT #17 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_plot","global",591)
!ReputationLT(Player1,10)
~ THEN BEGIN 202 // from:
  SAY #269745 /* ~No. NO. This—it can't be. It just—it can't!~ */
  IF ~~ THEN REPLY #269746 /* ~You know me, Corwin. You know I didn't—I COULDN'T have done this...~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 198
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #261428 /* ~She was a monster—she attacked me! I had to defend myself. I—I don't know how this happened...~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 198
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #261428 /* ~She was a monster—she attacked me! I had to defend myself. I—I don't know how this happened...~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 201
  IF ~~ THEN REPLY #239389 /* ~I'll not explain myself, to you or anyone.~ */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 200
END

IF ~~ THEN BEGIN 203 // from:
  SAY #244330 /* ~Don't make this harder than it needs to be, <CHARNAME>. Please.~ [BD44330] */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(259855,INFO)
AddJournalEntry(259856,QUEST_DONE)
StartCutSceneEx("bdcut61",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #248198 /* ~Plenty, as always. The pain is driving him mad. I've seen this happen to rats before. They turn aggressive at the slightest—look out! ~ */
  IF ~~ THEN DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 205 // from:
  SAY #261480 /* ~I'm not really fluent in rat, but I'll try to coax it over here. Here little rat... here, uh, Ratty...~ */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY #261481 /* ~Hm, I see traces of bark on its fur. If I'm not mistaken, this is blackthorn bark. And it smells moldy. Let's look for a blackthorn tree. It might have the properties we need to cure the ill.~ */
  IF ~~ THEN DO ~AddJournalEntry(261440,QUEST)
SetGlobal("bd_sdd302_rat_hunt","global",4)
SetGlobal("bd_sdd302_blackthorn","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 207 // from:
  SAY #240129 /* ~Let's get them out of there.~ [BD40129] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 624
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~BDCHORST~ 0
END

IF WEIGHT #18 /* Triggers after states #: 349 even though they appear after this state */
~  AreaCheck("BD5100")
Global("BDSDD420Say_your_stuff","BD5100",2)
~ THEN BEGIN 208 // from:
  SAY #251814 /* ~Looks like we're here. Place the barrel—quickly.~ [BD51814] */
  IF ~~ THEN DO ~SetGlobal("BDSDD420Say_your_stuff","BD5100",3)
~ EXIT
  IF ~  !Global("bd_sdd420_barrel","myarea",0)
~ THEN DO ~SetGlobal("BDSDD420Say_your_stuff","BD5100",3)
~ EXTERN ~BDBWOOSH~ 0
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN DO ~SetGlobal("BDSDD420Say_your_stuff","BD5100",3)
~ EXTERN ~BDGLINTJ~ 86
END

IF ~~ THEN BEGIN 209 // from:
  SAY #240692 /* ~Enough chatter. We've work to do. Let's go.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #240699 /* ~They stand against us. That's evil enough for me. Let's go.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
END

IF ~~ THEN BEGIN 211 // from:
  SAY #240703 /* ~I'll not shed tears for fallen enemies. Let's go.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
END

IF ~~ THEN BEGIN 212 // from:
  SAY #240739 /* ~Let it go. We'll find another way.~ [BD40739] */
  IF ~~ THEN EXTERN ~BDTURIN~ 8
END

IF ~~ THEN BEGIN 213 // from:
  SAY #240741 /* ~It was nothing, ma'am. We'll just be on our way now.~ [BD40741] */
  IF ~~ THEN DO ~AddJournalEntry(261950,QUEST)
SetGlobal("BD_SDD705_TURIN","GLOBAL",1)
ContainerEnable("Cookfire",TRUE)
~ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 349 even though they appear after this state */
~  Global("BD_SDD705_CORWIN","LOCALS",1)
Global("BD_SDD705_PANIC","GLOBAL",0)
~ THEN BEGIN 214 // from:
  SAY #240779 /* ~I've an idea, <CHARNAME>.~ [BD40779] */
  IF ~~ THEN REPLY #240780 /* ~I'm listening.~ */ DO ~SetGlobal("BD_SDD705_CORWIN","LOCALS",2)
~ GOTO 220
  IF ~~ THEN REPLY #240781 /* ~Does it involve going back to Baldur's Gate and putting this miserable episode behind us?~ */ DO ~SetGlobal("BD_SDD705_CORWIN","LOCALS",2)
~ GOTO 219
  IF ~  !Race(Player1,DWARF)
~ THEN REPLY #240782 /* ~We go back and kill that officious bloody dwarf?~ */ DO ~SetGlobal("BD_SDD705_CORWIN","LOCALS",2)
~ GOTO 215
  IF ~  Race(Player1,DWARF)
~ THEN REPLY #240783 /* ~We go back and slaughter that officious nuisance of a guard?~ */ DO ~SetGlobal("BD_SDD705_CORWIN","LOCALS",2)
~ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 214.3 214.2
  SAY #240784 /* ~No. We distract her. You heard the crusaders at that cookfire talking about what happened when a vial of firebreath potion ended up in the pot? ~ */
  IF ~  PartyHasItem("POTN27")
!PartyHasItem("POTN26")
!PartyHasItem("POTN13")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 216
  IF ~  PartyHasItem("POTN13")
!PartyHasItem("POTN26")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 217
  IF ~  PartyHasItem("POTN26")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 218
  IF ~  !PartyHasItem("POTN13")
!PartyHasItem("POTN26")
!PartyHasItem("POTN27")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 223
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240786 /* ~I'm not in the habit of eavesdropping on crusaders.~ */ EXTERN ~SAFANJ~ 131
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240786 /* ~I'm not in the habit of eavesdropping on crusaders.~ */ GOTO 221
  IF ~  PartyHasItem("POTN27")
!PartyHasItem("POTN26")
!PartyHasItem("POTN13")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 216
  IF ~  PartyHasItem("POTN13")
!PartyHasItem("POTN26")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 217
  IF ~  PartyHasItem("POTN26")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 218
  IF ~  !PartyHasItem("POTN13")
!PartyHasItem("POTN26")
!PartyHasItem("POTN27")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 229
END

IF ~~ THEN BEGIN 216 // from: 222.1 220.6 220.0 215.6 215.0
  SAY #240788 /* ~Can you think of a better distraction? We've got a potion of firebreath...~ */
  IF ~~ THEN UNSOLVED_JOURNAL #240756 /* ~Accessing the Warrens

I need to find something combustible to put in the crusaders' cookfire.

We may be able to distract the guard at the Warrens entrance. I'm going to toss something special into the crusaders' cookfire. Anything explosive should create a fire and drive the crusaders away so I can slip through the door.~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 222.2 220.7 220.1 215.7 215.1
  SAY #240789 /* ~We've got some oil of fiery burning. That should get us the effect we want.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #240756 /* ~Accessing the Warrens

I need to find something combustible to put in the crusaders' cookfire.

We may be able to distract the guard at the Warrens entrance. I'm going to toss something special into the crusaders' cookfire. Anything explosive should create a fire and drive the crusaders away so I can slip through the door.~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 222.3 220.8 220.2 215.8 215.2
  SAY #240790 /* ~I can think of worse ways to use our potion of explosion.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #240756 /* ~Accessing the Warrens

I need to find something combustible to put in the crusaders' cookfire.

We may be able to distract the guard at the Warrens entrance. I'm going to toss something special into the crusaders' cookfire. Anything explosive should create a fire and drive the crusaders away so I can slip through the door.~ */ EXIT
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 129
END

IF ~~ THEN BEGIN 219 // from: 214.1
  SAY #240792 /* ~No. We need to finish this, and to do that, we need to get past the dwarf back there.~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220 // from: 219.0 214.0
  SAY #240793 /* ~You heard the crusaders at that cookfire talking about what happened when a vial of firebreath potion ended up in the pot?~ */
  IF ~  PartyHasItem("POTN27")
!PartyHasItem("POTN26")
!PartyHasItem("POTN13")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 216
  IF ~  PartyHasItem("POTN13")
!PartyHasItem("POTN26")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 217
  IF ~  PartyHasItem("POTN26")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 218
  IF ~  !PartyHasItem("POTN13")
!PartyHasItem("POTN26")
!PartyHasItem("POTN27")
~ THEN REPLY #240785 /* ~I did. You think we should do something similar?~ */ GOTO 223
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240786 /* ~I'm not in the habit of eavesdropping on crusaders.~ */ EXTERN ~SAFANJ~ 131
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240786 /* ~I'm not in the habit of eavesdropping on crusaders.~ */ GOTO 221
  IF ~  PartyHasItem("POTN27")
!PartyHasItem("POTN26")
!PartyHasItem("POTN13")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 216
  IF ~  PartyHasItem("POTN13")
!PartyHasItem("POTN26")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 217
  IF ~  PartyHasItem("POTN26")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 218
  IF ~  !PartyHasItem("POTN13")
!PartyHasItem("POTN26")
!PartyHasItem("POTN27")
~ THEN REPLY #240787 /* ~No, but I think I see what you're getting at.~ */ GOTO 229
END

IF ~~ THEN BEGIN 221 // from: 220.5 215.5
  SAY #240798 /* ~Whether you heard it or not, it's pretty self-explanatory, <CHARNAME>.~ */
  IF ~~ THEN GOTO 222
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 627
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #240800 /* ~A vial of firebreath potion ended up in the pot, and what you expected would happen, happened.~ */
  IF ~~ THEN GOTO 223
  IF ~  PartyHasItem("POTN27")
~ THEN GOTO 216
  IF ~  PartyHasItem("POTN13")
~ THEN GOTO 217
  IF ~  PartyHasItem("POTN26")
~ THEN GOTO 218
END

IF ~~ THEN BEGIN 223 // from: 222.0 220.3 215.3
  SAY #240801 /* ~Yes, but... we don't have anything that could create a similar effect.~ */
  IF ~~ THEN REPLY #240802 /* ~So we're back where we started.~ */ GOTO 224
  IF ~  PartyHasItem("BDBWOOSH")
Global("BD_SDD705_BWOOSH","LOCALS",0)
~ THEN REPLY #240803 /* ~We have the barrel of Bwoosh!...~ */ GOTO 225
  IF ~~ THEN REPLY #240804 /* ~Looks like we're out of options. Other than the violent one, which I prefer anyway.~ */ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 229.2 229.0 223.2 223.0
  SAY #240805 /* ~Pretty much. Unless we can find a firebreath potion somewhere in the cavern. Didn't that one crusader mention explosives locked up at the depot? We could check that out.~ */
  IF ~~ THEN DO ~SetGlobal("BD_SDD705_CORWIN","LOCALS",3)
~ UNSOLVED_JOURNAL #240756 /* ~Accessing the Warrens

I need to find something combustible to put in the crusaders' cookfire.

We may be able to distract the guard at the Warrens entrance. I'm going to toss something special into the crusaders' cookfire. Anything explosive should create a fire and drive the crusaders away so I can slip through the door.~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 229.1 223.1
  SAY #240806 /* ~The material in the barrels is inert. ~ */
  IF ~~ THEN REPLY #240807 /* ~I can't think of anywhere else we could get something that'd do the job. Can you?~ */ GOTO 228
  IF ~~ THEN REPLY #240808 /* ~In my experience, things tend to stop being quite as inert when they're heated up.~ */ GOTO 226
  IF ~~ THEN REPLY #240809 /* ~If you believe the clearly deranged person who gave us the barrels in the first place.~ */ GOTO 230
END

IF ~~ THEN BEGIN 226 // from: 230.0 228.0 225.1
  SAY #240810 /* ~It's worth a try. If that guide amulet we were given does what it's supposed to, taking a little out of the barrel shouldn't affect the blast damage too much.~ */
  IF ~~ THEN REPLY #240811 /* ~Stand back. ~ */ GOTO 227
  IF ~~ THEN REPLY #240812 /* ~Unless it blows up in my face.~ */ GOTO 227
  IF ~~ THEN REPLY #240813 /* ~Your concern for my well-being is touching.~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.2 226.1 226.0
  SAY #240814 /* ~Yeah. Be careful.~ */
  IF ~~ THEN DO ~AddJournalEntry(240756,QUEST)
SetGlobal("BD_SDD705_BWOOSH","LOCALS",1)
GiveItemCreate("BDPOWDER",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from: 225.0
  SAY #240815 /* ~No, I can't.~ */
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 229 // from: 220.9 215.9
  SAY #240816 /* ~Damn it! If we only had something that could duplicate the effect...~ */
  IF ~~ THEN REPLY #240817 /* ~But we don't. I'm afraid we're back to where we started.~ */ GOTO 224
  IF ~  PartyHasItem("BDBWOOSH")
Global("BD_SDD705_BWOOSH","LOCALS",0)
~ THEN REPLY #240818 /* ~We have the barrel of Bwoosh!...~ */ GOTO 225
  IF ~~ THEN REPLY #240819 /* ~Looks like we're out of options. Other than the violent one, which I prefer anyway.~ */ GOTO 224
END

IF ~~ THEN BEGIN 230 // from: 225.2
  SAY #240820 /* ~Good point... ~ */
  IF ~~ THEN GOTO 226
END

IF WEIGHT #20 /* Triggers after states #: 349 even though they appear after this state */
~  OR(2)
Global("bd_hero","global",1)
Global("bd_not_hero","global",1)
Global("bd_sdd020_talk","global",1)
~ THEN BEGIN 231 // from:
  SAY #267162 /* ~A word, <CHARNAME>? I want to talk about that little speech you made before we left the Gate.~ [BD67162] */
  IF ~~ THEN REPLY #267163 /* ~Of course, Captain Corwin. What can I do for you?~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 244
  IF ~~ THEN REPLY #267165 /* ~I wondered when you'd get around to asking about that.~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 235
  IF ~~ THEN REPLY #267166 /* ~That is a desire we do not share.~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 232
END

IF ~~ THEN BEGIN 232 // from: 231.2
  SAY #267167 /* ~Some other time, then, perhaps.~ */
  IF ~~ THEN REPLY #267168 /* ~Perhaps.~ */ GOTO 234
  IF ~~ THEN REPLY #267169 /* ~I've said all I have to say on the matter. Do not bring it up again.~ */ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.1
  SAY #267170 /* ~As you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.0
  SAY #267171 /* ~Good. I'll talk to you later.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 235 // from: 231.1
  SAY #267172 /* ~Is it true? Are you a child of Bhaal?~ */
  IF ~~ THEN REPLY #267173 /* ~I am. Sarevok was my half-brother.~ */ GOTO 236
  IF ~~ THEN REPLY #267174 /* ~The truth does me no favors. I am what I said I am. The Lord of Murder was my father.~ */ GOTO 236
  IF ~~ THEN REPLY #267175 /* ~Does it make a difference?~ */ GOTO 238
  IF ~~ THEN REPLY #267176 /* ~Did I not say as much? Do you think me a liar?~ */ GOTO 240
END

IF ~~ THEN BEGIN 236 // from: 240.0 235.1 235.0
  SAY #267177 /* ~I assume you can see why this is worrisome.~ */
  IF ~~ THEN REPLY #267178 /* ~Is there anything I can do to alleviate your concern?~ */ GOTO 239
  IF ~~ THEN REPLY #267179 /* ~Not really, no. I am not my father, nor have I any desire to follow Sarevok's lead. I am my own <PRO_MANWOMAN>.~ */ GOTO 238
  IF ~~ THEN REPLY #267180 /* ~Since I learned the truth I've done little BUT worry about it. Unfortunately, there's not a lot else that can be done, so far as I can tell.~ */ GOTO 239
  IF ~~ THEN REPLY #267181 /* ~I see why it worries you, but in truth, I don't really care how you feel.~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 236.3
  SAY #267182 /* ~I'll keep that in mind. Thanks.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 238 // from: 236.1 235.2
  SAY #267183 /* ~My father has a saying: Words comfort, but blood will tell.~ */
  IF ~~ THEN REPLY #267184 /* ~My actions will tell you all you need know of me.~ */ GOTO 241
  IF ~~ THEN REPLY #267185 /* ~A bleak view, if he truly believes his words. I prefer to think one's actions are determined by individual will.~ */ GOTO 241
  IF ~~ THEN REPLY #267186 /* ~Your father is a fool, and you're no better if you believe that nonsense.~ */ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 241.0 238.2 236.2 236.0
  SAY #267187 /* ~I'm to keep you safe as long as I can and I will fulfill my orders. But if you do anything to needlessly endanger the men and women under my command, there will be a price to pay. I trust we understand one another? Good. I'll leave you to your business.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 240 // from: 235.3
  SAY #267188 /* ~There are some who would enjoy the notoriety. I thought you might be one of those—hoped it, even. It would make things easier were you not a child of the Lord of Murder.~ */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 241 // from: 238.1 238.0
  SAY #267189 /* ~I'll be watching your actions carefully, you may be sure of that.~ */
  IF ~~ THEN GOTO 239
END

IF WEIGHT #21 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_sdd020_talk","global",1)
~ THEN BEGIN 242 // from:
  SAY #267132 /* ~A word, <CHARNAME>?~ [BD67132] */
  IF ~~ THEN REPLY #267133 /* ~Of course, Captain Corwin. What can I do for you?~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 244
  IF ~~ THEN REPLY #267134 /* ~ANOTHER one? *sigh* Very well.~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 247
  IF ~~ THEN REPLY #267135 /* ~Another time, Corwin.~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 243
END

IF ~~ THEN BEGIN 243 // from: 242.2
  SAY #267136 /* ~As you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 244 // from: 247.0 242.0 231.0
  SAY #267137 /* ~Some of the things people are saying about you concern me.~ */
  IF ~~ THEN REPLY #267138 /* ~Such as?~ */ GOTO 245
  IF ~~ THEN REPLY #267139 /* ~People?~ */ GOTO 246
  IF ~~ THEN REPLY #267140 /* ~What am I accused of? What is it these people say of me?~ */ GOTO 245
  IF ~~ THEN REPLY #267141 /* ~Be they civilian, mercenary, royalty, or even deity, I care little what people think of me.~ */ GOTO 248
END

IF ~~ THEN BEGIN 245 // from: 246.0 244.2 244.0
  SAY #267142 /* ~That you were in league with Sarevok, for instance. Some on the fringe claim you are even related.~ */
  IF ~~ THEN REPLY #267143 /* ~Like Sarevok, I am a child of Bhaal. But I assure you, a father is all we share.~ */ GOTO 249
  IF ~~ THEN REPLY #267144 /* ~Regrettably, that last is true. You can choose your friends, but not your family.~ */ GOTO 249
  IF ~~ THEN REPLY #267145 /* ~There are many who would to see me fall. Spread these vile lies and you'll do nothing but help them. Is that what you want?~ */ GOTO 253
END

IF ~~ THEN BEGIN 246 // from: 244.1
  SAY #267146 /* ~Most cheer your name, it's true. But some—a very few, so far, but some—say you have committed crimes against Baldur's Gate. Some accuse you of worse than that.~ */
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 247 // from: 242.1
  SAY #267147 /* ~Yes. Most amusing. But if I could be serious for a moment...~ */
  IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 248 // from: 244.3
  SAY #267148 /* ~I see this conversation isn't going to be the one I wanted to have. Some other time, then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 249 // from: 351.1 351.0 245.1 245.0
  SAY #267149 /* ~My father has a saying: Words can comfort, but blood will tell.~ */
  IF ~~ THEN REPLY #267150 /* ~My actions will tell you all you need know of me.~ */ GOTO 250
  IF ~~ THEN REPLY #267151 /* ~You think I like being a child of the Lord of Murder? I didn't choose to be a sibling to Sarevok. All I can do is try to demonstrate my own merit. If that doesn't satisfy you... Well, it'll have to satisfy you. I can do no more, and shouldn't have to.~ */ GOTO 251
  IF ~~ THEN REPLY #267152 /* ~A bleak view. I prefer to think one's actions are determined by individual will.~ */ GOTO 252
  IF ~~ THEN REPLY #267153 /* ~Your father is a fool, and you're no better if you believe that nonsense.~ */ GOTO 252
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #267154 /* ~I hope I like what they say. Remember, there are rumors that Caelar is a child of Bhaal as well. That could complicate matters. Significantly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 251 // from: 249.1
  SAY #267155 /* ~I want to believe you.~ */
  IF ~~ THEN REPLY #267156 /* ~You should. I said nothing but the truth.~ */ GOTO 252
  IF ~~ THEN REPLY #267157 /* ~It'd make both our lives easier if you did.~ */ GOTO 252
  IF ~~ THEN REPLY #267158 /* ~Believe this, if nothing else: Caelar Argent tried to kill me and I will pay her back in kind. If you would see the Shining Lady fall, then we are allies, regardless of our history or bloodlines.~ */ GOTO 252
  IF ~~ THEN REPLY #267159 /* ~Believe what you will. It matters not a whit to me.~ */ GOTO 252
END

IF ~~ THEN BEGIN 252 // from: 251.3 251.2 251.1 251.0 249.3 249.2
  SAY #267160 /* ~Very well. I'll not tell anyone else of your... connection to Sarevok. Even so, take care of how you're seen by those around you. One of those people may be all that stands between you and a sword someday. And if the rumors are true, if Caelar's a child of Bhaal, that could complicate matters. Significantly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 253 // from: 351.2 245.2
  SAY #267161 /* ~Very well, I'll not speak of your alleged connection to Sarevok, or address any of the other rumors regarding you. But you should take care of how you're perceived by those around you. One of those people may be all that stand between you and a sword someday. And if the rumors are true and Caelar is also a child of Bhaal, that will complicate matters. Significantly.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance1","GLOBAL",1)
~ THEN BEGIN 254 // from:
  SAY #254359 /* ~Is there something I can do for you, <CHARNAME>?~ [BD54359] */
  IF ~~ THEN REPLY #254360 /* ~Why do you ask?~ */ DO ~SetGlobal("bd_CorwinRomance1","GLOBAL",2)
~ GOTO 256
  IF ~~ THEN REPLY #254361 /* ~I'm trying to think of a way to answer that doesn't end with me getting slapped. And failing miserably. Well, perhaps not miserably—some things are worth a slap.~ */ DO ~SetGlobal("bd_CorwinRomance1","GLOBAL",2)
~ GOTO 255
  IF ~~ THEN REPLY #254362 /* ~You've done more than enough for me already, and I thank you for it.~ */ DO ~SetGlobal("bd_CorwinRomance1","GLOBAL",2)
~ GOTO 257
  IF ~~ THEN REPLY #254363 /* ~Nothing I can't do better for myself.~ */ DO ~SetGlobal("bd_CorwinRomance1","GLOBAL",2)
SetGlobal("bd_corwin_romanceactive","global",3)
~ GOTO 257
END

IF ~~ THEN BEGIN 255 // from: 256.2 254.1
  SAY #254364 /* ~Look around you, <CHARNAME>. Are you in a tavern? A whorehouse? No? Then grow up. We have work to do—YOU have work to do. Stop playing the fool and do it.~ [BD54364] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.0
  SAY #254365 /* ~I simply thought that if we're to travel together, face Caelar Argent together, we might do well to get to know one another.~ [BD54365] */
  IF ~~ THEN REPLY #254366 /* ~I would like nothing better, Captain. But I fear you'll not find me good company at the moment.~ */ GOTO 257
  IF ~~ THEN REPLY #254367 /* ~I suspect you'll know all of me you want to and more before our business with the Shining Lady is at an end.~ */ GOTO 257
  IF ~~ THEN REPLY #254368 /* ~Agreed. Let's go find some place private and get to... knowing each other.~ */ GOTO 255
  IF ~~ THEN REPLY #254369 /* ~I mean no offense, but I think I'd prefer this relationship remain professional.~ */ DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ GOTO 257
END

IF ~~ THEN BEGIN 257 // from: 256.3 256.1 256.0 254.3 254.2
  SAY #254378 /* ~Let's concentrate on the mission, then. If we can do what the Grand Dukes have asked, I'll be satisfied.~ [BD54378] */
  IF ~~ THEN REPLY #254380 /* ~Would that everyone were so easy to satisfy.~ */ GOTO 258
  IF ~~ THEN REPLY #254381 /* ~Is that really all you want? I think there's more to you than duty. Tell me, what is it you're feeling. What do you desire?~ */ GOTO 259
  IF ~~ THEN REPLY #254382 /* ~Your and the Council's satisfaction means little to me. I've my own reasons to seek Caelar Argent and put a stop to her.~ */ GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.2 257.0
  SAY #254383 /* ~You think it'll be easy? I admire your optimism, if nothing else. Let's go.~ [BD54383] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 259 // from: 257.1
  SAY #254384 /* ~This isn't the time. I have a mission. That's all that matters. So let's go.~ [BD54384] */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance2","GLOBAL",1)
~ THEN BEGIN 260 // from:
  SAY #254395 /* ~I've been thinking about what will happen when we reach Dragonspear. I've never served in a coalition before. Alliances bring strength, so long as everyone can get along.~ [BD54395] */
  IF ~~ THEN REPLY #254396 /* ~Three armies working together... it won't be easy on the soldiers. Or anyone.~ */ DO ~SetGlobal("bd_CorwinRomance2","GLOBAL",2)
~ GOTO 261
  IF ~~ THEN REPLY #254397 /* ~It's a good thing you have me as an ally, then. That's at least one person you can count on to be on your side.~ */ DO ~SetGlobal("bd_CorwinRomance2","GLOBAL",2)
~ GOTO 262
  IF ~~ THEN REPLY #254399 /* ~I don't have time to anticipate future problems. I have enough present ones. Let's concentrate on the mission instead of small talk.~ */ DO ~SetGlobal("bd_CorwinRomance2","GLOBAL",2)
~ GOTO 263
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #254401 /* ~This life isn't easy for anyone, I know. It was easier, once, when all I had to worry about was myself. A child changes things. I have responsibilities. To Rohma, to my father... to the Fist, of course.~ [BD54401] */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0 260.1
  SAY #254402 /* ~I've let other people into my life since Rohma was born. They... I don't want to talk about them. My father says you only need one to win the game, but I'm tired of playing games.~ [BD54402] */
  IF ~~ THEN REPLY #254403 /* ~Let's not play them, then. I am attracted to you, Corw—Schael. What comes of that is up to you. If nothing comes of it at all, I've no regrets having said what I've said.~ */ GOTO 264
  IF ~~ THEN REPLY #254404 /* ~Life is a game.~ */ GOTO 265
  IF ~~ THEN REPLY #254405 /* ~You need to find the right person to play with. Take me, for instance.~ */ GOTO 264
  IF ~~ THEN REPLY #254406 /* ~Then let us end this one before it begins. I'm not interested in you, Corwin. Not like that. Let's keep our relationship professional.~ */ GOTO 263
END

IF ~~ THEN BEGIN 263 // from: 262.3 260.2
  SAY #254407 /* ~Aye. That would be for the best, I think.~ [BD54407] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 264 // from: 262.2 262.0
  SAY #254408 /* ~I appreciate your being so... forthright. I won't deny I'm drawn to you. But after what happened in my last relationship, with Tianna... Give me some time to consider this. Please.~ [BD54408] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from: 262.1
  SAY #254409 /* ~For you, perhaps. Some of us can't afford to take everything so lightly. Too much depends on us. Ah, well, I'm rambling now. Let's keep moving.~ [BD54409] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance3","GLOBAL",1)
~ THEN BEGIN 266 // from:
  SAY #254420 /* ~Do you have any children, <CHARNAME>?~ [BD54420] */
  IF ~~ THEN REPLY #254421 /* ~No. Not yet, anyway. Someday, I hope. If I'm lucky.~ */ DO ~SetGlobal("bd_CorwinRomance3","GLOBAL",2)
~ GOTO 270
  IF ~~ THEN REPLY #266713 /* ~No. I don't believe they're in my future, either. ~ */ DO ~SetGlobal("bd_CorwinRomance3","GLOBAL",2)
~ GOTO 267
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #254422 /* ~Not that I'm aware of, and I'm fairly sure I'd have noticed.~ */ DO ~SetGlobal("bd_CorwinRomance3","GLOBAL",2)
~ GOTO 270
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #254423 /* ~I hope not.~ */ DO ~SetGlobal("bd_CorwinRomance3","GLOBAL",2)
~ GOTO 270
  IF ~~ THEN REPLY #254424 /* ~Only a fool would bring a child into a world like this one.~ */ DO ~SetGlobal("bd_CorwinRomance3","GLOBAL",2)
~ GOTO 268
END

IF ~~ THEN BEGIN 267 // from: 266.1
  SAY #265225 /* ~That's fair. Being a parent has many rewards, but it brings its share of difficulties too.~ [BD65225] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 268 // from: 266.4
  SAY #254430 /* ~I'm a fool, then?~ [BD54430] */
  IF ~~ THEN REPLY #254431 /* ~Of course not. Forgive me, Corwin. I spoke without thinking.~ */ GOTO 273
  IF ~~ THEN REPLY #254432 /* ~Foolish, or selfish. I can see no other reason to burden a child with life.~ */ GOTO 269
  IF ~~ THEN REPLY #254433 /* ~Only you can know that with any certainty.~ */ GOTO 270
  IF ~~ THEN REPLY #254434 /* ~You don't really want me to answer that question.~ */ GOTO 269
END

IF ~~ THEN BEGIN 269 // from: 268.3 268.1
  SAY #254445 /* ~You are in a foul temper this day. I'll leave you to it.~ [BD54445] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 270 // from: 273.0 268.2 267.0 266.3 266.2 266.0
  SAY #254456 /* ~There's nothing I wouldn't do for Rohma and my father. But the time my duties take me away from them, the risks the job carries with it... Sometimes I wonder if I've made the right decision. Is a full belly worth an absent mother?~ [BD54456] */
  IF ~~ THEN REPLY #254457 /* ~A loving mother is a prize beyond measure. I speak from hard experience.~ */ GOTO 271
  IF ~~ THEN REPLY #254458 /* ~You're asking the wrong <PRO_MANWOMAN>. I never knew my mother.~ */ GOTO 271
  IF ~~ THEN REPLY #254459 /* ~A full belly is worth anything to a starving <PRO_MANWOMAN>. You do what you must for your child, Corwin. Don't ever doubt that.~ */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from: 270.1 270.0
  SAY #254461 /* ~I'm sorry. I didn't mean to bring up a painful subject. It's just hard, with me away so often and Rohma's father not around. Sometimes I think she might have been better off if I'd left her on the steps of the Temple of the Radiant Heart, like her father wanted.~ [BD54461] */
  IF ~~ THEN REPLY #254462 /* ~Reprehensible. Rohma's father had better hope he and I never cross paths.~ */ GOTO 274
  IF ~~ THEN REPLY #254463 /* ~She's lucky to have you as a mother. No one could replace you in her life.~ */ GOTO 272
  IF ~~ THEN REPLY #254465 /* ~Better she die than be raised by zealots. The last thing this world needs is another Caelar.~ */ GOTO 272
END

IF ~~ THEN BEGIN 272 // from: 274.0 271.2 271.1 270.2
  SAY #254467 /* ~How did we get talking about this? Let's talk about something else—better still, let's just not talk at all for a while, all right?~ [BD54467] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 273 // from: 268.0
  SAY #254468 /* ~Speaking without thought is the surest way to speak the truth.~ [BD54468] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 274 // from: 271.0
  SAY #254469 /* ~Considering the way he and I ended things, I'd say that's highly unlikely.~ [BD54469] */
  IF ~~ THEN GOTO 272
END

IF WEIGHT #25 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance4","GLOBAL",1)
~ THEN BEGIN 275 // from:
  SAY #254471 /* ~We need to talk, <CHARNAME>.~ [BD54471] */
  IF ~~ THEN REPLY #254472 /* ~Whatever you need, Schael. You know that.~ */ DO ~SetGlobal("bd_CorwinRomance4","GLOBAL",2)
~ GOTO 277
  IF ~~ THEN REPLY #254473 /* ~What's on your mind?~ */ DO ~SetGlobal("bd_CorwinRomance4","GLOBAL",2)
~ GOTO 277
  IF ~~ THEN REPLY #254475 /* ~No, we don't. We need to focus on what we're doing here. Nothing else matters, certainly not conversation. I'm sure you understand.~ */ DO ~SetGlobal("bd_CorwinRomance4","GLOBAL",2)
~ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 284.3 280.2 277.2 275.2
  SAY #254476 /* ~I see. Perhaps that's for the best. Yes. Let's leave it there, then.~ [BD54476] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 277 // from: 275.1 275.0
  SAY #254478 /* ~I'm not happy with the way we—with the way I left things when we were talking about children. Rohma. Damn it, why is this so hard?~ [BD54478] */
  IF ~~ THEN REPLY #254479 /* ~The important things are never easy.~ */ GOTO 279
  IF ~~ THEN REPLY #254480 /* ~Said the courtesan to the cleric.~ */ GOTO 278
  IF ~~ THEN REPLY #254482 /* ~It's not something we need to discuss now. Or ever. I think it would be best if we stay friends, and nothing more.~ */ GOTO 276
END

IF ~~ THEN BEGIN 278 // from: 277.1
  SAY #254483 /* ~Can you try to be serious just for one gods damned minute?~ [BD54483] */
  IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 279 // from: 277.0
  SAY #254484 /* ~Aye, you're right about that. All right, here it is...~ [BD54484] */
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #254485 /* ~I don't think it's any great secret that I've found myself attracted to you these past few weeks. I'm attracted to a lot of people. Attraction is easy enough to deal with. Feelings are another story.~ [BD54485] */
  IF ~~ THEN REPLY #254487 /* ~Some stories have happy endings.~ */ GOTO 281
  IF ~~ THEN REPLY #254488 /* ~Feelings can be easy too. If it feels good, do it. If it doesn't, stop.~ */ GOTO 281
  IF ~~ THEN REPLY #254489 /* ~Your feelings are your own problem. Deal with them on your own time, and stop wasting mine.~ */ GOTO 276
END

IF ~~ THEN BEGIN 281 // from: 280.1 280.0
  SAY #254490 /* ~The life we lead pushes us to places we may not want to go—not yet. I've made mistakes before—too many mistakes. I'm trying to make better choices, not just for me, but for Rohma.~ [BD54490] */
  IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282 // from: 281.0 278.0
  SAY #254491 /* ~The last person I shared my bed with... It didn't turn out well with her. Not as bad as with Rohma's father, but not well.~ [BD54491] */
  IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #254492 /* ~If I'm to do this again, I need it to work. I need to think, not just feel. I can't rush into another doomed relationship. And it felt like that's what I was about to do.~ [BD54492] */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #254493 /* ~That's why I shut you out when we started talking about children. Because I can't afford to let you in—let anybody in. Not until I know they're the right one.~ [BD54493] */
  IF ~~ THEN REPLY #254494 /* ~I understand completely. Take your time. When you decide what you want, I'll be here. You're worth waiting for.~ */ GOTO 285
  IF ~~ THEN REPLY #254495 /* ~I'd like you to be more than a friend, Corwin—but if that's all I'm ever able to call you, I'll count myself blessed. Let's see where this relationship goes together.~ */ GOTO 285
  IF ~~ THEN REPLY #266714 /* ~Your caution does you credit. I respect you greatly, Corwin, and I consider you a friend. I'd like to stay friends and nothing more. Can we do that?~ */ GOTO 286
  IF ~~ THEN REPLY #254496 /* ~If you've not decided yet, you never will. Let me make this easy for you. We shall do as the Council wishes and end the threat of Caelar. When that task is finished, so are we.~ */ GOTO 276
END

IF ~~ THEN BEGIN 285 // from: 284.1 284.0
  SAY #254497 /* ~Thank you, <CHARNAME>. Thank you for understanding.~ [BD54497] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",2)
~ EXIT
END

IF ~~ THEN BEGIN 286 // from: 284.2
  SAY #254498 /* ~Friends it is, then. Thank you, <CHARNAME>. Thank you for understanding. Let's go.~ [BD54498] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance5","GLOBAL",1)
~ THEN BEGIN 287 // from:
  SAY #254499 /* ~I've been watching you, <CHARNAME>. And of late, I don't like what I see. If we're to be friends and nothing more, so be it. Colleagues and nothing else? Fine.~ [BD54499] */
  IF ~~ THEN DO ~SetGlobal("bd_CorwinRomance5","GLOBAL",2)
~ GOTO 288
END

IF ~~ THEN BEGIN 288 // from: 287.0
  SAY #254500 /* ~But you've got to decide what exactly we will be—if anything—and soon, or I'll make the decision for you.~ [BD54500] */
  IF ~~ THEN REPLY #254501 /* ~I want more than friendship, Schael. I want you.~ */ GOTO 291
  IF ~  Global("bd_rasaad_romanceactive","global",1)
~ THEN REPLY #254502 /* ~I'm sorry, but Rasaad and I have grown close. I hope you and I can remain friends.~ */ GOTO 289
  IF ~  Global("bd_viconia_romanceactive","global",1)
~ THEN REPLY #254504 /* ~You would have me choose 'twixt you and Viconia?~ */ GOTO 292
  IF ~  Global("bd_glint_romanceactive","global",1)
~ THEN REPLY #254506 /* ~Don't make me choose between you and Glint. He means much to me.~ */ GOTO 290
  IF ~  Global("bd_safana_romanceactive","global",1)
~ THEN REPLY #254508 /* ~You would have me choose between you and Safana? How am I supposed to do that?~ */ GOTO 290
  IF ~  Global("bd_dorn_romanceactive","global",1)
~ THEN REPLY #254510 /* ~Dorn and I are destined to be together. Our futures are entwined like two serpents, each eating the others' tail.~ */ GOTO 293
  IF ~  Global("bd_neera_romanceactive","global",1)
~ THEN REPLY #254512 /* ~I have treasured our time together, Schael. I truly have. But I would be lying to myself if I told you my feelings for Neera weren't greater than any others I have. Worse, I'd be lying to you.~ */ GOTO 294
  IF ~  Global("bd_voghiln_romanceactive","global",1)
~ THEN REPLY #254514 /* ~I feel like an idiot saying this, but then, only an idiot would: Voghiln is the one my heart desires.~ */ GOTO 294
  IF ~~ THEN REPLY #254516 /* ~We will be comrades in arms, but nothing more.~ */ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 288.8 288.1
  SAY #254523 /* ~So long as we're still that, I'll be fine. We've a job to do. Let's go get it done.~ [BD54523] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from: 288.4 288.3
  SAY #254524 /* ~That you can't choose tells me all I need to know. Go, follow your heart. I hope you find happiness.~ [BD54524] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 291 // from: 288.0
  SAY #254525 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)
SetGlobal("bd_voghiln_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 292 // from: 288.2
  SAY #254526 /* ~That you can't choose tells me all I need to know. Go, be with your drow. I hope you find happiness together.~ [BD54526] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 293 // from: 288.5
  SAY #254533 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 294 // from: 288.7 288.6
  SAY #254537 /* ~Not the answer I wanted, but better to know a harsh truth than live in ignorance. For me, anyway.~ */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 349 even though they appear after this state */
~  Global("bd_CorwinRomance6","GLOBAL",1)
~ THEN BEGIN 295 // from:
  SAY #254538 /* ~We're getting close, <CHARNAME>. This will all be over soon.~ [BD54538] */
  IF ~~ THEN REPLY #254571 /* ~I don't think I've ever seen you smile like that before, Schael. You should do it more often.~ */ DO ~IncrementGlobal("bd_CorwinRomance6","GLOBAL",1)
~ GOTO 296
  IF ~~ THEN REPLY #254544 /* ~Of all the gifts you've given me, none is more precious than hope. I wouldn't have made it this far without you.~ */ DO ~IncrementGlobal("bd_CorwinRomance6","GLOBAL",1)
~ GOTO 296
  IF ~~ THEN REPLY #254540 /* ~One way or another.~ */ DO ~SetGlobal("bd_CorwinRomance6","GLOBAL",2)
~ GOTO 296
END

IF ~~ THEN BEGIN 296 // from: 295.2 295.1 295.0
  SAY #254548 /* ~Come here.~ [BD54548] */
  IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297 // from: 296.0
  SAY #254552 /* ~I want to kiss you.~ [BD54552] */
  IF ~~ THEN REPLY #254553 /* ~That's the best thing I've heard in a long time.~ */ GOTO 298
  IF ~~ THEN REPLY #254554 /* ~And I want to let you.~ */ GOTO 298
  IF ~~ THEN REPLY #254555 /* ~I can't, not right now. Too much requires our attention.~ */ GOTO 300
END

IF ~~ THEN BEGIN 298 // from: 297.1 297.0
  SAY #254567 /* ~I'll take your words over roses any day, <CHARNAME>.~ [BD54567] */
  IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299 // from: 298.0
  SAY #254570 /* ~I'm almost there, Rohma. I'll be home soon...~ [BD54570] */
  IF ~~ THEN REPLY #254572 /* ~Not nearly soon enough. But at least we're alive to make the trip. That's no small thing, considering.~ */ GOTO 300
  IF ~~ THEN REPLY #254545 /* ~I hope you're right, Schael.~ */ GOTO 300
  IF ~~ THEN REPLY #254289 /* ~If you've said your piece, let's move on.~ */ GOTO 303
END

IF ~~ THEN BEGIN 300 // from: 299.1 299.0 297.2
  SAY #254574 /* ~Come back to Baldur's Gate with me, <CHARNAME>. I'll smile a lot more once I see my daughter again.~ [BD54574] */
  IF ~~ THEN REPLY #254575 /* ~And will Rohma smile to see me, do you think?~ */ GOTO 302
  IF ~~ THEN REPLY #254576 /* ~That sounds like an invitation.~ */ GOTO 301
  IF ~~ THEN REPLY #254588 /* ~You have a daughter, Corwin. And I'm... I'm not parent material. Look at my father if you don't believe me. We can't be together. For Rohma's sake.~ */ GOTO 305
  IF ~~ THEN REPLY #254577 /* ~Perhaps I can coax a smile or two out of you before then.~ */ GOTO 303
  IF ~~ THEN REPLY #254578 /* ~You think about that girl too much, Corwin. It's time you did something for yourself. Past time, in fact.~ */ GOTO 304
END

IF ~~ THEN BEGIN 301 // from: 300.1
  SAY #254579 /* ~There's a reason for that. Come here. Let me give you a taste of what it's an invitation to.~ [BD54579] */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 302 // from: 300.0
  SAY #254591 /* ~If I have to choose between you and her, you must know who I'll go with. But she wants me to be happy, and she's a sharp kid. I think she'll approve.~ [BD54591] */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from: 302.0 301.0 300.3 299.2
  SAY #254592 /* ~Back to the city, then, as soon as we can. In the meantime, let's go find someplace a little more private...~ [BD54592] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 304 // from: 300.4
  SAY #254594 /* ~If you knew me at all, you'd know Rohma's all I ever think of and all I ever care to think of. I thought you understood that. I guess I was wrong. Better to find out now than learn it later, I suppose. Enjoy your victory—you earned it. But you'll celebrate it without me.~ [BD54594] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 305 // from: 300.2
  SAY #254602 /* ~Gods damn it... Gods DAMN it! You're right. I know you're right. It's just... I hoped there might be some way to—to—to work it out. If it were just me, I'd follow you to the corners of Toril and beyond. I would.~ [BD54602] */
  IF ~~ THEN REPLY #254603 /* ~But it's not just you.~ */ GOTO 306
  IF ~~ THEN REPLY #254604 /* ~If it were just you, I'd let you. You belong with your daughter, Schael. And I don't know where I belong. Not yet.~ */ GOTO 306
  IF ~~ THEN REPLY #254605 /* ~You chose to burden yourself with a child. Now you must live with the consequences of that decision.~ */ GOTO 308
END

IF ~~ THEN BEGIN 306 // from: 305.1 305.0
  SAY #254606 /* ~Thank you, <CHARNAME>. Thank you for everything, but most of all for ending this now, before... before Rohma got hurt. You don't know how much I appreciate that. Maybe someday you will, if you're lucky. Farewell.~ [BD54606] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_joined","locals",0)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
StartCutSceneMode()
StartCutSceneEx("bdrom1x",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY #254607 /* ~And you tell me this now, after everything we've been through, all that I endured on your behalf? You should thank Tymora we're surrounded by witnesses. If we weren't, I'd surely do something we'd both regret.~ [BD54607] */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_joined","locals",0)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
StartCutSceneMode()
StartCutSceneEx("bdrom1x",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from: 305.2
  SAY #254609 /* ~I will. Happily. I've many regrets, <CHARNAME>. Rohma will never be one of them. Let's go.~ */
  IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 309 // from:
  SAY #251722 /* ~He's not wrong.~ [BD51722] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 690
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~BDMKHIIJ~ 127
END

IF ~~ THEN BEGIN 310 // from:
  SAY #251724 /* ~I'd be happy to discuss the matter some other time.~ [BD51724] */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 127
END

IF ~~ THEN BEGIN 311 // from:
  SAY #250195 /* ~What the hells is this now?~ [BD50195] */
  IF ~~ THEN EXTERN ~BDDM02~ 0
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 439
END

IF ~~ THEN BEGIN 312 // from:
  SAY #250210 /* ~What was that? What just happened?~ [BD50210] */
  IF ~~ THEN EXTERN ~BDDM01~ 3
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN EXTERN ~BDMKHIIJ~ 146
END

IF ~~ THEN BEGIN 313 // from:
  SAY #250317 /* ~We can't assume we got them all. The more we know, the better off we'll be.~ [BD50317] */
  IF ~~ THEN EXTERN ~BDHALAT~ 3
END

IF ~~ THEN BEGIN 314 // from:
  SAY #250374 /* ~Well, that was... That was something. Let's go.~ [BD50374] */
  IF ~~ THEN DO ~SetGlobal("BD_CABAL","BD5300",15)
SetGlobal("bd_halata_freed","global",1)
PlaySound("EFF_M73")
CreateVisualEffectObject("spsdimpa","bdhalata")
AddexperienceParty(32000)
ActionOverride("bdhalata",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 315 // from:
  SAY #252310 /* ~<CHARNAME>? A moment of your time? ~ */
  IF ~~ THEN REPLY #252311 /* ~For you, of course.~ */ GOTO 316
  IF ~~ THEN REPLY #252312 /* ~A moment, a smidgen, a wee bit... whatever you need.~ */ GOTO 316
  IF ~~ THEN REPLY #252313 /* ~What is it?~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.2 315.1 315.0
  SAY #252314 /* ~I heard about your talk with Voghiln. I think it's a good idea to keep him focused away from the drink. I've seen soldiers go downhill fast when they can't stop drinking.~ */
  IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #252315 /* ~I heard about your talk with Voghiln, <CHARNAME>. Getting him to think about something other than wine and ale is a good idea. I've lost too many people to drink in my time. Anyway, I thought he might like to have these. What do you think?~ */
  IF ~~ THEN REPLY #252316 /* ~What are they?~ */ GOTO 318
  IF ~~ THEN REPLY #252317 /* ~Are those earrings?~ */ GOTO 318
  IF ~~ THEN REPLY #252318 /* ~You'd give him your own jewelry? That's very kind.~ */ GOTO 318
END

IF ~~ THEN BEGIN 318 // from: 317.2 317.1 317.0
  SAY #252319 /* ~These are pure silver earrings, given me by my friend Neoma. I don't wear them when I'm in uniform, but I carry them with me. Neoma's still alive, though. Voghiln's friends aren't. I don't think Neoma would mind me losing them if they were to help someone.~ */
  IF ~  !IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252320 /* ~I'm certain Voghiln will appreciate the thought.~ */ GOTO 319
  IF ~  IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252320 /* ~I'm certain Voghiln will appreciate the thought.~ */ EXTERN ~BDVOGHIJ~ 170
  IF ~  !IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ GOTO 319
  IF ~  IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ EXTERN ~BDVOGHIJ~ 170
  IF ~  !IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252322 /* ~They are yours to give away.~ */ GOTO 319
  IF ~  IsValidForPartyDialogue("voghiln")
~ THEN REPLY #252322 /* ~They are yours to give away.~ */ EXTERN ~BDVOGHIJ~ 170
END

IF ~~ THEN BEGIN 319 // from: 318.4 318.2 318.0
  SAY #252323 /* ~Give them to him, then, with my good wishes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 320 // from:
  SAY #252327 /* ~You're welcome, skald.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 321 // from:
  SAY #258796 /* ~We're in the middle of a crusade camp. This isn't one of those times.~ [BD58796] */
  IF ~~ THEN EXTERN ~BDDENELD~ 45
END

IF ~~ THEN BEGIN 322 // from:
  SAY #251050 /* ~Or someone's parent.~ */
  IF ~~ THEN EXTERN ~BDHALASA~ 33
END

IF ~~ THEN BEGIN 323 // from:
  SAY #259508 /* ~Most just call that "the hard way."~ [BD59508] */
  IF ~~ THEN EXTERN ~BDKJARVA~ 9
END

IF ~~ THEN BEGIN 324 // from:
  SAY #262080 /* ~You'd willingly invite a goblin to join us? Have you taken leave of your senses?~ [BD62080] */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 708
  IF ~  !IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BDMKHIIN~ 24
  IF ~  !IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BDMKHIIN~ 23
END

IF ~~ THEN BEGIN 325 // from:
  SAY #262082 /* ~Generally speaking? At goblins.~ [BD62082] */
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 225
  IF ~  !IsValidForPartyDialogue("GLINT")
IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BDMKHIIN~ 24
  IF ~  !IsValidForPartyDialogue("GLINT")
!IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BDMKHIIN~ 23
END

IF ~~ THEN BEGIN 326 // from:
  SAY #262089 /* ~I was told to assist you as best I can, but this is a bad idea, <CHARNAME>. If this thing hurts anyone, I'll hold you personally responsible. Here, goblin, take this note from me. It should keep my people from putting a spear through you on sight.~ [BD62089] */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 21
END

IF ~~ THEN BEGIN 327 // from:
  SAY #257507 /* ~If you've got their gold, stop yammering and hand it over.~ [BD57507] */
  IF ~~ THEN EXTERN ~BDOPHYLL~ 24
END

IF ~~ THEN BEGIN 328 // from:
  SAY #257509 /* ~Is that—is that a bust of the hero, cast in gold?~ [BD57509] */
  IF ~~ THEN EXTERN ~BDOPHYLL~ 29
END

IF ~~ THEN BEGIN 329 // from:
  SAY #263736 /* ~Hold on to darkness too long and you'll never be free of it—trust me on that. When you've finished mourning, you should join us. We can use all the help we can get against Caelar Argent.~ */
  IF ~~ THEN EXTERN ~BDDEEP~ 81
END

IF ~~ THEN BEGIN 330 // from:
  SAY #263913 /* ~Oh, let's not, please.~ [BD63913] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 331 // from:
  SAY #263817 /* ~This is too much, <CHARNAME>. We're not so desperate that we need to treat with liches.~ [BD63817] */
  IF ~  !IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~BDCOLDH~ 37
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 397
END

IF ~~ THEN BEGIN 332 // from:
  SAY #265597 /* ~Try showing a little respect for once, <CHARNAME>.~ [BD65597] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 75
END

IF ~~ THEN BEGIN 333 // from:
  SAY #265837 /* ~Oh bloody hells, you had to ask...~ */
  IF ~~ THEN EXTERN ~BDMINSC~ 61
END

IF ~~ THEN BEGIN 334 // from:
  SAY #265897 /* ~Sometimes an evil is required to achieve the greater good. I don't like it, but there it is. If you've a problem with it, take it up with the gods.~ */
  IF ~~ THEN EXTERN ~BDVICONI~ 59
END

IF WEIGHT #28 /* Triggers after states #: 349 even though they appear after this state */
~  Global("EECorwAfter","BD0120",1)
~ THEN BEGIN 335 // from:
  SAY #271737 /* ~I'm a bit concerned that Sarevok really proclaimed himself to be your brother.~ */
  IF ~~ THEN DO ~SetGlobal("EECorwAfter","BD0120",2)
~ GOTO 336
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #271738 /* ~I don't believe that two spawns of a dead god are siblings in any way.~ */
  IF ~~ THEN REPLY #271739 /* ~Then why are you concerned?~ */ GOTO 337
  IF ~~ THEN REPLY #271740 /* ~Neither do I - and even if we are, it does not impact me.~ */ GOTO 337
  IF ~~ THEN REPLY #271741 /* ~I doesn't matter if he really were family, my choices would've been just the same.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.2 336.1 336.0
  SAY #271742 /* ~What bothers me is that soon the people of Baldur's Gate will blame themselves for having trusted the Bhaalspawn Sarevok and they will celebrate you, the winner, the hero, whatnot.~ */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #271743 /* ~Public opinion is a fragile thing, <CHARNAME>. I love my home town but I don't trust a mob that sees Sarevok's <PRO_BROTHERSISTER> in you. It may raise suspicion and rumour pretty soon.~ */
  IF ~  ReputationLT(Player1,10)
~ THEN REPLY #271744 /* ~And what do you think, Corwin?~ */ GOTO 340
  IF ~  ReputationGT(Player1,9)
~ THEN REPLY #271744 /* ~And what do you think, Corwin?~ */ GOTO 339
END

IF ~~ THEN BEGIN 339 // from: 338.1
  SAY #271745 /* ~I trust you, my friend.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 340 // from: 338.0
  SAY #271746 /* ~Time will tell which way you're heading, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 /* Triggers after states #: 349 even though they appear after this state */
~  Global("EECorwAfter","BD0120",3)
~ THEN BEGIN 341 // from:
  SAY #271747 /* ~<CHARNAME>, my mission...our mission is finished for the moment. We have done well, I guess. It's time to restore what is left of the Flaming Fist.~ */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #271748 /* ~Are you trying to tell me that you have to leave me now?~ */ DO ~SetGlobal("EECorwAfter","BD0120",4)
~ GOTO 342
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #271749 /* ~We've really earned ourself some rest and maybe some celebration.~ */ DO ~SetGlobal("EECorwAfter","BD0120",4)
~ GOTO 342
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #271748 /* ~Are you trying to tell me that you have to leave me now?~ */ DO ~SetGlobal("EECorwAfter","BD0120",4)
~ GOTO 343
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #271749 /* ~We've really earned ourself some rest and maybe some celebration.~ */ DO ~SetGlobal("EECorwAfter","BD0120",4)
~ GOTO 343
END

IF ~~ THEN BEGIN 342 // from: 341.1 341.0
  SAY #271750 /* ~It's time for you to take some rest after all this, <CHARNAME>. And then the town wants to celebrate it's new hero.~ */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 341.3 341.2
  SAY #271751 /* ~It's time for you to take some rest after all this, <CHARNAME>. And then the town wants to celebrate it's new heroine.~ */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 343.0 342.0
  SAY #271752 /* ~It's my duty to see how far Duke Eltan is restored by now. He needs all those officers who stayed loyal to clean the Flaming Fist of Angelo's remains and bring back the order to the city.~ */
  IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #271753 /* ~The Fist needs me now, my home town needs me now...and Rohma needs me as well.~ */
  IF ~~ THEN REPLY #271754 /* ~I hope we will soon meet again, Corwin.~ */ GOTO 347
  IF ~~ THEN REPLY #271755 /* ~I understand your motivation, Captain, I hope it's a temporary thing though.~ */ GOTO 347
  IF ~~ THEN REPLY #271756 /* ~Yeah, you served me well, now go and serve your Eltan if you must.~ */ GOTO 346
END

IF ~~ THEN BEGIN 346 // from: 345.2
  SAY #271757 /* ~You make parting easier than I thought it would be. Good luck, <CHARNAME>.~ */
  IF ~~ THEN DO ~DestroyItem("EEAmul")
LeaveParty()
SetGlobal("EECorwinBG1","Global",1)
EscapeAreaDestroy(45)
~ EXIT
END

IF ~~ THEN BEGIN 347 // from: 345.1 345.0
  SAY #271758 /* ~You don't have pressing business, <CHARNAME>, why not take your time to learn about Baldur's Gate from a nicer perspective.~ */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #271759 /* ~I...I look ahead to see you again, my friend.~ */
  IF ~~ THEN DO ~DestroyItem("EEAmul")
LeaveParty()
SetGlobal("EECorwinBG1","Global",1)
EscapeAreaDestroy(45)
~ EXIT
END

IF WEIGHT #0 ~  Global("bd_sdd020_talk","global",1)
Global("EECorwSarevDukes","Global",1)
~ THEN BEGIN 349 // from:
  SAY #267132 /* ~A word, <CHARNAME>?~ [BD67132] */
  IF ~~ THEN REPLY #267163 /* ~Of course, Captain Corwin. What can I do for you?~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 350
  IF ~~ THEN REPLY #267134 /* ~ANOTHER one? *sigh* Very well.~ */ DO ~SetGlobal("bd_sdd020_talk","global",2)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.1 349.0
  SAY #267137 /* ~Some of the things people are saying about you concern me.~ */
  IF ~~ THEN GOTO 351
END

IF ~~ THEN BEGIN 351 // from: 350.0
  SAY #271778 /* ~I've seen you and I've seen Sarevok. But for others you are siblings and one of a breed.~ */
  IF ~~ THEN REPLY #267143 /* ~Like Sarevok, I am a child of Bhaal. But I assure you, a father is all we share.~ */ GOTO 249
  IF ~~ THEN REPLY #267144 /* ~Regrettably, that last is true. You can choose your friends, but not your family.~ */ GOTO 249
  IF ~~ THEN REPLY #267145 /* ~There are many who would to see me fall. Spread these vile lies and you'll do nothing but help them. Is that what you want?~ */ GOTO 253
END

IF WEIGHT #30 ~  Global("EEOwnHouse","Locals",1)
~ THEN BEGIN 352 // from:
  SAY #271531 /* ~This is my street, <CHARNAME>, I mean the street where I live.~ */
  IF ~~ THEN DO ~SetGlobal("EEOwnHouse","Locals",2)
~ GOTO 353
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #271532 /* ~That house over there is where my daughter and my father and me reside.~ */
  IF ~~ THEN REPLY #271533 /* ~You are on duty, officer...(grin) but under my command. Let's see who's at home.~ */ GOTO 355
  IF ~~ THEN REPLY #271534 /* ~You are on duty, officer, and under my command. Don't forget that.~ */ GOTO 354
  IF ~~ THEN REPLY #271535 /* ~I see that there is something more important even to you than a blind obedience to duty. Good to see, Corwin.~ */ GOTO 355
END

IF ~~ THEN BEGIN 354 // from: 353.1
  SAY #271536 /* ~You are right, <CHARNAME>, (sigh).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 355 // from: 353.2 353.0
  SAY #271537 /* ~You are right, <CHARNAME>, (grin). Thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 356 // from:
  SAY #218899 /* ~You broke into my house! You think I'm going to let you go on this one?! THINK AGAIN!~ */
  IF ~~ THEN EXTERN ~TAXEK~ 8
END

IF ~~ THEN BEGIN 357 // from:
  SAY #271540 /* ~You think I can be bribed...my little girl's upstairs and I hope she's not awake yet. You'd be dead already if not for her. I want to spare her the sight of your guts all over the floor. GET OUT!~ */
  IF ~~ THEN EXTERN ~TAXEK~ 9
END

IF WEIGHT #31 ~  Global("EEMetRohma","Global",2)
~ THEN BEGIN 358 // from:
  SAY #271542 /* ~Rohma, my darling! Greetings, daddy.~ */
  IF ~~ THEN DO ~SetGlobal("EEMetRohma","Global",3)
~ EXTERN ~BDAUDAM~ 15
END

IF ~~ THEN BEGIN 359 // from:
  SAY #235436 /* ~Just one. Feels like more than that sometimes.~ [BD35436] */
  IF ~~ THEN EXTERN ~BDROHMA~ 25
END

IF ~~ THEN BEGIN 360 // from:
  SAY #235421 /* ~<CHARNAME>, this is my daughter, Rohma. Rohma, this is <CHARNAME>.~ [BD35421] */
  IF ~~ THEN EXTERN ~BDROHMA~ 27
END

IF ~~ THEN BEGIN 361 // from:
  SAY #271552 /* ~Rohma! Not such words. And I told you not to talk to strangers about these things.~ */
  IF ~~ THEN EXTERN ~BDROHMA~ 28
END

IF ~~ THEN BEGIN 362 // from:
  SAY #235426 /* ~They'll do what they have to.~ [BD35426] */
  IF ~~ THEN EXTERN ~BDROHMA~ 30
END

IF ~~ THEN BEGIN 363 // from:
  SAY #235428 /* ~Exactly like that.~ [BD35428] */
  IF ~~ THEN GOTO 364
END

IF ~~ THEN BEGIN 364 // from: 363.0
  SAY #271557 /* ~Now, you do what your grampa says while I'm gone, all right?~ */
  IF ~~ THEN EXTERN ~BDROHMA~ 31
END

IF WEIGHT #32 ~  OR(2)
Global("EECorDpl","BG0128",1)
Global("EECorDpl","BG0603",1)
~ THEN BEGIN 365 // from:
  SAY #271560 /* ~Once more those doppelgangers...there is a pattern here and it's not the first time my suspicions have been proven right.~ */
  IF ~~ THEN REPLY #271561 /* ~You're supposed to be my advisor of those secrets of your town, so?~ */ DO ~SetGlobal("EECorDpl","Global",1)
SetGlobal("EECorDpl","BG0603",2)
SetGlobal("EECorDpl","BG0128",2)
~ GOTO 366
  IF ~~ THEN REPLY #271562 /* ~Let's compare notes, then, Captain.~ */ DO ~SetGlobal("EECorDpl","Global",1)
SetGlobal("EECorDpl","BG0603",2)
SetGlobal("EECorDpl","BG0128",2)
~ GOTO 366
  IF ~  InParty("CVSandr")
~ THEN REPLY #271563 /* ~If I need someone to state the bloody obvious, I'll just let Sandrah chime in.~ */ DO ~SetGlobal("EECorDpl","Global",1)
SetGlobal("EECorDpl","BG0603",2)
SetGlobal("EECorDpl","BG0128",2)
~ GOTO 366
  IF ~~ THEN REPLY #271564 /* ~I don't need you to state the bloody obvious, so shut up already.~ */ DO ~SetGlobal("EECorDpl","Global",1)
SetGlobal("EECorDpl","BG0603",2)
SetGlobal("EECorDpl","BG0128",2)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 365.2 365.1 365.0
  SAY #271565 /* ~Several times when I ran investigations concerning the Iron Throne I found this pattern. They seem to have an endless supply of these creatures. Now when I find a trace of their kin, I'm pretty sure the Iron Throne is behind the operation.~ */
  IF ~~ THEN REPLY #271566 /* ~Makes sense to me, Corwin.~ */ GOTO 367
  IF ~~ THEN REPLY #271567 /* ~Not bad, Captain, it explains some encounters we had in the past.~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.1 366.0
  SAY #271568 /* ~There must be some foul magic involved with it, those creatures seldom cooperate with humans but I doubt they act here without someone pulling the strings.~ */
  IF ~~ THEN GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #271569 /* ~We know enough of the internal structures of the Throne to anticipate who's the guy in charge of the more sinister, illegal and despicable actions of that League.~ */
  IF ~~ THEN REPLY #271570 /* ~That Sarevok we heard about, but who is he?~ */ GOTO 369
  IF ~~ THEN REPLY #271571 /* ~Winski Perorate, is that who?~ */ GOTO 371
  IF ~~ THEN REPLY #271572 /* ~Isn't that describing everyone in that foul bunch of a merchants league?~ */ GOTO 372
END

IF ~~ THEN BEGIN 369 // from: 372.0 371.0 368.0
  SAY #271573 /* ~He's the stepson of Rieltar Anchev, the local leader of the Iron Throne. His stepson is rarely acting officially for the organisation but seems to have a lot of connections to the darker circles of town. He has been seen with magic users of suspicious origins and he often leaves town for days at a time doing whatever.~ */
  IF ~~ THEN GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #271574 /* ~I'm not even sure if the other leaders of the Iron Throne know all that silent schemer does.~ */
  IF ~~ THEN REPLY #271575 /* ~I have good reason to think that he murdered Gorion.~ */ EXIT
  IF ~~ THEN REPLY #271576 /* ~I suspect he's the one who sends all those assassins after me.~ */ EXIT
  IF ~~ THEN REPLY #271577 /* ~Sheds some light I needed. Let's go and see Scar to report what we found.~ */ EXIT
END

IF ~~ THEN BEGIN 371 // from: 368.1
  SAY #271578 /* ~Winski? Yes, that makes sense. The Rashemi is Sarevok's teacher. Sarevok Anchev, I mean.~ */
  IF ~~ THEN REPLY #271570 /* ~That Sarevok we heard about, but who is he?~ */ GOTO 369
END

IF ~~ THEN BEGIN 372 // from: 368.2
  SAY #271579 /* ~Most of them are spiteful but still acting somehow within the law. I suspect Sarevok Anchev to venture further than the rest.~ */
  IF ~~ THEN REPLY #271570 /* ~That Sarevok we heard about, but who is he?~ */ GOTO 369
END

IF WEIGHT #33 ~  Global("EECorwoodland","LOCALS",1)
~ THEN BEGIN 373 // from:
  SAY #271580 /* ~I do better in the city than the woods but it's been a lifetime since I last left Baldur's Gate.~ */
  IF ~~ THEN REPLY #271581 /* ~I grew up behind the walls of Candlekeep. Compared to that, your city is a small universe in itself.~ */ DO ~SetGlobal("EECorwoodland","LOCALS",2)
~ GOTO 374
  IF ~~ THEN REPLY #271582 /* ~You sound like a drow out on the surface. These are just trees instead of bricks.~ */ DO ~SetGlobal("EECorwoodland","LOCALS",2)
~ GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 373.1 373.0
  SAY #271583 /* ~Did I sound like complaining? I was just considering the lifestyle I have adjusted to. Rohma makes everything bearable. Trees and grass are fine, but she's what I really have trouble being away from.~ */
  IF ~~ THEN REPLY #271584 /* ~(Grin) I do anything to entertain my troops and keep the spirit up.~ */ GOTO 375
  IF ~~ THEN REPLY #271585 /* ~You're a city child and a family woman. Something rare in my experience. Not bad.~ */ GOTO 375
  IF ~~ THEN REPLY #271586 /* ~Inevitably our course will lead us back to your home town sooner or later. So much is for sure.~ */ GOTO 375
END

IF ~~ THEN BEGIN 375 // from: 374.2 374.1 374.0
  SAY #271587 /* ~In your special way, you make a good officer, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #34 ~  Global("EECorFriend","Locals",1)
~ THEN BEGIN 376 // from:
  SAY #271588 /* ~I'm wondering how you became involved in this adventure in the first place, <CHARNAME>?~ */
  IF ~~ THEN DO ~SetGlobal("EECorFriend","Locals",2)
~ GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.0
  SAY #271589 /* ~Scar and me heard about your deeds but we were not sure about your motivation. We only found that you'd be a most welcome ally.~ */
  IF ~~ THEN REPLY #271590 /* ~And that's probably all you need to know about it, Captain.~ */ GOTO 378
  IF ~~ THEN REPLY #271591 /* ~This is a long story by now, Corwin, and most likely one to end with Sarevok.~ */ GOTO 379
  IF ~  CheckStatGT(Player1,11,INT)
~ THEN REPLY #271592 /* ~Maybe telling all that has happened in such a short time to an unbiased listener helps both of us. We may both see clearer afterwards. Looking back at it in context may make us all aware of details we could have missed.~ */ GOTO 379
END

IF ~~ THEN BEGIN 378 // from: 377.0
  SAY #271593 /* ~Just as you like, <PRO_SIRMAAM>, I'm sure our comrades can answer this just as well as yourself.~ */
  IF ~~ THEN DO ~RealSetGlobalTimer("EECorBanT","Locals",2800)
~ EXIT
  IF ~  InParty("Jaheira")
~ THEN DO ~RealSetGlobalTimer("EECorBanT","Locals",2800)
~ EXTERN ~BJAHEI~ 9
  IF ~  InParty("Imoen2")
~ THEN DO ~RealSetGlobalTimer("EECorBanT","Locals",2800)
~ EXTERN ~BIMOEN~ 0
END

IF ~~ THEN BEGIN 379 // from: 377.2 377.1
  SAY #271596 /* ~I'm a pretty good listener and this story is one to interest me personally.~ */
  IF ~~ THEN REPLY #271597 /* ~It all started with my foster father Gorion notifying me one morning that we immediately had to leave our home at Candlekeep...(You tell her your story.)~ */ DO ~RealSetGlobalTimer("EECorBanT","Locals",2800)
~ GOTO 380
END

IF ~~ THEN BEGIN 380 // from: 379.0
  SAY #271598 /* ~I see. Thank you, I almost feel like we travel together since significant time.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #35 ~  Global("EECorFriend","Locals",4)
~ THEN BEGIN 381 // from:
  SAY #271599 /* ~I've made a preliminary decision, <CHARNAME>, your recent conduct has assured me of your alignment.~ */
  IF ~~ THEN REPLY #271600 /* ~What are you up to, Captain?~ */ DO ~SetGlobal("EECorFriend","Locals",5)
~ GOTO 382
  IF ~~ THEN REPLY #271601 /* ~This is an ambiguous statement, can you explain what you mean?~ */ DO ~SetGlobal("EECorFriend","Locals",5)
~ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.1 381.0
  SAY #271602 /* ~I want you to see past my appointment as local guide to your quest.~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #271603 /* ~<CHARNAME>, I have to dedicate my attention to your cause - ah, to our cause, that is. I'm serving my home town and the Fist, but for the moment I'm also your comrade just like <PLAYER2>, <PLAYER3>, <PLAYER4>, <PLAYER5>, and <PLAYER6>.~ */
  IF ~~ THEN REPLY #271604 /* ~Doesn't that put you into some dilemma, Corwin?~ */ GOTO 384
  IF ~~ THEN REPLY #271605 /* ~I hope you set your priorities right, Captain, we may not always be able to act to your codex.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.1 383.0
  SAY #271606 /* ~It's not easy for me to forget my officer's duty at one or the other occasion, but my foremost duty is to our final success. I hope I make no mistake when I think that your actions and fate are essential for a higher goal for Baldur's Gate, far more important than the individual deeds.~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #271607 /* ~Just know that if you betray my trust, you will make yourself a mighty foe.~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #271608 /* ~Otherwise...you will find me a loyal companion...maybe a friend in the end.~ */
  IF ~~ THEN DO ~RealSetGlobalTimer("EECorBanT","Locals",TWELVE_HOURS)
~ EXIT
END

IF WEIGHT #36 ~  Global("EECorFriend","Locals",6)
~ THEN BEGIN 387 // from:
  SAY #271609 /* ~Rohma makes it easy for me and on the other side harder than for most.~ */
  IF ~~ THEN REPLY #271610 /* ~Your daughter, right. It can't be easy to be mother and Flaming Fist at the same time.~ */ DO ~SetGlobal("EECorFriend","Locals",7)
RealSetGlobalTimer("EECorBanT","Locals",3700)
~ GOTO 389
  IF ~~ THEN REPLY #271611 /* ~Your private life is just that, Captain - private. Keep it that way.~ */ DO ~SetGlobal("EECorFriend","Locals",77)
SetGlobal("EECorFriend","Locals",7)
RealSetGlobalTimer("EECorBanT","Locals",3700)
~ GOTO 388
  IF ~~ THEN REPLY #271612 /* ~Your father and your task being in your home town give you a chance to be both, isn't it true?~ */ DO ~SetGlobal("EECorFriend","Locals",7)
RealSetGlobalTimer("EECorBanT","Locals",3700)
~ GOTO 389
END

IF ~~ THEN BEGIN 388 // from: 390.1 387.1
  SAY #271613 /* ~You're right, <CHARNAME>, forget I mentioned it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 389 // from: 387.2 387.0
  SAY #271614 /* ~My current task makes the practical aspects bearable and my father is a great help with taking care of her. There are surely mothers in worse circumstances.~ */
  IF ~~ THEN GOTO 390
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY #271615 /* ~What I meant is that her existence gives my life the necessary focus it was missing before her birth. And on the other hand gives me more responsibility than being officer already gives me.~ */
  IF ~~ THEN REPLY #271616 /* ~Sounds like you grew up by becoming a mother.~ */ GOTO 391
  IF ~~ THEN REPLY #271617 /* ~It doesn't give me responsibility to listen to your laments, woman. It was your choice after all.~ */ DO ~SetGlobal("EECorFriend","Locals",77)
~ GOTO 388
  IF ~~ THEN REPLY #271618 /* ~It's hard to imagine that officer Corwin was once a rascal of sorts.~ */ GOTO 391
END

IF ~~ THEN BEGIN 391 // from: 390.2 390.0
  SAY #271619 /* ~It may not have been the best idea at the time to have a child with a father like...Famari. But it has changed me and I'm happy it did.~ */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #271620 /* ~Anyway - thanks for listening. It's better to move on now. My considerations can wait another day. It's important that we get this job done. And done well.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #37 ~  Global("EECorBeno","BG0224",1)
~ THEN BEGIN 393 // from:
  SAY #271621 /* ~(Corwin has grabbed your arm and causes you to stop and face her. She seems to be slightly agitated.)~ */
  IF ~~ THEN DO ~SetGlobal("EECorBeno","BG0224",2)
~ GOTO 394
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #271622 /* ~Listen for a minute, <CHARNAME>, I need to tell you something about my past...it may become relevant pretty soon.~ */
  IF ~~ THEN REPLY #271623 /* ~You could have chosen a better place than this for conversation, Corwin.~ */ GOTO 395
  IF ~~ THEN REPLY #271624 /* ~Your past in the...sewers of Baldur's Gate, Captain?~ */ GOTO 395
  IF ~~ THEN REPLY #271625 /* ~Well, if you find this *location* appropriate, I will listen.~ */ GOTO 395
END

IF ~~ THEN BEGIN 395 // from: 394.2 394.1 394.0
  SAY #271626 /* ~This is the most appropriate place for what I have to say, believe me. Somewhere around here is the entrance to the Undercellars, a lawless area of shady entertainment, and with a good chance to meet the man I need to inform you about.~ */
  IF ~~ THEN DO ~SetGlobal("bd_famari_talk","locals",1)
~ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #271627 /* ~His name's Beno Famari. And it's not him I'm worried about, but you need to understand my reactions if we meet. Because if that happens, there's a better than good chance I'll kill him...again.~ */
  IF ~~ THEN REPLY #252071 /* ~I need to know exactly what's going on, Corwin.~ */ GOTO 397
  IF ~~ THEN REPLY #252073 /* ~We'd better get out of here, then.~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 399.0 396.0
  SAY #252083 /* ~Fine. Beno and I were... together. It was a long time ago, and it didn't end well, especially for him. I got Rohma, so I'm not complaining.~ [BD52083] */
  IF ~~ THEN REPLY #252084 /* ~He fathered your daughter?~ */ GOTO 400
  IF ~~ THEN REPLY #271628 /* ~This Beno - I take it he hasn't been much involved in Rohma's life.~ */ GOTO 400
END

IF ~~ THEN BEGIN 398 // from: 402.1 396.1
  SAY #271629 /* ~Thank you, <CHARNAME>. I'd appreciate this. ~ [BD58487] */
  IF ~~ THEN GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 398.0
  SAY #271630 /* ~I'm just afraid, I can't hide from my past without endangering our mission.~ */
  IF ~~ THEN REPLY #252071 /* ~I need to know exactly what's going on, Corwin.~ */ GOTO 397
  IF ~~ THEN REPLY #271631 /* ~Or might you be able to gather some intelligence about the current crisis? Is he involved?~ */ GOTO 404
END

IF ~~ THEN BEGIN 400 // from: 404.0 397.1 397.0
  SAY #252089 /* ~He was there when she was conceived. He was never her father. When I told him about Rohma...~ [BD52089] */
  IF ~~ THEN GOTO 401
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #266687 /* ~I was young and stupid then. Becoming a mother smartened me up fast.~ [BD66687] */
  IF ~~ THEN GOTO 402
END

IF ~~ THEN BEGIN 402 // from: 401.0
  SAY #252094 /* ~Whatever I do in this life, whatever regrets I have, Rohma's not one of them. She never will be. I love her. Which is just one of the many reasons I'd rather avoid dying here.~ [BD52094] */
  IF ~~ THEN REPLY #271632 /* ~You raised a beautiful and intelligent child. I hope that the current crisis will not take you away from her too long.~ */ GOTO 403
  IF ~~ THEN REPLY #252093 /* ~The smart thing for us to do would be to leave this place.~ */ GOTO 398
END

IF ~~ THEN BEGIN 403 // from: 402.0
  SAY #252096 /* ~There are three things in my life that matter to me, <CHARNAME>. My daughter, my father, and the Flaming Fist. Each saved me, in their own way. When one of them calls on me, I answer. Always.~ [BD52096] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 404 // from: 399.1
  SAY #252074 /* ~I can't imagine Beno willingly telling me anything useful. There's no love for me left in his coward heart.~ [BD52074] */
  IF ~~ THEN REPLY #252075 /* ~Left? So there was love once?~ */ GOTO 400
END

IF WEIGHT #38 ~  Global("bd_drinks_corwin","global",1)
~ THEN BEGIN 405 // from:
  SAY #271633 /* ~So. <CHARNAME>. The <PRO_MANWOMAN>. The myth. The hero of the Sword Coast. Tell me about yourself.~ */
  IF ~~ THEN REPLY #235071 /* ~I'd rather know about you.~ */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 406
  IF ~~ THEN REPLY #271634 /* ~Gods, we don't have nearly enough time for that. Forget me. Tell me about Angelo Dosan.~ */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 426
  IF ~~ THEN REPLY #235073 /* ~Everything you've heard about me? Absolutely true.~ */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 417
  IF ~~ THEN REPLY #271635 /* ~I don't talk about my past.~ */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 422
END

IF ~~ THEN BEGIN 406 // from: 405.0
  SAY #235075 /* ~What would you like to know?~ [BD35075] */
  IF ~~ THEN REPLY #235076 /* ~How did you come to join the Flaming Fist?~ */ GOTO 409
  IF ~~ THEN REPLY #271636 /* ~What's your sense of this Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #271637 /* ~Where you're planning to sleep tonight?~ */ GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.2
  SAY #271638 /* ~Sleeping isn't on my agenda. Once I'm finished with you, I'll be spending what time I've got left preparing for the upcoming events.~ */
  IF ~~ THEN REPLY #271639 /* ~There's much to do before we leave. Tell me, what are your thoughts on Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #271640 /* ~You and the rest of the Flaming Fist. Tell me, how did you come to join Duke Eltan's ranks?~ */ GOTO 409
  IF ~~ THEN REPLY #235082 /* ~If you need a break from the drudgery, you're welcome to come and not sleep in my chambers, if you know what I mean...~ */ GOTO 408
  IF ~~ THEN REPLY #235083 /* ~Let's not waste more time than necessary here, then.~ */ GOTO 413
END

IF ~~ THEN BEGIN 408 // from: 407.2
  SAY #235084 /* ~It's best relationships in the Flaming Fist remain professional.~ [BD35084] */
  IF ~~ THEN REPLY #271641 /* ~Indeed. So what do you make of Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #235086 /* ~If you insist. How did you come to join the Fist, anyway?~ */ GOTO 409
  IF ~~ THEN REPLY #271642 /* ~I'm not in the Fist. But I take your meaning - we'd best call it a night.~ */ GOTO 413
END

IF ~~ THEN BEGIN 409 // from: 421.1 417.2 414.1 408.1 407.1 406.0
  SAY #235090 /* ~Ah, well, therein lies a tale, but it's a long one. My father, Audamar, was a Fist. You could say I followed in his footsteps.~ [BD35090] */
  IF ~~ THEN REPLY #271643 /* ~Many children emulate their parents. Not me, thankfully. Say, what are your thoughts on Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #235092 /* ~That's a curious way of putting things. You obviously followed in his footsteps since you enlisted.~ */ GOTO 410
  IF ~~ THEN REPLY #269694 /* ~As you wish.~ */ GOTO 413
END

IF ~~ THEN BEGIN 410 // from: 409.1
  SAY #235094 /* ~I did, eventually. But it took me a long time to recognize the value in my father's example. When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094] */
  IF ~~ THEN REPLY #261796 /* ~Sounds like Duke Entar could take a lesson from your father.~ */ GOTO 411
  IF ~~ THEN REPLY #261797 /* ~A wild child, hm? Any stories you care to share?~ */ GOTO 412
  IF ~~ THEN REPLY #271644 /* ~It's good to have people you can trust in your life. What are your thoughts on Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #261799 /* ~Interesting. Well, we'd best call it a night.~ */ GOTO 413
END

IF ~~ THEN BEGIN 411 // from: 410.0
  SAY #271645 /* ~I wasn't so different from Skie Silvershield when I was her age - thought I deserved everything and didn't understand why I couldn't have it. With a little help from Tymora, she'll learn some lessons and grow into a good and decent person.~ [BD61800] */
  IF ~~ THEN REPLY #271646 /* ~Time will tell. What are your thoughts on Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #271647 /* ~I'm not as confident as you are, but stranger things have happened. What do you think of Angelo Dosan thus far?~ */ GOTO 426
  IF ~~ THEN REPLY #261803 /* ~We can only hope. Well, we'd best call it a night.~ */ GOTO 413
END

IF ~~ THEN BEGIN 412 // from: 410.1
  SAY #271648 /* ~Let's keep things professional - for now, at least. Drink up. We've things to do and precious little time in which to do them.~ [BD35095] */
  IF ~~ THEN DO ~AddJournalEntry(271649,INFO)
Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 413 // from: 421.2 417.3 414.2 414.0 411.2 410.3 409.2 408.2 407.3
  SAY #235097 /* ~Drink up. We've things to do and not much time to do them in.~ [BD35097] */
  IF ~~ THEN DO ~AddJournalEntry(271649,INFO)
Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 414 // from: 428.1 428.0 427.1 427.0 426.1 426.0 416.0
  SAY #271650 /* ~My loyalty is to my home town and its people - not necessarily to each and every of its representatives. At this moment, <CHARNAME>, you may be the best option for a loyal officer serving Baldur's Gate.~ */
  IF ~~ THEN REPLY #271651 /* ~I won't disappoint you. I can promise you that.~ */ GOTO 413
  IF ~~ THEN REPLY #271652 /* ~I won't disappoint you. I can promise you that.. So how did you come to join the Flaming Fist anyway?~ */ GOTO 409
  IF ~~ THEN REPLY #261804 /* ~We'll soon find out what the future holds. In the meantime, we should get some rest.~ */ GOTO 413
END

IF ~~ THEN BEGIN 415 // from: 428.2 427.2 426.2
  SAY #271653 /* ~Few knew Scar's real name, only his closest friends...I miss him...~ */
  IF ~~ THEN GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #271654 /* ~But Angelo. That's something different altogether.~ */
  IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 417 // from: 405.2
  SAY #235134 /* ~ALL of it? Impressive...~ [BD35134] */
  IF ~~ THEN REPLY #235135 /* ~Well, maybe not all of it.~ */ GOTO 418
  IF ~~ THEN REPLY #271655 /* ~You have no idea. Now tell me what you know about Angelo Dosan.~ */ GOTO 426
  IF ~~ THEN REPLY #261805 /* ~Now it's your turn to impress me. Tell me about yourself. How did you come to join the Flaming Fist?~ */ GOTO 409
  IF ~~ THEN REPLY #235137 /* ~I'll leave you with that thought, Captain Corwin. We should turn in for the night.~ */ GOTO 413
END

IF ~~ THEN BEGIN 418 // from: 417.0
  SAY #235153 /* ~And modest too.~ [BD35153] */
  IF ~~ THEN REPLY #235154 /* ~That surprises you?~ */ GOTO 420
  IF ~~ THEN REPLY #235155 /* ~I've found other peoples' low expectations of me generally work to my advantage.~ */ GOTO 419
  IF ~~ THEN REPLY #235156 /* ~Not modest. Merely realistic.~ */ GOTO 421
END

IF ~~ THEN BEGIN 419 // from: 418.1
  SAY #235157 /* ~This must be a tough time for you, then.~ [BD35157] */
  IF ~~ THEN GOTO 421
END

IF ~~ THEN BEGIN 420 // from: 418.0
  SAY #235159 /* ~A little.~ [BD35159] */
  IF ~~ THEN GOTO 421
END

IF ~~ THEN BEGIN 421 // from: 420.0 419.0 418.2
  SAY #271656 /* ~After the iron crisis, the city adores you. That kind of deference would go to some peoples' heads. But not yours, it seems. That's good. We'll need level heads when it comes time to face the Iron Throne.~ */
  IF ~~ THEN REPLY #271657 /* ~I'll do my best to live up to your expectations. Speaking of the Iron Throne, what do you think of Angelo Dosan?~ */ GOTO 426
  IF ~~ THEN REPLY #261807 /* ~I'll keep mine as level as I can. Tell me about yourself now, Captain. How did you come to join the Flaming Fist?~ */ GOTO 409
  IF ~~ THEN REPLY #261808 /* ~Mine will be more level after a good night's sleep. We should turn in.~ */ GOTO 413
END

IF ~~ THEN BEGIN 422 // from: 405.3
  SAY #271658 /* ~We've a long task together ahead of us. I doubt we'll be strangers long. But it doesn't look like we're going to be friends, either. Nothing wrong with that. Probably best to keep things professional. Drink up and we'll go.~ [BD35163] */
  IF ~~ THEN DO ~AddJournalEntry(271649,INFO)
Face(NE)
~ EXIT
END

IF WEIGHT #39 ~  Global("EECorAnm","BG4800",1)
~ THEN BEGIN 423 // from:
  SAY #271659 /* ~I know we need to be here on your task, <CHARNAME>, I just hope the presence of a Flaming Fist officer doesn't get you in trouble. Tension is growing with Amn.~ */
  IF ~~ THEN REPLY #271660 /* ~Nashkel is not Anminsh heartland, Corwin. We have a good reputation here due to our former deeds. Anyway, we will make it quick. Your concern is noted, Captain.~ */ GOTO 424
  IF ~~ THEN REPLY #271661 /* ~*Our* task, Captain, and if anyone gets into trouble it's *we*. This town owes us and I hope they don't forget it. Otherwise, *they* may get into trouble.~ */ GOTO 424
  IF ~~ THEN REPLY #271662 /* ~Afraid, Captain? Far from your base and without a squadron at your heels?~ */ GOTO 425
END

IF ~~ THEN BEGIN 424 // from: 425.0 423.1 423.0
  SAY #271663 /* ~I just want to make sure *we* don't load more on our platters than we need. Let's do what must be done and don't strain Tymora too much.~ */
  IF ~~ THEN DO ~SetGlobal("EECorAnm","BG4800",2)
~ EXIT
END

IF ~~ THEN BEGIN 425 // from: 423.2
  SAY #271664 /* ~(Sarcastic) With you at my side, oh hero, how could I feel afraid...~ */
  IF ~~ THEN GOTO 424
END

IF ~~ THEN BEGIN 426 // from: 421.0 417.1 411.1 411.0 410.2 409.0 408.0 407.0 406.1 405.1
  SAY #271665 /* ~A charismatic but sleazy guy. I'm loyal to the Flaming Fist but I doubt that he is. He is supported by someone and rose pretty quick in the ranks. ~ */
  IF ~~ THEN REPLY #271670 /* ~You mistrust your own superiors, Captain?~ */ GOTO 414
  IF ~~ THEN REPLY #271671 /* ~Duke Eltan shares your view on this, Captain?~ */ GOTO 414
  IF ~  CheckStatGT(Player1,18,INT)
~ THEN REPLY #271672 /* ~Hurbold Duethkatha, he did not know about this?~ */ GOTO 415
  IF ~  InParty("SHARTEEL")
~ THEN GOTO 428
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 13
  IF ~  InParty("SHARTEEL")
~ THEN GOTO 427
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 12
END

IF ~~ THEN BEGIN 427 // from: 426.5
  SAY #271667 /* ~You must know him even better than I do, Shar-Teel.~ */
  IF ~~ THEN REPLY #271670 /* ~You mistrust your own superiors, Captain?~ */ GOTO 414
  IF ~~ THEN REPLY #271671 /* ~Duke Eltan shares your view on this, Captain?~ */ GOTO 414
  IF ~  CheckStatGT(Player1,18,INT)
~ THEN REPLY #271672 /* ~Hurbold Duethkatha, he did not know about this?~ */ GOTO 415
  IF ~  InParty("SHARTEEL")
~ THEN GOTO 428
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 13
END

IF ~~ THEN BEGIN 428 // from: 427.3 426.3
  SAY #271669 /* ~You are his daughter? Poor girl, it explains quite a bit of how you became.~ */
  IF ~~ THEN REPLY #271670 /* ~You mistrust your own superiors, Captain?~ */ GOTO 414
  IF ~~ THEN REPLY #271671 /* ~Duke Eltan shares your view on this, Captain?~ */ GOTO 414
  IF ~  CheckStatGT(Player1,18,INT)
~ THEN REPLY #271672 /* ~Hurbold Duethkatha, he did not know about this?~ */ GOTO 415
END

IF WEIGHT #40 ~  Global("EECorUnderc","BG0112",1)
~ THEN BEGIN 429 // from:
  SAY #271673 /* ~They don't even need to bribe the Flaming Fist to do their business down here.~ */
  IF ~~ THEN REPLY #271674 /* ~I was already wondering why nobody cares about a Flaming Fist officer walking into here.~ */ DO ~SetGlobal("EECorUnderc","BG0112",2)
~ GOTO 430
  IF ~~ THEN REPLY #271675 /* ~Let me guess, it's unofficially owned by the Fist to improve their salary?~ */ DO ~SetGlobal("EECorUnderc","BG0112",2)
~ GOTO 430
END

IF ~~ THEN BEGIN 430 // from: 429.1 429.0
  SAY #271676 /* ~It's Duke Eltan's policy to grant the city what any city of that size needs anyway. He claims that we'd fight a useless battle if we'd try to prevent such locations, so it's better to know where it is and how things are managed and just see that it doesn't get out of bounds.~ */
  IF ~~ THEN REPLY #271677 /* ~A practical man, not bad. So the members of the Flaming Fist are admitted here?~ */ GOTO 431
  IF ~~ THEN REPLY #271678 /* ~No city beyond some size is free of corruption. It's a shame that the Flaming Fist doesn't intervene.~ */ GOTO 431
END

IF ~~ THEN BEGIN 431 // from: 430.1 430.0
  SAY #271679 /* ~Members of the Flaming Fist are free to conduct their private hours as they want. At least within limits...an officer will not visit such a place. I've never been here before though I know pretty well what's going on here.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #41 ~  Global("EECorThNotYet","BG1200",1)
~ THEN BEGIN 432 // from:
  SAY #271680 /* ~The Iron Throne's headquarters, <CHARNAME>. Keep the location memorized but let's move on for now.~ */
  IF ~~ THEN REPLY #271681 /* ~I can't wait to pay those bastards my visit, Captain, why wait?~ */ DO ~SetGlobal("EECorThNotYet","BG1200",2)
~ GOTO 433
  IF ~~ THEN REPLY #271682 /* ~What, why spare them after all they've done to the Sword Coast - and to me?~ */ DO ~SetGlobal("EECorThNotYet","BG1200",2)
~ GOTO 433
  IF ~~ THEN REPLY #271683 /* ~Anything I've missed, Corwin? I thought here was our goal.~ */ DO ~SetGlobal("EECorThNotYet","BG1200",2)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.2 432.1 432.0
  SAY #271684 /* ~I agree that we have any reason to storm this place. Just not now, please, <CHARNAME>.~ */
  IF ~~ THEN GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.0
  SAY #271685 /* ~Eltan and Scar have their suspicion against the Iron Throne and your experience with the organisation has added more evidence, still, we need to make sure we find out everything before we make our move.~ */
  IF ~~ THEN GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #271686 /* ~I suggest to first finish the task that Scar gave us, gather more background information and report to Eltan. We should not assail this mighty organisation without the consent of Eltan and the authorities. It may backfire against us.~ */
  IF ~~ THEN REPLY #271687 /* ~Your position is noted, Captain. Must I remind you that you put yourself under my command?~ */ GOTO 436
  IF ~~ THEN REPLY #271688 /* ~Very well, let's make sure that we have enough evidence against them to make it impossible they get their heads out of the noose.~ */ GOTO 436
  IF ~~ THEN REPLY #271689 /* ~You turn out to be a nuisance and a hindrance, Captain Corwin. It's best you go back to your master Scar.~ */ GOTO 437
  IF ~~ THEN REPLY #271690 /* ~I take you along since you know this town and its proceedings better than me, Corwin. Thanks for the advice.~ */ GOTO 436
END

IF ~~ THEN BEGIN 436 // from: 435.3 435.1 435.0
  SAY #271691 /* ~My advice was meant as that of a companion and, eh, a friend.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 437 // from: 435.2
  SAY #271692 /* ~Fine, I have things to do in the Fist. I will not waste my time with you any longer. You're making a mistake, but it's your mistake to make. Take care.~ */
  IF ~~ THEN DO ~SetGlobal("EECorwinBG1","Global",51)
EscapeAreaDestroy(50)
~ EXIT
END

IF WEIGHT #42 ~  Global("EECorMoreTaskSC","BG1100",1)
~ THEN BEGIN 438 // from:
  SAY #271693 /* ~I'm glad you accepted the additional tasks, <CHARNAME>.~ */
  IF ~~ THEN REPLY #271694 /* ~We can really make use of that extra money.~ */ DO ~SetGlobal("EECorMoreTaskSC","BG1100",2)
~ GOTO 439
  IF ~~ THEN REPLY #271695 /* ~I want to make sure that the right people are on my side when I need them.~ */ DO ~SetGlobal("EECorMoreTaskSC","BG1100",2)
~ GOTO 440
  IF ~~ THEN REPLY #271696 /* ~My golden heart makes me do those deeds.~ */ DO ~SetGlobal("EECorMoreTaskSC","BG1100",2)
~ GOTO 441
END

IF ~~ THEN BEGIN 439 // from: 438.0
  SAY #271697 /* ~I don't doubt that you spend it well, in all our interest.~ */
  IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 440 // from: 438.1
  SAY #271698 /* ~I can't and won't speak for all of the Flaming Fist. The right people have already noticed your behaviour.~ */
  IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 441 // from: 438.2
  SAY #271699 /* ~I like that you keep your humour in these time. We need such spirit.~ */
  IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 442 // from: 441.0 440.0 439.0
  SAY #271700 /* ~Whatever...I don't regret my choice to follow you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #43 ~  Global("EECorIrThr","LOCALS",1)
~ THEN BEGIN 443 // from:
  SAY #271701 /* ~Acolytes, doppelgangers...this Sarevok has established a personal cult here to replace the Iron Throne somehow.~ */
  IF ~~ THEN REPLY #271702 /* ~Without the guy himself this turns out to be a dead end.~ */ DO ~SetGlobal("EECorIrThr","LOCALS",2)
~ GOTO 444
  IF ~~ THEN REPLY #271703 /* ~We have nothing to proof to the Duke, so what?~ */ DO ~SetGlobal("EECorIrThr","LOCALS",2)
~ GOTO 444
  IF ~~ THEN REPLY #271704 /* ~They escaped to Candlekeep where we cannot reach them.~ */ DO ~SetGlobal("EECorIrThr","LOCALS",2)
~ GOTO 446
END

IF ~~ THEN BEGIN 444 // from: 443.1 443.0
  SAY #271705 /* ~I propose we report back to Duke Eltan. There we should plan the next steps.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #271706 /* ~It seems that we need to go to Candlekeep to find those Iron Throne leaders.~ */
  IF ~~ THEN REPLY #271704 /* ~They escaped to Candlekeep where we cannot reach them.~ */ GOTO 446
  IF ~~ THEN REPLY #271707 /* ~Damned bastards, I hope your superiors won't get upset about our failure here.~ */ GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.1 445.0 443.2
  SAY #271708 /* ~Why can't we follow them to Candlekeep, <CHARNAME>, it's your home - or at least it was?~ */
  IF ~~ THEN REPLY #271709 /* ~They won't let anyone in there without a valuable tome to present to the library.~ */ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #271710 /* ~That makes it important that we consult with Scar and Eltan about it. The dukes should have the means to let us pursue those bastards to Candlekeep.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #44 ~  Global("EEBendalCorw2","Global",2)
~ THEN BEGIN 448 // from:
  SAY #271711 /* ~Even here he managed to get the place infiltrated with these creatures.~ */
  IF ~~ THEN REPLY #271712 /* ~I know my old home and its people well enough to tell them apart from any doppelgangers, don't fear.~ */ DO ~SetGlobal("EEBendalCorw2","Global",3)
SetGlobal("EEBendalCorw3","Global",3)
SetGlobal("EEBendalCorw4","Global",3)
~ GOTO 449
  IF ~~ THEN REPLY #271713 /* ~We can't trust anyone anymore, except ourselves.~ */ DO ~SetGlobal("EEBendalCorw2","Global",3)
SetGlobal("EEBendalCorw3","Global",3)
SetGlobal("EEBendalCorw4","Global",3)
~ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.1 448.0
  SAY #271714 /* ~(She attempts a smile that ends up as a grin.) I have started to trust you, <CHARNAME>. Sometimes I trust you more than some of my comrades in the Fist by now. There is something foul in our ranks just like it is with people in this place.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #45 ~  Global("EECorwPrison","BG0607",1)
~ THEN BEGIN 450 // from:
  SAY #271715 /* ~<CHARNAME>, leave this *true* murderer alone, we need no scum like this. Remember I'm still a member of the REAL Flaming Fist, not that Angelo troupe.~ */
  IF ~~ THEN GOTO 451
END

IF ~~ THEN BEGIN 451 // from: 450.0
  SAY #271716 /* ~This is MY headquarters and I get us out here while this gnome stays inside.~ */
  IF ~~ THEN REPLY #271717 /* ~No, Captain, I cannot allow you to get involved deeper with our misdeeds and compromise yourself...~ */ GOTO 452
  IF ~~ THEN REPLY #271718 /* ~Corwin, of course, how could I forget. You know every inch of this building.~ */ GOTO 453
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #271719 /* ~Oh, shut up.~ */
  IF ~~ THEN GOTO 454
END

IF ~~ THEN BEGIN 453 // from: 451.1
  SAY #271720 /* ~Indeed there is a way out here unknown to Angelo and I have one of the keys for it.~ */
  IF ~~ THEN GOTO 454
END

IF ~~ THEN BEGIN 454 // from: 453.0 452.0
  SAY #271721 /* ~You, the Bhaalspawn criminal, you are the best option Baldur's Gate has at this moment. For my home town, I will not stand aside idle, we must go on together.~ */
  IF ~~ THEN DO ~SetGlobal("EECorwPrison","BG0607",2)
StartCutSceneMode()
Wait(2)
StartCutSceneEx("Capcut02",FALSE)
~ EXIT
END

IF WEIGHT #46 ~  Global("EERescEltan","Locals",1)
~ THEN BEGIN 455 // from:
  SAY #271722 /* ~(Corwin has put her hand on your arm and stops you to turn to her.)~ */
  IF ~~ THEN DO ~SetGlobal("EERescEltan","Locals",2)
~ GOTO 456
END

IF ~~ THEN BEGIN 456 // from: 455.0
  SAY #271723 /* ~<CHARNAME>, whatever they say about you and whatever will happen...these deeds you now do for the Duke, for Baldur's Gate, ah, do I sound melodramatic already? Ehem, what I wanted to say is like, you do it for me as well. And if nobody will thank you for it and even if we fail...~ */
  IF ~~ THEN GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #260226 /* ~Thank you.~ */
  IF ~~ THEN GOTO 458
END

IF ~~ THEN BEGIN 458 // from: 457.0
  SAY #271724 /* ~(She has turned and walks ahead without waiting for your answer and all you can do is follow her.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 459 // from:
  SAY #271521 /* ~The traitor Dosan. Your reign here will be short. There are more loyal officers in Baldur's Gate than your limited scheming can silence.~ */
  IF ~  NumInPartyAliveGT(1)
NumInPartyAliveLT(6)
~ THEN REPLY #202144 /* ~You aren't the commander of the Flaming Fist; that title belongs to Duke Eltan, someone who deserves it. You're a pretender, and a rather ugly and smelly one at that. A lobotomized gibberling would make a better leader than you.~ */ EXTERN ~ANGELO~ 1
  IF ~  NumInPartyAlive(6)
~ THEN REPLY #202144 /* ~You aren't the commander of the Flaming Fist; that title belongs to Duke Eltan, someone who deserves it. You're a pretender, and a rather ugly and smelly one at that. A lobotomized gibberling would make a better leader than you.~ */ EXTERN ~ANGELO~ 9
  IF ~  NumInPartyAlive(1)
~ THEN REPLY #202144 /* ~You aren't the commander of the Flaming Fist; that title belongs to Duke Eltan, someone who deserves it. You're a pretender, and a rather ugly and smelly one at that. A lobotomized gibberling would make a better leader than you.~ */ EXTERN ~ANGELO~ 4
  IF ~~ THEN REPLY #202145 /* ~Hey, come on now. We all know that you're in the employ of Sarevok. We'll pay you more if you let us go.~ */ EXTERN ~ANGELO~ 2
  IF ~~ THEN REPLY #202146 /* ~Laugh now, Angelo. When your arms and legs are severed and you're lying on the ground crying like a little baby, hee hee, then we'll see who has the last laugh.~ */ EXTERN ~ANGELO~ 3
  IF ~~ THEN REPLY #211281 /* ~Couldn't you just let us go? Oh pleaseohpleaseohplease? We won't tell anyone. Honest. Pretty please? Just think about it.~ */ EXTERN ~ANGELO~ 4
  IF ~  InParty("Corwin")
~ THEN EXTERN ~ANGELO~ 11
END

IF ~~ THEN BEGIN 460 // from:
  SAY #271524 /* ~Jessa, we're among friends here. But listen...~ */
  IF ~~ THEN GOTO 461
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #271525 /* ~The official part, Lieutenant Vai, you have orders to return to Baldur's Gate and report back to commander Scar.~ */
  IF ~~ THEN GOTO 462
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #271526 /* ~The friendly advice, Jessa, take care and keep your eyes open. There is tension inside the fist and we can't trust everybody blindly any more. Politics take their toll.~ */
  IF ~~ THEN EXTERN ~VAI~ 10
END

IF ~~ THEN BEGIN 463 // from:
  SAY #271529 /* ~Duke Eltan, this is the party that Commander Scar and me have reported about before. <CHARNAME> is the very one who already crossed the Iron Throne's plans in Nashkel and Cloakwood.~ */
  IF ~~ THEN EXTERN ~DELTAN~ 4
  IF ~  InParty("Corwin")
~ THEN EXTERN ~DELTAN~ 17
END

IF ~~ THEN BEGIN 464 // from:
  SAY #271438 /* ~Yes, I am. You are...~ */
  IF ~~ THEN EXTERN ~PETRIN~ 8
END

IF ~~ THEN BEGIN 465 // from:
  SAY #271440 /* ~We'll see if we *must*. I suggest you tell <CHARNAME> here who you are and what the problem is.~ */
  IF ~~ THEN EXTERN ~PETRIN~ 1
END

IF ~~ THEN BEGIN 466 // from:
  SAY #271441 /* ~Laola, they already agreed to cooperate with Scar and me as you can see.~ */
  IF ~~ THEN REPLY #210977 /* ~Why should I? Are you going to try to make me?~ */ EXTERN ~LAOLA~ 1
  IF ~~ THEN REPLY #210978 /* ~What would he have to say to me? Why do I need him?~ */ EXTERN ~LAOLA~ 2
  IF ~~ THEN REPLY #210979 /* ~If he wishes, then I will speak with him. Where is he?~ */ EXTERN ~LAOLA~ 3
  IF ~  InParty("Corwin")
~ THEN EXTERN ~LAOLA~ 5
  IF ~  InParty("Corwin")
~ THEN EXTERN ~LAOLA~ 4
END

IF ~~ THEN BEGIN 467 // from:
  SAY #271444 /* ~I'm Captain Corwin of the Flaming Fist. We're here to ensure the Duke's safety.~ */
  IF ~~ THEN REPLY #271445 /* ~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now? ~ */ EXTERN ~HOUSG3~ 5
  IF ~~ THEN REPLY #271446 /* ~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate.~ */ EXTERN ~HOUSG3~ 5
  IF ~  OR(2)
Global("X#KagainCaravan","GLOBAL",5)
PartyHasItem("X#SILSH")
~ THEN REPLY #271447 /* ~We bring news for Lord and Lady Silvershield. We believe that we have found news of their son. Any chance this pin is one of yours?~ */ EXTERN ~HOUSG3~ 8
END

IF ~~ THEN BEGIN 468 // from:
  SAY #271449 /* ~Hello, Skie...~ */
  IF ~~ THEN EXIT
  IF ~  InParty("Corwin")
!InParty("Eldoth")
~ THEN EXTERN ~SKIE~ 15
  IF ~  InParty("Corwin")
!InParty("Eldoth")
~ THEN GOTO 469
  IF ~  InParty("Corwin")
!InParty("Eldoth")
~ THEN EXTERN ~SKIE~ 14
END

IF ~~ THEN BEGIN 469 // from: 468.2
  SAY #271451 /* ~Now...apart from the fact that your father probably never would agree to it, there's something like discipline very high up in the Fist's rules, while free is...well, it's a dream anyway.~ */
  IF ~~ THEN EXIT
  IF ~  InParty("Corwin")
!InParty("Eldoth")
~ THEN EXTERN ~SKIE~ 15
END

IF ~~ THEN BEGIN 470 // from:
  SAY #271454 /* ~Greetings, Duke Entar.~ */
  IF ~~ THEN EXTERN ~ENTAR~ 10
END

IF ~~ THEN BEGIN 471 // from:
  SAY #271456 /* ~The Flaming Fist is in control of the situation, be assured, Sir.~ */
  IF ~~ THEN EXTERN ~ENTAR~ 11
END

IF ~~ THEN BEGIN 472 // from:
  SAY #220188 /* ~Madness in this much-lauded tower? That there be malice here, I have no doubt... but madness? Never.~ */
  IF ~~ THEN EXTERN ~TRIADO~ 7
END

IF ~~ THEN BEGIN 473 // from:
  SAY #271459 /* ~Sarevok...<CHARNAME>, we have guessed right all the time. It's time to see that this ends now. In the name of the Flaming Fist, man, speak!~ */
  IF ~~ THEN EXTERN ~TRIADO~ 3
END

IF ~~ THEN BEGIN 474 // from:
  SAY #271460 /* ~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226873 /* ~Return to Candlekeep
My old friend Bendalis has noticed something peculiar about recent visitors to Candlekeep. In particular he noticed "un-merchant-like merchants" and a sage named Koveras who arrived at about the same time.~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.1
  SAY #271461 /* ~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226873 /* ~Return to Candlekeep
My old friend Bendalis has noticed something peculiar about recent visitors to Candlekeep. In particular he noticed "un-merchant-like merchants" and a sage named Koveras who arrived at about the same time.~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from:
  SAY #271460 /* ~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226873 /* ~Return to Candlekeep
My old friend Bendalis has noticed something peculiar about recent visitors to Candlekeep. In particular he noticed "un-merchant-like merchants" and a sage named Koveras who arrived at about the same time.~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN GOTO 477
END

IF ~~ THEN BEGIN 477 // from: 476.1
  SAY #271461 /* ~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226873 /* ~Return to Candlekeep
My old friend Bendalis has noticed something peculiar about recent visitors to Candlekeep. In particular he noticed "un-merchant-like merchants" and a sage named Koveras who arrived at about the same time.~ */ EXIT
END

IF ~~ THEN BEGIN 478 // from:
  SAY #271460 /* ~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226874 /* ~Return to Candlekeep
My old friend Bendalis is suspicious about the new arrival Koveras. He also thinks Shistal has been acting oddly.~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN GOTO 479
END

IF ~~ THEN BEGIN 479 // from: 478.1
  SAY #271461 /* ~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #226874 /* ~Return to Candlekeep
My old friend Bendalis is suspicious about the new arrival Koveras. He also thinks Shistal has been acting oddly.~ */ EXIT
END

IF ~~ THEN BEGIN 480 // from:
  SAY #271463 /* ~The Fist is not in the service of the Iron Throne, Rielta Anchev. In fact my presence here is based on the fact that your involvement with that Iron Crisis will come to an end.~ */
  IF ~~ THEN DO ~SetGlobal("Criminal","GLOBAL",1)
~ EXTERN ~RIELTA~ 1
  IF ~  IsValidForPartyDialogue("Yeslick")
~ THEN DO ~SetGlobal("Criminal","GLOBAL",1)
~ EXTERN ~YESLIJ~ 10
  IF ~  InParty("Corwin")
~ THEN EXTERN ~RIELTA~ 15
  IF ~  InParty("Corwin")
~ THEN GOTO 481
  IF ~  InParty("Corwin")
~ THEN EXTERN ~RIELTA~ 14
END

IF ~~ THEN BEGIN 481 // from: 480.3
  SAY #271465 /* ~Dosan, my superior? You must be joking, you can't bribe Scar or Eltan or me to jump to your tune, Anchev. I know where my duties are, surely not serving the Iron Throne against the town I swore to protect.~ */
  IF ~~ THEN DO ~SetGlobal("Criminal","GLOBAL",1)
~ EXTERN ~RIELTA~ 1
  IF ~  IsValidForPartyDialogue("Yeslick")
~ THEN DO ~SetGlobal("Criminal","GLOBAL",1)
~ EXTERN ~YESLIJ~ 10
  IF ~  InParty("Corwin")
~ THEN EXTERN ~RIELTA~ 15
END

IF ~~ THEN BEGIN 482 // from:
  SAY #271468 /* ~I fear the worst after what we heard at Candlekeep. What do you have for us, man?~ */
  IF ~~ THEN REPLY #271471 /* ~What do you propose, Corwin?~ */ GOTO 485
  IF ~~ THEN REPLY #271472 /* ~Bah, a drunken fool's babbling, we can't waste time, we need to track down Sarevok.~ */ GOTO 486
  IF ~~ THEN REPLY #271473 /* ~As a minimum we may hear him out at the Blushing Mermaid.~ */ GOTO 485
  IF ~~ THEN REPLY #271474 /* ~We should immediately go to Flaming Fist headquarters to find out what's going on.~ */ GOTO 485
  IF ~  InParty("Corwin")
~ THEN GOTO 484
  IF ~  InParty("Corwin")
~ THEN GOTO 483
  IF ~  InParty("Corwin")
~ THEN EXTERN ~HUSAM2~ 22
END

IF ~~ THEN BEGIN 483 // from: 482.5
  SAY #271469 /* ~Scar dead? That can't be...Eltan diseased, probably poisoned. <CHARNAME>, we must find out what's going on before we face Sarevok. That guy knows a lot.~ */
  IF ~~ THEN REPLY #271471 /* ~What do you propose, Corwin?~ */ GOTO 485
  IF ~~ THEN REPLY #271472 /* ~Bah, a drunken fool's babbling, we can't waste time, we need to track down Sarevok.~ */ GOTO 486
  IF ~~ THEN REPLY #271473 /* ~As a minimum we may hear him out at the Blushing Mermaid.~ */ GOTO 485
  IF ~~ THEN REPLY #271474 /* ~We should immediately go to Flaming Fist headquarters to find out what's going on.~ */ GOTO 485
  IF ~  InParty("Corwin")
~ THEN GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.4 482.4
  SAY #271470 /* ~All this talk about Angelo Dosan, remember. If that scoundrel is now in charge of the Flaming Fist, we need to beware, not many may still be loyal to our true course, the majority may follow Dosan in their duty while not knowing the truth.~ */
  IF ~~ THEN REPLY #271471 /* ~What do you propose, Corwin?~ */ GOTO 485
  IF ~~ THEN REPLY #271472 /* ~Bah, a drunken fool's babbling, we can't waste time, we need to track down Sarevok.~ */ GOTO 486
  IF ~~ THEN REPLY #271473 /* ~As a minimum we may hear him out at the Blushing Mermaid.~ */ GOTO 485
  IF ~~ THEN REPLY #271474 /* ~We should immediately go to Flaming Fist headquarters to find out what's going on.~ */ GOTO 485
END

IF ~~ THEN BEGIN 485 // from: 486.0 484.3 484.2 484.0 483.3 483.2 483.0 482.3 482.2 482.0
  SAY #271475 /* ~Let us first go to the Blushing Mermaid to find out more before we investigate the Flaming Fist headquarters. We need to avoid another trap if there is one.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 486 // from: 484.1 483.1 482.1
  SAY #271476 /* ~Truth comes from the mouth of fools and drunkards more often than you think.~ */
  IF ~~ THEN GOTO 485
END

IF ~~ THEN BEGIN 487 // from:
  SAY #271477 /* ~Sorrel, nothing is lost as long as the remaining comrades who are not corrupted by Angelo stand together. You know who's on our side, go spread the news that <CHARNAME> is our hope at this moment to help me solve this crisis.~ */
  IF ~~ THEN JOURNAL #209703 /* ~Angelo is making a power grab within the Flaming Fist and may be responsible both for Duke Eltan's sickness and Scar's death. His reputed connections to the Iron Throne leave me more than suspicious. It's a question of where to turn. Shall I go back to the Iron Throne and continue my investigations there or should I seek out Duke Eltan at the Flaming Fist compound and test my suspicions regarding his disease?~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN GOTO 488
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SORREL~ 4
END

IF ~~ THEN BEGIN 488 // from: 487.1
  SAY #271479 /* ~Be assured we will persist and rebuild the Flaming Fist when this is over. We will not forget those who stayed loyal, Sorrel.~ */
  IF ~~ THEN JOURNAL #209703 /* ~Angelo is making a power grab within the Flaming Fist and may be responsible both for Duke Eltan's sickness and Scar's death. His reputed connections to the Iron Throne leave me more than suspicious. It's a question of where to turn. Shall I go back to the Iron Throne and continue my investigations there or should I seek out Duke Eltan at the Flaming Fist compound and test my suspicions regarding his disease?~ */ EXIT
END

IF ~~ THEN BEGIN 489 // from:
  SAY #271477 /* ~Sorrel, nothing is lost as long as the remaining comrades who are not corrupted by Angelo stand together. You know who's on our side, go spread the news that <CHARNAME> is our hope at this moment to help me solve this crisis.~ */
  IF ~~ THEN JOURNAL #209704 /* ~Sorrel of the Flaming Fist has urged me to investigate the Iron Throne base once more and the Fist headquarters. I fear I was a bit brusque with him, however, and he left without giving me the reasons for such a request.~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN GOTO 490
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SORREL~ 5
END

IF ~~ THEN BEGIN 490 // from: 489.1
  SAY #271479 /* ~Be assured we will persist and rebuild the Flaming Fist when this is over. We will not forget those who stayed loyal, Sorrel.~ */
  IF ~~ THEN JOURNAL #209704 /* ~Sorrel of the Flaming Fist has urged me to investigate the Iron Throne base once more and the Fist headquarters. I fear I was a bit brusque with him, however, and he left without giving me the reasons for such a request.~ */ EXIT
END

IF ~~ THEN BEGIN 491 // from:
  SAY #271480 /* ~You know what must be done to save his life while we chase the ones who did this and are out to do even worse. ~ */
  IF ~  !Global("TalkedToPang","GLOBAL",1)
~ THEN DO ~DialogueInterrupt(FALSE)
EraseJournalEntry(227137)
EraseJournalEntry(227138)
EraseJournalEntry(227139)
EraseJournalEntry(227140)
EraseJournalEntry(227141)
EraseJournalEntry(227142)
EraseJournalEntry(227143)
EraseJournalEntry(227144)
EraseJournalEntry(226963)
EraseJournalEntry(227145)
EraseJournalEntry(226959)
EraseJournalEntry(226984)
EraseJournalEntry(231466)
AddJournalEntry(231467,QUEST)
SetGlobal("EltanMove","GLOBAL",1)
SetGlobal("BroughtEltan","GLOBAL",1)
TakePartyItem("MISC55")
DestroyItem("MISC55")
AddexperienceParty(2500)
MoveToPoint([431.171])
CreateCreatureImpassable("DELTAN2",[449.121],SE)
ChangeAIScript("SHOUT",OVERRIDE)
ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
Wait(1)
MoveToPoint([461.197])
Face(S)
DialogueInterrupt(TRUE)
SetGlobal("EERescEltan","Locals",3)
~ SOLVED_JOURNAL #227146 /* ~Duke Eltan's Illness
I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ */ EXIT
  IF ~  Global("TalkedToPang","GLOBAL",1)
~ THEN DO ~DialogueInterrupt(FALSE)
EraseJournalEntry(227137)
EraseJournalEntry(227138)
EraseJournalEntry(227139)
EraseJournalEntry(227140)
EraseJournalEntry(227141)
EraseJournalEntry(227142)
EraseJournalEntry(227143)
EraseJournalEntry(227144)
EraseJournalEntry(226963)
EraseJournalEntry(227145)
EraseJournalEntry(226959)
EraseJournalEntry(226984)
EraseJournalEntry(231466)
SetGlobal("EltanMove","GLOBAL",1)
SetGlobal("BroughtEltan","GLOBAL",1)
TakePartyItem("MISC55")
DestroyItem("MISC55")
AddexperienceParty(2500)
MoveToPoint([431.171])
CreateCreatureImpassable("DELTAN2",[449.121],SE)
ChangeAIScript("SHOUT",OVERRIDE)
ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
Wait(1)
MoveToPoint([461.197])
Face(S)
DialogueInterrupt(TRUE)
SetGlobal("EERescEltan","Locals",3)
~ SOLVED_JOURNAL #227146 /* ~Duke Eltan's Illness
I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ */ EXIT
  IF ~  InParty("Corwin")
~ THEN DO ~SetGlobal("EERescEltan","Locals",3)
~ EXTERN ~HARBOR~ 14
END

IF ~~ THEN BEGIN 492 // from:
  SAY #271482 /* ~Sergeant Kent, make your report.~ */
  IF ~~ THEN REPLY #220536 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ EXTERN ~KENT~ 3
  IF ~~ THEN REPLY #271490 /* ~Kent, why don't you think Rashad's a healer?~ */ EXTERN ~KENT~ 8
  IF ~  InParty("Corwin")
~ THEN GOTO 495
  IF ~  InParty("Skie")
~ THEN EXTERN ~SKIEJ~ 14
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 7
  IF ~  InParty("Corwin")
~ THEN GOTO 494
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 6
  IF ~  InParty("Corwin")
~ THEN GOTO 493
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 5
END

IF ~~ THEN BEGIN 493 // from: 492.7
  SAY #271484 /* ~Sergeant Kent, I have not heard this last remark about deserting. Listen, man, our cause is not lost. We are here to save Eltan. You will go and report to Lieutenant Vai right away. She and Laola Axhand will regather all those who can still be trusted. The usurper Dosan will be removed pretty soon with his conveyor Sarevok.~ */
  IF ~~ THEN REPLY #220536 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ EXTERN ~KENT~ 3
  IF ~~ THEN REPLY #271490 /* ~Kent, why don't you think Rashad's a healer?~ */ EXTERN ~KENT~ 8
  IF ~  InParty("Corwin")
~ THEN GOTO 495
  IF ~  InParty("Skie")
~ THEN EXTERN ~SKIEJ~ 14
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 7
  IF ~  InParty("Corwin")
~ THEN GOTO 494
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 6
END

IF ~~ THEN BEGIN 494 // from: 493.5 492.5
  SAY #271486 /* ~One final question, Kent. Where did they bring Scar's body, we may still be able to resurrect him?~ */
  IF ~~ THEN REPLY #220536 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ EXTERN ~KENT~ 3
  IF ~~ THEN REPLY #271490 /* ~Kent, why don't you think Rashad's a healer?~ */ EXTERN ~KENT~ 8
  IF ~  InParty("Corwin")
~ THEN GOTO 495
  IF ~  InParty("Skie")
~ THEN EXTERN ~SKIEJ~ 14
  IF ~  InParty("Corwin")
~ THEN EXTERN ~KENT~ 7
END

IF ~~ THEN BEGIN 495 // from: 494.2 493.2 492.2
  SAY #271489 /* ~Scar is lost thanks to Angelo Dosan, let's focus on saving Eltan at least. We still have that time before we need to deal with Sarevok.~ */
  IF ~~ THEN REPLY #220536 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ EXTERN ~KENT~ 3
  IF ~~ THEN REPLY #271490 /* ~Kent, why don't you think Rashad's a healer?~ */ EXTERN ~KENT~ 8
END

IF ~~ THEN BEGIN 496 // from:
  SAY #271492 /* ~Angelo is never leading the Flaming Fist and Duke Eltan is not dead.~ */
  IF ~~ THEN EXTERN ~BELT~ 5
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SAREVO~ 26
  IF ~  InParty("Corwin")
~ THEN GOTO 498
  IF ~  InParty("Corwin")
Global("EERescEltan","Locals",3)
~ THEN GOTO 497
END

IF ~~ THEN BEGIN 497 // from: 496.3
  SAY #271493 /* ~<CHARNAME> and me have assured that Eltan is in safety and he will recover to take back responsibility of our forces.~ */
  IF ~~ THEN EXTERN ~BELT~ 5
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SAREVO~ 26
  IF ~  InParty("Corwin")
~ THEN GOTO 498
END

IF ~~ THEN BEGIN 498 // from: 497.2 496.2
  SAY #271494 /* ~In the name of the Flaming Fist, Sarevok, you are under arrest.~ */
  IF ~~ THEN EXTERN ~BELT~ 5
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SAREVO~ 26
END

IF ~~ THEN BEGIN 499 // from:
  SAY #271423 /* ~Oh, Thuibuld, stop the charade. I'm not the first nor the last of the Fist to be welcome here.~ */
  IF ~~ THEN EXTERN ~ALATOS~ 22
END

IF ~~ THEN BEGIN 500 // from:
  SAY #271429 /* ~<CHARNAME>, you're an idiot. It's wonder you made it this far.~ */
  IF ~~ THEN REPLY #271430 /* ~Wait...~ */ EXTERN ~ALATOS~ 3
END

IF ~~ THEN BEGIN 501 // from:
  SAY #271431 /* ~Where did you get this ring you carry, creature?~ */
  IF ~~ THEN REPLY #219886 /* ~Your flesh! It's all green and alive and—and crawling! What has done this to you?!~ */ EXTERN ~SHVERT~ 1
  IF ~~ THEN REPLY #219894 /* ~Stand aside and grant me passage—I have no fear of ye.~ */ EXTERN ~SHVERT~ 2
  IF ~~ THEN REPLY #219904 /* ~I have heard that foul things breed in these sewer's airs and now I have seen it for my own eyes. Let me put you out of your misery, whatever you may be.~ */ EXTERN ~SHVERT~ 3
  IF ~  InParty("Corwin")
~ THEN GOTO 503
  IF ~  InParty("Corwin")
~ THEN GOTO 502
  IF ~  InParty("Corwin")
~ THEN EXTERN ~SHVERT~ 4
END

IF ~~ THEN BEGIN 502 // from: 501.4
  SAY #271433 /* ~I've no intention to take this from you, creature, if *he* throws it away...it's worth nothing to me today.~ */
  IF ~~ THEN REPLY #219886 /* ~Your flesh! It's all green and alive and—and crawling! What has done this to you?!~ */ EXTERN ~SHVERT~ 1
  IF ~~ THEN REPLY #219894 /* ~Stand aside and grant me passage—I have no fear of ye.~ */ EXTERN ~SHVERT~ 2
  IF ~~ THEN REPLY #219904 /* ~I have heard that foul things breed in these sewer's airs and now I have seen it for my own eyes. Let me put you out of your misery, whatever you may be.~ */ EXTERN ~SHVERT~ 3
  IF ~  InParty("Corwin")
~ THEN GOTO 503
END

IF ~~ THEN BEGIN 503 // from: 502.3 501.3
  SAY #271434 /* ~Let's forget it, <CHARNAME>, I gave that ring once to Beno. This is the best use for it now. Let's leave this poor creature now, please.~ */
  IF ~~ THEN REPLY #219886 /* ~Your flesh! It's all green and alive and—and crawling! What has done this to you?!~ */ EXTERN ~SHVERT~ 1
  IF ~~ THEN REPLY #219894 /* ~Stand aside and grant me passage—I have no fear of ye.~ */ EXTERN ~SHVERT~ 2
  IF ~~ THEN REPLY #219904 /* ~I have heard that foul things breed in these sewer's airs and now I have seen it for my own eyes. Let me put you out of your misery, whatever you may be.~ */ EXTERN ~SHVERT~ 3
END

IF ~~ THEN BEGIN 504 // from:
  SAY #252113 /* ~...Beno.~ [BD52113] */
  IF ~~ THEN EXTERN ~BDFAMARI~ 29
END

IF ~~ THEN BEGIN 505 // from:
  SAY #271408 /* ~I accompany <CHARNAME> in <PRO_HISHER> tasks which are none of your business.~ */
  IF ~~ THEN EXTERN ~BDFAMARI~ 30
END

IF ~~ THEN BEGIN 506 // from:
  SAY #271415 /* ~You abandoned me and your daughter years ago. She owes you nothing. You'll never come near to her, never.~ */
  IF ~~ THEN EXTERN ~BDFAMARI~ 35
END

IF WEIGHT #47 ~  Global("EECorBeno","BG0224",5)
~ THEN BEGIN 507 // from:
  SAY #271418 /* ~So you know him now, (sigh). I killed him twice before to keep him off Rohma. He was resurrected by foul priests each time.~ */
  IF ~~ THEN REPLY #271419 /* ~You may get another chance soon if he's in league with our opponents.~ */ DO ~SetGlobal("EECorBeno","BG0224",6)
~ GOTO 508
  IF ~~ THEN REPLY #271420 /* ~We already suspect that this Sarevok has such priests in his service.~ */ DO ~SetGlobal("EECorBeno","BG0224",6)
~ GOTO 508
END

IF ~~ THEN BEGIN 508 // from: 507.1 507.0
  SAY #271421 /* ~You heard his words. The only way I can feel save for my daughter is to end all this - and him.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 509 // from:
  SAY #273832 /* ~Be careful, <CHARNAME>!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("LCA_CorwinWitnessedDuel","GLOBAL",1)
SetGlobal("bd_asha_duel","global",3)
StartCutSceneEx("bdcut44",FALSE)
~ EXIT
END

IF WEIGHT #48 ~  Global("LCA_CorwinWitnessedDuel","GLOBAL",1)
OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 510 // from:
  SAY #273833 /* ~<CHARNAME> - thank goodness! (She gives you a hug)~ */
  IF ~~ THEN REPLY #273834 /* ~Schael? Were you worried about me?~ */ DO ~SetGlobal("LCA_CorwinWitnessedDuel","GLOBAL",2)
~ GOTO 512
END

IF WEIGHT #49 ~  Global("LCA_CorwinWitnessedDuel","GLOBAL",1)
!Global("bd_corwin_romanceactive","global",1)
!Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 511 // from:
  SAY #273835 /* ~<CHARNAME> - thank goodness!~ */
  IF ~~ THEN REPLY #273836 /* ~Captain? Were you worried about me?~ */ DO ~SetGlobal("LCA_CorwinWitnessedDuel","GLOBAL",2)
~ GOTO 512
END

IF ~~ THEN BEGIN 512 // from: 511.0 510.0
  SAY #273837 /* ~Gods, of course I was! (She punches you in the shoulder)~ */
  IF ~~ THEN REPLY #271060 /* ~Ow!~ */ GOTO 514
END

IF ~~ THEN BEGIN 513 // from: 514.1 514.0
  SAY #273838 /* ~Look! The crusaders are fleeing or laying down their weapons. Your victory has likely saved many lives, on both sides. I'll make sure that the higher-ups know about what you did here today. Let's go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 514 // from: 512.0
  SAY #273839 /* ~Ashatiel was a dangerous opponent. Few would have agreed to a duel with her.~ */
  IF ~~ THEN REPLY #273840 /* ~If she was the best that the crusade had to offer, then they are doomed.~ */ GOTO 513
  IF ~~ THEN REPLY #273841 /* ~Very dangerous. It's a shame that she threw her life away for such a lost cause.~ */ GOTO 513
END
