// creator  : weidu (version 24900)
// argument : BAELOTHJ.DLG
// game     : .
// source   : ./override/BAELOTHJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BAELOTHJ~

IF ~  Global("BA_BALDUR","LOCALS",1)
~ THEN BEGIN 0 // from:
  SAY #231941 /* ~Being the center of attention is something I normally aspire to, but I am beginning to rethink that stance.~ [bab131] */
  IF ~~ THEN DO ~SetGlobal("BA_BALDUR","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_NASHKEL","LOCALS",1)
~ THEN BEGIN 1 // from:
  SAY #231942 /* ~Stand at attention, you deficient dimwits! Grab a shovel. We can make the Underdark in a few hours of digging.~ [bab132] */
  IF ~~ THEN DO ~SetGlobal("BA_NASHKEL","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_FAI","LOCALS",1)
~ THEN BEGIN 2 // from:
  SAY #231943 /* ~A den of diminutive dullards! What would possess us to come to such a filthy hovel?~ [bab133] */
  IF ~~ THEN DO ~SetGlobal("BA_FAI","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_IRON_THRONE","LOCALS",1)
~ THEN BEGIN 3 // from:
  SAY #231944 /* ~Now this... THIS I like. Secure a room for us at once!~ [bab134] */
  IF ~~ THEN DO ~SetGlobal("BA_IRON_THRONE","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CLOAKWOOD","LOCALS",1)
~ THEN BEGIN 4 // from:
  SAY #231945 /* ~There aren't any elves around here, are there? I have no qualms about vaporizing a few of those abrasive curs, but they have an irritating habit of attacking in large numbers.~ [bab135] */
  IF ~~ THEN DO ~SetGlobal("BA_CLOAKWOOD","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CANDLEKEEP","LOCALS",1)
~ THEN BEGIN 5 // from:
  SAY #231946 /* ~Ugh, a pretentious pile of petty ponderances. No wonder you surface folk never get anything done—you're too busy poring over ancient manuscripts. Where's the flair? Where's the excitement?~ [bab136] */
  IF ~~ THEN DO ~SetGlobal("BA_CANDLEKEEP","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CATACOMBS","LOCALS",1)
~ THEN BEGIN 6 // from:
  SAY #231947 /* ~If I recall correctly, it's "rock crushes lizard." I won't forget that one again.~ [bab137] */
  IF ~~ THEN DO ~SetGlobal("BA_CATACOMBS","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_UNDERCITY","LOCALS",1)
~ THEN BEGIN 7 // from:
  SAY #231948 /* ~The Undercity? Well, it's close enough to home, I suppose.~ [bab138] */
  IF ~~ THEN DO ~SetGlobal("BA_UNDERCITY","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_BHAAL_TEMPLE","LOCALS",1)
~ THEN BEGIN 8 // from:
  SAY #231949 /* ~This brutish brawler we're about to beat had better be the finale to this little escapade. We need to focus on GETTING ME HOME ALREADY.~ [bab139] */
  IF ~~ THEN DO ~SetGlobal("BA_BHAAL_TEMPLE","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #232160 /* ~To be honest, Dorn... You might be on to something.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1347
END

IF ~~ THEN BEGIN 10 // from:
  SAY #240014 /* ~The morose moppet mustn't meander with her malevolent one-time master. How magnificently, mawkishly melancholy.~ [BD40014] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #240015 /* ~I know you've no reason to trust Baeloth, M'Khiin, but you can trust me. Is there no way I can convince you to leave the past behind?~ */ EXTERN ~BDMKHIIN~ 28
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #240015 /* ~I know you've no reason to trust Baeloth, M'Khiin, but you can trust me. Is there no way I can convince you to leave the past behind?~ */ EXTERN ~BDMKHIIN~ 30
  IF ~~ THEN REPLY #240016 /* ~Shut up, Baeloth. This goblin is worth ten of you. Begone.~ */ GOTO 11
  IF ~~ THEN REPLY #240017 /* ~And yet she's preferable company to you.~ */ GOTO 11
  IF ~~ THEN REPLY #240018 /* ~Best move along, goblin. I don't want further trouble.~ */ EXTERN ~BDMKHIIN~ 26
END

IF ~~ THEN BEGIN 11 // from: 10.3 10.2
  SAY #240025 /* ~You'll regret renouncing this relationship.~ [BD40025] */
  IF ~~ THEN REPLY #240026 /* ~I don't think I will. Now leave me.~ */ GOTO 13
  IF ~~ THEN REPLY #262074 /* ~To the south, there is a Flaming Fist camp. Go there, and tell them <CHARNAME> sent you. They're accustomed to duergar and drow; they shouldn't give you too much trouble.~ */ GOTO 12
  IF ~~ THEN REPLY #262075 /* ~Bide here a time. If I've need of a showman, I shall return for you.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #240033 /* ~I shall attend this camp for a time. So long as it amuses me.~ [BD40033] */
  IF ~~ THEN REPLY #262091 /* ~M'Khiin. Now will you join me?~ */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
SetGlobal("bd_npc_camp","locals",1)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 23
  IF ~~ THEN REPLY #262092 /* ~Best you be on your way as well, goblin.~ */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
SetGlobal("bd_npc_camp","locals",1)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 25
END

IF ~~ THEN BEGIN 13 // from: 11.2 11.0
  SAY #240029 /* ~Bah! Baeloth Barrityl's bound to do better without your bevy of brutes.~ [BD40029] */
  IF ~~ THEN REPLY #240030 /* ~M'Khiin. Now will you join me?~ */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 23
  IF ~~ THEN REPLY #240031 /* ~Good riddance to bad rubbish. Best you be on your way as well, goblin.~ */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 25
END

IF ~~ THEN BEGIN 14 // from:
  SAY #235630 /* ~A cadre of crusaders curb our crossing. Quite the conundrum.~ [BD35630] */
  IF ~~ THEN EXTERN ~BDIVANN~ 0
END

IF ~~ THEN BEGIN 15 // from:
  SAY #264773 /* ~The Flaming Fist frump fathoms the facts. That False Fluorescent Female fairly radiates from the defensive spells enfolding her.~ [BD64773] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 34
END

IF ~~ THEN BEGIN 16 // from:
  SAY #235928 /* ~A shrill shrew she is, shielded by a shroud of self-righteous sanctimony.~ [BD35928] */
  IF ~~ THEN EXTERN ~BDCORWIN~ 19
END

IF ~~ THEN BEGIN 17 // from:
  SAY #243619 /* ~It would be my mildly put-upon pleasure.~ [BD43619] */
  IF ~~ THEN DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_baeloth","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("bdcutgl3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #256062 /* ~If any can sing a soothing song to soften a stone, 'tis I!~ [BD56062] */
  IF ~~ THEN EXTERN ~BDMENHI1~ 2
END

IF ~~ THEN BEGIN 19 // from:
  SAY #256063 /* ~I shall wrack my rationality for a ritual to cause this reticent rock to relent!~ [BD56063] */
  IF ~~ THEN EXTERN ~BDMENHI2~ 2
END

IF ~~ THEN BEGIN 20 // from:
  SAY #256064 /* ~Though I am no bard, I shall bestow my bewitching vocals on this baffling boulder!~ [BD56064] */
  IF ~~ THEN EXTERN ~BDMENHI3~ 2
END

IF ~~ THEN BEGIN 21 // from:
  SAY #256065 /* ~My melodious murmurs will melt this mysterious menhir!~ [BD56065] */
  IF ~~ THEN EXTERN ~BDMENHI4~ 2
END

IF ~~ THEN BEGIN 22 // from:
  SAY #256069 /* ~Surely my sibilant syllables will sway this stony slab!~ [BD56069] */
  IF ~~ THEN EXTERN ~BDMENHI5~ 2
END

IF ~~ THEN BEGIN 23 // from:
  SAY #256244 /* ~I shall regale this reticent rock with a rapturous recital!~ [BD56244] */
  IF ~~ THEN EXTERN ~BDMENHI6~ 2
END

IF ~~ THEN BEGIN 24 // from:
  SAY #236600 /* ~Shhh. More laughs if we let the little lady live unenlightened. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #236600 /* ~Shhh. More laughs if we let the little lady live unenlightened. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #243452 /* ~The stone's sorcery will spread, striking down first the sickly, then the strong. We must seek the spellscroll that started the sequence to stymie this scheme.~ [BD43452] */
  IF ~~ THEN EXTERN ~BDBF2~ 3
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~BDKHALID~ 74
END

IF ~~ THEN BEGIN 27 // from:
  SAY #246666 /* ~Absolutely, though acknowledging one's individual abilities is also an admirable attribute.~ [BD46666] */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 18
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 12
END

IF ~~ THEN BEGIN 28 // from:
  SAY #246668 /* ~Oh, muzzle your mouth, you malodorous miscreant.~ [BD46668] */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 17
END

IF ~~ THEN BEGIN 29 // from:
  SAY #260753 /* ~Quite correct!~ */
  IF ~~ THEN EXTERN ~BDPRITCH~ 24
END

IF ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",2)
~ THEN BEGIN 30 // from:
  SAY #247217 /* ~Best attend the boisterous little beast. Beating blockades is very much her bailiwick.~ [BD47217] */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",3)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #247306 /* ~The malicious monster makes itself manifest. You see what I had to put up with?~ [BD47306] */
  IF ~~ THEN DO ~ActionOverride("MKHIIN",MoveToPoint([1089.1796]))
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #252451 /* ~This vexatious varmint is vicious enough for my tastes.~ [BD52451] */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 61
END

IF ~~ THEN BEGIN 33 // from:
  SAY #250817 /* ~Despite its diminutive dimensions, the dog has a dauntless demeanor. I daresay it would have distinguished itself in my pit of peril.~ */
  IF ~~ THEN EXTERN ~BDDOGW01~ 5
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 537
END

IF ~~ THEN BEGIN 34 // from:
  SAY #237642 /* ~What a waste. We would wangle wealth from these worms with a wee fee to see thee. Why give it away for free?~ [BD37642] */
  IF ~~ THEN EXTERN ~BDWILCH~ 5
END

IF ~~ THEN BEGIN 35 // from:
  SAY #241795 /* ~Were it not for me, they would've been terminated ten times over. Ten times ten times over!~ [BD41795] */
  IF ~~ THEN REPLY #241796 /* ~It's true. Baeloth is a valued ally. And now I need his assistance.~ */ EXTERN ~BDSHAPUR~ 20
  IF ~~ THEN REPLY #241797 /* ~You'll have to forgive Baeloth; he has a gift for overstatement. Even so, I can't deny that he comes in handy at times. We'll be off now.~ */ EXTERN ~BDSHAPUR~ 21
  IF ~~ THEN REPLY #241798 /* ~Enough. It is past time we were on our way.~ */ EXTERN ~BDSHAPUR~ 20
END

IF ~~ THEN BEGIN 36 // from:
  SAY #241839 /* ~My surface sojourn has not been smooth, 'tis true. I shall share several stories that might serve to illustrate—~ [BD41839] */
  IF ~~ THEN EXTERN ~BDKAELET~ 4
END

IF ~~ THEN BEGIN 37 // from:
  SAY #241841 /* ~You know my name? My infamy infiltrates even the Underdark! Naturally, I'm not surprised.~ [BD41841] */
  IF ~~ THEN EXTERN ~BDUMAR~ 5
END

IF ~~ THEN BEGIN 38 // from:
  SAY #241844 /* ~Idio-what now? Your abusive appellation is absent the appropriate awe one should associate with so illustrious an enchanter as the Entertaining One, Baeloth Barrityl!~ [BD41844] */
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~BDUMAR~ 6
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~SAFANJ~ 87
END

IF ~~ THEN BEGIN 39 // from:
  SAY #241848 /* ~"Eking out a living"? My powerful performances earn a preponderance of platinum!~ [BD41848] */
  IF ~~ THEN EXTERN ~BDKAELET~ 5
END

IF ~~ THEN BEGIN 40 // from:
  SAY #266069 /* ~Oh, there are drow and there are drow. Do not disparage all denizens of the Underdark as undesirable associates.~ [BD66069] */
  IF ~~ THEN EXTERN ~BDSHAPUR~ 30
END

IF ~~ THEN BEGIN 41 // from:
  SAY #249150 /* ~Beware, I behold Shevarash's brand upon this beauty's amulet. She serves the sentinel of elven settlements, the slaughterer of drow.~ [BD49150] */
  IF ~~ THEN EXTERN ~BDSINDRE~ 3
END

IF ~~ THEN BEGIN 42 // from:
  SAY #250164 /* ~Do not humor this horrendous half-wit. Her harebrained hypothesis will have us gracing this ghost's guts.~ [BD50164] */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 91
END

IF ~~ THEN BEGIN 43 // from:
  SAY #240544 /* ~Ah, now THAT's some good alliteration!~ [BD40544] */
  IF ~~ THEN EXTERN ~BDFLOSS~ 7
END

IF ~~ THEN BEGIN 44 // from:
  SAY #260427 /* ~Oh, I like this Mordaus's style...~ [BD60427] */
  IF ~~ THEN DO ~SetGlobal("bd_battle","global",32)
StartCutSceneMode()
StartCutSceneEx("bdcut40d",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #238218 /* ~Yes. Turn a troop of testy trolls loose. Terrific. I'll be way, way over here. ~ */
  IF ~~ THEN EXTERN ~BDTHRUDD~ 1
END

IF ~~ THEN BEGIN 46 // from:
  SAY #238288 /* ~I've certainly seen superior salvos, but this was still spectacular.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #238746 /* ~Oh, hells. This is a fine, fiery fix.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #238951 /* ~"Lackey"? Methinks my meretricious myrmidon misunderstands my most favored maxim on this matter: "You're not the boss of me."~ [BD38951] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 66
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 67
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 68
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 69
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 49 // from:
  SAY #239004 /* ~A contract is conclusive. Custom compels my cooperation.~ [BD39004] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF ~  Global("BD_Sacrifice_Baeloth","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 50 // from:
  SAY #239052 /* ~What the hells, <CHARNAME>? You forsake a fruitful friendship, putting your faith in fickle fortune to spare me from that foul fiend?~ [BD39052] */
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239053 /* ~Forgive me, Baeloth. I acted in haste, without thought. ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 51
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239053 /* ~Forgive me, Baeloth. I acted in haste, without thought. ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 54
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239054 /* ~Relax, Baeloth. Everything turned out for the best, didn't it? ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 52
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239054 /* ~Relax, Baeloth. Everything turned out for the best, didn't it? ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 54
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239055 /* ~Fortune had nothing to do with it. I had faith in myself—you would be wise to do the same. You are still with me, are you not? ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 53
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #239055 /* ~Fortune had nothing to do with it. I had faith in myself—you would be wise to do the same. You are still with me, are you not? ~ */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 54
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #239056 /* ~Mark me on this: Haste makes mistakes. Mistakes make misery. Next time, think a moment before making your move.~ [BD39056] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #239057 /* ~I'll concede the contention, but I must confess I find myself considerably less comfortable cooperating with so contemptuous a character as you.~ [BD39057] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.4
  SAY #239058 /* ~I am, though I'm considerably less comfortable cooperating with so contemptible a character as yourself.~ [BD39058] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 50.5 50.3 50.1
  SAY #269992 /* ~When the foul fiend follows me to seize my soul, I expect your enthusiastic assistance, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #239338 /* ~Eh. Our Avernal victory won't mean very much till we vacate this vile vault.~ [BD39338] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #239402 /* ~A brutal, bloody business—this bad behavior blemishes the biography of Baldur's Gate's best.~ [BD39402] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #256471 /* ~Pathetic. A prudent person could have pocketed a pretty penny peddling the pest back to her people.~ [BD56471] */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 142
END

IF ~  Global("bd_baeloth_reputation_warning","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #260606 /* ~A word to the wise, <CHARNAME>. Your heinous habit of defending the desperate and downtrodden doesn't do it for this drow. The demented determination to be a hero? It's wearing thin.~ [BD60606] */
  IF ~~ THEN REPLY #260607 /* ~I am sorry to hear that, Baeloth. But you must know I put a premium on preserving the public peace and am less perturbed by the pursuit of profit.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #260608 /* ~If it makes you feel better, think of what we do as a play. The people want heroes. I'm just giving them what they want.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 59
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #260609 /* ~Your comfort's really a concern of mine.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 60
  IF ~  !CheckStatGT(Player1,11,CHR)
~ THEN REPLY #260609 /* ~Your comfort's really a concern of mine.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 61
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #260610 /* ~If you've a problem with the way I conduct myself, drow, you're always free to leave.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 60
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY #260610 /* ~If you've a problem with the way I conduct myself, drow, you're always free to leave.~ */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 61
END

IF ~~ THEN BEGIN 59 // from: 58.1 58.0
  SAY #260611 /* ~An elegant articulation of an unfortunately upright approach. An attitude adjustment is in order if you aim to retain the Entertainer. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.4 58.2
  SAY #260612 /* ~I am well aware of it. And if your altruistic aspirations aren't adapted as I've advised, you'll observe my evacuation in short order.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.5 58.3
  SAY #260613 /* ~This nonchalant neglect gnawed at me before now, but this is more than even the Entertainer can endure. And so, aluve'.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXIT
END
