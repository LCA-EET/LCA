// creator  : weidu (version 24900)
// argument : KORGANJ.DLG
// game     : .
// source   : ./override/KORGANJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~KORGANJ~

IF ~~ THEN BEGIN 0 // from: 15.0
  SAY #2414 /* ~The tomb is calling, and I may be forced to heed her beckon alone and enjoy the wages without me stalwarts by me side.~ */
  IF ~~ THEN REPLY #2536 /* ~We've grown weary of this escapade. We've decided not to go to the tomb.~ */ GOTO 191
  IF ~~ THEN REPLY #2537 /* ~We hear your protest, Korgan. Don't worry. Let us go to the tomb.~ */ GOTO 193
END

IF ~  GlobalTimerExpired("KorganBook","GLOBAL")
Global("KorganComplain","LOCALS",1)
~ THEN BEGIN 1 // from:
  SAY #2415 /* ~Fine then, lant-quaffers! I've put up with ye fribblin' long enough! I've work to do, and it'll not be with the likes of this girdle-waisted loom crew!~ [KORGAN74] */
  IF ~~ THEN REPLY #2541 /* ~Hold on, Korgan. Wait a moment. Let's go to the tomb right now.~ */ GOTO 194
  IF ~~ THEN REPLY #2542 /* ~Good riddance to bad garbage, runt. We need you like a hole in the head.~ */ GOTO 195
END

IF ~  Global("KorganTomb","GLOBAL",1)
Global("KorganMummy","GLOBAL",0)
!Dead("mummy")
See("mummy")
~ THEN BEGIN 2 // from:
  SAY #2431 /* ~This tomb looks to be looted! The rank, stinking bastards beat us here! Those scoundrels'll dine on me sup o' cold steel afore I'm through with 'em! ~ [KORGAN75] */
  IF ~~ THEN DO ~AddexperienceParty(11250)
SetGlobal("KorganMummy","GLOBAL",1)
~ EXTERN ~MUMMY~ 0
END

IF ~~ THEN BEGIN 3 // from:
  SAY #2433 /* ~Those grog-blossomed prickmedainties 'ave crossed me one time too many! We've some walking undead to dispatch now, and then some live dead to find and bury!~ */
  IF ~~ THEN DO ~ActionOverride("mummy",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 29.0
  SAY #2439 /* ~Then onward to victory and spoils! ~ */
  IF ~~ THEN UNSOLVED_JOURNAL #2060 /* ~Help Korgan recover the Book of Kaza

It appears that the Book of Kaza was taken from the tomb by former companions of Korgan's. We must go to Pimlico's house in the Temple District to see if we can head them off and recover the book.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 29.1
  SAY #2440 /* ~Fools! Scurvy whelps! Only scent stronger than weakness is the stink of cowardice! If that's the way you want it, then I'll take me leave of ye.~ */
  IF ~~ THEN REPLY #2432 /* ~Hold a moment, Korgan, we were hasty with our words. We will accompany you to Pimlico's. ~ */ EXTERN ~BKORGAN~ 30
  IF ~~ THEN REPLY #59429 /* ~The last thing we need is you in our party. Hit the road! And while you're at it, take a bath.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  Global("LeavePimlico","GLOBAL",0)
Global("KorganTomb","GLOBAL",1)
Global("TombEmpty","LOCALS",1)
Global("KorganWhineAboutPim","GLOBAL",0)
AreaCheck("AR0900")
~ THEN BEGIN 6 // from:
  SAY #2441 /* ~Damn! Ye've all taken too long. Ransacked she is! Looted she was! Ye can't tell from barking in the street, but indoors is spiced rum, dilligrout, and Pimlico's noon-meats. ~ [KORGAN76] */
  IF ~~ THEN DO ~SetGlobal("LeavePimlico","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("KorganTomb","GLOBAL",1)
Global("PimlicoDead","GLOBAL",1)
Global("PimDeadDialogue","LOCALS",0)
AreaCheck("ar0905")
~ THEN BEGIN 7 // from:
  SAY #2442 /* ~By the looks of it, me former comrades have painted Pimlico's finery with his innards.~ [KORGAN77] */
  IF ~~ THEN DO ~AddexperienceParty(8750)
SetGlobal("PimDeadDialogue","LOCALS",1)
SetGlobalTimer("FindShagbag","GLOBAL",TWO_DAYS)
~ GOTO 17
END

IF ~  Global("KorShagbag","GLOBAL",0)
!GlobalTimerExpired("FindShagbag","GLOBAL")
!Dead("korshag")
See("korshag")
~ THEN BEGIN 8 // from:
  SAY #2444 /* ~I see little has changed yer candor, Shagbag. Still a lant-gulpin' dirt chute.~ [KORGAN78] */
  IF ~~ THEN DO ~AddexperienceParty(5000)
~ EXTERN ~KORSHAG~ 0
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2446 /* ~Ye know, there's nothin' that ails ye that I can't fix with me fists, Shagbag. ~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 1
END

IF ~~ THEN BEGIN 10 // from:
  SAY #2448 /* ~I'll nae allow that. I don't like being a bastard, but ye leave me nae choice.~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #2450 /* ~Bespawl all that! Nonsense! Steel was drawn with cold intent, Shagbag, and ye're well aware of the trespass!~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 3
END

IF ~~ THEN BEGIN 12 // from:
  SAY #2452 /* ~Pray if ye've a god, cur.~ */
  IF ~~ THEN DO ~ActionOverride("KorShag",Enemy())
ActionOverride("KorCrazy",Enemy())
ActionOverride("Korscroo",Enemy())
ActionOverride("Korgoo01",Enemy())
ActionOverride("Korgoo02",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #14305 /* ~I've ne'er had a liking fer the longlimb cutters. Now I've even less! Begone!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #15044 /* ~Be giving me a few minutes, longlimb wench, and this rockrunt'll ravish ye till ye're visited by furoles and 'ave a baker's leg!~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalTimerExpired("KorganBook","GLOBAL")
Global("KorganComplain","LOCALS",0)
GlobalLT("KorganSeesCrypt","GLOBAL",2)
Global("KorganNoKillShag","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #17733 /* ~O bold warriors all... the sundial be turnin' on me appointed task, and I prevail upon ye all to hasten it.~ [KORGAN79] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 16 // from: 6.0
  SAY #17736 /* ~Be wary of intruders... there may be a few of the lowlifes lingerin' about inside, stinkin' up the place.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0
  SAY #17738 /* ~We'd be wise to pay a visit to the Copper Coronet, as I've a strong suspicion that the motley crew ain't even out of town just yet. They'll be living the good life 'bout now.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22320 /* ~I would be watching who ye be calling sorry... I myself have ne'er seen a sorrier excuse fer a comrade in harm than yerself, bowelhive.~ */
  IF ~~ THEN EXTERN ~DRUFF2~ 5
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22503 /* ~There be nothin' finer than vomiting 'til yer guts flail and yer head shatters either, I suspect, in yer eyes. Ships be good for mule-headed longlimbs and that is all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #25591 /* ~I'll tells ye how. *gulp gulp gulp* Ah! That be how! Tastes like ale, it does... did they charge ye extra for the speck?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #25760 /* ~I be not a halfling, ye bespawled prickmedainty! What are ye besides a foolsopher, blind too? The gods've cursed ye, imbecile.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #28982 /* ~Heh. There do be certain advantages to possessing a smaller stature... foremost among them be easier access to the honeypot pleasures of the female. Heh heh.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #29665 /* ~What?! But ye'll let th' bloody halflings in? Ye keeps up that nonsense talk, missy, and ye'll be feelin' the blunt head of me axe on yer arse, ye surely shall!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.0
  SAY #30443 /* ~In fact, I'll wager me clan's name that the predictable sods are on the roof o' the Copper Coronet as we speak. Best we hurry to catch their thieving red hands!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #2061 /* ~Help Korgan recover the Book of Kaza

It appears that Korgan's former friends weren't satisfied with whatever reward Pimlico was offering. They killed the collector and, according to Korgan, will likely be drinking their gains on the roof of the Copper Coronet. Korgan wishes to go pay his respects, so to speak.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #30518 /* ~I'll be getting ahead of them meself, if only to trip them up and feed them the dirt beneath my feet. Run off they did, planning to abscond with me share of the bounty.~ */
  IF ~~ THEN EXTERN ~KORPIM~ 11
END

IF ~~ THEN BEGIN 26 // from:
  SAY #30521 /* ~I ain't above putting a load of me fist in a few faces though, and sure enough, they will get it. I'll off then, and catch them before they deliver the paperbound.~ */
  IF ~~ THEN EXTERN ~KORPIM~ 12
END

IF ~~ THEN BEGIN 27 // from:
  SAY #30525 /* ~Luck ain't no mattermind. Let's away to the garden of the dead. Methinks there be the best bet for the reader. I've a swift kick in the codpiece fer each of the gong-farmers ahead of us as well. ~ */
  IF ~~ THEN EXIT
END

IF ~  Dead("Mummy")
AreaCheck("AR0802")
Global("TombEmpty","LOCALS",0)
~ THEN BEGIN 28 // from: 36.0
  SAY #30533 /* ~Thrice over their graves I'll be dancin', I swear! Stolen from under me! I do the work of ferretin' out where the blasted book will be, and those crackgnats take it away!~ [KORGAN80] */
  IF ~~ THEN DO ~SetGlobal("TombEmpty","LOCALS",1)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #30542 /* ~We must away! This tomb looks not a day defiled! If we get back to Pimlico's before these fools do, mayhap I can catch them and retake what should be mine! Shagbag needs a killin'!~ */
  IF ~~ THEN REPLY #30547 /* ~I'm with you!~ */ DO ~SetGlobal("TalkedAboutShagbag","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #30548 /* ~Go on your own. I tire of these games.~ */ DO ~SetGlobal("TalkedAboutShagbag","GLOBAL",1)
~ GOTO 5
END

IF ~  GlobalTimerExpired("FindShagbag","GLOBAL")
Global("ShagbagEscapeDialogue","GLOBAL",0)
!Dead("korshag")
~ THEN BEGIN 30 // from:
  SAY #30555 /* ~A pity it is. Ah well...~ [KORGAN81] */
  IF ~~ THEN REPLY #30556 /* ~What are you on about now, Korgan?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #30557 /* ~Something to say?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #30558 /* ~What is it? Is there something wrong?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.1 30.0
  SAY #30560 /* ~Nothing is mattering all that much. I's just lamenting the turn of the coin that has taken me book-gold. I bet me lost party boys have long gone with the loot by and by.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #30561 /* ~No matter, as I say. More profit with you bozos in the long run, I'll wager. Let the fools drink up their stolen. I'll get them one day or 'nother.~ */
  IF ~~ THEN DO ~EraseJournalEntry(2057)
EraseJournalEntry(2060)
EraseJournalEntry(2061)
SetGlobalTimer("KorganContract","GLOBAL",ONE_DAY)
~ SOLVED_JOURNAL #47737 /* ~Help Korgan recover the Book of Kaza

Korgan's ex-party members (Shagbag and company) have escaped with the book in their possession. Korgan offhandedly avowed that they would pay for it later.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #33261 /* ~I wish th' Book of Kaza, ye undead horror. Where have ye secreted it?~ */
  IF ~~ THEN EXTERN ~NEVAZIAH~ 17
END

IF ~  Global("KorganSeesCrypt","GLOBAL",1)
~ THEN BEGIN 34 // from:
  SAY #37489 /* ~This is the way, I just knows it! A southern tomb within the opened cavern. Bloody old, it be. ~ [KORGAN82] */
  IF ~~ THEN DO ~SetGlobal("KorganSeesCrypt","GLOBAL",2)
~ EXIT
END

IF ~  Dead("korshag")
Global("ShadDead","LOCALS",0)
Global("KorganNoKillShag","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #37490 /* ~That's one fine mess that I done cleaned up. They did the killin', but I ends up with the gold, the book, and the satisfaction o' kickin' their tails. Ah. A good day.~ [KORGAN83] */
  IF ~~ THEN DO ~SetGlobal("ShadDead","LOCALS",1)
SetGlobal("KorganNoKillShag","GLOBAL",1)
~ GOTO 38
END

IF ~  Dead("mummy")
Global("KorganTomb","GLOBAL",1)
Global("TombEmpty","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #37789 /* ~Damn and done, this crypt looks to be well looted already! The rank, stinking bastards beat us here! Those scoundrels'll dine on me sup of cold steel afore I'm through with 'em!~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 37 // from:
  SAY #38739 /* ~Be glad ye can walk, ye stinkin' gullet, lest I take care o' that problem for ye so all who pass pity ye plenty more!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0
  SAY #38927 /* ~Ye can go ahead an' search Shagbag's corpse... the blasted fool. Th' bleedin' book might still be worth something if it's intact.~ */
  IF ~~ THEN DO ~EraseJournalEntry(2057)
EraseJournalEntry(2060)
EraseJournalEntry(2061)
SetGlobalTimer("KorganContract","GLOBAL",TWO_DAYS)
~ SOLVED_JOURNAL #47736 /* ~Help Korgan recover the Book of Kaza

The book has been recovered from Korgan's old party members, Shagbag and company (all of whom are now dead). Of course, there is no one to give it to now, so any gold from its sale is ours.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #39169 /* ~Pfah! 'Tis nothing wrong with a good and bloody fight, yer clan ringing their cries to the roof in yer support. I've heard of the entertainment here, but ne'er seen it for meself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #39170 /* ~Har! Har! Har! Truly, it reminds me o' the time I caught me cousin Kraggor unawares in the chamber with me woman. He were red as a beet and flustered as a bloody hen!~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #39171 /* ~I swore at him, and he ran off with his trousers 'tween his legs, shuffling madly. Har! Har! I had to rip out his innards for it later, o' course, but 'twas funny nevertheless.~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
ActionOverride("custom",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #39176 /* ~Yer bleeding heart is leaking all o'er the floor, girlie. Staunch the flow, for I can nae stand the smell of it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #39177 /* ~By the pits of the Abyss! Ye've agreed to run off into th' bloody forest on the whinings of a whelp, have ye? Have ye lost yer senses? Bah!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 319
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 74
END

IF ~~ THEN BEGIN 44 // from:
  SAY #39180 /* ~Lovely, just lovely. If ye're plannin' this trip with that one, it be best if ye keeps us apart. I've an aching head already...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #39283 /* ~To the Abyss with the honorable path, druid. We've nae business here, an' <CHARNAME> knows it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #39355 /* ~Hmph. He could nae be that great a warrior if he were captured, I think.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 2
END

IF ~~ THEN BEGIN 47 // from:
  SAY #39356 /* ~Aye now, there it is. There be no profit in this. Let us leave the barbarian be, <CHARNAME>...~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~HENDAK~ 37
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 322
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 32
END

IF ~~ THEN BEGIN 48 // from:
  SAY #39363 /* ~If I wanted t' be listening to a braying mule, elf, I'd go listen to a braying mule.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 49 // from:
  SAY #39373 /* ~Hah! I would enjoy partaking, as he puts it. I have heard of th' pleasures to be found here... but ye seem nae the type for it, <CHARNAME>, being yellow and such.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 44
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 96
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 166
END

IF ~~ THEN BEGIN 50 // from:
  SAY #39376 /* ~Do not bait me, knight. I am nae th' one that created such pleasures; I only be th' one that takes what the gods have offered. Be dismayed on that, if ye wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #39407 /* ~Hmph. Well, the pay best be bloody well worth it if I'm to be wandering through the wilderness, hacking away at bears and squirrels and other such beasties.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 80
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 327
END

IF ~~ THEN BEGIN 52 // from:
  SAY #39408 /* ~I will if I wish to, ye blasted tree-hugging, pansy-eating dirt-lover. I'll bite th' head off a bloody dove if th' thought crosses me mind!~ */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 81
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 328
END

IF ~~ THEN BEGIN 53 // from:
  SAY #39409 /* ~I care not, ye blasted twit! Open yer mouth once more an' ye'll have an axe hilt in it! I'll nae be mocked by forest vermin!~ */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 82
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 329
END

IF ~~ THEN BEGIN 54 // from:
  SAY #39431 /* ~Aye, we've seen him, wench. He be in the back rooms, making time with his lovely as not, heh heh...~ */
  IF ~~ THEN EXTERN ~TIANA~ 5
END

IF ~~ THEN BEGIN 55 // from:
  SAY #47450 /* ~Hah! If it isn't me old friend, Mencar Pebblecrusher. I'll walk where I like, ye stunted excuse fer a dwarf. An' there be nae a thing ye can do about it.~ */
  IF ~~ THEN EXTERN ~SEVPAT01~ 7
END

IF ~~ THEN BEGIN 56 // from:
  SAY #47458 /* ~There be nothing to decide, Mencar! I've nae to fear of yer yellowed belly! Come an' be cleaved in two, if ye've the courage!~ */
  IF ~~ THEN EXTERN ~SEVPAT01~ 9
END

IF ~~ THEN BEGIN 57 // from:
  SAY #48463 /* ~Bah! It be a waste of good gold to give it to yon girlie! What be the point of adventuring if ye gives all yer wealth to waifs and the needy?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 348
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 227
END

IF ~~ THEN BEGIN 58 // from:
  SAY #48464 /* ~Don't be getting yer slippers in a pinch, girlie. The gold does the lass little good. More than likely we will come across her corpse within a fortnight, robbed.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 52
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 228
END

IF ~~ THEN BEGIN 59 // from:
  SAY #48465 /* ~Aye, that I am, lass! An' were ye shorter and bearded I would be showing ye just how I acquired me reputation amongst the women of me clan!~ */
  IF ~~ THEN REPLY #48494 /* ~Enough, Korgan. Knock it off.~ */ GOTO 63
  IF ~~ THEN REPLY #48495 /* ~Heh... that's pretty funny, Korgan.~ */ GOTO 64
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN REPLY #48496 /* ~Just ignore him.~ */ EXTERN ~AERIEJ~ 54
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Nalia")
~ THEN REPLY #48497 /* ~Just ignore him.~ */ EXTERN ~NALIAJ~ 229
  IF ~~ THEN REPLY #48498 /* ~Quiet! Let's get moving.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #48479 /* ~What?! Give up our hard-earned gold on a waif who will most like be robbed of it afore the day be out? Ye be daft, druid.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 352
END

IF ~~ THEN BEGIN 61 // from:
  SAY #48490 /* ~Eh? We be nae but bickering, <CHARNAME>. No need to get yer girdle in a bind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #48492 /* ~Now ye're going to be hanging on every word that tree-hugging, flower-eating half-elf be saying? Bah! Ye're a yellow kobold, ye are.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.0
  SAY #48499 /* ~Aw, it be nothing more than a wee jest, <CHARNAME>. No need to get yer girdle in a twist o'er it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1
  SAY #48500 /* ~Isn't it, though? It may not be looking so, but when I travel amongst me clan, the lasses fling themselves at me feet! Har!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #48503 /* ~Wha-aat?! I be innocent, I swear! Har har!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #48506 /* ~Bah! Even I would nae trade children an' women as if they were cattle! Let us plant an axe firmly in their skulls, <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #48509 /* ~Enough! If there be treasure to be had, ye shall place it in our hand with none of this nonsense and riddles lest my axe find yer tongue!~ */
  IF ~~ THEN EXTERN ~SEWERM1~ 24
END

IF ~~ THEN BEGIN 68 // from:
  SAY #48531 /* ~Pfeh! I know ye, druid. Ye wants nothing more than to return to yer tree-hugging ways an' nothing more. More than likely ye'll turn tail at the first sight of yon ogres!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 357
END

IF ~~ THEN BEGIN 69 // from:
  SAY #48532 /* ~Ye're welcome to try it any time, half-elf...~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 231
END

IF ~~ THEN BEGIN 70 // from:
  SAY #48536 /* ~If the bloody noble wishes to reward us with a plunder of gold, why must you nicker about his motives, girlie?! Let us be off, <CHARNAME>! Ogre blood beckons me axe!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #48596 /* ~Out with it, wizard! If there be treasure to be had, I wish to know of it!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 8
END

IF ~~ THEN BEGIN 72 // from:
  SAY #48646 /* ~Ye're a weak stick of a lad then. It comes natural to better men than you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #48649 /* ~I have naught for you, dog. Weak ye are if ye rot in here!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #48670 /* ~Oho! It seems the tables have turned on yon merchant, eh? Well, never let it be said that Korgan turned down a good party!~ */
  IF ~~ THEN DO ~Attack("Bmerch1")
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #48675 /* ~Har har har! Methinks the fat merchant should have stuck to hiring beasts that he could outrun!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #48712 /* ~Well, he were askin' for it, halfling! Put his wee hand into me pockets, he did, so I had to remove it with me axe. An' I'll thank ye not to bring it up again.~ */
  IF ~~ THEN DO ~ActionOverride("bftown3",RunAwayFrom("Korgan",120))
~ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #48741 /* ~Suddenly me axe feels like ogre blood, it does! Har har!~ */
  IF ~~ THEN DO ~ActionOverride("bogre1",Enemy())
Attack("bogre1")
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #48750 /* ~Hah! I oft like me girlies struggling a bit an' spittin' in me eye, but I'll keep ye in mind, lass.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #48778 /* ~Well, excuse me, then. Perhaps I should be guttin' ye with me axe an' then ye'll worry less about yer precious ale, aye?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #48847 /* ~What in the six Hells?! PFFAAAUGHH! I'll not be the one t' carry th' blasted gong if it be reeking of dung! I swear, I'll wring that blasted lout's neck for this indignity!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 107
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 70
END

IF ~~ THEN BEGIN 81 // from:
  SAY #48891 /* ~Aye, just think of the scratch I'll gain by turning in a no-good traitor like yourself! Guards! This man plots against you!~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 82 // from:
  SAY #48909 /* ~Aye! Great! BLASTED BLOODY WONDERFUL! Aye, let's take on bloody TROLLS to get this gong... for NO REWARD, mind ye! I say we go back to yon tavern and kick his BLOODY ARSE!~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 128
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 76
END

IF ~~ THEN BEGIN 83 // from:
  SAY #48913 /* ~Are we gonna pass on some deals just because they are out of their owner's hands? Bah! We soften too much!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #48938 /* ~By the Wyrm of Avarice! 'Tis a grand day when me axe gets to bite into the over-cured armor of these oh-so-superior holy warriors! Let us be off, for I grow anxious for battle!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #48947 /* ~Hah! Any fool who'd dare to think of me an' <CHARNAME> as a target, rich or nae, is a fool begging to have his innards brought out to meet the sun, and that be the truth.~ */
  IF ~~ THEN EXTERN ~INSPECT~ 5
END

IF ~~ THEN BEGIN 86 // from:
  SAY #49193 /* ~I don't recall asking, small fish. Just ye get out of me wind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #49414 /* ~They'll tolerate me brand of "attitude" for as long as I wish to give it, boy, or they'll be cleaved in two with me axe along with yerself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #49495 /* ~Enough mewling, elf! An axe in the back of one despicable wizard be as good as any other! We be here for a purpose, if ye'll recall!~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 89 // from:
  SAY #49505 /* ~Another insult or two like those, wizard, and ye'll be watching as I tear yer innards out from yer backside. We'll get yer task done quick enough; we be needin' no lip from ye.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #49538 /* ~Don't be daft! The thieves of this city have their coffers flowin' with gold aplenty! There be no reason besides a yellow belly to be turnin' it away!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 396
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 85
END

IF ~~ THEN BEGIN 91 // from:
  SAY #49543 /* ~Pfeh. If it be a struggle between conscience and gold, I can count on one of me hands the number of seconds 'twould take to resolve such a dispute. Begone with yer blather, girl.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #49565 /* ~Don't be a fool, <CHARNAME>! Blast! We've done most of the bloody task already; what be a bit of slaughter?! I, for one, wish the reward!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #49573 /* ~Ahh, take the whinin' child. I'll bash this place through on me own rather than hear her simpering one more minute.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 94 // from:
  SAY #49582 /* ~Why make such a bother over yon corpse-in-waiting? Pfeh... loot the body, I say, and leave it for the crows.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #49618 /* ~If I'd meant to knock ye over, human, ye'd be sprawled on the floor an' more likely than not with an axe in yer skull, so be grateful 'twas an errant elbow and nothing more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #49630 /* ~Har har! That Thayan blood of yours runs as hot as I've heard, wizard! Ye're a conqueror of the lasses, ye are! Har har har!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 75
END

IF ~~ THEN BEGIN 97 // from:
  SAY #49780 /* ~Well, it's about bloody time! I were almost near ready to begin swingin' me axe just to get things moving along here.~ */
  IF ~~ THEN EXTERN ~BODHI~ 4
END

IF ~~ THEN BEGIN 98 // from:
  SAY #49788 /* ~Hah! An excellent deal, to save so much gold! Seize the opportunity, <CHARNAME>, lest the fickle woman change her mind!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 99 // from:
  SAY #49811 /* ~So be it, wench. Whatever ye be, ye'll die quick enough just like any other, I'd wager.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #49825 /* ~Ahhhr, the first path sounds the better to me. I have a hankering for blood that shan't be satisfied by nilly-nallying about with morals and such.~ */
  IF ~~ THEN EXTERN ~BODHI~ 131
END

IF ~~ THEN BEGIN 101 // from:
  SAY #49900 /* ~Hmph. If ye were to be asking me, I would say that we should be profiting from this venture. Collect the ransom for yon lady, says I. 'Tis nothing wrong with a bit of coin.~ */
  IF ~~ THEN EXTERN ~ELGEA~ 13
END

IF ~~ THEN BEGIN 102 // from:
  SAY #49989 /* ~Another word from yer lips, longlegs, and ye'll be greetin' me axe personal-like. I've no patience fer blathering fools.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #50033 /* ~Pfeh! Like we needs another like ye in this group. Let us keep a wide berth of the paladin, is what I says.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 234
END

IF ~~ THEN BEGIN 104 // from:
  SAY #50039 /* ~Fine, fine. I be getting to the point that I'll be willing to kill almost anything. If this beholder has blood, it'll spill like any other's.~ */
  IF ~~ THEN EXTERN ~BHARVAL~ 27
END

IF ~~ THEN BEGIN 105 // from:
  SAY #50112 /* ~Illithium is a rare metal, <CHARNAME>, rarer than teats on a bull. I've heard o' ways to make a copy of the metal, an alloy if you will... mayhap we can look into that, aye?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #50151 /* ~One of these days, ye'll be squashed like a bug for yer impudence, gnome. Not even I would make such casual mockery of the gods.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #50307 /* ~And he hasn't changed since ye bathed him, woman. He still whines, cries, throws 'is tantrums, and belches after every meal.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 245
END

IF ~~ THEN BEGIN 108 // from:
  SAY #50332 /* ~Ye says that as if dwarven folk do nothing but. Mayhap I'll carve out yer intestines and prove different to ye.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #50674 /* ~Ahh, I canna stand dealing with madmen! <CHARNAME>! You had better corral those lunatics before we're all overrun!~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #50952 /* ~If ye've a thought in yer belly of wanderin' off or rebellin', <CHARNAME>, this would be the time to be forgetting such thoughts. I've no love fer the stinking drow, but I know when I be in their lair.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #50953 /* ~The lesser drow... that be us... they steps to the tune of their priestesses as quick as ye please. Or they die a thousand horrid deaths that'd make Clangeddin shy his eyes.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #50954 /* ~An' the drow trust each other e'en less. There be eyes everywhere, magic and not, that will watch our moves. We must act like the dark ones. Remember that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #52294 /* ~Har har! Ye've heard <CHARNAME>, lassie. If ye want our help, ye'll raise some more gold. Of course... ye could make arrangement fer a trade... heh... aye, indeed...~ */
  IF ~~ THEN EXTERN ~NALIA~ 9
END

IF ~~ THEN BEGIN 114 // from:
  SAY #55199 /* ~Har! A fine victory, if I does say so meself! Now, all we need doin' is to get out of this tree stump and find ourselves some willing lasses and some decent grog, that's what!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 115 // from:
  SAY #55224 /* ~Hmmm... I felt a draggin' on me foot, almost, when I died... and now here we be. Fair enough. It be far better than anything I were expectin' fer an afterlife.~ [KORGAN86] */
  IF ~  !IsValidForPartyDialogue("Jan")
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
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Jan")
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
  IF ~  !IsValidForPartyDialogue("Jan")
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
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 116 // from:
  SAY #55660 /* ~I had me a partner once that had an unfortunate reaction to a particular sword. That don't make it an accident.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 15
END

IF ~~ THEN BEGIN 117 // from:
  SAY #55669 /* ~Bah! Well, I have no intention of being pleasant! I've heaved up enough of me guts on this trip to leave me emptier than a halfling's head! Never will ye get me aboard a ship again!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Viconia")
Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Viconia")
Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 453
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 103
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 124
END

IF ~~ THEN BEGIN 118 // from:
  SAY #55670 /* ~Hmph. I would respond to yer comment with me axe if the mere thought of movin' didn't make me stomach roil. Begone, and count yerself lucky this time!~ */
  IF ~  Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
END

IF ~~ THEN BEGIN 119 // from:
  SAY #55703 /* ~Dead, as ye soon will be too, wench, if ye does not hand over yon girlie. Make pleasant like a good lass and mayhap <CHARNAME> won't kill ye... though I would not count on it.~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 3
END

IF ~~ THEN BEGIN 120 // from:
  SAY #55709 /* ~A reward would do nicely for rescuing yon lass. She may not have her sweetheart, but she has her freedom, and I be thinkin' that be worth something, aye?~ */
  IF ~~ THEN EXTERN ~PIRMUR09~ 18
END

IF ~~ THEN BEGIN 121 // from:
  SAY #55711 /* ~I've met more pleasant children in bogs with banshee wails. Stand me back from her; she's a creeper if'n I ever saw one.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #55717 /* ~Aye, sit on the sidelines and hope for the best, eh? And treachery would likewise follow if our chances fell, no doubt.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 36
END

IF ~~ THEN BEGIN 123 // from:
  SAY #55720 /* ~He's speakin' o' gems and such, I just know it. A pity ye can't pry into the head o' the madman.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 275
END

IF ~~ THEN BEGIN 124 // from:
  SAY #55722 /* ~I'll be prying into yer head with an axe if you backtalk me agin. I wasn't going to hurt him. Yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #55759 /* ~I second that. And someone kick the freaky gnome.~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 13
END

IF ~~ THEN BEGIN 126 // from:
  SAY #55760 /* ~I'll be wearing a couple of short nitwits' ears for shoes if'n they don't shut the bloody hell up real quick. Just thought I'd share.~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~PPTIAX~ 13
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 161
END

IF ~~ THEN BEGIN 127 // from:
  SAY #55766 /* ~No! I ain't getting on any blasted ship! I had more than me fill on the ride here! If we goes anywhere, it's into the Underdark... we'll carve a path of blood through its guts!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPSAEM2~ 20
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 130
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 135
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 18
END

IF ~~ THEN BEGIN 128 // from:
  SAY #55778 /* ~Good. End the world or shut him up. Whichever is quicker.~ */
  IF ~~ THEN EXTERN ~JANJ~ 158
END

IF ~~ THEN BEGIN 129 // from:
  SAY #55782 /* ~The imp has failed to string out his usual long-winded story. Praised be, the end must be comin'.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 158
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 109
END

IF ~~ THEN BEGIN 130 // from:
  SAY #55804 /* ~Enough, gnome! Yer stories are beginning to curdle me belly! Another word out of ye and I'll rip ye apart, I swear!~ */
  IF ~~ THEN EXTERN ~JANJ~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #55823 /* ~Everywhere we go, it seems, this happens to ye, <CHARNAME>. Well, that's just fine. But if we be herded near one pot or kitchen, I'll start flingin' me axe, just so ye be warned.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 13
END

IF ~~ THEN BEGIN 132 // from:
  SAY #55858 /* ~Bah. Yer king has offered us a gilded ransom and then some. We care not fer yer cause, boyo. If we takes it up for ye, will ye offer us better than yer king?~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 14
END

IF ~~ THEN BEGIN 133 // from:
  SAY #55883 /* ~Hmm... I didn't like his tone. I know a few insults in the Under tongue, and that weren't flattery. ~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 1
END

IF ~~ THEN BEGIN 134 // from:
  SAY #55925 /* ~I could get used to this kind of treatment, even if I'm stuck in this stick of a shell.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #55951 /* ~Ye'll be dispatching nothing. If ye make one hostile move, ye're getting an axe in yer belly, I swear.~ */
  IF ~~ THEN EXTERN ~C6CATTI1~ 0
END

IF ~~ THEN BEGIN 136 // from:
  SAY #55963 /* ~A wizard's stash that he was unearthin', eh? Now that bears lookin' into.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 137 // from:
  SAY #55965 /* ~Then I call rights to it, and no backtalk from you, mage. I know your sort gets all grabby about such things.~ */
  IF ~  Class(Player1,MAGE_ALL)
~ THEN GOTO 138
  IF ~  !Class(Player1,MAGE_ALL)
~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #55967 /* ~Not so much offense intended to you, <CHARNAME>. Edwin can bite me, though.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 139 // from:
  SAY #56015 /* ~Hmph. Adventurers, eh? I likes the look of some of their equipment, <CHARNAME>. Let's kill them.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~C6BRUEN1~ 8
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 173
END

IF ~~ THEN BEGIN 140 // from:
  SAY #56028 /* ~Ain't gonna need luck when we find those two. If you see them again, you tell them that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #56030 /* ~Aye, yet ye took our gold quickly enough, with nary a warning to go with it. I be tempted to slit yer throat an' call us bloody even.~ */
  IF ~~ THEN EXTERN ~ARAN~ 78
END

IF ~~ THEN BEGIN 142 // from:
  SAY #56036 /* ~You're speaking for yourself, o' course. I will be leaving with a sack of loot on my back and the sound of battle in my ears.~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 115
END

IF ~~ THEN BEGIN 143 // from:
  SAY #56039 /* ~Whatever. Don't have to outrun them all, just have to outrun *you*.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #56043 /* ~Speak for yerself, paladin. I'd rather be dirty than dead.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 210
END

IF ~~ THEN BEGIN 145 // from:
  SAY #56047 /* ~Aye, so the vampire bitch has returned to her nest, and ye're more frightened than a white rabbit in the fall. Now go on... tell us something that will shock us, why don't ye?~ */
  IF ~~ THEN EXTERN ~ARAN~ 86
END

IF ~~ THEN BEGIN 146 // from:
  SAY #56065 /* ~Not by a long shot, fool! You'll speak with respect when you address me, or you'll be sleeping six feet lower than usual. Understand?!~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 175
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~KELDORJ~ 212
  IF ~  IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~IMOEN2J~ 29
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~EDWINJ~ 122
END

IF ~~ THEN BEGIN 147 // from:
  SAY #56068 /* ~What? Oh yeah, drow. Whatever.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.1
  SAY #56072 /* ~Pompous ass.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #56089 /* ~We appear to be the stumbling, out-of-place fools that we are. Stop pussyfootin' around down here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #56101 /* ~Ye're a fine one fer words, wizard, but for all yer pretty magics, we've killed ye once and we'll be pleased t' do so again!~ [KORGAN85] */
  IF ~  !IsValidForPartyDialogue("Anomen")
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
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Anomen")
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
  IF ~  !IsValidForPartyDialogue("Anomen")
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
  IF ~  !IsValidForPartyDialogue("Anomen")
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
END

IF ~~ THEN BEGIN 151 // from:
  SAY #56119 /* ~What good is this indigo she-beast if she is as much a target down here as the rest of us?~ */
  IF ~  !IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~VICONIJ~ 96
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 33
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~EDWINJ~ 127
END

IF ~~ THEN BEGIN 152 // from:
  SAY #56121 /* ~Ye hear that, Vico? The little girl protects you.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56123 /* ~ 'Ey there, Vico. Edwin's sweet on ye. ~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56148 /* ~Well, good, you go and do that. I'll be getting out clean without petty vendettas. Save that for another day when their backs are turned.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 6
END

IF ~~ THEN BEGIN 155 // from:
  SAY #56149 /* ~Well, then ye're dead. Shut yer yap and let the rest of us sleep.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 13
END

IF ~~ THEN BEGIN 156 // from:
  SAY #56163 /* ~<CHARNAME>, don't get the beast angered! I don't put much stock in our chances...~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #56168 /* ~Clever indeed. They managed to take the one thing that could hold yer wrath at bay. Brilliant.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 19
END

IF ~~ THEN BEGIN 158 // from:
  SAY #56195 /* ~Shoulda tried harder, vampire. No way you are getting away again. We got a score to settle.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 159 // from:
  SAY #56223 /* ~He's provoked one from me, all right. I'll deliver it nice and personal on the edge of a blade.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 12
END

IF ~~ THEN BEGIN 160 // from:
  SAY #56236 /* ~Well, ye did not kill him, that much is certain. What waste of time did you impose?~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 23
END

IF ~~ THEN BEGIN 161 // from:
  SAY #56406 /* ~Ahh, then this is the closest I've come to understanding the fool. A cause I can respect.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 16
END

IF ~~ THEN BEGIN 162 // from:
  SAY #56422 /* ~I, for one, have never had much of a liking fer tree-huggers an' their kin. One less precious grove will make no difference in my book. Let's poison the prancin' bastards.~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 163 // from:
  SAY #56435 /* ~Let us be away from here, then. I've an itch fer killin', and it seems t' me some snot-nosed mayor'd be a good place to start.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #56485 /* ~Ye're just about off yer chair in anticipation of this here bauble, wench. If ye wants it as I thinks ye do, ye'll pony up gold, and that be all there be to it.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 4
END

IF ~~ THEN BEGIN 165 // from:
  SAY #56493 /* ~Well, I were thinking that something stank like the Styx, and it be fine to see me senses were not deceived. Har! Good thing I did not pay to see this, aye?~ */
  IF ~~ THEN EXTERN ~RAELIS~ 34
END

IF ~~ THEN BEGIN 166 // from:
  SAY #56500 /* ~Ehhh, there be many things I would do gladly. Harming children be not one of them. Her man be a cur and not worthy of the spittle on me boot.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~JANJ~ 37
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 177
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56512 /* ~Oh, this be a fine one. A sprout with nae sense in her bloody head. Help others, is it? Help me, lass, by keeping yer mouth shut, an' I'll be pleased enough.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 66
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 194
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 502
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56513 /* ~Oh, this be a fine one. A sprout with nae sense in her bloody head. Help others, is it? Help me, lass, by keeping yer mouth shut, an' I'll be pleased enough.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 53
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 195
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 503
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56543 /* ~Har! I'd like it more if me duty was to pull the blue-blooded wench over me lap and show her a time like no lady I've e'er met! Har har!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 96
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56873 /* ~Good use for who, eh? Not fer us, that's for certain. When can we expect to see a return on <CHARNAME>'s fool investment?~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56953 /* ~Aye, I've heard o' the black runt. A foppish mercenary, I hears, famous an' loaded with magic. 'Twould not stand up to me axe, I think, but he sounds fearsome enough.~ */
  IF ~~ THEN EXTERN ~BREG01~ 8
END

IF ~~ THEN BEGIN 172 // from:
  SAY #57194 /* ~Blast ye, drow! We shall catch up to ye eventually! We shall find ye, and I'll bloody split ye from end to end with a smile, I will!~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 39
END

IF ~~ THEN BEGIN 173 // from:
  SAY #57671 /* ~Ye're a bit pale in the face, <CHARNAME>. Perhaps someone else should take the lead from ye. Perhaps me.~ */
  IF ~~ THEN REPLY #57672 /* ~Thanks for your concern, Korgan, but I'll manage just fine. ~ */ GOTO 174
  IF ~~ THEN REPLY #57673 /* ~Fine, you stand up front the next time someone needs their soul sucked out.~ */ GOTO 175
  IF ~~ THEN REPLY #57674 /* ~I will be continuing just fine. Get thee behind me, as they say.~ */ GOTO 176
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #57675 /* ~Aye, have it your way then. I'll be watching you though, in case you weaken any more. No telling what that ritual did to you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from: 173.1
  SAY #57676 /* ~Ahh, perhaps ye're best in the lead after all. These is your enemies, really. Besides, better that I back you up in case you weaken further.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 176 // from: 173.2
  SAY #57677 /* ~Yes, yes, I'm sure you'll manage. Don't hesitate to ask for help if you feel weak though. I got a right to know if you can't handle it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #57718 /* ~What in blazes?! <CHARNAME>! You are some kind of powerful freak, to be sure! Seen a picture in a temple once of that beastie. You became the Lord o' Murder.~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #57719 /* ~As much as I like having powerful friends, I don't want to be around when you lose your mind to such power. ~ */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #57720 /* ~Steel yourself against the urge to succumb again. I'll put a dagger in yer neck before I get caught in the wake of that beastie.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY #57904 /* ~And if you believe that, you'll believe anything.~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 205
END

IF ~~ THEN BEGIN 181 // from:
  SAY #58134 /* ~Don't see why we have to do this at all. I'm gettin' tired of chasing all over for someone I ain't even met.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 515
END

IF ~~ THEN BEGIN 182 // from:
  SAY #58135 /* ~Keep talking, pretty. You'll cross a line one day.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from:
  SAY #58136 /* ~Quick to drop your shining honesty when it suits ye, eh? A fine tiny paladin you'll make.~ */
  IF ~~ THEN EXTERN ~MAZZYJ~ 198
END

IF ~~ THEN BEGIN 184 // from:
  SAY #58188 /* ~I will have no trouble with this. Had experience with me own thieving traitors. I'll give these two a taste of what I owe the others.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from:
  SAY #58189 /* ~You'd be in more danger if they were collecting cowards, fool. Now be quiet.~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 186 // from:
  SAY #58203 /* ~Yes, yes, a simple dumping ground for those that prove "troublesome." I've seen the like before, from the inside on occasion.~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 187 // from:
  SAY #58223 /* ~Ach, don't be givin' me any o' that! Me axe be as sharp as she gets, and it's itching fer a wizardly bloodletting! If I dies, I takes me chances, but I'll have none o' yer coddling!~ */
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
END

IF ~~ THEN BEGIN 188 // from:
  SAY #58499 /* ~If I wanted to listen to yer yip, ye prissy elf, I'd pull ye over me knee and smack yer bottom. At least then I'd have meself something interesting to do while ye blathered on.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 189 // from:
  SAY #58523 /* ~Pfeh! Hand him to yon mage or nae, I care not. I, for one, would like to see what treasures lay in the sphere he spoke of. Far more booty than this wizard offers, aye?~ */
  IF ~~ THEN EXTERN ~TOLGER~ 82
END

IF ~~ THEN BEGIN 190 // from:
  SAY #58749 /* ~Even a paladin slick as the morn would think ye no better than a worm, Yoshimo! I vote we gut this fool thief!~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 191 // from: 0.0
  SAY #58890 /* ~Of all the gravest slights! Yer kindred's spots betray ye for the backstabbing jackals ye are! We'd a covenant, and ye've broken that deal!~ */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #58891 /* ~It's in Fate's hand I don't butcher the disgraceful lot of ye! Farewell, cretins, and nae stop lookin' over yer shoulders, 'cause death doth carry an axe.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 193 // from: 0.1
  SAY #58892 /* ~Then let us posthaste!~ */
  IF ~~ THEN DO ~SetGlobalTimer("KorganBook","GLOBAL",SIX_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 194 // from: 1.0
  SAY #58893 /* ~Yer excuses are addled with nonsense and lies! Good riddance!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 195 // from: 1.1
  SAY #58894 /* ~Ye'd all be wise to recall that I'm not in this group with ye. Ye're in this group with me!~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #58900 /* ~I long for nothing other than not letting the sorry long-limb lot of ye live! Fare thee well, fools, for ye ne'er know what bears down upon ye while ye sleep.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("KorganContract","GLOBAL")
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
Global("KorMentionedContract","LOCALS",0)
AreaType(OUTDOOR)
!AreaCheck("AR0406")
See(Player1)
CombatCounter(0)
~ THEN BEGIN 197 // from:
  SAY #58906 /* ~Ehhh... something I should bring up to ye, <CHARNAME>. Now that the business with Shagbag an' me former mates be laid to rest, I be reminded of a former arrangement I've made.~ */
  IF ~~ THEN DO ~SetGlobal("KorMentionedContract","LOCALS",1)
~ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #58907 /* ~There be a man who were eager to hire me an' the others fer a bounty job. 'Twas no great thing, just a show of interest, but I've no desire to see me reputation go up in smoke, aye?~ */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #58908 /* ~I know nae about the job, but gold always looks good. Since I seem to be travelin' with the lot of ye, perhaps we could go to the fellow an' hear his offer, aye?~ */
  IF ~~ THEN REPLY #58909 /* ~Who is this man you're talking about?~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan offered another job

Korgan mentioned that his adventuring party had been offered employment before their... unfortunate... split-up occurred. He asked that we go and see the man who made the offer, Madeen, as he has a reputation to uphold. Madeen can be found in front of the council building in the Government District.~ */ GOTO 200
  IF ~~ THEN REPLY #58910 /* ~We could go and see this man, but I'm not sure we have time to take any offers.~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan offered another job

Korgan mentioned that his adventuring party had been offered employment before their... unfortunate... split-up occurred. He asked that we go and see the man who made the offer, Madeen, as he has a reputation to uphold. Madeen can be found in front of the council building in the Government District.~ */ GOTO 200
  IF ~~ THEN REPLY #58911 /* ~I've no interest is such a matter, Korgan.~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan offered another job

Korgan mentioned that his adventuring party had been offered employment before their... unfortunate... split-up occurred. He asked that we go and see the man who made the offer, Madeen, as he has a reputation to uphold. Madeen can be found in front of the council building in the Government District.~ */ GOTO 203
  IF ~  Dead("korshag")
~ THEN REPLY #58912 /* ~Forget it, dwarf. It was bad enough traveling with you through the tomb; I'm not about to prolong the agony any further.~ */ GOTO 204
  IF ~  !Dead("korshag")
~ THEN REPLY #58913 /* ~Forget it, dwarf. It was bad enough traveling with you through the tomb; I'm not about to prolong the agony any further.~ */ GOTO 206
END

IF ~~ THEN BEGIN 200 // from: 199.1 199.0
  SAY #58914 /* ~He said his name be Madeen, representing some wizard or other. He said his master were needin' adventurers willing to work fer a good pile o' coin. It sounded fair enough.~ */
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #58915 /* ~He told me he would be out in front of the government building in the Government District and keep a looks out for me and me crew. Mayhap we could go and see this Madeen.~ */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 203.0 201.0
  SAY #58916 /* ~There be no rush on the matter, <CHARNAME>. I just nae be wanting to see some other eager adventurer snap up this Madeen's offer an' call Korgan a bowelhive, is all.~ */
  IF ~~ THEN DO ~SetGlobalTimer("KorganRemindsMadeen","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 203 // from: 199.2
  SAY #58917 /* ~Well, if ye've nae an interest, ye've nae an interest. So be it. If ye change yer mind, the man be named Madeen and said he could be found in the Government District.~ */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 204 // from: 199.3
  SAY #58918 /* ~Well, ye might have mentioned it sooner, <PRO_GIRLBOY>. I've better to do than hang about an' listen to yer bellyaches. Ye've helped me track Shagbag, an' that be fair enough.~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #58919 /* ~If ye gathers enough courage again, come an' find me at the Copper Coronet. Otherwise, keep yer yellow legs well and far away.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0406",950,1867,E)
~ EXIT
END

IF ~~ THEN BEGIN 206 // from: 199.4
  SAY #58920 /* ~First, ye lets Shagbag get away with the loot from yon tomb, an' now ye're berating me, is it? Bah! I've enough of yer bellyaching! If it be such a trial for ye, I be gone!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsMadeen","GLOBAL")
Global("KorReminder","LOCALS",0)
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1000")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 207 // from:
  SAY #58921 /* ~Will we be heading to see the Madeen fellow soon, <CHARNAME>? I know ye be a busy <PRO_MANWOMAN>, but it be me own reputation at stake here. I say we go and see what it's about.~ */
  IF ~~ THEN DO ~IncrementGlobal("KorReminder","LOCALS",1)
SetGlobalTimer("KorganRemindsMadeen","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsMadeen","GLOBAL")
Global("KorReminder","LOCALS",1)
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1000")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 208 // from:
  SAY #58922 /* ~So we be not heading to see the Madeen fellow, aye? Ye're a hard-arsed mule, <CHARNAME>. But as long as we be collectin' gold, I'll be saying nothing more of it.~ */
  IF ~~ THEN DO ~IncrementGlobal("KorReminder","LOCALS",1)
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsValygar","GLOBAL")
Global("KorReminder2","LOCALS",0)
!Global("BetrayedCowled","GLOBAL",1)
!InParty("Valygar")
!PartyHasItem("MISC7L")
!Global("BetrayedValygar","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 209 // from:
  SAY #58923 /* ~Not to be a mite, <CHARNAME>, but we agreed to find the ranger pup for the bloody wizard, aye? Let's get a move on and do that before I loses me patience.~ */
  IF ~~ THEN DO ~SetGlobal("KorReminder2","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #59350 /* ~If ye be speaking of Shagbag and them other traitors, then nay... this be me new party, and a much better one at that.~ */
  IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59351 /* ~But enough of yer gab, human. Ye asked me to come... have ye a contract for Korgan or nay? If ye've wasted me time, I'll be sorely put out, I'll warn ye now.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 13
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59353 /* ~Do as ye wish, long-legs. But do not call me "Mr. Bloodaxe" again. The name be Korgan only. An' ye can speak to <CHARNAME> here if ye're to speak to anyone of us.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 1
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59355 /* ~Don't be so hasty in taking charge of me own affairs. I be willing to take the contract, Madeen, even if it were to wait until <CHARNAME> here changes <PRO_HISHER> bloody fool mind.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 8
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59359 /* ~I am not thrilled o'ermuch at the thought of working for the bloody wizards... but it could be a profitable contract, and I'll nae let it fall to some wet-eared pretender.~ */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 214.0
  SAY #59360 /* ~Ye should think too, <CHARNAME>, that yon Cowled Wizards may provide ye with information... and may be more pleased to do so if ye've done them a task. Or nay... it is up to ye.~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59361 /* ~I say let us go within the building and at least talk to yon Tolgerias, aye? And I'll even leave the final decision up to ye, <CHARNAME>, to make it fair, heh...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59363 /* ~I be up to any task, wizard, but if there be convincing to be done, ye'd best convince me comrade here, <CHARNAME>. It be <PRO_HISHER> decision whether we take yer job or nay.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 86
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59367 /* ~Blast and bloody tarnations! I should have known that the wizards would demand such! It be up to ye, <CHARNAME>, but I for one would rather kick his arse than kiss it.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 2
END

IF ~~ THEN BEGIN 219 // from:
  SAY #59375 /* ~A hunt fer a bounty, is it? Pfeh... I wonder why the wizard gives us so much background. Lies, all of it, I have little doubt. Perhaps if we figure out why they want this man, <CHARNAME>, we'll have more treasure yet...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from:
  SAY #59378 /* ~So this is where the cowardly hidden ranger be, eh? Ye're correct, boy... the wizards hired us to track ye down for some manner of retribution. The difference means little to us.~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 1
END

IF ~~ THEN BEGIN 221 // from:
  SAY #59380 /* ~ 'Tis a stain on me reputation that ye add the bounty to our ranks, <CHARNAME>, but I'll nae speak against it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 222 // from:
  SAY #70521 /* ~So go into yon dungeon and clear it out yerselves, ye blasted sissies! What good are ye, anyway?!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 12
END

IF ~~ THEN BEGIN 223 // from:
  SAY #70528 /* ~So ye sent us in to be torn t' bloody chunks?! I'm tempted to show ye how we treated yer sorry demon! <CHARNAME>, let's hack this sot apart and be done with 'em all!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 224 // from:
  SAY #70536 /* ~Hmph. (*grumble* *grumble*... I haven't been talked t' like I were a wee stupid babe except by the last bloke I bloody well beheaded...)~ */
  IF ~~ THEN DO ~SetGlobal("KnightsInKeep","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from:
  SAY #70410 /* ~I've no objection to testin' me mettle against a demon prince, <CHARNAME>—though ye should make sure the reward be worth the trouble!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 141
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 533
END

IF ~~ THEN BEGIN 226 // from:
  SAY #70432 /* ~Stow it, ye runty windbag! I can't hear the dying screams of me enemies if ye're prattlin' on!~ */
  IF ~~ THEN EXTERN ~JANJ~ 188
END

IF ~~ THEN BEGIN 227 // from:
  SAY #78614 /* ~Close enough for my taste.~ */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 40
END

IF ~~ THEN BEGIN 228 // from:
  SAY #79526 /* ~"Endured much"? You wouldn't know endurance if it bit ya on the nose, y'pampered priss! ~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 11
END

IF ~~ THEN BEGIN 229 // from:
  SAY #79171 /* ~No, but you've gotta admit they know how to have a good time.~ */
  IF ~~ THEN EXTERN ~OHRSLARA~ 2
END

IF ~~ THEN BEGIN 230 // from:
  SAY #74591 /* ~You know this half-orc, <CHARNAME>? I didn't think you had it in you.~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 22
END

IF ~~ THEN BEGIN 231 // from:
  SAY #74785 /* ~I'm with the half-orc. I've an axe, these fine churchgoin' folk got skulls, what're we waiting for?~ */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 1
END

IF ~~ THEN BEGIN 232 // from:
  SAY #74830 /* ~Subtlety's for games. A sharp blade'll take ye farther in the real world. Hell, even a dull club'd serve you better.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 312
END

IF ~~ THEN BEGIN 233 // from:
  SAY #74917 /* ~Bring 'em on, I say. They're just a buncha lice-ridden Helm polishers.~ */
  IF ~~ THEN REPLY #74918 /* ~Nice.~ */ EXTERN ~DORNJ~ 348
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 234 // from:
  SAY #75722 /* ~This is no fit place for a dwarf, <CHARNAME>. Remind me again why I tolerate you?~ */
  IF ~~ THEN REPLY #75723 /* ~Don't be afraid, Korgan.~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #75724 /* ~Afraid? I should have your tongue out for that, <PRO_RACE>. It's not like we're facin' down a horde of dragons—it's just a bloody tree!~ */
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
IsValidForPartyDialogue("dorn")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
IsValidForPartyDialogue("viconia")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
IsValidForPartyDialogue("valygar")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  !IsValidForPartyDialogue("mazzy")
IsValidForPartyDialogue("minsc")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~MINSCJ~ 252
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN REPLY #75725 /* ~That's the spirit.~ */ EXTERN ~MAZZYJ~ 208
END

IF ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 236 // from:
  SAY #77506 /* ~Hrrh. All the comforts of a Deepstone cavern and none of the charm. Do what ye're here to do, <CHARNAME>, and let's be done with this place.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 56
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 771
END

IF ~~ THEN BEGIN 237 // from:
  SAY #74712 /* ~We don't want to keep her waiting. An' believe me, you don't want to keep us waiting!~ */
  IF ~~ THEN EXTERN ~OHDBBRO~ 2
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 162
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 196
END

IF ~~ THEN BEGIN 238 // from:
  SAY #74712 /* ~We don't want to keep her waiting. An' believe me, you don't want to keep us waiting!~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 224
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 164
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 226
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 163
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 197
END

IF ~~ THEN BEGIN 239 // from:
  SAY #74805 /* ~Of course they gotta die. Got any other shocking plot twists you wanna share, or can I get to work?~ */
  IF ~~ THEN EXTERN ~OHDBRIDE~ 0
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 198
END

IF ~~ THEN BEGIN 240 // from:
  SAY #74805 /* ~Of course they gotta die. Got any other shocking plot twists you wanna share, or can I get to work?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 538
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 199
END

IF ~~ THEN BEGIN 241 // from:
  SAY #74846 /* ~Cheap swine. Y'call those wedding gifts? I wouldn't give them to a dog, much less a family member. Well, maybe one of my family members. Buncha bastards that they are.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 318
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 200
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 417
END

IF ~~ THEN BEGIN 242 // from:
  SAY #74860 /* ~Bringin' the half-orc in? That's some sound whadd'yercallit tactics, right there. Good thinkin', <CHARNAME>. Just make sure to send him into battle first.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 320
END

IF ~  Global("OHH_mazestart","OH7000",1)
~ THEN BEGIN 243 // from:
  SAY #80980 /* ~I'm not likin' the looks of that trail of bones. What's down here?~ */
  IF ~~ THEN EXTERN ~OHHFAK~ 28
END

IF ~~ THEN BEGIN 244 // from:
  SAY #81454 /* ~Shut yer bloody mouth, gnome. I've had enough o' yer bibble.~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 67
END

IF ~~ THEN BEGIN 245 // from:
  SAY #93253 /* ~If ye're gonna free that beast, I'd like to see what those drunken louts would make of 'im. A brawl, a brawl! I hope we git a brawl!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 98
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 290
END

IF ~~ THEN BEGIN 246 // from:
  SAY #88083 /* ~A bleedin' cat? Haven't we got enough to carry around without a yowling, scratching beastie to steal our victuals and piss on our armor?~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 201
END

IF ~~ THEN BEGIN 247 // from:
  SAY #93665 /* ~ 'Course you have. Bloody meddling busybody...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 248 // from:
  SAY #272484 /* ~Is it getting a little hot in here, or is it just me?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 70
END

IF ~~ THEN BEGIN 249 // from:
  SAY #272499 /* ~But Captain, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
  IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #272500 /* ~Ole Korgan nae hath seen one such as yerself. I simply needed a hand on yer ample bosom to see if ye be an illusion.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 6
END

IF ~~ THEN BEGIN 251 // from:
  SAY #272502 /* ~Aye, doth ye be a prude? Ye ain't felt true pleasure till ye hath lain with a master of eroticism, such as I.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 7
END

IF ~~ THEN BEGIN 252 // from:
  SAY #272504 /* ~Bed, floor, or field doth make no difference to I, longlimbs. You are nae ready now, but when ye are, come and see Korgan for a night you shan't forget. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 253 // from:
  SAY #67767 /* ~Everywhere ye go, ye find bloody do-gooders sticking thar noses in where they canna be welcome! ~ */
  IF ~~ THEN EXTERN ~SARBAR01~ 8
END

IF ~~ THEN BEGIN 254 // from:
  SAY #67768 /* ~Har! A little pickle tickle with the Sister in the back of the church, eh? Ye know what they say... nun is better! HAR! HAR! HAR!~ */
  IF ~~ THEN EXTERN ~SARBAR01~ 9
END

IF ~~ THEN BEGIN 255 // from:
  SAY #67876 /* ~Hmph. I nae see the difficulty for ye, <CHARNAME>. Take yer power... ye fought for it hard an' well enough. There be no need to give it up, and no one worth givin' it up for.~ [KORG2519] */
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #67878 /* ~And besides all o' that... if ye becomes a power, ye can reward us all the better for following ye about all these months. I've had enough of yer smell... ha! Some gold would be fine—indeed! Ha har har!~ [KORG2520] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
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
~ THEN EXTERN ~ANOMENJ~ 375
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
~ THEN EXTERN ~IMOEN2J~ 153
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
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 212
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 213
END

IF ~~ THEN BEGIN 257 // from:
  SAY #70380 /* ~The lass shoulda known better than to get between a mercenary and his coin!~ */
  IF ~~ THEN EXTERN ~AMMAYOR~ 6
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 330
END

IF ~~ THEN BEGIN 258 // from:
  SAY #70410 /* ~I've no objection to testin' me mettle against a demon prince, <CHARNAME>—though ye should make sure the reward be worth the trouble!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 147
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 589
END

IF ~~ THEN BEGIN 259 // from:
  SAY #70432 /* ~Stow it, ye runty windbag! I can't hear the dying screams of me enemies if ye're prattlin' on!~ */
  IF ~~ THEN EXTERN ~JANJ~ 223
END

IF ~~ THEN BEGIN 260 // from:
  SAY #70472 /* ~*snort* I kin just imagine the kind o' deal yon laddie has in store for ye, <CHARNAME>. I've made a deal or two o' that sort meself.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 14
END

IF ~~ THEN BEGIN 261 // from:
  SAY #70521 /* ~So go into yon dungeon and clear it out yerselves, ye blasted sissies! What good are ye, anyway?!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 12
END

IF ~~ THEN BEGIN 262 // from:
  SAY #70528 /* ~So ye sent us in to be torn t' bloody chunks?! I'm tempted to show ye how we treated yer sorry demon! <CHARNAME>, let's hack this sot apart and be done with 'em all!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 263 // from:
  SAY #70536 /* ~Hmph. (*grumble* *grumble*... I haven't been talked t' like I were a wee stupid babe except by the last bloke I bloody well beheaded...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #71307 /* ~I see violence in yer stares... go ahead and make yer move, ye greasy, grabby gits! I promise ye won't live past happy hour!~ */
  IF ~~ THEN EXTERN ~SARBUL06~ 3
END

IF ~~ THEN BEGIN 265 // from:
  SAY #71451 /* ~Look at them point-ears run! Move them gangly legs, or the soldiers are gonna get ye! HAR! HAR! HAR!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #71634 /* ~Damn right.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 267 // from:
  SAY #72342 /* ~I sense the whiff o' potential profit, <CHARNAME>! Grieving mothers be a soft touch!~ */
  IF ~~ THEN EXTERN ~SARCNT01~ 10
END

IF ~~ THEN BEGIN 268 // from:
  SAY #72569 /* ~Kobolds? I can hardly even work up a sweat against those ankle-biting fleabags anymore, <CHARNAME>! But wholesale slaughter can be fun too, aye!~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 13
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 274
END

IF ~~ THEN BEGIN 269 // from:
  SAY #83020 /* ~Yer underground glows are usually white, yellow, or green. Never seen purple before. Kinda wish I wasn't seeing it now.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 905
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 270 // from:
  SAY #83162 /* ~In my experience, it's better to be diggin' into a place than tryin' to dig out of it.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
END

IF ~~ THEN BEGIN 271 // from:
  SAY #82096 /* ~And then we kill 'em!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 481
END

IF ~~ THEN BEGIN 272 // from:
  SAY #82784 /* ~Aye, don't be afraid—be bloody terrified!~ */
  IF ~~ THEN EXTERN ~OHRSHANI~ 1
END

IF ~~ THEN BEGIN 273 // from:
  SAY #82790 /* ~Eat steel, y'Sharran maggot!~ */
  IF ~~ THEN EXTERN ~OHRSHANI~ 4
END

IF ~~ THEN BEGIN 274 // from:
  SAY #82805 /* ~Well, <PRO_HESHE>'s right about that.~ */
  IF ~~ THEN EXTERN ~OHRSHANI~ 5
END

IF ~~ THEN BEGIN 275 // from:
  SAY #82996 /* ~The monk's right. There's only one fit response to those trespassing in a clanhold.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 173
END

IF ~~ THEN BEGIN 276 // from:
  SAY #82998 /* ~This is no trespass, girlie. Least not one worth the name.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 538
END

IF ~~ THEN BEGIN 277 // from:
  SAY #82732 /* ~Aye. It's what they've done here that drives ye. Pull the other one, y'bloody hypocrite.~ */
  IF ~~ THEN EXTERN ~OHRKILLI~ 0
END

IF ~  Global("OHD_constelterject","OH5500",1)
~ THEN BEGIN 278 // from:
  SAY #89868 /* ~I'd rather jam hot pokers in my ears than listen to this righteous wailing.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_constelterject","OH5500",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 628
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 279 // from:
  SAY #92236 /* ~Hah! Who'd have thought a Bloodaxe would ever see the skies of Lunia? Not this dwarf, I'll tell you that much.~ */
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
END

IF ~~ THEN BEGIN 280 // from:
  SAY #92110 /* ~I've never much favored the "leave no man behind" philosophy anyway.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 484
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 280
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 186
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 229
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 631
END

IF ~~ THEN BEGIN 281 // from:
  SAY #85377 /* ~I've seen your magic at work, girlie. You're as like to be cremated before you die as after.~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 547
END

IF ~~ THEN BEGIN 282 // from:
  SAY #85379 /* ~Observant?~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 548
END
