// creator  : weidu (version 24900)
// argument : YOSHJ.DLG
// game     : .
// source   : ./override/YOSHJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~YOSHJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #14279 /* ~Ha! Such a delightful child you are. Here, let me juggle a few knives to amuse you. How do you like that?~ */
  IF ~~ THEN EXTERN ~BRAT2~ 4
END

IF ~~ THEN BEGIN 1 // from:
  SAY #14486 /* ~That sounds like quite the bit of speculation on your imagination's part, sir.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #14552 /* ~No, my lady, I am pretty sure you do not.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #15171 /* ~I doubt it, friend. You must have me mistaken for someone else.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #21417 /* ~Hello, pretty one! My... the people here are rather friendly, aren't they? Cheshire smiles from strangers.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #22658 /* ~It is tempting, lovely one... but I think not.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #23698 /* ~No thank you, good sir. I've... already attempted the experience once before.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #24865 /* ~I take it you are speaking to me?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 5
END

IF ~~ THEN BEGIN 8 // from:
  SAY #24867 /* ~I'd say you're selling it far too cheaply.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 6
END

IF ~~ THEN BEGIN 9 // from:
  SAY #24869 /* ~Of course. Look at the construction. The sheer size. You could fit an army in there, almost. Like a castle.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 7
END

IF ~~ THEN BEGIN 10 // from:
  SAY #24871 /* ~Good show! I can see your salesmanship skills are most excellent.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 8
END

IF ~~ THEN BEGIN 11 // from:
  SAY #25006 /* ~Me? Actually, I can't even remember the last time someone cheated ME out of anything.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #25398 /* ~Yarin? Yarin, you old leather fossil! How goes your retirement?~ */
  IF ~~ THEN EXTERN ~YARIN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #25400 /* ~That's so sad I want to vomit.~ */
  IF ~~ THEN EXTERN ~YARIN~ 8
END

IF ~~ THEN BEGIN 14 // from:
  SAY #25403 /* ~I'll outlive you and then some, Yarin, just you wait.~ */
  IF ~~ THEN EXTERN ~YARIN~ 9
END

IF ~~ THEN BEGIN 15 // from:
  SAY #25665 /* ~Perhaps you should have been more careful about wearing such a thing to this part of the city. Have you tried retracing your steps?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #25793 /* ~Hah! There are many reasons that thieves have survived as long as they have... none of which I am sure you would even be slightly aware of, madame.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #26263 /* ~I... I was not looking at anything, good fishwife. I, um, oh never mind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #27658 /* ~If you believe that truly, then I can think of a particular planar sphere I'd like to sell you...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #28441 /* ~You wound me, sir. I am but a simple citizen up to simple citizenry-sort activities. Nothing to interest you, I am most sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38673 /* ~But we have done nothing to you, lady. We have only just come upon you... perhaps if you calm yourself, we could—~ */
  IF ~~ THEN EXTERN ~CLONE1~ 6
END

IF ~~ THEN BEGIN 21 // from:
  SAY #38760 /* ~Money has far more uses than to simply be given away, Nalia... I'm sure that is exactly what <CHARNAME> has in mind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #38765 /* ~It might not hurt to see where the child's mother is... if it's on our way, that is. But it's your call, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #38767 /* ~I think I recognize the place. Like I told you when we met, I think this is Athkatla. Is that right? Is this the City of Coin itself?~ */
  IF ~~ THEN EXTERN ~BYSTAND1~ 11
END

IF ~~ THEN BEGIN 24 // from:
  SAY #38769 /* ~And the fight between the wizard and those men... you saw the whole thing?~ */
  IF ~~ THEN EXTERN ~BYSTAND1~ 2
END

IF ~~ THEN BEGIN 25 // from:
  SAY #38780 /* ~We should be careful, <CHARNAME>... There's no telling what is going on within if the city guard can't handle it. "Be prepared for anything" is what I always say.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #38867 /* ~Aye, I see it. The subtle exclusion of those born into wealth. You've a good eye on you, old man. Do you belong here, then?~ */
  IF ~~ THEN EXTERN ~WCUST03~ 3
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38921 /* ~I've heard of the place. It is the large central building here in the slums. Best be careful inside... although if you are looking for other adventurers, no place is better.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38922 /* ~Hmph. If someone's going up against the Shadow Thieves, they're in for a short tenure here in Athkatla. They rule the docks if not the entire city.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #38934 /* ~Oh yes... these are the guards I remember. Blind as a bat once a few coins get placed over their eyes. Tsk.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #38945 /* ~I don't know if you want to get involved in this, <CHARNAME>... from what I've heard, the slavers in the slums here are not to be trifled with. But it could be fun, I suppose...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #39172 /* ~Ah, I see. We've interrupted something, I see. Hmmm... Why, aren't you Lord Havrelock? I believe I've seen you somewhere... with Lady Havrelock, I do believe...~ */
  IF ~~ THEN EXTERN ~CUSTOM~ 1
END

IF ~~ THEN BEGIN 32 // from:
  SAY #39361 /* ~Profit does not lie in coin alone, my brawny dwarf. Let us consider the man's offer, for there may be much that we could potentially gain.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 33 // from:
  SAY #39366 /* ~Take on the slavers themselves? On their home ground? I don't know... do it if you must, <CHARNAME>, but don't think it will be easy.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 24
END

IF ~~ THEN BEGIN 34 // from:
  SAY #39367 /* ~The man's not simply going to confess his crimes. Perhaps there might be some way to get him to allow us access to the entertainments without seeming too... obvious.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #39379 /* ~Of course there is. Isn't there always?~ */
  IF ~~ THEN EXTERN ~LEHTIN~ 10
END

IF ~~ THEN BEGIN 36 // from:
  SAY #40233 /* ~You needn't be so threatening, little one... I was just admiring your selection, that is all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #42220 /* ~I knew him not, but I mourn for your loss. ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 339
END

IF ~~ THEN BEGIN 38 // from:
  SAY #48462 /* ~*sigh* The trouble is, knowing this city the way I do it is more than likely that the girl will be robbed of her coin before the day is out. A pity how this world works.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 57
END

IF ~~ THEN BEGIN 39 // from:
  SAY #48471 /* ~That's probably not something you want to think about too closely, Aerie. Some parts of the world are very ugly places, and more often than not, the journey to them is a short one.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 179
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 40 // from:
  SAY #48520 /* ~How interesting. I would have thought you'd feel right at home in this slime, Viconia.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 39
END

IF ~~ THEN BEGIN 41 // from:
  SAY #48528 /* ~Hmm. Are you sure you're talking about your rodent there, Minsc? Not a heart attack? I've seen you get pretty excited, after all...~ */
  IF ~~ THEN EXTERN ~MINSCJ~ 97
END

IF ~~ THEN BEGIN 42 // from:
  SAY #48529 /* ~Well... I've heard of this Lord Jierdan, <CHARNAME>, if it's any help. He has the coin to back up his offer. He's not reputed to be the nicest noble in Amn, but then who is?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 43 // from:
  SAY #48554 /* ~I, for one, would rather leave this place with my hide. But it is up to <CHARNAME>, of course... if <PRO_HESHE> says fight, then I shall do my best.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 44
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 44 // from:
  SAY #48575 /* ~I hope you have another plan. I've seen the Order at work when they get roused, and it is not a pretty sight.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #48582 /* ~Aye, that makes sense. I have heard of his name mentioned in some less-than-reputable circles in the past. This Jierdan seems to be a special case.~ */
  IF ~~ THEN EXTERN ~GARREN~ 19
END

IF ~~ THEN BEGIN 46 // from:
  SAY #48593 /* ~I don't know... I have never taken a commission in the past before knowing what it is I was to perform. But the Cowled Wizards can reward with the best of them, I hear.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 2
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 218
END

IF ~~ THEN BEGIN 47 // from:
  SAY #48638 /* ~You can't possibly be that naive, Nalia. What did they teach you in that castle of yours?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #48653 /* ~Heh... I do believe you've just been forced into committing an act of charity, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #48724 /* ~Hmmm... you wouldn't be talking about this purse, would you? I just found it on the ground. It's got quite a hefty clink to it. You should be a little more, ah, careful...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #48751 /* ~That sounds like an interesting offer, my good woman, but I'm a fair bit preoccupied at the moment. Perhaps later, when I'm alone.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #48813 /* ~Dead? I? I don't know where you get your information, friend, but it's obviously not from a reputable source.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48882 /* ~Hmph. I see where this is going...~ */
  IF ~~ THEN EXTERN ~LOUT~ 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48910 /* ~Take no mind of her, <CHARNAME>. Always been a bit surly to newcomers... I'm sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48956 /* ~You needn't worry on our part, lieutenant. From what I've seen, <CHARNAME> and <PRO_HISHER> allies can protect themselves from just about anything.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48963 /* ~He is going off on his own to confront the murderer, that tanner? Brave. Or perhaps foolish. I wonder which it is.~ */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("misc5m")
OR(3)
!InParty("Keldorn")
Dead("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
OR(3)
!InParty("Anomen")
Dead("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
See(Player1)
Global("FoundAegis","GLOBAL",0)
~ THEN BEGIN 56 // from:
  SAY #48987 /* ~Ahhh... the inspector. If you're of a mind, we can likely turn him over to Brega in the government building in the Government District. I can't think of anywhere else to bring him.~ */
  IF ~~ THEN DO ~SetGlobal("FoundAegis","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #49235 /* ~You don't know what you're talking about, dear man. Best check your pockets again and then decide for yourself who the true victim is in the docks, yes?~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 138
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 143
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 80
END

IF ~~ THEN BEGIN 58 // from:
  SAY #49255 /* ~Well... you are taking a chance letting Embarl off like that. I doubt he'll stick around to tell anyone of your generosity, though, so I wouldn't worry. We'd best get this dagger back.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #49259 /* ~I've heard of him, <CHARNAME>... at least a little. He is a man with many connections amongst the underworld in this city. A man of his word, too, as far as that is worth.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 8
END

IF ~~ THEN BEGIN 60 // from:
  SAY #49262 /* ~He may be right, <CHARNAME>. It would take someone of power to find good information on the Cowled Wizards... This may be your only opportunity to find Imoen.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 75
END

IF ~~ THEN BEGIN 61 // from:
  SAY #49278 /* ~Ah, yes. Aran Linvail. The real power behind the Shadow Thieves in this city, and therefore one of the most powerful men in Faerûn. We should step carefully, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 62 // from:
  SAY #49341 /* ~If there are Harpers gathered in this city, they will be very protective of their privacy. Harshly so. I would be wary of whatever this... man... asks you to do.~ */
  IF ~~ THEN EXTERN ~LYROS~ 30
END

IF ~~ THEN BEGIN 63 // from:
  SAY #49353 /* ~The Harpers aren't likely to tell us what happened to his spy willingly... but they might answer some questions since we, ah, helped with that other man.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 66
END

IF ~~ THEN BEGIN 64 // from:
  SAY #49357 /* ~Y-yes, Master Irenicus, just as you wanted it.~ */
  IF ~~ THEN REPLY #49359 /* ~Yoshimo, what are you talking about?~ */ EXTERN ~PPIRENI1~ 37
  IF ~~ THEN REPLY #49360 /* ~Traitor! You know this evil creature?!~ */ EXTERN ~PPIRENI1~ 36
  IF ~~ THEN REPLY #58693 /* ~So you betray me to the monster? I had thought I earned your trust.~ */ EXTERN ~PPIRENI1~ 46
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49363 /* ~Thank you, Master Irenicus. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #49380 /* ~Stealing into the temple of the Storm God is unlikely to earn you the gratitude of the Talassan priesthood, <CHARNAME>. Best we proceed carefully with this endeavor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #49403 /* ~So you fight excesses of both good and evil? How do you judge which is which? And surely the accumulation of power by your very organization tips that balance, doesn't it?~ */
  IF ~~ THEN EXTERN ~MERONIA~ 2
END

IF ~~ THEN BEGIN 68 // from:
  SAY #49427 /* ~Irenicus! I served you well! Please!~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 51
END

IF ~~ THEN BEGIN 69 // from:
  SAY #49429 /* ~Y-yes, Master Irenicus, just as you wanted it.~ */
  IF ~~ THEN REPLY #49434 /* ~Uh, Yoshimo, what are you talking about?~ */ EXTERN ~PPIRENI2~ 56
  IF ~~ THEN REPLY #49435 /* ~Traitor! You know this evil creature?!~ */ EXTERN ~PPIRENI2~ 55
  IF ~~ THEN REPLY #58730 /* ~So you betray me to the monster? I had thought I earned your trust.~ */ EXTERN ~PPIRENI2~ 67
END

IF ~~ THEN BEGIN 70 // from:
  SAY #49497 /* ~Are you not concerned about arousing the ire of the Cowled Wizards for such a deed, <CHARNAME>? Let us hope the blame falls on the Shadow Thieves and not upon our own heads, eh?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #49508 /* ~You walk a dangerous path, wizard. After all your talk, you are nothing better than an opportunistic turncoat. Not that I think we should be complaining or anything.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 27
END

IF ~~ THEN BEGIN 72 // from:
  SAY #49534 /* ~You should think on this, <CHARNAME>. If there's any organization in this city which can aid you in your quest, the Shadow Thieves would be the one.~ */
  IF ~  OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  Global("YoshimoShadowTrouble","GLOBAL",1)
See("Yoshimo")
InParty("Yoshimo")
~ THEN EXTERN ~RENAL~ 103
  IF ~  OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 146
  IF ~  OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 90
END

IF ~~ THEN BEGIN 73 // from:
  SAY #49562 /* ~This is an excellent opportunity, <CHARNAME>... for us all. Remember, though, that you must act as a loyal guild member at all times or our cover will be destroyed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #49577 /* ~A fair choice, my friend. The Bloodscalp is a demanding master, but there's few routes to riches that are as quick as the running of a guild. Hopefully, I will be of help.~ */
  IF ~~ THEN EXTERN ~RENAL~ 77
END

IF ~~ THEN BEGIN 75 // from:
  SAY #49611 /* ~Why would the Harpers set us on such a simple task? Just to gain admittance? It doesn't sound right... I smell a rat, <CHARNAME>. Proceed carefully, if you intend to.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #49789 /* ~Perhaps... perhaps this is not a bad idea. We would save much coin and achieve the same goal, it seems. Although... it would be certain to make enemies of the Shadow Thieves...~ */
  IF ~~ THEN EXTERN ~BODHI~ 130
END

IF ~~ THEN BEGIN 77 // from:
  SAY #49852 /* ~Kill... Aran Linvail? The Shadowmaster of the entire Shadow Thieves guild? How... are you mad, woman?~ */
  IF ~~ THEN EXTERN ~BODHI~ 73
END

IF ~~ THEN BEGIN 78 // from:
  SAY #49855 /* ~Killing the Shadowmaster... if we succeed, it will be a feat of no small note, <CHARNAME>. Still, though, people have tried it in the past and come nowhere near succeeding.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 132
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 78
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49966 /* ~If you number merchants amongst your count of the thieves in Athkatla then you might just have the right of it, indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #50034 /* ~Coming from you, those words sound like compliments. This Keldorn must be an incredible knight.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 234
END

IF ~~ THEN BEGIN 81 // from:
  SAY #50083 /* ~Hmmm. It seems to me that if this task cannot be performed by a beholder or its minions that we are in for a chore indeed. Best to proceed most cautiously, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #50118 /* ~If the head of this temple has that kind of taste, what do they need Sarles for? I could come up with a lump like that every day. Heh... at least it worked out, I suppose.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #50123 /* ~<CHARNAME>... I remember who this is now! This is a child-killer from Baldur's Gate who escaped! His head is likely worth something to the authorities!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #50180 /* ~—you only publish a hundred or so, it contains numerous errors, it has no index... and yet you charge 200 gold for a copy. And you people call US thieves.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #50191 /* ~*snort* Indeed. And this is just to get the form. Wait to see the bribe needed when his mother has to actually submit the copies to three different places.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #50309 /* ~You'd barely see the difference. He still cries all the time, speaks nonsense, and burps after every meal. Fortunately, the toilet training has come along nicely.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 245
END

IF ~~ THEN BEGIN 87 // from:
  SAY #50399 /* ~I don't see it anywhere, my good chap. Perhaps you should retrace your steps a bit, eh?~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 176
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 161
END

IF ~~ THEN BEGIN 88 // from:
  SAY #52285 /* ~Well, he shouldn't have gotten the trap wrong, now, should he? It's a simple enough device... and such a mistake in the field would have cost him his life just as quickly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #55200 /* ~This... this is the victory, then? He seemed to me so... so... godlike, I suppose. To think he could fall and simply die seems wrong somehow.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 90 // from:
  SAY #55225 /* ~This... what place is this? I died, I am sure of it! But... did you bring us here, <CHARNAME>? Are things left unfinished with... with Irenicus? Still?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Jaheira")
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

IF ~~ THEN BEGIN 91 // from:
  SAY #55662 /* ~He should have been more careful. I'm sure his condition could have been avoided had he cooperated with the new asylum staff.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 15
END

IF ~~ THEN BEGIN 92 // from:
  SAY #55667 /* ~We had to make the best of it. I myself managed to win a fair amount of coin from your crew... they seemed to think they were the only ones who knew how to play cards, oddly.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  !IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 117
END

IF ~~ THEN BEGIN 93 // from:
  SAY #55704 /* ~Your men are indisposed, good woman. Hand over the girl without a fuss, and you just might avoid any unpleasantries... although that is, of course, up to <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 3
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56464 /* ~It's been my experience that some crimes never end in punishment, by the law, gods, or otherwise. I would never let down my kin as you have, but then you are not me.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 177
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56497 /* ~Such corruption is not uncommon, and there is little we can do to help Nalia now. Unless, of course, we find proof of Isaea's true nature and bring it to his superiors.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut39a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56545 /* ~I wonder what such a woman would do if forced to live in poverty for once. Be the most noble woman of the gutters, I suppose. Some dirt would look good on her gilt, however.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #58144 /* ~I do not hold out much hope that this will help us. Joining the Shadow Thieves is... is a mistake. It will lead to trouble.~ */
  IF ~~ THEN REPLY #58146 /* ~As opposed to what? We are destined to come into conflict with this other guild anyway.~ */ GOTO 98
  IF ~~ THEN REPLY #58147 /* ~Perhaps, but I will chance that if it helps retrieve Imoen. Do you suspect something?~ */ GOTO 98
  IF ~~ THEN REPLY #58148 /* ~Are these not your type of people? I would have thought you would prefer this.~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.2 97.1 97.0
  SAY #58145 /* ~I meant nothing. We are perhaps... getting involved where we shouldn't be. That is... well...~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #58149 /* ~Pay me no mind. I am muddled in my thoughts. We will proceed as you wish to.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #58150 /* ~Now we are sure to step on some toes. Be careful, <CHARNAME>.~ */
  IF ~~ THEN REPLY #58181 /* ~I intend to be. Have you additional concerns?~ */ GOTO 102
  IF ~~ THEN REPLY #58182 /* ~You sound worried. Do you fear the possibility of battle? That is not like you.~ */ GOTO 102
  IF ~~ THEN REPLY #58183 /* ~I will do as I see fit, and you will follow. Why the hesitation?~ */ GOTO 102
END

IF ~~ THEN BEGIN 101 // from: 102.0
  SAY #58180 /* ~I do not mean to delay you. We will all do what we must when the time comes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from: 100.2 100.1 100.0
  SAY #58184 /* ~I... I do not mean to complicate things. I simply worry whom we might find ourselves in conflict with.~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 103 // from:
  SAY #58185 /* ~I am certain many are there deservedly. Yes, of that I am certain. Some must deserve it. ~ */
  IF ~~ THEN REPLY #58192 /* ~Have you some insight into the place?~ */ GOTO 104
  IF ~~ THEN REPLY #58193 /* ~You sound as though you hope it is true. Do you know of the place?~ */ GOTO 104
  IF ~~ THEN REPLY #58194 /* ~Perhaps, but that does not mean Imoen should be confined there, does it?~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.2 103.1 103.0
  SAY #58191 /* ~I did not mean to suggest anything contrary to what Mr. Linvail is saying. Just that some must deserve it. It seems such a brutal place. ~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #58196 /* ~Not that I have ever been, but I have heard of some of those confined there, not unlike your Imoen. Can it be so cruel a place?~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 106 // from:
  SAY #58197 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #58659 /* ~And a step behind their friends. I trust no more will happen to hamper our success. ~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 61
END

IF ~~ THEN BEGIN 108 // from:
  SAY #58661 /* ~Good business? What is this? Are we all to be slaughtered together? If my life is forfeit, how soon for yours?! Think on this!~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 62
END

IF ~~ THEN BEGIN 109 // from:
  SAY #58663 /* ~Astutely determined, Mistress Bodhi. The scoundrel clearly hides his true intent.~ */
  IF ~~ THEN EXTERN ~PPBODHI3~ 19
END

IF ~~ THEN BEGIN 110 // from:
  SAY #58687 /* ~Th... things are not as they seem, <CHARNAME>, and for that, I apologize. I can offer no explanation that you would find sufficient. ~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 111 // from:
  SAY #58688 /* ~It... It is a discovery that gives me shame, <CHARNAME>. All is not what I have made it out to be.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 112 // from:
  SAY #58691 /* ~I... I fear he is correct in this, <CHARNAME>, and I have no excuse that you would find satisfactory.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 113 // from:
  SAY #58698 /* ~I apologize, <CHARNAME>. There are circumstances that you are not aware of.~ */
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("AERIE")
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
~ THEN GOTO 114
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 524
  IF ~  IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~VICONIJ~ 182
  IF ~  IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~AERIEJ~ 192
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 306
  IF ~  IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
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
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
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
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
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
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
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
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #58699 /* ~I cannot give a reason that will satisfy. Your wrath will come regardless.~ */
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",0)
~ THEN REPLY #58700 /* ~You are damn right it will! There is nothing lower than a traitor!~ */ EXTERN ~PPIRENI1~ 38
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",0)
~ THEN REPLY #58701 /* ~We will discuss this later, Yoshimo. You can be assured of that.~ */ EXTERN ~PPIRENI1~ 38
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",0)
~ THEN REPLY #58702 /* ~I will survive this, despite what you think you had to do.~ */ EXTERN ~PPIRENI1~ 38
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",1)
~ THEN REPLY #58733 /* ~You are damn right it will! There is nothing lower than a traitor!~ */ EXTERN ~PPIRENI2~ 57
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",1)
~ THEN REPLY #58734 /* ~We will discuss this later, Yoshimo. You can be assured of that.~ */ EXTERN ~PPIRENI2~ 57
  IF ~  Global("YoshimoAndHisBetrayal","GLOBAL",1)
~ THEN REPLY #58735 /* ~I will survive this, despite what you think you had to do.~ */ EXTERN ~PPIRENI2~ 57
END

IF ~~ THEN BEGIN 115 // from:
  SAY #58724 /* ~Th... things are not as they seem, <CHARNAME>, and for that, I apologize. I can offer no explanation that you would find sufficient. ~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 116 // from:
  SAY #58727 /* ~I... I fear he is correct in this, <CHARNAME>, and I have no excuse that you would find satisfactory.~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 117 // from:
  SAY #58728 /* ~It... It is a discovery that gives me shame, <CHARNAME>. All is not what I have made it out to be.~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 118 // from:
  SAY #58732 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #58793 /* ~No one will be testing anyone's limits while Yoshimo is involved. Do you hear, fool? Yoshimo!~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 7
END

IF ~~ THEN BEGIN 120 // from:
  SAY #58795 /* ~Think harder, you fool! That can't be right!~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 8
END

IF ~~ THEN BEGIN 121 // from: 128.1 127.1
  SAY #58806 /* ~Desharik! Hold a moment! Certainly you would have cause to allow me to go to the asylum. I am, after all, the famous Yoshimo. Yoshimo.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 29
END

IF ~~ THEN BEGIN 122 // from:
  SAY #58808 /* ~Yes, yes, I do. It is important that I speak with those inside. <CHARNAME> is aiding me.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 30
END

IF ~~ THEN BEGIN 123 // from:
  SAY #58810 /* ~However you wish. Just so long as we get there.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 31
END

IF ~~ THEN BEGIN 124 // from:
  SAY #58812 /* ~Thank you, I will not forget this.~ */
  IF ~~ THEN REPLY #58813 /* ~It's fortunate that Desharik seems to be the only person in Faerûn that *has* heard of you.~ */ GOTO 125
  IF ~~ THEN REPLY #58814 /* ~Do you two know each other? That went pretty smoothly.~ */ GOTO 125
  IF ~~ THEN REPLY #58815 /* ~All right, what's going on here, Yoshimo? ~ */ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.2 124.1 124.0
  SAY #58816 /* ~It's an embarrassing story that I won't get in to. Suffice to say that Mister Desharik probably thinks that he owes me from a previous debt. Nothing serious.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 32
END

IF ~~ THEN BEGIN 126 // from:
  SAY #58824 /* ~<CHARNAME>, it's the opportunity we needed. We should get inside as soon as we can. ~ */
  IF ~~ THEN EXTERN ~PPDESH~ 34
END

IF ~~ THEN BEGIN 127 // from:
  SAY #58826 /* ~<CHARNAME>, do not let Minsc speak for us. I know I can get us in without getting us killed or making us look like fools. I know I can do this. We must hurry.~ */
  IF ~~ THEN REPLY #58827 /* ~Let Minsc say what he must. I enjoy him.~ */ EXTERN ~PPDESH~ 14
  IF ~~ THEN REPLY #58828 /* ~Very well, Yoshimo. Speak to Desharik then.~ */ GOTO 121
END

IF ~~ THEN BEGIN 128 // from:
  SAY #58830 /* ~<CHARNAME>, as much as I would like to act out this game, I think I should speak and hurry this up. We must arrive at the asylum soon. Very soon.~ */
  IF ~~ THEN REPLY #58831 /* ~No, Yoshimo. I have the charisma to pull it off. My thoughts are in turmoil, Desharik!~ */ EXTERN ~PPDESH~ 21
  IF ~~ THEN REPLY #58832 /* ~Very well, if you think you know what to say.~ */ GOTO 121
END

IF ~  Global("TalkedToRenal","GLOBAL",0)
AreaCheck("AR0300")
!Global("WorkingForBodhi","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoMentionsRenal","LOCALS",0)
~ THEN BEGIN 129 // from:
  SAY #59104 /* ~Ahhh... perhaps this is a good time to tell you of something, <CHARNAME>, seeing as you are leading us into the docks and everything.~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoMentionsRenal","LOCALS",1)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #59109 /* ~This is Shadow Thief territory... which I have had a couple of run-ins with over the past few months. They don't tend to appreciate independent operators like myself.~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #59110 /* ~So the last time they caught me operating in the city, I was told either to report to the head of the guild in the docks, Renal Bloodscalp, or suffer the consequences.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #59111 /* ~Seems that Renal needs an outsider to deal with a problem and was willing to trade my punishment by the guild for a service. Failure to go to him... might be a bit messy.~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #59114 /* ~Now, I'm pretty safe with you, I'd think, but it's up to you. If we go and see Renal, we might be able to talk him into a reward, and it'll avoid complications later on.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #59115 /* ~What do you think, <CHARNAME>? I don't want to cause any problems here. I just wanted to bring this up, both to warn you and perhaps mention a possible opportunity for us both.~ */
  IF ~~ THEN REPLY #59119 /* ~Very well. Perhaps we should go and talk to this Renal.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo needs to see Renal Bloodscalp

Once we entered the Docks District, Yoshimo informed me that the leader of the local Shadow Thieves, Renal Bloodscalp, is eager to see him. Yoshimo hinted that, as a freelancer, this is the only way he can avoid eventual trouble. Renal should be in a building somewhere in the district.~ */ GOTO 135
  IF ~~ THEN REPLY #59120 /* ~Perhaps later. We've no time for this right now.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo needs to see Renal Bloodscalp

Once we entered the Docks District, Yoshimo informed me that the leader of the local Shadow Thieves, Renal Bloodscalp, is eager to see him. Yoshimo hinted that, as a freelancer, this is the only way he can avoid eventual trouble. Renal should be in a building somewhere in the district.~ */ GOTO 136
  IF ~~ THEN REPLY #59121 /* ~I've no interest working with the Shadow Thieves period, Yoshimo.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo needs to see Renal Bloodscalp

Once we entered the Docks District, Yoshimo informed me that the leader of the local Shadow Thieves, Renal Bloodscalp, is eager to see him. Yoshimo hinted that, as a freelancer, this is the only way he can avoid eventual trouble. Renal should be in a building somewhere in the district.~ */ GOTO 137
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #59124 /* ~Whenever it's convenient... the guild headquarters is here in the docks and shouldn't be difficult to find. I just hope they let us in without... problems.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.1
  SAY #59125 /* ~Well, I wouldn't wait too long. The Bloodscalp's got a fearsome reputation. Still, I've no real fear of him. We can do as we wish.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 134.2
  SAY #59128 /* ~No? I would think they could at least offer decent information. They have power here, <CHARNAME>... power enough even to help you. But it's your decision.~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL")
Global("TalkedToRenal","GLOBAL",0)
!Global("WorkingForBodhi","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoReminder","LOCALS",0)
~ THEN BEGIN 138 // from:
  SAY #59135 /* ~Hmmm. If we are going to pay the Bloodscalp a visit, <CHARNAME>, perhaps we should not wait so long. Perhaps soon we might pay the guildmaster a visit, yes?~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",1)
SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL")
Global("TalkedToRenal","GLOBAL",0)
!Global("WorkingForBodhi","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoReminder","LOCALS",1)
~ THEN BEGIN 139 // from:
  SAY #59137 /* ~You do not intend to see Renal Bloodscalp anytime soon, do you? Ahhh, no matter. If you change your mind, however, I have little doubt the man would still wish to see us.~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #59435 /* ~I am so pleased that you gave any thought at all to my well-being, sire. It is always good to be remembered by one's peers.~ */
  IF ~~ THEN EXTERN ~RENAL~ 96
END

IF ~~ THEN BEGIN 141 // from:
  SAY #59437 /* ~Yoshimo, if you please, sire. Where I come from, such a pet name is only used by... well, let us say that you and I have not become so familiar just yet, hm?~ */
  IF ~~ THEN EXTERN ~RENAL~ 97
END

IF ~~ THEN BEGIN 142 // from:
  SAY #59439 /* ~I have come as you have commanded, sire. You have a task for me?~ */
  IF ~  See(Player1)
~ THEN EXTERN ~RENAL~ 98
  IF ~  !See(Player1)
~ THEN EXTERN ~RENAL~ 99
END

IF ~~ THEN BEGIN 143 // from:
  SAY #59448 /* ~You... will not endanger <PRO_HIMHER>, sire? It would be a poor treatment of my honor if my companion was brought to danger because of my debt.~ */
  IF ~~ THEN EXTERN ~RENAL~ 102
END

IF ~~ THEN BEGIN 144 // from:
  SAY #59451 /* ~Perhaps.~ */
  IF ~~ THEN EXTERN ~RENAL~ 104
END

IF ~~ THEN BEGIN 145 // from:
  SAY #59456 /* ~You are too good to me, sire.~ */
  IF ~~ THEN EXTERN ~RENAL~ 44
END

IF ~~ THEN BEGIN 146 // from:
  SAY #61019 /* ~The druid is right, my large friend. The wizard obviously had great power, and I doubt we have seen the last of him. Perhaps we should see if allies can be found here.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PostCutSpeak","AR0700",1)
~ THEN BEGIN 147 // from:
  SAY #61020 /* ~Odd that the wizard would stop fighting... and odder still that he would demand that your young companion be taken, <CHARNAME>, and not you.~ */
  IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)
~ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #61021 /* ~Obviously, there is more here than meets the eye. We must get our bearings, I think, and find out what lies behind all this... and why you have become involved.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #61022 /* ~I think your druid friend is right, <CHARNAME>. I doubt we've seen the last of this wizard. Perhaps there are allies to be found here who might explain your involvement in all this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #61023 /* ~While I do not have quite the enthusiasm of your large friend, <CHARNAME>, I do agree that we must move quickly to protect ourselves.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #61024 /* ~We do not know anything about this wizard, or whom he was fighting and why... or what your involvement in all this is. You need to find allies, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END
