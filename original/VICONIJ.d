// creator  : weidu (version 24900)
// argument : VICONIJ.DLG
// game     : .
// source   : ./override/VICONIJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~VICONIJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #14488 /* ~I am with friends, and I dislike your tone. Keep your suspicions and hatreds to yourself, s'lurppuk!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #14537 /* ~Keep your shallow thoughts to yourself, elg'caress.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #14979 /* ~You might find more to object over, human, if you were to find yourself repeatedly beaten, yes?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #15190 /* ~To expect more from Those Above would be to gravely insult Those Below, self vithen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #15327 /* ~If you do not know what I am, iblith jalil, perhaps you should ask amongst the others who stare so openly at me, yes?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #22309 /* ~Mmmm... I might consider a coupling, lowly male, were you not so filthy and disease-ridden as to be far beneath my notice.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #22369 /* ~Would you consider it worse, rivvil, if I accidentally opened your face with a mace?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #22510 /* ~They are, lowly jaluk. But you will never have them proven for you, let me assure you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #14718 /* ~You do not know the half of it, male.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 1
END

IF ~~ THEN BEGIN 9 // from:
  SAY #14720 /* ~You do not interest me, male. And I doubt that you could withstand the force of drow passion.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 2
END

IF ~~ THEN BEGIN 10 // from:
  SAY #14722 /* ~Hmm... suddenly I am tempted. But no. Go away, male.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18907 /* ~I have done nothing to you, slurr'puk. Begone before you make me angry.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 4
END

IF ~~ THEN BEGIN 12 // from:
  SAY #18914 /* ~Oh, now you are simply making me blush, male! But take your petty hatred elsewhere.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 5
END

IF ~~ THEN BEGIN 13 // from:
  SAY #25317 /* ~*hiss* Enough, human!~ */
  IF ~~ THEN EXTERN ~BELMIN~ 6
END

IF ~~ THEN BEGIN 14 // from:
  SAY #25465 /* ~I do not "bark," you gibbering fool. What do you know of me?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY #25612 /* ~I shall walk where I like, male. And watch your tone with me when you speak in my presence.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #25674 /* ~Is... is this a compliment? It seems I can no longer tell among your kind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #25714 /* ~You can close your jaw and quit your blushing, elf. As much as the forbidden might enflame your desire, I have no interest in those who smell of fish entrails.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #25752 /* ~You humans are so quick to place blame, it makes me ill to my stomach.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #25798 /* ~Calm yourself, little one, and restore your senses to some form of order. I am no murderer. A killer, perhaps, when I must... although I doubt you would detect the difference.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27686 /* ~I'll walk where I like, rivvil... and you can take your petty racist slurs and throw them in the river for all I care!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #28443 /* ~Do not get yourself overexcited, rivvil. I have almost been charbroiled once by your sort this month.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #29520 /* ~Yes, that was I, rivvil... no thanks to your strange breed of law enforcement that you have in this city.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #29622 /* ~Yes, I know. I've had men crawl across shards of glass to lick the filth off my boot. But you surfacers give me too many other problems.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #30031 /* ~Believe me, rivvil... if the drow were here to rule, you would be well aware of it by now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #33651 /* ~We must help her. Spiders are the most perfect creatures.~ */
  IF ~~ THEN EXTERN ~SPPAIN~ 13
END

IF ~~ THEN BEGIN 26 // from:
  SAY #33653 /* ~It is my affair, mutt. Do not address me.~ */
  IF ~~ THEN EXTERN ~SPPAIN~ 14
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38919 /* ~I agree. Only with self-determination will such rabble amount to anything, rivvil or no. It makes my stomach reel to see anything relying on the limited pity of others.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38931 /* ~The very sentimentality of this place affronts me, <CHARNAME>. That any deity could not recognize the need for this pathetic rabble to care for themselves fills me with bile.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #39168 /* ~To witness bloodshed brings a rush to those who do not indulge themselves. They fatten their egos upon the sweat of their captives. A practice my own people enjoy far too much.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 39
END

IF ~~ THEN BEGIN 30 // from:
  SAY #39381 /* ~I see the desires of the flesh have their way even with you, <CHARNAME>. This is good to see. I was beginning to think your libido as barren as that of a northern monk's.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 167
END

IF ~~ THEN BEGIN 31 // from:
  SAY #39400 /* ~Keep your disease-ridden women well away from <CHARNAME>, seller of flesh, before I flay the skin from your bones. This is your only warning, rivvil.~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
~ EXTERN ~MADAM~ 17
END

IF ~~ THEN BEGIN 32 // from:
  SAY #39432 /* ~Hmmm... actually, dear woman, your husband is fondling another of your kind in the back rooms. A much younger member of your kind, rather...~ */
  IF ~~ THEN EXTERN ~TIANA~ 5
END

IF ~~ THEN BEGIN 33 // from:
  SAY #41462 /* ~Shar will not dispel the despair of these actors. There is no curse here, no magic. But I would be pleased to go through the motions for you if it eases the cries of these frail rivvin.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #47086 /* ~Home? I have no wish to return home, woman. If the priestesses of Lolth wish to come for me, they shall return me to the Underdark as a corpse and nothing more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #47209 /* ~That is more of a question than you know, child. Suffice it to say that a tiny rivvil like yourself would not wish to meet more of my kind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #47313 /* ~I see the desires of the flesh have their way even with you, <CHARNAME>. This is good to see. I was beginning to think your libido as barren as that of a northern monk's.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 173
END

IF ~~ THEN BEGIN 37 // from:
  SAY #47382 /* ~I would be careful with that sharp tone, rivvil, lest you lose the tongue that shapes it. Fortunately, I've no particular need of your slophouse and its stench of sweat.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #48518 /* ~<CHARNAME>, can this possibly be worth the endless trekking through slime and filth? I say we torture this Quallo for answers and then we leave this stench-ridden place for good!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 43
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 40
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 96
END

IF ~~ THEN BEGIN 39 // from:
  SAY #48521 /* ~Do not think to jest with me, male, lest you lose your tongue.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #48574 /* ~I have been at the tip of self-righteous justice before. If these human knights believe you have murdered their number, they will hunt you with more determination than they would even a drow.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 44
END

IF ~~ THEN BEGIN 41 // from:
  SAY #48587 /* ~The foolish barbarian speaks like a dolt, but he has the right of it. We must pay a visit to this man who manipulates us like dolls, <CHARNAME>, and repay his insults in kind.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 57
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 42 // from:
  SAY #48641 /* ~You are as naive as you are foolish, girl. The beggar speaks excuses to indulge himself in wine, most likely, and little more. Even you should be able to figure such a thing out.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #48644 /* ~Weakling male, relish your work. It is an honored position you have.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #48650 /* ~This passing of our wealth to the poor is an affront to self-determinism, <CHARNAME>. These wretched fools would be far better off fending for themselves.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #48681 /* ~Wretched rivvil! You should be on your knees, thanking us for saving your miserable hide! A hundred lashes at the end of your own whip might put some sense into your head, fool!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #48719 /* ~Shar and your unsleeping god are often at odds, priest, but I seek no conflict here. I will be out of your worried sight before you begin a fit, so do not agitate yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #48747 /* ~Not interested in her, or not interested in women? I do so wonder, ranger, if even my charms could illicit a response on behalf of females everywhere...~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 50
END

IF ~~ THEN BEGIN 48 // from:
  SAY #48765 /* ~*sigh* So what else is new?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #48779 /* ~Calm yourself, rivvil. I intend no harm to any of you unless you strike the first blow. Then things will get bloodier than you will like, I assure you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #48886 /* ~Tell me again why we are doing this thing, <CHARNAME>? We are going to wander down into the filthy sewers to find a man who has this thing? I say let the drunkard die.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 125
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 72
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 370
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 197
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 51 // from:
  SAY #48953 /* ~Save your trickery of words, beggar. The weak are not deserving of charity. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48957 /* ~Are we to reward the weak? Such a thing would not be tolerated under my leadership.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  AreaCheck("AR0502")
Global("EnteredTanner","AR0502",0)
~ THEN BEGIN 53 // from:
  SAY #48978 /* ~Carefully, <CHARNAME>... we enter the lair of a most foul beast. It is his nature, no doubt, to protect this place with traps... we should not be overhasty!~ */
  IF ~  Global("ToldInspector","GLOBAL",0)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ EXIT
  IF ~  Global("ToldInspector","GLOBAL",1)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #48983 /* ~That foolish inspector who ran off... what was the rivvil's name? No matter. We shall find his useless carcass somewhere about, I would think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #49207 /* ~Yes, the child had best learn the harshness of life early if it is to survive.~ */
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 382
END

IF ~~ THEN BEGIN 56 // from:
  SAY #49385 /* ~One might wonder what such a gathering would consider a traitor. The rivvil will likely be either a devil or a saint. Either way, let us track the cur down quickly, if this is what we must do.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 83
END

IF ~~ THEN BEGIN 57 // from:
  SAY #49572 /* ~Do you truly wish to leave the task unfinished and unrewarded, <CHARNAME>? I had thought you in possession of a stronger stomach than this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #49617 /* ~Do you mean to tell me you do not know a drow when you see one? Hah! Think of me, then, as a nymph that has taken a tumble down a dirty chimney and you shall be happier by far.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #49819 /* ~A waste of our time, it seems. The woman did not know of your thieving nature, <CHARNAME>, that was obvious... though she seemed to know much else.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 90
END

IF ~~ THEN BEGIN 60 // from:
  SAY #49824 /* ~Is this a challenge, I wonder? Take the darker path, <CHARNAME>... show this creature you will not shrink from a deed that needs to be done.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 61 // from:
  SAY #49916 /* ~Hah! It has a delicious irony that is almost worth more than the gold, collecting this ransom. I find it encouraging to see such a backbone in you, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #49934 /* ~You look distastefully weak, ss'inssrigg, like you have seen your own ghost. Are you well?~ */
  IF ~~ THEN REPLY #49935 /* ~Viconia! Stand back from me! I do not know if I can protect you from this!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",3)
~ GOTO 63
  IF ~~ THEN REPLY #49936 /* ~Be on your guard, Viconia. I am not sure of myself.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",3)
~ GOTO 63
  IF ~~ THEN REPLY #49937 /* ~Mind your business, drow, if you value your life! ~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",3)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.2 62.1 62.0
  SAY #49938 /* ~Your lips move as a jester's, with no sound for me to hear. Do you mock me, <CHARNAME>? <CHARNAME>, do you hear me...? No!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #49980 /* ~You... you would have struck me down where I stand... such power...~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #49981 /* ~<CHARNAME>, we will work to capitalize on this, but if you endanger me again, I shall have to bury you here. Let us hope it does not come to that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #49992 /* ~Calm yourself, rivvil. Or slice your own throat upon your knife, I truly do not care. The amount of hysteria your kind experiences by my mere presence is laughable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #50014 /* ~You look weak. Do not tell me you are withering already. I thought you stronger than that.~ */
  IF ~~ THEN REPLY #50015 /* ~It's nothing you have to worry about. I just lost my footing for a moment, that's all.~ */ GOTO 68
  IF ~~ THEN REPLY #50016 /* ~Thanks for the oh-so-heartfelt concern, Viconia. Remind me to dance on your grave. ~ */ GOTO 70
  IF ~~ THEN REPLY #50017 /* ~Strange... I just kind of felt like I wasn't in complete control for a moment there. ~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.2 67.0
  SAY #50020 /* ~I see. Strange that Imoen seemed to have weathered the ritual better than you. ~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #50021 /* ~Well, I should like some warning if the condition continues. We need strong leadership through the trials ahead, and if you are not up to it...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1
  SAY #50022 /* ~I merely worry for the good of the group. I find it odd that Imoen weathered that ritual better than you. As I said, I thought you stronger than that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #50036 /* ~Must we run errands for this temple of fools, <CHARNAME>? If the rivvin of this city wish to worship an abomination and put out their eyes, what difference could it make to us?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 424
END

IF ~~ THEN BEGIN 72 // from:
  SAY #50075 /* ~Ah... an eye tyrant. We have great cities of beholders in the Underdark... they are intelligent creatures who make formidable foes. The drow do not contest them unless necessary.~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #50076 /* ~I have heard that some few make their way to the surface to dominate the lesser races, as this one must have. What power it could possess without its eyes, however, I do not know.~ */
  IF ~~ THEN EXTERN ~GAAL~ 9
END

IF ~~ THEN BEGIN 74 // from:
  SAY #50096 /* ~Your weakness is betrayed by the quiver in your voice, rivvil! Your precious eye tyrant is so much dust, and you shall join him before the hour is through!~ */
  IF ~~ THEN DO ~Attack("Gaal")
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #50126 /* ~A pathetic existence for a god indeed. Not forgotten enough to finally die. Perhaps one day such a fate will await dark Lolth... one can only hope.~ */
  IF ~~ THEN EXTERN ~RIFTG03~ 8
END

IF ~~ THEN BEGIN 76 // from:
  SAY #50172 /* ~I paid my dues when rivvin attempted to burn me at the stake, elg'caress. Ask me again to pay for the "privilege" of visiting your city, and you will forfeit your tongue.~ */
  IF ~~ THEN EXTERN ~CIVIL02~ 9
END

IF ~~ THEN BEGIN 77 // from:
  SAY #50234 /* ~I can answer that, guardsman. The rivvil approached us to ask directions and nothing else.~ */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #50235 /* ~But I have a question. There was a helpless woman mobbed and nearly burnt at the stake near here not long ago. Where were you then? Tirelessly hunting beggars, I suppose?~ */
  IF ~~ THEN DO ~SetGlobal("viconiacharity","AR1000",1)
~ EXTERN ~GGUARD01~ 6
END

IF ~~ THEN BEGIN 79 // from:
  SAY #50247 /* ~Do not concern yourself. If I dislike the law in this city, it is because I know how some can be disregarded by it completely. The pathetic rivvil can rot in the Abyss for all I care.~ */
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 89
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 138
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 91
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("HaerDalis")
~ THEN REPLY #50263 /* ~Err... if you say so.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #50281 /* ~Lil waela lueth waela ragar brorna lueth wund nind, kyorlin elghinn! Sarn! Usstan uil Viconia!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 21
END

IF ~~ THEN BEGIN 81 // from:
  SAY #50290 /* ~You dare?!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 22
END

IF ~~ THEN BEGIN 82 // from:
  SAY #50378 /* ~Perhaps your innards should be ground into the ashes, rivvil... and we shall see how much you worry about your "property values," then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #50421 /* ~Indeed. To survive is all that matters in the end. What good are such ideals if they do not serve you or make you stronger?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #50442 /* ~Beware, noble one. It is my understanding that our ranger friend has no love for females. Ghouls, perhaps, but not females. I was rather considering coloring his leathers pink.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 68
END

IF ~~ THEN BEGIN 85 // from:
  SAY #50443 /* ~Do it! Show me, Valygar, that you are indeed a man! Show me that you have what it takes to hold a female's attention!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
~ EXTERN ~VALYGARJ~ 69
END

IF ~~ THEN BEGIN 86 // from:
  SAY #50630 /* ~Do not direct your wrath at me, fool! I am not your enemy here!~ */
  IF ~~ THEN EXTERN ~UDTRAP05~ 3
END

IF ~~ THEN BEGIN 87 // from:
  SAY #50641 /* ~Vith'ir! Such power I have not seen! <CHARNAME>, what manner of creature...~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #50642 /* ~A Bhaal aspect... a remnant of his avatar. That must be it. <CHARNAME>, you became a creature of pure murder.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #50664 /* ~Now that we have released these lunatics, we had best hurry to direct them. Their madness may engulf us otherwise.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #50684 /* ~I shall take that as a compliment, human.~ */
  IF ~~ THEN EXTERN ~UDTRAP05~ 8
END

IF ~~ THEN BEGIN 91 // from:
  SAY #50805 /* ~I find it more surprising that you svirfneblin gnomes risk my anger by constantly pointing me out.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 3
END

IF ~~ THEN BEGIN 92 // from:
  SAY #50948 /* ~I advise caution in this place. We are fortunate not to be taken hostage as foreigners and sold as slaves. If they mean for us to prove our place, we must serve the matrons utterly.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #50949 /* ~Any misstep, no matter how slight, will draw the attention of the Spider Queen's watchers. And no doubt they are already curious about us... we do not need their scrutiny, yes?~ */
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #50950 /* ~Remember: absolute obedience to those of greater rank, especially the Handmaidens of Lolth and the matron mothers. To those of equal or lesser rank: no mercy.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #50951 /* ~Otherwise, take advantage of whatever favor is thrown your way. For ones such as us, it is the only way to achieve what you are not born to. No mercy. It is our way.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #50992 /* ~Indignity after indignity. Get on with your safe alternative, Goldander.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 18
END

IF WEIGHT #1 ~  Global("ViconiaCheckMad1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",1)
!Range("Phaere",6)
Global("ViconiaMad1","LOCALS",0)
~ THEN BEGIN 97 // from:
  SAY #51231 /* ~Are you mad? Just what are you planning with such overtures? You are nothing to such as she... a moment's distraction that costs her nothing and may cost you much!~ */
  IF ~~ THEN REPLY #51232 /* ~Are you jealous, Viconia?~ */ DO ~SetGlobal("ViconiaMad1","LOCALS",1)
~ GOTO 98
  IF ~~ THEN REPLY #51233 /* ~You seem to have quite a low opinion of my effect on women.~ */ DO ~SetGlobal("ViconiaMad1","LOCALS",1)
~ GOTO 99
  IF ~~ THEN REPLY #51234 /* ~It's just a ploy, Viconia... don't get yourself in a huff.~ */ DO ~SetGlobal("ViconiaMad1","LOCALS",1)
~ GOTO 100
  IF ~~ THEN REPLY #51238 /* ~Keep your opinions to yourself, Viconia. I'll do what I want.~ */ DO ~SetGlobal("ViconiaMad1","LOCALS",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #51244 /* ~Do not make me laugh. In this place, you toy with not only your own life by inviting such intimate scrutiny. Endanger us all, by all means, if you cannot resist the witch's flesh.~ */
  IF ~~ THEN REPLY #51245 /* ~Calm down... it's a ploy and nothing more.~ */ GOTO 100
  IF ~~ THEN REPLY #51246 /* ~I may do that. I'll do as I like, Viconia. Now drop it.~ */ GOTO 101
END

IF ~~ THEN BEGIN 99 // from: 97.1
  SAY #51247 /* ~Do not make me laugh, <CHARNAME>. You seem to forget that drow women see you as nothing more than a pathetic male. If this is some manner of ploy, I would suggest you reconsider.~ */
  IF ~~ THEN REPLY #51248 /* ~And if it is a ploy? What's wrong with that?~ */ GOTO 100
  IF ~~ THEN REPLY #51249 /* ~I'll do as I like, Viconia. Now drop it.~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0 98.0 97.2
  SAY #51250 /* ~Drow learn this game from an early age and play it far better than you could imagine. Avoid such contact with Phaere, I warn you... nothing but ill will come from it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1 98.1 97.3
  SAY #51252 /* ~I see. Suddenly, I am nothing more than the nagging harpy. Very well, <CHARNAME>... you'll hear from me no more. Do as your pleasure dictates.~ */
  IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #51460 /* ~You need not threaten me. Just see to the transformation.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 31
END

IF ~~ THEN BEGIN 103 // from:
  SAY #51997 /* ~Stand strong, <CHARNAME>. The drow cower before no one, least of all their own.~ */
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 104
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 105
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #51998 /* ~I will speak to this worm of a male. You there! We are from the city of Ched Nasad, and you will let us pass. We require rest and the services of your temples!~ */
  IF ~~ THEN EXTERN ~UDDOOR01~ 7
END

IF ~~ THEN BEGIN 105 // from: 103.1
  SAY #51999 /* ~Yours is the power here, <CHARNAME>. Females are the dominant leaders. Act accordingly.~ */
  IF ~~ THEN EXTERN ~UDDOOR01~ 0
END

IF WEIGHT #2 ~  Global("ViconiaCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("ViconiaMad2","LOCALS",0)
~ THEN BEGIN 106 // from:
  SAY #52233 /* ~It seems that you cannot resist the spell that female drow cast, <CHARNAME>. I find it quite amusing, actually. Did she force you into the act, or did you go willingly?~ */
  IF ~~ THEN DO ~SetGlobal("ViconiaMad2","LOCALS",1)
~ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #52235 /* ~No matter. Hopefully, we have the opportunity to kill the wench. Were I not in hiding, I would challenge her openly and remove her head... but we cannot have everything.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("ViconiaCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("ViconiaMad3","LOCALS",0)
~ THEN BEGIN 108 // from:
  SAY #52238 /* ~That was quite odd, <CHARNAME>. I was sure that Phaere intended to seduce you. How did you squirm from her grasp?~ */
  IF ~~ THEN DO ~SetGlobal("ViconiaMad3","LOCALS",1)
~ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #52239 /* ~Perhaps it was thoughts of me that kept you celibate, hmmm? Ha ha... well, this spares me the effort of flaying either of you alive, at least. Hard work, that is.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #52324 /* ~Kyorl! Udos phu' naut dossta ogglen!~ */
  IF ~~ THEN EXTERN ~UDDOOR02~ 1
END

IF ~~ THEN BEGIN 111 // from:
  SAY #52328 /* ~This has not gone well, <CHARNAME>. They will speak no reason!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #52332 /* ~We will travel as we see fit. We have important business above, and you will not keep us.~ */
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #52336 /* ~I will speak for myself, Viconia. These males will be made to listen.~ */ EXTERN ~UDDOOR02~ 4
  IF ~~ THEN REPLY #52337 /* ~You tell them, Viconia. ~ */ EXTERN ~UDDOOR02~ 4
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #52338 /* ~I will speak for myself, Viconia. They will be made to listen, even if I am male.~ */ EXTERN ~UDDOOR02~ 5
END

IF ~~ THEN BEGIN 113 // from:
  SAY #52354 /* ~Your choice is one of two: Attempt a payment of some sort, or simply fight them. I doubt our words will influence them at all.~ */
  IF ~~ THEN REPLY #52372 /* ~This is tedious. Let's just kill them!~ */ EXTERN ~UDDOOR02~ 9
  IF ~~ THEN REPLY #52373 /* ~Then we will offer a significant increase over what wage they might earn.~ */ EXTERN ~UDDOOR02~ 6
  IF ~~ THEN REPLY #52374 /* ~Let's try something different. We must pass! An elven attack is planned against our forces!~ */ EXTERN ~UDDOOR02~ 7
END

IF ~~ THEN BEGIN 114 // from:
  SAY #52377 /* ~It is a donation for the honor of your House! Do not think of it otherwise. We would not dream of causing you grief. It is a tribute towards future alliances.~ */
  IF ~~ THEN EXTERN ~UDDOOR02~ 13
END

IF ~~ THEN BEGIN 115 // from:
  SAY #52378 /* ~The matron mothers have more important things to do than worry about the dregs she left guarding the door! Stand aside, male—we must be allowed to pass!~ */
  IF ~~ THEN EXTERN ~UDDOOR02~ 10
END

IF ~~ THEN BEGIN 116 // from:
  SAY #55194 /* ~The mage was a fool to believe himself so powerful. Now he is dead, as fools usually become. But... what of you, <CHARNAME>? Have you recovered what you lost?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 117 // from:
  SAY #55215 /* ~This is most unusual. Death overwhelmed me in combat, and the darkness came over my senses. I felt a pulling, and followed it, and... and here we are. What place is this, I wonder?~ [VICONIB7] */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 118 // from:
  SAY #55427 /* ~I was wondering when you would give voice to the looks you have been giving me all eve. Poor Elhan, hating me so.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 58
END

IF ~~ THEN BEGIN 119 // from:
  SAY #55430 /* ~<CHARNAME>! I'll have your tongue for that! Is your loyalty so fickle? I swear you'll have a fight if you try and remove me from this group in this hostile place!~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 59
END

IF ~~ THEN BEGIN 120 // from:
  SAY #55432 /* ~Bah, such a statement is unnecessary. I am loyal. But if it will help your doubts, I do so swear my loyalty to this cause.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 60
END

IF ~~ THEN BEGIN 121 // from:
  SAY #55434 /* ~Your distrust is such that you require magical bonds to ensure I commit no treachery? I wonder if the drow are the only elves with darkened hearts.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 61
END

IF ~~ THEN BEGIN 122 // from:
  SAY #55436 /* ~Very well. Have your spells cast and secure my will to the task. I imagine spitting on you for the indignity will be restricted as well? A pity.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 62
END

IF ~~ THEN BEGIN 123 // from:
  SAY #55664 /* ~Is this male helpless now? What worth is he to the greater society if he is kept like this? Dispose of him.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 18
END

IF ~~ THEN BEGIN 124 // from:
  SAY #55676 /* ~I, for one, found it quite pleasing to see you pale and leaning over the side like a forlorn sailor. I would have pushed you overboard if I didn't think <CHARNAME> would object.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 118
END

IF ~~ THEN BEGIN 125 // from:
  SAY #55695 /* ~There can be only one who is responsible for this, thief. The one we fought earlier and prevented from destroying your precious guild.~ */
  IF ~~ THEN EXTERN ~PPSIME~ 7
END

IF ~~ THEN BEGIN 126 // from:
  SAY #55715 /* ~Surrounded himself with weakness and he finally succumbed to it. Trust in a male to make such a mistake.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #55728 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #55736 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from:
  SAY #55747 /* ~I am loath to listen too closely to the words of the human, but his advice may be wise. Let us at least see if these mad wizards can be released... and harnessed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from:
  SAY #55771 /* ~I have no eagerness to return to my home realm, <CHARNAME>. I am unwelcome there. I say let us take the ship the pirate offers rather than brave its depths so lightly.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPSAEM2~ 20
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 135
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 18
END

IF ~~ THEN BEGIN 131 // from:
  SAY #55790 /* ~I know a serpent's tongue when I hear it. Even as you offered us passage away from this island, you knew your ship's fate. Why? What do you need from us, male?~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 132 // from:
  SAY #55806 /* ~Enough, you little buffoon. There is no need to club us over the head with your point; we get it well enough.~ */
  IF ~~ THEN EXTERN ~JANJ~ 160
END

IF ~~ THEN BEGIN 133 // from:
  SAY #55811 /* ~Ha! A pity we do not have one here!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 111
END

IF ~~ THEN BEGIN 134 // from:
  SAY #55816 /* ~I know of these creatures from the Underdark. Sahuagin. Shark-men. My home city did not have much contact with them, however, so I do not know their language.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 2
END

IF ~~ THEN BEGIN 135 // from:
  SAY #55853 /* ~An interesting tactic, although I doubt this king will reward you for your so-called loyalty. It is amusing to watch the sahuagin fight amongst themselves, however.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut41za",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  !Dead("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaInUnderdark","AR2100",1)
Global("ViconiaWhined","LOCALS",0)
~ THEN BEGIN 136 // from:
  SAY #55886 /* ~So... I am in my homeland once again. Already I feel how unwelcome it has become. My eyes are no longer used to its darkness and my senses to the hint of the threat around every corner.~ [VICONIB5] */
  IF ~~ THEN DO ~SetGlobal("ViconiaWhined","LOCALS",1)
~ GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #55887 /* ~We must tread with caution, <CHARNAME>. There are, no doubt, drow in this place. Along with beholders, illithids, kuo-toa, and perhaps even worse.~ */
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #55888 /* ~The denizens here will expect no mercy and will offer none. If we are to survive long enough to find your Irenicus, we must be stronger than any of them.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #55890 /* ~Bold, <CHARNAME>. Phaere was a fool to think you would not curry favor with the matron mother. This will bring us much closer to our goal, I think, with her trust.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("Cut44r",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 200
END

IF ~~ THEN BEGIN 140 // from:
  SAY #55896 /* ~Open war on the surface elves? A bold move, bolstered by a greater demon's summoning. Why would Irenicus involve himself, however? He holds the drow no great love, I am sure.~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN 141 // from:
  SAY #55920 /* ~Do you see, <CHARNAME>? See the fear in his eyes? You now enjoy the respect the drow have earned. ~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 15
END

IF ~~ THEN BEGIN 142 // from:
  SAY #55928 /* ~Do not question the words of a drow, worm! It is not your place to do so! Despite how... sickeningly merciful they may be.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 151
END

IF ~~ THEN BEGIN 143 // from:
  SAY #55930 /* ~You meant nothing, *malla drow*. Assume the proper posture for one of your position, or we are in danger of losing respect for our guise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #55931 /* ~You are weak, and you shall pay the ultimate penalty amongst the drow... an ignoble death. <CHARNAME> has beaten you all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #55950 /* ~As a drow on the surface, he should expect such treatment. If I tracked down every rivvil who has wronged me, I would end up doing little else.~ */
  IF ~~ THEN EXTERN ~C6DRIZZ1~ 2
END

IF ~~ THEN BEGIN 146 // from:
  SAY #55969 /* ~It shall feel good to test my strength against this one... I have heard of his prowess. Come, let us achieve glory this day!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #55978 /* ~I would have done the same as <CHARNAME> if you are so weak as to be easily overcome. Your pontificating means nothing, fool.~ */
  IF ~~ THEN EXTERN ~C6WULF1~ 0
END

IF ~~ THEN BEGIN 148 // from:
  SAY #55979 /* ~Hmph. I have struggled as well. Do I not deserve better? Yet obviously, my usefulness is my only means to survive here. Why do you deserve so much more?~ */
  IF ~~ THEN EXTERN ~C6WULF1~ 0
END

IF ~~ THEN BEGIN 149 // from:
  SAY #55980 /* ~Hmph. Our affection is private, <CHARNAME>. Why you should have to justify yourself is beyond my comprehension.~ */
  IF ~~ THEN EXTERN ~C6DRIZZ1~ 14
END

IF ~~ THEN BEGIN 150 // from:
  SAY #56000 /* ~What do we need *him* for? Having one drow in your party is not enough, you need to go trolling about for extras? Even though that one is a little on the luscious side...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #56022 /* ~There will be no such trouble. I will be a guide.~ */
  IF ~~ THEN EXTERN ~UDDUER03~ 13
END

IF ~~ THEN BEGIN 152 // from:
  SAY #56048 /* ~You needn't worry. The Underdark will change you long before you have any effect on it. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56052 /* ~Poor little girl. It shall be interesting to see how you crumble in the Underdark.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56056 /* ~You are welcome to your opinion. I would place it on your tombstone, but your grave will likely be unmarked.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #56063 /* ~Save your veiled suspicions for someone that won't kill you over them. You will speak with respect!~ */
  IF ~~ THEN EXTERN ~UDDUER03~ 15
END

IF ~~ THEN BEGIN 156 // from:
  SAY #56082 /* ~So he seeks to actually join the Seldarine... to become an elven god in fact. The man is insanely ambitious, striving towards the impossible.~ */
  IF ~~ THEN EXTERN ~SUAVATAR~ 6
END

IF ~~ THEN BEGIN 157 // from:
  SAY #56095 /* ~You shall enjoy yourself quite a bit less when the illusion wears off. Shall we get moving?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 158 // from:
  SAY #56098 /* ~As it should be. Let us move on before we are forced to kill this fool for questioning us further.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #56106 /* ~The darkness has already taken you, foolish one, yet you refuse to close your eyes! Let us help you onwards to your final rest! L'il alurl! For Shar!~ [VICONIB6] */
  IF ~  !IsValidForPartyDialogue("Edwin")
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
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 160 // from:
  SAY #56114 /* ~How quaint. Get on with it.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 8
END

IF ~~ THEN BEGIN 161 // from:
  SAY #56125 /* ~Of course. Selfish in your generosity. Admirable.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 24
END

IF ~~ THEN BEGIN 162 // from:
  SAY #56147 /* ~The capture alone is enough to place the desire for their deaths in my soul. You need more than that?~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 6
END

IF ~~ THEN BEGIN 163 // from:
  SAY #56157 /* ~And this is where we learn that you do not intend to take us with you, isn't it? I trust no one well enough to think they would.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 27
END

IF ~~ THEN BEGIN 164 // from:
  SAY #56172 /* ~An improvement, I think. One that you should relish as a brief glimpse of your betters.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 59
END

IF ~~ THEN BEGIN 165 // from:
  SAY #56459 /* ~I do not see the conflict. The rich one eludes justice. Kill him and be done with it, for he has it coming. Fail your blood, and be a coward.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 52
END

IF ~~ THEN BEGIN 166 // from:
  SAY #56467 /* ~Bloody vengeance it is, then. For once, I see sense in this place. No drow would stand on semantics and let the death of kin pass quietly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56489 /* ~Morals belong to the foolish and the dead. Let them take their hapless prisoners. If we follow, it is in the promise of more treasure and greater glory, nothing else.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 176
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56507 /* ~What is this? One of the illithids? Perhaps a spy. Its psionic powers would help the child... although how the mad gnome knew of its presence I cannot imagine.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56542 /* ~I think a month of tortures amongst the spiders of Lolth would remove her sense of superiority. The elg'caress should know when she meets her betters, blood or no blood.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 169
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 96
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56553 /* ~I have no fear of losing <CHARNAME> to the likes of you.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 15
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56908 /* ~This is a waste of our time! This fool only wishes to rob us of our time as well as our already given gold.~ */
  IF ~~ THEN EXTERN ~ARAN~ 54
END

IF ~~ THEN BEGIN 172 // from:
  SAY #56945 /* ~I know of this drow. An infamous mercenary, leader of the Bregan D'aerthe... a powerful rogue known throughout the Underdark.~ */
  IF ~~ THEN EXTERN ~BREG01~ 8
END

IF ~~ THEN BEGIN 173 // from:
  SAY #57065 /* ~Hmmm... you must be Jarlaxle, then. How rare to meet one so infamous.~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 1
END

IF ~~ THEN BEGIN 174 // from:
  SAY #57193 /* ~Typical of you, rogue, to manipulate and deceive as a matter of course. <CHARNAME> has defeated more horrid foes than you... we shall have our revenge.~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 39
END

IF ~~ THEN BEGIN 175 // from:
  SAY #57370 /* ~If you hope for some reward from the Handmaidens, <CHARNAME>, you are sorely mistaken. Matron Ardulace will get all credit... she is your sponsor here, after all.~ */
  IF ~~ THEN EXTERN ~DASLAVE1~ 5
END

IF ~~ THEN BEGIN 176 // from:
  SAY #58177 /* ~Child, you are pathetic. These petty snatch-purses are the weakest of evils, the provenance of children and beggars, more to be pitied, even though they deserve it not. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #58178 /* ~I have encountered few who have given me quarter since I fled my home. You have saved my life on more than one occasion... we have fought and bled together, and I will give my last breath for you, if necessary. But come... glory awaits us.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
END

IF ~~ THEN BEGIN 178 // from:
  SAY #58268 /* ~There is no point in saying what you are going to say, <CHARNAME>. It changes nothing.~ */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #58269 /* ~You are the only one I have encountered since I fled my homeland who has both taken my measure and given me quarter. You have saved my life more than once. We have fought together and bled together... and more.~ */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #58270 /* ~Whether loyalty is a trait you would ascribe to me does not matter. I would offer my last breath in your defense. You are... unique amongst men, and I salute you.~ */
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #58271 /* ~Now let us finish this business you have at hand. The future will deal with... us... as it may.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN 182 // from:
  SAY #58720 /* ~I know well the proper punishment for those called traitor to their kind. You will have as much mercy as I have been shown, Yoshimo. Oloth plynn dos, walking corpse.~ */
  IF ~  !IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("ANOMEN")
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
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 192
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~ANOMENJ~ 306
  IF ~  IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
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
!IsValidForPartyDialogue("AERIE")
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
!IsValidForPartyDialogue("AERIE")
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
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 183 // from:
  SAY #70503 /* ~There is... something in this place, abbil. A most disturbing presence. Walk carefully and trust nothing.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 184 // from:
  SAY #70552 /* ~Do not wet yourself, iblith. I have no inclination of hurting you. If you... I said stand still! Be still, I say! Calm yourself or I shall give you a reason to cringe! I have questions!~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 10
END

IF ~~ THEN BEGIN 185 // from:
  SAY #70540 /* ~So we were to be sacrificed because you were too lazy and weak to do your own task? I say kill him now, <CHARNAME>. Kill them all and let them consider it a lesson learned for crossing you.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 186 // from:
  SAY #70411 /* ~A demon prince is not to be taken lightly, <CHARNAME>... perhaps it would be best to seal this creature in its prison without facing its wrath.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 141
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 533
END

IF ~~ THEN BEGIN 187 // from:
  SAY #70436 /* ~No doubt this spirit's misguided sense of duty will make our task more difficult.~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 188 // from:
  SAY #70438 /* ~Did I not tell you, <CHARNAME>? Duty gets in our way once more!~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 47
END

IF ~~ THEN BEGIN 189 // from:
  SAY #85899 /* ~Did you hear her snickering as well?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 78
END

IF ~~ THEN BEGIN 190 // from:
  SAY #85901 /* ~Tell me, did she sound like a mooing cow? That's how I've always imagined her voice.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 79
END

IF ~~ THEN BEGIN 191 // from:
  SAY #85909 /* ~You give the monk too much credit, <CHARNAME>. Whatever he says or does, his heart will always belong with his Moonmaiden.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 83
END

IF ~~ THEN BEGIN 192 // from:
  SAY #85911 /* ~A nauseatingly banal platitude for one as deep as our monk friend.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 84
END

IF ~~ THEN BEGIN 193 // from:
  SAY #85917 /* ~Come now, <CHARNAME>. It's not as though Selûne's a picky sort.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 86
END

IF ~~ THEN BEGIN 194 // from:
  SAY #85922 /* ~Ach! You make me sad, wael.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 88
END

IF ~~ THEN BEGIN 195 // from:
  SAY #85923 /* ~If you can't, I've a few ideas where you can stick yourself.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 87
END

IF ~~ THEN BEGIN 196 // from:
  SAY #85952 /* ~Hah!~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 97
END

IF ~~ THEN BEGIN 197 // from:
  SAY #85959 /* ~What, no good night for me?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 100
END

IF ~~ THEN BEGIN 198 // from:
  SAY #85961 /* ~You actually believe I care. You never fail to amuse, Rasaad.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 199 // from:
  SAY #85963 /* ~Any excuse to gaze into the depths of your own navel, eh, Rasaad?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 102
END

IF ~~ THEN BEGIN 200 // from:
  SAY #77702 /* ~That must be an appealing notion for those accustomed to Selûne's whimperings.~ */
  IF ~~ THEN EXTERN ~RASAAD~ 27
END

IF ~~ THEN BEGIN 201 // from:
  SAY #77643 /* ~The Moonmaiden. Feh. Selûne is a sickly sister to Shar of the Dark Moon.~ */
  IF ~~ THEN EXTERN ~OHRSSM01~ 35
END

IF ~~ THEN BEGIN 202 // from:
  SAY #87234 /* ~A real beating from a fictitious deity. That would be a good trick.~ */
  IF ~~ THEN EXTERN ~OHRHERAT~ 2
END

IF ~~ THEN BEGIN 203 // from:
  SAY #87238 /* ~Your failure is inarguable, though I doubt you truly understand its nature.~ */
  IF ~~ THEN EXTERN ~OHRHERAT~ 5
END

IF ~~ THEN BEGIN 204 // from:
  SAY #87235 /* ~I am glad to hear you have finally abandoned this Twofold nonsense.~ */
  IF ~~ THEN EXTERN ~OHRHERAT~ 11
END

IF ~~ THEN BEGIN 205 // from:
  SAY #87236 /* ~Those who would be honest must choose between them.~ */
  IF ~~ THEN EXTERN ~OHRHERAT~ 15
END

IF ~~ THEN BEGIN 206 // from:
  SAY #96258 /* ~If you want someone to pity, pity yourself!~ */
  IF ~~ THEN DO ~ActionOverride("OHRHERAT",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 207 // from:
  SAY #79485 /* ~Your grief has driven you mad, monk! Darathon bears not even a passing resemblance to Alorgoth!~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 3
END

IF ~~ THEN BEGIN 208 // from:
  SAY #86213 /* ~The fools who believe Shar and Selûne are different aspects of the same goddess? Send this idiot on her way, <CHARNAME>. You want nothing to do with such silliness.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 341
END

IF ~~ THEN BEGIN 209 // from:
  SAY #86214 /* ~I can't believe we're here. Do you know what you get when you mix light and shadow, <CHARNAME>? NOTHING. Because shadow is as antithetical to light as Shar worship is to Selûne.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #86218 /* ~Enlightened? Impossible. Entertained, perhaps. That is a distinct possibility.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 211 // from:
  SAY #86219 /* ~Hah! That is something I'd like to see.~ */
  IF ~~ THEN EXTERN ~OHRHMONK~ 4
END

IF ~~ THEN BEGIN 212 // from:
  SAY #86510 /* ~The sooner we're finished with this nonsense, the sooner we'll be away from here.~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 6
END

IF ~~ THEN BEGIN 213 // from:
  SAY #86511 /* ~Oh, I highly doubt you've any idea what's going through my mind...~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 8
END

IF ~~ THEN BEGIN 214 // from:
  SAY #86512 /* ~As a farce. It will be revealed as a farce. Mark me, <CHARNAME>, when this is done, you'll regret wasting our time with this foolishness.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 215 // from:
  SAY #86513 /* ~<CHARNAME>, tell me you aren't seriously considering joining these deranged loons.~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 15
END

IF ~~ THEN BEGIN 216 // from:
  SAY #86514 /* ~He's right, you know. Listen well and you'll learn exactly how stupid people can be.~ */
  IF ~~ THEN DO ~ActionOverride("OHRHMKEL",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #86515 /* ~They realized the truth?~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 21
END

IF ~~ THEN BEGIN 218 // from:
  SAY #86516 /* ~You echo the paranoid fantasies of the heretics, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 22
END

IF ~~ THEN BEGIN 219 // from:
  SAY #86517 /* ~By making things up, most like.~ */
  IF ~~ THEN EXTERN ~OHRHMKEL~ 25
END

IF ~~ THEN BEGIN 220 // from:
  SAY #86519 /* ~I've a problem with it.~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 5
END

IF ~~ THEN BEGIN 221 // from:
  SAY #86520 /* ~My prayers have been answered. By Shar. A real goddess who is capable of doing such things.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 222 // from:
  SAY #86521 /* ~Finally, you do the sensible thing!~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 11
END

IF ~~ THEN BEGIN 223 // from:
  SAY #86522 /* ~Were you dropped on your head as a small child?~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 16
END

IF ~~ THEN BEGIN 224 // from:
  SAY #86523 /* ~Evidence of peoples' gullibility, perhaps. Certainly nothing more concrete than that.~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 24
END

IF ~~ THEN BEGIN 225 // from:
  SAY #86524 /* ~Proof? Now that I must see.~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 24
END

IF ~~ THEN BEGIN 226 // from:
  SAY #86525 /* ~A predictable—and understandable—response to exposure as a heretic in the Dark Moon's ranks.~ */
  IF ~~ THEN EXTERN ~OHRHMFEN~ 30
END

IF ~~ THEN BEGIN 227 // from:
  SAY #86526 /* ~Shar's teeth, <CHARNAME>! You actually intend to go through with this, don't you?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #86533 /* ~Just halfway against it, if you believe these heretics' claims.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 355
END

IF ~~ THEN BEGIN 229 // from:
  SAY #86534 /* ~Better I should be struck deaf than to listen to his nonsense. Or better still, that he be struck mute.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 2
END

IF ~~ THEN BEGIN 230 // from:
  SAY #86535 /* ~A remarkable display of good taste on their part.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 359
END

IF ~~ THEN BEGIN 231 // from:
  SAY #86536 /* ~It's unfortunate the advocates of the faith he's adopted cannot say the same.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 360
END

IF ~~ THEN BEGIN 232 // from:
  SAY #86537 /* ~Yes. "Perhaps."~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 361
END

IF ~~ THEN BEGIN 233 // from:
  SAY #86538 /* ~Please, monk, I beg you—spare us the whimpering adoration of your limp and tiresome goddess.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 2
END

IF ~~ THEN BEGIN 234 // from:
  SAY #86539 /* ~"Misguided"? This monk has nerve, I'll give him that.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 364
END

IF ~~ THEN BEGIN 235 // from:
  SAY #86540 /* ~Yes, lay us low in the name of your imagined deity.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_CULT_HOSTILE","GLOBAL",1)
ActionOverride("OHRHHELM",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 236 // from:
  SAY #86541 /* ~You'll find solace in death when the followers of Shar discover your betrayal.~ */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~RASAADJ~ 368
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN EXTERN ~OHRHHELM~ 9
END

IF ~~ THEN BEGIN 237 // from:
  SAY #86542 /* ~Your sorry tales fool no one, heretic!~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 9
END

IF ~~ THEN BEGIN 238 // from:
  SAY #86543 /* ~Of course not. If he were, he'd be held accountable for his lies.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 29
END

IF ~~ THEN BEGIN 239 // from:
  SAY #86544 /* ~Tell me you're joking, <CHARNAME>. You cannot take this nonsense seriously.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 19
END

IF ~~ THEN BEGIN 240 // from:
  SAY #86545 /* ~The critical difference between the two, of course, being that Shar is not the product of some deluded librarian.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 26
END

IF ~~ THEN BEGIN 241 // from:
  SAY #86546 /* ~Come then, see how hollow a threat we are.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 26
END

IF ~~ THEN BEGIN 242 // from:
  SAY #86547 /* ~A coward or a madman. Let us not be too hasty to judge this Darathon.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 32
END

IF ~~ THEN BEGIN 243 // from:
  SAY #86548 /* ~He may as well put the blade 'twixt his own shoulder blades and save the Dark Moon the trouble. Madman or conman, at the very least this Darathon's no fool.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 32
END

IF ~~ THEN BEGIN 244 // from:
  SAY #86549 /* ~You'll what—?~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 35
END

IF ~~ THEN BEGIN 245 // from:
  SAY #86550 /* ~Damn it, <CHARNAME>. We were SO CLOSE to having done with this nonsense...~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 49
END

IF ~~ THEN BEGIN 246 // from:
  SAY #86551 /* ~Any other times and we'd have words over that, <CHARNAME>...~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 53
END

IF ~~ THEN BEGIN 247 // from:
  SAY #86552 /* ~I'd sooner cut my eyes out than open them to this dwarf's truth.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 54
END

IF ~~ THEN BEGIN 248 // from:
  SAY #86553 /* ~Truly? You should have mentioned this sooner...~ */
  IF ~~ THEN REPLY #96106 /* ~Peace, Viconia. We're all friends here.~ */ EXTERN ~OHRHHELM~ 61
END

IF ~~ THEN BEGIN 249 // from:
  SAY #86554 /* ~The answers are wrong, mind—but that never bothered you when you followed the Sun Soul.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 379
END

IF ~~ THEN BEGIN 250 // from:
  SAY #86555 /* ~He has you there, monk. You're a matched pair of fools.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 63
END

IF ~~ THEN BEGIN 251 // from:
  SAY #86556 /* ~I've no intention of losing anything but an evening to this Twofold drivel.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 24
END

IF ~~ THEN BEGIN 252 // from:
  SAY #86558 /* ~You heard the monk. Let us waste no more time here.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 383
END

IF ~~ THEN BEGIN 253 // from:
  SAY #86560 /* ~Have no fear on that account. This lamb hasn't strayed too far from the flock.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 389
END

IF ~~ THEN BEGIN 254 // from:
  SAY #86561 /* ~Very well, <CHARNAME>. I'll play this game a while longer. But my patience is not without limit.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 82
END

IF ~~ THEN BEGIN 255 // from:
  SAY #86563 /* ~In this instance, gullibility is not considered a weakness.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 86
END

IF ~~ THEN BEGIN 256 // from:
  SAY #96202 /* ~The only joke here is—~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 395
END

IF ~~ THEN BEGIN 257 // from:
  SAY #96204 /* ~I'll silence you—~ */
  IF ~~ THEN REPLY #96205 /* ~Let it go, Viconia.~ */ GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY #96206 /* ~But—~ */
  IF ~~ THEN REPLY #96207 /* ~*whispered* We'll discuss it later.~ */ GOTO 259
  IF ~~ THEN REPLY #96208 /* ~*whispered* Not in front of the monks. PLEASE.~ */ GOTO 259
  IF ~~ THEN REPLY #96209 /* ~I said let it go.~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.2 258.1 258.0
  SAY #96210 /* ~This isn't over.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 87
END

IF ~~ THEN BEGIN 260 // from:
  SAY #86564 /* ~Something the Sun Soul shares in common with any sensible person who's endured this cult's indoctrination.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 91
END

IF ~~ THEN BEGIN 261 // from:
  SAY #86565 /* ~Please tell me we're finished humoring these infidels now.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_PLOT","GLOBAL",3)
RevealAreaOnMap("OH4100")
AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
~ EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY #86566 /* ~In fairness, it is no less likely than the existence of your Twofold travesty.~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 102
END

IF ~~ THEN BEGIN 263 // from:
  SAY #86572 /* ~We are on the right course, but we walk in entirely the wrong direction.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #80840 /* ~Would that either of you had my sense, or any sense at all. If you did, we'd never have set eyes on this dismal hole.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #80858 /* ~That is something you should be thanking <PRO_HIMHER> for.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 731
END

IF ~~ THEN BEGIN 266 // from:
  SAY #80867 /* ~Yes. Because the Sun Soul order is famous for its sense of humor.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 743
END

IF ~~ THEN BEGIN 267 // from:
  SAY #86677 /* ~Give them the monk, <CHARNAME>. He ceased to be amusing long ago.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 402
END

IF ~~ THEN BEGIN 268 // from:
  SAY #86678 /* ~Rasaad? Impossible. He hasn't the stomach, daring, or flair to commit such an act.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 406
END

IF ~~ THEN BEGIN 269 // from:
  SAY #86679 /* ~Convenient.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 407
END

IF ~~ THEN BEGIN 270 // from:
  SAY #86680 /* ~Look at their eyes, <CHARNAME>. I know that darkness of old. There will be no reasoning with them.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 412
END

IF ~~ THEN BEGIN 271 // from:
  SAY #86681 /* ~A sadder claim for the Sun Soul, I cannot imagine.~ */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 21
END

IF ~~ THEN BEGIN 272 // from:
  SAY #86682 /* ~Madness.~ */
  IF ~~ THEN EXTERN ~OHRGHELL~ 7
END

IF ~~ THEN BEGIN 273 // from:
  SAY #86683 /* ~A familiar feeling for any follower of the Sun Soul philosophy, surely?~ */
  IF ~~ THEN EXTERN ~OHRTREYA~ 10
END

IF ~~ THEN BEGIN 274 // from:
  SAY #86684 /* ~Indeed. That time was thirty seconds ago.~ */
  IF ~~ THEN EXTERN ~OHRSAHAN~ 17
END

IF ~~ THEN BEGIN 275 // from:
  SAY #86685 /* ~I scarcely think THAT's possible.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 276 // from:
  SAY #86687 /* ~Or stay. We're not all so squeamish about your feelings.~ */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 60
END

IF ~~ THEN BEGIN 277 // from:
  SAY #86688 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 278 // from:
  SAY #86689 /* ~It is but a shadow of the gratitude I'll have should your ceaseless whining ever end.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 279 // from:
  SAY #96213 /* ~Enough! I'll hear no more of this heresy!~ */
  IF ~~ THEN REPLY #96214 /* ~I fear you'll hear much more if you're to continue forward with me.~ */ GOTO 286
  IF ~~ THEN REPLY #96215 /* ~One <PRO_MANWOMAN>'s heresy is another's truth, Viconia.~ */ GOTO 280
  IF ~~ THEN REPLY #96216 /* ~You cannot close yourself off from the world, much as you might wish to.~ */ GOTO 287
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #96217 /* ~There is no truth in the Twofold. Renounce it now or you renounce me.~ */
  IF ~~ THEN REPLY #96218 /* ~Very well. I renounce the Twofold. Are you satisfied?~ */ EXTERN ~RASAADJ~ 456
  IF ~~ THEN REPLY #96219 /* ~You would make me choose?~ */ GOTO 284
  IF ~~ THEN REPLY #96220 /* ~I do not respond well to ultimatums, Viconia.~ */ GOTO 285
END

IF ~~ THEN BEGIN 281 // from:
  SAY #96230 /* ~The Selûnite can keep an open mind. Let it be filled with foolish ideas and lies. I'll not be turned from my goddess.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 459
END

IF ~~ THEN BEGIN 282 // from:
  SAY #96232 /* ~I do.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 457
END

IF ~~ THEN BEGIN 283 // from:
  SAY #96233 /* ~To lies that should never be considered.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 464
END

IF ~~ THEN BEGIN 284 // from: 280.1
  SAY #96234 /* ~There is no choice to make.~ */
  IF ~~ THEN REPLY #96235 /* ~If there were, I would choose you, of course. I renounce the Twofold Trust and all its lies. Are you satisfied now?~ */ EXTERN ~RASAADJ~ 456
  IF ~~ THEN REPLY #96236 /* ~Your presence in the group is causing more tension than it's worth. I'm afraid this is where we part ways, Viconia.~ */ GOTO 285
  IF ~~ THEN REPLY #96237 /* ~You are right. I am sorry, Rasaad, but if you intend to pursue the Twofold path—for vengeance or any other reason—then you will do so alone.~ */ EXTERN ~RASAADJ~ 460
END

IF ~~ THEN BEGIN 285 // from: 288.0 287.3 284.1 280.2
  SAY #96240 /* ~You would dismiss me for calling lies what they are?~ */
  IF ~~ THEN REPLY #96241 /* ~I dismiss you because I would see Rasaad's journey through to a safe end. Your presence makes that difficult, if not impossible.~ */ GOTO 286
  IF ~~ THEN REPLY #96242 /* ~The world is not so black and white as you would have it, Viconia. If you cannot see things in their full complexity, you have no place with me.~ */ GOTO 286
  IF ~~ THEN REPLY #96243 /* ~You should not have forced my hand, drow. Now you suffer the consequences of that decision.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.2 285.1 285.0 279.0
  SAY #96244 /* ~Fine! Take Selûne's handmaiden and be off with you. I've better things to do than waste my time with fools and heretics.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0800",496,1090,SE)
~ EXIT
END

IF ~~ THEN BEGIN 287 // from: 279.2
  SAY #96245 /* ~I do not seek to close myself off to the world—just these damnable Twofold lies.~ */
  IF ~~ THEN REPLY #96246 /* ~How can you be sure they are lies?~ */ GOTO 289
  IF ~~ THEN REPLY #96247 /* ~Fair enough. But you can't expect others to ignore them on your account.~ */ EXTERN ~RASAADJ~ 462
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN REPLY #96248 /* ~Begone, then. I've no use for one who will not even consider new viewpoints.~ */ EXTERN ~NALIAJ~ 323
  IF ~  !IsValidForPartyDialogue("NALIA")
~ THEN REPLY #96248 /* ~Begone, then. I've no use for one who will not even consider new viewpoints.~ */ GOTO 285
END

IF ~~ THEN BEGIN 288 // from:
  SAY #96250 /* ~Oh, please shut up.~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 289 // from: 287.0
  SAY #96251 /* ~I know the truth of Shar. I've felt it in my life and my works. And I tell you this: There is no truth in this heresy!~ */
  IF ~~ THEN REPLY #96252 /* ~Not for you, perhaps.~ */ GOTO 290
  IF ~~ THEN REPLY #96253 /* ~Things aren't as black and white as you want them to be, Viconia.~ */ GOTO 291
  IF ~~ THEN REPLY #96254 /* ~One who doesn't seek the truth will never find it.~ */ GOTO 291
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #96255 /* ~Not for anyone. Even the Moonmaiden's boy here must see the lies for what they are.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 462
END

IF ~~ THEN BEGIN 291 // from: 289.2 289.1
  SAY #96257 /* ~A coward's words, spoken by one unwilling or afraid to accept reality.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 462
END

IF ~~ THEN BEGIN 292 // from:
  SAY #86692 /* ~Hah! Nothing tempts the monk—nothing but the possibility of vengeance.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 473
END

IF ~~ THEN BEGIN 293 // from:
  SAY #86693 /* ~Ideally, I'd not have to listen to this milksop's endless whining over his brother's death.~ */
  IF ~~ THEN EXTERN ~OHRGHELL~ 10
END

IF ~~ THEN BEGIN 294 // from:
  SAY #86694 /* ~Yet it's something you never seem to tire of...~ */
  IF ~~ THEN EXTERN ~OHRGHELL~ 13
END

IF ~~ THEN BEGIN 295 // from:
  SAY #86898 /* ~This entire place is a jest...~ */
  IF ~~ THEN EXTERN ~OHRHGUA1~ 15
END

IF ~~ THEN BEGIN 296 // from:
  SAY #86899 /* ~Watch yours, human.~ */
  IF ~~ THEN EXTERN ~OHRHGUA1~ 15
END

IF ~~ THEN BEGIN 297 // from:
  SAY #86900 /* ~Thank you for the demonstration. Idiot.~ */
  IF ~~ THEN DO ~ActionOverride("OHRHGUA1",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 298 // from:
  SAY #86927 /* ~Don't strain yourself.~ */
  IF ~~ THEN EXTERN ~OHRHGUA1~ 42
END

IF ~~ THEN BEGIN 299 // from:
  SAY #87222 /* ~She's more likely to grimace.~ */
  IF ~~ THEN EXTERN ~RASAADP~ 3
END

IF ~~ THEN BEGIN 300 // from:
  SAY #87240 /* ~They will serve you better than a working brain, though.~ */
  IF ~~ THEN EXTERN ~OHRHGUA2~ 18
END

IF ~~ THEN BEGIN 301 // from:
  SAY #87241 /* ~Hm. It seems the heretics are not entirely wrong about EVERYthing...~ */
  IF ~~ THEN EXTERN ~OHRHGUA2~ 18
END

IF ~~ THEN BEGIN 302 // from:
  SAY #87242 /* ~Please, <CHARNAME>, I beg you—tell me we have reached the end of this ridiculous Twofold nonsense.~ */
  IF ~  InParty("rasaad")
~ THEN DO ~AddJournalEntry(85041,INFO)
~ EXIT
  IF ~  !InParty("rasaad")
~ THEN DO ~AddJournalEntry(85042,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 303 // from:
  SAY #87243 /* ~A false invention of a lunatic or con man, and starved for followers on top of it. Who could possibly resist the charms of this Twofold cult?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 304 // from:
  SAY #87244 /* ~Their trespasses against the cult must have been severe indeed.~ */
  IF ~~ THEN EXTERN ~OHRBSSM1~ 0
END

IF ~~ THEN BEGIN 305 // from:
  SAY #87245 /* ~To put it mildly.~ */
  IF ~~ THEN EXTERN ~OHRBSSM1~ 3
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 509
END

IF ~~ THEN BEGIN 306 // from:
  SAY #87246 /* ~Do not be so quick to judge, <CHARNAME>. It's not as though we deal with rational people here.~ */
  IF ~~ THEN EXTERN ~OHRBSSM1~ 3
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 509
END

IF ~~ THEN BEGIN 307 // from:
  SAY #87247 /* ~Enjoy your pointless torment!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #87248 /* ~It is amazing how being tied to the ground and exposed to the elements for an extended period of time opens the mind.~ */
  IF ~~ THEN EXTERN ~OHRBSSM2~ 6
END

IF ~~ THEN BEGIN 309 // from:
  SAY #87249 /* ~Your own idiocy did that long ago.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #87250 /* ~But she is perfectly satisfied with the naive, the stupid, and the mad.~ */
  IF ~~ THEN EXTERN ~OHRSLARA~ 0
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 510
END

IF ~~ THEN BEGIN 311 // from:
  SAY #87251 /* ~It saddens me that a bear is the most intelligent person you're likely to find 'round here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #87252 /* ~Shar's teeth. We have traveled to the middle of nowhere on the word of a madman.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 1
END

IF ~~ THEN BEGIN 313 // from:
  SAY #87253 /* ~Now? Now is the time you choose to recognize the foolishness of this effort?~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 7
END

IF ~~ THEN BEGIN 314 // from:
  SAY #87254 /* ~And they will present themselves somewhere other than here. Which, not coincidentally, is where we should also be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 315 // from:
  SAY #87255 /* ~This is madness, <CHARNAME>. We should not be here.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 10
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 247
END

IF ~~ THEN BEGIN 316 // from:
  SAY #87256 /* ~Are you finished with this absurd charade now, <CHARNAME>? Because I certainly am.~ */
  IF ~~ THEN REPLY #96262 /* ~Have patience, Viconia. All is not as it seems.~ */ GOTO 317
  IF ~~ THEN REPLY #96263 /* ~It is a charade, but it's not so absurd.~ */ GOTO 321
  IF ~~ THEN REPLY #96264 /* ~Don't be silly, Viconia. Do you not see what I'm doing here?~ */ GOTO 318
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #96265 /* ~You ask me to have patience?~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 318 // from: 316.2
  SAY #96266 /* ~You're embracing heresy on your pet monk's behalf—and you're calling me silly, which is possibly an even greater mistake.~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0 317.0
  SAY #87257 /* ~No. I have come this far with you, <CHARNAME>, but I'll go no further. This place will feel Shar's wrath, you mark my words. I'll not suffer the same fate as these Twofold fools.~ */
  IF ~~ THEN REPLY #96267 /* ~You're right. Let's get out of here.~ */ DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #96268 /* ~Fools have their uses.~ */ GOTO 320
  IF ~~ THEN REPLY #96269 /* ~Their fate remains to be seen.~ */ GOTO 321
END

IF ~~ THEN BEGIN 320 // from: 321.1 319.1
  SAY #96270 /* ~What are you— Ah.~ */
  IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 321 // from: 319.2 316.1
  SAY #96271 /* ~You clearly see something I don't—or perhaps you simply see what you want to.~ */
  IF ~~ THEN REPLY #96272 /* ~These people have made a terrible mistake. But they are not beyond redemption.~ */ GOTO 328
  IF ~~ THEN REPLY #96273 /* ~Your devotion to the Dark Goddess blinds you to the potential this Twofold Order holds. These monks' faith is weak. They are willing to follow a strong leader. That leader doesn't have to be Darathon.~ */ GOTO 320
  IF ~~ THEN REPLY #96274 /* ~I see an opportunity for power. I'd think you'd be able to appreciate that.~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.2 320.0
  SAY #96275 /* ~I'm beginning to see now. You will use the Selûnite to gain a foothold in the Twofold Order...~ */
  IF ~~ THEN REPLY #96276 /* ~And together, Rasaad and I will redeem the heretics.~ */ GOTO 328
  IF ~~ THEN REPLY #96277 /* ~All the better to destroy it.~ */ GOTO 324
  IF ~~ THEN REPLY #96278 /* ~And once I've got it, I will take it over.~ */ GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 322.2
  SAY #96279 /* ~A new order, serving the will of the Bhaalspawn...~ */
  IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 322.1
  SAY #96280 /* ~Why didn't you tell me this from the beginning?~ */
  IF ~~ THEN REPLY #96281 /* ~I don't owe you an explanation for my actions.~ */ GOTO 330
  IF ~~ THEN REPLY #96282 /* ~You understand the value of secrets.~ */ GOTO 325
  IF ~~ THEN REPLY #96283 /* ~I'd expect a fool like Rasaad not to understand what I was doing, but I thought it'd be obvious to you.~ */ GOTO 326
END

IF ~~ THEN BEGIN 325 // from: 324.1
  SAY #96284 /* ~I do at that. Very well. I'll continue with you—for now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 326 // from: 324.2
  SAY #96285 /* ~You're too clever by half, <CHARNAME>. I halfway think you just made a justification for this nonsense up on the spot, just to satisfy me.~ */
  IF ~~ THEN REPLY #96286 /* ~And are you satisfied?~ */ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #96287 /* ~For now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 328 // from: 322.0 321.0
  SAY #96288 /* ~Redemption. They are heretics to Shar and Selûne alike. They will pay for their sins—but I most certainly will not. I will leave this place now. Come with me now, before it's too late.~ */
  IF ~~ THEN REPLY #96289 /* ~I cannot.~ */ GOTO 329
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #96290 /* ~You are as wise as you are beautiful. Let's get the hell out of here.~ */ EXTERN ~RASAADJ~ 528
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #96290 /* ~You are as wise as you are beautiful. Let's get the hell out of here.~ */ EXIT
  IF ~~ THEN REPLY #96291 /* ~I will see this through to the end. I owe Rasaad that much.~ */ GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.3 328.0
  SAY #96292 /* ~Then you are a fool. I'll not share your fate. Farewell.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 330 // from: 324.0
  SAY #96293 /* ~Perhaps not. But not explaining your actions very nearly cost you a valuable ally.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 331 // from:
  SAY #87258 /* ~I hope this spells the end of this absurd charade, <CHARNAME>. I know I, for one, am finished with it.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXIT
END

IF ~~ THEN BEGIN 332 // from:
  SAY #87259 /* ~Wait—you believe the monk? We shall have words about this, <CHARNAME>. Count on it.~ */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN EXTERN ~OHRMOCOM~ 21
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN EXTERN ~OHRMOCOM~ 22
END

IF ~~ THEN BEGIN 333 // from:
  SAY #87261 /* ~Damn you, <CHARNAME>. I trusted you, and look what you've led me to!~ */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 62
END

IF ~~ THEN BEGIN 334 // from:
  SAY #87262 /* ~What madness is this now? The monk was right, Alorgoth and Darathon are one and the same?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 642
END

IF ~~ THEN BEGIN 335 // from:
  SAY #87263 /* ~Master Alorgoth! Please, hear my words!~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 11
END

IF ~~ THEN BEGIN 336 // from:
  SAY #87265 /* ~I am Viconia DeVir, a true and loyal servant of Shar.~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 12
END

IF ~~ THEN BEGIN 337 // from:
  SAY #87267 /* ~To Shar and Shar alone, I swear it! I came here only to see the heretics rooted out of their hiding place.~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 13
END

IF ~~ THEN BEGIN 338 // from:
  SAY #87269 /* ~I... I...~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 14
END

IF ~~ THEN BEGIN 339 // from:
  SAY #87270 /* ~Forgive me, <CHARNAME>~ */
  IF ~~ THEN DO ~SetGlobal("OHR_PLOT","GLOBAL",5)
UnhideGUI()
EndCutSceneMode()
ActionOverride("OHRALOR",EscapeArea())
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 340 // from:
  SAY #87272 /* ~One is more than I am willing to fight on this wretched cult's account. Come, <CHARNAME>—we must flee while there is still time!~ */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 1
END

IF ~~ THEN BEGIN 341 // from:
  SAY #87273 /* ~This fool would not know the back of his hand if it slapped him. His judgment is worthless. Let us be away from here, now!~ */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 48
END

IF ~~ THEN BEGIN 342 // from:
  SAY #87274 /* ~A refreshingly sensible course of action. Let us waste no time in its implementation.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~RASAADJ~ 575
END

IF ~~ THEN BEGIN 343 // from:
  SAY #87275 /* ~If you expect me to attack the followers of Shar, then I guess you do not know me as I well as I thought.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~RASAADJ~ 587
END

IF ~~ THEN BEGIN 344 // from:
  SAY #87276 /* ~That is an opportunity that might never come. We must leave now if we've any hope of escaping the Dark Moon.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~RASAADJ~ 574
END

IF ~~ THEN BEGIN 345 // from:
  SAY #87277 /* ~I'll not cringe in some corner, hoping my own people pass me by. I am leaving now. If this place hasn't dulled your wit to complete insensibility, you will join me.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~RASAADJ~ 576
END

IF ~~ THEN BEGIN 346 // from:
  SAY #87279 /* ~One is more than I am willing to fight on this wretched cult's account. Come, <CHARNAME>—we must flee while there is still time!~ */
  IF ~~ THEN EXTERN ~OHRTWOFO~ 4
END

IF ~~ THEN BEGIN 347 // from:
  SAY #87280 /* ~This fool would not know the back of his hand if it slapped him. His judgment is worthless. Let us be away from here, now!~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 55
END

IF ~~ THEN BEGIN 348 // from:
  SAY #87281 /* ~You are mad, <CHARNAME>! I will not sacrifice myself on the altar of this false goddess, and damn you if you think different!~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 59
END

IF ~~ THEN BEGIN 349 // from:
  SAY #87282 /* ~I'll not cringe in some corner, hoping my own people pass me by. I am leaving now. If this place hasn't dulled your wit to complete insensibility, you will join me.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 58
  IF ~  CheckStatGT(Player1,13,CHR)
CheckStatGT(Player1,13,STR)
~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 57
END

IF ~~ THEN BEGIN 350 // from:
  SAY #87283 /* ~You certainly won't stand with me if you remain here.~ */
  IF ~~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 58
  IF ~  CheckStatGT(Player1,13,CHR)
CheckStatGT(Player1,13,STR)
~ THEN DO ~SetGlobalTimer("OHR_TIMER_VICONIA_LEAVES","GLOBAL",TEN_ROUNDS)
~ EXTERN ~OHRMOCOM~ 57
END

IF ~~ THEN BEGIN 351 // from:
  SAY #87284 /* ~Shar's teeth... are about to bite down upon us.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 644
END

IF ~~ THEN BEGIN 352 // from:
  SAY #87261 /* ~Damn you, <CHARNAME>. I trusted you, and look what you've led me to!~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 33
END

IF ~~ THEN BEGIN 353 // from:
  SAY #87285 /* ~What madness is this now? The monk was right, Alorgoth and Darathon are one and the same?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 652
END

IF ~~ THEN BEGIN 354 // from:
  SAY #87285 /* ~What madness is this now? The monk was right, Alorgoth and Darathon are one and the same?~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 17
END

IF ~~ THEN BEGIN 355 // from:
  SAY #87286 /* ~Master Alorgoth! Please, hear my words!~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 19
END

IF ~~ THEN BEGIN 356 // from:
  SAY #87294 /* ~I am Viconia DeVir, a true and loyal servant of Shar.~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 20
END

IF ~~ THEN BEGIN 357 // from:
  SAY #87289 /* ~To Shar and Shar alone, I swear it! I came here only to see the heretics rooted out of their hiding place.~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 21
END

IF ~~ THEN BEGIN 358 // from:
  SAY #87291 /* ~I... I...~ */
  IF ~~ THEN EXTERN ~OHRALOR~ 22
END

IF ~~ THEN BEGIN 359 // from:
  SAY #87292 /* ~Forgive me, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_PLOT","GLOBAL",5)
UnhideGUI()
EndCutSceneMode()
ActionOverride("OHRALOR",EscapeArea())
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 360 // from:
  SAY #87295 /* ~Please, <CHARNAME>—save the questions till we're well away from here.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 49
END

IF ~~ THEN BEGIN 361 // from:
  SAY #87296 /* ~Damn you for making me choose 'twixt you and my fellow Sharrans, <CHARNAME>!~ */
  IF ~~ THEN DO ~SetGlobal("OHR_PLOT","GLOBAL",5)
UnhideGUI()
EndCutSceneMode()
ActionOverride("OHRALOR",EscapeArea())
LeaveParty()
Enemy()
~ EXIT
  IF ~  OR(3)
CheckStatGT(Player1,13,CHR)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~OHRCOLLU~ 51
END

IF ~~ THEN BEGIN 362 // from:
  SAY #87390 /* ~And in Shar's eyes, I am surely damned.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 655
END

IF ~~ THEN BEGIN 363 // from:
  SAY #87391 /* ~After all he's done, you need to ask? ~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 660
END

IF ~~ THEN BEGIN 364 // from:
  SAY #87393 /* ~How you can spout such platitudes without sickening yourself is beyond me, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 659
END

IF ~~ THEN BEGIN 365 // from:
  SAY #87396 /* ~The man who turned to a false goddess offers a purpose. That is rich.~ */
  IF ~~ THEN EXTERN ~OHRMOCOM~ 69
END

IF ~~ THEN BEGIN 366 // from:
  SAY #87399 /* ~He's not fit to lead a flock of sheep—not that these sheep seem particular about their shepherd.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 674
END

IF ~~ THEN BEGIN 367 // from:
  SAY #87401 /* ~This prancing fool is not worthy to stand with a beaten dog, much less us. For your sake, <CHARNAME>, I shall tolerate his presence... for now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 368 // from:
  SAY #87402 /* ~You cannot be serious, <CHARNAME>. His heart has done nothing BUT lead him wrong.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 669
END

IF ~~ THEN BEGIN 369 // from:
  SAY #87404 /* ~Who better? Alorgoth invented this ridiculous cult, after all. Why shouldn't his hand-chosen pawn lead it?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 681
END

IF ~~ THEN BEGIN 370 // from:
  SAY #87434 /* ~If it rids us of the monk, you can count me as for it.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 700
END

IF ~~ THEN BEGIN 371 // from:
  SAY #87435 /* ~Still they sing their fool goddess's praises. Unbelievable. And I mean that in every possible way. ~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 701
END

IF ~~ THEN BEGIN 372 // from:
  SAY #87436 /* ~After all he's done, you need to ask? ~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 706
END

IF ~~ THEN BEGIN 373 // from:
  SAY #87437 /* ~How you can spout such trite clichés without sickening yourself is beyond me, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 705
END

IF ~~ THEN BEGIN 374 // from:
  SAY #87438 /* ~Not that you could fall much further.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 705
END

IF ~~ THEN BEGIN 375 // from:
  SAY #87439 /* ~Rasaad? He couldn't lead a flock of sheep—not that this flock is picky when it comes to their shepherd.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 709
END

IF ~~ THEN BEGIN 376 // from:
  SAY #87440 /* ~Seriously? His heart has brought him nothing but grief and despair thus far.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 713
END

IF ~~ THEN BEGIN 377 // from:
  SAY #87441 /* ~This prancing fool is not worthy to stand with a beaten dog, much less with us. For your sake <CHARNAME>, I shall tolerate his presence... for now.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 410 414 419 420 425 427 even though they appear after this state */
~  Global("cd_viccy_oh4000","LOCALS",2)
~ THEN BEGIN 378 // from:
  SAY #96134 /* ~A word in private, <CHARNAME>?~ */
  IF ~~ THEN REPLY #96135 /* ~Of course, Viconia.~ */ DO ~SetGlobal("cd_viccy_oh4000","LOCALS",3)
~ GOTO 381
  IF ~~ THEN REPLY #96136 /* ~Is this really the time?~ */ DO ~SetGlobal("cd_viccy_oh4000","LOCALS",3)
~ GOTO 379
  IF ~~ THEN REPLY #96137 /* ~Not now.~ */ DO ~SetGlobal("cd_viccy_oh4000","LOCALS",3)
~ GOTO 379
END

IF ~~ THEN BEGIN 379 // from: 378.2 378.1
  SAY #96138 /* ~We can talk now, or never again.~ */
  IF ~~ THEN REPLY #96139 /* ~I guess we'll talk now, then.~ */ GOTO 381
  IF ~~ THEN REPLY #96140 /* ~Very well. What do you want?~ */ GOTO 381
  IF ~~ THEN REPLY #96141 /* ~I might live without your nagging? A tempting prospect...~ */ GOTO 380
END

IF ~~ THEN BEGIN 380 // from: 379.2
  SAY #96142 /* ~This is no laughing matter!~ */
  IF ~~ THEN GOTO 381
END

IF ~~ THEN BEGIN 381 // from: 380.0 379.1 379.0 378.0
  SAY #96143 /* ~You must realize this Twofold Heresy is nonsense. You do realize that, don't you?~ */
  IF ~~ THEN REPLY #96144 /* ~Of course it's nonsense. All religion is.~ */ GOTO 399
  IF ~~ THEN REPLY #96145 /* ~You're too quick to discount alternative points of view.~ */ GOTO 382
  IF ~~ THEN REPLY #96146 /* ~Of course.~ */ GOTO 396
END

IF ~~ THEN BEGIN 382 // from: 381.1
  SAY #96147 /* ~And you're too quick to consider them. Any fool can claim to speak for the gods.~ */
  IF ~~ THEN REPLY #96148 /* ~If they don't actually speak for the gods, I trust the gods would deal with them in short order.~ */ GOTO 383
  IF ~~ THEN REPLY #96149 /* ~Too true. What makes you think Alorgoth speaks the truth while Collus Darathon does not? Is there any difference between them, really?~ */ GOTO 384
  IF ~~ THEN REPLY #96150 /* ~And some of them actually do so.~ */ GOTO 401
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #96151 /* ~Perhaps, if and when they notice. And when they do, they might treat the servants as they do the master.~ */
  IF ~~ THEN REPLY #96153 /* ~Bring them on. I have no fear of the gods.~ */ GOTO 402
END

IF ~~ THEN BEGIN 384 // from: 382.1
  SAY #96154 /* ~Alorgoth is the Doom Bringer—a champion of Shar. By promoting his heresy, Collus Darathon also brings doom, though he may not realize it.~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 402.0 401.0 399.2 384.0
  SAY #96155 /* ~Rasaad is a broken man—you must see that. And you must abandon his idiot quest before it's too late.~ */
  IF ~~ THEN REPLY #96156 /* ~Rasaad is a friend. I'll not abandon him.~ */ GOTO 393
  IF ~~ THEN REPLY #96157 /* ~I'm not ON his idiot quest.~ */ GOTO 387
  IF ~~ THEN REPLY #96158 /* ~Oh, Viconia. You think you're so very clever, and yet you're so, so blind.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.2
  SAY #96159 /* ~I'm not the one walking toward destruction with their arms open to embrace it.~ */
  IF ~~ THEN REPLY #96160 /* ~I seek only enlightenment.~ */ GOTO 403
  IF ~~ THEN REPLY #96161 /* ~I embrace the power this cult has to offer. Not its lunatic teachings.~ */ GOTO 388
  IF ~~ THEN REPLY #96162 /* ~Are you so naive? Do you truly think me so foolish?~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 396.2 386.2 385.1
  SAY #96163 /* ~What?~ */
  IF ~~ THEN REPLY #96164 /* ~I'm playing a game, Viconia. I want to see how far Rasaad will go in his quest for vengeance.~ */ GOTO 389
  IF ~~ THEN REPLY #96165 /* ~I don't believe the heresy. That doesn't mean I can't exploit it.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 398.0 397.1 387.1 386.1
  SAY #96166 /* ~You seek to manipulate the cult...~ */
  IF ~~ THEN REPLY #96167 /* ~Now you're getting it.~ */ GOTO 389
  IF ~~ THEN REPLY #96168 /* ~By the time this is over, they'll fetch my slippers.~ */ GOTO 389
  IF ~~ THEN REPLY #96169 /* ~Of course. What else could I be doing?~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 397.0 388.2 388.1 388.0 387.0
  SAY #96170 /* ~Oh... This I like.~ */
  IF ~~ THEN REPLY #96171 /* ~I thought you might.~ */ GOTO 391
  IF ~~ THEN REPLY #96172 /* ~So you'll do this thing with me?~ */ GOTO 390
  IF ~~ THEN REPLY #96173 /* ~Good. I trust we'll not have to speak of this again?~ */ GOTO 390
END

IF ~~ THEN BEGIN 390 // from: 389.2 389.1
  SAY #96174 /* ~If what you say is true, I am with you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 391 // from: 389.0
  SAY #96175 /* ~All right, <CHARNAME>. I am with you, for now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 392 // from: 404.0 403.0 393.0
  SAY #96176 /* ~Me or the monk, <CHARNAME>. Make your choice.~ */
  IF ~~ THEN REPLY #96177 /* ~If I must choose, I choose you, of course.~ */ GOTO 395
  IF ~~ THEN REPLY #96178 /* ~Farewell, Viconia.~ */ GOTO 394
END

IF ~~ THEN BEGIN 393 // from: 385.0
  SAY #96179 /* ~Then you would abandon me.~ */
  IF ~~ THEN REPLY #96180 /* ~Not willingly.~ */ GOTO 392
END

IF ~~ THEN BEGIN 394 // from: 392.1
  SAY #96181 /* ~Madness—! When you come to your senses—if you survive long enough to come to your senses—you know where to find me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 395 // from: 392.0
  SAY #96182 /* ~You've made the right move.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 396 // from: 400.0 399.1 381.2
  SAY #96183 /* ~Then why do you invite our destruction by humoring the monk's foolishness?~ */
  IF ~~ THEN REPLY #96184 /* ~Is that what you think I'm doing?~ */ GOTO 397
  IF ~~ THEN REPLY #96185 /* ~Every <PRO_GIRLBOY> needs a hobby.~ */ GOTO 404
  IF ~~ THEN REPLY #96186 /* ~Are you so naive? Do you truly think me so foolish?~ */ GOTO 387
END

IF ~~ THEN BEGIN 397 // from: 396.0
  SAY #96187 /* ~It certainly appears that way.~ */
  IF ~~ THEN REPLY #96188 /* ~I'm playing a game, Viconia. I want to see how far Rasaad will go in his quest for vengeance.~ */ GOTO 389
  IF ~~ THEN REPLY #96189 /* ~I don't believe the heresy. That doesn't mean I can't exploit it.~ */ GOTO 388
  IF ~~ THEN REPLY #96190 /* ~Appearances can be deceiving. It's my favorite thing about them.~ */ GOTO 398
END

IF ~~ THEN BEGIN 398 // from: 397.2
  SAY #96191 /* ~But why would you— Oh. I think I understand.~ */
  IF ~~ THEN GOTO 388
END

IF ~~ THEN BEGIN 399 // from: 381.0
  SAY #96192 /* ~Watch yourself, <CHARNAME>.~ */
  IF ~~ THEN REPLY #96193 /* ~Forgive me, Viconia. I forgot who I was talking to.~ */ GOTO 400
  IF ~~ THEN REPLY #96194 /* ~Oh, loosen up. I was just trying to point out that I don't believe the heresy.~ */ GOTO 396
  IF ~~ THEN REPLY #96195 /* ~Don't take that tone with me, drow.~ */ GOTO 385
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #96196 /* ~So you believe the heresy is foolishness.~ */
  IF ~~ THEN GOTO 396
END

IF ~~ THEN BEGIN 401 // from: 382.2
  SAY #96197 /* ~Some. But not this Darathon.~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 402 // from: 383.0
  SAY #96198 /* ~Shar's teeth! You're as mad as the monk!~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 403 // from: 386.0
  SAY #96199 /* ~And you think you'll find it in this heresy? You're as mad as Rasaad!~ */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 404 // from: 396.1
  SAY #96200 /* ~You and Rasaad deserve each other, <CHARNAME>. You're both utterly mad.~ */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 405 // from:
  SAY #86557 /* ~A false goddess and the wrath of TWO orders of warrior monks. What more could you want?~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 309
END

IF ~~ THEN BEGIN 406 // from:
  SAY #96104 /* ~And now I'll send you to them, fool!~ */
  IF ~~ THEN DO ~SetGlobal("OHRCUT01","AR2000",2)
ActionOverride("OHRSSM01",Enemy())
ActionOverride("OHRTREYA",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 407 // from:
  SAY #80826 /* ~That is the best idea I've heard all <DAYNIGHTALL>.~ */
  IF ~~ THEN EXTERN ~OHRBULL1~ 5
END

IF ~~ THEN BEGIN 408 // from:
  SAY #74684 /* ~I care nothing for weddings anymore. Four were more than enough.~ */
  IF ~~ THEN REPLY #74685 /* ~That's what they all say.~ */ EXTERN ~OHDDOOR1~ 1
  IF ~~ THEN REPLY #74686 /* ~Come now, Viconia. Even you must entertain the possibility of love.~ */ GOTO 409
END

IF ~~ THEN BEGIN 409 // from: 408.1
  SAY #74687 /* ~I know the reality of men's lust, <CHARNAME>. I'll believe in love when I see it.~ */
  IF ~~ THEN EXTERN ~OHDDOOR1~ 1
END

IF WEIGHT #5 ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 410 // from:
  SAY #75733 /* ~Remind me again why I'm here, <CHARNAME>?~ */
  IF ~  !IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75734 /* ~I'm having trouble remembering myself, Viconia.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75734 /* ~I'm having trouble remembering myself, Viconia.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75734 /* ~I'm having trouble remembering myself, Viconia.~ */ EXTERN ~NEERAJ~ 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #75734 /* ~I'm having trouble remembering myself, Viconia.~ */ EXTERN ~DORNJ~ 502
END

IF ~~ THEN BEGIN 411 // from:
  SAY #77139 /* ~The demon speaks true. Its kind are powerless to break an oath, once made.~ */
  IF ~~ THEN REPLY #77140 /* ~So you'll swear an oath to give us the sword, the summoning stones, the wealth, and also let us proceed unhindered through the gorge?~ */ EXTERN ~OHDXACH~ 32
END

IF ~~ THEN BEGIN 412 // from:
  SAY #77142 /* ~The tanar'ri speaks true. Its kind are powerless to break an oath, once made.~ */
  IF ~~ THEN REPLY #77143 /* ~So you'll swear an oath to give us the sword, the stones, and great wealth?~ */ EXTERN ~OHDXACH~ 31
END

IF ~~ THEN BEGIN 413 // from:
  SAY #77339 /* ~Curse you, Dorn! You've brought a marilith down on our heads.~ */
  IF ~~ THEN REPLY #77340 /* ~Calm yourself, Viconia. ~ */ DO ~SetGlobal("ohd_azothet_reveal","OH5120",1)
~ EXIT
END

IF WEIGHT #6 ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 414 // from:
  SAY #77501 /* ~Reminds me of home...~ */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 56
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 771
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 236
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 266
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 129
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 17
END

IF ~~ THEN BEGIN 415 // from:
  SAY #74804 /* ~Dorn's right. If people find out what we've been party to, we're done for. It's not like they'll give a drow the benefit of any doubt.~ */
  IF ~~ THEN EXTERN ~OHDBRIDE~ 0
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 198
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 239
END

IF ~~ THEN BEGIN 416 // from:
  SAY #74804 /* ~Dorn's right. If people find out what we've been party to, we're done for. It's not like they'll give a drow the benefit of any doubt.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 538
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 199
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 240
END

IF ~~ THEN BEGIN 417 // from:
  SAY #74847 /* ~Well, that was some enjoyable sport. More fun than a barrel of monkeys.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 318
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 200
END

IF ~~ THEN BEGIN 418 // from:
  SAY #96587 /* ~You're not <CHARNAME>'s type, half-orc. He prefers a more tender embrace.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 123
END

IF WEIGHT #7 ~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 419 // from:
  SAY #96639 /* ~Ula t'yin, wael. You disgust me. ~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
  IF ~  IsValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 3
  IF ~  IsValidForPartyDialogue("neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~NEERAJ~ 19
  IF ~  IsValidForPartyDialogue("jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~JAHEIRAJ~ 541
  IF ~  IsValidForPartyDialogue("aerie")
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~AERIEJ~ 227
  IF ~  IsValidForPartyDialogue("anomen")
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~ANOMENJ~ 325
END

IF WEIGHT #8 ~  Global("OHD_viconiaconflict","GLOBAL",2)
~ THEN BEGIN 420 // from:
  SAY #100128 /* ~The half-orc has taken an interest in you.~ */
  IF ~~ THEN REPLY #100133 /* ~He has?~ */ DO ~SetGlobal("OHD_viconiaconflict","GLOBAL",3)
~ GOTO 421
  IF ~~ THEN REPLY #100134 /* ~Yes. I noticed. It's kind of hard to miss, really.~ */ DO ~SetGlobal("OHD_viconiaconflict","GLOBAL",3)
~ GOTO 421
  IF ~~ THEN REPLY #100135 /* ~As I have in him.~ */ DO ~SetGlobal("OHD_viconiaconflict","GLOBAL",3)
~ GOTO 424
END

IF ~~ THEN BEGIN 421 // from: 420.1 420.0
  SAY #100129 /* ~Do you return his—let's call them affections?~ */
  IF ~~ THEN REPLY #100136 /* ~Don't be ridiculous.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 422
  IF ~~ THEN REPLY #100137 /* ~If you want to call them affections, then I don't know the answer.~ */ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ GOTO 423
  IF ~~ THEN REPLY #100138 /* ~There's something about him I find hard to resist...~ */ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ GOTO 424
END

IF ~~ THEN BEGIN 422 // from: 421.0
  SAY #100130 /* ~You are not completely senseless, then. Good.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 423 // from: 421.1
  SAY #100131 /* ~That you would even consider the kitrye-cretok proves your idiocy. We are through, abbil.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 424 // from: 421.2 420.2
  SAY #100132 /* ~I should have known. That you would consider the kitrye-cretok proves your idiocy. We are through, abbil.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  Global("OHH_mazestart","OH7000",1)
~ THEN BEGIN 425 // from:
  SAY #80979 /* ~You bring me to such interesting places, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~OHHFAK~ 28
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 243
END

IF ~~ THEN BEGIN 426 // from:
  SAY #84504 /* ~Most things do.~ */
  IF ~~ THEN EXTERN ~OHHSTONE~ 1
END

IF WEIGHT #10 ~  Global("OHH_raffiyah","OH7200",1)
~ THEN BEGIN 427 // from:
  SAY #84249 /* ~Damn you, <CHARNAME>! I spend years avoiding Lolth and her servants, and you deliver me to this?~ */
  IF ~~ THEN EXTERN ~OHHRAFFI~ 0
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 197
END

IF ~~ THEN BEGIN 428 // from:
  SAY #93411 /* ~You surprise me, wild mage—we so seldom agree! I too would have sought revenge, the moment I learned of his betrayal.~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 59
END

IF ~~ THEN BEGIN 429 // from:
  SAY #90283 /* ~Indulge your sentimentality if you must, <CHARNAME>, but don't expect me to respect your decision.~ */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 351
END

IF ~~ THEN BEGIN 430 // from:
  SAY #65917 /* ~I have no objection to pain, fool. I would stand by <CHARNAME> regardless.~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 431 // from:
  SAY #65995 /* ~This is an attempt at manipulation? Bringing an image of my brother before me?~ */
  IF ~~ THEN EXTERN ~LOVEONE3~ 1
END

IF ~~ THEN BEGIN 432 // from:
  SAY #65997 /* ~Dalninuk... my little brother. You were never much of a drow. I used to... No... no, you cannot be him. It is a lie.~ */
  IF ~~ THEN EXTERN ~LOVEONE3~ 2
END

IF ~~ THEN BEGIN 433 // from:
  SAY #65999 /* ~No! Nau! Valas... I... we were surrounded; I had no choice...~ */
  IF ~~ THEN EXTERN ~LOVEONE3~ 3
END

IF ~~ THEN BEGIN 434 // from:
  SAY #66001 /* ~Nau! Enough! Ssussun pholor dos! <CHARNAME>, I cannot take this! Make it stop!~ */
  IF ~~ THEN REPLY #66002 /* ~Valas, this wasn't her fault! Stop this!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #66003 /* ~Stop, Gorion! She doesn't deserve this!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #66004 /* ~Enough! I won't allow this to continue!~ */ EXTERN ~HGWRA01~ 25
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #66005 /* ~Don't you believe it, Viconia! It's a lie!~ */ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 435 // from:
  SAY #67769 /* ~How amusing you surface-dwellers can be. Instead of reveling in the pleasures of the flesh, you insist on shaming yourselves into guilt over your dalliances. Foolish rivvin!~ */
  IF ~~ THEN EXTERN ~SARTEM01~ 3
END

IF ~~ THEN BEGIN 436 // from:
  SAY #67925 /* ~How glorious to finally have the opportunity to grasp your birthright! To take up the reins of power as they are meant to be!~ [VICO2511] */
  IF ~~ THEN GOTO 437
END

IF ~~ THEN BEGIN 437 // from: 436.0
  SAY #67926 /* ~Fail to do so and the only point to your having come this far will be to have fought off all those who sought to stop you. There is only one path... take it and perhaps I will even be the first of your clerics one day! Think of it!~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 365
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 248
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 563
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 364
END

IF ~~ THEN BEGIN 438 // from:
  SAY #67966 /* ~Victory comes to you at long last, my ssinssrigg. It has been an epic struggle, worthy of many tales. You must be pleased... although your choice now cannot be an easy one.~ [VICO2510] */
  IF ~  Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67967 /* ~What do you think I should do, Viconia?~ */ GOTO 439
  IF ~  !Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67968 /* ~What do you think I should do, Viconia?~ */ GOTO 444
  IF ~  Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67969 /* ~I don't want to leave you behind, Viconia. I love you.~ */ GOTO 439
  IF ~  !Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67970 /* ~I don't want to leave you behind, Viconia. I love you.~ */ GOTO 444
  IF ~  Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67971 /* ~I feel as if I should see this through and accept my birthright.~ */ GOTO 439
  IF ~  !Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67972 /* ~I feel as if I should see this through and accept my birthright.~ */ GOTO 444
  IF ~  Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67973 /* ~No, it isn't easy.~ */ GOTO 439
  IF ~  !Alignment("Viconia",MASK_EVIL)
~ THEN REPLY #67974 /* ~No, it isn't easy.~ */ GOTO 444
END

IF ~~ THEN BEGIN 439 // from: 438.6 438.4 438.2 438.0
  SAY #67975 /* ~I should expect that you would take the power offered by your blood. To do anything else would be an expression of maudlin weakness... and I expect far more from you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 440
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67976 /* ~I knew once that our relationship was an impossible one and have allowed myself to since be swayed otherwise. But it still holds true. Even you know this now, correct?~ */
  IF ~~ THEN GOTO 441
END

IF ~~ THEN BEGIN 441 // from: 440.0
  SAY #67977 /* ~If you gave up your heritage, what would we do? Where would we go? What if it was not satisfactory for you... would you not blame me in the end for keeping you from your power?~ */
  IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 442 // from: 441.0
  SAY #67978 /* ~I will not be responsible for that. As much as part of me might wish you to remain with me, my ssinssrigg... I will be just as pleased to know that you have achieved the power you deserved.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 447.0 442.0
  SAY #67979 /* ~It is not easy for my kind to admit such things, so let me just say it now and be done with it. I love you, <CHARNAME>. You are a magnificent male, worthy beyond all measure. Now choose as you should.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 444 // from: 438.7 438.5 438.3 438.1
  SAY #67980 /* ~Once, there would have been no question as to what I thought you should do. If power exists, it exists to be taken. To do otherwise is to show weakness and invite death.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67981 /* ~But... I am not the same drow that I once was. You have planted questions in my head, made me think about my life on the surface. I have changed considerably, thanks to your interference.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67982 /* ~And this is not necessarily a bad thing. I changed my mind about our relationship, after all. You have brought me much joy... a quality I did not know I was even capable of.~ */
  IF ~~ THEN GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67983 /* ~I trust that you will make the decision that is right for you. That is not my worry. I would only regret if we parted ways, and I did not... thank you sufficiently. For all you have done.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 448 // from:
  SAY #68079 /* ~Yes... go on to your greater destiny, my ssinssrigg. Be a terror of a power. Be remembered by us all!~ [VICO2523] */
  IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 449 // from:
  SAY #68080 /* ~I think it is a mistake, my foolish ssinssrigg, to give up such power! But... I look forward to a life with you. Perhaps we will be a good thing, you and I... yes?~ [VICO2522] */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 450 // from:
  SAY #70391 /* ~See the markings on this rivvil, <CHARNAME>? I have seen the Handmaidens inflict similar defilements on their victims. His death is most permanent—and his last moments most unpleasant.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Sarevok")
~ THEN EXTERN ~SAREV25J~ 9
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 159
END

IF ~~ THEN BEGIN 451 // from:
  SAY #70411 /* ~A demon prince is not to be taken lightly, <CHARNAME>... perhaps it would be best to seal this creature in its prison without facing its wrath.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 147
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 578
END

IF ~~ THEN BEGIN 452 // from:
  SAY #70436 /* ~No doubt this spirit's misguided sense of duty will make our task more difficult.~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 453 // from:
  SAY #70438 /* ~Did I not tell you, <CHARNAME>? Duty gets in our way once more!~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 162
END

IF ~~ THEN BEGIN 454 // from:
  SAY #70475 /* ~An admirable effort, if wasted. Without immortality, it will only be a quick trip to return to the grave. Even quicker if <CHARNAME> gives the word, perhaps. ~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 39
END

IF ~~ THEN BEGIN 455 // from:
  SAY #70481 /* ~A foolish gamble, iblith. Had you caused harm to this one... not even your time in Hell would compare to the sufferings I would have visited upon you.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 42
END

IF ~~ THEN BEGIN 456 // from:
  SAY #70503 /* ~There is... something in this place, abbil. A most disturbing presence. Walk carefully and trust nothing.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 457 // from:
  SAY #70540 /* ~So we were to be sacrificed because you were too lazy and weak to do your own task? I say kill him now, <CHARNAME>. Kill them all and let them consider it a lesson learned for crossing you.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 458 // from:
  SAY #70552 /* ~Do not wet yourself, iblith. I have no inclination of hurting you. If you... I said stand still! Be still, I say! Calm yourself or I shall give you a reason to cringe! I have questions!~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 10
END

IF ~~ THEN BEGIN 459 // from:
  SAY #71321 /* ~I find it strange you should be so intrigued by this... girl's... rather common offer.~ */
  IF ~~ THEN REPLY #71322 /* ~You're right, Viconia... you fulfill all my desires. I don't need this prostitute.~ */ EXTERN ~SARPRO01~ 3
  IF ~~ THEN REPLY #71323 /* ~You aren't the only fish in the sea, Viconia. I like to dip my line in to test the waters now and then.~ */ GOTO 460
END

IF ~~ THEN BEGIN 460 // from: 459.1
  SAY #71324 /* ~If it amuses you, go with this trollop, <CHARNAME>. I am certain it will only make you appreciate me all the more.~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 12
END

IF ~~ THEN BEGIN 461 // from:
  SAY #71344 /* ~As a drow, I have no objection to you tasting the passion of another... but this seems like more than a simple sex for money exchange, <CHARNAME>. Be wary of this one.~ */
  IF ~~ THEN EXTERN ~SARPROVF~ 1
END

IF ~~ THEN BEGIN 462 // from:
  SAY #71450 /* ~It galls me to think those darthiir who scamper away in terror are related to my own kind.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 260
END

IF ~~ THEN BEGIN 463 // from:
  SAY #71640 /* ~Hmm. A worthy description, perhaps, though the other drow you mention is nothing compared to me and deserves no mention when I am the topic of discussion. But it is *your* manuscript, yes?~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 464 // from:
  SAY #72431 /* ~Be wary of this one, <CHARNAME>. I come from a world of deceit, lies, and betrayals. I suspect this Kiser would be most comfortable in my homeland.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 37
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 273
END

IF WEIGHT #12 ~  False()
Global("ohr_viconia_leaves","locals",0)
~ THEN BEGIN 465 // from:
  SAY #84755 /* ~We've come a long way together, <CHARNAME>, but the path you're on—I cannot walk it any further.~ */
  IF ~~ THEN REPLY #84756 /* ~You would leave me?~ */ DO ~SetGlobal("ohr_viconia_leaves","locals",1)
~ GOTO 466
  IF ~~ THEN REPLY #84757 /* ~What? Why not? Oh, right, the Shar-worshipping thing. Ugh.~ */ DO ~SetGlobal("ohr_viconia_leaves","locals",1)
~ GOTO 467
  IF ~~ THEN REPLY #84758 /* ~Seriously? But this is where things get entertaining.~ */ DO ~SetGlobal("ohr_viconia_leaves","locals",1)
~ GOTO 469
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #84759 /* ~You leave me little choice.~ */
  IF ~~ THEN GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 469.0 466.0 465.1
  SAY #84760 /* ~I cannot knowingly take up arms against those who worship my own goddess.~ */
  IF ~~ THEN REPLY #84761 /* ~Then I guess this is where we part ways.~ */ GOTO 468
  IF ~~ THEN REPLY #84762 /* ~I'll not lose you over this.~ */ GOTO 470
  IF ~~ THEN REPLY #84763 /* ~I don't respond well to ultimatums.~ */ GOTO 471
END

IF ~~ THEN BEGIN 468 // from: 467.0
  SAY #84764 /* ~Oh. I had hoped... It does not matter what I hoped. Goodbye, <CHARNAME>.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 469 // from: 465.2
  SAY #84765 /* ~For you, perhaps.~ */
  IF ~~ THEN GOTO 467
END

IF ~~ THEN BEGIN 470 // from: 467.1
  SAY #84766 /* ~Then come with me, back to Athkatla or at least away from this madness.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 796
END

IF ~~ THEN BEGIN 471 // from: 467.2
  SAY #84767 /* ~I had hoped to avoid making one. But that is no longer possible. What will it be? Me, or this?~ */
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY #84768 /* ~You, of course.~ */ EXTERN ~RASAADJ~ 796
  IF ~  !IsValidForPartyDialogue("rasaad")
~ THEN REPLY #84768 /* ~You, of course.~ */ GOTO 472
  IF ~  InParty("rasaad")
~ THEN REPLY #84769 /* ~I'll always have a special place in my heart for you, Viconia. But I cannot abandon Rasaad now.~ */ GOTO 473
  IF ~~ THEN REPLY #84770 /* ~It's a dwarven stronghold, Viconia. You can hardly expect me to turn back now.~ */ GOTO 473
END

IF ~~ THEN BEGIN 472 // from: 471.1
  SAY #84772 /* ~Let us go, then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 473 // from: 471.3 471.2
  SAY #84773 /* ~Then you abandon me. I would say farewell, <CHARNAME>—but I wouldn't mean it.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 474 // from:
  SAY #82106 /* ~Too far, <CHARNAME>. Too far by far. I cannot stand beside a <PRO_MANWOMAN> who seeks to kill a priest of Shar. You may as well plunge the dagger in my breast.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 892
END

IF ~~ THEN BEGIN 475 // from:
  SAY #82111 /* ~Then this is where we go our separate ways. May you find happiness in the company of this dithering simpleton.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~RASAADJ~ 894
END

IF WEIGHT #13 ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",18)
~ THEN BEGIN 476 // from:
  SAY #83179 /* ~<CHARNAME>! He's too powerful! We can't stay here!~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",19)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 933
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 619
END

IF ~~ THEN BEGIN 477 // from:
  SAY #82097 /* ~Wait! I am one of you! I am a servant of Shar!~ */
  IF ~~ THEN EXTERN ~OHRSHR21~ 1
  IF ~  Global("OHR_TFT_OUTCOME","GLOBAL",1)
~ THEN EXTERN ~OHRSHR21~ 2
  IF ~  Global("OHR_TFT_OUTCOME","GLOBAL",2)
~ THEN EXTERN ~OHRSHR21~ 3
END

IF WEIGHT #14 ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 478 // from:
  SAY #92223 /* ~We are returned. I shall think long and hard before I follow you anywhere ever again, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 224
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 274
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 603
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 223
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 152
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 276
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 174
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1040
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 630
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 184
END

IF ~~ THEN BEGIN 479 // from:
  SAY #92187 /* ~You have doomed us all, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 0
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 543
END

IF ~~ THEN BEGIN 480 // from:
  SAY #92115 /* ~You have doomed us all, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
END

IF WEIGHT #15 ~  Global("OHH_culak","OH7300",1)
~ THEN BEGIN 481 // from:
  SAY #85562 /* ~Shar's shadow hide me from these eyes of Lolth...~ */
  IF ~~ THEN EXTERN ~OHHCULAK~ 0
END

IF WEIGHT #16 ~  Global("OHH_viccomment","OH7300",2)
~ THEN BEGIN 482 // from:
  SAY #85768 /* ~Your employer should be pleased, Hexxat.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_viccomment","OH7300",3)
~ EXTERN ~HEXXATJ~ 877
END

IF WEIGHT #17 ~  HappinessLT(Myself,-290)
~ THEN BEGIN 483 // from:
  SAY #216650 /* ~A welcome release. Your weakling surface ways have left a bitter taste in my mouth. Perhaps I should seek shelter back under the cover of the earth. I understood my fellows there.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #18 ~  False()
~ THEN BEGIN 484 // from:
  SAY #216651 /* ~You have been very kind to me in this strange and lighted world. Perhaps you are right, though. The drow were meant to be a race apart... Take care of yourselves, all right?~ */
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("ViconP")
~ EXIT
END

IF ~~ THEN BEGIN 485 // from:
  SAY #228175 /* ~You... DARE to speak to me in such a tone? I will seize your heart from within your short little body, halfling!~ [NEE2K] */
  IF ~~ THEN EXTERN ~NEMEKLIN~ 7
END

IF ~~ THEN BEGIN 486 // from:
  SAY #228337 /* ~You would make a pact with a being from beyond our realm? You walk the razor's edge, blackguard. I find it thrilling. Were it not for your appearance, I could see how women would fawn over you instead of recoiling in horror.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1136
END

IF ~~ THEN BEGIN 487 // from:
  SAY #228338 /* ~Ignorant surface-dwellers may despise my people, but secretly they lust for me.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1137
END

IF ~~ THEN BEGIN 488 // from:
  SAY #228339 /* ~I had not thought of it that way before. Despite our differences, perhaps we have both suffered from prejudice.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1138
END

IF ~~ THEN BEGIN 489 // from:
  SAY #228958 /* ~The milkmaiden is a more appropriate name for Shar's anemic sister.~ */
  IF ~~ THEN EXTERN ~RASAAD_~ 26
END

IF ~~ THEN BEGIN 490 // from:
  SAY #228959 /* ~Or perhaps I shall do you the favor of introducing you to the cool, comforting whispers of the Mistress of the Night.~ */
  IF ~~ THEN EXTERN ~RASAAD_~ 27
END

IF ~~ THEN BEGIN 491 // from:
  SAY #228960 /* ~Interesting choice. We shall see how long it takes for this moon-worshipper to embrace the darkness. I shall help him find it.~ */
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 7
  IF ~  !InParty("KHALID")
~ THEN EXIT
END

IF ~~ THEN BEGIN 492 // from:
  SAY #228961 /* ~You cannot hope to stand against the Dark Moon. The faithful of Shar are far too powerful. Better to leave this "sunny soul" to his fate and continue without him.~ */
  IF ~~ THEN REPLY #228962 /* ~No, Viconia. Rasaad stays with us.~ */ EXTERN ~RASAADJ~ 1053
  IF ~~ THEN REPLY #228963 /* ~Viconia, you'll just have to learn to get along with Rasaad... unless you want to be the one left behind.~ */ GOTO 494
  IF ~~ THEN REPLY #228964 /* ~Viconia makes a good point. You're too much trouble, Rasaad. From now on, you're on your own.~ */ EXTERN ~RASAADJ~ 1055
END

IF ~~ THEN BEGIN 493 // from:
  SAY #228965 /* ~You are making a mistake, <CHARNAME>, but you are in charge. Perhaps I can make this "sunny soul" see the truth that lies in the shadow of my goddess.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1054
END

IF ~~ THEN BEGIN 494 // from: 492.1
  SAY #228966 /* ~What? You wish for me to leave so you can coddle this moon-worshipping lunatic?~ */
  IF ~~ THEN REPLY #228967 /* ~I want you both to stay.~ */ EXTERN ~RASAADJ~ 1056
  IF ~~ THEN REPLY #228968 /* ~That's right. I'm choosing Rasaad over you.~ */ GOTO 495
  IF ~~ THEN REPLY #228969 /* ~On second thought, you're a lot hotter than him. Hit the road, Rasaad.~ */ EXTERN ~RASAADJ~ 1055
END

IF ~~ THEN BEGIN 495 // from: 494.1
  SAY #228970 /* ~How foolish of you. I would like to think you will live to regret this decision, but I doubt any of you will... live.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~RASAADJ~ 1056
END

IF ~~ THEN BEGIN 496 // from:
  SAY #228971 /* ~You use such grand words to say you wish revenge for your brother's death.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1062
END

IF ~~ THEN BEGIN 497 // from:
  SAY #228972 /* ~Such is the way of strength in shadow. One must cull the weak to thrive.~ */
  IF ~~ THEN EXTERN ~RSDMNK06~ 2
END

IF ~~ THEN BEGIN 498 // from:
  SAY #228973 /* ~Bah!~ */
  IF ~~ THEN EXTERN ~RSDAPPSU~ 1
END

IF ~~ THEN BEGIN 499 // from:
  SAY #228974 /* ~Your brother speaks the truth, Rasaad. In the darkness lies great power. You have only to reach in and embrace it.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1075
END

IF ~~ THEN BEGIN 500 // from:
  SAY #228975 /* ~Your brother is right, Rasaad. Listen to him. In his words, hear the whisper of Shar guiding you to the shelter of the dark.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1085
END

IF ~~ THEN BEGIN 501 // from:
  SAY #230411 /* ~You surface-dwellers never trust my people.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1273
END

IF ~~ THEN BEGIN 502 // from:
  SAY #230558 /* ~Why do you point the finger at me? I never—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1324
END

IF ~~ THEN BEGIN 503 // from:
  SAY #230848 /* ~Obviously, not ALL of us.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1173
END

IF ~~ THEN BEGIN 504 // from:
  SAY #230850 /* ~We are not the least bit deprived, moon-male. The cloak of Shar envelops us in secrets, and in secrets lies power.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1174
END

IF ~~ THEN BEGIN 505 // from:
  SAY #230852 /* ~"Humanity"? You rivvil are so arrogant!~ */
  IF ~~ THEN REPLY #230853 /* ~Excuse us, Viconia. Rasaad was talking to me, not you.~ */ GOTO 506
  IF ~~ THEN REPLY #230854 /* ~Put a cork in it, drow. I want to hear what Rasaad was saying.~ */ GOTO 506
  IF ~~ THEN REPLY #230855 /* ~Viconia has a point. Don't you think so, Rasaad?~ */ DO ~SetGlobal("RASAAD_ROMANCE","GLOBAL",-1)
~ EXTERN ~RASAADJ~ 1175
  IF ~~ THEN REPLY #230856 /* ~You two need to get a room. I'm sick of all the sexual tension between the two of you.~ */ DO ~SetGlobal("RASAAD_ROMANCE","GLOBAL",-1)
~ GOTO 515
END

IF ~~ THEN BEGIN 506 // from: 505.1 505.0
  SAY #230857 /* ~I was simply... Never mind. I have more important matters to contemplate.~ */
  IF ~~ THEN REPLY #230858 /* ~Now, Rasaad, you were saying...?~ */ EXTERN ~RASAADJ~ 1180
END

IF ~~ THEN BEGIN 507 // from:
  SAY #230860 /* ~Oh, but you should, moon-child. You can begin by submitting to one who can instruct you in the truth that lies in darkness.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1176
END

IF ~~ THEN BEGIN 508 // from:
  SAY #230862 /* ~My, my, but that one flusters easily.~ */
  IF ~~ THEN REPLY #230863 /* ~You stay away from him, drow.~ */ GOTO 509
  IF ~~ THEN REPLY #230864 /* ~I don't know what you mean.~ */ GOTO 510
  IF ~~ THEN REPLY #230865 /* ~You've had your fun, Viconia. Now go snuff out a candle or put a bag over your head or whatever it is you Sharrans do to commune with darkness.~ */ GOTO 511
END

IF ~~ THEN BEGIN 509 // from: 508.0
  SAY #230866 /* ~You claim him for yourself so soon? I see the moon-monk's "inner glimmer" has caught your eye. You mustn't coddle him. Males require a firm hand on the lash.~ */
  IF ~~ THEN REPLY #230867 /* ~Rasaad doesn't need me to defend him.~ */ GOTO 512
  IF ~~ THEN REPLY #230868 /* ~I don't treat men the way you do.~ */ GOTO 513
  IF ~~ THEN REPLY #230869 /* ~You drow sicken me.~ */ GOTO 514
END

IF ~~ THEN BEGIN 510 // from: 508.1
  SAY #230870 /* ~Don't you? Hmm, I wonder. Keep your secrets. The Mistress approves of secrets.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 511 // from: 508.2
  SAY #230871 /* ~Have I stumbled through the dark and found one of YOUR secrets, <CHARNAME>? Hm... That IS worth meditating upon.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 512 // from: 509.0
  SAY #230872 /* ~No? My people shelter the males they desire. Perhaps I misjudged your interest. Hm...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 513 // from: 509.1
  SAY #230873 /* ~No? Perhaps you too require instruction in such matters. We should discuss the matter another time... in private.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 514 // from: 509.2
  SAY #230874 /* ~"Sicken"? I think that is the wrong word to describe your true feelings, <CHARNAME>. But I shall say no more... for now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 515 // from: 505.3
  SAY #230875 /* ~I'm sure I don't know what you mean.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1177
END

IF ~~ THEN BEGIN 516 // from:
  SAY #231882 /* ~Stay your hand a moment, <CHARNAME>. Drow do not typically leave the Underdark of their own accord, and I do not wish to see one of my kind slain without good reason.~ */
  IF ~~ THEN EXTERN ~BAELOTH~ 7
END

IF ~~ THEN BEGIN 517 // from:
  SAY #231884 /* ~Check your tongue, male. Clearly you do not know what I consider to be "good reason."~ */
  IF ~~ THEN EXTERN ~BAELOTH~ 8
END

IF ~~ THEN BEGIN 518 // from:
  SAY #231886 /* ~House Do'Urden?! The depths of their treachery cannot even BEGIN to— Ahem. Consider your hand unstayed, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~BAELOTH~ 9
END

IF ~~ THEN BEGIN 519 // from:
  SAY #245931 /* ~Take care, wael. Your attempt to crush doubts does little but inspire them.~ */
  IF ~~ THEN EXTERN ~BDFF1000~ 14
END

IF ~~ THEN BEGIN 520 // from:
  SAY #257752 /* ~Still your tongue, you babbling nirgon!~ */
  IF ~~ THEN EXTERN ~BDMUMMY~ 11
END

IF ~~ THEN BEGIN 521 // from:
  SAY #258177 /* ~We less savory elements appreciate your tolerance.~ [BD58177] */
  IF ~~ THEN EXTERN ~BDRAYPHU~ 24
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1246
END

IF ~~ THEN BEGIN 522 // from:
  SAY #242047 /* ~You think me a possession, Pfaug? Can it be you are even more stupid than I thought?~ [BD42047] */
  IF ~~ THEN EXTERN ~BDPFAUG~ 11
END

IF ~~ THEN BEGIN 523 // from:
  SAY #242049 /* ~Begone. I want nothing more to do with you.~ [BD42049] */
  IF ~~ THEN DO ~ActionOverride("bdpfaug",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 524 // from:
  SAY #242111 /* ~We allow this Flaming Fist harridan to accompany us? We might as well scream our weakness to the wilds.~ [BD42111] */
  IF ~~ THEN EXTERN ~BDCORWIN~ 13
END

IF ~~ THEN BEGIN 525 // from:
  SAY #242265 /* ~Four Red Wizards? Ugh, I can barely tolerate the one.~ [BD42265] */
  IF ~~ THEN EXTERN ~EDWINJ~ 306
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 64
END

IF ~~ THEN BEGIN 526 // from:
  SAY #242267 /* ~I barely know the wizard, yet even I know better than to assume such a thing.~ [BD42267] */
  IF ~~ THEN EXTERN ~EDWINJ~ 311
END

IF ~~ THEN BEGIN 527 // from:
  SAY #235753 /* ~Coin does not drive you, <CHARNAME>. I know you better than that.~ [BD35753] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 38
END

IF ~~ THEN BEGIN 528 // from:
  SAY #246671 /* ~I've been to Daggerford. It was... unpleasant.~ */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 19
END

IF ~~ THEN BEGIN 529 // from:
  SAY #246691 /* ~It would be wiser to fear what is within these walls, rather than beyond them.~ [BD46691] */
  IF ~  !TimeOfDay(NIGHT)
~ THEN EXTERN ~BDELANDR~ 19
  IF ~  TimeOfDay(NIGHT)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdc208a",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~SAFANJ~ 77
END

IF ~~ THEN BEGIN 530 // from:
  SAY #249507 /* ~You cannot seriously expect me to waste energy healing these nags.~ */
  IF ~~ THEN EXTERN ~BDSENDER~ 5
END

IF ~~ THEN BEGIN 531 // from:
  SAY #249508 /* ~Perhaps there's even one willing to waste their time and energy healing a pair of sickly nags.~ */
  IF ~~ THEN EXTERN ~BDSENDER~ 5
END

IF ~~ THEN BEGIN 532 // from:
  SAY #249667 /* ~Shar preserve me... Are you actually blushing, son of Selûne?~ [BD49667] */
  IF ~~ THEN EXTERN ~RASAADJ~ 1268
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN EXTERN ~BDVOGHIJ~ 2
END

IF ~~ THEN BEGIN 533 // from:
  SAY #250818 /* ~I never ate chicken until I left the Underdark. It tastes very similar to cockatrice.~ [BD50818] */
  IF ~~ THEN EXTERN ~BDDOGW01~ 5
END

IF ~~ THEN BEGIN 534 // from:
  SAY #247484 /* ~Whatever it is, it's no concern of ours.~ [BD47484] */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 4
END

IF ~~ THEN BEGIN 535 // from:
  SAY #247792 /* ~Do my eyes deceive me? Are you actually flirting with this creature, <CHARNAME>?~ [BD47792] */
  IF ~~ THEN EXTERN ~BDDAMARR~ 14
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN EXTERN ~BDCORWIJ~ 78
END

IF ~~ THEN BEGIN 536 // from:
  SAY #252380 /* ~Where to begin?~ [BD52380] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 81
END

IF ~~ THEN BEGIN 537 // from:
  SAY #240067 /* ~I believe you.~ [BD40067] */
  IF ~~ THEN EXTERN ~BDBSENT1~ 4
END

IF ~~ THEN BEGIN 538 // from:
  SAY #264034 /* ~This woman was present when Bhaal was slain by Cyric. The Dark Sun's minions must have imprisoned her years ago.~ [BD64034] */
  IF ~~ THEN EXTERN ~BDMADELE~ 2
END

IF ~~ THEN BEGIN 539 // from:
  SAY #242755 /* ~They will pay for their heresy, first with blood, then with their souls.~ [BD42755] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 540 // from:
  SAY #236599 /* ~I think this does not mean what you think it means.~ [BD36599] */
  IF ~  !IsValidForPartyDialogue("BAELOTH")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 24
END

IF ~~ THEN BEGIN 541 // from:
  SAY #236599 /* ~I think this does not mean what you think it means.~ [BD36599] */
  IF ~  !IsValidForPartyDialogue("BAELOTH")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 25
END

IF ~~ THEN BEGIN 542 // from:
  SAY #251524 /* ~Gods do not always scream in the faithful ear. Sometimes they whisper.~ [BD51524] */
  IF ~~ THEN EXTERN ~BDKJARVA~ 6
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 1372
END

IF ~~ THEN BEGIN 543 // from:
  SAY #251526 /* ~Gods do not always scream in their faithfuls' ears. Sometimes they whisper.~ [BD51526] */
  IF ~~ THEN EXTERN ~BDKJARVA~ 5
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN EXTERN ~BDGLINTJ~ 222
END

IF ~~ THEN BEGIN 544 // from:
  SAY #257991 /* ~To solve a problem with words requires more skill than solving a problem with fists.~ [BD57991] */
  IF ~~ THEN EXTERN ~BDKHALID~ 62
END

IF ~~ THEN BEGIN 545 // from:
  SAY #237489 /* ~Enough bootlicking, <CHARNAME>. This idiot owes you his thanks, not the other way around.~ [BD37489] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 14
END

IF ~~ THEN BEGIN 546 // from:
  SAY #241247 /* ~Down into the Underdark once more. It'll be... strange to return.~ [BD41247] */
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 85
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDMURS~ 32
END

IF ~~ THEN BEGIN 547 // from:
  SAY #241728 /* ~Shapur. It's been a long time.~ [BD41728] */
  IF ~~ THEN REPLY #241729 /* ~You two know each other?~ */ DO ~SetGlobal("bd_sdd318_viconia_shapur","locals",1)
~ EXTERN ~BDSHAPUR~ 3
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN REPLY #241730 /* ~Isn't that nice? Long-lost drow friends reunited by chance in the caverns beneath Dragonspear. It brings a tear to my eye.~ */ DO ~SetGlobal("bd_sdd318_viconia_shapur","locals",1)
~ EXTERN ~BDVOGHIJ~ 16
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN REPLY #241730 /* ~Isn't that nice? Long-lost drow friends reunited by chance in the caverns beneath Dragonspear. It brings a tear to my eye.~ */ DO ~SetGlobal("bd_sdd318_viconia_shapur","locals",1)
~ EXTERN ~BDSHAPUR~ 3
  IF ~~ THEN REPLY #241731 /* ~If you know this woman, Viconia, tell her to get out of our way.~ */ DO ~SetGlobal("bd_sdd318_viconia_shapur","locals",1)
~ EXTERN ~BDSHAPUR~ 3
END

IF ~~ THEN BEGIN 548 // from:
  SAY #241737 /* ~<CHARNAME>, please. You'll only make things worse.~ [BD41737] */
  IF ~~ THEN EXTERN ~BDSHAPUR~ 4
END

IF ~~ THEN BEGIN 549 // from:
  SAY #241744 /* ~You did not come here to argue theology, Shapur. Tell us why you have ventured this far up from the Underdark.~ [BD41744] */
  IF ~~ THEN EXTERN ~BDSHAPUR~ 6
END

IF ~~ THEN BEGIN 550 // from:
  SAY #240333 /* ~Perhaps, but I see no good reason why I should. But very well, let me take a look...~ [BD40333] */
  IF ~~ THEN GOTO 551
END

IF ~~ THEN BEGIN 551 // from: 550.0
  SAY #240364 /* ~Yes, this is deadly poison for certain. I have no spell or poultice to aid him. More knowledge than mine is required.~ [BD40364] */
  IF ~~ THEN EXTERN ~BDPCRUS~ 6
END

IF ~~ THEN BEGIN 552 // from:
  SAY #266047 /* ~They tell it true. The surface is no place for young drow. You'll find nothing but ruin up there.~ [BD66047] */
  IF ~~ THEN EXTERN ~BDUMAR~ 4
END

IF ~~ THEN BEGIN 553 // from:
  SAY #241855 /* ~I too made the decision to leave the Underdark. It was not a path easily walked.~ [BD41855] */
  IF ~~ THEN EXTERN ~BDKAELET~ 6
END

IF ~~ THEN BEGIN 554 // from:
  SAY #241857 /* ~I did, but I paid a high price. In a moment, I lost all family and friends. My history, my connection to our people, was gone.~ [BD41857] */
  IF ~~ THEN EXTERN ~BDUMAR~ 7
END

IF ~~ THEN BEGIN 555 // from:
  SAY #241859 /* ~In time. But even now I'm seen as an intruder in the sunlight. An evil drow not to be trusted. I am outcast both above and below.~ [BD41859] */
  IF ~~ THEN EXTERN ~BDKAELET~ 7
END

IF ~~ THEN BEGIN 556 // from:
  SAY #266068 /* ~Assuming they realize the truth in time for it to save them, of course.~ [BD66068] */
  IF ~~ THEN EXTERN ~BDSHAPUR~ 30
END

IF ~~ THEN BEGIN 557 // from:
  SAY #249151 /* ~We need to leave, now. This woman wears a holy symbol of Shevarash, hunter of drow.~ [BD49151] */
  IF ~~ THEN EXTERN ~BDSINDRE~ 3
END

IF ~~ THEN BEGIN 558 // from:
  SAY #243975 /* ~For the crusaders. Better they endure her wailing than we do.~ [BD43975] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 37
END

IF ~~ THEN BEGIN 559 // from:
  SAY #237596 /* ~And rivvin will be idiots.~ [BD37596] */
  IF ~~ THEN EXTERN ~BDBENCE~ 35
END

IF ~~ THEN BEGIN 560 // from:
  SAY #258629 /* ~You tell them your name? Of all the...~ [BD58629] */
  IF ~~ THEN EXTERN ~BDCRUM30~ 2
END

IF ~~ THEN BEGIN 561 // from:
  SAY #244106 /* ~I feel ill.~ [BD44106] */
  IF ~~ THEN EXTERN ~BDSKIE~ 52
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 31
END

IF ~~ THEN BEGIN 562 // from:
  SAY #244108 /* ~I feel even more ill.~ [BD44108] */
  IF ~~ THEN EXTERN ~BDSKIE~ 52
END

IF ~~ THEN BEGIN 563 // from:
  SAY #250421 /* ~You're letting this troll just take the food?~ [BD50421] */
  IF ~~ THEN EXTERN ~BDBJARN~ 6
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 98
END

IF ~~ THEN BEGIN 564 // from:
  SAY #238678 /* ~Darkness awaits you, lady ssussun.~ [BD38678] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 41
END

IF ~~ THEN BEGIN 565 // from:
  SAY #245114 /* ~Shadows are sacred to the Nightsinger. I shall try.~ [BD45114] */
  IF ~~ THEN GOTO 566
END

IF ~~ THEN BEGIN 566 // from: 565.0
  SAY #245115 /* ~It is a creature of violence that seeks to destroy the living. I can direct it against the bugbears if you wish.~ [BD45115] */
  IF ~~ THEN REPLY #245116 /* ~Yes, please.~ */ EXTERN ~BDSHADOW~ 4
  IF ~~ THEN REPLY #261793 /* ~Handy. Yeah, have it take on the bugbears.~ */ EXTERN ~BDSHADOW~ 4
  IF ~~ THEN REPLY #245117 /* ~No, I will kill this thing myself.~ */ EXTERN ~BDSHADOW~ 3
END

IF ~~ THEN BEGIN 567 // from:
  SAY #262397 /* ~You and intelligence. Nay, I do not see it.~ [BD62397] */
  IF ~~ THEN EXTERN ~BDSKIE~ 55
END

IF ~~ THEN BEGIN 568 // from:
  SAY #262270 /* ~Ever the optimist, <CHARNAME>.~ [BD62270] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 569 // from:
  SAY #238528 /* ~Are you certain of that, Captain? Because I'm reasonably sure we should be getting as far away from that damned portal as possible.~ */
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN EXTERN ~BDDELANC~ 76
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN EXTERN ~BDVOGHIJ~ 34
END

IF ~~ THEN BEGIN 570 // from:
  SAY #238757 /* ~Out of the frying pan into... THIS. Well DONE, <CHARNAME>.~ [BD38757] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 571 // from:
  SAY #239827 /* ~I am no one's prize, be they devil or man. Count yourself lucky I've not been made part of this—both of you.~ [BD39827] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 58
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 59
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 60
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 61
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 572 // from:
  SAY #238997 /* ~I'm not sorry at all.~ [BD38997] */
  IF ~~ THEN EXTERN ~RASAADJ~ 1285
END

IF ~~ THEN BEGIN 573 // from:
  SAY #239014 /* ~Shar take your soul, you vile traitor!~ [BD39014] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF WEIGHT #19 ~  Global("BD_Sacrifice_Viconia","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 574 // from:
  SAY #239082 /* ~You gamble my life with a devil, og'elend? MY life?~ [BD39082] */
  IF ~  !Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239083 /* ~I am truly sorry, Viconia. In the heat of the moment I did wrong by you. I will never forgive myself for it.~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 575
  IF ~  Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239083 /* ~I am truly sorry, Viconia. In the heat of the moment I did wrong by you. I will never forgive myself for it.~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 578
  IF ~  !Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239084 /* ~Do you really think I was going to let Thrix take you, Viconia? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 576
  IF ~  Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239084 /* ~Do you really think I was going to let Thrix take you, Viconia? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 578
  IF ~  !Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239085 /* ~Understand this and make peace with it, Viconia DeVir: Everyone is expendable. There is no one I'll not sacrifice to achieve my goals.~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 577
  IF ~  Global("bd_thrix_mark_viconia","global",1)
~ THEN REPLY #239085 /* ~Understand this and make peace with it, Viconia DeVir: Everyone is expendable. There is no one I'll not sacrifice to achieve my goals.~ */ DO ~SetGlobal("BD_Sacrifice_Viconia","bd4500",3)
~ GOTO 578
END

IF ~~ THEN BEGIN 575 // from: 574.0
  SAY #239086 /* ~That makes two of us.~ [BD39086] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 576 // from: 574.2
  SAY #239087 /* ~You tell me you weren't? Very well. I will accept this explanation—for now. But I'll not soon forget what happened here.~ [BD39087] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 577 // from: 574.4
  SAY #239088 /* ~I will remember this. And you should know: I feel exactly the same about you.~ [BD39088] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 578 // from: 574.5 574.3 574.1
  SAY #269996 /* ~In my time on the surface, I have learned to travel unnoticed. I shall hide myself from this devil for as long as I can. I expect no help from you should it ever find me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 579 // from:
  SAY #239227 /* ~The paladin will see it for himself soon enough.~ [BD39227] */
  IF ~~ THEN EXTERN ~BDAUN~ 11
END

IF ~~ THEN BEGIN 580 // from:
  SAY #239240 /* ~Your grasp of the obvious is, as always, vice-like in its consistency, <CHARNAME>.~ [BD39240] */
  IF ~~ THEN EXTERN ~BDCAELAR~ 75
END

IF ~~ THEN BEGIN 581 // from:
  SAY #239329 /* ~Shar smiles upon you, <CHARNAME>. I don't know why.~ [BD39329] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 582 // from:
  SAY #239396 /* ~I never knew you had it in you, <CHARNAME>. I knew you had something within you, but this? No.~ [BD39396] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 583 // from:
  SAY #240130 /* ~We have more important things to do than rescue those bested by plants.~ [BD40130] */
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 1417
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~BDCHORST~ 0
END

IF ~~ THEN BEGIN 584 // from:
  SAY #248652 /* ~She is a priest of Tempus, god of battles. She has little use for reason. You'll win her respect through violence.~ [BD48652] */
  IF ~~ THEN EXTERN ~BDMIZHEN~ 68
END

IF ~~ THEN BEGIN 585 // from:
  SAY #240700 /* ~Such carnage... Pure katrill.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1420
END

IF ~~ THEN BEGIN 586 // from:
  SAY #240799 /* ~Even you should grasp it.~ [BD40799] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 222
END

IF WEIGHT #20 ~  Global("bd_ViconiaRomance1","GLOBAL",1)
~ THEN BEGIN 587 // from:
  SAY #253769 /* ~Once again, our fates intertwine. It seems I cannot go any length of time without being made to endure the company of surfacers.~ [BD53769] */
  IF ~~ THEN REPLY #253770 /* ~I would hope my companionship is not so distasteful as you make it sound.~ */ DO ~SetGlobal("bd_ViconiaRomance1","GLOBAL",2)
~ GOTO 588
  IF ~~ THEN REPLY #253771 /* ~Admit it. You love traveling with me. I'm exciting!~ */ DO ~SetGlobal("bd_ViconiaRomance1","GLOBAL",2)
~ GOTO 589
  IF ~~ THEN REPLY #253772 /* ~You're free to leave whenever you want.~ */ DO ~SetGlobal("bd_ViconiaRomance1","GLOBAL",2)
~ GOTO 590
END

IF ~~ THEN BEGIN 588 // from: 587.0
  SAY #253773 /* ~It is the necessity of your company that leaves me unsettled.~ [BD53773] */
  IF ~~ THEN GOTO 591
END

IF ~~ THEN BEGIN 589 // from: 587.1
  SAY #253774 /* ~If I craved excitement, I would have remained on my own in this hostile land.~ [BD53774] */
  IF ~~ THEN GOTO 591
END

IF ~~ THEN BEGIN 590 // from: 587.2
  SAY #253775 /* ~Am I truly? You mean to say no chains hold me here, and that is true. But to choose freedom is to court death.~ [BD53775] */
  IF ~~ THEN GOTO 591
END

IF ~~ THEN BEGIN 591 // from: 590.0 589.0 588.0
  SAY #253776 /* ~Surface-dwellers are, at best, wary of drow. At worst, they attack on sight. Though I have proven myself capable to some, still they do not trust me.~ [BD53776] */
  IF ~~ THEN REPLY #253777 /* ~What brought you this way in the first place?~ */ GOTO 592
  IF ~~ THEN REPLY #253778 /* ~The people I call allies are good people, Viconia. They wouldn't hurt you.~ */ GOTO 595
  IF ~~ THEN REPLY #253779 /* ~I have to get back to my duties. Please excuse me.~ */ GOTO 599
END

IF ~~ THEN BEGIN 592 // from: 595.3 591.0
  SAY #253780 /* ~It is a long story. One I will tell you another time, if it suits me. Suffice to say I was forced to leave my last place of residence and was seeking a new place to settle.~ [BD53780] */
  IF ~~ THEN GOTO 593
END

IF ~~ THEN BEGIN 593 // from: 592.0
  SAY #253781 /* ~I came here for my own reasons, but they are no longer enough to keep me here. I had thought... It matters not what I thought.~ [BD53781] */
  IF ~~ THEN REPLY #253782 /* ~You sound disappointed.~ */ GOTO 594
  IF ~~ THEN REPLY #253783 /* ~You can be sure the people I call allies are honorable. They wouldn't hurt you.~ */ GOTO 595
  IF ~~ THEN REPLY #253784 /* ~That's very interesting, but I have to return to my duties.~ */ GOTO 599
END

IF ~~ THEN BEGIN 594 // from: 593.0
  SAY #253785 /* ~Men believe they are the masters when they take a woman to their bed, but they quickly become the pawns. I survive more easily when males serve me.~ [BD53785] */
  IF ~~ THEN REPLY #253786 /* ~I appreciate your pragmatism. You're a strong woman, Viconia.~ */ GOTO 600
  IF ~~ THEN REPLY #253787 /* ~I'm shocked you would barter away your favors so readily.~ */ GOTO 598
  IF ~~ THEN REPLY #253788 /* ~This male has other people to serve at the moment. Please excuse me.~ */ GOTO 599
END

IF ~~ THEN BEGIN 595 // from: 593.1 591.1
  SAY #253789 /* ~Honor means something very different to surface-dwellers than it does to me. Can you say there is no one here who would consider it honorable to torture and murder a drow?~ [BD53789] */
  IF ~~ THEN REPLY #253790 /* ~Yes, I can. I have faith in these men and women.~ */ GOTO 596
  IF ~~ THEN REPLY #253791 /* ~I suppose I can't. Many of my kind see drow as monsters. I hope you know that I don't.~ */ GOTO 597
  IF ~~ THEN REPLY #253792 /* ~Your people are evil and depraved. If I didn't need your talents, I wouldn't keep you around.~ */ GOTO 598
  IF ~~ THEN REPLY #253793 /* ~You raise a valid point. Let us speak of something else. What brought you to this place?~ */ GOTO 592
END

IF ~~ THEN BEGIN 596 // from: 595.0
  SAY #253794 /* ~Poor babe, so innocent here in the wild. Watch yourself, lest your surface beasts tear you to pieces.~ [BD53794] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 597 // from: 595.1
  SAY #253795 /* ~I learned long ago to survive on my own. It is easier when I travel with you, which is why I'm here. But I do not trust you, no. I cannot.~ [BD53795] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 598 // from: 595.2 594.1
  SAY #253796 /* ~I see you are no different from these other surface-dwellers. I shall remember this insult.~ [BD53796] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 599 // from: 594.2 593.2 591.2
  SAY #253797 /* ~As you wish.~ [BD53797] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 600 // from: 594.0
  SAY #253798 /* ~I'm pleased that you see it that way. It's not often surface-dwellers can understand the ways of the drow.~ [BD53798] */
  IF ~~ THEN EXIT
END

IF WEIGHT #21 ~  Global("bd_ViconiaRomance2","GLOBAL",1)
~ THEN BEGIN 601 // from:
  SAY #253799 /* ~So many Flaming Fist officers around. They bring back unpleasant memories.~ [BD53799] */
  IF ~~ THEN REPLY #253800 /* ~Remembering the time we met?~ */ DO ~SetGlobal("bd_ViconiaRomance2","GLOBAL",2)
~ GOTO 602
  IF ~~ THEN REPLY #253801 /* ~They're here to protect all of us.~ */ DO ~SetGlobal("bd_ViconiaRomance2","GLOBAL",2)
~ GOTO 603
  IF ~~ THEN REPLY #253802 /* ~Don't be a coward, Viconia. I need you to stay sharp.~ */ DO ~SetGlobal("bd_ViconiaRomance2","GLOBAL",2)
~ GOTO 608
END

IF ~~ THEN BEGIN 602 // from: 601.0
  SAY #253803 /* ~Yes. The mercenary dog hunted me for days before I encountered you. I'm fortunate you took an interest in my fate.~ [BD53803] */
  IF ~~ THEN REPLY #253804 /* ~You didn't deserve to be hunted like that. I'm glad I was able to help.~ */ GOTO 604
  IF ~~ THEN REPLY #253805 /* ~You were certainly in a lot of trouble without me. I'm surprised you've survived on your own.~ */ DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ GOTO 608
  IF ~~ THEN REPLY #253806 /* ~The Flaming Fist are a bunch of bullies with too much time on their hands. They're cowards who only attack people they're sure they can defeat.~ */ GOTO 606
END

IF ~~ THEN BEGIN 603 // from: 601.1
  SAY #253807 /* ~Oh, are they? I shall rest much better at night knowing they are here to protect me and not to run me through the first chance they get.~ [BD53807] */
  IF ~~ THEN REPLY #253808 /* ~You're being sarcastic, aren't you?~ */ GOTO 605
  IF ~~ THEN REPLY #253809 /* ~They're doing their jobs, Viconia. They may be suspicious of you, but their intentions are good.~ */ GOTO 607
  IF ~~ THEN REPLY #253810 /* ~I know the Flaming Fist soldiers can be thickheaded at times... bullies, even. They can be cowardly and mean and get a kick out of hurting innocents... where was I going with this?~ */ GOTO 606
END

IF ~~ THEN BEGIN 604 // from: 602.0
  SAY #253811 /* ~If I had not met you, I would have found some other way to survive. I am used to holding on to my life with both hands.~ [BD53811] */
  IF ~~ THEN REPLY #253812 /* ~I don't doubt it. You're one of the most tenacious women I know.~ */ GOTO 609
  IF ~~ THEN REPLY #253813 /* ~Ha! That mercenary would have killed you on the spot if it weren't for me.~ */ GOTO 608
  IF ~~ THEN REPLY #253814 /* ~I only know what did happen, and I'm glad I was there for you.~ */ GOTO 609
END

IF ~~ THEN BEGIN 605 // from: 603.0
  SAY #253815 /* ~Your mind remains sharp as a sword's edge, rivvil.~ [BD53815] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 606 // from: 603.2 602.2
  SAY #253816 /* ~Your attempts at humor are amusing at times, abban. Yes, they are cowards at heart, and we will deal with them if they turn on us.~ [BD53816] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 607 // from: 603.1
  SAY #253817 /* ~Oloth plynn nind! Do you truly believe your own drivel?~ [BD53817] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 608 // from: 604.1 602.1 601.2
  SAY #253818 /* ~I see you are no different from these other surface-dwellers. I shall remember this insult.~ [BD53818] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 609 // from: 604.2 604.0
  SAY #253819 /* ~I appreciate the sentiment. Shall we press on?~ [BD53819] */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 ~  Global("bd_ViconiaRomance3","GLOBAL",1)
InParty("Khalid")
~ THEN BEGIN 610 // from:
  SAY #253820 /* ~He still remains devoted to his wife after all this time.~ [BD53820] */
  IF ~~ THEN REPLY #253821 /* ~Who, Khalid?~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 611
  IF ~~ THEN REPLY #253822 /* ~What are you talking about?~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 611
  IF ~~ THEN REPLY #253823 /* ~Some of us are capable of forming lasting relationships, Viconia.~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 613
END

IF ~~ THEN BEGIN 611 // from: 612.1 612.0 610.1 610.0
  SAY #253824 /* ~Khalid... though he be a bumbling weakling in so many ways, he does understand loyalty.~ */
  IF ~~ THEN REPLY #253825 /* ~I disagree with your evaluation of him, but yes, he is still devoted to Jaheira.~ */ GOTO 615
  IF ~~ THEN REPLY #253826 /* ~If he let go of his love for Jaheira, he would have nothing at all.~ */ GOTO 615
  IF ~~ THEN REPLY #253827 /* ~Does that surprise you? ~ */ GOTO 615
END

IF WEIGHT #23 ~  Global("bd_ViconiaRomance3","GLOBAL",1)
!InParty("Khalid")
~ THEN BEGIN 612 // from:
  SAY #253828 /* ~That cowardly half-elf who once traveled with you. Is he still devoted to his wife?~ [BD53828] */
  IF ~~ THEN REPLY #253829 /* ~Who, Khalid?~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 611
  IF ~~ THEN REPLY #253830 /* ~What are you talking about?~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 611
  IF ~~ THEN REPLY #253831 /* ~Some of us are capable of forming lasting relationships, Viconia.~ */ DO ~SetGlobal("bd_ViconiaRomance3","GLOBAL",2)
~ GOTO 613
END

IF ~~ THEN BEGIN 613 // from: 612.2 610.2
  SAY #253832 /* ~The arrow flies! Do you intend to sting me with your banal words?~ [BD53832] */
  IF ~~ THEN REPLY #253833 /* ~I only meant that it can be difficult for wanderers such as us to form long-lasting attachments.~ */ GOTO 615
  IF ~~ THEN REPLY #253834 /* ~If it keeps you from bothering me with your prattle, then yes.~ */ GOTO 614
END

IF ~~ THEN BEGIN 614 // from: 613.1
  SAY #253835 /* ~I see you are no different from these other surface-dwellers. I shall remember this insult.~ [BD53835] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 615 // from: 613.0 611.2 611.1 611.0
  SAY #253836 /* ~It is strange to think of romance in a time of war. Tell me, are there any who have imprisoned your heart?~ [BD53836] */
  IF ~  Global("bd_neera_romanceactive","global",1)
Global("bd_NeeraRomance2","GLOBAL",2)
~ THEN REPLY #253837 /* ~Actually, I'm finding myself drawn to Neera.~ */ GOTO 616
  IF ~  Global("bd_corwin_romanceactive","global",1)
Global("bd_CorwinRomance3","GLOBAL",2)
~ THEN REPLY #253838 /* ~To tell you the truth, Corwin is often in my thoughts.~ */ GOTO 616
  IF ~  Global("bd_glint_romanceactive","global",1)
Global("bd_GlintRomance1","GLOBAL",2)
~ THEN REPLY #253839 /* ~Glint and I are becoming more than friends.~ */ GOTO 616
  IF ~  Global("bd_dorn_romanceactive","global",1)
Global("bd_DornRomance2","GLOBAL",2)
~ THEN REPLY #253840 /* ~Dorn is the only one with claim on my heart.~ */ GOTO 616
  IF ~  Global("bd_safana_romanceactive","global",1)
Global("bd_SafanaRomance3","GLOBAL",2)
~ THEN REPLY #253841 /* ~I find Safana very intriguing.~ */ GOTO 616
  IF ~~ THEN REPLY #253842 /* ~No one but you, Viconia.~ */ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
~ GOTO 617
  IF ~~ THEN REPLY #253843 /* ~No one special.~ */ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
~ GOTO 618
END

IF ~~ THEN BEGIN 616 // from: 615.4 615.3 615.2 615.1 615.0
  SAY #253844 /* ~Really? I would not have guessed. I wish you luck in wooing that one.~ [BD53844] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 617 // from: 615.5
  SAY #253845 /* ~Idiot! I'm not interested in your heart. You presume too much, surface-dweller.~ [BD53845] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 618 // from: 615.6
  SAY #253846 /* ~I see. Perhaps someone will yet come along to win the Bhaalspawn's love.~ [BD53846] */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 ~  Global("bd_ViconiaRomance4","GLOBAL",1)
~ THEN BEGIN 619 // from:
  SAY #253847 /* ~We should move quickly, abbil. I dislike being underground.~ [BD53847] */
  IF ~~ THEN REPLY #253848 /* ~I thought you liked the dark.~ */ DO ~SetGlobal("bd_ViconiaRomance4","GLOBAL",2)
~ GOTO 621
  IF ~~ THEN REPLY #253849 /* ~Afraid, Viconia?~ */ DO ~SetGlobal("bd_ViconiaRomance4","GLOBAL",2)
~ GOTO 620
  IF ~~ THEN REPLY #253850 /* ~We're moving as quickly as we can. We'll be out soon, I promise.~ */ DO ~SetGlobal("bd_ViconiaRomance4","GLOBAL",2)
~ GOTO 620
END

IF ~~ THEN BEGIN 620 // from: 619.2 619.1
  SAY #253851 /* ~Idiot! I am not so arrogant as to think I have nothing to fear from the Spider Queen. I turned my back on her, and that is not done lightly.~ [BD53851] */
  IF ~~ THEN REPLY #253852 /* ~You worship Shar now, isn't that right?~ */ GOTO 621
  IF ~~ THEN REPLY #253853 /* ~Then put your fear aside and focus on the mission. You're making everyone jumpy.~ */ GOTO 628
  IF ~  Global("bd_sdd318_viconia_shapur","locals",1)
~ THEN REPLY #253854 /* ~Do you think we're in danger?~ */ GOTO 625
  IF ~  !Global("bd_sdd318_viconia_shapur","locals",1)
~ THEN REPLY #253854 /* ~Do you think we're in danger?~ */ GOTO 624
END

IF ~~ THEN BEGIN 621 // from: 620.0 619.0
  SAY #253855 /* ~I do. My faith lies now with Shar the Nightsinger. I find the dark... soothing. The shadows remind me of the sweet oblivion to come after death.~ [BD53855] */
  IF ~~ THEN REPLY #253856 /* ~That sounds... peaceful.~ */ GOTO 622
  IF ~~ THEN REPLY #253857 /* ~Why did you change faiths?~ */ GOTO 623
  IF ~~ THEN REPLY #253858 /* ~That's very interesting, but we don't have time to talk now. Let's keep moving.~ */ GOTO 629
END

IF ~~ THEN BEGIN 622 // from: 621.0
  SAY #253859 /* ~To one who has spent so long running, hiding, scratching, and scraping to keep my body and soul alive, the quiet of eternal darkness after death seems very peaceful indeed.~ [BD53859] */
  IF ~~ THEN REPLY #253860 /* ~Why did you change faiths?~ */ GOTO 623
  IF ~  Global("bd_sdd318_viconia_shapur","locals",1)
~ THEN REPLY #253854 /* ~Do you think we're in danger?~ */ GOTO 625
  IF ~  !Global("bd_sdd318_viconia_shapur","locals",1)
~ THEN REPLY #253854 /* ~Do you think we're in danger?~ */ GOTO 624
  IF ~~ THEN REPLY #253858 /* ~That's very interesting, but we don't have time to talk now. Let's keep moving.~ */ GOTO 629
END

IF ~~ THEN BEGIN 623 // from: 622.0 621.1
  SAY #253863 /* ~That is a long story I do not feel like retelling. Suffice to say, the Spider Queen asked more of me than I could give. When I lost everything and found myself abandoned in the darkness, that is when I heard Shar whisper to me.~ [BD53863] */
  IF ~~ THEN REPLY #253864 /* ~The Spider Queen may send her minions after us, but we're strong enough to defeat any challenge.~ */ GOTO 626
  IF ~~ THEN REPLY #253865 /* ~Let's hurry, then. I wouldn't want to face the Spider Queen's minions down here. We'd be killed for sure, or worse.~ */ GOTO 627
  IF ~~ THEN REPLY #253866 /* ~What a tedious tale. If you're done jumping at shadows, let's move on.~ */ GOTO 628
END

IF ~~ THEN BEGIN 624 // from: 622.2 620.3
  SAY #253867 /* ~We are always in danger, abbil. Danger walks at our shoulders. Will the Spider Queen send agents after us? Perhaps.~ [BD53867] */
  IF ~~ THEN REPLY #253864 /* ~The Spider Queen may send her minions after us, but we're strong enough to defeat any challenge.~ */ GOTO 626
  IF ~~ THEN REPLY #253865 /* ~Let's hurry, then. I wouldn't want to face the Spider Queen's minions down here. We'd be killed for sure, or worse.~ */ GOTO 627
  IF ~~ THEN REPLY #253866 /* ~What a tedious tale. If you're done jumping at shadows, let's move on.~ */ GOTO 628
END

IF ~~ THEN BEGIN 625 // from: 622.1 620.2
  SAY #253868 /* ~We are always in danger, abbil. Danger walks at our shoulders. Will the Spider Queen send agents after us? Perhaps. We have already met some of her servants. She knew me.~ [BD53868] */
  IF ~~ THEN REPLY #253864 /* ~The Spider Queen may send her minions after us, but we're strong enough to defeat any challenge.~ */ GOTO 626
  IF ~~ THEN REPLY #253865 /* ~Let's hurry, then. I wouldn't want to face the Spider Queen's minions down here. We'd be killed for sure, or worse.~ */ GOTO 627
  IF ~~ THEN REPLY #253866 /* ~What a tedious tale. If you're done jumping at shadows, let's move on.~ */ GOTO 628
END

IF ~~ THEN BEGIN 626 // from: 625.0 624.0 623.0
  SAY #253869 /* ~I admire your bravery, <CHARNAME>. Yes, let us press on.~ [BD53869] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 627 // from: 625.1 624.1 623.1
  SAY #253870 /* ~Your courage wilts so quickly, male. It makes me smile to see you tremble like a mouse.~ [BD53870] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 628 // from: 625.2 624.2 623.2 620.1
  SAY #253871 /* ~I see you are no different from these other surface-dwellers. I shall remember this insult.~ [BD53871] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 629 // from: 622.3 621.2
  SAY #253872 /* ~As you wish.~ [BD53872] */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 ~  Global("bd_ViconiaRomance5","GLOBAL",1)
~ THEN BEGIN 630 // from:
  SAY #253873 /* ~Ibilth! My boots are worn down to the skin of my feet we've been walking so long.~ [BD53873] */
  IF ~~ THEN REPLY #253874 /* ~You're doing well, Viconia. I'm impressed by your fortitude.~ */ DO ~SetGlobal("bd_ViconiaRomance5","GLOBAL",2)
~ GOTO 631
  IF ~~ THEN REPLY #253875 /* ~We wouldn't have gotten this far if it hadn't been for you. Thank you.~ */ DO ~SetGlobal("bd_ViconiaRomance5","GLOBAL",2)
~ GOTO 631
  IF ~~ THEN REPLY #253876 /* ~The time would pass more quickly if you'd stop complaining every three steps.~ */ DO ~SetGlobal("bd_ViconiaRomance5","GLOBAL",2)
~ GOTO 634
END

IF ~~ THEN BEGIN 631 // from: 630.1 630.0
  SAY #253877 /* ~Do not try to placate me with hollow compliments!~ [BD53877] */
  IF ~~ THEN REPLY #253878 /* ~It wasn't a hollow compliment. I meant what I said.~ */ GOTO 632
  IF ~~ THEN REPLY #253879 /* ~I'd ask "is something wrong?", but it's pretty obvious that something's wrong.~ */ GOTO 632
  IF ~~ THEN REPLY #253880 /* ~I'm very sorry, Viconia. I didn't mean to upset you.~ */ GOTO 634
  IF ~~ THEN REPLY #253881 /* ~If that's the way you feel, I can promise you not another compliment will ever pass my lips.~ */ GOTO 633
END

IF ~~ THEN BEGIN 632 // from: 631.1 631.0
  SAY #253882 /* ~What are you trying to accomplish with your flattery?~ [BD53882] */
  IF ~~ THEN REPLY #253883 /* ~I'm not going to dignify that with a response. Get angry if you want, but I won't apologize for speaking my mind.~ */ GOTO 635
  IF ~~ THEN REPLY #253884 /* ~My nefarious goal is to "make conversation" while simultaneously "being nice to you." Dastardly, isn't it?~ */ GOTO 635
  IF ~~ THEN REPLY #253885 /* ~It's clear I upset you. Whatever I did wrong, I'm sorry.~ */ GOTO 634
  IF ~~ THEN REPLY #253886 /* ~You're being ridiculous. If that's the way you feel, I'll remain silent the rest of the trip.~ */ GOTO 633
END

IF ~~ THEN BEGIN 633 // from: 632.3 631.3
  SAY #253887 /* ~Wonderful! The male can learn!~ [BD53887] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 634 // from: 632.2 631.2 630.2
  SAY #253888 /* ~Cease your whinging. You sicken me, pup.~ [BD53888] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 635 // from: 632.1 632.0
  SAY #253889 /* ~I would prefer if we simply cease conversation for the time being. I shall not complain about my feet again.~ [BD53889] */
  IF ~~ THEN DO ~SetGlobal("bd_viconia_romanceactive","global",2)
~ EXIT
END

IF WEIGHT #26 ~  Global("bd_ViconiaRomance6","GLOBAL",1)
~ THEN BEGIN 636 // from:
  SAY #253890 /* ~If we must pass into a world of fiends and fire, I am glad it is this one.~ [BD53890] */
  IF ~~ THEN REPLY #253891 /* ~You're GLAD that we're going to the Nine Hells?~ */ DO ~SetGlobal("bd_ViconiaRomance6","GLOBAL",2)
~ GOTO 637
  IF ~~ THEN REPLY #253892 /* ~Is there another hell we could be going to?~ */ DO ~SetGlobal("bd_ViconiaRomance6","GLOBAL",2)
~ GOTO 637
  IF ~~ THEN REPLY #253893 /* ~Now is not the time for speech, Viconia. It is time for action.~ */ DO ~SetGlobal("bd_ViconiaRomance6","GLOBAL",2)
~ GOTO 647
END

IF ~~ THEN BEGIN 637 // from: 636.1 636.0
  SAY #253894 /* ~Believe me, I am not glad to be facing this portal. But were we to step into the Abyss, Lolth would strike me down in a heartbeat.~ [BD53894] */
  IF ~~ THEN REPLY #253895 /* ~So if it were the Abyss, we would be doomed, but since it's only the Nine Hells, you believe we'll be all right?~ */ GOTO 638
  IF ~~ THEN REPLY #253896 /* ~That's an optimistic way of looking at things, I suppose.~ */ GOTO 638
  IF ~~ THEN REPLY #253897 /* ~Now is not the time for speech, Viconia. It is time for action.~ */ GOTO 647
END

IF ~~ THEN BEGIN 638 // from: 637.1 637.0
  SAY #253898 /* ~If I stood next to anyone else, I would consider myself lost no matter what lay on the other side of that portal. But because it is you, I am confident.~ [BD53898] */
  IF ~~ THEN REPLY #253899 /* ~That may be the nicest thing you've ever said to me. Or possibly anyone.~ */ GOTO 639
  IF ~~ THEN REPLY #253900 /* ~I feel the same way about you, Viconia.~ */ GOTO 640
  IF ~~ THEN REPLY #253901 /* ~You really think we will succeed?~ */ GOTO 641
END

IF ~~ THEN BEGIN 639 // from: 638.0
  SAY #253902 /* ~Do not get accustomed to soft words from me.~ [BD53902] */
  IF ~~ THEN GOTO 642
END

IF ~~ THEN BEGIN 640 // from: 638.1
  SAY #253903 /* ~At this point, you have no choice but to rely on me, so it serves you well to flatter me. Still, I appreciate the compliment.~ [BD53903] */
  IF ~~ THEN GOTO 642
END

IF ~~ THEN BEGIN 641 // from: 638.2
  SAY #253904 /* ~You may think me an idiot, but in this moment, I do.~ [BD53904] */
  IF ~~ THEN GOTO 642
END

IF ~~ THEN BEGIN 642 // from: 641.0 640.0 639.0
  SAY #253905 /* ~You surprised me, abbil. I thought our alliance would prove tedious, but you've shown yourself to be not quite as bad as I'd thought.~ [BD53905] */
  IF ~~ THEN REPLY #253906 /* ~Thank you?~ */ GOTO 644
  IF ~~ THEN REPLY #253907 /* ~You can never give a straight compliment, can you, Viconia? There's always venom lurking beneath your honey.~ */ DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ GOTO 643
  IF ~~ THEN REPLY #253908 /* ~I'm so flattered. Really, what a staggering compliment. Give me a second to sit down and absorb it all.~ */ DO ~SetGlobal("bd_viconia_romanceactive","global",3)
~ GOTO 643
  IF ~~ THEN REPLY #253909 /* ~I know you don't pay honest compliments to people very often, Viconia. I appreciate your comment.~ */ GOTO 644
END

IF ~~ THEN BEGIN 643 // from: 644.1 642.2 642.1
  SAY #253910 /* ~Shall we quarrel before the gates of Hell themselves? Enough talk. Let us face our fate.~ [BD53910] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 644 // from: 642.3 642.0
  SAY #253911 /* ~It is difficult for me to speak my mind at times so that surface-dwellers understand me. I do not feel things as you do. I meant my statement to be flattering.~ [BD53911] */
  IF ~~ THEN REPLY #253912 /* ~I understand. Thank you.~ */ GOTO 645
  IF ~~ THEN REPLY #253913 /* ~It's not hard to pay someone a compliment, Viconia. You should practice more often.~ */ GOTO 643
  IF ~~ THEN REPLY #253914 /* ~We do seem to speak different languages at times. Still, I thank you for the effort.~ */ GOTO 645
END

IF ~~ THEN BEGIN 645 // from: 644.2 644.0
  SAY #253915 /* ~I'm sorry too for my earlier outburst. I was... tense.~ [BD53915] */
  IF ~~ THEN REPLY #253916 /* ~Don't worry about it.~ */ GOTO 646
  IF ~~ THEN REPLY #253917 /* ~We're all tense. I can forgive a little snappishness now and then.~ */ GOTO 646
  IF ~~ THEN REPLY #253918 /* ~You should be sorry. You were incredibly rude. Let's put it behind us and keep moving.~ */ GOTO 647
END

IF ~~ THEN BEGIN 646 // from: 645.1 645.0
  SAY #253919 /* ~It is customary, I think, to share a kiss for luck?~ [BD53919] */
  IF ~~ THEN REPLY #253920 /* ~I'm not sure whose custom that is, but I'm all for it.~ */ GOTO 647
  IF ~~ THEN REPLY #253921 /* ~I'd like that, Viconia.~ */ GOTO 647
  IF ~~ THEN REPLY #253922 /* ~I'd prefer to focus on the battle at hand. Let's press on.~ */ GOTO 647
END

IF ~~ THEN BEGIN 647 // from: 646.2 646.1 646.0 645.2 637.2 636.2
  SAY #253923 /* ~Lead on, abbil.~ [BD53923] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 648 // from:
  SAY #263885 /* ~Just make no promises as to the condition we'll find him in. Dwarves are not renowned for the grace with which they receive ill tidings.~ [BD63885] */
  IF ~~ THEN EXTERN ~BDDEEP~ 31
END

IF ~~ THEN BEGIN 649 // from:
  SAY #251723 /* ~I wonder, do you feel the same way about drow, Captain?~ [BD51723] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 310
END

IF ~~ THEN BEGIN 650 // from:
  SAY #256485 /* ~The gol has a point.~ [BD56485] */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 143
END

IF ~~ THEN BEGIN 651 // from:
  SAY #250201 /* ~Not the word I would have chosen. We would do well to be away from here before these faernen realize we are here.~ [BD50201] */
  IF ~~ THEN EXTERN ~BDDM01~ 2
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1368
END

IF ~~ THEN BEGIN 652 // from:
  SAY #250326 /* ~What is the source of this irrepressible optimism?~ [BD50326] */
  IF ~~ THEN EXTERN ~BDHALAT~ 7
END

IF ~~ THEN BEGIN 653 // from:
  SAY #250379 /* ~Cease your whining, <CHARNAME>. Try and show a little dignity.~ [BD50379] */
  IF ~~ THEN EXTERN ~BDHALAT~ 15
END

IF ~~ THEN BEGIN 654 // from:
  SAY #248978 /* ~The sooner this pointless exercise is over with, the better.~ [BD48978] */
  IF ~~ THEN EXTERN ~BDDENELD~ 13
END

IF ~~ THEN BEGIN 655 // from:
  SAY #248004 /* ~Everyone fears death, young one. It's the natural state of mortals. Shar teaches that it's foolish to chase hope or plan overmuch for the future. Death comes to all of us in the end. It's what we do in the moment that matters.~ [BD48004] */
  IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)
~ EXTERN ~BDHESTER~ 8
END

IF ~~ THEN BEGIN 656 // from:
  SAY #248007 /* ~Life is loss. In the end, we lose our lives. Accept that truth and move forward.~ [BD48007] */
  IF ~~ THEN EXTERN ~BDHESTER~ 10
END

IF ~~ THEN BEGIN 657 // from:
  SAY #248169 /* ~I am to nurse surface-dwellers now? Fine. If I must.~ [BD48169] */
  IF ~~ THEN GOTO 658
END

IF ~~ THEN BEGIN 658 // from: 657.0
  SAY #248171 /* ~The man is burning up. Ordinary methods will do little against a fever this strong. I know of a salve I can make that might reduce the heat.~ [BD48171] */
  IF ~~ THEN REPLY #248172 /* ~Good job, Viconia. ~ */ EXTERN ~BDXERRA~ 2
  IF ~~ THEN REPLY #258535 /* ~Thank the gods for that.~ */ EXTERN ~BDXERRA~ 2
END

IF ~~ THEN BEGIN 659 // from:
  SAY #248197 /* ~This man is in obvious pain, but he's also agitated. He's wasting energy flailing about. We need to get him to calm down. Relax, human. We're going to... wait. Stop! He's lost control!~ [BD48197] */
  IF ~~ THEN DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 660 // from:
  SAY #248224 /* ~Her symptoms are much more advanced. But why...? Ah. Her position in the center of camp. Proximity to others with the illness must make it worse.~ [BD48224] */
  IF ~~ THEN EXTERN ~BDZIDRAN~ 2
END

IF ~~ THEN BEGIN 661 // from:
  SAY #248279 /* ~The bark of the blackthorn tree might be used to brew a cure—if we can find one soon enough for it to make a difference.~ [BD48279] */
  IF ~~ THEN DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(261438,QUEST)
~ EXTERN ~BDDOSIA~ 16
END

IF ~~ THEN BEGIN 662 // from:
  SAY #248690 /* ~Am I to be offered out as a healing service, then?~ [BD48690] */
  IF ~~ THEN EXTERN ~BDHYRETH~ 2
END

IF ~~ THEN BEGIN 663 // from:
  SAY #248702 /* ~He speaks of Ilmater, god of suffering.~ [BD48702] */
  IF ~~ THEN EXTERN ~BDHYRETH~ 3
END

IF ~~ THEN BEGIN 664 // from:
  SAY #248735 /* ~Ilmater's followers embrace pain and loss—they believe suffering is a means to a greater end. Those who worship Shar know the truth: There is nothing noble in suffering needlessly. This man should accept healing and use his strength in service to his fellow fighters.~ [BD48735] */
  IF ~~ THEN EXTERN ~BDHYRETH~ 6
END

IF ~~ THEN BEGIN 665 // from:
  SAY #262062 /* ~I'll remember you said so, <CHARNAME>.~ [BD62062] */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 11
END

IF ~~ THEN BEGIN 666 // from:
  SAY #265391 /* ~You may find our talents more useful than you think, surfacer. I do not object to the male joining us.~ [BD65391] */
  IF ~~ THEN EXTERN ~BDBAELOT~ 33
END

IF ~~ THEN BEGIN 667 // from:
  SAY #262081 /* ~Is it worse than having drow among you, Captain? Or a duergar? Where does one draw the line for what is acceptable?~ [BD62081] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 325
END

IF WEIGHT #27 ~  Global("bd_viconia_reputation_warning","GLOBAL",1)
~ THEN BEGIN 668 // from:
  SAY #260576 /* ~Your quirks begin to irritate, <CHARNAME>. You care too much for the judgment of others. It makes you weak.~ [BD60576] */
  IF ~~ THEN REPLY #260577 /* ~What others think of me means little. I am the one who must live with the consequences of my actions. I do what I think best for myself and the world.~ */ DO ~SetGlobal("bd_viconia_reputation_warning","GLOBAL",2)
~ GOTO 670
  IF ~~ THEN REPLY #260578 /* ~Doing what is right makes me weak?~ */ DO ~SetGlobal("bd_viconia_reputation_warning","GLOBAL",2)
~ GOTO 669
  IF ~~ THEN REPLY #260579 /* ~You think me weak, Viconia? Keep talking and I'll show you weakness.~ */ DO ~SetGlobal("bd_viconia_reputation_warning","GLOBAL",2)
~ GOTO 671
END

IF ~~ THEN BEGIN 669 // from: 668.1
  SAY #260580 /* ~That you even have to ask is evidence of this truth. Do as you will, <CHARNAME>, but know that I do not blindly follow in your footsteps. I am watching you, and I do not like what I see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 670 // from: 668.0
  SAY #260581 /* ~Pretty words do not change the facts. You have it in you to achieve great things—but you won't, not while you indulge this surface-dweller "nobility."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 671 // from: 668.2
  SAY #260582 /* ~Hm. Perhaps I misjudged you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 672 // from:
  SAY #257556 /* ~I'll not waste my energy on this idiot. He is beyond my help—his fate is in the gods' hands now.~ [BD57556] */
  IF ~~ THEN EXTERN ~BDOPHYLL~ 38
END

IF ~~ THEN BEGIN 673 // from:
  SAY #263911 /* ~A gentle giant. I've never seen the like.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("glint")
Global("BD_DOD_HELPED_SEMAHL_FIGHT","MYAREA",1)
~ THEN EXTERN ~BDGLINTJ~ 229
END

IF ~~ THEN BEGIN 674 // from:
  SAY #265822 /* ~That's not all she's called by those who know her, I promise you that.~ */
  IF ~~ THEN EXTERN ~BDSAFANA~ 126
END

IF ~~ THEN BEGIN 675 // from:
  SAY #263815 /* ~They'll cost you more than that if she moves beyond the Winding Water—and she will. She'll not allow something like you to operate without interference.~ */
  IF ~~ THEN EXTERN ~BDCOLDH~ 34
END
