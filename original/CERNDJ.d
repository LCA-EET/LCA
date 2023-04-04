// creator  : weidu (version 24900)
// argument : CERNDJ.DLG
// game     : .
// source   : ./override/CERNDJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~CERNDJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalTimerExpired("FindDruids","GLOBAL")
Global("Complain","LOCALS",1)
~ THEN BEGIN 0 // from:
  SAY #7911 /* ~I must insist that we go to the druid grove and confront the wayward druids there. If we do not, I will be forced to leave your company. The sun dost set, and night shall remove the safety of the light.~ [CERND67] */
  IF ~~ THEN REPLY #8102 /* ~How much longer will you wait? I don't want you leaving in the middle of a battle.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #8103 /* ~I will go when I am ready to do so. This will wait for my attention.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #8104 /* ~I'm not quite sure what you just said, but I'm sure you are right. We will go soon.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7950 /* ~Time is not our ally in this matter. A few days at most, though at the end of a tenday, I can wait no longer.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #8098 /* ~It will no more do that than pigs will fly south come winter. This matter is urgent, and I will not wait forever.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #8105 /* ~I thank you. Once this matter is resolved, I will be more than happy to assist you in your endeavors.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  GlobalTimerExpired("FindDruids","GLOBAL")
Global("Complain","LOCALS",3)
~ THEN BEGIN 4 // from:
  SAY #8133 /* ~As slowly as the seasons crawl, slower still is our progress! I must go to the druid grove, and I must do it soon. If you will not guide the group in that direction, then I will have to go on my own.~ [CERND68] */
  IF ~~ THEN DO ~IncrementGlobal("Complain","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #8134 /* ~I would, my friend, but this IS my home and it is YOU who intrude. Well, it was my home, but the winds of nature did take my sails and I had to follow the...~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #8568 /* ~Er, yes, well. I'm sure he had his reasons. Often it is best to obey the duties of your calling and serve the greater...~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 2
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8570 /* ~She! Where is this she? Where has the lady of the house gone? ~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 3
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8573 /* ~Please, good sir, I must know where she has gone. ~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 4
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8576 /* ~Fennecia! She was our serving girl. I was going to ask about her as well.~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 5
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8578 /* ~You needn't continue to chastise. I have learned my humble position, and I shall walk with due care, as a ground squirrel must scurry amidst the feet of...~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8580 /* ~Some coins for you regardless. Farewell.~ */
  IF ~~ THEN EXTERN ~CEBEGGAR~ 7
END

IF WEIGHT #2 ~  Global("CerndBeggar","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #8582 /* ~Well, that was unpleasant. I guess I should expect more of the same to come. As the trees are buffeted and snapped in the face of the gale, I shall be as the bamboo and flex.~ [CERND69] */
  IF ~~ THEN REPLY #8583 /* ~A good attitude. You will need it if you wish a second chance from these people.~ */ DO ~SetGlobal("CerndBeggar","GLOBAL",2)
SetGlobalTimer("CerndNannyTimer","GLOBAL",TWO_DAYS)
~ GOTO 13
  IF ~~ THEN REPLY #8584 /* ~Oh, shut up. ~ */ DO ~SetGlobal("CerndBeggar","GLOBAL",2)
SetGlobalTimer("CerndNannyTimer","GLOBAL",TWO_DAYS)
~ GOTO 14
  IF ~~ THEN REPLY #8585 /* ~A few less parables perhaps. Don't be so quick to proclaim the moral high ground while here.~ */ DO ~SetGlobal("CerndBeggar","GLOBAL",2)
SetGlobalTimer("CerndNannyTimer","GLOBAL",TWO_DAYS)
~ GOTO 15
  IF ~~ THEN REPLY #8586 /* ~Your faith gives you strength, but it is also the indirect cause of this mess. Lay off a bit.~ */ DO ~SetGlobal("CerndBeggar","GLOBAL",2)
SetGlobalTimer("CerndNannyTimer","GLOBAL",TWO_DAYS)
~ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8587 /* ~You are right; I am deserving of their scorn. I hope my wife, Galia, is forgiving. I thought we had an understanding. Come, the house is but up the steps.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #8588 /* ~Galia didn't like my words either, but they helped show we were not compatible. I hope our reunion will be smoother. Come, the nanny is up the steps.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY #8589 /* ~I still feel my greater duty was to nature. There are several kinds of duty, I suppose. I hope Galia still understands... Come, it is just up the steps.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #8590 /* ~It is who I am, but I shall speak with care. I hope Galia is more forgiving. We left under good terms... or so I thought. Come, the nanny is but up the steps.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 29 54 82 even though they appear after this state */
~  Global("NannyWarning","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #8675 /* ~I hate to impose, but we really should go look into my wife's whereabouts. I'm sure she's fine, but it would be best to find out for sure.~ */
  IF ~~ THEN DO ~SetGlobalTimer("CerndNannyTimer","GLOBAL",TWO_DAYS)
SetGlobal("NannyWarning","GLOBAL",0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 54 82 even though they appear after this state */
~  Global("CerndPlot","GLOBAL",0)
Global("CerndIgarol","GLOBAL",1)
See("Ceigarol")
~ THEN BEGIN 18 // from:
  SAY #8711 /* ~Igarol! I would know your mottled hide anywhere. How are you?~ [CERND73] */
  IF ~~ THEN DO ~SetGlobal("CerndPlot","GLOBAL",1)
SetGlobal("CerndIgarol","GLOBAL",2)
SetGlobalTimer("TalkedIgarolTimer","GLOBAL",TWO_MINUTES)
~ EXTERN ~CEIGAROL~ 0
END

IF ~~ THEN BEGIN 19 // from:
  SAY #8725 /* ~The years have taken your memory, Igarol, though even the greatest crags are eroded by the rivers of time. It is Cernd, and once you called me neighbor.~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 1
END

IF ~~ THEN BEGIN 20 // from:
  SAY #8739 /* ~I... I don't know why you say that, but I assure you it is I. Like the hare changes coats to suit the season, I am different but the same. You must see th...~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 2
END

IF ~~ THEN BEGIN 21 // from:
  SAY #8742 /* ~Now I serve the lands; is that such a change? Surely you see that my greater duty...~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 3
END

IF ~~ THEN BEGIN 22 // from:
  SAY #8744 /* ~She understood, even if you do not. She saw that my fate was to serve nature; there was no room for the mundane activities of city living. She understood...~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 4
END

IF ~~ THEN BEGIN 23 // from:
  SAY #8782 /* ~Well, you certainly make claim to know much of what happened between me and Galia alone. I left on good terms, I left in good faith, and I left her well taken care of.~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 5
END

IF ~~ THEN BEGIN 24 // from:
  SAY #8784 /* ~Wh... what?~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 6
END

IF ~~ THEN BEGIN 25 // from:
  SAY #8790 /* ~She never... I never heard... When did she...?~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 7
END

IF ~~ THEN BEGIN 26 // from:
  SAY #8794 /* ~At least tell me how she is. She is well, isn't she?~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 8
END

IF ~~ THEN BEGIN 27 // from:
  SAY #8797 /* ~Speak to me, Igarol! Please.~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 9
END

IF ~~ THEN BEGIN 28 // from:
  SAY #8799 /* ~I thank you, Igarol, even though this news is most troubling. I must speak with Galia and tell her... tell her my thoughts.~ */
  IF ~~ THEN EXTERN ~CEIGAROL~ 10
END

IF WEIGHT #6 /* Triggers after states #: 54 82 even though they appear after this state */
~  Global("CerndIgarol","GLOBAL",2)
GlobalTimerExpired("TalkedIgarolTimer","GLOBAL")
~ THEN BEGIN 29 // from:
  SAY #8809 /* ~I am sorry... It appears we have run into some skeletons of mine. I am sure this will be straightened out in time, so if we could make haste to my old home, I would appreciate it.~ [CERND74] */
  IF ~~ THEN REPLY #8891 /* ~You do not seem too sure of your words. Your welcome may well be a cold one.~ */ DO ~SetGlobal("CerndIgarol","GLOBAL",3)
~ GOTO 30
  IF ~~ THEN REPLY #8892 /* ~Going to look up the old girlfriend and renew ties? Think she'll take you back?~ */ DO ~SetGlobal("CerndIgarol","GLOBAL",3)
~ GOTO 31
  IF ~~ THEN REPLY #8893 /* ~Really, Cernd, you didn't strike me as the type to run out on your wife.~ */ DO ~SetGlobal("CerndIgarol","GLOBAL",3)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #8902 /* ~I must take this path. I did care for Galia, but it was not to be. I thought I had laid these things to rest, but it appears I didn't do a very good job. ~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #8907 /* ~That is not my interest. Long ago, Galia and I could have had a life together, but other things called to me and those feelings are in the past.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 32 // from: 29.2
  SAY #8936 /* ~I did no such thing! We had an understanding, and I thought the matter resolved. I could not offer the life she wished, and she could not abide mine.~ */
  IF ~~ THEN GOTO 138
END

IF WEIGHT #8 /* Triggers after states #: 54 82 even though they appear after this state */
~  GlobalTimerExpired("CerndComplainHomeTimer","GLOBAL")
Global("CerndComplainHome","GLOBAL",0)
~ THEN BEGIN 33 // from:
  SAY #8938 /* ~I should go find my former wife as soon as possible. As much as I regret having to take this trip, I must still insist we go soon.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 54 82 even though they appear after this state */
~  Global("CerndPlot","GLOBAL",1)
Global("CerndNanny","GLOBAL",1)
~ THEN BEGIN 34 // from:
  SAY #8946 /* ~Ahh, Fennecia, you are as I remember you. You look unsure? It is Cernd, your former employer. I hope you recall.~ [CERND75] */
  IF ~~ THEN DO ~SetGlobal("CerndComplainHome","GLOBAL",1)
SetGlobal("CerndNanny","GLOBAL",2)
~ EXTERN ~CENANNY~ 1
END

IF ~~ THEN BEGIN 35 // from:
  SAY #8947 /* ~Fennecia? Please, I have come to speak with Galia. Is she here? Our old home is deserted.~ */
  IF ~~ THEN EXTERN ~CENANNY~ 2
END

IF ~~ THEN BEGIN 36 // from:
  SAY #8948 /* ~Dead? But... Igarol... Fennecia, what happened? Tell me.~ */
  IF ~~ THEN EXTERN ~CENANNY~ 3
END

IF ~~ THEN BEGIN 37 // from:
  SAY #8967 /* ~I should say I do. I would speak with your master Deril. Do be quick about getting him, will you?~ */
  IF ~~ THEN EXTERN ~CEGLUT~ 1
END

IF ~~ THEN BEGIN 38 // from:
  SAY #8969 /* ~As the simple wasp must coerce the flower to release its nectar, so will I rip your throat from its moorings and drain your lifeblood if I do not see Deril and my child! UNDERSTAND?!~ */
  IF ~~ THEN EXTERN ~CEGLUT~ 2
END

IF ~~ THEN BEGIN 39 // from:
  SAY #8971 /* ~Good man, good man, you go now and get him.~ */
  IF ~~ THEN REPLY #8972 /* ~Cernd, that was quite the outburst. I didn't think you had it in you.~ */ GOTO 40
  IF ~~ THEN REPLY #8973 /* ~Could you be a little less insane please?! I'd like to get out of here alive.~ */ GOTO 41
  IF ~~ THEN REPLY #8974 /* ~Odd time to develop a spine, Cernd. I was expecting him to attack right there.~ */ GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8975 /* ~It's not so much in me as in a puddle around me. Scared myself, I did. It worked though. Let's see what our friend brings back with him.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut87a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #8976 /* ~I'm not exactly sure what came over me there. Glad it passed, but it seemed to do the trick. Let's see what our thick friend brings back with him.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut87a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.2
  SAY #8977 /* ~I was as well. Not the brightest thing I've done today. Oh well, it seemed to do the trick. Let's see what the big lout retrieves.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut87a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #8978 /* ~I disturb! I would have words with you!~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 1
END

IF ~~ THEN BEGIN 44 // from:
  SAY #8980 /* ~I am called Cernd, and we have business to discuss.~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 2
END

IF ~~ THEN BEGIN 45 // from:
  SAY #8982 /* ~Well, it is here... er... I am here, and we have matters that we must discuss!~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 3
END

IF ~~ THEN BEGIN 46 // from:
  SAY #8984 /* ~My wife and her death! My child and his life!~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 4
END

IF ~~ THEN BEGIN 47 // from:
  SAY #8986 /* ~I... I...~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 5
END

IF ~~ THEN BEGIN 48 // from:
  SAY #8988 /* ~I am the child's father and rightful guardian! ~ */
  IF ~~ THEN REPLY #8989 /* ~Cernd, accuse him of the murder of Galia. If we threaten to bring the guards into it, he may relinquish the child.~ */ GOTO 49
  IF ~~ THEN REPLY #8990 /* ~Cernd, we will back you if you threaten him. That will make him hand over the child.~ */ GOTO 55
  IF ~~ THEN REPLY #8991 /* ~Give it a rest, Cernd. All is lost. I will not risk my neck for a brat you cannot even name.~ */ GOTO 53
  IF ~~ THEN REPLY #8992 /* ~We can beat this lout, Cernd. Let us stop this chatter and simply kill the bastard!~ */ EXTERN ~CEDERIL~ 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #8993 /* ~I am the child's father, and I make claim that you murdered the mother! Galia died in your care, and the guards of this city will...~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 6
END

IF ~~ THEN BEGIN 50 // from:
  SAY #8995 /* ~Shut up.~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 7
END

IF ~~ THEN BEGIN 51 // from:
  SAY #8997 /* ~SHUT UP!~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 8
END

IF ~~ THEN BEGIN 52 // from:
  SAY #8999 /* ~I will tear your eyes as the raven!~ */
  IF ~~ THEN REPLY #9000 /* ~We're with you, Cernd! Let's get him!~ */ EXTERN ~CEDERIL~ 9
  IF ~~ THEN REPLY #9001 /* ~Ehh, you're on your own here, Cernd. He said he has visitors. I don't like these odds.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1 48.2
  SAY #9007 /* ~Then I will fight him myself! I release you from any bond you feel you have with me! This I must do!~ */
  IF ~~ THEN EXTERN ~CEDERIL~ 12
END

IF WEIGHT #3 ~  PartyHasItem("misc8t")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("CerndBabyTalk","LOCALS",0)
~ THEN BEGIN 54 // from:
  SAY #9010 /* ~We have him! Oh, my child... I must take him to a safe place. I will go to the druid grove. Perhaps you will meet me there? Once he is established in their care, I might travel again for a time. I shall see...~ [CERND70] */
  IF ~~ THEN DO ~SetGlobal("CerndBaby","GLOBAL",1)
SetGlobal("CerndBabyTalk","LOCALS",1)
TakePartyItem("misc8t")
DestroyItem("misc8t")
~ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 48.1
  SAY #9013 /* ~Hand me my child, or we shall cause such damage that the guard must ask questions despite your bribes: who you are, what you do... who your GUESTS are!~ */
  IF ~~ THEN DO ~CreateCreature("CeLich",[355.569],E)
~ EXTERN ~CEDERIL~ 13
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #9014 /* ~I just realized I was never told his name. I... will name him anew. His mother's middle name, for she is all I hope he remembers. A fine name. Ahsdale.~ */
  IF ~~ THEN DO ~AddXPObject("Cernd",50000)
TakePartyItem("misc8t")
DestroyItem("misc8t")
AddexperienceParty(20000)
EraseJournalEntry(6594)
EraseJournalEntry(10127)
EraseJournalEntry(23340)
EraseJournalEntry(23492)
SetGlobal("CerndBaby","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobalTimer("CerndBabyDone","GLOBAL",ONE_DAY)
Wait(1)
EscapeArea()
~ SOLVED_JOURNAL #16555 /* ~Cernd's child

We have recovered Cernd's child from Deril. Cernd has renamed the boy Ahsdale and brought him to the druid grove to be reared. He bade me to come and collect him from there after a day or so.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #9080 /* ~Trying to make me repentant for the ways of the storm will prove no more fruitful than whistling down the wind.~ */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 58 // from:
  SAY #9232 /* ~And by what authority do you make this threat? This is not the way of right-thinking servants of nature. Explain yourself.~ */
  IF ~~ THEN EXTERN ~CEDRUID1~ 1
END

IF ~~ THEN BEGIN 59 // from:
  SAY #9234 /* ~So I see, though I am confused. The Great Druid has not heard good things about what has happened here. Attacks, threats, brutality.~ */
  IF ~~ THEN EXTERN ~CEDRUID1~ 2
END

IF ~~ THEN BEGIN 60 // from:
  SAY #9242 /* ~She? What of Gragus? Was he not the Great Druid of this wood?~ */
  IF ~~ THEN EXTERN ~CEDRUID1~ 3
END

IF ~~ THEN BEGIN 61 // from:
  SAY #9246 /* ~So instead you follow as ants and do her foul deeds? Have you not the courage to face her?~ */
  IF ~~ THEN EXTERN ~CEDRUID1~ 4
END

IF ~~ THEN BEGIN 62 // from:
  SAY #9250 /* ~Such a ritual is unheard of and quite costly to the grove. I shall discuss this matter with her in a language that she will understand. Get out of my sight.~ */
  IF ~~ THEN EXTERN ~CEDRUID1~ 5
END

IF ~~ THEN BEGIN 63 // from:
  SAY #9329 /* ~Dalok, what is the meaning of this? ~ */
  IF ~~ THEN EXTERN ~CEDRUID2~ 1
END

IF ~~ THEN BEGIN 64 // from:
  SAY #9255 /* ~This is not our role! Balance is the goal, not slaughter. Trademeet never gouged the land, and yet you besiege it. Where is Gragus? He would not allow this.~ */
  IF ~~ THEN EXTERN ~CEDRUID2~ 2
END

IF ~~ THEN BEGIN 65 // from:
  SAY #9332 /* ~A Shadow Druid! They are perversions of our calling! ~ */
  IF ~~ THEN EXTERN ~CEDRUID2~ 3
END

IF ~~ THEN BEGIN 66 // from:
  SAY #9335 /* ~I will challenge her to the rituals of ascension! She may flout our way, but she must obey the rules set down ages ago. That is her hold over you, is it not?~ */
  IF ~~ THEN EXTERN ~CEDRUID2~ 4
END

IF ~~ THEN BEGIN 67 // from:
  SAY #9337 /* ~May the Earthmother forgive your sins against her children, but at least your deaths will feed the fauna and flora!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #55504 /* ~Animal trouble in Trademeet: A violent homecoming

Cernd spoke with Dalok, a druid that has welcomed the Shadow Druid that has taken control of the grove. Cernd declared his intent to challenge her. It would appear that this Faldorn is subject to druidic tradition whether a radical or not.~ */ EXTERN ~CEDRUID2~ 5
END

IF ~~ THEN BEGIN 68 // from:
  SAY #11069 /* ~We shall see, Faldorn. You are not invulnerable just yet, though I sense the filthy ritual you have performed. You drain from the land like some vile parasite.~ */
  IF ~~ THEN EXTERN ~CEFALDOR~ 2
END

IF ~~ THEN BEGIN 69 // from:
  SAY #11139 /* ~I will speak for myself! Faldorn, you perpetrate gross crimes here! You are unfit! I challenge you, and by the rites laid down ages ago, you cannot refuse!~ */
  IF ~~ THEN EXTERN ~CEFALDOR~ 11
END

IF ~~ THEN BEGIN 70 // from:
  SAY #11255 /* ~Some of my finest work!~ [SSWORD35] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #14271 /* ~I am not a holy man as such, but I do find faith in nature. Perhaps one day you too will wish to live amidst the green rather than the cold of a stone dwelling.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #14491 /* ~You are always welcome to rejoin the peace and harmony of nature, friend. It is how we were meant to live, and there is no lack of food or prosperity.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #15345 /* ~I am well, my dear, as long as nature possesses both breath and sanctity.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #20808 /* ~I... sense something most disturbing and unnatural about this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #25729 /* ~It is a simple matter. With a short trip out of the city, you can gather Wila berries and some Burran tree salve. Mix them and you will be rid of your problem.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #25839 /* ~Ha ha! I appreciate the nature of your offer, young lady, but it too late for me to feel young again! Off you go then, and may the gods watch over you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #26255 /* ~You must give the seas a chance to rejuvenate. Nature is a cycle... the sooner you understand and allow her to replenish, the better off you shall all be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #26619 /* ~I know this is little consolation, but nature calls everyone to leave eventually. Your son's pain is over, and I am sure he feels the love you sent with him.~ */
  IF ~~ THEN EXTERN ~MOURNER6~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #27633 /* ~Sometimes I feel as if the gods are testing me, little one... but overall, yes, they watch over me most kindly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #28952 /* ~There is little enough waiting for you in other places, my friend. Perhaps you could devote your efforts towards improving matters here instead.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #29708 /* ~I know you, Lord Ketlaar. In time, nature will take revenge for your atrocities in the northern mines. No wonder your workers refuse to continue their labors.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  Dead("cefald01")
Global("FoughtFaldorn","LOCALS",0)
!Global("KilledFaldSelf","GLOBAL",1)
Global("saidendFald","GLOBAL",0)
~ THEN BEGIN 82 // from:
  SAY #42520 /* ~The scourge has been purged? I can tell that the deed is done, for even now the land sighs with relief. This has been a great service to nature, and she shall not forget.~ */
  IF ~~ THEN DO ~SetGlobal("FoughtFaldorn","LOCALS",1)
SetGlobal("saidendFald","GLOBAL",1)
SetGlobal("SpeakCerndSpeak","GLOBAL",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #42521 /* ~Now will come rebuilding. Faldorn's invulnerability came with great cost, and the land bonded with her will suffer immeasurably.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #42522 /* ~Verthan will serve as challenge master until the healing is done. His reverence for the land will not allow him to be corrupted if temporarily granted control.~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #42523 /* ~When the scars are healed, he can step aside. A new Great Druid will need to be chosen at some time. More turmoil ahead, but for now we can rest.~ */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #42524 /* ~What of you, <CHARNAME>? You are likely off to travel? Would you... mind my company? My duty here is done, and I do love to see the land. Shall we join?~ */
  IF ~~ THEN REPLY #42525 /* ~A fine pairing, I think. Come, there is much to see.~ */ DO ~EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL #55365 /* ~Animal trouble in Trademeet: Balance is restored

Faldorn has been defeated through the traditional druidic hierarchy. The land will recover in time, as will the citizens of Trademeet. Cernd is now freed of his duty, and I welcome his continued presence in my party.~ */ GOTO 88
  IF ~~ THEN REPLY #42526 /* ~No, I have no need of you.~ */ DO ~EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL #55366 /* ~Animal trouble in Trademeet: Balance is restored

Faldorn has been defeated through the traditional druidic hierarchy. The land will recover from her taint in time, as will Trademeet. Cernd is now freed of his duty to restore the grove, but I didn't see a need for his continued presence in my party. He will remain in the grove, helping to heal the land. I may seek him out later if need be.~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY #42527 /* ~Very well, I will remain here and help reorganize. If you wish my company, I will be near the grove. I look forward to our next meeting.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("ar1900",2432,604,E)
~ EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 88 // from: 86.0
  SAY #42528 /* ~A new season comes and growth is renewed. I am grateful for your indulgence.~ */
  IF ~~ THEN EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 89 // from: 30.0
  SAY #47397 /* ~Perhaps I did seek simpler things, but I meant no harm and thought I provided well enough. Please, I should go find my old home. Let us go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from: 31.0
  SAY #47400 /* ~I would not wish her inconvenience. She is a good woman, and I will do what I can. Perhaps I just wanted different things. Come, I must find my old home.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY #47908 /* ~If I might, it is the most basic of land.~ */
  IF ~~ THEN EXTERN ~ELEARB03~ 9
END

IF ~~ THEN BEGIN 92 // from:
  SAY #47910 /* ~Within are stagnant smells and shades, but all around would bloom. A mire is useful in the proper place. <CHARNAME> would voice this better, I am sure.~ */
  IF ~~ THEN EXTERN ~ELEARB03~ 10
END

IF ~~ THEN BEGIN 93 // from:
  SAY #48632 /* ~It is good to see another protector of nature within our ranks, Valygar, and if the devious Cowled Wizards seek to use you, I will stand against them!~ */
  IF ~  OR(2)
!Global("HiredByCowled","GLOBAL",1)
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  Global("HiredByCowled","GLOBAL",1)
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 221
END

IF ~~ THEN BEGIN 94 // from:
  SAY #48970 /* ~You lack balance, friend. It will be your end, I fear.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #49189 /* ~You must understand balance if you live off the bounty of the earth. The fish will return in time.~ */
  IF ~~ THEN EXTERN ~DFISHER~ 8
END

IF ~~ THEN BEGIN 96 // from:
  SAY #49568 /* ~I should not like this young woman abandoned to this place. The larger picture should be considered. Leave me instead of her.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 97 // from:
  SAY #50297 /* ~I may be a rustic, good woman, but if being civilized and city-bred ingrains manners such as yours into a person, I am likely better off without it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #50678 /* ~We had better give a little balance to the plans of these mages we've released, <CHARNAME>, if they are to prove helpful to us this day.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #55202 /* ~The wizard strove to upset the balance, and he has met his end. Some might call this a victory, but I say a man has simply died. It strikes me odd that such a man would meet his end so simply.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 100 // from:
  SAY #55227 /* ~So. Your quest does not end, even with your death! And somehow your descent into this plane has drawn me here as if into a whirlpool! So be it... I shall help you as best I can.~ [CERND77] */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Mazzy")
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

IF ~~ THEN BEGIN 101 // from:
  SAY #55286 /* ~May I ask you a question then, beholder? Were you summoned to guard the chest or simply what is inside of the chest?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 33
END

IF ~~ THEN BEGIN 102 // from:
  SAY #55655 /* ~The troubles of this child are hardly worthy of such treatment. Lessons of balance and control would serve.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 12
END

IF ~~ THEN BEGIN 103 // from:
  SAY #55674 /* ~It kept you pale and quiet during the voyage, Korgan. It did my heart good to see such balance evident, even in you.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 118
END

IF ~~ THEN BEGIN 104 // from:
  SAY #55675 /* ~Yes, she no doubt suffers from overstimulation. She cannot see balance if constantly crushed by unfamiliar images. She sees too much.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 21
END

IF ~~ THEN BEGIN 105 // from:
  SAY #55681 /* ~An encounter with some unnatural force, to be sure. Extended time with a lack of balance will do that to a mind. He needs harmony.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 25
END

IF ~~ THEN BEGIN 106 // from:
  SAY #55729 /* ~Such a plan could only serve to disrupt the greater balance. The ruin of the elves would bring the ruin of all, in the end. Perhaps that is Irenicus's plan.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 38
END

IF ~~ THEN BEGIN 107 // from:
  SAY #55755 /* ~Not only is he out of balance, he is, in fact, totally bent. Nature would drop you in a hole, given half a chance.~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 3
END

IF ~~ THEN BEGIN 108 // from:
  SAY #55792 /* ~You cannot cloak your intentions, rogue. You knew you had no ship with which to offer passage, even when you spoke to us in the asylum. Why lie?~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 109 // from:
  SAY #55817 /* ~I know these creatures. They are called sahuagin... or sea devils. They are known to raid the coasts. I wish I knew their language...~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 2
END

IF ~~ THEN BEGIN 110 // from:
  SAY #55837 /* ~I thought that the king and some of the others here looked unnaturally weak for sahuagin. They are having their strength slowly bred out of them, eh? How odd.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~SAHPR1~ 56
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 20
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 198
END

IF ~~ THEN BEGIN 111 // from:
  SAY #55917 /* ~You move against balance here, <CHARNAME>, and no doubt the silver dragon will have revenge. I shall not remain to see this through with you. Farewell.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~UDDEMON~ 8
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~AERIEJ~ 149
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 201
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~VALYGARJ~ 85
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 112 // from:
  SAY #55946 /* ~Careful, Aerie, we must maintain the illusion that we are who we seem. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56013 /* ~I hope you are right, Nalia. We must take care to not upset the natural balance of this region.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #56034 /* ~I'm sure we will be careful not to upset anyone we do not have to. We will leave this place in balance.~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 142
  IF ~  IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~JAHEIRAJ~ 477
  IF ~  IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~VICONIJ~ 152
END

IF ~~ THEN BEGIN 115 // from:
  SAY #56038 /* ~And an army on your heels, no doubt. ~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 143
END

IF ~~ THEN BEGIN 116 // from:
  SAY #56046 /* ~That may well be, but balance would not need any help from us if it were easy to maintain.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #56060 /* ~The wizard seeks to upset the balance, good lady. So much power and death and corruption in one being... this cannot be allowed. We will do what we can.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~SUDEMIN~ 35
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 121
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 28
END

IF ~~ THEN BEGIN 118 // from:
  SAY #56076 /* ~Are you mad, <CHARNAME>? We are here to restore the balance, not make more havoc of our own! I will not allow you to further spill blood in this place!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
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

IF ~~ THEN BEGIN 119 // from:
  SAY #56099 /* ~So we come to the final stand in this place that is retribution personified. How fitting that you will meet your end here, mage... you who have brought such chaos into the lives of many!~ [CERND76] */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
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
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
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

IF ~~ THEN BEGIN 120 // from:
  SAY #56116 /* ~Oh dear. I take it by your tone that this beast is not simply some interloping bulette?~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 13
END

IF ~~ THEN BEGIN 121 // from:
  SAY #56218 /* ~He would seem to have a knack for it, though he is a very... unbalanced individual.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 12
END

IF ~~ THEN BEGIN 122 // from:
  SAY #56410 /* ~If an entire elven city is gone, it is a tragedy beyond mention!~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 29
END

IF ~~ THEN BEGIN 123 // from:
  SAY #56414 /* ~If he intruded on the grove, I see why the druids would object. Was there no other direction his road could take? Did he even bother to speak to the man?~ */
  IF ~~ THEN EXTERN ~TREVIL01~ 16
END

IF ~~ THEN BEGIN 124 // from:
  SAY #56418 /* ~What would possess you to accept this man's poison? You would not actually destroy the grove? I would stand against such an attempt.~ */
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

IF ~~ THEN BEGIN 125 // from:
  SAY #56426 /* ~No! What have you done?! You have destroyed everything... this is not what I had intended! You evil fool... who will stand with me?! This must be punished!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ EXTERN ~TREVIL02~ 6
  IF ~  OR(2)
Dead("trevil02")
!See("trevil02")
~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ EXTERN ~CEFALD04~ 4
END

IF ~~ THEN BEGIN 126 // from:
  SAY #56683 /* ~Are you well, <CHARNAME>? You seem troubled... out of balance.~ */
  IF ~~ THEN REPLY #56684 /* ~I'm not sure, but I think I'm all right. Just a little dizzy.~ */ GOTO 127
  IF ~~ THEN REPLY #56685 /* ~It is of no concern. I will be fine.~ */ GOTO 128
  IF ~~ THEN REPLY #56686 /* ~It is none of your concern, Cernd. Go plant yourself a bush or something.~ */ GOTO 129
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #56687 /* ~This place is unnatural. I would be surprised if we would be untroubled even without the horror you have suffered.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.1
  SAY #56688 /* ~It is of great concern. Watch yourself carefully; you have undergone much.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.2
  SAY #56689 /* ~I will leave you be, as you wish, but I look on with great trepidation. Do not ignore symptoms of future problems, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from:
  SAY #57735 /* ~I would make a comment about balance, but that would imply that I thought there was the possibility of balance existing. <CHARNAME>, you are in trouble.~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #57737 /* ~You have channeled a massive amount of energy from a divine source and probably lost some of yourself in the process.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #57739 /* ~If it happens much more, there is more than just physical risk. You will lose yourself. A being cannot be this... out of alignment for long.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #57906 /* ~Viconia has proven remarkably balanced for one so steeped in a culture of evil. I doubt we will have to worry about any treachery towards the group.~ */
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 513
END

IF ~~ THEN BEGIN 134 // from:
  SAY #58162 /* ~Our host may have a murky past, but this task benefits us both. We will earn access to Imoen and keep the balance here. A nature of the street to protect.~ */
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VALYGAR")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 516
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~VALYGARJ~ 105
END

IF ~~ THEN BEGIN 135 // from:
  SAY #58163 /* ~Indeed, it would seem the worst the Shadow Thieves intend at the moment is petty larceny. We fight a far greater menace.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #58167 /* ~Irenicus, in his madness, threatens to upset the balance in a way that few have ever proven capable of, <CHARNAME>. It is good that you will regain your soul, but I will give my life to stop this man from attaining his goal.~ */
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
END

IF ~~ THEN BEGIN 137 // from:
  SAY #58755 /* ~A disturbing shift in balance, Yoshimo. Are you committed to it? What has caused this?~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 138 // from: 32.0
  SAY #60928 /* ~We parted on the best of terms, under what I thought were good circumstances. If I was wrong, I will make amends. Come, I should find my old home.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from: 57.0
  SAY #60932 /* ~A selective sun may also choose to prolong your damp, but who am I to say?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #70520 /* ~This must be no pleasant prospect when the god of duty has asked something of you.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 141 // from:
  SAY #70412 /* ~The natural order will scream in protest should this demon prince be allowed to walk freely through the realms. To preserve the balance, we must imprison the creature—or send it back to the Abyss.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
END

IF WEIGHT #10 ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 142 // from:
  SAY #75707 /* ~The gorge—or whatever lies within it—has poisoned this once-great tree. I can feel its suffering.~ */
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
END

IF ~~ THEN BEGIN 143 // from:
  SAY #67883 /* ~I would offer you only one piece of advice, <CHARNAME>. Rid yourself of the sins of your father... do not live under his shadow, but make your own destiny. You can do better, I think. You do not need this power.~ [CERN2515] */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #67884 /* ~Simple enough for me to say, however. I can only imagine how attractive such an alternative might seem. In the end, the balance will win out... in the larger scheme, your choice will mean little except to yourself.~ */
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
~ THEN EXTERN ~VICONIJ~ 446
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
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
~ THEN EXTERN ~VICONIJ~ 444
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 158
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 212
END

IF ~~ THEN BEGIN 145 // from:
  SAY #67911 /* ~Finding one's place in the world is not always easy. There is balance in all things, though sometimes we ourselves may not see it.~ */
  IF ~~ THEN EXTERN ~SARBHA02~ 2
END

IF ~~ THEN BEGIN 146 // from:
  SAY #70385 /* ~The butterfly who smashes <PRO_HISHER> head against the rock is far less happy than the one who waits for the flower to open with the dawn.~ */
  IF ~~ THEN EXTERN ~AMBAR01~ 19
END

IF ~~ THEN BEGIN 147 // from:
  SAY #70412 /* ~The natural order will scream in protest should this demon prince be allowed to walk freely through the realms. To preserve the balance, we must imprison the creature—or send it back to the Abyss.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
END

IF ~~ THEN BEGIN 148 // from:
  SAY #70490 /* ~And so it comes full circle once again, your brother avowed to stand by your side. Very appropriate, I would think.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 215
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 218
END

IF ~~ THEN BEGIN 149 // from:
  SAY #70520 /* ~This must be no pleasant prospect when the god of duty has asked something of you.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 150 // from:
  SAY #70558 /* ~Ironic... the witch has her heart returned only to find compassion for her deadly son. Oops, here she goes...~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 30
END

IF ~~ THEN BEGIN 151 // from:
  SAY #71624 /* ~The most powerful? Perhaps. In the normal order of things, were I not joined in <CHARNAME>'s quest, I suppose I would have become a Hierophant long ago. But it was not meant to be.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF WEIGHT #11 ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 152 // from:
  SAY #92231 /* ~It's good to feel proper earth beneath my feet once again.~ */
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
~ THEN EXTERN ~KORGANJ~ 282
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 614
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 228
END
