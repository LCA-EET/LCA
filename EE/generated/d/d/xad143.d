// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDTIAX.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDTIAX.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD143~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 43 even though they appear after this state */
~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You would have Tiax leave your side? Where's the sense in that? There is none, say Tiax—and Tiax knows sense when he see it.~ #66524 */
  IF ~~ THEN REPLY @2 /* ~Stay here, Tiax. I'll fetch you if you're needed.~ #66525 */ GOTO 3
  IF ~  OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("tiax")
~ THEN REPLY @3 /* ~Return to the crypt's entrance and wait for my return.~ #66526 */ GOTO 5
  IF ~~ THEN REPLY @4 /* ~Keeping you with me sensible? I'm not sure about that, but I'll do it anyway—for as long as you stay focused on the task at hand.~ #66527 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @5 /* ~You think Tiax is unfocused? TIAX? UNFOCUSED? I say thee nay! Tiax is as focused as a gnome with spectacles! Unfocused! Cyric will rain unending death down upon thee for this insult!~ #66528 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~Eh, what were we talking about again...?~ #66529 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @7 /* ~You seek to be rid of mighty Tiax? How dare y—wait... Tiax sees... clever, very clever.~ #66530 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8 /* ~Yes, Tiax will wait. Wait for you, and we shall play a game of fetch and bloodshed in Cyric's name with the bodies of our enemies.~ #66531 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @9 /* ~Tiax sees what you are doing, godling. Tiax sees all. You are clever, very clever... but are you Tiax? You are not.~ #66532 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10 /* ~So! I shall await you at this crypt's maw. And when you return... we will see what manner of welcome Tiax has for you.~ #66533 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 43 even though they appear after this state */
~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)
~ THEN BEGIN 7 // from:
  SAY @11 /* ~Cyric told Tiax you were coming.~ #66534 */
  IF ~~ THEN REPLY @12 /* ~Did he say anything else?~ #66535 */ GOTO 8
  IF ~~ THEN REPLY @13 /* ~I have need of you. Come with me.~ #66536 */ GOTO 10
  IF ~~ THEN REPLY @14 /* ~I'll leave you and Cyric to chat then. I would hate to interrupt that conversation.~ #66537 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @15 /* ~Many things. But those are for Tiax and Tiax alone. Are you Tiax? Tiax thought not.~ #66538 */
  IF ~~ THEN REPLY @16 /* ~Join me and find out.~ #66539 */ GOTO 10
  IF ~~ THEN REPLY @17 /* ~I want nothing from you. Stay here until I return.~ #66540 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 7.2
  SAY @18 /* ~You are leaving, eh? Well-played. Well-played.~ #66541 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 7.1
  SAY @19 /* ~You wish Tiax to stand with you? Or is it your wish to lead Tiax to his death? Perhaps Tiax will surprise you and lead you instead... Tiax will join you, and we will see, yes, we will see.~ #66542 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 43 even though they appear after this state */
~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @20 /* ~You! Come here! Tiax commands you! ~ #34775 */
  IF ~~ THEN REPLY @21 /* ~Well met, Tiax. How are you doing this <DAYNIGHTALL>?~ #34776 */ DO ~SetGlobal("BD_Spoken_Tiax","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY @22 /* ~Oh, right, you're like THIS. I'll be going now.~ #34777 */ DO ~SetGlobal("BD_Spoken_Tiax","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY @23 /* ~No one commands me.~ #34778 */ DO ~SetGlobal("BD_Spoken_Tiax","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY @24 /* ~Tiax commands all! ALL! ~ #34779 */
  IF ~~ THEN REPLY @25 /* ~It is as you say, Lord.~ #34780 */ GOTO 13
  IF ~~ THEN REPLY @26 /* ~Fine, you command me.~ #34781 */ GOTO 13
  IF ~~ THEN REPLY @23 /* ~No one commands me.~ #34782 */ GOTO 28
  IF ~~ THEN REPLY @27 /* ~We're done here.~ #34783 */ GOTO 38
END

IF ~~ THEN BEGIN 13 // from: 29.2 12.1 12.0
  SAY @28 /* ~That's better. What can your lord and master do for you this <DAYNIGHTALL>, peon? ~ #34784 */
  IF ~~ THEN REPLY @29 /* ~I need your help, Tiax.~ #34785 */ GOTO 14
  IF ~~ THEN REPLY @30 /* ~You know what? I've changed my mind about wanting your help.~ #34786 */ GOTO 38
  IF ~~ THEN REPLY @31 /* ~There is someone in the north who needs killing. Her name is Caelar Argent. Some call her the Shining Lady.~ #34787 */ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @32 /* ~You need the help of the great and mighty Tiax? Hah! It is to laugh! Hah! Hah! And hah again! ~ #34788 */
  IF ~~ THEN REPLY @33 /* ~So you won't help me?~ #34789 */ GOTO 36
  IF ~~ THEN REPLY @34 /* ~You know what I like about you, Tiax? Your sense of humor. So, will you help me?~ #34790 */ GOTO 16
  IF ~~ THEN REPLY @35 /* ~You're utterly mad.~ #34791 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @36 /* ~You call Tiax mad? MAD?~ #34792 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @37 /* ~Help you?~ #34793 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY @38 /* ~How is Tiax doing? What sort of question is that for the master of all?~ #34794 */
  IF ~~ THEN REPLY @39 /* ~I would not want to upset the master of all by being rude.~ #34795 */ GOTO 18
  IF ~~ THEN REPLY @40 /* ~Master of all? You?~ #34796 */ GOTO 28
  IF ~~ THEN REPLY @41 /* ~My time is valuable, madman. I'll waste no more of it on you.~ #34797 */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @42 /* ~Then you are wise. Perhaps when Tiax takes what is rightfully his, you will be spared. You may go now. ~ #34799 */
  IF ~~ THEN REPLY @43 /* ~Before I do, I've a boon to ask of you.~ #34800 */ GOTO 19
  IF ~~ THEN REPLY @44 /* ~Yes. I think that would be for the best.~ #34801 */ GOTO 38
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @45 /* ~Ah-HAH! FINALLY <PRO_HESHE> gets to the point. You want something from Tiax! Well, what is it? What can this humble servant of ALMIGHTY CYRIC do for you?~ #34803 */
  IF ~~ THEN REPLY @46 /* ~I was going to ask you to join me on a journey north.~ #34804 */ GOTO 36
  IF ~~ THEN REPLY @47 /* ~You believe you're humble?~ #34805 */ GOTO 20
  IF ~~ THEN REPLY @48 /* ~Help me kill a woman named Caelar.~ #34806 */ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @49 /* ~NONE ARE MORE HUMBLE THAN TIAX! CYRIC HAS DECLARED IT SO! ~ #34807 */
  IF ~~ THEN REPLY @50 /* ~If you say so. I was hoping you would accompany me on a venture in the north.~ #34808 */ GOTO 21
  IF ~~ THEN REPLY @51 /* ~I'll take your word for it. Out of curiosity, what does Cyric say about the Shining Lady, Caelar Argent?~ #34809 */ GOTO 25
  IF ~~ THEN REPLY @52 /* ~Yeah, we're done here.~ #34810 */ GOTO 38
END

IF ~~ THEN BEGIN 21 // from: 26.0 20.0
  SAY @53 /* ~It's north you want to go, is it? And why would you want to do that, eh? Eh? Eh, eh, eh? ~ #34811 */
  IF ~~ THEN REPLY @54 /* ~There is a woman named Caelar causing problems. She must be dealt with.~ #34812 */ GOTO 23
  IF ~~ THEN REPLY @55 /* ~You probably haven't noticed here in your cell, but the city's getting crowded right now.~ #34813 */ GOTO 22
  IF ~~ THEN REPLY @56 /* ~There's a woman I must kill—the Shining Lady, Caelar Argent.~ #34814 */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @57 /* ~Have you taken leave of your senses, <CHARNAME>? This is no cell!~ #34815 */
  IF ~~ THEN GOTO 24
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~BDMINSCJ~ 12
END

IF ~~ THEN BEGIN 23 // from: 21.0 19.2
  SAY @58 /* ~Caelar, you say? Tiax has heard this name, many times. His court echoes with the name, Caelar... Caelar... CAELAR!~ #34816 */
  IF ~~ THEN REPLY @59 /* ~What do these voices say?~ #34817 */ GOTO 27
  IF ~~ THEN REPLY @60 /* ~I take it by "court," you actually mean "jail cell."~ #34818 */ GOTO 24
  IF ~~ THEN REPLY @61 /* ~Help me kill Caelar. We will silence these voices together.~ #34819 */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 26.1 23.1 22.0
  SAY @62 /* ~It's a court! Cyric says it is so! ~ #34820 */
  IF ~~ THEN REPLY @63 /* ~I don't think he has...~ #34821 */ GOTO 29
  IF ~~ THEN REPLY @64 /* ~One man's court is another's prison. I can free you from this one, if you help me with Caelar.~ #34822 */ GOTO 36
  IF ~~ THEN REPLY @65 /* ~Fine. It's a court. I don't care. Will you help me or not?~ #34823 */ GOTO 36
END

IF ~~ THEN BEGIN 25 // from: 21.2 20.1 13.2
  SAY @66 /* ~Tiax knows of the Luminous One. Luminous is a strange word, is it not? Luminous. Lumi-NUSS. Looooooominous.~ #34824 */
  IF ~~ THEN REPLY @67 /* ~Focus, Tiax. Will you help me deal with Caelar or not?~ #34825 */ GOTO 26
  IF ~~ THEN REPLY @68 /* ~You know what? It actually is kind of an odd one. "Luminous." But it is, at best, beside the point.~ #34826 */ GOTO 30
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @69 /* ~You're of no use to me, madman.~ #34827 */ EXTERN ~BDDYNAHJ~ 16
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @69 /* ~You're of no use to me, madman.~ #34827 */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 25.0 23.2
  SAY @70 /* ~What? You would have Tiax leave his court? ~ #34828 */
  IF ~~ THEN REPLY @71 /* ~I would have you join me in the north.~ #34829 */ GOTO 21
  IF ~~ THEN REPLY @72 /* ~You mean your jail cell?~ #34830 */ GOTO 24
  IF ~~ THEN REPLY @73 /* ~No. On reflection, I would not.~ #34831 */ GOTO 38
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY @74 /* ~What do the voices say? They say I am Tiax! Master of this world and every other!~ #34832 */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 17.1 15.0 12.2
  SAY @75 /* ~I am Tiax! TIAX IS LORD OVER ALL HE SURVEYS! Cyric has declared it so! ~ #34833 */
  IF ~~ THEN REPLY @76 /* ~I don't think he has.~ #34834 */ GOTO 29
  IF ~~ THEN REPLY @77 /* ~Good thing all you can survey is this prison cell.~ #34835 */ GOTO 29
  IF ~~ THEN REPLY @78 /* ~Prove it, then. Join me in killing Caelar.~ #34836 */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.0 24.0
  SAY @79 /* ~CYRIC HAS DECLARED TIAX LORD OVER ALL! ~ #34837 */
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @80 /* ~I'm wasting my time here.~ #34838 */ EXTERN ~BDDYNAHJ~ 16
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @80 /* ~I'm wasting my time here.~ #34838 */ GOTO 38
  IF ~~ THEN REPLY @81 /* ~All right, all right. You are lord over all.~ #34839 */ GOTO 13
  IF ~~ THEN REPLY @82 /* ~I am the <PRO_SONDAUGHTER> of Bhaal, Cyric-lover. You have no sway over me.~ #34840 */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 31.1 25.1
  SAY @83 /* ~They called me mad. They ALL called me mad. Tiax will show them. Tiax will show them all... ~ #34841 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 29.3 27.0
  SAY @84 /* ~Hah! My god slew your god, fool! And then He declared Tiax will be lord of all! ~ #34842 */
  IF ~~ THEN REPLY @85 /* ~He wasn't my god. He was my father.~ #34843 */ GOTO 32
  IF ~~ THEN REPLY @86 /* ~You're crazier than your god. You know that, right?~ #34844 */ GOTO 30
  IF ~~ THEN REPLY @87 /* ~I should kill you where you stand, you wretched piece of filth.~ #34845 */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @88 /* ~It matters not! He is dead at Cyric's hand! Hahah! ~ #34846 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 30.0
  SAY @89 /* ~What do you want with Tiax, lord of the land, seas, and sky, Bhaal-bred?~ #34847 */
  IF ~~ THEN REPLY @46 /* ~I was going to ask you to join me on a journey north.~ #34848 */ GOTO 36
  IF ~~ THEN REPLY @90 /* ~I want him as far away from me as possible.~ #34849 */ GOTO 38
  IF ~~ THEN REPLY @91 /* ~I want you to help me find and eliminate Caelar the Shining Lady.~ #34850 */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 31.2
  SAY @92 /* ~Tiax cannot be killed! Not by you! His life belongs to Cyric. ~ #34851 */
  IF ~~ THEN REPLY @93 /* ~Life is cheap to the Lord of Murder.~ #34852 */ GOTO 35
  IF ~~ THEN REPLY @94 /* ~Cyric can have it. Let's get out of here.~ #34853 */ GOTO 38
  IF ~~ THEN REPLY @95 /* ~If I had more time, I'd make you beg your wretched god to let you die. Count yourself lucky, madman.~ #34854 */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0 33.2
  SAY @96 /* ~You know nothing of Cyric or his ways. Perhaps Tiax will do as you ask—help you kill this Shining Lady in the name of the one true Lord of Murder...~ #34855 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 33.0 28.2 24.2 24.1 19.0 16.0 14.0
  SAY @97 /* ~Nay! Cyric has given Tiax a vision! You go to your doom, child of Bhaal! Tiax will not join you. He will stay here in his court, where it is safe. Cyric has declared it so!~ #34856 */
  IF ~~ THEN REPLY @98 /* ~Are you sure?~ #34857 */ DO ~SetGlobal("bd_invited_tiax","bd0104",1)
~ GOTO 37
  IF ~~ THEN REPLY @99 /* ~I'd try to change your mind, if I believed you actually possessed one.~ #34858 */ DO ~SetGlobal("bd_invited_tiax","bd0104",1)
~ GOTO 38
  IF ~~ THEN REPLY @100 /* ~You are as useless as your god.~ #34859 */ DO ~SetGlobal("bd_invited_tiax","bd0104",1)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 25.3 17.2
  SAY @101 /* ~Tiax has spoken! Begone!~ #34860 */
  IF ~~ THEN DO ~AddJournalEntry(61621,INFO)
~ EXIT
  IF ~  Alignment(Player1,MASK_CHAOTIC)
~ THEN DO ~AddJournalEntry(61622,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2 36.1 34.2 34.1 33.1 29.1 26.2 20.2 18.1 13.1 12.3 11.1
  SAY @102 /* ~FEAR THE DARK SUN!~ #34861 */
  IF ~~ THEN DO ~AddJournalEntry(61621,INFO)
~ EXIT
  IF ~  Alignment(Player1,MASK_CHAOTIC)
~ THEN DO ~AddJournalEntry(61622,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN DO ~AddJournalEntry(61621,INFO)
~ EXTERN ~BDDYNAHJ~ 17
  IF ~  Alignment(Player1,MASK_CHAOTIC)
IsValidForPartyDialogue("Dynaheir")
~ THEN DO ~AddJournalEntry(61622,INFO)
~ EXTERN ~BDDYNAHJ~ 17
END

IF WEIGHT #4 /* Triggers after states #: 43 even though they appear after this state */
~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY @103 /* ~Well met. What can Tiax do for you this fine <DAYNIGHTALL>?~ #39841 */
  IF ~~ THEN REPLY @104 /* ~Are you all right?~ #39842 */ GOTO 40
  IF ~~ THEN REPLY @105 /* ~I would have you join me on a great adventure, Tiax. Cyric has promised glory to all who fight at my side.~ #39843 */ GOTO 41
  IF ~~ THEN REPLY @106 /* ~There is naught you can do for me, or anyone, inside this dungeon.~ #39844 */ GOTO 45
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @107 /* ~Is Tiax all right? Tiax is more than all right! Tiax is mighty! All will bow before the wonder and glory of Tiax when Tiax rules!~ #39845 */
  IF ~~ THEN GOTO 42
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~BDDYNAHJ~ 18
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY @108 /* ~Cyric said this to you? You dare go over Tiax's head? Tiax will grind your bones to paste, you gaping mackerel!~ #39846 */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 40.0
  SAY @109 /* ~DIE! DIE IN TIAX'S NAME!~ #39847 */
  IF ~~ THEN DO ~SetGlobal("BD_TIAX_FAIL","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
PlaySound("tiaxx39")
SetSequence(SEQ_ATTACK)
Wait(1)
PlaySound("tiaxx39")
SetSequence(SEQ_ATTACK)
Wait(1)
SetSequence(SEQ_ATTACK)
Wait(2)
EndCutSceneMode()
StartDialogNoSet(LastTalkedToBy)
~ EXIT
END

IF WEIGHT #0 ~  Global("BD_TIAX_FAIL","LOCALS",1)
~ THEN BEGIN 43 // from:
  SAY @110 /* ~You are lucky Tiax chooses to await his destiny in this cell. But your luck will run out when he rules. Tremble in terror—the day is coming!~ #39848 */
  IF ~~ THEN DO ~SetGlobal("BD_TIAX_FAIL","LOCALS",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 46.0 43.0
  SAY @111 /* ~Now begone. Tiax would have a nap.~ #39849 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
Face(SW)
SmallWait(1)
MoveToPoint([559.761])
Face(SE)
SmallWait(1)
MoveToPoint([615.782])
Face(NW)
SmallWait(1)
MoveToPoint([554.748])
PlaySound("HIT_03A")
ReallyForceSpellRES("bdgassa1",Myself)
~ EXIT
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN DO ~DialogueInterrupt(FALSE)
Face(SW)
SmallWait(1)
MoveToPoint([559.761])
Face(SE)
SmallWait(1)
MoveToPoint([615.782])
Face(NW)
SmallWait(1)
MoveToPoint([554.748])
PlaySound("HIT_03A")
ReallyForceSpellRES("bdgassa1",Myself)
~ EXTERN ~BDSAFANJ~ 13
END

IF ~~ THEN BEGIN 45 // from: 39.2
  SAY @112 /* ~You see a dungeon? Are you mad? This is no dungeon, it is the beating heart of all Toril. And Tiax is in that heart, bathing in the blood of all who live!~ #39850 */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @113 /* ~HAHAHAHAHAHAHA!~ #39851 */
  IF ~~ THEN GOTO 44
END
