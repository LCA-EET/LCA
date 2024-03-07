// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDGLINT.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDGLINT.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC100~

IF ~  AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You don't think I'm leaving now, do you?~ #67452 */
  IF ~~ THEN DO ~SetGlobal("bd_glint_kicked_mdd1330","global",1)
SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~<CHARNAME>! You want me to leave? Seriously? We were having SUCH a good time together.~ [BD57064] #57064 */
  IF ~  GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("glint")
~ THEN REPLY @3 /* ~Head back to the camp. They need you there more than I do here.~ #57065 */ DO ~SetGlobal("bd_npc_camp","locals",1)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I'm afraid this is where we part ways, Glint—at least for the moment. Stay here. I may return for you later.~ #57066 */ GOTO 3
  IF ~  Gender(Player1,MALE)
~ THEN REPLY @5 /* ~We were. But unfortunately, this isn't the time for a good time.~ #57067 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~Your idea of a good time and mine don't necessarily match up, but that's no reason whatever times we're having should end. Stick with me.~ #57068 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~You think so? Well, you'd know better than I would. I'll be off then. Take care.~ #57069 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8 /* ~Standing still isn't really in my nature, but if that's what you want, I'll do it as best I can. Farewell for now. And later. All the time. I don't know why I said "now." That was unnecessary, really. Right. Farewell.~ #57070 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9 /* ~Pity. You will let me know when the time comes, right? I'd hate to miss that.~ #57071 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @10 /* ~That a <PRO_GIRLBOY>!~ #57072 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~  AreaCheck("bd4300")
GlobalGT("bd_plot","global",585)
~ THEN BEGIN 6 // from:
  SAY @11 /* ~I've enjoyed these past weeks as much as one can enjoy such things, but I've got to say it'll be nice to get home and see Mum again.~ #65662 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_glint_plot","global",0)
~ THEN BEGIN 7 // from:
  SAY @12 /* ~Hm, what, mm? What? Oh, uh, hello. Uh, excuse me, I've got to go.~ [BD49591] #49591 */
  IF ~~ THEN REPLY @13 /* ~I don't believe we've met. I am <CHARNAME>.~ #49593 */ GOTO 9
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @14 /* ~Go where, exactly? Who are you?~ #49594 */ EXTERN ~BDCORWIJ~ 56
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @14 /* ~Go where, exactly? Who are you?~ #49594 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @15 /* ~What's your name, gnome?~ #49595 */ EXTERN ~BDCORWIJ~ 56
  IF ~  !IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @15 /* ~What's your name, gnome?~ #49595 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Corwin")
Race([PC],GNOME)
~ THEN REPLY @16 /* ~Bide a moment. I would speak with you. What's your name?~ #49596 */ EXTERN ~BDCORWIJ~ 56
  IF ~  !IsValidForPartyDialogue("Corwin")
Race([PC],GNOME)
~ THEN REPLY @16 /* ~Bide a moment. I would speak with you. What's your name?~ #49596 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @17 /* ~Go, then. I've better things to do than talk to you.~ #49597 */ EXTERN ~BDCORWIJ~ 55
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @17 /* ~Go, then. I've better things to do than talk to you.~ #49597 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 13.2 12.8 11.3 9.7 9.2 7.8
  SAY @18 /* ~Yes. Uh, that's good. Right. Bye!~ [BD49598] #49598 */
  IF ~~ THEN DO ~SetGlobal("bd_glint_escape","BD1000",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY @19 /* ~Yes, yes, yes, you are, aren't you? That's fantastic. Well, if you'll excuse me...~ [BD49599] #49599 */
  IF ~~ THEN REPLY @20 /* ~I don't believe I caught your name.~ #49600 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @21 /* ~I can see you've got a lot on the go right now. I'll leave you to it.~ #49601 */ EXTERN ~BDCORWIJ~ 55
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @21 /* ~I can see you've got a lot on the go right now. I'll leave you to it.~ #49601 */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY @22 /* ~You seem rather anxious not to talk with me, friend. Have I offended you in some way?~ #49602 */ GOTO 10
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @23 /* ~I'll be happy to—once you've told me your name.~ #49603 */ EXTERN ~BDCORWIJ~ 56
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @23 /* ~I'll be happy to—once you've told me your name.~ #49603 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @24 /* ~Begone, gnome.~ #49604 */ EXTERN ~BDCORWIJ~ 55
  IF ~  !IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @24 /* ~Begone, gnome.~ #49604 */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.3
  SAY @25 /* ~Offended me? No, no, no, no, not at all. I'm just— Hello. I'm Glint. Glint "Three-Eyes" Gardnersonson. How are you?~ [BD49605] #49605 */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY @26 /* ~Well enough. What are you doing here, Glint Gardnersonson? And before you attempt to evade the question, please know: This conversation will not end until I receive a satisfactory answer.~ #49592 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 19
  IF ~~ THEN REPLY @27 /* ~Quite well, thanks for asking. And you?~ #49606 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 11
  IF ~~ THEN REPLY @28 /* ~Three-Eyes?~ #49607 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 13
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @29 /* ~What exactly do you do, Glint? There aren't too many gnomes who'd willingly join a military expedition.~ #49608 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ EXTERN ~BDCORWIJ~ 57
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @29 /* ~What exactly do you do, Glint? There aren't too many gnomes who'd willingly join a military expedition.~ #49608 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 14
  IF ~  CheckStatGT(Player1,12,WIS)
~ THEN REPLY @30 /* ~I'll be better once I know what you're up to. Don't deny it—there's something off about you, I can tell.~ #49609 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @31 /* ~I'm a little busy right at the moment.~ [BD49610] #49610 */
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @32 /* ~Doing what? Perhaps I can help.~ #49611 */ EXTERN ~BDCORWIJ~ 60
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @32 /* ~Doing what? Perhaps I can help.~ #49611 */ GOTO 15
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @33 /* ~Be about your business, then.~ #49612 */ EXTERN ~BDCORWIJ~ 55
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @33 /* ~Be about your business, then.~ #49612 */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.5 9.0 7.6 7.4 7.2
  SAY @34 /* ~My name? Oh right, right, my name. I'm Glint. Glint "Three-Eyes" Gardnersonson. Pleased to meet you.~ [BD49613] #49613 */
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @35 /* ~And I, you. How did you come to be part of this motley troupe, Glint?~ #49614 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ EXTERN ~BDCORWIJ~ 61
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @35 /* ~And I, you. How did you come to be part of this motley troupe, Glint?~ #49614 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 15
  IF ~~ THEN REPLY @28 /* ~Three-Eyes?~ #49615 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 13
  IF ~  IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @36 /* ~What exactly do you do, Glint? Of the gnomes I know, there are few who'd willingly join a military expedition.~ #49616 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ EXTERN ~BDCORWIJ~ 57
  IF ~  !IsValidForPartyDialogue("Corwin")
!Race([PC],GNOME)
~ THEN REPLY @36 /* ~What exactly do you do, Glint? Of the gnomes I know, there are few who'd willingly join a military expedition.~ #49616 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 14
  IF ~  IsValidForPartyDialogue("Corwin")
Race([PC],GNOME)
~ THEN REPLY @37 /* ~What exactly do you do, Glint? I don't know many of our kind who'd willingly join a military expedition.~ #49617 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ EXTERN ~BDCORWIJ~ 57
  IF ~  !IsValidForPartyDialogue("Corwin")
Race([PC],GNOME)
~ THEN REPLY @37 /* ~What exactly do you do, Glint? I don't know many of our kind who'd willingly join a military expedition.~ #49617 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 14
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @38 /* ~That will be a short-lived pleasure. Farewell.~ #49618 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ EXTERN ~BDCORWIJ~ 62
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @38 /* ~That will be a short-lived pleasure. Farewell.~ #49618 */ DO ~SetGlobal("bd_glint_plot","global",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 10.2
  SAY @39 /* ~Ah, yes. Yes. An old nickname. That's how many eyes Mum said she had to keep on me to make sure I stayed out of trouble. Turns out she really needed four eyes, but that—that's a long story.~ [BD49619] #49619 */
  IF ~~ THEN REPLY @40 /* ~A story I'd be most interested in hearing, if you're willing to share it. Would you consider joining me for a time?~ #49620 */ GOTO 17
  IF ~~ THEN REPLY @41 /* ~You sound like exactly the kind of person I like to have in my company. You should join me. ~ #49621 */ GOTO 17
  IF ~~ THEN REPLY @42 /* ~I don't care to hear it. Be on your way.~ #49622 */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.6 12.4 10.4
  SAY @43 /* ~Willingly might be pushing it...~ [BD49623] #49623 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 12.1 11.1
  SAY @44 /* ~I am a cleric of Baravar Cloakshadow. May I have a minute to talk to you about the Lords of the Golden Hills?~ [BD49624] #49624 */
  IF ~~ THEN REPLY @45 /* ~A minute hardly seems sufficient. Join me; you can tell me all about yourself and your gods.~ #49625 */ GOTO 17
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @46 /* ~You may have a minute, but not this one. I now know what you are, but I don't know what you do. Specifically, I don't know what you're doing here.~ #49626 */ EXTERN ~BDCORWIJ~ 59
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @46 /* ~You may have a minute, but not this one. I now know what you are, but I don't know what you do. Specifically, I don't know what you're doing here.~ #49626 */ GOTO 19
  IF ~~ THEN REPLY @47 /* ~Gods, no.~ #49627 */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY @48 /* ~Oh. A pity. They're really quite interesting. Well, if you'll excuse me, I've important matters to attend to. Bye for now!~ [BD49628] #49628 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 13.1 13.0
  SAY @49 /* ~Ah. All right. Uh, yes. Join you. I can do that.~ [BD49629] #49629 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @50 /* ~GardnersonSON. Two sons. Long story.~ [BD49633] #49633 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 58
END

IF ~~ THEN BEGIN 19 // from: 15.2 10.5 10.0
  SAY @51 /* ~Oh, all right. You've caught me. I'm not supposed to be here, not officially, at least. My mum definitely thinks I should be here, and it's usually easier to go along with her than argue.~ [BD49639] #49639 */
  IF ~~ THEN REPLY @52 /* ~Your mother sent you?~ #49640 */ GOTO 22
  IF ~~ THEN REPLY @53 /* ~You'd rather battle armed religious zealots than argue with your mother?~ #49641 */ GOTO 20
  IF ~~ THEN REPLY @54 /* ~You do whatever your mother asks? Pathetic.~ #49642 */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @55 /* ~You haven't met my mother.~ [BD49643] #49643 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @56 /* ~Spoken like someone who's never had to deal with my mother. I should be so lucky. Aw, nah, I didn't mean that. She's lovely, really. She's just... insistent. Like an avalanche or a tidal wave.~ [BD49644] #49644 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 20.0 19.0
  SAY @57 /* ~Family's very important to the Gardnersonsons. I've a number of relatives 'twixt Baldur's Gate and Waterdeep. Mum wanted me to check on them and make sure they're all right.~ [BD49645] #49645 */
  IF ~~ THEN REPLY @58 /* ~A worthy goal—one I would help you achieve, if you'll allow it. Join me. Together, we will find your family.~ #49646 */ GOTO 23
  IF ~~ THEN REPLY @59 /* ~A reasonable thing to do, considering the circumstances.~ #49647 */ GOTO 24
  IF ~~ THEN REPLY @60 /* ~Go to the camp commander and explain your presence here. You'll be put to work, but at least you're not at risk of being mistaken for a crusader.~ #49648 */ GOTO 25
  IF ~~ THEN REPLY @61 /* ~I'll leave you to your business, but don't expect me to come to your aid if someone mistakes you for a crusader.~ #49649 */ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 24.0 22.0
  SAY @62 /* ~Far be it from me to say no to an offer of help. Count me in.~ [BD49650] #49650 */
  IF ~~ THEN DO ~AddJournalEntry(52026,QUEST)
JoinParty()
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(52028,QUEST)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY @63 /* ~That may be the first time in history someone's considered anything my mother wanted reasonable.~ [BD49651] #49651 */
  IF ~~ THEN REPLY @64 /* ~Join me. I'll help you find your relatives.~ #49652 */ GOTO 23
  IF ~~ THEN REPLY @65 /* ~Go to the camp commander and introduce yourself. Explain why you're here. The last thing you need is someone mistaking you for a crusader and cutting you down.~ #49653 */ GOTO 25
  IF ~~ THEN REPLY @66 /* ~We're done here. Be on your way.~ #49654 */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.1 22.2
  SAY @67 /* ~Yeah. Yeah, that could get ugly. Thank you. I'll report in immediately.~ [BD49655] #49655 */
  IF ~~ THEN DO ~AddJournalEntry(61769,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @68 /* ~On my way. Right. I'll do that. Thanks. Bye!~ [BD49656] #49656 */
  IF ~~ THEN DO ~AddJournalEntry(61769,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.3
  SAY @69 /* ~Fair enough, fair enough. More than fair, really. Middling, at least. Thank you. Bye!~ [BD49657] #49657 */
  IF ~~ THEN DO ~AddJournalEntry(61769,INFO)
~ EXIT
END

IF ~  AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("bd_glint_romanceactive","global",2)
~ THEN BEGIN 28 // from:
  SAY @70 /* ~Heya.~ [BD54825] #54825 */
  IF ~~ THEN REPLY @71 /* ~It's you, Glint. I feared—I was afraid I'd never see you again.~ #54826 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 45
  IF ~~ THEN REPLY @72 /* ~Glint! Thank the gods. Get this door open.~ #54827 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @73 /* ~Go away, Glint. I don't want to talk to you.~ #54828 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 29
  IF ~~ THEN REPLY @74 /* ~Don't. Don't say that word. It's not for you.~ #54829 */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3 28.2
  SAY @75 /* ~Don't do this, <CHARNAME>. Not now.~ [BD54830] #54830 */
  IF ~~ THEN REPLY @76 /* ~What would you have me do, then? Thrash and rage and scream at the injustice of it all?~ #54831 */ GOTO 31
  IF ~~ THEN REPLY @77 /* ~Nothing good can come of your being here. I don't want you to see me like this. Leave me to my misery, I beg you.~ #54832 */ GOTO 30
  IF ~~ THEN REPLY @78 /* ~I said go. Get out of here!~ #54833 */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2 29.1
  SAY @79 /* ~I'd not deny any man, much less you, his final wish, especially one so easily provided as this. Goodbye, <CHARNAME>. We'll not meet again, I think. But I dearly hope I'm wrong.~ [BD54834] #54834 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY @80 /* ~Do you think that would help?~ [BD54835] #54835 */
  IF ~~ THEN REPLY @81 /* ~No.~ #54836 */ GOTO 32
  IF ~~ THEN REPLY @82 /* ~It couldn't hurt.~ #54837 */ GOTO 38
  IF ~~ THEN REPLY @83 /* ~Not nearly as much as freeing me from this cell would. Open the door. Release me.~ #54838 */ GOTO 35
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @84 /* ~I wouldn't, then.~ [BD54839] #54839 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @85 /* ~Why are you here, Glint?~ #54840 */ GOTO 33
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @85 /* ~Why are you here, Glint?~ #54840 */ GOTO 37
  IF ~~ THEN REPLY @86 /* ~Hey, you know what would help is getting me out of this bloody cell. Anything you can do for me on that?~ #54841 */ GOTO 35
  IF ~~ THEN REPLY @87 /* ~Enough talk. Open the cell door. Release me.~ #54842 */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 45.0 43.0 36.0 32.0
  SAY @88 /* ~I've tried to let it go, <CHARNAME>. I have, truly, but I can't. I need to know what there was between you and the Silvershield girl.~ [BD54843] #54843 */
  IF ~~ THEN REPLY @89 /* ~Nothing. There was nothing between us. I didn't kill her, Glint. I couldn't have.~ #54844 */ GOTO 52
  IF ~~ THEN REPLY @90 /* ~In the end? A dagger's hilt and not much else.~ #54845 */ GOTO 34
  IF ~~ THEN REPLY @91 /* ~You think I killed her? I wish I had. I'll swing for her death regardless of the truth.~ #54846 */ GOTO 51
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @92 /* ~This isn't a joke!~ #54847 */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 35 // from: 32.3 32.2 31.2 28.1
  SAY @93 /* ~I would if I could. Well, I suppose I'm technically capable of pulling it off. What I mean is, I would if I could and not get cut down by the small army of Flaming Fist mercenaries down the hall who're clearly looking for any excuse to cut down a dashing gnome in the prime of his life.~ [BD54848] #54848 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 41.0 35.0
  SAY @94 /* ~I am so sorry. I've been trying to find a way to get you out of here that wouldn't end up with both of us prematurely dead. I plan to keep trying until I find one.~ [BD54849] #54849 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @95 /* ~If you aren't here to free me, why have you come?~ #54850 */ DO ~SetGlobal("bd_rdd121e_goro18g","locals",1)
~ GOTO 33
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @95 /* ~If you aren't here to free me, why have you come?~ #54850 */ DO ~SetGlobal("bd_rdd121e_goro18g","locals",1)
~ GOTO 48
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @96 /* ~You'll find a way, I'm sure. I have faith in you.~ #54851 */ DO ~SetGlobal("bd_rdd121e_goro18g","locals",1)
~ GOTO 43
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @96 /* ~You'll find a way, I'm sure. I have faith in you.~ #54851 */ DO ~SetGlobal("bd_rdd121e_goro18g","locals",1)
~ GOTO 44
  IF ~~ THEN REPLY @97 /* ~Go, then. Go and don't return until you're able to release me from this fetid hole.~ #54852 */ DO ~SetGlobal("bd_rdd121e_goro18g","locals",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 49.0 38.3 38.1 32.1
  SAY @98 /* ~I've been trying to find a way to get you out of here that wouldn't end up with both of us prematurely dead. I plan to keep trying until I find one.~ [BD70328] #70328 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY @99 /* ~I'd give it a try, then. Eh, preferably after I leave.~ [BD54853] #54853 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @100 /* ~You haven't come to free me?~ #54854 */ GOTO 41
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @100 /* ~You haven't come to free me?~ #54854 */ GOTO 37
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @101 /* ~I assume you mean after WE leave.~ #54855 */ GOTO 41
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @101 /* ~I assume you mean after WE leave.~ #54855 */ GOTO 37
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @102 /* ~You intend to abandon me too, then. I suppose I should have expected nothing better.~ #54856 */ GOTO 41
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @102 /* ~You intend to abandon me too, then. I suppose I should have expected nothing better.~ #54856 */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.5
  SAY @103 /* ~Don't be so quick to give up on me. I've not given up on you.~ #70329 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 40 // from: 44.0 37.0
  SAY @104 /* ~Be strong, <CHARNAME>. Goodbye.~ [BD70330] #70330 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.4 38.2 38.0
  SAY @105 /* ~I could say I love you, and I wouldn't be lying. But I would be lying if I said I loved you more than I do living. There's a Flaming Fist army down the hall who're clearly looking for any excuse to cut down a dashing gnome in the prime of his life.~ [BD54857] #54857 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 42 // from: 36.4
  SAY @106 /* ~Goodbye. If we don't see each other again, I—I want you to know the time we spent together was, it was... I'm sorry. I can't do this. Forgive me. I can't.~ [BD54858] #54858 */
  IF ~~ THEN DO ~MoveToPointNoInterrupt([520.550])
DisplayStringHead(Myself,@107)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.2
  SAY @108 /* ~Good, that's good. Keep your spirits up... I, uh, there's something I need to ask you.~ [BD54860] #54860 */
  IF ~~ THEN GOTO 33
  IF ~  Global("bd_player_exiled","global",1)
~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 36.3
  SAY @109 /* ~Good, that's good. Keep your spirits up.~ [BD70331] #70331 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 45 // from: 28.0
  SAY @110 /* ~You almost didn't. I needed some time to come to terms with what you—what they say you did. And I still haven't.~ [BD54861] #54861 */
  IF ~~ THEN GOTO 33
  IF ~  Global("bd_player_exiled","global",1)
~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1 43.1
  SAY @111 /* ~Did you kill her? I saw you, you know. The blood on your hands, the dagger at your feet...~ [BD70332] #70332 */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @112 /* ~I don't want to believe it. So I won't. Be strong, <CHARNAME>. I will find a way to get you out of here.~ [BD70333] #70333 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from: 39.0 36.1
  SAY @113 /* ~I needed some time to come to terms with what you—what they say you did.~ [BD70334] #70334 */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @114 /* ~I don't want to believe it either. So I won't.~ [BD70335] #70335 */
  IF ~~ THEN GOTO 37
  IF ~  Global("bd_rdd121e_goro18g","locals",1)
~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.1
  SAY @115 /* ~Be strong, <CHARNAME>. I will find a way to get you out of here.~ [BD70336] #70336 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 34.0 33.2
  SAY @116 /* ~Were you—were you with her? Did you kill her? I saw you, you know. The blood on your hands, the dagger at your feet...~ [BD54862] #54862 */
  IF ~~ THEN REPLY @117 /* ~Listen to me, Glint. Whether I live or die, it doesn't matter, but you must believe this. There was nothing between me and Skie. I had no reason to kill her, none. I don't know what happened that night, not yet. But I didn't kill Skie Silvershield. I couldn't have.~ #54863 */ GOTO 52
  IF ~~ THEN REPLY @118 /* ~Yeah. Not exactly the perfect murder, was it?~ #54864 */ GOTO 52
  IF ~~ THEN REPLY @119 /* ~Do you truly think me so stupid? I had ample opportunities to kill the wench. Why would I kill her then? Why would I simply stand there, dripping in her blood? No. I don't know what happened. But I know what didn't.~ #54865 */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.2 51.1 51.0 33.0
  SAY @120 /* ~You're a child of Bhaal. Is it possible you killed her without realizing?~ [BD54866] #54866 */
  IF ~~ THEN REPLY @121 /* ~I don't want to believe it. But... I can't lie to you, Glint. I don't know. Once, I thought myself free of my father's influence. Now I question everything I've ever seen and done.~ #54867 */ GOTO 53
  IF ~~ THEN REPLY @122 /* ~I can't deny the possibility. I really want to, though.~ #54868 */ GOTO 53
  IF ~~ THEN REPLY @123 /* ~I was born to murder. These hands were made to kill. My eyes were made to watch my victims clutch desperately for life as it slips away, my ears to hear their final rattling breath. To kill someone and not know it? Impossible.~ #54869 */ GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 52.1 52.0
  SAY @124 /* ~I don't want to believe it, either. So I won't. Be strong, <CHARNAME>. I will find a way to get you out of here.~ [BD54870] #54870 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY @125 /* ~So you didn't kill her because you'd enjoy killing her too much not to take credit for killing her if you had killed her. I'll be honest: That's not the strongest defense I've ever heard.~ [BD54871] #54871 */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN GOTO 55
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @126 /* ~But I know you well enough to know it's honest. And I'll not see you hang for a crime you didn't commit. Be strong. I will find a way to get you out of this place.~ [BD54872] #54872 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY @127 /* ~Goodbye, <CHARNAME>. We'll not meet again, I think. But I dearly hope I'm wrong.~ #54873 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_joined","locals",0)
~ THEN BEGIN 57 // from:
  SAY @128 /* ~Mm, yes, that should do it... What? Oh, <CHARNAME>! I didn't see you there. Well, I did; obviously, I did; I'm talking to you; I must have. But it took me a while. Sorry, what were we talking about?~ [BD57056] #57056 */
  IF ~~ THEN REPLY @129 /* ~We were discussing you accompanying me on my ventures. I'd asked you to join me, and you were about to answer by saying...?~ #57057 */ GOTO 58
  IF ~~ THEN REPLY @130 /* ~In truth, I'm not sure. You were doing most of the talking. I did want to ask if you'd be interested in joining my party, though.~ #57058 */ GOTO 58
  IF ~~ THEN REPLY @131 /* ~I really can't remember.~ #57059 */ GOTO 60
  IF ~~ THEN REPLY @132 /* ~Nothing. Nor will we start now.~ #57060 */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.1 57.0
  SAY @133 /* ~I could do that. I will do that. I have done that, it's done. Good? Good.~ #57061 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.3
  SAY @134 /* ~Are you sure? I'm really a thrilling conversationalist. I'd make it worth your while. No...? Ah, well. Another time, perhaps.~ #57062 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY @135 /* ~Couldn't have been that important then. Still, if you should recall the thrust of the conversation, be a dear and remind me, will you? Thanks.~ #57063 */
  IF ~~ THEN EXIT
END
