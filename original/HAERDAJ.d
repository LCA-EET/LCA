// creator  : weidu (version 24900)
// argument : HAERDAJ.DLG
// game     : .
// source   : ./override/HAERDAJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~HAERDAJ~

IF ~  PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",1)
!StateCheck("HaerDalis",STATE_SLEEPING)
~ THEN BEGIN 0 // from:
  SAY #211 /* ~The gem, we have it! Come, my birds, let us to the playhouse fly! The inn is in the Bridge District of this city, in the basement of the Five Flagons.~ [HAERDA81] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisGemQuest","GLOBAL",2)
SetGlobalTimer("HaerDalisHaveGem","GLOBAL",ONE_DAY)
~ UNSOLVED_JOURNAL #46845 /* ~Retrieve Haer'Dalis's gem.

Haer'Dalis assures me that I have the gem he was looking for and urges me to go to the playhouse beneath the Five Flagons Inn in the Bridge District to speak to the mistress there, Raelis Shai.~ */ EXIT
END

IF ~  !AreaCheck("AR0705")
!PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",1)
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("LeftWithoutGem","LOCALS",0)
~ THEN BEGIN 1 // from:
  SAY #212 /* ~No, we must not leave until that gem is ours. So much depends on it, my wandering hounds.~ */
  IF ~~ THEN DO ~SetGlobalTimer("HaerDalisNoGem","GLOBAL",SEVEN_DAYS)
SetGlobal("LeftWithoutGem","LOCALS",1)
~ EXIT
END

IF ~  !PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",1)
Global("HaerDalisFiveFlagon","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #217 /* ~See, there lies the inn I spoke of. Miss Raelis's playhouse lies in its cellar. But until we carry Mekrath's jewel, there be little sense in entering.~ */
  IF ~~ THEN DO ~SetGlobal("HaerDalisFiveFlagon","GLOBAL",2)
~ EXIT
END

IF ~  PartyHasItem("MISC6X")
GlobalGT("HaerDalisGemQuest","GLOBAL",1)
Global("HaerDalisFiveFlagon","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #218 /* ~Ah, the playhouse! It is in the basement of this inn—come, let us enter. Miss Raelis will be pleased to see the gifts we bring.~ [HAERDA82] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisFiveFlagon","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #85 /* ~We bring it with us, Miss Raelis, that we might have all the more reason to celebrate.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 63
END

IF ~~ THEN BEGIN 5 // from:
  SAY #87 /* ~Not yet, Miss Raelis. It appears they still need more convincing.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 26
END

IF ~~ THEN BEGIN 6 // from: 49.0
  SAY #101 /* ~Few of you primes would sense its presence, but Mekrath did, and so it was that I fell into his keeping. Luckily, he had not rid himself of it before your timely rescue.~ */
  IF ~~ THEN REPLY #226 /* ~Primes and planar jewels and—and... What do you speak of, Haer'Dalis, for you have lost me?~ */ GOTO 50
  IF ~~ THEN REPLY #225 /* ~Why did you lie to me, Haer'Dalis?~ */ GOTO 14
  IF ~~ THEN REPLY #227 /* ~What is Raelis summoning?~ */ GOTO 15
END

IF ~~ THEN BEGIN 7 // from: 51.0
  SAY #228 /* ~As our name denotes, we come from the city of Sigil, which lies upon another plane of the multiverse or, more appropriately, upon a hub or node where many of the planes collide... Are you with me?~ */
  IF ~~ THEN REPLY #230 /* ~Positively entranced. Do continue.~ */ GOTO 52
  IF ~~ THEN REPLY #229 /* ~Not at all, but I don't expect that to change any time soon, so you might as well continue.~ */ GOTO 52
  IF ~~ THEN REPLY #231 /* ~If time is short, perhaps it would be best if you just cut to the quick of things and tell me how I can help.~ */ EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 8 // from: 52.0
  SAY #232 /* ~Well, all of this really goes back to a most unfortunate satirical play which we produced while we were still in Sigil.~ */
  IF ~~ THEN REPLY #233 /* ~Ah, the unfathomable connection between theater and interplanar travel... I'm sorry, but you have lost me entirely.~ */ GOTO 53
  IF ~~ THEN REPLY #234 /* ~What was so unfortunate about it?~ */ GOTO 53
  IF ~~ THEN REPLY #235 /* ~All this explanation is getting nowhere with me. Perhaps it would be better if you just told me how I can help.~ */ EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 9 // from: 54.0
  SAY #236 /* ~ 'Twas only the Lady of Pain herself, mistress of all Sigil, who through her unplumbed whimsy sent us careening through a portal to emerge where we are now, in this place you know as Amn.~ */
  IF ~~ THEN REPLY #237 /* ~But the price upon your heads, is it not still there?~ */ GOTO 55
  IF ~~ THEN REPLY #239 /* ~I never realized acting was so dangerous.~ */ GOTO 55
  IF ~~ THEN REPLY #240 /* ~What a harrowing experience it must have been for all of you. Please, what can I do that might be helpful?~ */ EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 10 // from: 56.0
  SAY #241 /* ~Which brings us back to where this whole tale began, that is, to the planar stone you rescued from damned Mekrath's rubble.~ */
  IF ~~ THEN REPLY #242 /* ~How? I don't understand.~ */ GOTO 57
  IF ~~ THEN REPLY #243 /* ~Of course, the planar stone and whatever it is that Raelis is summoning.~ */ GOTO 57
  IF ~~ THEN REPLY #244 /* ~I helped you then and shall help you again if I am able. Just tell me how.~ */ EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 11 // from: 58.0
  SAY #245 /* ~Miss Raelis is playing the stone as we speak so that our company might slip through our hunter's grasp and find another stage. The play must go on, you know.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 12 // from:
  SAY #248 /* ~You be little more than cowards and plenty less than friends, my hounds. Run, then, with your tails between your legs... My blades are yours, Miss Raelis, as they have always been.~ */
  IF ~~ THEN DO ~SetGlobal("RaelisLeaving","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetDialogue("haerda")
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #255 /* ~Whenever you are ready, Miss Raelis.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut17a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #256 /* ~ 'Tis true, I lied to you and not once as you might think, but twice... The stone was not even mine, but Mekrath's, and I was sent to steal it. I'm just an actor on the run, nothing more. A single play has left me a wretched man, my ravens. A single, wrongheaded satire I didn't even write...~ */
  IF ~~ THEN REPLY #257 /* ~What play, Haer'Dalis, and how?~ */ GOTO 53
  IF ~~ THEN REPLY #258 /* ~Okay, okay, I need to know what's going on here. Who are you, where are you from, and what's going on here? Start at the beginning.~ */ GOTO 50
  IF ~~ THEN REPLY #259 /* ~I wash my hands of this... Miss Raelis, I'm leaving.~ */ EXTERN ~RAELIS~ 64
  IF ~~ THEN REPLY #260 /* ~All right, you lied to me, but you had your reasons. What can I do to help?~ */ EXTERN ~RAELIS~ 64
END

IF ~~ THEN BEGIN 15 // from: 6.2
  SAY #262 /* ~A young conduit.~ */
  IF ~~ THEN REPLY #263 /* ~A what?~ */ GOTO 57
END

IF ~~ THEN BEGIN 16 // from:
  SAY #265 /* ~My saviors and my jailors both, it seems. Miss Raelis, may I present <CHARNAME>? And <CHARNAME>, Miss Raelis.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 28
END

IF ~~ THEN BEGIN 17 // from:
  SAY #274 /* ~It is here, my lady, resting safe with us... I, uh, promised these ravens of mine you would reward them.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 29
END

IF ~~ THEN BEGIN 18 // from:
  SAY #275 /* ~No, my lady, we do not. It seems my ravens need a little more convincing.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 29
END

IF ~~ THEN BEGIN 19 // from:
  SAY #281 /* ~You'll go nowhere, <CHARNAME>. Miss Raelis, call the others. These ravens must not leave here with the stone!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("FightingTheTroupe","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #284 /* ~We will be back, Miss Raelis.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #285 /* ~Be you my captain, jailer, friend, or thief, I shall not have you speak so unto Miss Raelis! Make room for my blades amidst your innards, fool, for that is where they're heading!~ */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",2)
GlobalTimerExpired("HaerDalisHaveGem","GLOBAL")
~ THEN BEGIN 22 // from:
  SAY #289 /* ~Why do we tarry so? Each hour Miss Raelis is without that gem, we become more lowly sloths than noble hounds.~ [HAERDA83] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisGemQuest","GLOBAL",3)
SetGlobalTimer("HaerDalisHaveGem","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",3)
GlobalTimerExpired("HaerDalisHaveGem","GLOBAL")
~ THEN BEGIN 23 // from:
  SAY #290 /* ~Ravens, ravens, drunk on freedom—do you not realize that there still be business to which we must attend? Quick, let us bring Mekrath's petty jewel back to my playhouse where it might be more appreciated.~ [HAERDA84] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisGemQuest","GLOBAL",4)
SetGlobalTimer("HaerDalisHaveGem","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  PartyHasItem("MISC6X")
Global("HaerDalisGemQuest","GLOBAL",4)
GlobalTimerExpired("HaerDalisHaveGem","GLOBAL")
~ THEN BEGIN 24 // from:
  SAY #291 /* ~I beg of you! We must deliver this gem to good Raelis—ere she and I are trapped in this foul drama forever! Let us make haste to the Five Flagons!~ [HAERDA85] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisGemQuest","GLOBAL",5)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 25 // from:
  SAY #292 /* ~Your folly exceeds my patience and your tedium my intellect. Farewell and good riddance, mice. I shall deliver the jewel myself.~ [HAERDA86] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisGemQuest","GLOBAL",5)
TakePartyItem("MISC6X")
SetGlobal("HaerDalisMove","GLOBAL",1)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeAreaMove("AR0510",1430,311,NE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14226 /* ~Young one, I could tell you many a tale that you would find much more humorous than I. Perhaps another time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14323 /* ~It is not that I look strange, young one, it is simply that you have never seen my kind, perhaps. Very few of your kind have, I would think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14493 /* ~Why, thank you, friend. If I had the time to spare, I would regale you with a story just to return your compliment.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14543 /* ~Why, thank you, my dear. A wonderful compliment from such a fine beauty.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #14997 /* ~Nothing brings me more joy, my dear nobleman, than to pierce the humdrum veil of your life with song and poem. I always yearn for appreciation of my art from those with only a yen for their coin.~ */
  IF ~~ THEN EXTERN ~NOBLEM2~ 4
END

IF ~~ THEN BEGIN 31 // from:
  SAY #15322 /* ~A... tempting offer, my dear. Perhaps another time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15464 /* ~I am not, sire. Rather, I am here to witness the depravity and baselessness of your society as it inevitably leads itself to decay and destruction. Please... do continue.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #21420 /* ~I'm positive of it, my dear. I'm sure you have not seen one of my kind in all of your life, or perhaps your mother's before you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #22395 /* ~Nothing would please me more, good sir... but perhaps another time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #22501 /* ~Hmmm... I'm tempted to join you and explore the rest of this magnificent gem of a world. Perhaps another day, however.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #25014 /* ~Of course I have been cheated. And I have cheated others. Cheated death, cheated life... it is all the same thing, and the inevitable process of social decay.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #25419 /* ~Such is the order of things as I understand them. Youth and vitality leads to age and infirmity. All things lend themselves eventually to decay.~ */
  IF ~~ THEN EXTERN ~YARIN~ 16
END

IF ~~ THEN BEGIN 38 // from:
  SAY #25421 /* ~I would not name such as my profession, but I have lent my abilities to speed up the procession of decay in society, yes.~ */
  IF ~~ THEN EXTERN ~YARIN~ 17
END

IF ~~ THEN BEGIN 39 // from:
  SAY #25423 /* ~As I said, I am fully aware of the natural way of things... decay is the ultimate process.~ */
  IF ~~ THEN EXTERN ~YARIN~ 18
END

IF ~~ THEN BEGIN 40 // from:
  SAY #25425 /* ~Yes... well, I must admit I do not look forward to my own decay. I imagine myself being full of memories of a life well-lived by then, however... those, I think, shall comfort me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #25581 /* ~Yes, well... I was rather tied up there for a while, my friend.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #25704 /* ~A tempting offer, my friend... but currently I have other more pressing plans.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #25833 /* ~We actors are always destitute enough to appreciate a good offer, my dear... but this one time I am afraid I shall have to pass, alas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #27661 /* ~There are beings of great power in the planes that are my home... but do you think that they really concern themselves so much with this one? It strikes me as a barren fancy, really.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #27867 /* ~You are a bard, man... look into the depths of you heart and draw from that well a potion that will please your lady. Speak of things that will move a mountain by your passion and eloquence! To do aught else would be to shame your profession.~ */
  IF ~~ THEN EXTERN ~GARRICK~ 6
END

IF ~~ THEN BEGIN 46 // from:
  SAY #29577 /* ~Ah, do I detect a note of impatience, waiting for a lover who has not yet arrived? A touch of yearning mixed with anticipation? One can see the sheen of lust upon your brow, my lord.~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 7
END

IF ~~ THEN BEGIN 47 // from:
  SAY #30060 /* ~A tempting thought, pet, but my player days are shortly behind me. I have a glorious path of adventure that lies before me for the moment!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #36715 /* ~Yes, Miss Raelis. Ah... my ravens, there be a tale between us that is long overdue: Forgive me if I led you to believe that yon gem was just a worthless bauble for the stage.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #36716 /* ~In truth, it be something far more interesting: a planar jewel... a nexus between the Astral Plane and the Prime Material Plane, in which we are currently.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 50 // from: 14.1 6.0
  SAY #36717 /* ~Oh my, time is short and here I am to give a lecture on the nature of the multiverse...~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #36718 /* ~As you are well aware, this playhouse in which we stand is property of the Sigil theater troupe, which is to say Miss Raelis, myself, and our company of fellow actors.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 52 // from: 7.1 7.0
  SAY #36719 /* ~Yes, well... Travel between these planes is not the easiest thing, especially into and out of what we call the Prime Material Plane, which the Sword Coast and the whole world of Faerûn is but an infinitesimal part...~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 53 // from: 14.0 8.1 8.0
  SAY #36720 /* ~"A Comedy of Terrors," it was called, and the fact that the playwright wished to remain anonymous should have been sufficient clue.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36721 /* ~Little did we know that the sordid tale of lust between two certain planar beings might hold a mirror to the truth. Within hours, the theater was left in ruins and a price was placed upon our fleeing heads.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 9.1 9.0
  SAY #36722 /* ~Aye, my questioning hounds, one does not satirize Duke Rowan Darkwood, factol of the Fated, and expect to live a life of safety...~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36723 /* ~A wretched cambion hunts us as we speak and has apparently tracked us down to the Prime Material, though he has yet to make his move.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 57 // from: 15.0 10.1 10.0
  SAY #36724 /* ~To travel from between planes, we birds of flight can pass through what are called young conduits, whipping snakelike tubes that writhe within the Astral Plane, their heads and tails clinging to different pieces of the multiverse.~ */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36725 /* ~The planar stone acts like a charmer's pipe upon these conduits, bringing them to us that we might enter and pass through.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 59 // from:
  SAY #37570 /* ~We... we still do not have it, Miss Raelis, try though I might to convince my raven of its import. I shall endeavor to speed the process, if you will it.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 1
END

IF ~~ THEN BEGIN 60 // from:
  SAY #38913 /* ~Perhaps you should work a little on your approach, my dear lady. Perhaps a bit of a limp in your step, hunch down a bit more... there, now you have it. Nothing wrong with improving your display, see?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39359 /* ~Such suspicion is misplaced, good knight. Were you on the other side of these bars, I am sure you would feel similarly.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 62 // from:
  SAY #48595 /* ~Methinks he plays a sweet melody, my raven, but we have still yet to hear the chorus. Shall we dance to the mage's tune, do you think? I, for one, am intrigued.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 6
END

IF ~~ THEN BEGIN 63 // from:
  SAY #48656 /* ~Such a languishing end... Here lies the embodiment of all the universe, though it is sure to be small comfort to him.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #48688 /* ~Commendable acceptance of your fate, sir. I leave you to it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #48725 /* ~Aye, berk. I am from far and farther away than a simple man like you could likely imagine. If my countenance disturbs you, forgive me... my kind are rarer than red diamonds here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #48754 /* ~Ah! 'Tis always pleasant to meet a friend in this strange city of yours. Aye... I have been absent from the halls of the playhouse for quite some time.~ */
  IF ~~ THEN EXTERN ~BSHOP02~ 6
END

IF ~~ THEN BEGIN 67 // from:
  SAY #48755 /* ~Nay, friend. I have no need at the current time. But the sparrow shall return anon, when the moment's right. Not to worry... our deal persists yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #48760 /* ~I don't pry into your business, berk, do I? Tsk, for shame.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #48768 /* ~Oh, ah... Elanda. Aye. Well, you see, my sunflower, it is not what you think, truly...~ */
  IF ~~ THEN EXTERN ~BWENCH~ 5
END

IF ~~ THEN BEGIN 70 // from:
  SAY #48769 /* ~Well, actually...~ */
  IF ~~ THEN EXTERN ~BWENCH~ 6
END

IF ~~ THEN BEGIN 71 // from:
  SAY #48773 /* ~*sigh* 'Tis the way of all things, I suppose. Fare thee well, my little sunflower.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #48782 /* ~This sparrow does hail from the troupe you describe, madam... or at least I did once. But I am only a visitor here for a time and am not planning on staying. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #48795 /* ~A fair greeting to you as well, my diminutive friend. Aye, I have been absent for a lengthy period... not at all according to my own wishes, I assure you.~ */
  IF ~~ THEN EXTERN ~FFBART~ 22
END

IF ~~ THEN BEGIN 74 // from:
  SAY #48797 /* ~People have been looking for me? Aye?~ */
  IF ~~ THEN EXTERN ~FFBART~ 23
END

IF ~~ THEN BEGIN 75 // from:
  SAY #48799 /* ~A diamond, hm? Well, the berk must have liked it very much indeed. Thank you, goodman Thunderburp, you are a giant of courtesy and a gentleman besides.~ */
  IF ~~ THEN EXTERN ~FFBART~ 24
END

IF ~~ THEN BEGIN 76 // from:
  SAY #48912 /* ~*chuckle* The plot thickens, my raven! What would you like to wager, do you suppose, that the elusive gong is no longer in the possession of this shaman either? I am most curious to see!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #48965 /* ~Oh ho! A wondrous display of pure fanaticism! Reminds me of home, wherever that is.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #49195 /* ~I could name a thousand, my friend. My favorite would be a simple stroll.~ */
  IF ~~ THEN EXTERN ~DFISHER~ 10
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49237 /* ~A demon? Me? Perhaps this sparrow has an odd ancestor or two that might cause you fear, my howling friend, but I'll not be one to feast on your innards, have no worry.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #49243 /* ~Oh ho! A swift move, my thieving friend, and the irony of it gladdens my heart! You have the spirit of a poet, Yoshimo, this sparrow swears it is true.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #49417 /* ~Aye. Never let anyone tell you, berk, that brute force is the best estimation of a man. Sly wit and misdirection will always win out in the end, even against those who style themselves to be immune.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PACE~ 6
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 114
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 68
END

IF ~~ THEN BEGIN 82 // from:
  SAY #49614 /* ~"And the door stands agape, suddenly, and with great trepidation, our heroes step into the dark interior of a lion's den..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #49629 /* ~Ahhh, 'tis a sweet thing to witness love in all its forms. Somehow, I just cannot help but picture the sweet lass tickling dear Edwin's feet in the boudoir, the mage giggling like a bonny schoolgirl...~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 75
END

IF ~~ THEN BEGIN 84 // from:
  SAY #49878 /* ~You were explaining about the unfairness of the garrison, I believe, my good gnomish friend.~ */
  IF ~~ THEN EXTERN ~JANJ~ 121
END

IF ~~ THEN BEGIN 85 // from:
  SAY #50005 /* ~You've another story for us, talespinner? Do tell.~ */
  IF ~~ THEN EXTERN ~JANJ~ 128
END

IF ~~ THEN BEGIN 86 // from:
  SAY #50105 /* ~And what now, then, my raven? Do we pause the story midway through its telling? Remember how you achieved the portion of the rod you hold... I doubt your promise can be so easily discarded.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 139
END

IF ~~ THEN BEGIN 87 // from:
  SAY #50111 /* ~There's no resisting the muse of an artist, is there? By his tone, it seems all we can do is travel to yon promenade and find this... "illithium," or whatever he named. Come, my raven, it could be a lark.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 105
END

IF ~~ THEN BEGIN 88 // from:
  SAY #50133 /* ~Aye, I have been fortunate to see the odd deity in my time on the planes. At least those times that they chose to travel openly, that is. What manner of encounter do you speak of?~ */
  IF ~~ THEN EXTERN ~JANJ~ 132
END

IF ~~ THEN BEGIN 89 // from:
  SAY #50200 /* ~Is that the purpose? That is odd, berk... for all the coins I see exchanging hands in this place, it would seem to me that everyone knows exactly whom to bribe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #50244 /* ~It hardly seems like you, my lovely blackbird, to commit an act of charity. Are you well?~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 79
END

IF ~~ THEN BEGIN 91 // from:
  SAY #50250 /* ~Mmmm. And I thought I was the actor of this troupe. How intriguing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #50277 /* ~So this is the road that you choose to take. Not that of boon companionship but that of finance. 'Tis not what I expected, my raven.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 72
END

IF ~~ THEN BEGIN 93 // from:
  SAY #50331 /* ~Orcish blood? Nay, berk, none in this raven. I've perhaps a few less pleasant ancestors, none of which you'd like to meet, I'm sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #50354 /* ~ 'Twas a fine enough venue, dear lady. 'Tis the play that is the thing... not the gilded hall or marbled pillars. We played such places in Sigil and fared no better, as I recall.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #50417 /* ~A good argument, I see. In the end, however, death and decay pay a visit to all beings. You may kill the man, 'tis true, but this sparrow believes he has the better of you still.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 177
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 144
END

IF ~~ THEN BEGIN 96 // from:
  SAY #50955 /* ~Ah... the role of the lowly supplicant. I know this path well, my raven. We must play the eager servants to these black-hearted elven folk and step to their tune most lively.~ */
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY #50956 /* ~The alternative is to suffer their suspicious eyes and magics... and we know not what eyes already follow us. Best we do exactly as we are told lest we be revealed, aye?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #52608 /* ~ 'Tis a simple moral, berk. "Do not stow thrones in grass houses." Aye? Does the sparrow speak it true?~ */
  IF ~~ THEN EXTERN ~UDDROW07~ 11
END

IF ~~ THEN BEGIN 99 // from:
  SAY #55195 /* ~Ah, let the muses fly once again! A victory has been won this day that shall be sung of through the ages! Entropy works its end even on those who seek to rise above it... what a truer claim could be made?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 100 // from:
  SAY #55216 /* ~Ahhh, back in the planes, I see. And the hard way too, it seems. Adventuring with you does seem to have its odd turns, my raven.~ [HAERDA88] */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 101 // from:
  SAY #55284 /* ~One moment. I am curious of something... did this drow you speak of summon you to guard the chest or whatever is inside of it?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 33
END

IF ~~ THEN BEGIN 102 // from:
  SAY #55293 /* ~But... you could open the chest, could you not? We would not be touching it then, and yet we could still acquire whatever was within.~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 35
END

IF ~~ THEN BEGIN 103 // from:
  SAY #55656 /* ~A wondrously chaotic gift, one that should be left to flourish.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 12
END

IF ~~ THEN BEGIN 104 // from:
  SAY #55673 /* ~Yes, my dear, unfortunately they are. I must not make light of this, but likely she has seen my kind quite often.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 21
END

IF ~~ THEN BEGIN 105 // from:
  SAY #55687 /* ~What could the black seabird have done, I wonder, to earn such a poor name in a place such as this? We may find ourselves with a stigma attached even without his company, my raven.~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 34
END

IF ~~ THEN BEGIN 106 // from:
  SAY #55748 /* ~You're just not all there, are you?~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 2
END

IF ~~ THEN BEGIN 107 // from:
  SAY #55774 /* ~I shouldn't wish to alarm anyone, but I just wanted to point out that Jan has failed to produce a story. Can the apocalypse be far?~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 158
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 128
  IF ~  !IsValidForPartyDialogue("KORGAN")
IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 109
END

IF ~~ THEN BEGIN 108 // from:
  SAY #55794 /* ~We'd best have a care, my raven. Yon pirate needs us to secure his ship for now, but what assurances have we once we are on the open sea? We've no patron's threat this time to keep us safe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #55818 /* ~Then you can certainly start by telling us how we came to be here, strange ones. And I will warn you now that this sparrow has no intention of being collared again, by you or anyone.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 6
END

IF ~~ THEN BEGIN 110 // from:
  SAY #55856 /* ~Truly? I found the story of entropy working its slow decay upon an entire people to have much more poetry. With any luck, these creatures will stumble into a downward spiral again soon.~ */
  IF ~~ THEN EXTERN ~SAHPR4~ 5
END

IF ~~ THEN BEGIN 111 // from:
  SAY #55881 /* ~It would appear you have been away from home too long, Viconia. This duergar lays more claim to it than you.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 81
END

IF ~~ THEN BEGIN 112 // from:
  SAY #55897 /* ~Ha! I don't know his words all that well, but I do respect those willing to risk insulting strangers. ~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 1
END

IF ~~ THEN BEGIN 113 // from:
  SAY #55935 /* ~Before we leap upon our target, my raven, at least consider the possibility that perhaps there are other choices. Perhaps we should play a game of intrigue as well and see what Solaufein has to say, yes?~ */
  IF ~~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #55945 /* ~As despicable as it might seem, Aerie, I would advise that you be a little more... harsh. We do not want to give ourselves away.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from:
  SAY #55956 /* ~Ooo, faux pas.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 116 // from:
  SAY #55982 /* ~On <PRO_HISHER> knees? That would be a pretty sight to see, should it ever come to pass. I doubt I've ever seen my raven swallow crow.~ */
  IF ~~ THEN EXTERN ~C6BRUEN1~ 3
END

IF ~~ THEN BEGIN 117 // from:
  SAY #56008 /* ~The odds do not favor that statement, Nalia. ~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 283
END

IF ~~ THEN BEGIN 118 // from:
  SAY #56012 /* ~What is this, my raven? Another group of adventurers, hardened with experience and on their way to another feat, no doubt? Are we going to fight, do you think?~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~C6BRUEN1~ 8
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 139
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 173
END

IF ~~ THEN BEGIN 119 // from:
  SAY #56051 /* ~Ahh, poor Aerie. Do not let this dark place taint you. We will be away soon enough.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #56073 /* ~None of that! You'll keep your tone respectful when addressing us!~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 285
  IF ~  IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~AERIEJ~ 156
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~MAZZYJ~ 179
END

IF ~~ THEN BEGIN 121 // from:
  SAY #56074 /* ~Well... we must keep up appearances.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #56091 /* ~He knows our affairs no better than we do at this point. Shall we move on?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #56105 /* ~Ahhh, this is a fine battle that shall ring throughout the planes! Live or die, this has been a wondrous adventure! Now we face off with Oblivion!~ [HAERDA87] */
  IF ~  !IsValidForPartyDialogue("Viconia")
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
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 124 // from:
  SAY #56118 /* ~Ahh. I have encountered beasts that were "awakened" before. This is no natural animal, is it?~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 13
END

IF ~~ THEN BEGIN 125 // from:
  SAY #56145 /* ~Well, what a happy bunch of fellows. I'm resigned to fate myself, but they *really* bring me down.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 6
END

IF ~~ THEN BEGIN 126 // from:
  SAY #56155 /* ~And here would come the change in plans, am I right? Wondrously chaotic plan if it is. I expected no less.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 27
END

IF ~~ THEN BEGIN 127 // from:
  SAY #56169 /* ~To stave off your wrath, they have provoked it beyond imagining. These are impressive risks they are willing to take.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 19
END

IF ~~ THEN BEGIN 128 // from:
  SAY #56178 /* ~No matter where you ran, it would not have helped. We are a determined bunch and seem pushed towards you from many sides.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 129 // from:
  SAY #56237 /* ~Not to be critical, but Irenicus does not appear to be in the business of learning what he does not wish to know.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 23
END

IF ~~ THEN BEGIN 130 // from:
  SAY #56423 /* ~It seems a bit to me like throwing the baby out with the bathwater, my raven, but it might be interesting to see if such a poison would even work. What would a dead grove look like, I wonder?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #56428 /* ~Rejiek? This is the killer from the Bridge District, no? So he fled us only to come to Trademeet, my raven. Perhaps we shall have a second chance at a reckoning.~ */
  IF ~~ THEN EXTERN ~TRSKIN02~ 17
END

IF ~~ THEN BEGIN 132 // from:
  SAY #56466 /* ~Ho! The blade shall go where the law cannot! Let our hearts sing with blood as this foul man falls before our wrath!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 166
END

IF ~~ THEN BEGIN 133 // from:
  SAY #56505 /* ~Githyanki? Why would the one who sent us here have enemies such as these? Come, my raven... let us end this fight and solve this mystery!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #56509 /* ~Ahhh, things grow clearer, my raven. An illithid, hiding from its ancient enemies, the gith, amongst the primes in this city. Jan's uncle was wise to send us its way, although how he knew of it I can only speculate.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #56882 /* ~Oh, I'm certain that it is. But for whose benefit? Our knowledge of you is tenuous at best. How long should we wait before you prove your good intentions?~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 136 // from:
  SAY #57155 /* ~Eh? What is this? Did yon blackbird not say earlier that the souls of his comrades were trapped in those baubles?~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 25
END

IF ~~ THEN BEGIN 137 // from:
  SAY #57647 /* ~You don't look well, <CHARNAME>. The chaos of our situation is probably to blame, though everyone else seems to be wearing it well. ~ */
  IF ~~ THEN REPLY #57648 /* ~Well, they haven't had their soul ripped from them, have they?~ */ GOTO 138
  IF ~~ THEN REPLY #57649 /* ~Thank you for your concern, Haer'Dalis, but I am fine. ~ */ GOTO 139
  IF ~~ THEN REPLY #57650 /* ~Chaos? Yes, that would describe the feeling in my head and stomach.~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #57651 /* ~No, I suppose not. I will leave you to your wincing, <CHARNAME>. Do indicate if you need assistance.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from: 137.1
  SAY #57652 /* ~I am sure that you think you are, but manipulations of the soul can have strange affects. I would be careful, <CHARNAME>; you may not be quite the person you thought you were.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from: 137.2
  SAY #57653 /* ~I would imagine so. You have had a rather interesting manipulation cast upon you. I would be wary of any changes in your health.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #57730 /* ~Well...~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #57731 /* ~Reminds me of home...~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #57732 /* ~The bad parts... <CHARNAME>, have you done this befo... No, no, I don't suppose you have. ~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #57733 /* ~You have channeled the power of a dead god through you and maintained enough will to tell about it. Count your blessings. ~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #57734 /* ~If this happens much more, you will cease to be yourself. It's just a theory of mine, but one you should be wary of. But besides the danger, this has been a wonderfully chaotic show.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #58158 /* ~Yes, wonderfully chaotic bunch, aren't they? Sneaking through the gutters for the love of it and no other reason.~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 314
END

IF ~~ THEN BEGIN 147 // from:
  SAY #58159 /* ~And these are not them. You will have to save your need to give charity for another day. This matter is strictly business.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #58161 /* ~Now, my dear Aerie, there is nothing to fear. We are on the good path, the most appealing to the moral. There is simply the occasional shade of gray.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 184
END

IF ~~ THEN BEGIN 149 // from:
  SAY #58175 /* ~Ahh, but I have little choice in the way of it now, my cautious raven. Your life is an act of such vivid interest to me, I cannot help but remain at your side to see how the last act unfolds before me. My blades stand ready to fall, if entropy dictates it is so.~ */
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
END

IF ~~ THEN BEGIN 150 // from:
  SAY #58754 /* ~Interesting. An uncertain path opens as the party fractures beneath us. Destruction that was inevitable, though the source is most surprising. ~ */
  IF ~  !IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~  !AreaCheck("AR0705")
!AreaCheck("AR0510")
GlobalTimerExpired("HaerDalisNoGem","GLOBAL")
GlobalLT("HaerDalisGemQuest","GLOBAL",2)
Global("RaelisHasGem","GLOBAL",0)
~ THEN BEGIN 151 // from:
  SAY #62039 /* ~My raven, please! We must find the planar jewel, we must! I beg of you... let us back to Mekrath's fly so that Miss Raelis may have the gem she craves! Please!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 152 // from:
  SAY #70542 /* ~Not all of us be primes, my fair cambion. Some of us be only visitors to this wondrous place.~ */
  IF ~~ THEN DO ~AddXP2DA("PLOT2C")
~ EXTERN ~GORCAMB~ 66
END

IF ~~ THEN BEGIN 153 // from:
  SAY #70549 /* ~Ah, yes. Aesgareth is well known amongst certain circles as being most fascinated by his gambling pursuits. Above even interest in his own health, my raven... 'tis a most unhealthy thing.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 154 // from:
  SAY #70527 /* ~Hm? The greater powers do not do anything themselves without great need. Whatever is trapped here, it must be a fearsome foe indeed.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 155 // from:
  SAY #70544 /* ~And you remind me of a remarkably pleasant fellow named Aesgareth, so unlike the usual child of a fiend. But my fellows would not know of you, of course. Perhaps an introduction is in order?~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 1
END

IF ~~ THEN BEGIN 156 // from:
  SAY #70506 /* ~Aha! We add deception upon deception now. So the plot thickens, my raven... I cannot wait to see what occurs next.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 534
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 320
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 222
END

IF ~~ THEN BEGIN 157 // from:
  SAY #70510 /* ~Men die, as they always will, my dear. Whether they die now at our word or elsewhere, without my own eyes to witness, it makes little difference. Think of it what you will.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 158 // from:
  SAY #70420 /* ~Would that all my audiences were as patient as you! There is little worse than hearing the shuffling of feet as the uncouth louts head for the exits while the performance is but a few hours old! ~ */
  IF ~~ THEN EXTERN ~GORIMP01~ 8
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 45
END

IF ~~ THEN BEGIN 159 // from:
  SAY #78851 /* ~Hold. Is this a crippled dove I see?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 497
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 2
END

IF ~~ THEN BEGIN 160 // from:
  SAY #74585 /* ~My raven wants to lay with a vulture. Would that I found it surprising.~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~What work needs doing this <DAYNIGHT>?~ */ EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~What work needs doing this <DAYNIGHT>?~ */ EXTERN ~DORN~ 22
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 161 // from:
  SAY #75709 /* ~My ravens are at home here, I think.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
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
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 252
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 208
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 234
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 265
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 192
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 539
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 54
END

IF ~~ THEN BEGIN 162 // from:
  SAY #74715 /* ~Let us pass—a dove's wings are about to be clipped, and I'd see the spectacle, dreary though it will doubtless be.~ */
  IF ~~ THEN EXTERN ~OHDBBRO~ 2
END

IF ~~ THEN BEGIN 163 // from:
  SAY #74715 /* ~Let us pass—a dove's wings are about to be clipped, and I'd see the spectacle, dreary though it will doubtless be.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 224
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN GOTO 164
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 226
END

IF ~~ THEN BEGIN 164 // from: 163.1
  SAY #74717 /* ~Neither terrible nor transcendent, my fallen raven. Merely a distraction.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 224
END

IF ~~ THEN BEGIN 165 // from:
  SAY #88461 /* ~This bird is of a rare plumage, my raven. How her colors change! It would be a pleasure to fly beside her.~ */
  IF ~~ THEN EXTERN ~NEERA~ 22
END

IF ~~ THEN BEGIN 166 // from:
  SAY #67905 /* ~Ahhh, my friends... notice the dramatic pause in the good lady's conversation before she delivers this chilling news. What stylish flair! She has graced the stage in her past, I'll warrant.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~SARMEL01~ 46
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 271
END

IF ~~ THEN BEGIN 167 // from:
  SAY #67907 /* ~A life on the planes as a new power? 'Tis not a life for everyone, my raven. No matter how powerful you assume yourself to be, there is always another stronger... and in the planes, this is doubly so.~ [HAER2517] */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #67908 /* ~But either way, your adventure continues, does it not? I envy your position, truly. Naturally, I'd like it best to join you in your future travels, but if it's not meant to be, I'll bid you fond farewell, certainly.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 377
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 442
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 440
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 152
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
END

IF ~~ THEN BEGIN 169 // from:
  SAY #70379 /* ~Truly, captivity has not tamed this shrew! Perhaps there is an idea for a play in this...~ */
  IF ~~ THEN EXTERN ~YAGCON~ 8
END

IF ~~ THEN BEGIN 170 // from:
  SAY #70390 /* ~Recognized by strangers in the street—the ravens must already sing poems of your exploits, my friend. Soon, you will be the most famous <PRO_RACE> in the realms... if you survive, of course.~ */
  IF ~~ THEN EXTERN ~AMMONK02~ 4
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 588
END

IF ~~ THEN BEGIN 171 // from:
  SAY #70420 /* ~Would that all my audiences were as patient as you! There is little worse than hearing the shuffling of feet as the uncouth louts head for the exits while the performance is but a few hours old! ~ */
  IF ~~ THEN EXTERN ~GORIMP01~ 8
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 160
END

IF ~~ THEN BEGIN 172 // from:
  SAY #70484 /* ~So... the brother joins us unfettered? A clever gamble, my raven. Perhaps it will pay off; one can never foretell, hm?~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 310
END

IF ~~ THEN BEGIN 173 // from:
  SAY #70506 /* ~Aha! We add deception upon deception now. So the plot thickens, my raven... I cannot wait to see what occurs next.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 596
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 334
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 291
END

IF ~~ THEN BEGIN 174 // from:
  SAY #70510 /* ~Men die, as they always will, my dear. Whether they die now at our word or elsewhere, without my own eyes to witness, it makes little difference. Think of it what you will.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from:
  SAY #70527 /* ~Hm? The greater powers do not do anything themselves without great need. Whatever is trapped here, it must be a fearsome foe indeed.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 176 // from:
  SAY #70542 /* ~Not all of us be primes, my fair cambion. Some of us be only visitors to this wondrous place.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 66
END

IF ~~ THEN BEGIN 177 // from:
  SAY #70544 /* ~And you remind me of a remarkably pleasant fellow named Aesgareth, so unlike the usual child of a fiend. But my fellows would not know of you, of course. Perhaps an introduction is in order?~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 1
END

IF ~~ THEN BEGIN 178 // from:
  SAY #70549 /* ~Ah, yes. Aesgareth is well known amongst certain circles as being most fascinated by his gambling pursuits. Above even interest in his own health, my raven... 'tis a most unhealthy thing.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 179 // from:
  SAY #70559 /* ~Well, there's a bit of irony for you, my raven. We return her lost heart, and with it she rediscovers love for her traitorous son. I'd weep at the sentiment... if, ah, we weren't about to cross swords...~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 30
END

IF ~~ THEN BEGIN 180 // from:
  SAY #71313 /* ~Ah, what tragedies war brings! This fair white dove must sully herself to survive these bitter times.~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 2
END

IF ~~ THEN BEGIN 181 // from:
  SAY #71626 /* ~You are too kind, dear poet. Would that I had the time, it would suit my fancy to join you in your quest to record <CHARNAME>'s tale. Ahhh, what wonders it has already encompassed! Perhaps I will yet have the chance to relate them to you one day, yes?~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 182 // from:
  SAY #83163 /* ~Is my flock to be lost in this heart of darkness?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
END

IF ~  Global("OHR_FINALE","GLOBAL",24)
~ THEN BEGIN 183 // from:
  SAY #83252 /* ~These owls had their wings clipped, but they may yet fly again.~ */
  IF ~~ THEN EXTERN ~OHRDWS01~ 11
  IF ~  StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS02~ 6
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 184 // from:
  SAY #92224 /* ~This raven has flown into the aether, touched heaven, and returned.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 231
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 279
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 614
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 227
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 152
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 302
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 174
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1040
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 630
END

IF ~~ THEN BEGIN 185 // from:
  SAY #92113 /* ~A fallen raven's no use to his flock.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 484
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 280
END

IF ~~ THEN BEGIN 186 // from:
  SAY #89799 /* ~Ouzel! Throstle! I must write these down.~ */
  IF ~~ THEN EXTERN ~OHNSCOLL~ 2
END
