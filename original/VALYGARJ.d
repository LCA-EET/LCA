// creator  : weidu (version 24900)
// argument : VALYGARJ.DLG
// game     : .
// source   : ./override/VALYGARJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~VALYGARJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #14249 /* ~It would be better that you remain safely with your family and do not seek out such a life on purpose, child.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #15014 /* ~Errr. Ahem! I am, uh, sorry, my lady. Gardening is... not my specialty.~ */
  IF ~~ THEN EXTERN ~NOBLEW1~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #15434 /* ~*sigh* Sometimes, I think it almost would have been better if I'd stayed in the wilderness.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #18424 /* ~Never! You shall never have me, and you shall never have your precious sphere!~ */
  IF ~~ THEN EXTERN ~TOLGER2~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #18656 /* ~Lavok!~ [VALYGA72] */
  IF ~~ THEN EXTERN ~LAVOK~ 1
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18658 /* ~You will not pass! I shall fulfill my family's vow and end your hideous life once and for all!~ [VALYGA73] */
  IF ~~ THEN EXTERN ~LAVOK~ 2
END

IF ~~ THEN BEGIN 6 // from:
  SAY #18661 /* ~What is this? Some manner of trick?~ [VALYGA74] */
  IF ~~ THEN EXTERN ~LAVOK~ 4
END

IF ~~ THEN BEGIN 7 // from:
  SAY #18665 /* ~I am your descendant, Lavok. I am Valygar Corthala, and I will not allow you to take my body to extend your life. Since you yet live, I shall end it now!~ */
  IF ~~ THEN EXTERN ~LAVOK~ 5
END

IF ~~ THEN BEGIN 8 // from:
  SAY #18667 /* ~Eh? I warn you, necromancer, I shall not be fooled!~ */
  IF ~~ THEN EXTERN ~LAVOK~ 6
END

IF ~~ THEN BEGIN 9 // from:
  SAY #18670 /* ~Are you trying to tell me that you are not evil? That you are not the sorcerer who preyed upon his own family as a ghoul would, whose legacy has haunted my family always?~ */
  IF ~~ THEN EXTERN ~LAVOK~ 7
END

IF ~~ THEN BEGIN 10 // from:
  SAY #18673 /* ~And this should redeem you for all you have done? I say it is a fitting punishment!~ */
  IF ~~ THEN EXTERN ~LAVOK~ 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18680 /* ~I...~ */
  IF ~~ THEN EXTERN ~LAVOK~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #18682 /* ~I... I don't... what would you ask of me?~ */
  IF ~~ THEN EXTERN ~LAVOK~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #18684 /* ~This... this is not a trick?~ */
  IF ~~ THEN EXTERN ~LAVOK~ 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY #18686 /* ~You are not the man I expected, Lavok. I... I shall do as you ask.~ */
  IF ~~ THEN EXTERN ~LAVOK~ 36
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18912 /* ~As well as can be expected, Hervo. Thank you and... um... carry on.~ */
  IF ~~ THEN EXTERN ~HERVO~ 41
END

IF ~~ THEN BEGIN 16 // from:
  SAY #25477 /* ~How do you know about me? Tell me!~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 17 // from:
  SAY #25656 /* ~I understand your hesitation, my lady. I can assure you that my family will be gone shortly enough, and you can sleep restfully in your bed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #25719 /* ~Er... certainly not. Somehow I think I'd rather pull a squid through my nostrils, thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #27701 /* ~You know very well, my lord, that I am no sorcerer... and nearly all of my family is well beyond the reach of your petty barbs!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #29517 /* ~I am dressed as I am... and somewhat dirty... because of the time I have spent in the woodlands, sir. I am NOT a street sweeper.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29542 /* ~Dead. She turned into a lich, and I beheaded her. Anything else you'd like to know, you nosy harpy?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #29689 /* ~I am not here to plead my case before the council, man. Just go about your ineptitude and do not worry about me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #30046 /* ~Hmph. I have been in the army, friend... and it is much more dreary than you think. The victories too are few and far between... and hardly worth the price you are forced to pay.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #32606 /* ~Nay, my lady. I'd happily settle in your hamlet and be your ranger, but I doubt that that will be my destiny.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("ValygarSeesOrb","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #37249 /* ~Yes, this is it... this is the planar sphere here in the slums. We should... climb the stairs and find some manner of entrance. ...If I am right, my blood... my presence should open the sphere.~ [VALYGA70] */
  IF ~~ THEN DO ~SetGlobal("ValygarSeesOrb","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #37259 /* ~We have returned to our home plane, have we? Then I... then I shall complete Lavok's request. Excuse me, <CHARNAME>... I will go outside with my ancestor...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38918 /* ~I wonder if you would think that if you were on the other side of the transaction, knight. Perhaps some perspective is all you need.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 158
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38949 /* ~I take it you're talking to me, hm?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 22
END

IF ~~ THEN BEGIN 29 // from:
  SAY #38951 /* ~I'd say that, technically, I already own the damnable sphere... and if you continue your irritating attempt to con passersby, you'll find yourself on the end of my blade. Got it?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 23
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44900 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44902 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #44904 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #44906 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #44908 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #45227 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45229 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #45231 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #45235 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #45236 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #45244 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #45246 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #47071 /* ~My past is not so long, and I have no love to speak of. 'Tis simple words that could apply to anyone, dear woman. Ahhh, but I shall think on them nonetheless.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #48519 /* ~Funny. One would figure you'd be right at home amongst the slime, Viconia.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 39
END

IF ~~ THEN BEGIN 44 // from:
  SAY #48553 /* ~Perhaps you are right, paladin... but there is always another time to face your foes. Especially ones as strong as this creature. We shall do your cause no good if we are dead.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 43
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 44
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 45 // from:
  SAY #48640 /* ~Are you serious, Nalia? Are you being sarcastic, or do you seriously not know what the hell you're talking about?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #48667 /* ~The merchant is a fool for having such monsters here in the city to begin with, but I'll not allow them to shed his blood! Come, <CHARNAME>, we must stop them!~ */
  IF ~~ THEN DO ~Attack("Bdock1")
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #48731 /* ~*sigh* No... not all of us are dead, not yet. Hold your celebration until after I pass on, if you please.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #48740 /* ~Unlikely, brute! Your ichor will dirty the ground before I allow you to rob anyone else!~ */
  IF ~~ THEN DO ~ActionOverride("bogre1",Enemy())
Attack("bogre1")
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #48745 /* ~Enough, wench. Don't tire yourself... I'm not interested.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 47
END

IF ~~ THEN BEGIN 50 // from:
  SAY #48746 /* ~I'm not interested in a woman who has lain with every man in Amn and then some. As for the prostitute, she doesn't do it for me either.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #48834 /* ~I'm surprised you remember. That was two years ago. Belle, isn't it? Captain Belle? Good to see you again.~ */
  IF ~~ THEN EXTERN ~FFCUST06~ 6
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48836 /* ~An... intriguing offer, Captain. I'll have to keep that in mind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48843 /* ~Odd. I was sure almost every ogre I'd ever met deserved nothing more than a sword in its gut... but this one seems not only civilized but quite intelligent.~ */
  IF ~~ THEN EXTERN ~DRUSH~ 18
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48844 /* ~Ah... yes. Ha. I suppose you're right.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48903 /* ~You can't just stand by and watch this, <CHARNAME>! And neither can I, I won't allow it!~ */
  IF ~~ THEN DO ~Attack("Dennis")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #48929 /* ~Harsh justice indeed. Perhaps death was deserved, but in this manner? ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #49492 /* ~I am not eager to arouse the attention of the Cowled Wizards, <CHARNAME>, but neither am I displeased to dispatch one of their members. Do as it pleases you.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 84
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 58 // from:
  SAY #49512 /* ~Will you not reconsider allowing this filth to join us? Everything I hold to be evil of magic is doubly true for one such as this Edwin fellow. He will betray us, mark my words.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #49785 /* ~I can't say I'm very comfortable with the idea of dealing with this... woman. This place reeks of the undead and worse. Do as you will, though... I will follow for now.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 60 // from:
  SAY #49822 /* ~I doubt I'd want to see what Bodhi's idea of a questionable assignment would be, <CHARNAME>. Of course, I doubt her "heroic" assignment will be much more palatable.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 91
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 60
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 61 // from:
  SAY #49834 /* ~I will not stoop to this kind of murder, <CHARNAME>, no matter what you've done for me. If this woman can't give us something else to do, I will be leaving.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BODHI~ 132
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 92
END

IF ~~ THEN BEGIN 62 // from:
  SAY #49846 /* ~I am surprised. I had thought you a <PRO_MANWOMAN> of better character than this. It seems I was mistaken. Farewell, <CHARNAME>.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #49897 /* ~I, for one, think we should do something to hunt these men down. Such a vile act must not go unpunished, <CHARNAME>. We saved this Tirdir, and we have assumed the responsibility.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #49912 /* ~A despicable act, <CHARNAME>. If it's money you are so interested in, the lady might have offered a reward for her freedom.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 411
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 61
END

IF ~~ THEN BEGIN 65 // from:
  SAY #50171 /* ~You speak of my mother, cur... who has been dead for twice that many years. An undead creature of her own making, killed at my hand. Or do you have a tax for that, too?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #50436 /* ~My family has no claim to a noble title anymore, my lady. As such, I am sure you would have no interest in someone such as I, especially with my family's reputation.~ */
  IF ~~ THEN EXTERN ~ORIONA~ 8
END

IF ~~ THEN BEGIN 67 // from:
  SAY #50441 /* ~Really? Then it is almost a pity that I am too busy at the moment. Perhaps... another time.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 84
END

IF ~~ THEN BEGIN 68 // from:
  SAY #50444 /* ~Shut up, Viconia, or I swear I'll—!~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 85
END

IF ~~ THEN BEGIN 69 // from:
  SAY #50445 /* ~As you wish, drow bitch!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ActionOverride("Viconia",LeaveParty())
ReallyForceSpellRES("OHSMODE3",Myself)
ReallyForceSpellRES("OHSMODE3","Viconia")
Attack("Viconia")
ActionOverride("Viconia",Attack("Valygar"))
~ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #52275 /* ~Suna? Suna Seni! W-wha... what are you doing here?~ [VALYGA84] */
  IF ~~ THEN EXTERN ~RESUNA~ 7
END

IF ~~ THEN BEGIN 71 // from:
  SAY #52277 /* ~What?! You... work for the man that is hunting <CHARNAME>? Suna, that wizard is a man of terrible evil! Why are you doing this?~ */
  IF ~~ THEN EXTERN ~RESUNA~ 8
END

IF ~~ THEN BEGIN 72 // from:
  SAY #52279 /* ~You have no choice? Suna, if the wizard is controlling you somehow, we can help you. You don't have to do this.~ */
  IF ~~ THEN EXTERN ~RESUNA~ 9
END

IF ~~ THEN BEGIN 73 // from:
  SAY #52281 /* ~Suna, no!~ */
  IF ~~ THEN EXTERN ~RESUNA~ 10
END

IF ~~ THEN BEGIN 74 // from:
  SAY #52296 /* ~Haaa... I will not tolerate any kind of deal with this beast, <CHARNAME>. I will endeavor to rescue the child myself if I must.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~FIRKRA02~ 36
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 186
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 163
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 75 // from:
  SAY #52308 /* ~So be it. I warned you, <CHARNAME>, that I wouldn't take part in such a deed, and I won't. Now I must stop you.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~FIRKRA02~ 37
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~KELDORJ~ 187
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MAZZYJ~ 164
END

IF ~~ THEN BEGIN 76 // from:
  SAY #55189 /* ~There. It is done. Once again, magic has turned into a dangerous obsession and destroyed more than just the life of its user. *sigh* Must it always be like this?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 77 // from:
  SAY #55211 /* ~What...? What—what is this place? I died, I'm sure of it... and I felt... I felt a dragging, a pulling to this place. It was you, wasn't it? You brought me here in your... in your wake.~ [VALYGA83] */
  IF ~  !IsValidForPartyDialogue("Korgan")
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
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Korgan")
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
~ EXTERN ~LCCORWIJ~ 51
END

IF ~~ THEN BEGIN 78 // from:
  SAY #55682 /* ~She's going now, is she? Good. The less we see of her, the better. Ever since we involved ourselves with Bodhi, I've had nothing but chills.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #55683 /* ~I see some of my mage-hatred in his eyes. I hope I never descend to such focused rage.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 25
END

IF ~~ THEN BEGIN 80 // from:
  SAY #55697 /* ~This man is killed in plain sight before us, and all you do, man, is gripe at the inconvenience?! Tell us what you know of this man's death, innkeeper, and be quick about it!~ */
  IF ~~ THEN EXTERN ~PPINN01~ 6
END

IF ~~ THEN BEGIN 81 // from:
  SAY #55786 /* ~I am unfamiliar with the name he spouts. Certainly he was tormented long to provoke such madness.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #55815 /* ~What... shark-men? I've heard of these creatures... sahuagin, I think they are called. Evil monsters that raid the coasts. But I can't understand what they're saying...~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 2
END

IF ~~ THEN BEGIN 83 // from:
  SAY #55860 /* ~And should we do this for you, fish-man... what are your assurances to us? Will you turn on us, hold us as prisoners once we are done? Or will we be free to go?~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 20
END

IF ~~ THEN BEGIN 84 // from:
  SAY #55893 /* ~So perhaps this is the mage's plan, <CHARNAME>. To stir up a war between the drow and the elves... but to what end? And what manner of demon do they speak of, I wonder?~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN 85 // from:
  SAY #55909 /* ~You fool! You would not only anger the dragon, but deal with a creature of the Abyss?! I will not stand for this!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 86 // from:
  SAY #55954 /* ~Fool mages, always sticking their noses in where they don't belong. ~ */
  IF ~  Class(Player1,MAGE_ALL)
~ THEN GOTO 87
  IF ~  !Class(Player1,MAGE_ALL)
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("AERIE")
OR(2)
!Class("NALIA",MAGE_ALL)
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~UDDUER02~ 13
  IF ~  !Class(Player1,MAGE_ALL)
IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 25
  IF ~  !Class(Player1,MAGE_ALL)
!IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 152
  IF ~  !Class(Player1,MAGE_ALL)
Class("NALIA",MAGE_ALL)
IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~NALIAJ~ 281
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55955 /* ~*ahem* Present company excepted of course, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~UDDUER02~ 13
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 115
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55958 /* ~Present company excepted, of course. Let's, ah, let this man finish his tale.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 89 // from:
  SAY #56049 /* ~*sigh* There's never any surprises with these people. "Oh, it's <CHARNAME> come back to town... maybe <PRO_HESHE> can solve *all* of my problems!" I would go insane.~ */
  IF ~~ THEN EXTERN ~ARAN~ 86
END

IF ~~ THEN BEGIN 90 // from:
  SAY #56110 /* ~You represent everything that is evil about magic, wizard. You are worse than Lavok ever was. With my last breath, I will fight against you!~ [VALYGA82] */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 91 // from:
  SAY #56136 /* ~No, <CHARNAME>, I must oppose you on this! They asked for assistance, and you answer with murder? I will not allow it, and I hope I do not stand alone!~ */
  IF ~~ THEN REPLY #56137 /* ~Do as you must! I will fight you all!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ SOLVED_JOURNAL #57768 /* ~Svirfneblin village concerns

I spoke with Goldander Blackenrock, lord of the svirfneblin village. His pompous title revealed the shallow nature of his needs. He spoke of a means that I might enter the drow city: by enlisting the aid of Adalon, a powerful creature that holds court at the base of the great staircase. Goldander wanted me to first perform a service for his village, defeating some creature that they had unearthed, and he offered to grant me access to Adalon as a reward, giving me a glow stone or some such so that I could pass through the darkness that protects her lair. I cut out the middleman and killed the lot of them.~ */ EXIT
  IF ~~ THEN REPLY #56138 /* ~Very well then, if that is the way you feel. I will not attack them.~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 92 // from:
  SAY #56164 /* ~<CHARNAME>, I would advise you to remain as quiet as possible. I wish to hear what she has to say.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 15
END

IF ~~ THEN BEGIN 93 // from:
  SAY #56416 /* ~I have no idea why we are listening to this halfling. Did they even bother to speak to the man, reason with him, before they "knocked him on the head"? Arrogant bastards.~ */
  IF ~~ THEN EXTERN ~TREVIL01~ 16
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56419 /* ~There must be some other way of dealing with the town's problem than by destroying an entire grove, <CHARNAME>. Do not do this, I warn you.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 186
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 220
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 162
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56445 /* ~I have heard of this halfling, <CHARNAME>... a hero of no small stature, and I do not refer to her height. Come... we cannot leave her imprisoned here. I will free her myself.~ */
  IF ~~ THEN DO ~SetGlobal("MazzyFreed","GLOBAL",1)
~ EXTERN ~MAZZY~ 13
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56538 /* ~You may be surprised to learn that we are not all lowly born. I am of a noble family, but I am no better than the others here who have come to save you. Be thankful.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 48
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56907 /* ~More errands? Could this not wait? <CHARNAME> seeks both a friend and an enemy.~ */
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 508
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ARAN~ 54
END

IF ~~ THEN BEGIN 98 // from:
  SAY #57391 /* ~I wish I could go with them and try to lead them to the surface... but I suppose there's little point. And there's still much to do here that is more important. *sigh*~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #57687 /* ~You are not well, <CHARNAME>. We should take time to rest here.~ */
  IF ~~ THEN REPLY #57688 /* ~No, Valygar, there is no time. I will be fine. It was just... a strange feeling.~ */ GOTO 100
  IF ~~ THEN REPLY #57689 /* ~Perhaps. I just felt really... strange. Like I wasn't in control for a moment there.~ */ GOTO 101
  IF ~~ THEN REPLY #57690 /* ~I will rest when I decide it is best to do so! Leave me be!~ */ GOTO 102
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #57692 /* ~It looked to be strange. Really, <CHARNAME>, we should proceed slowly. The unnatural magics you have been subjected to could have unforeseen effects.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #57694 /* ~The ritual is adding to the stress that this place naturally has. Once we are safe, you should rest. There is no telling what they did to you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from: 99.2
  SAY #57695 /* ~I fear your manner is a side effect of the spell cast upon you, though I still have trouble accepting your words. I will leave you to your suffering.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #57713 /* ~<CHARNAME>! You... what you became... I could feel the fear to my very core!~ */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #57714 /* ~<CHARNAME>, you just manifested the Lord of Murder... We... we must get your soul back! If this happens much more, you may lose all control!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #58165 /* ~I question whether we serve an "actual" nature in doing this, but I am not above choosing the lesser of two evils. ~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 135
END

IF ~~ THEN BEGIN 106 // from:
  SAY #58166 /* ~Perhaps not all magic is evil, <CHARNAME>. But Irenicus is worse than anything Lavok ever was, I am sure of it. I intend to help you stop this madman. Whatever the cost.~ */
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
END

IF ~  Dead("lavok02")
Global("LavokDead","GLOBAL",0)
~ THEN BEGIN 107 // from:
  SAY #58280 /* ~He is dead. Lavok, the necromancer, is finally dead... I can scarce believe it.~ [VALYGA75] */
  IF ~~ THEN DO ~SetGlobal("LavokDead","GLOBAL",1)
~ GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #58281 /* ~My family's vow has been fulfilled, and I am now safe. And yet I feel little satisfaction. I had no idea it would be like this.~ [VALYGA76] */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #58282 /* ~Could he actually have been redeemed? After all that time? Did he actually fight that demon to prevent it from escaping the sphere?~ [VALYGA99] */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #58283 /* ~If you had asked me such a question even a day ago, I would've answered that such redemption was impossible. Now I am not so sure.~ [VALYGA77] */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #58284 /* ~I think, perhaps, that I do not know all that I think I do. I have not seen as much of the world as I thought I did. A disturbing realization.~ [VALYGA78] */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #58285 /* ~I would continue to travel with you if you would allow me. If there is so much I am not aware of, I must discover it. Will you have me?~ [VALYGA79] */
  IF ~~ THEN REPLY #58286 /* ~I would be glad to have you in my company, Valygar.~ */ DO ~EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
~ SOLVED_JOURNAL #15735 /* ~Valygar's family quest is over

Valygar's quest is finally done. Lavok was not what he expected, and has caused the normally judgmental ranger to think deeply about what he has experienced. With the necromancer dead and the Cowled Wizards no longer hunting him, Valygar has asked to continue traveling with me. I have accepted him back into the group.~ */ GOTO 113
  IF ~~ THEN REPLY #58287 /* ~As you wish, although I cannot promise it will be for long.~ */ DO ~EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
~ SOLVED_JOURNAL #15735 /* ~Valygar's family quest is over

Valygar's quest is finally done. Lavok was not what he expected, and has caused the normally judgmental ranger to think deeply about what he has experienced. With the necromancer dead and the Cowled Wizards no longer hunting him, Valygar has asked to continue traveling with me. I have accepted him back into the group.~ */ GOTO 114
  IF ~~ THEN REPLY #58288 /* ~I do not think it would be wise, Valygar. I suggest you find your own way.~ */ DO ~EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
~ SOLVED_JOURNAL #15739 /* ~Valygar's family quest is over

Valygar's quest is finally done. Lavok was not what he expected, and has caused the normally judgmental ranger to think deeply about what he has experienced. With the necromancer dead and the Cowled Wizards no longer hunting him, Valygar has asked to continue traveling with me. I have declined, and the ranger told me that he could be found at his home in the Docks District should I have need of him in the future.~ */ GOTO 115
  IF ~~ THEN REPLY #58289 /* ~I've no desire to travel with a useless lout like yourself. You haven't seen nearly half the world as I have, and I'll not be the one to teach it to you.~ */ DO ~EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
~ UNSOLVED_JOURNAL #23561 /* ~Valygar's family quest is over

Valygar's quest is finally done. Lavok was not what he expected, and has caused the normally judgmental ranger to think deeply about what he has experienced. With the necromancer dead and the Cowled Wizards no longer hunting him, the ranger has gone on his own way. I doubt I shall see him again.~ */ GOTO 116
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #58290 /* ~My thanks, <CHARNAME>. I will not fail you.~ */
  IF ~~ THEN DO ~DestroyItem("misc7l")
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 112.1
  SAY #58291 /* ~I will travel with you for as long as I can, <CHARNAME>. Without you, I would still be hiding in the forest. You have my thanks and my company for as long as you wish it.~ */
  IF ~~ THEN DO ~DestroyItem("misc7l")
~ EXIT
END

IF ~~ THEN BEGIN 115 // from: 112.2
  SAY #58292 /* ~I shall return to my home here in the city, then. If you change your mind, I shall be there a short while before I leave for good. I wish you well on your journey, my friend.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR1101",405,327,S)
~ EXIT
END

IF ~~ THEN BEGIN 116 // from: 112.3
  SAY #58293 /* ~Hm. A side to you I hadn't noticed. Very well... I'll find my own way and likely be the better for it. I wish you well, <CHARNAME>.~ */
  IF ~~ THEN DO ~ActionOverride("hervo",DestroySelf())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #58515 /* ~You... you've brought me to the wizards, <CHARNAME>? Why? You aren't going to sell me out to them, I hope! I've done nothing to deserve such a fate!~ */
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 249
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 200
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 523
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 210
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 190
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN EXTERN ~ANOMENJ~ 304
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 316
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 189
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
OR(2)
!IsValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 82
END

IF ~~ THEN BEGIN 118 // from:
  SAY #58534 /* ~No! No, someone, please! SOMEONE HELP ME!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #58753 /* ~Trust in others, and you eventually get hurt. It is the way I have lived my life and the way that I will continue to do so.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 120 // from:
  SAY #60933 /* ~Well, Cowled Wizards who want your blood can be funny that way, all demanding and such. Good thing you were able to tell him all about the one left, eh?~ */
  IF ~~ THEN EXTERN ~LLARSH~ 19
END

IF ~~ THEN BEGIN 121 // from:
  SAY #61008 /* ~No, Derrick, it is quite fine. I thank you for your vigilance, however. You and the other rangers have been quite helpful over the last few weeks.~ */
  IF ~~ THEN EXTERN ~VALRAN01~ 6
END

IF ~~ THEN BEGIN 122 // from:
  SAY #70529 /* ~You abused us sorely, priest. You sent us in as your sacrificial lambs and didn't even warn us. I would not be surprised if <CHARNAME> ended your life as a result.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 123 // from:
  SAY #70416 /* ~Just another wizard lusting after power... and not caring who gets killed in the process. I've seen this far too often to be surprised anymore—but it still disgusts me!~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
END

IF ~~ THEN BEGIN 124 // from:
  SAY #70514 /* ~Very helpful now, Imoen. Perhaps you could have expressed your keen intuition a little earlier.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 44
END

IF ~~ THEN BEGIN 125 // from:
  SAY #70433 /* ~Save your story, Jan. Now is the time to let our blades speak for us.~ */
  IF ~~ THEN EXTERN ~JANJ~ 188
END

IF ~~ THEN BEGIN 126 // from:
  SAY #74581 /* ~Do you truly want to ally yourself with this half-orc? ~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74582 /* ~If I didn't, do you think I would?~ */ EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74582 /* ~If I didn't, do you think I would?~ */ EXTERN ~DORN~ 22
  IF ~  IsValidForPartyDialogue("Haerdalis")
~ THEN EXTERN ~HAERDAJ~ 160
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 537
END

IF ~~ THEN BEGIN 127 // from:
  SAY #75448 /* ~Foul magic oozes from this place. We should show it our backs.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 458
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 128 // from:
  SAY #75731 /* ~This place stinks of magic. How much longer must we tarry in this vile fug?~ */
  IF ~  !IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75732 /* ~As long as it takes to achieve our goals, Valygar. Either that or fall to our deaths.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75732 /* ~As long as it takes to achieve our goals, Valygar. Either that or fall to our deaths.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75732 /* ~As long as it takes to achieve our goals, Valygar. Either that or fall to our deaths.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IsValidForPartyDialogue("viconia")
IsValidForPartyDialogue("dorn")
~ THEN REPLY #75732 /* ~As long as it takes to achieve our goals, Valygar. Either that or fall to our deaths.~ */ EXTERN ~DORNJ~ 502
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN REPLY #75732 /* ~As long as it takes to achieve our goals, Valygar. Either that or fall to our deaths.~ */ EXTERN ~VICONIJ~ 410
END

IF ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 129 // from:
  SAY #77503 /* ~This place stinks of rotted magic. We should burn it to the ground.~ */
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("rasaad")
!IsValidForPartyDialogue("imoen2")
~ THEN REPLY #77504 /* ~While we're in the gorge? Not the best idea you've ever had, Valygar.~ */ DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("rasaad")
IsValidForPartyDialogue("imoen2")
~ THEN REPLY #77504 /* ~While we're in the gorge? Not the best idea you've ever had, Valygar.~ */ EXTERN ~IMOEN2J~ 56
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
IsValidForPartyDialogue("rasaad")
~ THEN REPLY #77504 /* ~While we're in the gorge? Not the best idea you've ever had, Valygar.~ */ EXTERN ~RASAADJ~ 771
  IF ~  !IsValidForPartyDialogue("keldorn")
IsValidForPartyDialogue("korgan")
~ THEN REPLY #77504 /* ~While we're in the gorge? Not the best idea you've ever had, Valygar.~ */ EXTERN ~KORGANJ~ 236
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN REPLY #77504 /* ~While we're in the gorge? Not the best idea you've ever had, Valygar.~ */ EXTERN ~KELDORJ~ 266
END

IF ~~ THEN BEGIN 130 // from:
  SAY #80976 /* ~The stink of magic permeates this place, <CHARNAME>. We should give it a wide berth.~ */
  IF ~~ THEN EXTERN ~OHHFAK~ 26
END

IF ~  Global("OHH_shairs","OH7200",1)
~ THEN BEGIN 131 // from:
  SAY #84079 /* ~The stink of magic fills this place.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 531
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 21
END

IF ~~ THEN BEGIN 132 // from:
  SAY #87847 /* ~Ah yes, vengeance—vengeance and guilt. I know the combination well.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #87921 /* ~Only a fool would let a child practice magic; only a criminal would let a child practice wild magic.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Neera")
~ THEN EXTERN ~NEERAJ~ 126
END

IF ~~ THEN BEGIN 134 // from:
  SAY #87924 /* ~You gave that woman sound advice, <CHARNAME>. Only fools would encourage children to practice magic; only a criminal would allow a child to practice wild magic.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #88460 /* ~And so the curse of the Corthalas continues to follow me. I do not speak against Neera, <CHARNAME>. I simply make an observation.~ */
  IF ~~ THEN EXTERN ~NEERA~ 22
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 165
END

IF ~~ THEN BEGIN 136 // from:
  SAY #65918 /* ~<CHARNAME> has brought me no pain, spirit. Quite the contrary.~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 137 // from:
  SAY #66029 /* ~N-no! No, I... I can't accept this! I won't go through this again! <CHARNAME>, please... make it stop! I can't bear this!~ */
  IF ~~ THEN REPLY #66030 /* ~Gorion, stop this! He doesn't deserve this!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #66031 /* ~Enough! I won't let this continue!~ */ EXTERN ~HGWRA01~ 25
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #66032 /* ~Don't believe it, Valygar! It's a lie!~ */ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 138 // from:
  SAY #67930 /* ~You wish to face the taint of Bhaal forever? It will eat away at you... if you do not embrace it willingly. Make your own destiny would be my advice... do not rest in your sire's shadow.~ [VALY2517] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 446
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
END

IF ~~ THEN BEGIN 139 // from:
  SAY #68007 /* ~So the time of your victory has finally arrived... and now you must decide whether to leave this world and your mortality behind forever. Not a simple decision, <CHARNAME>. Or is it?~ */
  IF ~~ THEN REPLY #68008 /* ~What do you think I should do, Valygar?~ */ GOTO 140
  IF ~~ THEN REPLY #68009 /* ~I don't want to leave you behind, Valygar. I love you.~ */ GOTO 145
  IF ~~ THEN REPLY #68010 /* ~I'm sorry. I feel I have to see this through. I have to accept my birthright.~ */ GOTO 146
  IF ~~ THEN REPLY #68011 /* ~No, it isn't that simple at all.~ */ GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.3 139.0
  SAY #68012 /* ~I'm not very qualified to advise you, <CHARNAME>. I've never been very comfortable with power. The thought of attracting the attention of other gods, some who might be jealous, would not sit very well with me.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 146.0 145.0 140.0
  SAY #68013 /* ~But I know that you'll make the best decision. You always have in the past, and I trust that you always will in the future. You laugh at me for such confidence, but I believe it. You are unique beyond anyone I have ever encountered.~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #68014 /* ~If you stay with me, I can only offer the solace of my company. I would love to continue our journeys together... there is much that we could still do, many places we could go.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #68015 /* ~But if you leave, that doesn't mean I will love you any less, <CHARNAME>. I will remember you, and hope that the power you gain will make you happy.~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #68016 /* ~If you've taught me anything, it's that power isn't something to always fear. I only hope that the life you choose isn't one you regret. As for me... our time together has been worth everything.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 145 // from: 139.1
  SAY #68017 /* ~I love you as well. I wouldn't blame you for not wanting the power and the taint of your sire... but I would ask you to reconsider if you were to refuse it simply to remain with me, <CHARNAME>.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 146 // from: 139.2
  SAY #68018 /* ~Truly? I could not see myself deciding the same. To attract the attention of the gods with such power would not sit well with me, although the idea of exploring the planes is attractive, I'll admit.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 147 // from:
  SAY #68074 /* ~Then this is goodbye, <CHARNAME>. I wish you well, my love. With luck, we will meet again.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 148 // from:
  SAY #68075 /* ~You... will stay a mortal, after all of this? Then I cannot wait for our journey to begin, my love. Our new future awaits.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 149 // from:
  SAY #70416 /* ~Just another wizard lusting after power... and not caring who gets killed in the process. I've seen this far too often to be surprised anymore—but it still disgusts me!~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
END

IF ~~ THEN BEGIN 150 // from:
  SAY #70433 /* ~Save your story, Jan. Now is the time to let our blades speak for us.~ */
  IF ~~ THEN EXTERN ~JANJ~ 223
END

IF ~~ THEN BEGIN 151 // from:
  SAY #70485 /* ~Well, if he can carry his weight in battle as well as he looks, I have no problem with it. Let's just go... this *place* worries me far more than this Sarevok of yours.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 309
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 173
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 595
END

IF ~~ THEN BEGIN 152 // from:
  SAY #70514 /* ~Very helpful now, Imoen. Perhaps you could have expressed your keen intuition a little earlier.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 171
END

IF ~~ THEN BEGIN 153 // from:
  SAY #70529 /* ~You abused us sorely, priest. You sent us in as your sacrificial lambs and didn't even warn us. I would not be surprised if <CHARNAME> ended your life as a result.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 154 // from:
  SAY #70560 /* ~It figures. Crocodile tears. Let's tear that useless thing from her chest again and be done with it!~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 30
END

IF ~~ THEN BEGIN 155 // from:
  SAY #71639 /* ~I would prefer that you not mention me at all, writer. Not that you'll listen. You rumormongers never do.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 156 // from:
  SAY #72358 /* ~I've put up with a lot, <CHARNAME>... but you murdering this innocent woman is too much! I won't just stand by and watch it happen! Any who are foes of evil, join your blades to mine!~ */
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

IF ~~ THEN BEGIN 157 // from:
  SAY #72446 /* ~This just proves what I've said all along... the only good wizard is a dead wizard.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 26
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 225
END

IF ~~ THEN BEGIN 158 // from:
  SAY #72449 /* ~I don't mind slaying this wizard, but the idea of slaughtering the countess in cold blood churns my stomach.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 34
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 319
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 221
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 607
  IF ~  IsValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN EXTERN ~ANOMENJ~ 401
END

IF ~~ THEN BEGIN 159 // from:
  SAY #72574 /* ~Another wizard who cares nothing about the consequences of his mad experiments on the rest of the world. Am I the only one not surprised by this?~ */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 160 // from:
  SAY #83159 /* ~I'm damned if I'll meet my end here in this plane of dark magic.~ */
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
~ THEN EXTERN ~JANJ~ 229
END

IF ~~ THEN BEGIN 161 // from:
  SAY #83266 /* ~As am I. Let us leave this place, and find another where magic doesn't foul my nose and tongue.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 952
END

IF ~~ THEN BEGIN 162 // from:
  SAY #82276 /* ~Nor do I. These crystals sound like the darkest kind of magic.~ */
  IF ~~ THEN EXTERN ~OHRMEEMS~ 16
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 163 // from:
  SAY #92240 /* ~That was not a place mortals should walk, <CHARNAME>. I hope you know what you've done this day.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 231
END
