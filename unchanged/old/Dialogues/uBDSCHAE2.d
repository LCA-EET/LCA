// creator  : weidu (version 24900)
// argument : BDSCHAE2.DLG
// game     : .
// source   : ./override/BDSCHAE2.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BDSCHAE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd0104")
Global("bd_jail_visitors","bd0104",2)
Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~<CHARNAME>. How are you?~ [BD54610] #254610 */
  IF ~~ THEN REPLY @2 /* ~I've had better days.~ #254611 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Corwin. Thank the gods. You've got to get me out of here.~ #254612 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 6
  IF ~~ THEN REPLY @4 /* ~You shouldn't be here, Corwin. Go, now.~ #254613 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] #254614 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ #254615 */ GOTO 6
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ #254615 */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ #254617 */ GOTO 4
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ #254617 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Let Entar come. I'll send him to join his wretched daughter.~ #254618 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.4
  SAY @9 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] #254619 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] #254620 */
  IF ~~ THEN REPLY @11 /* ~I'm truly sorry you've had to endure this, Schael.~ #270317 */ GOTO 13
  IF ~~ THEN REPLY @12 /* ~Imagine how I feel.~ #270318 */ GOTO 12
  IF ~~ THEN REPLY @13 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ #270319 */ GOTO 21
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] #254620 */
  IF ~~ THEN REPLY @14 /* ~Yet you did come here. Why?~ #254621 */ GOTO 11
  IF ~~ THEN REPLY @15 /* ~I'm not thrilled myself.~ #254622 */ GOTO 12
  IF ~~ THEN REPLY @16 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ #254623 */ GOTO 5
  IF ~~ THEN REPLY @17 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ #254624 */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY @18 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] #254625 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 6 // from: 1.0 0.1
  SAY @19 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] #254626 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ #254627 */ GOTO 7
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ #254627 */ GOTO 16
  IF ~~ THEN REPLY @21 /* ~We can leave here together—take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us—if you want it.~ #254628 */ GOTO 10
  IF ~~ THEN REPLY @22 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ #254629 */ GOTO 23
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @23 /* ~If you've not come to help me, why are you here?~ #254630 */ GOTO 11
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @23 /* ~If you've not come to help me, why are you here?~ #254630 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @24 /* ~I don't know what to believe anymore.~ [BD54631] #254631 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 6.5
  SAY @25 /* ~I needed to see you one last time. Needed to tell you how I feel...~ #270320 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @26 /* ~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] #270321 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @27 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] #254636 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.4 4.0
  SAY @28 /* ~I could kill you, <CHARNAME>. If it weren't for Rohma, I'd do it, you know. I would. You need to know how angry I am, to understand the rage I feel.~ [BD54637] #254637 */
  IF ~~ THEN REPLY @29 /* ~I didn't kill the girl.~ #254638 */ GOTO 13
  IF ~~ THEN REPLY @30 /* ~I'm not exactly doing a jig here, you know. ~ #254639 */ GOTO 12
  IF ~~ THEN REPLY @31 /* ~You come to me and speak of rage? Come closer, Corwin. I would touch you one last time, and show you what true rage is.~ #254640 */ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 11.1 4.1 3.1
  SAY @32 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] #254641 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.0 7.0 3.0
  SAY @33 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] #254642 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 12.0 10.0 9.0 5.0 2.0
  SAY @34 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by—whatever it was I thought we had.~ [BD54643] #254643 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @35 /* ~It was love, Schael. It was real.~ #254644 */ GOTO 19
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @35 /* ~It was love, Schael. It was real.~ #254644 */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @36 /* ~Love makes fools of us all.~ #254645 */ GOTO 15
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @36 /* ~Love makes fools of us all.~ #254645 */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @37 /* ~You know what we had. Deny it if you must. I know the truth.~ #254646 */ GOTO 19
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @37 /* ~You know what we had. Deny it if you must. I know the truth.~ #254646 */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @38 /* ~You say you loved me. I want to believe it. I do. But I can't.~ [BD54647] #254647 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.1 6.1 1.1
  SAY @39 /* ~I... believe you. And I love you, too. I hope you'll find some comfort in that. We're just two people. Our feelings mean little beyond these walls.~ #270322 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.5
  SAY @40 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ #270323 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0
  SAY @41 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] #254648 */
  IF ~~ THEN REPLY @42 /* ~Do not succumb to despair, Schael. This isn't over yet.~ #270324 */ GOTO 23
  IF ~~ THEN REPLY @43 /* ~So long as you love me, I have hope.~ #270325 */ GOTO 20
  IF ~~ THEN REPLY @44 /* ~Let's see how we're feeling after you release me from this wretched cell.~ #270326 */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 14.4 14.0
  SAY @41 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] #254648 */
  IF ~~ THEN REPLY @45 /* ~I don't. But I still have hope.~ #254649 */ GOTO 20
  IF ~~ THEN REPLY @46 /* ~Don't turn away from me, Schael. I need you.~ #254650 */ GOTO 24
  IF ~~ THEN REPLY @47 /* ~All I feel is the sting of betrayal from one I believed felt for me as I did her.~ #254651 */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.1
  SAY @48 /* ~Would that I could say the same. But hope is a luxury I can't allow myself. Not anymore.~ [BD54652] #254652 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 3.2
  SAY @49 /* ~I can't. Forgive me. I've got to get out of here, out of this place...~ [BD70327] #270327 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2 0.2
  SAY @50 /* ~We had something, didn't we? I wasn't just fooling myself.~ [BD54653] #254653 */
  IF ~~ THEN REPLY @51 /* ~We had everything. And whoever stole it from us will pay a terrible price.~ #254654 */ GOTO 23
  IF ~~ THEN REPLY @52 /* ~If you fooled yourself, I did the same.~ #254655 */ GOTO 24
  IF ~~ THEN REPLY @53 /* ~You tell me. What you do for me here and now—or don't do for me—will let us both know how deep and true your feelings are. Open the door, Corwin. Let me out.~ #254656 */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 18.0 11.2 6.3 4.3
  SAY @54 /* ~Defiant until the end. But you must know this is the end. I'd give anything for that not to be the case, but it is. Accept it, as I have. Find some peace while you're still able.~ [BD54657] #254657 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 22.1 19.1 15.0
  SAY @55 /* ~I—I can't do this. I've got to get out of here, out of this place... Forgive me.~ [BD54658] #254658 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd0104")
Global("bd_jail_visitors","bd0104",2)
!Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 25 // from:
  SAY @56 /* ~Good morning, <CHARNAME>.~ [BD39419] #239419 */
  IF ~~ THEN REPLY @57 /* ~Is it morning? It's hard to tell in here.~ #239420 */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 30
  IF ~~ THEN REPLY @58 /* ~You're half right. Why have you come here?~ #239421 */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 31
  IF ~~ THEN REPLY @59 /* ~What do you want, traitor?~ #239422 */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY @60 /* ~You call me a traitor? That's rich. ~ #239423 */
  IF ~~ THEN REPLY @61 /* ~I am accused of a senseless murder and none defend me. I am betrayed by all I once cared for.~ #239424 */ GOTO 27
  IF ~~ THEN REPLY @62 /* ~Why are you here?~ #239425 */ GOTO 31
  IF ~~ THEN REPLY @63 /* ~After everything we've endured, everything I've done for this damned city, you believe I murdered Skie Silvershield. I called you traitor, but treachery I might forgive. Stupidity is another matter.~ #239426 */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @64 /* ~Not true. Your friend Imoen has been hounding the Grand Dukes relentlessly, begging them to pardon you.~ #239428 */
  IF ~~ THEN REPLY @65 /* ~Thank the gods, someone believes me.~ #239429 */ GOTO 37
  IF ~~ THEN REPLY @66 /* ~Imoen! Damn me, in all the uproar, I hadn't given her a moment's consideration. How is she?~ #239430 */ GOTO 28
  IF ~~ THEN REPLY @67 /* ~An innocent <PRO_MANWOMAN> should need no pardon.~ #239431 */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @68 /* ~Fully recovered from the wounds she took at the crusade's hands. Your circumstances cut her deeper than that, though.~ #239432 */
  IF ~~ THEN REPLY @69 /* ~I must see her.~ #239433 */ GOTO 29
  IF ~~ THEN REPLY @70 /* ~Damn it. She probably blames herself for all this... Can I talk to her?~ #239434 */ GOTO 29
  IF ~~ THEN REPLY @71 /* ~She'll survive.~ #239435 */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.0
  SAY @72 /* ~Duke Belt doesn't believe she'd willingly leave here without you. He can't allow that, no matter how much he might wish otherwise. For her sake, she must stay away.~ #239436 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 25.0
  SAY @73 /* ~I'm not here to discuss the time. I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ #239437 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 26.1 25.1
  SAY @74 /* ~I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ #239438 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 36.0 35.0 31.0 30.0
  SAY @75 /* ~The dark days must end. And they won't, not with you languishing here claiming innocence. If you care for Baldur's Gate, even a little... admit your crime. Accept the punishment given you.~ #239439 */
  IF ~~ THEN REPLY @76 /* ~I've fought and bled for Baldur's Gate. I've nearly died for it more times than I can count. I care about the city—but I also care about justice.~ #239440 */ GOTO 33
  IF ~~ THEN REPLY @77 /* ~I'd be more than happy to declare my innocence while languishing somewhere else.~ #239441 */ GOTO 33
  IF ~~ THEN REPLY @78 /* ~You'd have me throw myself on the sword for what? The benefit of those who betrayed me?~ #239442 */ GOTO 38
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.0
  SAY @79 /* ~Maybe you are innocent. Maybe the eyes of all those who saw you standing over Skie's corpse deceived them. It doesn't matter. The city is all that matters now. My father taught me that a hero—a real hero—is prepared to sacrifice <PRO_HIMHER>self for the greater good. They called you the hero of Baldur's Gate. Now you have the chance to earn the name.~ #239443 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.0 33.0
  SAY @80 /* ~Goodbye, <CHARNAME>.~ #259733 */
  IF ~~ THEN DO ~AddJournalEntry(259858,INFO)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.2 26.2
  SAY @81 /* ~You don't get it, do you? You can't see beyond yourself to understand what's truly at stake here. This isn't about you. It's about Baldur's Gate. The city's been through so much of late—the iron crisis, Sarevok, the crusade... and now this.~ #239445 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 37.0 29.0 28.2
  SAY @82 /* ~I'm not here to talk about Imoen. I came to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ #239446 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 37 // from: 27.0
  SAY @83 /* ~She has the luxury of doubt. She wasn't there. She didn't see you standing over the body, a bloody dagger in hand...~ #239447 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 32.2
  SAY @84 /* ~For the benefit of those who still believe in you. They called you the hero of Baldur's Gate. A true hero will sacrifice <PRO_HIMHER>self for the greater good. Give the city a chance to heal. Please.~ #239448 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 39 // from:
  SAY @85 /* ~Hands in the air. Get away from the opening.~ [BD39613] #239613 */
  IF ~~ THEN REPLY @86 /* ~I don't want to fight you, Corwin. I'm INNOCENT. You have to believe me!~ #239614 */ EXTERN ~BDBENCE~ 86
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_GOOD)
~ THEN REPLY @87 /* ~Schael, please, I beg you, don't do this. I love you.~ #239615 */ GOTO 40
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_LCNEUTRAL)
~ THEN REPLY @88 /* ~You would prevent my escape? I thought we had something, you and I.~ #239616 */ GOTO 40
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_EVIL)
~ THEN REPLY @89 /* ~After all we've been through, this is what it comes to. I should have known you'd betray me in the end.~ #239617 */ GOTO 46
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @90 /* ~Don't try to stop me, Corwin. I need to get out of here if I'm to have any chance of proving my innocence.~ #239618 */ EXTERN ~BDBENCE~ 86
  IF ~~ THEN REPLY @91 /* ~And if I don't, what will you do? Cut me down? Is that any worse than what I can expect from Entar Silvershield?~ #239619 */ EXTERN ~BDBENCE~ 87
END

IF ~~ THEN BEGIN 40 // from: 39.2 39.1
  SAY @92 /* ~You think I want to do this? You think this isn't killing me? We should be together in my bedchamber or a meadow under a cloudless blue sky—ANYWHERE but here!~ [BD39620] #239620 */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @93 /* ~But here we are. I have a job to do. You know me. You know I can't let you go.~ [BD39621] #239621 */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @94 /* ~I know who murdered Skie. Come with me. Help me find him.~ #239623 */ GOTO 42
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @94 /* ~I know who murdered Skie. Come with me. Help me find him.~ #239623 */ GOTO 59
  IF ~~ THEN REPLY @95 /* ~You know what I'm capable of, Corwin. Please, don't try to stop me.~ #239624 */ GOTO 49
  IF ~~ THEN REPLY @96 /* ~Rohma's already lost a father. Don't make her lose a mother too.~ #239625 */ GOTO 53
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @97 /* ~You'd have me turn my back on the Fist? On my family?~ [BD39626] #239626 */
  IF ~~ THEN REPLY @98 /* ~Would that I could, for your presence is all I that desire in this world. But no. I never knew my mother. I'll not deprive Rohma of hers.~ #265152 */ GOTO 60
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY @99 /* ~I'd have you come with me. What do you say?~ #265153 */ GOTO 45
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY @99 /* ~I'd have you come with me. What do you say?~ #265153 */ GOTO 58
  IF ~~ THEN REPLY @100 /* ~These things do nothing but drag you down. Think of all you could accomplish at my side.~ #265154 */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.3
  SAY @101 /* ~You don't know me at all, do you? On your knees, hands behind your head. Let's go.~ [BD65155] #265155 */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 44 // from: 54.1 49.1 47.2 47.1 46.4
  SAY @102 /* ~I hoped to talk you out of this madness, but I see words alone won't get this job done. All right then. Let's go.~ [BD39627] #239627 */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 45 // from: 42.1
  SAY @103 /* ~This is bigger than us, <CHARNAME>. Bigger than the Flaming Fist, or even my family. You don't know what's happening up above... Skie's murder—at the hand of Sarevok Anchev's sibling, no less—has thrown Baldur's Gate into turmoil.~ [BD65159] #265159 */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 46 // from: 51.1 39.3
  SAY @104 /* ~I know what I saw. You were standing over the body of Skie Silvershield. Duke Entar's daughter. His DAUGHTER.~ [BD39634] #239634 */
  IF ~~ THEN REPLY @105 /* ~Ah. I understand now. This is about Rohma.~ #239635 */ GOTO 48
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY @106 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ #239636 */ GOTO 50
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY @106 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ #239636 */ GOTO 49
  IF ~~ THEN REPLY @107 /* ~And how many people have you slain, Corwin? Everyone is someone's child.~ #239637 */ GOTO 47
  IF ~~ THEN REPLY @108 /* ~I'm not going to argue with you, Captain. I will, however, kill you, if you don't get out of my way.~ #239638 */ GOTO 44
END

IF ~~ THEN BEGIN 47 // from: 46.3
  SAY @109 /* ~Have I killed before? Yes—but never a defenseless girl. Never in cold blood. Never without cause. Don't give me cause now. Surrender.~ [BD39639] #239639 */
  IF ~~ THEN REPLY @110 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ #239645 */ GOTO 60
  IF ~~ THEN REPLY @111 /* ~I don't WANT to fight you, but I will, if you make me.~ #239642 */ GOTO 44
  IF ~~ THEN REPLY @112 /* ~Never. Not while this body still draws breath.~ #239643 */ GOTO 44
END

IF ~~ THEN BEGIN 48 // from: 46.0
  SAY @113 /* ~Don't bring her into this. You won't like where that ends.~ [BD39644] #239644 */
  IF ~~ THEN REPLY @110 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ #239645 */ GOTO 60
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY @114 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ #239646 */ GOTO 54
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY @114 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ #239646 */ GOTO 49
  IF ~~ THEN REPLY @115 /* ~Rohma's already lost one parent, Captain Corwin. Don't let your pride cost her another.~ #239647 */ GOTO 53
END

IF ~~ THEN BEGIN 49 // from: 48.2 46.2 41.2
  SAY @116 /* ~I know EXACTLY what you're capable of. I've seen it. Now put your hands behind your head and get on your knees or by the gods I swear I will put you down.~ [BD39649] #239649 */
  IF ~~ THEN REPLY @117 /* ~If that's the only way to end this... Very well. I didn't kill Skie Silvershield. I'll not have your death on my conscience.~ #239650 */ GOTO 60
  IF ~~ THEN REPLY @118 /* ~I don't WANT to fight you, Corwin. But I will, if you make me. If you make me, I will kill you.~ #239651 */ GOTO 44
  IF ~~ THEN REPLY @119 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ #239662 */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY @120 /* ~What I believe doesn't matter. All that matters is Baldur's Gate. What's happening can't be allowed to go on.~ [BD65160] #265160 */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 51 // from: 45.0
  SAY @121 /* ~The city's tearing itself apart. It has to stop. It HAS to. And it won't until someone pays for what happened at Dragonspear. If you know anything about me, anything at all, you know I can't let you go.~ [BD39658] #239658 */
  IF ~~ THEN REPLY @122 /* ~Very well. For the sake of the city that once called me hero, I surrender.~ #239659 */ GOTO 60
  IF ~  !Global("bd_corwin_romanceactive","global",2)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @123 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ #239660 */ GOTO 46
  IF ~  !Global("bd_corwin_romanceactive","global",2)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY @123 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ #239660 */ GOTO 59
  IF ~  Global("bd_corwin_romanceactive","global",2)
CheckStatGT(Player1,17,CHR)
~ THEN REPLY @124 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ #265161 */ GOTO 55
  IF ~  Global("bd_corwin_romanceactive","global",2)
CheckStatLT(Player1,18,CHR)
~ THEN REPLY @124 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ #265161 */ GOTO 59
  IF ~~ THEN REPLY @119 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ #239662 */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from:
  SAY @125 /* ~Damn you, <CHARNAME>...! All right, then. Let's go.~ [BD39667] #239667 */
  IF ~~ THEN DO ~AddJournalEntry(259863,QUEST)
ActionOverride("bdschae2",Enemy())
ChangeSpecifics("bdschae2",CRUSADERS)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 54.2 51.5 49.2 48.3 41.3
  SAY @126 /* ~You threaten my daughter, <CHARNAME>? You just made your last mistake. Take <PRO_HIMHER>!~ [BD39668] #239668 */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 54 // from: 58.0 50.0 48.1
  SAY @127 /* ~It has to stop. It HAS to. And that won't happen until you answer for Skie. Now get on your knees, hands behind your head. Do it.~ [BD39669] #239669 */
  IF ~~ THEN REPLY @128 /* ~If that's the only way to end this... Very well. I surrender. I didn't kill Skie Silvershield. I'll not kill you.~ #239670 */ GOTO 60
  IF ~~ THEN REPLY @129 /* ~I don't WANT to fight you, but I will, if you make me. Don't do this. ~ #239671 */ GOTO 44
  IF ~~ THEN REPLY @130 /* ~Think about your family, Captain. Think of Rohma. Walk away from this; leave me to deal with these others. No one ever has to know.~ #239672 */ GOTO 53
END

IF ~~ THEN BEGIN 55 // from: 51.3
  SAY @131 /* ~Damn it, <CHARNAME>. Damn it!~ [BD65162] #265162 */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @132 /* ~...Run.~ [BD65163] #265163 */
  IF ~~ THEN EXTERN ~BDBENCE~ 88
END

IF ~~ THEN BEGIN 57 // from:
  SAY @133 /* ~Get out of here, <CHARNAME>! The cavern beyond the falls will get you out of the city—I'll hold them off!~ [BD65165] #265165 */
  IF ~~ THEN EXTERN ~BDBENCE~ 89
END

IF ~~ THEN BEGIN 58 // from: 42.2
  SAY @134 /* ~I believe you. I wish that mattered. But all that matters is Baldur's Gate. You have no idea of the chaos Skie's murder unleashed. The people loved you, and now they learn their hero is a child of Bhaal like Sarevok? The city is tearing itself apart because of you.~ [BD62567] #262567 */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 59 // from: 51.4 51.2 41.1
  SAY @135 /* ~What I believe doesn't matter anymore. You tried to escape. And now we have to do what we must. Let's go.~ [BD39673] #239673 */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 60 // from: 54.0 51.0 49.0 48.0 47.0 42.0
  SAY @136 /* ~Thank the gods... On your knees, hands behind your head.~ [BD39674] #239674 */
  IF ~  Gender(Player1,FEMALE)
~ THEN EXTERN ~BDBENCE~ 91
  IF ~  Gender(Player1,MALE)
~ THEN EXTERN ~BDBENCE~ 92
END

IF ~~ THEN BEGIN 61 // from:
  SAY @137 /* ~Damn it, Duncan! Run, <CHARNAME>! The cavern beyond the opening will get you out of the city! Go!~ #239676 */
  IF ~~ THEN 
	DO ~
		AddJournalEntry(259863,QUEST)
		SetGlobal("bd_MDD1725_corwin","global",1)
		ChangeSpecifics("bdschae2",ALLIES)
		ChangeEnemyAlly("bdschae2",GOODBUTBLUE)
	~ 
	EXIT
END

IF WEIGHT #3 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd6000")
Global("bd_plot","global",650)
~ THEN BEGIN 62 // from:
  SAY @138 /* ~Run, <CHARNAME>! The cavern beyond the falls will get you out of the city. Jump!~ [BD65168] #265168 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  
	Global("EECorwBelievePC","Global",1)
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	~ 
	THEN BEGIN 63 // from:
  
	SAY @139 /* ~I don't believe in your guilt, <CHARNAME>, I had to come and tell you at least this.~ #271760 */
	IF ~~ THEN 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY @1 /* ~<CHARNAME>. How are you?~ [BD54610] #254610 */
  IF ~~ THEN REPLY @2 /* ~I've had better days.~ #254611 */ GOTO 65
  IF ~~ THEN REPLY @3 /* ~Corwin. Thank the gods. You've got to get me out of here.~ #254612 */ GOTO 71
  IF ~~ THEN REPLY @4 /* ~You shouldn't be here, Corwin. Go, now.~ #254613 */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.2 64.0
  SAY @5 /* ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] #254614 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ #254615 */ GOTO 71
  IF ~  Global("bd_player_exiled","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ #254615 */ GOTO 83
  IF ~  Global("bd_player_exiled","global",1)
!Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ #254615 */ GOTO 85
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ #254617 */ GOTO 68
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ #254617 */ GOTO 67
  IF ~~ THEN REPLY @8 /* ~Let Entar come. I'll send him to join his wretched daughter.~ #254618 */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.5
  SAY @9 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] #254619 */
  DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 67 // from: 65.4
  SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] #254620 */
  IF ~~ THEN REPLY @11 /* ~I'm truly sorry you've had to endure this, Schael.~ #270317 */ GOTO 79
  IF ~~ THEN REPLY @12 /* ~Imagine how I feel.~ #270318 */ GOTO 78
  IF ~~ THEN REPLY @13 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ #270319 */ GOTO 87
END

IF ~~ THEN BEGIN 68 // from: 65.3
  SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] #254620 */
  IF ~~ THEN REPLY @14 /* ~Yet you did come here. Why?~ #254621 */ GOTO 74
  IF ~~ THEN REPLY @15 /* ~I'm not thrilled myself.~ #254622 */ GOTO 78
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @16 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ #254623 */ GOTO 69
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @16 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ #254623 */ GOTO 70
  IF ~~ THEN REPLY @17 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ #254624 */ GOTO 87
END

IF ~~ THEN BEGIN 69 // from: 68.2
  SAY @18 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] #254625 */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY @140 /* ~I never promised I would. That doesn't mean I lost my faith in you being a good person beneath your hard shell.~ #271761 */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 71 // from: 65.0 64.1
  SAY @19 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] #254626 */
	IF ~  
		Global("bd_player_exiled","global",0)
	~ 
	THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ #254627 */ GOTO 72
  
	IF ~  
		Global("bd_player_exiled","global",1)
		Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ #254627 */ GOTO 83
  
	IF ~  
		Global("bd_player_exiled","global",1)
		!Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ #254627 */ GOTO 85
  
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN REPLY @141 /* ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ #271762 */ GOTO 77
	IF ~~ THEN REPLY @22 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ #254629 */ GOTO 87
	IF ~~ THEN REPLY @23 /* ~If you've not come to help me, why are you here?~ #254630 */ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @142 /* ~But I do believe you. What you need to understand is that it doesn't matter what I think and know. Not until the day we can prove that you're not Skie's murderer.~ #271763 */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @143 /* ~We can scream and shout but until we have evidence, you're not safe here, and neither I nor the Flaming Fist nor those Dukes who think like me can protect you.~ #271764 */
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN GOTO 79
  
	IF ~  
		!Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN GOTO 80
END

IF ~~ THEN BEGIN 74 // from: 71.5 68.0
  SAY @144 /* ~I needed to see you one last time. Needed to tell you how I feel...and what I really think.~ #271765 */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @145 /* ~You did not kill her, we both know that.~ #271766 */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @26 /* ~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] #270321 */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 81
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 77 // from: 71.3
  SAY @27 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] #254636 */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 78 // from: 68.1 67.1
  SAY @32 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] #254641 */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 81
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 79 // from: 73.0 67.0
  SAY @33 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] #254642 */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 73.1
  SAY @146 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. My duty and Rohma require I stay here but you can't.~ #271767 */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 79.0 78.0 77.0 76.0 69.0 66.0
  SAY @147 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had. I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ [BD54643] #271768 */
  IF ~~ THEN REPLY @35 /* ~It was love, Schael. It was - it IS - real.~ */ GOTO 83
  IF ~~ THEN REPLY @36 /* ~Love makes fools of us all.~ #254645 */ GOTO 83
  IF ~~ THEN REPLY @37 /* ~You know what we had. Deny it if you must. I know the truth.~ #254646 */ GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 80.0 78.1 76.1 70.0
  SAY @148 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, it's important for me you know that I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ #271769 */
  IF ~~ THEN REPLY @149 /* ~It is precious for me as well, Schael. ~ #271770 */ GOTO 85
  IF ~~ THEN REPLY @150 /* ~I thought of you as my friend, Schael.~ #271771 */ GOTO 85
  IF ~~ THEN REPLY @151 /* ~We've been through all of this together. Deny it if you must. I know the truth.~ #271772 */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.2 81.1 81.0 71.1 65.1
  SAY @40 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ #270323 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @41 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] #254648 */
  IF ~~ THEN REPLY @42 /* ~Do not succumb to despair, Schael. This isn't over yet.~ #270324 */ GOTO 87
  IF ~~ THEN REPLY @43 /* ~So long as you love me, I have hope.~ #270325 */ GOTO 87
  IF ~~ THEN REPLY @44 /* ~Let's see how we're feeling after you release me from this wretched cell.~ #270326 */ GOTO 87
END

IF ~~ THEN BEGIN 85 // from: 82.2 82.1 82.0 71.2 65.2
  SAY @152 /* ~I'll not deny my friendship for you. Not ever. But how I feel or even what I know means little beyond these walls.~ #271773 */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @153 /* ~Friendship moves mountains and will be victorious in the end. I'm not feeling particularly victorious right now. Are you?~ #271774 */
  IF ~~ THEN REPLY @42 /* ~Do not succumb to despair, Schael. This isn't over yet.~ #270324 */ GOTO 87
  IF ~~ THEN REPLY @154 /* ~So long as I have friends who believe in me, I have hope.~ #271775 */ GOTO 87
  IF ~~ THEN REPLY @44 /* ~Let's see how we're feeling after you release me from this wretched cell.~ #270326 */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.2 86.1 86.0 84.2 84.1 84.0 71.4 68.4 67.2
  SAY @155 /* ~Don't lose hope. I won't stop advocating your innocence to the Dukes. In the meantime, we need to get you out of the city and away from Entar before he tries something.~ #271776 */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 86.2 86.1 86.0 84.2 84.1 84.0 71.4 68.4 67.2
  SAY @156 /* ~~Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ #271776 */
  IF ~
	Global("bd_corwin_romanceactive","global",2)
  ~
  THEN GOTO 90
  
  DO ~
	SetGlobal("EECorwinContinue","Global",1)
  ~
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0
  SAY @157 /* ~I must go now, <CHARNAME>. I know this is as hard for you as it is for me. Farewell.~ */
  IF ~~ THEN 
	DO ~
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN 90 // from: 87.0
  SAY @158 /* ~Maybe then, <CHARNAME>, we can finally be together.~ */
	DO ~
		SetGlobal("EECorwinContinue","Global",2)
	~
  IF ~~ THEN REPLY @159 /* ~We will be, my love. I swear it.~ */ GOTO 89
  IF ~~ THEN REPLY @160 /* ~I hope so, Schael. Gods willing, I hope so.~ */ GOTO 89
END