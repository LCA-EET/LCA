// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BREVLI.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BREVLI.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA175~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~HELLO! SHHH! Shh... ah... um... I mean, hello. Might I have but a moment of your, ah, time? Ooh, this IS exciting isn't it? Oh, wait. You wouldn't think so. You're probably used to it.~ #2555 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Ah yes, well, um, you... you, ah... Oh, how do I approach this? You are, ah, for hire? I mean, ah... I need a... job done. Get my intent? A... JOB done. Strictly hush hush, I believe you would say.~ #2556 */
  IF ~~ THEN REPLY @3 /* ~Speak your mind, sir, so I might know your meaning.~ #2595 */ GOTO 5
  IF ~~ THEN REPLY @4 /* ~Am I to understand that you intend me to do something I would not be proud to speak of?~ #2596 */ GOTO 6
  IF ~~ THEN REPLY @5 /* ~I am not one who can be hired out of a tavern!~ #2597 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~I've other business! Begone.~ #2598 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @7 /* ~You're not? Well, certainly it's most distressing, it is. A friend with more experience in these matters told me that this place, above all others, was where I should go. I need a particular type of person for... Well, no matter. You're obviously not interested. I shall look elsewhere.~ #2557 */
  IF ~~ THEN DO ~SetGlobal("RefuseBrevlik","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 16.0 9.1 8.1 7.1 6.1 5.1 4.1 1.3
  SAY @8 /* ~As you will, but I shall be here some time if you change your mind. Ooh, this is SO naughty of me.~ #2558 */
  IF ~~ THEN DO ~SetGlobal("RefuseBrevlik","GLOBAL",1)
~ EXIT
END

IF ~  Global("BrevlikRobbed","GLOBAL",0)
Global("RefuseBrevlik","GLOBAL",1)
Global("HelpBrevlik","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~Well then, have you time enough to speak with me now? I haven't found anyone suitable for my task yet. Tell me, would you be interested in a little, ah, after-dark shopping?~ #2560 */
  IF ~~ THEN REPLY @10 /* ~Illegal eh? What's in it for me to take such a risk?~ #6117 */ GOTO 13
  IF ~~ THEN REPLY @11 /* ~I'll have none of this, sir! Be thankful I don't turn you over to the guard!~ #6118 */ GOTO 3
  IF ~  Global("BrevlikFiveGold","GLOBAL",0)
~ THEN REPLY @12 /* ~I'm listening, though my ears don't hear so good lately. Perhaps I should test them with the rattle o' coins.~ #6119 */ DO ~SetGlobal("BrevlikFiveGold","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY @13 /* ~What's the score my little friend?~ #6120 */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY @14 /* ~I should like to procure your talents for a, ah, unique service, though it's not like you would have to do anything socially untoward. Well, perhaps a bit, though not so much untoward as, ah, illegal.~ #2564 */
  IF ~~ THEN REPLY @15 /* ~Illegal, eh? What's in it for me to take such a risk?~ #2599 */ GOTO 13
  IF ~~ THEN REPLY @11 /* ~I'll have none of this, sir! Be thankful I don't turn you over to the guard!~ #2600 */ GOTO 3
  IF ~  Global("BrevlikFiveGold","GLOBAL",0)
~ THEN REPLY @12 /* ~I'm listening, though my ears don't hear so good lately. Perhaps I should test them with the rattle o' coins.~ #2601 */ DO ~SetGlobal("BrevlikFiveGold","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY @16 /* ~What's the score, my little friend?~ #2602 */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @17 /* ~All I want is the acquisition of an item currently in the possession of someone else. It's not as though it's stealing. Well, actually it's a lot like stealing. Okay, it's stealing, but it's only the one item, and I don't want anybody hurt.~ #2568 */
  IF ~~ THEN REPLY @10 /* ~Illegal eh? What's in it for me to take such a risk?~ #2603 */ GOTO 13
  IF ~~ THEN REPLY @11 /* ~I'll have none of this, sir! Be thankful I don't turn you over to the guard!~ #2604 */ GOTO 3
  IF ~  Global("BrevlikFiveGold","GLOBAL",0)
~ THEN REPLY @12 /* ~I'm listening, though my ears don't hear so good lately. Perhaps I should test them with the rattle o' coins.~ #2605 */ DO ~SetGlobal("BrevlikFiveGold","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY @13 /* ~What's the score my little friend?~ #2606 */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.2 5.2 4.2
  SAY @18 /* ~Oh, of course! The bit o' coin to jog your memory! It's just as I imagined! Oh, this is all just so naughty! Ahem. "Here mate, 'ows 5 gold get your attention?" Hee hee.~ #2570 */
  IF ~~ THEN REPLY @15 /* ~Illegal, eh? What's in it for me to take such a risk?~ #2607 */ DO ~GivePartyGold(5)
~ GOTO 13
  IF ~~ THEN REPLY @19 /* ~I'll none of this, sir! Be thankful I don't turn you over to the guard!~ #2608 */ DO ~GivePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY @16 /* ~What's the score, my little friend?~ #2609 */ DO ~GivePartyGold(5)
~ GOTO 12
  IF ~~ THEN REPLY @20 /* ~Oh dear! I couldn't hear a word you said, though if I had, I would have answered "more." ~ #2610 */ DO ~GivePartyGold(5)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.3
  SAY @21 /* ~Oh, but you're a shrewd one! And such a fun game this is! "All right pardner, 5 more gold and not a silver more." Whee he he.~ #2571 */
  IF ~~ THEN REPLY @10 /* ~Illegal eh? What's in it for me to take such a risk?~ #2611 */ DO ~GivePartyGold(5)
~ GOTO 13
  IF ~~ THEN REPLY @19 /* ~I'll none of this, sir! Be thankful I don't turn you over to the guard!~ #2612 */ DO ~GivePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY @16 /* ~What's the score, my little friend?~ #2613 */ DO ~GivePartyGold(5)
~ GOTO 12
  IF ~~ THEN REPLY @22 /* ~Nope, I still can't hear a word you're saying. Pity that. Although...~ #2614 */ DO ~GivePartyGold(5)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.3
  SAY @23 /* ~Hmm, this game gets a tad repetitive now. Perhaps I can find someone who has less expensive ears. Reconsider, will you? I have enjoyed our fun so far.~ #2572 */
  IF ~~ THEN REPLY @15 /* ~Illegal, eh? What's in it for me to take such a risk?~ #2615 */ GOTO 13
  IF ~~ THEN REPLY @19 /* ~I'll none of this, sir! Be thankful I don't turn you over to the guard!~ #2616 */ GOTO 3
  IF ~~ THEN REPLY @16 /* ~What's the score, my little friend?~ #2617 */ GOTO 12
  IF ~~ THEN REPLY @24 /* ~What?! What?! Did someone say something?! I think it was "goodbye"!~ #2618 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.3
  SAY @25 /* ~Hmph! It's right rude of you! I certainly need not suffer this indignity further!~ #2573 */
  IF ~~ THEN DO ~EscapeArea()
~ GOTO 11
END

IF ~  False()
~ THEN BEGIN 11 // from: 10.0
  SAY @26 /* ~Oh no, I'll not be dealing with you again! Insult me will you? Hmph!~ #2574 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 8.2 7.2 6.3 5.3 4.3
  SAY @27 /* ~That's the spirit! A little larceny never hurt anyone! Well, it won't hurt ME anyway. And to be fair, I would prefer if no one else suffered any injury during this exploit. I mean, I want you to steal something, but I want you to do it in as nice a way possible. It's roguery on par with Danilo Thann of Waterdeep, and I'll pay you well. 500 gold for one night's work. It's better than you could hope for in a year on the docks!~ #2575 */
  IF ~~ THEN REPLY @28 /* ~I've no wish to be famous from a jail cell! Take your offer and begone!~ #2625 */ GOTO 23
  IF ~~ THEN REPLY @29 /* ~You can stop trying to sell me, I'm interested. Just tell me what the actual job is, and why you are willing to take such a risk.~ #2578 */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0 8.0 7.0 6.0 5.0 4.0
  SAY @30 /* ~Straight to the point and as serious as the subject demands. Certainly you are the cream of the larcenous crop. For retrieving but one object, I will give you 500 gold. No killing, and only the one item is to be taken. Dashing banditry just like in the songs of bards!~ #2576 */
  IF ~~ THEN REPLY @28 /* ~I've no wish to be famous from a jail cell! Take your offer and begone!~ #2626 */ GOTO 23
  IF ~~ THEN REPLY @29 /* ~You can stop trying to sell me, I'm interested. Just tell me what the actual job is, and why you are willing to take such a risk.~ #2579 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 12.1
  SAY @31 /* ~Oh, it's a marvelous trinket! A wondrously curious little toy from distant Lantan. What did they call it? Oh, yes, a "telescope," of all things. It's a misleading name for such an interestingly crafted artifact. "Golden Extra-Farseer" would have suited its craftsmanship so much better. There is not another like it this side of the Trackless Sea! Most gnomes have a fixation of sorts, but I don't share the love of gems that possesses my kin. I prefer the feel of metal, and the intricacies of the mechanical. Not that I necessarily understand the function, but it's not right for such an item to be locked away regardless! It was meant to be used and to be held by loving hands, and if those hands just happen to be mine, more the better. The tele-thingy is on display at the Hall of Wonders, and were it in the possession of anyone else it might be purchasable. No doubt you know that the Hall of Wonders is an extension of the High House, the temple to Gond. Being the god of artifice and invention his followers take to revering mechanical devices, and will not part with an original at any price. It's not as though they make proper use of such things! Keeping them behind locked doors where loving hands cannot explore their subtleties. The tele-whatzit was made to be USED, not worshipped! It must be in the hands of someone who can truly appreciate it! Not to be immodest, but that someone is me! I suppose I might buy a replica, but would you wish a copy of a diamond? It's just not the same.~ #2577 */
  IF ~~ THEN REPLY @32 /* ~You would be advised to lower your standards before they land you in prison! The Hall of Wonders is nigh invulnerable, a veritable fortress! I'll not risk my good name on such a foolhardy task!~ #2580 */ GOTO 23
  IF ~~ THEN REPLY @33 /* ~That is certainly a difficult task you've set before me, you windy little man, but I will accept the challenge.~ #2581 */ GOTO 17
  IF ~~ THEN REPLY @34 /* ~500 gold for all that, eh? This is not a bad offer, though I think you could do better.~ #2620 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @35 /* ~It's a risky venture, I'll grant you that. Perhaps I can sweeten the prospect a little. I will add a magical item from my personal collection. It will be difficult to part with one of my treasures, but definitely worth it. Will it suffice for you?~ #2582 */
  IF ~~ THEN REPLY @32 /* ~You would be advised to lower your standards before they land you in prison! The Hall of Wonders is nigh invulnerable, a veritable fortress! I'll not risk my good name on such a foolhardy task!~ #2621 */ GOTO 23
  IF ~~ THEN REPLY @36 /* ~It is certainly a difficult task you've set before me, you windy little man, but I will accept the challenge.~ #2622 */ GOTO 17
  IF ~~ THEN REPLY @37 /* ~It is a start, though not nearly sweet enough to take the bitterness from MY mouth. What else have ye?~ #2623 */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY @38 /* ~I'm afraid I simply must draw the line there. To trade TWO of my treasures for ONE would be the height of foolishness. The deal is as I said so, as the saying goes, take it or leave it.~ #2583 */
  IF ~~ THEN REPLY @39 /* ~It is not worth my time, little friend. Go bother someone else.~ #2624 */ GOTO 3
  IF ~~ THEN REPLY @32 /* ~You would be advised to lower your standards before they land you in prison! The Hall of Wonders is nigh invulnerable, a veritable fortress! I'll not risk my good name on such a foolhardy task!~ #2627 */ GOTO 23
  IF ~~ THEN REPLY @33 /* ~That is certainly a difficult task you've set before me, you windy little man, but I will accept the challenge.~ #2628 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.2 15.1 14.1
  SAY @40 /* ~Wonderful! Oh, this is SO bad of me! Ahem. Well, I shall leave you to your preparations. It will certainly be a test of your mettle entering the Hall. I imagine an experienced roustabout such as yourself will "case the joint" thoroughly, eh? Get the guards' schedule down and all that? Oh, if only I could be a part of it. It's thrilling, like the songs of legend. I'll meet you back here once the burglary is announced. Hee hee, it's too much fun.~ #2584 */
  IF ~~ THEN DO ~SetGlobal("HelpBrevlik","GLOBAL",1)
~ UNSOLVED_JOURNAL @41 /* ~Larceny at the Hall of Wonders
We have agreed to steal a "telescope" for a gnome named Brevlik. The telescope is located at the Hall of Wonders. Brevlik will be waiting for us at the Elfsong.~ #26893 */ EXIT
END

IF ~  Global("HelpBrevlik","GLOBAL",1)
PartyHasItem("MISC64")
Global("KilledFlam6","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY @42 /* ~Hello again, my roguish compatriot! I heard this morning that there was a mysterious break-in at the Hall of Wonders. It's said that the crafty burglars were in like ghosts and gone before the guard even had a chance to yell halt. Ooh, it's like an adventure tale starring you and me! You are well worth your pay, my friend, well worth it! Here is your 500 gold and a beautiful little trinket from my own personal collection. It's a sorrow to part with it, but this more than makes up. Goodbye and good fortune be on you.~ #2585 */
  IF ~~ THEN DO ~GiveGoldForce(500)
TakePartyItem("MISC64")
GiveItem("WAND07",LastTalkedToBy)
SetGlobal("HelpBrevlik","GLOBAL",2)
AddexperienceParty(5500)
EraseJournalEntry(@41)
EscapeArea()
~ SOLVED_JOURNAL @43 /* ~Larceny at the Hall of Wonders
It was no trouble fetching Brevlik's telescope to him at the Elfsong, turning it over for a reward.~ #26894 */ EXIT
END

IF ~  Global("HelpBrevlik","GLOBAL",1)
PartyHasItem("MISC64")
Global("KilledFlam6","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY @44 /* ~Are you mad?! Have you any idea the trouble you've caused?! I told you not to hurt anyone! It's already all over the city, and the guard are looking for blood, they are! It'll be years before I could display that tele-thing in Amn, let alone here! Keep it, our deal is off!~ #2586 */
  IF ~~ THEN REPLY @45 /* ~Hold on just a moment there! I went through quite the bother getting this thing, and you ARE going to pay for it!~ #2629 */ GOTO 22
  IF ~~ THEN REPLY @46 /* ~But what will I do with it? I never wanted the thing!~ #2630 */ GOTO 21
  IF ~~ THEN REPLY @47 /* ~No one breaks a deal with me and lives! Have at thee!~ #2631 */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY @48 /* ~Ahh! Guards! Help! It's the bandits who broke into the Hall of Wonders! They're trying to kill me! And I've never seen them before in my life! Really!~ #2587 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
MoveToPoint([996.718])
CreateCreature("GUARD",[998.706],NW)
CreateCreature("GUARD",[1032.686],NW)
CreateCreature("GUARD",[991.671],NW)
CreateCreature("GUARD",[1073.423],SSW)
CreateCreature("GUARD",[1108.450],SSW)
EraseJournalEntry(@41)
SetGlobal("HelpBrevlik","GLOBAL",2)
EscapeArea()
~ SOLVED_JOURNAL @49 /* ~Larceny at the Hall of Wonders
Brevlik didn't like the way I got his telescope back and refused to honor our deal. What a waste of my time.~ #26895 */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @50 /* ~I don't care what you do with it, though I wouldn't try to sell it if I were you! Every merchant from here to Cormyr will know it's stolen goods, and most of the fences 'round here probably won't want to touch it either. Maybe if you dump it back on the step of the Hall of Wonders it will cool the ire of the guard. Either way, bury it before it buries you! Oh, I am NOT cut out for this lifestyle.~ #2588 */
  IF ~~ THEN DO ~EraseJournalEntry(@41)
EscapeArea()
~ SOLVED_JOURNAL @49 /* ~Larceny at the Hall of Wonders
Brevlik didn't like the way I got his telescope back and refused to honor our deal. What a waste of my time.~ #26895 */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0
  SAY @51 /* ~Fine, whatever! Here is your money, here is your magic, there is the door! I never saw you, I've never met you, and I've never even seen anyone that looks like you!~ #2589 */
  IF ~~ THEN DO ~GiveGoldForce(500)
GiveItem("WAND07",LastTalkedToBy)
EraseJournalEntry(@41)
SetGlobal("HelpBrevlik","GLOBAL",2)
EscapeArea()
~ SOLVED_JOURNAL @52 /* ~Larceny at the Hall of Wonders
Brevlik didn't like the way I got his telescope back and refused to honor our deal. I didn't take no for an answer.~ #26896 */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 15.0 14.0 13.0 12.0
  SAY @53 /* ~I take your meaning well and clear. I shall just have to procure the needed skills elsewhere. It should not be so difficult, perhaps that nice gentleman I bumped into on the way in. Polite as a saint, he was. Must dash... Oh, dear. Um, it would appear that I have misplaced my purse. The strings appear to have snapped. How odd. No matter, I shall simply explain my situation to the innkeep and have him extend some friendly credit. I'm certain it will be no trouble. Everyone has been so accommodating thus far.~ #2590 */
  IF ~~ THEN DO ~SetGlobal("BrevlikRobbed","GLOBAL",1)
~ EXIT
END

IF ~  Global("BrevlikRobbed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY @54 /* ~Am I EVER glad to see your face again! It's perhaps the only honest one these walls have ever seen! I've explained my lack of coinage to the innkeep, and he replied with a suggestion involving my father and a sheep! He won't let me leave till I've paid, but his accursed interest has already turned 5 gold into 50! I don't expect a handout, but would you consider buying my ring? I paid 1,000 gold for it not a tenday ago. It's a wonderful stone. An opal. Only 500. Please?~ #2591 */
  IF ~~ THEN REPLY @55 /* ~Bwaa ha ha ha! Serves you right for scheming as you did! It's your bed to lie in, and I'll have none of it!~ #2632 */ DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)
~ GOTO 25
  IF ~  PartyGoldGT(499)
~ THEN REPLY @56 /* ~Ha ha HA! The joke of it is worth as much! Aye, take your 500 gold, and mind what happened here when you next look to someone else's property!~ #2633 */ DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)
~ GOTO 27
  IF ~  PartyGoldGT(199)
~ THEN REPLY @57 /* ~Oh, I've really no need for such an item... at that price. What say I give you 200 gold. Under the circumstances, I'd advise you to take it!~ #2634 */ DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)
~ GOTO 28
  IF ~  PartyGoldGT(49)
~ THEN REPLY @58 /* ~Oh, I see! My honesty is only appropriate when it suits you! Well, I'll not have it! I'll give you the 50 gold you need and not a copper more! That'll learn ya!~ #2635 */ DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @59 /* ~So it would seem you are indeed honest, yet cruel as well. An odd combination I'd not have predicted, though I've learned much about people today. I'll thank you to leave me to my misery.~ #2592 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.3
  SAY @60 /* ~Well, I hardly think that I deserve such treatment as this! You can keep your 50 gold, and your holier-than-you-thou attitude! I'll just give the ring itself to the innkeep, and put you out of the deal altogether. Just because you may be right, does not mean you've license to be petty!~ #2593 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
MoveToObject("Bart8")
Wait(1)
ActionOverride("Bart8",FaceObject("Brevlik"))
GiveItem("RING23","Bart8")
Wait(1)
DisplayStringHead(Myself,@61)
Wait(1)
MoveToPoint([996.718])
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @62 /* ~It's sorely welcomed. Though I suppose it is funny. Oh, but this has been SUCH a bother! It's the price for acting as I did, I guess. I certainly hope I've learned my lesson, by golly! From now on, I'll have someone hire people for me! Goodbye!~ #2594 */
  IF ~~ THEN DO ~GiveItem("RING23",LastTalkedToBy)
TakePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.2
  SAY @63 /* ~Ouch. It's truly a fraction of what it be worth, but I've little choice. Still, expensive lessons are learned doubly well.~ #2619 */
  IF ~~ THEN DO ~GiveItem("RING23",LastTalkedToBy)
TakePartyGold(200)
~ EXIT
END

IF ~  Global("HelpBrevlik","GLOBAL",2)
~ THEN BEGIN 29 // from:
  SAY @64 /* ~I don't have any more jobs for you. Sorry, my friends.~ #6257 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 30 // from:
  SAY @65 /* ~As you are such good friends, I should give you a gift. Have this bit of gold, I won't be needing it for anything.~ #6258 */
  IF ~~ THEN DO ~GivePartyGold(50)
~ EXIT
END

IF ~  Global("BrevlikRobbed","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY @66 /* ~Lost your chance with me, you did! Get lost!~ #9303 */
  IF ~~ THEN EXIT
END
