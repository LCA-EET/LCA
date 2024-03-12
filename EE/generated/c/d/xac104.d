// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\ALDETH.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\ALDETH.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC104~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
GlobalLT("Chapter","GLOBAL",6)
AreaCheck("AR2200")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Oh, I apologize for my rudeness. I mistook you for someone else. Let me introduce myself. I am Aldeth Sashenstar. You must understand that at the moment, I'm under a terrible amount of stress. You see, my dear <SIRMAAM>, there is a group of uncouth savages that has declared their intention of killing my friends and me. I've been holed up in this cabin for several days and have lacked the wherewithal to try to make an escape. Perhaps you kind folks would help a fellow in trouble?~ #939 */
  IF ~~ THEN REPLY @2 /* ~Yes, we would.~ #947 */ GOTO 4
  IF ~~ THEN REPLY @3 /* ~No, we don't have the time.~ #948 */ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
GlobalLT("Chapter","GLOBAL",6)
AreaCheck("AR2200")
~ THEN BEGIN 1 // from:
  SAY @4 /* ~What purpose have you wandering this far into Cloakwood? Are you looking to earn some money? If you are, I would be willing to pay a considerable amount for your assistance. I am Aldeth Sashenstar, a noble from the city of Baldur's Gate. Perhaps you have heard of me? No matter. I am looking for some good strong people who could defend me against a band of savages. These ruffians have been threatening my companions and me with bodily harm. Would you be interested?~ #940 */
  IF ~~ THEN REPLY @2 /* ~Yes, we would.~ #949 */ DO ~SetGlobal("TalkedToAldeth","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY @3 /* ~No, we don't have the time.~ #950 */ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
GlobalLT("Chapter","GLOBAL",6)
AreaCheck("AR2200")
~ THEN BEGIN 2 // from:
  SAY @5 /* ~Whoever you are, get away from here. We do not need any more miscreants to cause trouble here.~ #941 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @6 /* ~Well, I'm sorry that you feel that way. You're probably as insensitive as those hoodlums out in the wood. Learn some manners, brute.~ [ALDET04] #942 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 0.0
  SAY @7 /* ~Good! I'm glad you had the sense of decency to help a man in my situation. Let me explain my predicament. My friends and I come here every year to do some sport hunting. This year however, a group of woodland savages threatened us with bodily harm if we did not stop our hunting trip. Being civilized men, we realized that it's well within our rights to hunt where we damn well please. After a few more days of hunting, the crass woodmen lost all pretense of humanity and murdered Elban, one of my oldest friends. I'm sure that they plan to attack our cottage here, so we had best be prepared.~ #943 */
  IF ~~ THEN DO ~SetGlobal("HelpAldeth","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Aldcut01",FALSE)
~ UNSOLVED_JOURNAL @8 /* ~Aldeth Sashenstar
I have agreed to help Aldeth Sashenstar, a noble from Baldur's Gate, to fight off a band of savages.~ #26820 */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~Do not listen to these slavering wild men, my dear friends. They lie as befits the uncultured barbarians that they are.~ #944 */
  IF ~~ THEN REPLY @10 /* ~Sorry, Aldeth, but we're siding with the druids. They have this great aloe vera balm they are giving away samples of, and my armor has been chafing a bit, ya know?~ #960 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Don't you think you're being rather harsh, Seniyad? We can't just let you murder Aldeth. Come now, why don't we come to a peaceful solution?~ #961 */ EXTERN ~SENIYA~ 1
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIJ~ 14
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12 /* ~What?! Have you gone mad, throwing your lot in with a band of madmen? You treacherous savages, you will suffer for your foolishness! I will deal with Seniyad after I kill you!~ #945 */
  IF ~~ THEN DO ~EndCutSceneMode()
ActionOverride("Seniyad",MoveToPoint([2773.2162]))
ActionOverride("Seniyad",Face(NNW))
Shout(4)
Enemy()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("KilledDruids","GLOBAL",3)
Global("HelpAldeth","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",6)
AreaCheck("AR2200")
~ THEN BEGIN 7 // from:
  SAY @13 /* ~I give you my gratitude for the aid you have given us. If you ever travel to Baldur's Gate, come to the Merchants' League Estate, and I will aid you in any way I can. Take now this small token of my appreciation.~ #946 */
  IF ~~ THEN DO ~SetGlobal("AldethMove","GLOBAL",1)
GiveItem("POTN09",LastTalkedToBy)
Shout(5)
AddexperienceParty(2000)
EraseJournalEntry(@8)
EscapeArea()
~ SOLVED_JOURNAL @14 /* ~Aldeth Sashenstar
Aldeth Sashenstar was so grateful that I fended off the druids that he invited me to visit him at his house in Baldur's Gate.~ #26821 */ EXIT
  IF ~  Global("DefusedDruids","GLOBAL",1)
~ THEN DO ~SetGlobal("AldethMove","GLOBAL",1)
GiveItem("POTN09",LastTalkedToBy)
Shout(5)
AddexperienceParty(2000)
EraseJournalEntry(@8)
EscapeArea()
~ SOLVED_JOURNAL @15 /* ~Aldeth Sashenstar
Aldeth Sashenstar was so grateful that I defused the situation with the druids that he invited me to visit him at his house in Baldur's Gate.~ #32835 */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 14 21 24 26 27 28 even though they appear after this state */
~  Global("StartAldethCUTSCENE","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @16 /* ~What is going on here that deserves such an audience? Explain yourself, Irlentree! Why spread false rumors about my anniversary when you know perfectly well that this is not the day?~ #1030 */
  IF ~~ THEN EXTERN ~IRLENT~ 3
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Chapter","GLOBAL",5)
Global("AldethMove","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY @17 /* ~It is so pleasant to see your faces once again. Don't you recognize me? It is I, Aldeth Sashenstar. I am so glad to have met you, especially at a time like this. I need to speak with you privately. Will you listen to what I have to say?~ #1031 */
  IF ~~ THEN REPLY @18 /* ~Of course we'll listen. What is it that you have to say?~ #1054 */ GOTO 11
  IF ~~ THEN REPLY @19 /* ~Sorry, we have important matters on our hands. We don't have time for anything else.~ #1055 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 13.1 12.0 11.0 9.1
  SAY @20 /* ~I thought you were a <MANWOMAN> of nobility. I must have been mistaken. Well, there is little I can do but try to find someone who is up to the task. I'll be here some while more, so if you deign to change your mind, speak to me again.~ #1033 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY @21 /* ~Thank you so much, my friends. This should suffice for privacy. I'm sorry for all of this hiding and skulking, but there are dire events afoot. You know that I am one of the principal shareholders of the Merchants' League. Well, I share ownership of the company with two others: Irlentree and Zorl Miyar, two very distinguished gentlemen. When I returned from my hunting trip—thanks to you, I might add—I found that my two partners had undergone some profound changes, nothing physical or overt, but something far more sinister.~ #1036 */
  IF ~~ THEN REPLY @22 /* ~Ah, look, Aldeth, you might be our friend and all, and you might have problems, but our problems are bigger. We're sorry, but we can't help you right now.~ #1059 */ GOTO 10
  IF ~~ THEN REPLY @23 /* ~Well, go on. What's so sinister?~ #1060 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @24 /* ~It's as if my partners had become wholly different people while I was gone. They almost take an active interest in squandering our company's resources on frivolous and stupid ideas. If they continue on this course, the company will be in shambles in but a few weeks. I know you have already helped me once, but I ask for your assistance again. I have no other recourse.~ #1037 */
  IF ~~ THEN REPLY @25 /* ~Sounds a little out of our league. I think you should perhaps find someone else more suited to the job.~ #1061 */ GOTO 10
  IF ~~ THEN REPLY @26 /* ~What do you want us to do?~ #1062 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @27 /* ~Come into the Merchants' League Estate with me. I will explain that you are old friends of mine and will quarter all of you in the guest chambers. From there, please investigate my partners, perhaps using magic or any of the other skills you possess. Learn as much as you can during your visit and then report back to me after you're done. It should only take a couple of days.~ #1038 */
  IF ~~ THEN REPLY @28 /* ~Sounds like an easy job. We'll do it.~ #1063 */ GOTO 25
  IF ~~ THEN REPLY @29 /* ~Doesn't sound like too hard of a job. Why don't you do it yourself?~ #1064 */ GOTO 10
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Chapter","GLOBAL",5)
Global("AldethMove","GLOBAL",2)
GlobalLT("AldethDopple","GLOBAL",16)
!Global("ZorlIrelentHostile","GLOBAL",1)
!Global("LiedBrandilar","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY @30 /* ~Hello. How have things been faring? Have you learned anything?~ #1040 */
  IF ~~ THEN REPLY @31 /* ~We've been doing fine, but we haven't learned anything unusual yet.~ #1067 */ GOTO 15
  IF ~  Global("TalkedToZorlIrenl","GLOBAL",1)
~ THEN REPLY @32 /* ~We would have to agree that something is unusual about your partners.~ #1068 */ GOTO 16
  IF ~  Global("ZorlParty","GLOBAL",1)
~ THEN REPLY @33 /* ~Nothing much, but why are you having your anniversary party at a time like this?~ #1069 */ GOTO 17
  IF ~  OR(3)
PartyHasItem("scrl2o")
PartyHasItem("scrl2p")
PartyHasItem("scrl2q")
~ THEN REPLY @34 /* ~We found some documents that you might find very interesting.~ #1246 */ DO ~TakePartyItem("scrl2o")
TakePartyItem("scrl2p")
TakePartyItem("scrl2q")
~ GOTO 29
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @35 /* ~That is unfortunate. Well, keep trying. I will see you again.~ #1041 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @36 /* ~That is good to hear. I was beginning to wonder if I had just become a paranoid delusional. Well, keep up on your investigations.~ #1042 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @37 /* ~What? It's not my anniversary.~ #1043 */
  IF ~~ THEN REPLY @38 /* ~Well, perhaps we should go see what all of this is about.~ #1070 */ GOTO 18
  IF ~~ THEN REPLY @39 /* ~I don't like the sound of this. I think we should leave here as soon as possible.~ #1071 */ GOTO 19
  IF ~~ THEN REPLY @40 /* ~Perhaps we should call the commander of your guard. I think it's time for us to face this down.~ #1072 */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @41 /* ~I agree. Why don't you see what this foolishness is about? Go talk to the commander of my guard. His name is Brandilar, in case you have not met him yet.~ #1044 */
  IF ~~ THEN DO ~SetGlobal("TalkToBrandilar","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @42 /* ~I did not think you would be so faint of heart.~ #1045 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY @43 /* ~That sounds like the proper thing to do. Why don't you go see Brandilar, the captain of the guard?~ #1046 */
  IF ~~ THEN DO ~SetGlobal("TalkToBrandilar","GLOBAL",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY @44 /* ~Salutations, my dear friends. It has been some time since I've seen you last. Troubled times have descended upon our beautiful city; perhaps we should retire to the antechamber and discuss things.~ #2123 */
  IF ~~ THEN REPLY @45 /* ~Sorry, we don't have time to talk right now. We'll see you later.~ #2126 */ EXIT
  IF ~~ THEN REPLY @46 /* ~We can discuss them right here.~ #2127 */ DO ~CreateCreature("FLAMAL",[281.450],S)
CreateCreature("FFHUNT1",[221.425],S)
CreateCreature("FFHUNT2",[468.293],S)
CreateCreature("FFHUNT3",[503.269],S)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @47 /* ~So tell me about this rumor that you murdered the leaders of the Iron Throne.~ #2124 */
  IF ~~ THEN REPLY @48 /* ~There's not much to tell.~ #2128 */ EXTERN ~FLAMAL~ 0
  IF ~~ THEN REPLY @49 /* ~We were framed. Someone else killed them.~ #2129 */ EXTERN ~FLAMAL~ 0
  IF ~~ THEN REPLY @50 /* ~We murdered the sons of bitches.~ #2130 */ EXTERN ~FLAMAL~ 0
END

IF ~~ THEN BEGIN 23 // from:
  SAY @51 /* ~I'm sorry, but a gentleman cannot harbor known criminals. It would have been a smear upon my honor.~ #2125 */
  IF ~~ THEN REPLY @53 /* ~You backstabbing excuse for a manure pile, your honor is the least of your concerns!~ #2131 */ DO ~SetGlobal("flamalenemy","GLOBAL",1)
ActionOverride("Brandi",EscapeArea())
EscapeArea()
~ JOURNAL @52 /* ~Aldeth Sashenstar betrayed us to the Flaming Fist!~ #6534 */ EXIT
  IF ~~ THEN REPLY @54 /* ~We surrender.~ #2132 */ JOURNAL @52 /* ~Aldeth Sashenstar betrayed us to the Flaming Fist!~ #6534 */ EXTERN ~FLAMAL~ 1
END

IF WEIGHT #10 /* Triggers after states #: 26 27 28 even though they appear after this state */
~  Global("HelpAldeth","GLOBAL",0)
!Global("LiedBrandilar","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY @55 /* ~I don't think that I have anything to say to you! Why don't you leave me be?!~ #5737 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY @56 /* ~Then just follow me into the Merchants' League Estate. You may begin the investigation as soon as you get inside. I shall be waiting for any reports of your progress on the second floor.~ #5738 */
  IF ~~ THEN DO ~SetGlobal("AldethMove","GLOBAL",2)
MoveToPoint([3244.2519])
OpenDoor("DOOR0127")
DestroySelf()
~ UNSOLVED_JOURNAL @57 /* ~Investigating the Merchants' League Estate
Aldeth Sashenstar has asked me to investigate the unusual events at the Merchants' League Estate. Aldeth awaits my report on the second floor.~ #26822 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 26 // from:
  SAY @58 /* ~I am Aldeth Sashenstar. Along with my partners, Zorl and Irlentree, I run the Merchants' League in Baldur's Gate. I am a very rich man.~ #5739 */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~  Global("Chapter","GLOBAL",5)
Global("HelpAldeth","GLOBAL",1)
GlobalGT("AldethDopple","GLOBAL",15)
~ THEN BEGIN 27 // from:
  SAY @59 /* ~I must thank you for saving my consortium! I will reward all of you greatly for what you have done for me. I hope what I give you now is reward enough. This sword is a family heirloom, and could be useful if you were ever to run into those shapeshifting creatures again. Know that if ever you are in trouble, you can come to my estate.~ #5740 */
  IF ~~ THEN DO ~EraseJournalEntry(@57)
EraseJournalEntry(@61)
EraseJournalEntry(@62)
EraseJournalEntry(@63)
EraseJournalEntry(@64)
EraseJournalEntry(@65)
GiveItem("SW1H03",LastTalkedToBy)
GivePartyGold(100)
SetGlobal("HelpAldeth","GLOBAL",2)
SetGlobal("AldethMove","GLOBAL",3)
AddexperienceParty(5000)
~ SOLVED_JOURNAL @60 /* ~Investigating the Merchants' League Estate
After dealing with the doppelgangers, I reported to Aldeth Sashenstar, who gave me a sword baneful to shapeshifters. Perhaps he should have given it to me BEFORE I faced the doppelgangers!~ #26828 */ EXIT
END

IF WEIGHT #9 ~  Global("Chapter","GLOBAL",5)
Global("HelpAldeth","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY @66 /* ~I'm sorry, but I have much to do in rebuilding my shattered consortium. Perhaps we will meet again.~ #5741 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 14.3
  SAY @67 /* ~First Elban and now this! We must tread very carefully, for if these documents bear truth, then we are potentially in a very dangerous situation. Rumor has it that my anniversary is this very day. It isn't, but perhaps we can use it to get the bottom of this. Shall we meet upstairs in a bit? You go ahead and I'll be right behind; I need to consult with Brandilar.~ #32192 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Aldcut02",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @68 /* ~So the documents speak the truth... You foul creatures will answer for what you have done. Brandilar! Arrest these fools.~ #32193 */
  IF ~~ THEN DO ~SetGlobal("StartAldethCUTSCENE","GLOBAL",2)
ActionOverride("Brandi",MoveToPoint([607.551]))
~ EXIT
END

IF WEIGHT #12 ~  GlobalLT("AldethDopple","GLOBAL",16)
!Global("LiedBrandilar","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY @69 /* ~Those monsters still live. Put an end to them.~ #32194 */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  Global("LiedBrandilar","GLOBAL",1)
!Global("BrandilarDenied","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY @70 /* ~You should not have lied to Brandilar! I suppose I should have mentioned that he can be trusted, but it's too late for that, as the damage has been done and he no longer trusts you. I'll talk to him, but in the meantime all further proceedings will be handled by me.~ #32195 */
  IF ~~ THEN DO ~SetGlobal("LiedBrandilar","GLOBAL",2)
~ EXIT
END
