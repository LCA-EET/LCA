// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDEINER.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDEINER.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC114~

IF ~  GlobalLT("bd_ogres_plot","bd5200",4)
IsValidForPartyDialogue("GLINT")
See("bdrhonda")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Rhonda! Good t'see ya.~ [BD37738] #37738 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",4)
SetGlobal("bd_activate_pulley","bd5200",1)
~ EXTERN ~BDRHONDA~ 20
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Sure, no problem. Have him 'n his friends hop on.~ [BD37740] #37740 */
  IF ~~ THEN EXTERN ~XAC115~ 18
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Sure, no problem. Have him 'n his friend hop on.~ [BD37741] #37741 */
  IF ~~ THEN EXTERN ~XAC115~ 18
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Aw, Belben say a lotta things. Get on board; best we get you up quick.~ [BD37743] #37743 */
  IF ~~ THEN REPLY @5 /* ~Thanks, I'll do that. ~ #37744 */ EXTERN ~BDGLINTJ~ 97
  IF ~~ THEN REPLY @6 /* ~I'd like to get a better look 'round this place first, if that's all right. ~ #37745 */ EXTERN ~XAC115~ 19
END

IF ~~ THEN BEGIN 4 // from:
  SAY @7 /* ~Anything for you, Rhonda.~ [BD37750] #37750 */
  IF ~~ THEN DO ~AddJournalEntry(59793,QUEST)
~ EXIT
END

IF ~  Global("bd_ogres_plot","bd5200",0)
~ THEN BEGIN 5 // from:
  SAY @8 /* ~What?! Who that there?~ [BD38554] #38554 */
  IF ~~ THEN EXTERN ~XAC115~ 0
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9 /* ~You don't smell like crusader.~ [BD38562] #38562 */
  IF ~~ THEN EXTERN ~XAC115~ 2
END

IF ~~ THEN BEGIN 7 // from: 9.0 8.0
  SAY @10 /* ~Who're you? You don't smell like crusader.~ [BD38563] #38563 */
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @11 /* ~I assure you I am.~ #38564 */ EXTERN ~XAC115~ 3
  IF ~  CheckStatLT(Player1,18,CHR)
~ THEN REPLY @11 /* ~I assure you I am.~ #38564 */ EXTERN ~XAC115~ 5
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @12 /* ~Smells can be deceiving, my imposingly hairy friend. Here, I have Caelar's seal.~ #38565 */ EXTERN ~XAC115~ 2
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @13 /* ~You think your nose is more reliable than trained crusade soldiers? How would I even be here if I weren't a loyal follower of Caelar?~ #38566 */ EXTERN ~XAC115~ 3
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY @13 /* ~You think your nose is more reliable than trained crusade soldiers? How would I even be here if I weren't a loyal follower of Caelar?~ #38566 */ EXTERN ~XAC115~ 5
  IF ~~ THEN REPLY @14 /* ~And if I admitted I wasn't? What would you do then, you loyal servants of Caelar, all glory be unto her?~ #38567 */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from:
  SAY @15 /* ~That's what me said. With shorter words.~ [BD38571] #38571 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from:
  SAY @16 /* ~Most of you kind do, don't you? But wait...~ [BD38572] #38572 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 19.0 18.2 15.0
  SAY @17 /* ~Me could use drink.~ [BD38579] #38579 */
  IF ~~ THEN EXTERN ~XAC115~ 7
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 32
END

IF ~~ THEN BEGIN 11 // from:
  SAY @18 /* ~Belben say lotta things. Me want drink. You got anything to beat my thirst, <PRO_RACE>?~ [BD38582] #38582 */
  IF ~  PartyHasItem("BDliquor")
~ THEN REPLY @19 /* ~I do, actually. I found several bottles of wine lying around.~ #38583 */ GOTO 12
  IF ~~ THEN REPLY @20 /* ~Not at the moment. Do you know where I could find some ale or wine?~ #38584 */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Player1,16,CON)
CheckStatGT(Player1,16,STR)
~ THEN REPLY @21 /* ~I'll beat YOU to a bloody pulp if you don't do your damned job and get me up into the castle.~ #38585 */ EXTERN ~XAC115~ 4
  IF ~  CheckStatLT(Player1,17,CON)
CheckStatLT(Player1,17,STR)
~ THEN REPLY @21 /* ~I'll beat YOU to a bloody pulp if you don't do your damned job and get me up into the castle.~ #38585 */ EXTERN ~XAC115~ 16
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @22 /* ~Well, hand 'em over!~ [BD38586] #38586 */
  IF ~~ THEN DO ~TakePartyItem("bdliquor")
DestroyItem("bdliquor")
PlaySound("gulp")
AddJournalEntry(59794,QUEST)
~ EXTERN ~XAC115~ 8
END

IF ~~ THEN BEGIN 13 // from: 29.1
  SAY @23 /* ~Oh yeah, oh, that what ol' Einer like. All right. Jump on platform, friend. Me send you up.~ [BD38587] #38587 */
  IF ~~ THEN EXTERN ~XAC115~ 8
END

IF ~~ THEN BEGIN 14 // from:
  SAY @24 /* ~What Belben do? Hit us MORE? Onto platform, <PRO_RACE>.~ [BD38589] #38589 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
SetGlobal("bd_pc_heard_of_belben","global",1)
SetGlobal("bd_belben_abuses_ogres","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @25 /* ~Yep.~ [BD38591] #38591 */
  IF ~~ THEN REPLY @26 /* ~There must be some way I can convince you to raise the platform.~ #38592 */ GOTO 10
  IF ~~ THEN REPLY @27 /* ~Where can I find this Belben?~ #38596 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ EXTERN ~XAC115~ 10
  IF ~  CheckStatGT(Player1,9,INT)
~ THEN REPLY @28 /* ~You're clearly prisoners here. You can't enjoy being chained to this wheel. Send me up to the castle, and when I return I'll free you. You can't do better than that.~ #38593 */ GOTO 19
  IF ~~ THEN REPLY @29 /* ~Then I shall kill him for you. Those who serve Caelar deserve naught but death.~ #38594 */ GOTO 23
END

IF ~~ THEN BEGIN 16 // from: 29.4
  SAY @30 /* ~Rude.~ [BD38605] #38605 */
  IF ~~ THEN DO ~ActionOverride("bdbertor",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY @31 /* ~I think they saying Belben up there and they down here, so is hard to get Belben to tell you to let them go up because to get Belben they have to go up, an' you won't let them up 'less Belben say so.~ [BD38611] #38611 */
  IF ~~ THEN EXTERN ~XAC115~ 15
END

IF ~~ THEN BEGIN 18 // from:
  SAY @32 /* ~What in it for us? Other than the beating Belben give us if he find out we let you go through?~ [BD38618] #38618 */
  IF ~~ THEN REPLY @33 /* ~When I've done what I need to do above, I'll return and free you.~ #38619 */ GOTO 19
  IF ~~ THEN REPLY @34 /* ~I've got money.~ #38620 */ GOTO 20
  IF ~~ THEN REPLY @35 /* ~What do you want?~ #61097 */ GOTO 10
  IF ~~ THEN REPLY @36 /* ~Do as I say and at least you'll live to receive the beating, you boorish wretch!~ #38621 */ EXTERN ~XAC115~ 9
END

IF ~~ THEN BEGIN 19 // from: 18.0 15.2
  SAY @37 /* ~Right. An' if you die up there, where that leave us? Right where we were, that where, getting beaten even worse for good measure. No, no. You have to give me somethin' before me send you up. Get me some wine. Then we talk.~ [BD38622] #38622 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @38 /* ~Money don't mean much down here. Whatcha got to drink?~ [BD38624] #38624 */
  IF ~~ THEN EXTERN ~XAC115~ 7
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 32
END

IF ~~ THEN BEGIN 21 // from: 11.1
  SAY @39 /* ~Aye. The soldiers down here get plenty of wine. They act high 'n mighty, but they like their drink as much as next ogre. Hint hint.~ [BD38625] #38625 */
  IF ~~ THEN REPLY @40 /* ~I'll get you some wine and return shortly.~ #38626 */ DO ~SetGlobal("bd_ogres_plot","bd5200",2)
~ GOTO 22
  IF ~~ THEN REPLY @41 /* ~Turn the wheel and send me up to Dragonspear or I'll take your thrice-damned head off, ogre. Hint hint.~ #38627 */ EXTERN ~XAC115~ 16
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @42 /* ~Take your time. We not go nowhere...~ [BD38628] #38628 */
  IF ~~ THEN DO ~AddJournalEntry(59792,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.3
  SAY @43 /* ~Hoi! Belben may have a stick up his you-know-what, but he still me friend. An' that mean you just made a—a whaddayacallit? An—an emmeny! GRAAHHH!~ [BD38629] #38629 */
  IF ~~ THEN DO ~ActionOverride("bdbertor",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 7.5
  SAY @44 /* ~Don't say "we gotta kill you now," Betror. Bad enough we stuck here turnin' this wheel. I don't wanna fight crusade's battles for it as well.~ [BD38632] #38632 */
  IF ~~ THEN EXTERN ~XAC115~ 5
END

IF ~  Global("bd_ogres_plot","bd5200",4)
~ THEN BEGIN 25 // from:
  SAY @45 /* ~Oh, it you again. You ready to go up?~ [BD37752] #37752 */
  IF ~~ THEN REPLY @46 /* ~I believe so. ~ #37753 */ EXTERN ~XAC115~ 24
  IF ~~ THEN REPLY @47 /* ~Not quite yet. ~ #37754 */ EXTERN ~XAC115~ 25
  IF ~~ THEN REPLY @48 /* ~When the time is right, I'll let you know. ~ #37755 */ EXTERN ~XAC115~ 25
END

IF ~~ THEN BEGIN 26 // from:
  SAY @49 /* ~Oh, relax, Betror. You worry too much.~ [BD37758] #37758 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_ogres_plot","bd5200",1)
~ THEN BEGIN 27 // from:
  SAY @50 /* ~Hey. It the little one.~ [BD37759] #37759 */
  IF ~~ THEN EXTERN ~XAC115~ 26
END

IF ~~ THEN BEGIN 28 // from:
  SAY @51 /* ~That not true. No thinkin' here. Uh-uh.~ [BD37761] #37761 */
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @52 /* ~I have Caelar's seal. Will you take me up?~ #37762 */ EXTERN ~XAC115~ 27
  IF ~~ THEN REPLY @53 /* ~Let me be blunt here: I need to get up into the castle. There must be something I can do to get you to give that wheel a turn or two on my behalf.~ #37763 */ EXTERN ~XAC115~ 29
  IF ~  OR(2)
CheckStatGT(Player1,16,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @54 /* ~I'll put this plainly: Lift me up on your platform or I swear by every god that's ever lived I will kill you both and laugh while doing it.~ #37764 */ EXTERN ~XAC115~ 27
  IF ~  CheckStatLT(Player1,17,STR)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY @54 /* ~I'll put this plainly: Lift me up on your platform or I swear by every god that's ever lived I will kill you both and laugh while doing it.~ #37764 */ EXTERN ~XAC115~ 29
END

IF ~  Global("bd_ogres_plot","bd5200",2)
~ THEN BEGIN 29 // from:
  SAY @55 /* ~You got me summinna drink?~ [BD37768] #37768 */
  IF ~  IsValidForPartyDialogue("VOGHILN")
PartyHasItem("BDliquor")
~ THEN REPLY @56 /* ~I do. Here, enjoy. ~ #37769 */ EXTERN ~BDVOGHIJ~ 33
  IF ~  !IsValidForPartyDialogue("VOGHILN")
PartyHasItem("BDliquor")
~ THEN REPLY @56 /* ~I do. Here, enjoy. ~ #37769 */ GOTO 13
  IF ~  !PartyHasItem("BDliquor")
~ THEN REPLY @57 /* ~Not yet, I'm afraid. ~ #37770 */ GOTO 30
  IF ~~ THEN REPLY @58 /* ~Right, I was going to get you something, wasn't I? I'll get right on that. ~ #37771 */ GOTO 30
  IF ~~ THEN REPLY @59 /* ~Lift me up to Dragonspear now, ogre, or I'll give you something to drink: your own blood. ~ #37772 */ GOTO 16
END

IF ~~ THEN BEGIN 30 // from: 29.3 29.2
  SAY @60 /* ~Well, step it up. Me no got all day.~ [BD37773] #37773 */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @61 /* ~HA! "Me no got all day," get it? Is funny, 'cuz we stuck here!~ [BD37774] #37774 */
  IF ~~ THEN EXTERN ~XAC115~ 31
END

IF ~  Global("bd_ogres_plot","bd5200",5)
~ THEN BEGIN 32 // from:
  SAY @62 /* ~Oh, look, it the little one again.~ [BD37777] #37777 */
  IF ~~ THEN EXTERN ~XAC115~ 32
END

IF ~~ THEN BEGIN 33 // from:
  SAY @63 /* ~Fine.~ [BD37782] #37782 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @64 /* ~Yeah, sounded like big fight!~ [BD65478] #65478 */
  IF ~  OR(2)
Difficulty(EASIEST)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @65 /* ~Belben and I had a little disagreement, but it's all handled now. Nothing to worry about.~ #65479 */ EXTERN ~XAC115~ 21
  IF ~  !Difficulty(EASIEST)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @65 /* ~Belben and I had a little disagreement, but it's all handled now. Nothing to worry about.~ #65479 */ EXTERN ~XAC115~ 22
  IF ~  OR(2)
Difficulty(EASIEST)
CheckStatGT(Player1,13,WIS)
~ THEN REPLY @66 /* ~I was clumsy and knocked over a shelf in the storage room, that's all.~ #65480 */ EXTERN ~XAC115~ 21
  IF ~  CheckStatLT(Player1,14,WIS)
~ THEN REPLY @67 /* ~What? A fight? No, no, no. Not at all.~ #70445 */ EXTERN ~XAC115~ 22
  IF ~~ THEN REPLY @68 /* ~It was indeed a big fight, and another one's about to happen right now.~ #65481 */ EXTERN ~XAC115~ 22
END

IF ~~ THEN BEGIN 35 // from:
  SAY @69 /* ~Come on, Betror! Time to smash!~ [BD65484] #65484 */
  IF ~~ THEN DO ~SetGlobal("bd_warrens_hostile","global",1)
ActionOverride("bdbetror",Enemy())
Enemy()
~ EXIT
END
