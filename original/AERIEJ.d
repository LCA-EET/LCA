// creator  : weidu (version 24900)
// argument : AERIEJ.DLG
// game     : .
// source   : ./override/AERIEJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~AERIEJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #2270 /* ~Be careful, <CHARNAME>. Some of these beasts are real and some are illusions. There's no way to tell until they hit you. ~ */
  IF ~~ THEN EXTERN ~KALAH~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #2273 /* ~What? I'm not—~ */
  IF ~~ THEN EXTERN ~KALAH~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2277 /* ~Wha—what have you done to my Uncle Quayle?~ */
  IF ~~ THEN EXTERN ~QUAYLEM~ 0
END

IF ~  Dead("Quaylem")
Global("AerieQ","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #2288 /* ~Uncle Quayle is... Quayle is dead... Oh no...~ [AERIEB5] */
  IF ~~ THEN REPLY #2295 /* ~There was too much chaos... I couldn't tell who was who. I am sorry.~ */ GOTO 4
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY #2297 /* ~You will see many deaths if you travel with me. Do you still wish to come?~ */ GOTO 6
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY #2301 /* ~Yes, he is... If you are to stay with us, you will see many deaths. Get used to it.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2302 /* ~I don't need your excuses! ...I'm—I'm sorry, I—please, just give me some time to mourn.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #2303 /* ~I don't want to get used to it! ...I'm—I'm sorry, I—please, just give me some time to mourn.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2304 /* ~What choice do I have, <CHARNAME>? 'Tis you or nothing... Can we get out of here? I—I don't want to have to think about anything right now.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~  !Global("QuayleRaelis","GLOBAL",1)
See("Quayle")
!Dead("Quayle")
!StateCheck("Quayle",STATE_SLEEPING)
InParty("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("HaerDalisRomanceActive","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #2580 /* ~Uncle Quayle! Haer'Dalis and I thought it would be nice to come back and visit you. He—he's giving me acting lessons.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 6
END

IF ~~ THEN BEGIN 8 // from:
  SAY #2582 /* ~You always were the smartest man I knew, Uncle. Someday when we have more time, we'll come and stay for a fortnight so you might get to know him.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 7
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2584 /* ~Ha, a week then, Uncle... I look forward to it. Until then...~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 8
END

IF ~  !Global("QuayleRaelis","GLOBAL",1)
See("Quayle")
!StateCheck("Quayle",STATE_SLEEPING)
!StateCheck(Player1,STATE_SLEEPING)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #2586 /* ~Uncle Quayle! <CHARNAME> and I thought it would be nice to come back and visit you.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #14276 /* ~I—I am missing my wings, little one. They were taken from me, sadly.~ */
  IF ~~ THEN EXTERN ~BRAT2~ 2
END

IF ~~ THEN BEGIN 12 // from:
  SAY #14277 /* ~Ha ha, no, certainly not!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #14549 /* ~Ah... no thank you. I am in no need of employment. *blush*~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #15169 /* ~I do not think much of myself without my wings, but thank you for your kind comment, sir.~ */
  IF ~~ THEN EXIT
END

IF ~  !Dead("Quaylem")
See("Quayle")
Global("AerieQ","GLOBAL",0)
Global("QuayleRaelis","GLOBAL",0)
!Global("AerieMove","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #20308 /* ~Uncle Quayle, you're okay!~ [AERIEB6] */
  IF ~~ THEN EXTERN ~QUAYLE~ 10
END

IF ~~ THEN BEGIN 16 // from:
  SAY #20327 /* ~Oh, Quayle! What would I ever do without you?~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 11
END

IF ~~ THEN BEGIN 17 // from:
  SAY #20328 /* ~You... you're the wisest and the smartest and the kindest man I'll ever know.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 12
END

IF ~~ THEN BEGIN 18 // from:
  SAY #20329 /* ~Oh, Quayle, I would miss you!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 13
END

IF ~~ THEN BEGIN 19 // from:
  SAY #20330 /* ~...All right. Take—take care of the circus while I'm away.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","GLOBAL",1)
~ EXTERN ~QUAYLE~ 14
END

IF ~~ THEN BEGIN 20 // from:
  SAY #20811 /* ~Oh! He has no eyes! How awful!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #22387 /* ~Thank you... I suppose. That's very kind of you to say.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #24812 /* ~Are you talking to me?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 13
END

IF ~~ THEN BEGIN 23 // from:
  SAY #24814 /* ~Quayle told me about men like you. Go away, sir. And stop touching my hand!~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 14
END

IF ~~ THEN BEGIN 24 // from:
  SAY #24816 /* ~You'll have a magic missile or two within you pretty soon! Now stop all this nonsense and go away.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #25328 /* ~B-but I... I have done nothing against you! Why do you rail at me so?~ */
  IF ~~ THEN EXTERN ~BELMIN~ 11
END

IF ~~ THEN BEGIN 26 // from:
  SAY #25330 /* ~I... I do not understand why you do this, sir, but I have done nothing to deserve it. I will not stand to have you cast such insults at me.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 12
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25332 /* ~<CHARNAME>, can we just leave, please? I truly do not like this man.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #25468 /* ~You... you know of me? What do you know of my destiny?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25727 /* ~That's all right, sir. Whether you believe it or not, I am quite capable of taking care of myself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #25831 /* ~Um... no, thank you. Somehow I just don't think it's for me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #26253 /* ~I... I'm sorry... *cough* It's just that... I hate the smell of fish...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #26271 /* ~You would hurt those poor birds? They are scavengers only... and I'm sure they have done nothing to you!~ */
  IF ~~ THEN EXTERN ~BHALF1~ 6
END

IF ~~ THEN BEGIN 33 // from:
  SAY #27704 /* ~I do not know what you mean... I have no plans to leave my gnomish lord Baervan Wildwanderer... I owe him too much, sir.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #29710 /* ~Not... not in a million years, you foul beast! <CHARNAME>... let's get away from him, please...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #38845 /* ~Who... me? N-no... I've never done much in the way of shopping. I'm not even sure I would know, exactly, if someone were trying to cheat me, sir.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #38875 /* ~What... what a pitiful little man. Everyone did laugh at him... but they didn't deserve to die. I... I just can't hate him, despite all he's done.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN DO ~StartCutSceneMode()
EraseJournalEntry(34110)
EraseJournalEntry(34111)
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)
AddexperienceParty(25000)
ActionOverride("Kalah",Kill(Myself))
Wait(3)
StartDialogNoSet([PC])
~ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 315
END

IF ~~ THEN BEGIN 37 // from:
  SAY #38904 /* ~I am seeing a lot, Uncle Quayle... and I want you to meet Minsc as well. He's my protector, I suppose... he says I'm his "witch."~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 29
END

IF ~~ THEN BEGIN 38 // from:
  SAY #38928 /* ~I don't think I've seen... so many destitute people. Can... can we just leave here, <CHARNAME>? It makes me cold all over to think that people live like this...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #38939 /* ~Oh no! We must do something to help that poor man! I... I can't just stand here and watch this!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #39167 /* ~They watch people fight each other here? For pleasure? Why would they do that? Those men... they don't do that willingly, do they?~ */
  IF ~~ THEN EXTERN ~COPGREET~ 2
END

IF ~~ THEN BEGIN 41 // from:
  SAY #39174 /* ~<CHARNAME>! Don't be so cruel... he... he is just a little human boy! What has he done that you should treat him so?~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY #39266 /* ~They're going to... they're going to make him fight a wild animal! Oh no! I d-don't think I can watch this... it's horrible!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut02c",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #39287 /* ~I think it's the right thing to do, to free these people. I was... once something of a slave myself, locked away in a tiny cage. It... it isn't right.~ */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 76
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~HENDAK~ 9
END

IF ~~ THEN BEGIN 44 // from:
  SAY #39374 /* ~Oh! You... you are such a disgusting man!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 188
END

IF ~~ THEN BEGIN 45 // from:
  SAY #39399 /* ~N-no! No, he isn't! <CHARNAME> has more than enough company, and no need for your... your... filth!~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
~ EXTERN ~MADAM~ 17
END

IF ~~ THEN BEGIN 46 // from:
  SAY #39416 /* ~Why? What's wrong with milk baths?~ */
  IF ~~ THEN EXTERN ~JANJ~ 88
END

IF ~~ THEN BEGIN 47 // from:
  SAY #39421 /* ~Oh, <CHARNAME>, is... is this really necessary? Can't you just ignore him?~ */
  IF ~~ THEN EXTERN ~RUFFIAN~ 7
END

IF ~~ THEN BEGIN 48 // from:
  SAY #41460 /* ~I'll... I'll try to remove whatever curse is here, but I don't really feel anything. I don't think there's real magic involved. But... some prayer wouldn't hurt, I suppose...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #44113 /* ~This isn't right. I don't think he's in control of himself. Maybe dominated or... something?~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 2
END

IF ~~ THEN BEGIN 50 // from:
  SAY #47082 /* ~Wh-what does that mean? I don't understand! I had... I had just hoped you would tell me I would fly again someday. But I guess that's not possible, is it?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #47213 /* ~Sad? Oh... oh, what a darling boy you are. I'm not that sad, really... it is not for a young boy such as you to worry about. You should think of happier things.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48469 /* ~You... you are a horrid person, Korgan! I can't believe you say such things!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 59
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48470 /* ~They... they would bring the children in here to be assaulted by such creatures? H-how... how is such a thing possible? Why?!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 39
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 99
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 41
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 179
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48501 /* ~A-all right, <CHARNAME>, but I don't know how much longer I can put up with this... this brute!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 65
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48505 /* ~Th-they... they admit that they are slavers?! This is disgusting! We shall destroy you all, you disgusting men!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #48513 /* ~At... at least he's free now. What a poor, poor man.~ */
  IF ~~ THEN DO ~ActionOverride("quallo",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #48588 /* ~We have to find Garren's child! He... he's cleared our name with the paladins; it's the very least we could do! We have to try!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 58 // from:
  SAY #48602 /* ~Why... why would you do this to Valygar? He is a good man, and you've betrayed him! You... you aren't the person I thought you were, <CHARNAME>. I... I have to leave...~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXTERN ~TOLGER~ 37
END

IF ~~ THEN BEGIN 59 // from:
  SAY #48609 /* ~Oh... so this is why they want your body. To get inside that sphere and... and take its treasure. We... we can't support this, <CHARNAME>!~ */
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 109
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
END

IF ~~ THEN BEGIN 60 // from:
  SAY #48625 /* ~I... I can't let you do this, <CHARNAME>! I don't want to be a murderer of good people! I won't!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #48627 /* ~Are... are you sure this is right, <CHARNAME>? I... I suppose he could be lying. I will fight with you, I suppose...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #48639 /* ~I feel quite ill myself. I... I should like to leave this horrid place.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #48651 /* ~Poor creatures! <CHARNAME>, I can watch no more. Get me out of here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #48662 /* ~Why does he keep whipping those poor creatures? Oh, this is horrid! I can't watch this!~ */
  IF ~~ THEN EXTERN ~BDOCK2~ 1
END

IF ~~ THEN BEGIN 65 // from:
  SAY #48708 /* ~Uncle Quayle showed me so many wonderful things about magic, I... I can't even imagine a world without it. It would be so... so mundane.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #48734 /* ~Wings. That must have been quite some time ago. But, yes, I had wings... and you can stop staring at me, please.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #48821 /* ~Raising... raising babies? I... I just started seeing something of the world beyond the circus. One step at a time is good enough for me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #48826 /* ~Marriage? You must be drunk! I'm... flattered, a little. Ah... now y-you're... vomiting. A-all right, I'm a little less flattered now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #48841 /* ~But... but I HAVE to look down at you. You're, uh... shorter than I am, sir. I, ah... oh, forget it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #48853 /* ~Ew... ewwww, <CHARNAME>, put something over it at least! Acch, I had enough of these stenches when I was in the circus! *cough* *cough*~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #48883 /* ~Maybe... maybe we could just take a look for it, <CHARNAME>. There's no reason that this man should be hurt over this...~ */
  IF ~~ THEN EXTERN ~LOUTCAPT~ 19
END

IF ~~ THEN BEGIN 72 // from:
  SAY #48888 /* ~You're horrid, Viconia! I know you're a drow, but... try to have some compassion! This... this won't take long!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 197
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 73 // from:
  SAY #48896 /* ~Oh, speak quietly, please! I cannot help you, but I do not wish to see more death... Oh no, you were heard!~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 74 // from:
  SAY #48949 /* ~That sounds... horrid. I can't imagine anything so awful! Why would someone want to do such a thing?!~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~INSPECT~ 14
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 244
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 375
END

IF ~~ THEN BEGIN 75 // from:
  SAY #48952 /* ~<CHARNAME>! Oh! Couldn't you spare just ONE coin? Hrmph!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #48961 /* ~Are... are you sure it's safe to just let him go off like that? What if the murderer hurts him? Oh, I don't like this at all!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #48974 /* ~I know that you said what you did to avoid confrontation, but we should not even jest about such allegiance. Tempting the gods is not wise.~ */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("AR0502")
Global("EnteredTanner2","AR0502",0)
~ THEN BEGIN 78 // from:
  SAY #48979 /* ~Oh! Oh... the st-stench! Baervan preserve us, this is wh-where he brings all his victims?! Th-they're all dead here!~ */
  IF ~~ THEN DO ~SetGlobal("EnteredTanner2","AR0502",1)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49191 /* ~I shall say a good word towards the heavens and hope your bounty returns.~ */
  IF ~~ THEN EXTERN ~DFISHER~ 9
END

IF ~~ THEN BEGIN 80 // from:
  SAY #49204 /* ~Oh no, I hope you are saying that in jest. This is horrible. This woman deserves better treatment than this.~ */
  IF ~~ THEN EXTERN ~DHARLOT2~ 2
END

IF ~~ THEN BEGIN 81 // from:
  SAY #49232 /* ~H-how rude! You'd better learn some manners, sir... before someone teaches them to you in a way you don't like much!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #49244 /* ~I'm glad we didn't have to... to kill that poor man. It's terrible what we're being forced to do sometimes.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 139
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 209
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 83 // from:
  SAY #49386 /* ~We're going to hunt someone? Isn't there some way we could... get this man's dagger without... harming him? I feel so... so dirty working for the thieves like this, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #49493 /* ~We're... we're just going to go and kill someone? Because he tells us to? This... this doesn't feel right, <CHARNAME>. We're not really going to do this, are we?~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 217
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 88
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 85 // from:
  SAY #49542 /* ~M-maybe <CHARNAME> just doesn't want to work for those thieves, Korgan! Maybe <CHARNAME> has a conscience, did you think of that?~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 91
END

IF ~~ THEN BEGIN 86 // from:
  SAY #49580 /* ~The poor man! Why would somebody do this to him? We... we've got to find the place he spoke of and bring him there quickly!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 219
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 94
END

IF ~~ THEN BEGIN 87 // from:
  SAY #49587 /* ~<CHARNAME>! The... the man is dying! You, you can't just leave him! That's heartless and cruel! Please don't do this!~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobalTimer("RenfeldDeath","LOCALS",TWO_DAYS)
~ EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 253
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 150
END

IF ~~ THEN BEGIN 88 // from:
  SAY #49786 /* ~I... I don't know if this is such a good idea, <CHARNAME>. I'm... I feel frightened, all of a sudden. Maybe we should just leave...~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 89 // from:
  SAY #49814 /* ~Is that... all we have to do? Oh, I'm so relieved! Still, <CHARNAME>, I wonder if this is only the beginning. Who is this woman, really? And why is she doing all these things?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #49820 /* ~She... she's gone? Let's just... get out of here, okay, <CHARNAME>? I feel such shivers here; I just can't explain it. I'm just thankful she left, for whatever reason.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY #49823 /* ~I... I don't want to do anything really terrible. Especially not for her, not for any reason. Let's just... stick to something less objectionable, okay?~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 60
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 92 // from:
  SAY #49837 /* ~What? Kill someone? Murder them outright? You... you don't actually intend to go through with that, do you, <CHARNAME>? It sounds so... so grisly.~ */
  IF ~~ THEN EXTERN ~BODHI~ 132
END

IF ~~ THEN BEGIN 93 // from:
  SAY #49850 /* ~Well... this isn't too bad, I guess. At least we're rescuing someone.~ */
  IF ~~ THEN EXTERN ~BODHI~ 57
END

IF ~~ THEN BEGIN 94 // from:
  SAY #49868 /* ~Oh, you poor man! What sort of beasts would do something like this... to anyone? <CHARNAME>, we've got to find the people who did this and stop them!~ */
  IF ~~ THEN EXTERN ~TIRDIR~ 3
END

IF ~~ THEN BEGIN 95 // from:
  SAY #49879 /* ~Uhhh... wasn't this about the garrison? And that poor, buried man?~ */
  IF ~~ THEN EXTERN ~JANJ~ 121
END

IF ~~ THEN BEGIN 96 // from:
  SAY #49883 /* ~That's terrible!~ */
  IF ~~ THEN EXTERN ~JANJ~ 122
END

IF ~~ THEN BEGIN 97 // from:
  SAY #49925 /* ~My dear, are you all right? I will soothe you as best I can if need be.~ */
  IF ~~ THEN REPLY #49927 /* ~Please, Aerie, stand away. I do not know if I can protect you.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
  IF ~~ THEN REPLY #49928 /* ~You should get as far from me as possible, Aerie, for your own safety.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
  IF ~~ THEN REPLY #49929 /* ~Leave me alone, Aerie! You are foolish to stay here!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.2 97.1 97.0
  SAY #49930 /* ~<CHARNAME>? Your lips move, but I cannot hear your words... are you... no... NO! <CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #49956 /* ~Uh... maybe that's not the kind of story you want to get into, Jan, with a priest of Talos right here...~ */
  IF ~~ THEN EXTERN ~JANJ~ 124
END

IF ~~ THEN BEGIN 100 // from:
  SAY #49978 /* ~You were a monster... A MONSTER! How could I...?~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #49979 /* ~<CHARNAME>, I want to think this won't happen again. I HAVE to think it won't. Please, let's get out of this place.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #50023 /* ~Rest a moment, please. I will not go forward while you look to be in pain.~ */
  IF ~~ THEN REPLY #50024 /* ~It's nothing, Aerie, I will be fine. Do not worry yourself.~ */ GOTO 103
  IF ~~ THEN REPLY #50025 /* ~I may not be in full control of myself, but the group is still mine. Push on!~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.1 102.0
  SAY #50026 /* ~If you say so. I just worry that you are worse off than Imoen appeared to be. It was the same ritual for both of you, wasn't it? Sorry, I don't mean to be a bother.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #50080 /* ~A... beholder? Beholders are incredibly powerful and smart! They have magic in their eyes... or, or they're supposed to. I've never heard of an eyeless beholder myself...~ */
  IF ~~ THEN EXTERN ~GAAL~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #50097 /* ~Your evil is an affront to everything I believe in! These... these mutilations are going to stop, and if it takes killing you to do that, then we will!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #50117 /* ~That's pretty funny! Everything worked out for the best anyhow! And I thought we would be in trouble for certain!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #50150 /* ~Well, I don't know how much I approve of you making fun of a god, but it is... well, it is kind of a funny picture. *snicker* Oh, you are just so BAD!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #50219 /* ~N-no! No, he isn't! He's... he's <CHARNAME>'s uncle, and we were... just stopping to talk to him.~ */
  IF ~  Global("Gavegbegg","AR1000",0)
~ THEN GOTO 109
  IF ~  Global("Gavegbegg","AR1000",1)
~ THEN EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #50221 /* ~In fact... in fact, here you go, uncle. <CHARNAME> wanted you to have these coins so you could get a hot dinner and someplace warm to sleep tonight.~ */
  IF ~~ THEN DO ~ActionOverride("Gbegg01",TakePartyGold(5))
~ EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 110 // from:
  SAY #50364 /* ~I... I'm not a maid, even if I look like the one you know. And I have the feeling that if you treated her nicer, she wouldn't have left.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #50512 /* ~Hmph. I'd rather see you "go somewhere" with your toady there. Uncle Quayle warned me well enough about dirty old men like you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #50533 /* ~A... a drow? Here?! What could she have been up to, I wonder? And what did she do to these people that they would... burn her. N-not that anyone would need a reason, I suppose.~ */
  IF ~~ THEN EXTERN ~VICONI~ 8
END

IF ~~ THEN BEGIN 113 // from:
  SAY #50559 /* ~So, that's it. She's dead, whoever she was. *shudder* The... the Underdark is a terrible, evil place, <CHARNAME>. I hope we never have to go there!~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 179
END

IF ~~ THEN BEGIN 114 // from:
  SAY #50568 /* ~D-don't let her come with us, <CHARNAME>! The drow... all of the drow... are cruel, terrible creatures! They kill the avariel without mercy and cannot be trusted!~ */
  IF ~~ THEN EXTERN ~VICONI~ 22
END

IF ~~ THEN BEGIN 115 // from:
  SAY #50573 /* ~Sh-shut up! <CHARNAME>, you saved her... n-now make her go away!~ */
  IF ~~ THEN EXTERN ~VICONI~ 23
END

IF ~~ THEN BEGIN 116 // from:
  SAY #50643 /* ~<CHARNAME>! Are you... what was that?! Can you...~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #50644 /* ~<CHARNAME>, that was an aspect of Bhaal... I have seen accounts in texts... you became... a part of an avatar... of a dead god?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #50669 /* ~Quickly, <CHARNAME>, these poor inmates might hurt themselves if we don't give them direction. ~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~  Global("AerieCheckMad1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",1)
!Range("Phaere",6)
Global("AerieMad1","LOCALS",0)
~ THEN BEGIN 119 // from:
  SAY #51266 /* ~<CHARNAME>? Wh-what are you doing? Why are you talking to her like that? You don't... you don't really like that drow in that, that way, do you?~ */
  IF ~~ THEN REPLY #51271 /* ~You aren't jealous, Aerie, are you?~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 120
  IF ~~ THEN REPLY #51272 /* ~No, no... it's just a ploy.~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 121
  IF ~~ THEN REPLY #51273 /* ~I don't know. Maybe. It's none of your business.~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 122
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #51274 /* ~Well... maybe a little. She's very beautiful, for a drow. But they're evil, <CHARNAME>, you have to know that! And... and the way you were talking to her, I thought maybe...~ */
  IF ~~ THEN REPLY #51275 /* ~It's just a ploy, Aerie, nothing more.~ */ GOTO 121
  IF ~~ THEN REPLY #51276 /* ~Well, maybe. It's none of your business anyway.~ */ GOTO 122
END

IF ~~ THEN BEGIN 121 // from: 120.0 119.1
  SAY #51277 /* ~Oh. I... I don't think the drow can be manipulated like that, <CHARNAME>. And... and I really don't like it. Please don't push it too far, please?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.1 119.2
  SAY #51278 /* ~You would...? With someone so evil and despicable? I guess you're not the person I thought you were, <CHARNAME>. I guess... I guess I'll just stay out of your business.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #51484 /* ~But... the svirfneblin aren't evil! They... they're just harmless gnomes! Why must we do this?!~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 62
END

IF ~  Global("AerieCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("AerieMad2","LOCALS",0)
~ THEN BEGIN 124 // from:
  SAY #52252 /* ~You... you let that drow woman... touch you, didn't you? You let such an evil thing... all over you? I just... I just can't understand why you would allow such a thing to happen!~ */
  IF ~~ THEN DO ~SetGlobal("AerieMad2","LOCALS",1)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #52255 /* ~D-don't bother saying anything... I don't want to hear it! I... I just don't think you're the person I thought you were, <CHARNAME>. I'd... like to be alone for a while.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~  Global("AerieCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("AerieMad3","LOCALS",0)
~ THEN BEGIN 126 // from:
  SAY #52256 /* ~You... you weren't in her room for very long. Not long enough to... well, I mean... you obviously got away from her. That's... that's a relief. I was beginning to wonder.~ */
  IF ~~ THEN DO ~SetGlobal("AerieMad3","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #52287 /* ~<CHARNAME>! That's terrible! We told Nalia that we'd help her, and that's what I think we should do! Nalia... why don't you tell us what we're... going to be facing in there?~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 149
END

IF ~~ THEN BEGIN 128 // from:
  SAY #52299 /* ~<CHARNAME>... I know you do some... questionable things, but please don't do this. I couldn't live with myself, knowing that I had taken part in such a thing. *Please* don't.~ */
  IF ~~ THEN EXTERN ~FIRKRA02~ 36
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52315 /* ~If... if that's what you're going to do, then I can't be a part of this, <CHARNAME>. I'm... I'm going back to the circus. At least... at least the people there are decent.~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",MASK_GOOD)
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXTERN ~ANOMENJ~ 256
END

IF ~~ THEN BEGIN 130 // from:
  SAY #55196 /* ~So... so it's over. Just like that. It's odd... I thought things would be different somehow, that it wouldn't be so... so easy. I don't know.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 131 // from:
  SAY #55217 /* ~This... this place is terrible! I felt something pulling at me w-when I died, and I just knew it was you. I had to come. You may need my help here...~ [AERIEB9] */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
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
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
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
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
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
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
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
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
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
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 132 // from:
  SAY #55301 /* ~Really? I... I mean, with the chest empty now, what would be the point? Who... who would want you to guard an empty chest?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 39
END

IF ~~ THEN BEGIN 133 // from:
  SAY #55653 /* ~I have seen the like of this place before all too closely. It is where they house those that are different, where the misunderstood are forgotten...~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 7
END

IF ~~ THEN BEGIN 134 // from:
  SAY #55762 /* ~Suldanessellar... it... it sounds familiar. It is the high elven city, but I don't know what Irenicus would want with it. But... he obviously can't be allowed to succeed.~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 12
END

IF ~~ THEN BEGIN 135 // from:
  SAY #55769 /* ~The... the Underdark? No... no! I cannot go there! You do not understand—it is death for my kind! No avariel has ever traveled the depths!~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #55770 /* ~Please, <CHARNAME>, let us take the ship! But... but Irenicus must be stopped too. If... if you think it best to go into the Underdark... Baervan protect me, I will go too...~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPSAEM2~ 20
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 18
END

IF ~~ THEN BEGIN 137 // from:
  SAY #55791 /* ~You... you knew that you didn't have a ship! Even when you made the offer to us! Why would you do such a thing? What could you hope to gain?!~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 138 // from:
  SAY #55847 /* ~Keldorn! I've... never heard you so cold! The sahuagin cannot be so bad... If you just sentence them all to death, that would make you no better than you claim them to be!~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 199
END

IF ~~ THEN BEGIN 139 // from:
  SAY #55852 /* ~<CHARNAME>? Why... why would you do this? That priestess didn't do anything to us, and this... this king is only going to butcher her!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut41za",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #55857 /* ~Is that what we've done? They... they sound like they're going to take over the world. But there's so *few* of them now. I suppose anyone can dream after all.~ */
  IF ~~ THEN EXTERN ~SAHPR4~ 5
END

IF ~  !Dead("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieInUnderdark","AR2100",1)
Global("AerieWhined","LOCALS",0)
~ THEN BEGIN 141 // from:
  SAY #55864 /* ~This... this is the Underdark. Oh, I do not want to be here, I don't! This place is death for my people! I—I feel as if I'm going to suffocate here!~ [AERIEB7] */
  IF ~~ THEN REPLY #55865 /* ~Come on, Aerie, you said you'd be willing to take this route if we came.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 142
  IF ~~ THEN REPLY #55866 /* ~If you're going to whine, why don't you just leave?~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 143
  IF ~~ THEN REPLY #55867 /* ~I need you to be strong, Aerie. This is a harsh place.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 145
  IF ~  OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY #55868 /* ~I'm here. I'll protect you, Aerie.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 147
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #55869 /* ~I know I said that... but it's so different to actually be here. I... can feel the weight of the ground above, pressing down. I'm meant to fly... and I feel as if I'm drowning!~ */
  IF ~~ THEN REPLY #55870 /* ~I've had enough of your whining. Run away if it suits you.~ */ GOTO 143
  IF ~~ THEN REPLY #55871 /* ~I need you to be strong, Aerie... we're on a mission here.~ */ GOTO 145
  IF ~~ THEN REPLY #55872 /* ~It's okay, Aerie. We'll find a way through this somehow.~ */ GOTO 146
  IF ~  OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY #55873 /* ~I'm here. I'll protect you, Aerie.~ */ GOTO 147
END

IF ~~ THEN BEGIN 143 // from: 142.0 141.1
  SAY #55874 /* ~And go where?! I'd be tempted to leave your cruelty, except that I have no idea how I'd find my way through this terrible place!~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #55875 /* ~I... I'll stay with you. I have no other choice. Let's... do what we came to do here and then find a way out. Just don't abandon me here, <CHARNAME>, I beg you. I'd go mad!~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Minsc")
!Global("MinscWitch","GLOBAL",1)
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
Global("MinscWitch","GLOBAL",1)
~ THEN EXTERN ~MINSCJ~ 168
END

IF ~~ THEN BEGIN 145 // from: 142.1 141.2
  SAY #55877 /* ~Yes. Yes, you're right. I... I must sound so silly. You've had your soul stolen from you, and I'm crying about being here... in this place.~ */
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 147.0 145.0 142.2
  SAY #55878 /* ~Let's go, then, and do what we must. I'll... control myself. Just don't abandon me here, <CHARNAME>, I beg you. I'd go mad!~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Minsc")
!Global("MinscWitch","GLOBAL",1)
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
Global("MinscWitch","GLOBAL",1)
~ THEN EXTERN ~MINSCJ~ 168
END

IF ~~ THEN BEGIN 147 // from: 142.3 141.3
  SAY #55880 /* ~You...? That's sweet. I must sound so silly. You've had your soul stolen from you, and here I am, crying about being here... in this place.~ */
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 148 // from:
  SAY #55884 /* ~Th-thank you, Minsc. I... feel much better now. It's just the thought... of being here. Let's just get moving, and I'll stop thinking about it so much...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #55907 /* ~<CHARNAME>! N-no! No, I won't let you sacrifice her eggs! I won't let you do this!~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~KELDORJ~ 201
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~VALYGARJ~ 85
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 150 // from:
  SAY #55926 /* ~Please, do not be so fearful of us.~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 25
END

IF ~~ THEN BEGIN 151 // from:
  SAY #55929 /* ~I just meant...~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 143
END

IF ~~ THEN BEGIN 152 // from:
  SAY #55959 /* ~Am I in your stereotype as well? I had thought us on good terms...~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 88
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56050 /* ~We shall need it... <CHARNAME>, I restate that I do not want to be here. I just don't like it...~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 119
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 153
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56059 /* ~Of course we'll help! I can feel the Tree of Life calling out in pain... and the pain of the elves is its pain as well! We must do what we can, <CHARNAME>!~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~SUDEMIN~ 35
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 121
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 28
END

IF ~~ THEN BEGIN 155 // from:
  SAY #56066 /* ~No! What are you doing?! We're here to help them, not kill them! I won't let you do this!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #56077 /* ~Haer'Dalis? That is not... like you.~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 121
END

IF ~~ THEN BEGIN 157 // from:
  SAY #56081 /* ~He... he seeks to actually join the Seldarine? The elven circle of the divine? But... Corellon Larethian would never allow it! He *is* mad!~ */
  IF ~~ THEN EXTERN ~SUAVATAR~ 6
END

IF ~~ THEN BEGIN 158 // from:
  SAY #56090 /* ~I appear scared and out of place. I foresee no trouble in continuing to do so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #56104 /* ~I came to Hell to help my friend! Who helps you, Irenicus? Demons? You are going to die alone in Hell, and you know it!~ [AERIEB8] */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
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
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("HaerDalis")
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

IF ~~ THEN BEGIN 160 // from:
  SAY #56126 /* ~We would help regardless. Please know that.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 24
END

IF ~~ THEN BEGIN 161 // from:
  SAY #56142 /* ~No, <CHARNAME>! This is wrong, so very wrong! I will not allow it, and I hope I do not stand alone!~ */
  IF ~~ THEN REPLY #56143 /* ~Do as you will. I have given my order!~ */ DO ~LeaveParty()
Enemy()
SetGlobal("SvirHostile","GLOBAL",1)
~ SOLVED_JOURNAL #57768 /* ~Svirfneblin village concerns

I spoke with Goldander Blackenrock, lord of the svirfneblin village. His pompous title revealed the shallow nature of his needs. He spoke of a means that I might enter the drow city: by enlisting the aid of Adalon, a powerful creature that holds court at the base of the great staircase. Goldander wanted me to first perform a service for his village, defeating some creature that they had unearthed, and he offered to grant me access to Adalon as a reward, giving me a glow stone or some such so that I could pass through the darkness that protects her lair. I cut out the middleman and killed the lot of them.~ */ EXIT
  IF ~~ THEN REPLY #56144 /* ~All right then, I'll help them. Yeesh.~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 162 // from:
  SAY #56151 /* ~They cannot make us do this, can they? To house us together that we might speak... then force us to fight... it is monstrous. Or do you taunt us?~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 13
END

IF ~~ THEN BEGIN 163 // from:
  SAY #56156 /* ~<CHARNAME>? I... I don't think they are taking us with them. They are leaving us here!~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 27
END

IF ~~ THEN BEGIN 164 // from:
  SAY #56160 /* ~You are... beautiful...~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 58
END

IF ~~ THEN BEGIN 165 // from:
  SAY #56235 /* ~No! What are you doing?!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from:
  SAY #56407 /* ~This appears to be the statue described in the Vampiricus Omnibus. The book spoke of placing the vampire and its master's heart within the statue's arms to destroy the curse.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56424 /* ~No! You're... you're using the poison! How can you do this?! Would you poison the Tree of Life too?! I will not allow you to get away with this! Who will help me?!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
~ EXTERN ~TREVIL02~ 6
  IF ~  OR(2)
Dead("trevil02")
!See("trevil02")
~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
~ EXTERN ~CEFALD04~ 4
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56434 /* ~Well, that was rude. I... I don't really think it's appropriate for us to run around, acting like thugs to innocent people who need our help!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56439 /* ~No, we certainly aren't going to press upon this poor man for even more coin! We have plenty! Ignore <PRO_HIMHER>, mayor... we'll be leaving now that things are all done here.~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 142
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56443 /* ~If wolves were shadows and doing this, they'd have to be terribly evil. Dire wolves, perhaps. I... don't think ogres would do this, but I'm not sure... this all sounds quite ominous...~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~UHMAY01~ 19
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 228
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56446 /* ~Are... are you sure we should leave her imprisoned like that? It seems so... heartless. Please, <CHARNAME>, we can't just... leave her here...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 172 // from:
  SAY #56451 /* ~Oh, the poor man! He's... he's being kept in this state somehow with magic. We've got to help him!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #56455 /* ~These poor people can't help themselves! Their... their minds have been enslaved! If only we could help them!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #56472 /* ~Anomen! What have you done?! That girl... she is not responsible for what her father does! She is an innocent!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 175 // from:
  SAY #56476 /* ~Oh my... perhaps this wasn't the best time for us to join Keldorn here. I feel like we are intruding on... on something that should really be private...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 22
END

IF ~~ THEN BEGIN 176 // from:
  SAY #56490 /* ~What... what are you doing, <CHARNAME>? We've... we've got to help these people! We've already been paid, after all!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 177 // from:
  SAY #56501 /* ~This... this was done by her father? Oh, how horrible! We've got to help her!~ */
  IF ~~ THEN EXTERN ~JANJ~ 37
END

IF ~~ THEN BEGIN 178 // from:
  SAY #56554 /* ~I fear no such loss, Bodhi. I am confident he will prevail.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 17
END

IF ~~ THEN BEGIN 179 // from:
  SAY #56891 /* ~The gold was not important, Edwin. We have to help <CHARNAME> locate Imoen and this Irenicus person.~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 142
END

IF ~~ THEN BEGIN 180 // from:
  SAY #57067 /* ~Then you... you must be that mercenary that the merchant told us about. You are Jarlaxle, aren't you?~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 1
END

IF ~~ THEN BEGIN 181 // from:
  SAY #57375 /* ~No, <CHARNAME>! That's a horrible thought! Send... send them away, even. Just don't send them there!~ */
  IF ~~ THEN EXTERN ~DASLAVE1~ 5
END

IF ~~ THEN BEGIN 182 // from:
  SAY #57457 /* ~Well... Veldrin doesn't need that... that kind of relaxation. Go away.~ */
  IF ~~ THEN EXTERN ~DADROW21~ 3
END

IF ~~ THEN BEGIN 183 // from:
  SAY #58173 /* ~<CHARNAME>, I don't need to tell you how much I hate this. This all scares me. Once we save your Imoen, we must never associate with these people again.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 148
  IF ~  IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~VICONIJ~ 176
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~MINSCJ~ 207
END

IF ~~ THEN BEGIN 184 // from:
  SAY #58174 /* ~I know, but I would rather cross the street than walk by some of these... thieves.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from:
  SAY #58176 /* ~If... if it weren't for you, I wouldn't have escaped from Kalah. I... I wouldn't be out here, and I wouldn't have the chance to face this evil. I won't stop now no matter what the cost.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
END

IF ~~ THEN BEGIN 186 // from:
  SAY #58272 /* ~I... I know, <CHARNAME>. I know. Or at least I think I do. It... it isn't important. I've got something to say myself.~ */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0
  SAY #58273 /* ~You've shown me what the importance of my life could be. What I could do to make a difference. Irenicus has to be stopped, no matter what. And you have to regain your soul.~ */
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #58274 /* ~I... I owe you everything, <CHARNAME>. You've saved my life... and far, far more, you've saved my soul. If I have to give up my life to help you now, I would do so gladly.~ */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #58275 /* ~I would do it because I... I love you. And I never knew what that meant before, really... but I do now. But there is a task ahead of us that comes first. The future holds what... what it will. And if it holds that we live through this together... well, nothing would make me happier.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN 190 // from:
  SAY #58520 /* ~You... you wouldn't actually do such a thing, would you, <CHARNAME>? Valygar is a good man! Tell the wizard to go away! We're not working for him anymore, tell him!~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 82
  IF ~  IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN EXTERN ~ANOMENJ~ 304
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 316
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 189
END

IF ~~ THEN BEGIN 191 // from:
  SAY #58532 /* ~I... I'm not going to stay around and watch this. Goodbye, <CHARNAME>. You... you obviously aren't the kind of person I thought you were...~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXTERN ~ANOMENJ~ 305
  IF ~  OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXTERN ~VALYGARJ~ 118
END

IF ~~ THEN BEGIN 192 // from:
  SAY #58738 /* ~Yo... Yoshimo? How could you...? How could you?!~ */
  IF ~  !IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 306
  IF ~  IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 193 // from:
  SAY #58951 /* ~I... I was. But Quayle is dead now. Why? What is this about?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 4
END

IF ~~ THEN BEGIN 194 // from:
  SAY #58952 /* ~Well, yes. Why? Has something happened to Uncle Quayle? What is this about?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 1
END

IF ~~ THEN BEGIN 195 // from:
  SAY #58958 /* ~Uncle Quayle needs my help? Then we should go back to the circus! Oh, <CHARNAME>, please... I couldn't bear the thought of him needing me and not being able to go! Please!~ */
  IF ~~ THEN DO ~SetGlobal("QuayleRaelis","GLOBAL",1)
SetGlobalTimer("AerieRemindsQuayle","GLOBAL",TWO_DAYS)
~ UNSOLVED_JOURNAL #3296 /* ~Quayle has called for Aerie

After receiving a message from Quayle asking for our help, Aerie has asked that we go and see him in the promenade circus tent as soon as possible.~ */ EXTERN ~AEMESS~ 3
END

IF ~~ THEN BEGIN 196 // from:
  SAY #58971 /* ~A letter? Somebody sent Uncle Quayle a letter?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 5
END

IF ~  Global("AerieReadsLetter","GLOBAL",1)
~ THEN BEGIN 197 // from:
  SAY #58989 /* ~Well, let's see. I'll read it to you. It's... from a friend of Quayle's, Raelis Shai. Odd... I don't remember ever hearing of her. But Quayle had a lot of old friends, I guess.~ */
  IF ~~ THEN DO ~SetGlobal("AerieReadsLetter","GLOBAL",2)
~ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #58992 /* ~"My dearest friend, Quayle. We have not seen each other since your all-too-brief journey to my former home. I was pleased to hear, recently, that you had come to this city.~ */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #58994 /* ~"I would like to see you again, both to renew our old acquaintance and, embarrassingly, because I need the aid of your years of adventuring experience as well.~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #58995 /* ~"Please come and see me as soon as possible in the playhouse beneath the Five Flagons Inn in the Bridge District here in Athkatla. I look forward to welcoming you.

"Your friend always, Raelis Shai."~ */
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #58996 /* ~If Uncle Quayle knew this Raelis and she needs his help... then we should go and see her, <CHARNAME>, and help her. Quayle would have wanted that. Please, <CHARNAME>? Could we?~ */
  IF ~~ THEN DO ~SetGlobal("QuayleJob","GLOBAL",1)
SetGlobalTimer("AerieRemindsRaelis","GLOBAL",TWO_DAYS)
~ UNSOLVED_JOURNAL #3301 /* ~A friend of Quayle's needs help

With Quayle dead, Aerie received a letter that was intended for him, apparently from an old friend of his named Raelis who was in need of help. Aerie has asked that we at least go and talk to this woman, who is in a playhouse beneath the Five Flagons Inn in the Bridge District.~ */ EXIT
END

IF ~  Global("QuayleRaelis","GLOBAL",1)
AreaCheck("AR0607")
See("Quayle")
!Dead("Quayle")
~ THEN BEGIN 202 // from:
  SAY #59001 /* ~Uncle Quayle! It is good to see you again! Is... is everything all right? You sent somebody to ask me to come?~ */
  IF ~~ THEN DO ~EraseJournalEntry(3296)
SetGlobal("QuayleRaelis","GLOBAL",2)
~ EXTERN ~QUAYLE~ 38
END

IF ~~ THEN BEGIN 203 // from:
  SAY #59014 /* ~I'd be happy to. Which friend are you talking about?~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 39
END

IF ~~ THEN BEGIN 204 // from:
  SAY #59021 /* ~I'd be happy to help her, Uncle Quayle. That is... if <CHARNAME> thinks we have the time. What... what do you think, <CHARNAME>?~ */
  IF ~~ THEN REPLY #59022 /* ~It wouldn't hurt to see if we can help out.~ */ UNSOLVED_JOURNAL #3303 /* ~A friend of Quayle's needs help

An old friend of Quayle's named Raelis Shai has asked him for help, and he seems to believe that we may be in a better position to aid her than he. He has requested that we go and speak to the woman when we have time. Raelis can be found in the playhouse beneath the Five Flagons Inn in the Bridge District.~ */ EXTERN ~QUAYLE~ 41
  IF ~~ THEN REPLY #59023 /* ~We might be able to help, but not right now.~ */ UNSOLVED_JOURNAL #3303 /* ~A friend of Quayle's needs help

An old friend of Quayle's named Raelis Shai has asked him for help, and he seems to believe that we may be in a better position to aid her than he. He has requested that we go and speak to the woman when we have time. Raelis can be found in the playhouse beneath the Five Flagons Inn in the Bridge District.~ */ EXTERN ~QUAYLE~ 41
  IF ~~ THEN REPLY #59024 /* ~We've no time for such things, Aerie.~ */ UNSOLVED_JOURNAL #3303 /* ~A friend of Quayle's needs help

An old friend of Quayle's named Raelis Shai has asked him for help, and he seems to believe that we may be in a better position to aid her than he. He has requested that we go and speak to the woman when we have time. Raelis can be found in the playhouse beneath the Five Flagons Inn in the Bridge District.~ */ EXTERN ~QUAYLE~ 41
END

IF ~~ THEN BEGIN 205 // from:
  SAY #59027 /* ~I'm sure we can find some time to at least speak to her, Uncle Quayle.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 43
END

IF ~  GlobalTimerExpired("AerieRemindsQuayle","GLOBAL")
Global("AerieReminder","LOCALS",0)
Global("QuayleJob","GLOBAL",0)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 206 // from:
  SAY #59038 /* ~I... I really would like to go and see Uncle Quayle. I want to make sure he's okay if nothing else. Could we... could we go to the circus soon? Please, <CHARNAME>?~ */
  IF ~~ THEN DO ~SetGlobal("AerieReminder","LOCALS",1)
~ EXIT
END

IF ~  GlobalTimerExpired("AerieRemindsRaelis","GLOBAL")
Global("AerieReminder2","LOCALS",0)
Global("QuayleJob","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 207 // from:
  SAY #59041 /* ~I really would like to... go and see Raelis, <CHARNAME>. We could at least talk to her, if it isn't too much trouble? For Quayle's sake if nothing else...~ */
  IF ~~ THEN DO ~IncrementGlobal("AerieReminder2","LOCALS",1)
SetGlobalTimer("AerieRemindsRaelis","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  GlobalTimerExpired("AerieRemindsRaelis","GLOBAL")
Global("AerieReminder2","LOCALS",1)
Global("QuayleJob","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 208 // from:
  SAY #59042 /* ~I suppose you think we don't have time to go and see this Raelis Quayle mentioned. *sigh* Well... if we are near the Five Flagons sometime, maybe we could drop in? I would like that.~ */
  IF ~~ THEN DO ~SetGlobal("AerieReminder2","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 209 // from:
  SAY #59398 /* ~Oh, we're not here to... that is, we've come to help you, if we can. My uncle... well, he's not really my uncle... he seems to know you and asked me to come and see you...~ */
  IF ~~ THEN EXTERN ~RAELIS~ 80
END

IF ~~ THEN BEGIN 210 // from:
  SAY #59402 /* ~Oh, we're not here to... that is, we've come to help you, if we can. My uncle... well, he really isn't my uncle... it seems that he knew you, that you were once friends...~ */
  IF ~~ THEN EXTERN ~RAELIS~ 80
END

IF ~~ THEN BEGIN 211 // from:
  SAY #59403 /* ~Quayle... his name's Quayle. He raised me in the circus.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 81
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59406 /* ~The young...? You must have known him a long time ago, then. Quayle is fine. He is running the circus here in the city and asked us to come when he received your letter.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 82
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59407 /* ~The young...? Then you... must have known him from a long time ago. Quayle is... dead, I'm afraid. Just recently. We came here because your letter got delivered to me instead.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 83
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59409 /* ~It... it's more up to <CHARNAME>, really, ma'am. I've been traveling with <PRO_HIMHER>, but <PRO_HESHE>'s the one with the experience to help you. Maybe you could... tell us what's wrong?~ */
  IF ~~ THEN EXTERN ~RAELIS~ 41
END

IF ~~ THEN BEGIN 215 // from:
  SAY #59411 /* ~We've already talked to Miss Raelis, Quayle. I had no idea she was a friend of yours, though.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 47
END

IF ~~ THEN BEGIN 216 // from:
  SAY #59413 /* ~I... I really think we should help Raelis if we can. What would be the harm in it? I'd like to do it for Uncle Quayle if nothing else... but I... I suppose you know best.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59414 /* ~I'm pleased that you're willing to help her. If... if I remember right, we should be able to enter the sewers in the Temple District. From there, we can track down this wizard, Mekrath.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59415 /* ~You... you're Haer'Dalis? Raelis sent us... to free you.~ */
  IF ~~ THEN EXTERN ~HAERDA~ 8
END

IF ~~ THEN BEGIN 219 // from:
  SAY #70501 /* ~I sense something here. A... presence. It's so powerful! So powerful, I can't sense anything else about it at all! Baervan preserve us!~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 220 // from:
  SAY #70553 /* ~Oh, you poor, poor man! It's all right... I won't hurt you, I promise. I'm not a demon, honestly.~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 11
END

IF ~~ THEN BEGIN 221 // from:
  SAY #70414 /* ~What a gruesome fate! It's madmen like Carston that give all us magic-users a bad name.~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 123
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 189
END

IF ~~ THEN BEGIN 222 // from:
  SAY #70508 /* ~People could die because of this, and you joke?!~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 157
END

IF ~~ THEN BEGIN 223 // from:
  SAY #74580 /* ~I'm not sure I'm comfortable with this, <CHARNAME>...~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~What work needs doing this <DAYNIGHT>?~ */ EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~What work needs doing this <DAYNIGHT>?~ */ EXTERN ~DORN~ 22
  IF ~  IsValidForPartyDialogue("Haerdalis")
~ THEN EXTERN ~HAERDAJ~ 160
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 537
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 126
END

IF ~~ THEN BEGIN 224 // from: 226.0
  SAY #74718 /* ~And what do you think, <CHARNAME>?~ */
  IF ~~ THEN REPLY #74719 /* ~I think love heals all wounds. With the right person, one finds peace. Let's see if our friend, the bride, has found the right person.~ */ EXTERN ~OHDBBRO~ 5
  IF ~~ THEN REPLY #74720 /* ~I'm not much for weddings, but a party's a party.~ */ EXTERN ~OHDBBRO~ 5
  IF ~~ THEN REPLY #74721 /* ~Only a fool would add to <PRO_HISHER> burden taking responsibility for another. Now let us pass. ~ */ EXTERN ~OHDBBRO~ 2
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 225 // from:
  SAY #75703 /* ~This would be so easy if I still... if I had my wings. ~ */
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
~ THEN EXTERN ~IMOEN2J~ 55
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 161
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 195
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 142
  IF ~  IsValidForPartyDialogue("anomen")
~ THEN EXTERN ~ANOMENJ~ 322
END

IF ~~ THEN BEGIN 226 // from:
  SAY #74716 /* ~Do you truly find a wedding so very terrible?~ */
  IF ~~ THEN GOTO 224
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 164
END

IF ~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 227 // from:
  SAY #96640 /* ~<CHARNAME>, I can't... we are through. I can't even look at you. I feel sick.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
  IF ~  IsValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 3
  IF ~  IsValidForPartyDialogue("neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~NEERAJ~ 19
  IF ~  IsValidForPartyDialogue("jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~JAHEIRAJ~ 541
END

IF ~~ THEN BEGIN 228 // from:
  SAY #100083 /* ~I—I don't know what you mean.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 256
END

IF ~~ THEN BEGIN 229 // from:
  SAY #100085 /* ~<CHARNAME> would n-never want a monster like you!~ */
  IF ~~ THEN EXTERN ~DORNJ~ 257
END

IF ~~ THEN BEGIN 230 // from:
  SAY #100087 /* ~You just try!~ */
  IF ~~ THEN REPLY #100096 /* ~ENOUGH! Aerie is a brave, beautiful woman. I'll not let you demean her, Dorn.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 231
  IF ~~ THEN REPLY #100097 /* ~Stop it, Dorn. You know my affections lie with you.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 232
  IF ~~ THEN REPLY #100098 /* ~Excellent. It's only fitting you prove your love for me in battle.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 233
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #100088 /* ~Thank you, <CHARNAME>. ~ */
  IF ~~ THEN EXTERN ~DORNJ~ 258
END

IF ~~ THEN BEGIN 232 // from: 230.1
  SAY #100090 /* ~But... but I thought...~ */
  IF ~~ THEN EXTERN ~DORNJ~ 259
END

IF ~~ THEN BEGIN 233 // from: 230.2
  SAY #100092 /* ~No! I won't.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #100093 /* ~You are not the man I thought you were, <CHARNAME>.~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #100094 /* ~I wish you the best, but I cannot be around this fiend any longer. Goodbye, <CHARNAME>. ~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveGlobal("AR0607","Aerie",[469.437])
~ EXTERN ~DORNJ~ 260
END

IF ~~ THEN BEGIN 236 // from:
  SAY #102470 /* ~Are you sure about this, <CHARNAME>?~ */
  IF ~  !IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~HEXXAT~ 3
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 268
END

IF ~~ THEN BEGIN 237 // from:
  SAY #89528 /* ~Normally, it would upset me to leave someone stranded like that, but he reminds me of the illusions Kalah used. I don't think he's real.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 73
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 200
END

IF ~~ THEN BEGIN 238 // from:
  SAY #93247 /* ~We must help! But I hope we can get those mercenaries to leave first. Otherwise there'll be more blood shed than there should be.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 98
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 290
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 245
END

IF ~~ THEN BEGIN 239 // from:
  SAY #272483 /* ~Oh my... that's s-so romantic!~ */
  IF ~  True()
~ THEN EXTERN ~LCCORWIN~ 27
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 66
END

IF ~~ THEN BEGIN 240 // from:
  SAY #272450 /* ~It's n-nothing, Captain... well, can I ask you a question?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 72
END

IF ~~ THEN BEGIN 241 // from:
  SAY #272451 /* ~I often worry about how my s-scars affect how people think of me. You have scars as well, yet you are always so c-confident and assertive. Why don't your scars affect you in the same way that my scars affect me?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 73
END

IF ~~ THEN BEGIN 242 // from:
  SAY #272452 /* ~That's a.. an interesting way of looking at things, Captain. How did you get your s-scars?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 74
END

IF ~~ THEN BEGIN 243 // from:
  SAY #272377 /* ~Oh dear! What did you l-learn? ~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 75
END

IF ~~ THEN BEGIN 244 // from:
  SAY #272379 /* ~I see... couldn't the healers remove the scar?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 76
END

IF ~~ THEN BEGIN 245 // from:
  SAY #272381 /* ~I - I understand. Thank you... Schael.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 246 // from:
  SAY #272543 /* ~Schael? What's wrong?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 78
END

IF ~~ THEN BEGIN 247 // from:
  SAY #272545 /* ~Oh, please let me h-help you with that... there, is that better?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 79
END

IF ~~ THEN BEGIN 248 // from:
  SAY #272547 /* ~Oh, y-you're welcome. Schael? Can I ask you a question?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 80
END

IF ~~ THEN BEGIN 249 // from:
  SAY #272549 /* ~I've encountered so many d-different people, cultures and races while in the circus. The circus never travelled to Baldur's Gate before. What are the people there like?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 81
END

IF ~~ THEN BEGIN 250 // from:
  SAY #272551 /* ~I see.. have you m-met an Avariel before? Before me, I mean.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 82
END

IF ~~ THEN BEGIN 251 // from:
  SAY #272553 /* ~R-really? What was their name?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 83
END

IF ~~ THEN BEGIN 252 // from:
  SAY #272555 /* ~No... what was she like?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 84
END

IF ~~ THEN BEGIN 253 // from:
  SAY #272557 /* ~Y-you mean you fought each other? But why?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 85
END

IF ~~ THEN BEGIN 254 // from:
  SAY #272559 /* ~Right.. okay, t-thank you, Schael.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 255 // from:
  SAY #272520 /* ~Yes, Schael. Please continue with your story.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 87
END

IF ~~ THEN BEGIN 256 // from:
  SAY #272562 /* ~Caelar Argent? I-I'm sorry, who is that?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 88
END

IF ~~ THEN BEGIN 257 // from:
  SAY #272567 /* ~W-what happened to her?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 92
END

IF ~~ THEN BEGIN 258 // from:
  SAY #272569 /* ~But that's - that's cruel! How could <PRO_HESHE> have killed her? Wasn't there another way?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 93
END

IF ~~ THEN BEGIN 259 // from:
  SAY #272572 /* ~I see... I'm sorry then that <CHARNAME> h-had to do that..~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 95
END

IF ~~ THEN BEGIN 260 // from:
  SAY #272520 /* ~Yes, Schael. Please continue with your story.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 97
END

IF ~~ THEN BEGIN 261 // from:
  SAY #272562 /* ~Caelar Argent? I-I'm sorry, who is that?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 98
END

IF ~~ THEN BEGIN 262 // from:
  SAY #272567 /* ~W-what happened to her?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 101
END

IF ~~ THEN BEGIN 263 // from:
  SAY #272577 /* ~But that's - that's terrible! Wasn't there another way Schael, b-besides bloodshed?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 102
END

IF ~~ THEN BEGIN 264 // from:
  SAY #272579 /* ~I see... I'm sorry then that you and <CHARNAME> h-had to take part in that..~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 104
END

IF ~~ THEN BEGIN 265 // from:
  SAY #65913 /* ~Wh-what do you mean, inevitable pain? <CHARNAME> has brought me only great joy!~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 266 // from:
  SAY #65942 /* ~*gasp* M-mother?! Oh, Mother! W-what...? How can it be you? Where are your wings?!~ [AERI2542] */
  IF ~~ THEN EXTERN ~LOVEONE1~ 1
END

IF ~~ THEN BEGIN 267 // from:
  SAY #65945 /* ~You...? I didn't know, Mama, I... I di—~ [AERI2543] */
  IF ~~ THEN EXTERN ~LOVEONE1~ 2
END

IF ~~ THEN BEGIN 268 // from:
  SAY #65948 /* ~No! Mama, don't say that! That didn't happen! Wizards couldn't have murdered you. No!~ [AERI2544] */
  IF ~~ THEN EXTERN ~LOVEONE1~ 3
END

IF ~~ THEN BEGIN 269 // from:
  SAY #65952 /* ~No! NOO! *sob* No, please! Make it stop, <CHARNAME>, make it STOP!~ [AERI2545] */
  IF ~~ THEN REPLY #65957 /* ~Stop it! She's not responsible for what happened to you!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #65958 /* ~Stop this, Gorion! Don't do this to her!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #65960 /* ~Enough! I won't allow this to continue!~ */ EXTERN ~HGWRA01~ 25
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #65959 /* ~Don't believe it, Aerie! It isn't real!~ */ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 270 // from:
  SAY #67770 /* ~How horrible! You thought he loved you, and he betrayed your trust. I fear I would die from sorrow if my love treated me so callously.~ */
  IF ~~ THEN EXTERN ~SARTEM01~ 3
END

IF ~~ THEN BEGIN 271 // from:
  SAY #67906 /* ~Oh, <CHARNAME>... why do I get the feeling I'm not going to like what she says next?~ */
  IF ~~ THEN EXTERN ~SARMEL01~ 46
END

IF ~~ THEN BEGIN 272 // from:
  SAY #67922 /* ~What a terrible thing to decide! You... you've fought for so long to get to this point... but if you choose to keep all this power, there will be nothing more than more fighting...~ [AERI2533] */
  IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273 // from: 272.0
  SAY #67923 /* ~I... I couldn't do it. I wouldn't want to. What a frightening thing to become. But... you've never taken the easy path, have you, <CHARNAME>?~ */
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
END

IF ~~ THEN BEGIN 274 // from:
  SAY #67948 /* ~Ohh, I knew this was coming. I knew this would happen. I suspected what your success would mean. But to have to face it now... Oh, <CHARNAME>, the very thought of being without you... of raising our child alone...~ [AERI2532] */
  IF ~~ THEN REPLY #67949 /* ~You think I should give up the essence?~ */ GOTO 275
  IF ~~ THEN REPLY #67950 /* ~I'm sorry, Aerie. I feel I have to go forward and accept my birthright.~ */ GOTO 279
  IF ~~ THEN REPLY #67951 /* ~I don't want to be without you either, Aerie. I love you.~ */ GOTO 280
  IF ~~ THEN REPLY #67952 /* ~I'm not sure what I should do.~ */ GOTO 281
  IF ~~ THEN REPLY #67953 /* ~Steady, Aerie. You'll be fine.~ */ GOTO 276
END

IF ~~ THEN BEGIN 275 // from: 274.0
  SAY #67954 /* ~Yes. No. I mean... I can't tell you what to do, <CHARNAME>. I could beg you to stay with me and your child, but what kind of future would we have? You don't know, and neither do I.~ */
  IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 281.0 280.0 279.0 275.0 274.4
  SAY #67955 /* ~There was a time I didn't know what love was... I thought that we needed to be apart until I realized that just because you were my first love, that didn't make it any less real. You've done so much for me, I can't even begin to explain. And now you've given me a child.~ */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #67956 /* ~But if you feel that you need to accept this power... and that I have to let you go... then I suppose I can do that. It will... hurt. Just the thought of it makes me want to scream.~ */
  IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #67957 /* ~But I couldn't have you hate me for holding you back from what you deserve. If I were in your position, I don't know if I could do the same. A child, love, our future together... what are these mortal concerns next to the power and responsibilities of an immortal?~ */
  IF ~~ THEN REPLY #67961 /* ~If I had the power of Bhaal, I could make sure you and our child were well looked after, Aerie. I could even restore your wings.~ */ GOTO 282
END

IF ~~ THEN BEGIN 279 // from: 274.1
  SAY #67958 /* ~I know. But knowing doesn't make it any easier. It... it means the end of us, but maybe that's what has to be. Maybe there was never really a future for us... or maybe our future lies in our child's destiny and not in yours. I don't know.~ */
  IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 280 // from: 274.2
  SAY #67959 /* ~And I love you. Oooh, sometimes I love you so much it hurts. I lie awake at night and wonder what kind of future we could have or what will happen to our child. I don't know... and neither do you.~ */
  IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 281 // from: 274.3
  SAY #67960 /* ~I don't blame you. Us... how we feel about each other... even our child... those can't be the only considerations. I lie awake sometimes thinking what kind of future we might have. I don't know... and neither do you.~ */
  IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 282 // from: 278.0
  SAY #67962 /* ~You... could? Yes, I suppose you could do almost anything, couldn't you? Except keep us together.~ */
  IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #67964 /* ~Your love made it possible for me to find who I am. I have strength, <CHARNAME>... enough for both myself and our baby. You taught me that.~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #67965 /* ~I cannot tell you what your destiny is, <CHARNAME>. I can only tell you to do what you feel is right. I can accept what that means, my love... even if it means I must raise our child alone.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 285 // from:
  SAY #68081 /* ~Goodbye, my love... I wish you well. I will tell our child about you and... how you had... to go. And why. I understand, <CHARNAME>. I truly do.~ [AERI2535] */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 286 // from:
  SAY #68082 /* ~*gasp* You... you stayed, <CHARNAME>! Oh, my love! I'm so happy! We will have a life together... a good life! You, me, and the baby... You won't regret this, you won't, I swear!~ [AERI2534] */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 287 // from:
  SAY #70392 /* ~Look at those horrible marks on his body! They've defiled him... even if I wanted to, I don't think I could help this poor man.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Sarevok")
~ THEN EXTERN ~SAREV25J~ 9
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 160
END

IF ~~ THEN BEGIN 288 // from:
  SAY #70414 /* ~What a gruesome fate! It's madmen like Carston that give all us magic-users a bad name.~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 149
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 215
END

IF ~~ THEN BEGIN 289 // from:
  SAY #70480 /* ~So... then you didn't even *know* if this would work! You... you could have killed <CHARNAME>! How *dare* you put <PRO_HIMHER> at that kind of risk!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 42
END

IF ~~ THEN BEGIN 290 // from:
  SAY #70501 /* ~I sense something here. A... presence. It's so powerful! So powerful, I can't sense anything else about it at all! Baervan preserve us!~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #70508 /* ~People could die because of this, and you joke?!~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 175
END

IF ~~ THEN BEGIN 292 // from:
  SAY #70553 /* ~Oh, you poor, poor man! It's all right... I won't hurt you, I promise. I'm not a demon, honestly.~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 11
END

IF ~~ THEN BEGIN 293 // from:
  SAY #71316 /* ~<CHARNAME>... don't tease this poor girl like that. You are teasing, aren't you?~ */
  IF ~~ THEN REPLY #71317 /* ~Of course... I only have eyes for you, Aerie, my love.~ */ GOTO 295
  IF ~~ THEN REPLY #71318 /* ~I'm not teasing her, Aerie... so butt out, you wingless wonder!~ */ GOTO 294
END

IF ~~ THEN BEGIN 294 // from: 293.1
  SAY #71319 /* ~I... I... *sob* I thought I knew you, <CHARNAME>! Now I see our love was just a game to you! Well, I won't play your game anymore, you bastard! We're finished!~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~SARPRO01~ 12
END

IF ~~ THEN BEGIN 295 // from: 293.0
  SAY #71320 /* ~I am glad to hear you say that. Run along, young lady. We have no one here interested in your offer.~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 3
END

IF ~~ THEN BEGIN 296 // from:
  SAY #71352 /* ~I would not normally approve of this, <CHARNAME>, but I sense this is not a simple sex for money deal. Perhaps this woman has information she wishes to reveal in private. Go with her... but be careful.~ */
  IF ~~ THEN EXTERN ~SARPROVF~ 1
END

IF ~~ THEN BEGIN 297 // from:
  SAY #71447 /* ~<CHARNAME>! You are not the <PRO_MANWOMAN> I thought you were! I... I cannot stay with someone who would urge the slaughter of these helpless refugees.~ */
  IF ~  True()
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~VICONIJ~ 466
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~EDWINJ~ 222
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 317
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 219
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 603
  IF ~  IsValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~ANOMENJ~ 398
END

IF ~~ THEN BEGIN 298 // from:
  SAY #71622 /* ~Oh, I don't think I deserve all of that... there are *so* many opponents we face who seem to have more power than us, no matter how much we all grow. But it *does* sound nice.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 299 // from:
  SAY #72576 /* ~So young and eager... *sigh* I can hardly believe that I was ever as naive and innocent as these three.~ */
  IF ~~ THEN EXTERN ~BAZPAT01~ 2
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 610
END

IF ~  Global("OHR_CHASM","OH4220",1)
~ THEN BEGIN 300 // from:
  SAY #83022 /* ~I could've gotten us across, once.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_CHASM","OH4220",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 906
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 617
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 301 // from:
  SAY #83161 /* ~Let Alorgoth go, <CHARNAME>! He isn't worth it!~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 270
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 302 // from:
  SAY #92229 /* ~I went to Lunia... I've flown higher with you than I ever could with mere wings, <CHARNAME>.~ */
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
END

IF ~  False()
Dead("OHHDECOY")
AreaCheck("OH7300")
!Global("OHH_decoydead","OH7300",2)
~ THEN BEGIN 303 // from:
  SAY #85676 /* ~The lich is destroyed. We leave now, right?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 843
END
