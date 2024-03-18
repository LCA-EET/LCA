// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSKIE.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSKIE.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC107~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~What… What's happening? I—I don't understand...~ [BD66923] #66923 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut60y",FALSE)
~ EXIT
END

IF ~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~You can't leave me alone in this—this crypt! Not that it's MUCH of a crypt. My family's is bigger than this one. And better kept up.~ [BD66429] #66429 */
  IF ~  OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("skie")
~ THEN REPLY @3 /* ~Go to the crypt entrance and await me there, Skie.~ #66430 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Stay here. I'll return later.~ #66431 */ GOTO 4
  IF ~~ THEN REPLY @5 /* ~Not everyone is fortunate enough to be born a Silvershield. Come on, you can stay with me for the moment.~ #66432 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @6 /* ~Aren't I lucky...~ #66433 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @7 /* ~You want me to go all the way back there? To the entrance. On my own. That's what you want me to do. Fine. I'm going. But if anything happens to me, Daddy will have words with you, count on that.~ #66434 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8 /* ~What, you're just going to leave me standing here? Fine. See if I care.~ #66435 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~What is it? What do you want now?~ [BD66436] #66436 */
  IF ~~ THEN REPLY @10 /* ~I have need of your skills. Come with me.~ #66437 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Nothing at the moment. Stay here until I return.~ #66438 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12 /* ~I'm going to come with you, because I'm getting bored just standing around, but just so you know, it wouldn't hurt you to say "please" once in a while.~ #66439 */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @13 /* ~You are SO boring sometimes... Fine. I'll just stand here and let you have all the fun.~ #66440 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_plot_003","bd0102",2)
Global("EscapeBD0102","BD0102",0)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~You remember me, <CHARNAME>? Surely you do.~ [BD34219] #34219 */
  IF ~~ THEN REPLY @15 /* ~Of course, Skie. But why are you here? As I recall, you were "kidnapped" when last we spoke.~ #34221 */ DO ~SetGlobal("bd_pc_remembers_skie","global",1)
~ GOTO 9
  IF ~  !BeenInParty("Skie")
~ THEN REPLY @16 /* ~I'm afraid not. Have we met?~ #34220 */ GOTO 11
  IF ~~ THEN REPLY @17 /* ~You're hard to forget, Skie Silvershield. But I'm trying.~ #34222 */ DO ~SetGlobal("bd_pc_remembers_skie","global",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18 /* ~I was just a child then. Now, I'm a woman. I've even joined—well, never mind. I'll tell you that later, when I'm sure we're alone.~ [BD37307] #37307 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @19 /* ~Oh, ha ha. Have you been licking a whetstone? Your tongue's sharper than ever.~ [BD37308] #37308 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @20 /* ~Oh—I'm sorry. I thought—I don't know what I thought. Well. I'm Skie. It's nice to meet you.~ [BD37309] #37309 */
  IF ~~ THEN REPLY @21 /* ~And you too.~ #37310 */ GOTO 12
  IF ~~ THEN REPLY @22 /* ~If you say so.~ #37311 */ GOTO 12
  IF ~~ THEN REPLY @23 /* ~I should think it is, yes.~ #37312 */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 14.0 11.1 11.0 10.0 9.0
  SAY @24 /* ~I heard you talking to Daddy and the other dukes about Caelar. Are you going to Dragonspear?~ [BD37313] #37313 */
  IF ~~ THEN REPLY @25 /* ~The Shining Lady and I have business to settle.~ #59663 */ GOTO 13
  IF ~~ THEN REPLY @26 /* ~Why not? The Sword Coast is lovely this time of year.~ #59661 */ GOTO 13
  IF ~~ THEN REPLY @27 /* ~That's no business of yours.~ #59662 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.1 12.0
  SAY @28 /* ~Daddy hasn't told you everything. Did he mention he thinks Caelar might be one of Bhaal's children? Yeah, I thought not. We can't talk here—I'll tell you more later.~ [BD59664] #59664 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_entar_caelar","global",1)
SetGlobal("EscapeBD0102","BD0102",1)
AddJournalEntry(56388,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @29 /* ~Hehe. You have a saucy tongue, don't you, <CHARNAME>? I like it.~ [BD37316] #37316 */
  IF ~~ THEN GOTO 12
END

IF ~  Global("EscapeBD0102","BD0102",1)
~ THEN BEGIN 15 // from:
  SAY @30 /* ~We'll talk more later, when we're alone.~ [BD37317] #37317 */
  IF ~~ THEN EXIT
END

IF ~  Global("BD_MDD005","BD0103",1)
~ THEN BEGIN 16 // from:
  SAY @31 /* ~Are you awake?~ [BD35177] #35177 */
  IF ~~ THEN REPLY @32 /* ~I am now, Skie.~ #35178 */ DO ~SetGlobal("BD_MDD005","BD0103",2)
~ GOTO 20
  IF ~  Global("bd_skie_entar_caelar","global",0)
~ THEN REPLY @33 /* ~Who are you? You'd best have a good reason for waking me.~ #35179 */ DO ~SetGlobal("BD_MDD005","BD0103",2)
~ GOTO 19
  IF ~~ THEN REPLY @34 /* ~What are you doing here? Never mind. Go do it elsewhere. NOW.~ #35181 */ DO ~SetGlobal("BD_MDD005","BD0103",2)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY @35 /* ~Don't you want to hear what I have to say?~ [BD35183] #35183 */
  IF ~~ THEN REPLY @36 /* ~Do I have a choice?~ #35184 */ GOTO 20
  IF ~~ THEN REPLY @37 /* ~I'm sure that somehow, some way, I will manage to survive, blissful in my ignorance.~ #35185 */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @38 /* ~No, no, it's REALLY important...~ [BD35186] #35186 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @39 /* ~I'm Skie. Skie Silvershield, Duke Entar's daughter. You remember me, right?~ [BD35187] #35187 */
  IF ~~ THEN REPLY @40 /* ~Of course I remember you, Skie.~ #35189 */ GOTO 20
  IF ~~ THEN REPLY @41 /* ~I'm afraid I don't.~ #35190 */ GOTO 30
  IF ~~ THEN REPLY @42 /* ~I'm trying to sleep, and have neither the time nor the inclination to listen to your nattering.~ #35191 */ GOTO 31
END

IF ~~ THEN BEGIN 20 // from: 19.0 17.0 16.0
  SAY @43 /* ~You can't tell Daddy—Duke Silvershield—about this.~ [BD35201] #35201 */
  IF ~~ THEN REPLY @44 /* ~About what?~ #35202 */ GOTO 21
  IF ~~ THEN REPLY @45 /* ~I don't even know what "this" is.~ #35203 */ GOTO 21
  IF ~~ THEN REPLY @46 /* ~Why are you here?~ #35204 */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 31.2 31.1 31.0 20.2 20.1 20.0 18.0
  SAY @47 /* ~I've joined the Flaming Fist!~ [BD35206] #35206 */
  IF ~~ THEN REPLY @48 /* ~Your father allowed that?~ #35207 */ GOTO 29
  IF ~~ THEN REPLY @49 /* ~You say that like it's an accomplishment.~ #35208 */ GOTO 24
  IF ~~ THEN REPLY @50 /* ~No, you haven't.~ #35209 */ GOTO 23
  IF ~~ THEN REPLY @51 /* ~Get out.~ #35210 */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.3
  SAY @52 /* ~No, listen, I really have. I used a false name—Daddy would never allow me to enlist—but I'm in. I'll be marching north with you tomorrow!~ [BD35211] #35211 */
  IF ~~ THEN REPLY @53 /* ~You misunderstand. When I said get out, I didn't mean "I don't believe you." I meant "GET. OUT."~ #35212 */ GOTO 28
  IF ~~ THEN REPLY @54 /* ~That's great news if it'll get you to leave here sooner.~ #60726 */ GOTO 28
  IF ~~ THEN REPLY @55 /* ~Get out of my room, you wretched child!~ #60727 */ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @56 /* ~No, really, I have. Not under my name, of course—Daddy would never allow it. But I'm in it now.~ [BD35213] #35213 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 29.0 27.0 23.0 21.1
  SAY @57 /* ~Life as a noble is boring and stupid. I want to do something GREAT with my life and also get out of this dirty old city and maybe meet some handsome soldiers. So I'm going north with you!~ [BD35214] #35214 */
  IF ~~ THEN REPLY @58 /* ~This is wonderful news.~ #35215 */ GOTO 25
  IF ~~ THEN REPLY @59 /* ~Well, that's... something.~ #35216 */ GOTO 25
  IF ~~ THEN REPLY @60 /* ~Get out of here. Now.~ #35217 */ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.1 24.0
  SAY @61 /* ~I know! All right, go back to sleep. I'll see you in—oh, I guess you don't really have time to sleep now. I'll see you soon.~ [BD35218] #35218 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 28.0 25.0 22.2
  SAY @62 /* ~Remember, whatever you do—don't tell Daddy about this!~ [BD35219] #35219 */
  IF ~~ THEN DO ~AddJournalEntry(59627,QUEST)
StartCutSceneMode()
StartCutSceneEx("bdcut05",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY @63 /* ~Not everyone is Duke Silvershield's only child. I had to use a false name, of course. Daddy would never allow me to enlist so it's our secret, all right?~ [BD35220] #35220 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 24.2 22.1 22.0
  SAY @64 /* ~All right, go back to sleep. I'll see you in—oh, I guess you don't really have time to sleep now. I'll see you soon.~ [BD35221] #35221 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 21.0
  SAY @65 /* ~Oh no. No, no, no, no, NO. Daddy would never permit it. I joined under a false name.~ [BD35222] #35222 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 30 // from: 19.1
  SAY @66 /* ~How could you forget me? Never mind me—how could you forget Eldoth? We did great things together! He and I made love under the moonlight and extorted gold from Daddy, and then Eldoth left me for some harlot.~ [BD35228] #35228 */
  IF ~~ THEN REPLY @40 /* ~Of course I remember you, Skie.~ #35229 */ GOTO 31
  IF ~~ THEN REPLY @67 /* ~Oh. You're THAT Skie Silvershield.~ #35230 */ GOTO 31
  IF ~~ THEN REPLY @68 /* ~If I say I remember you, will you shut your mouth a moment?~ #35231 */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 32.0 30.1 30.0 19.2
  SAY @69 /* ~I wanted to talk to you before we left for Dragonspear.~ [BD35233] #35233 */
  IF ~~ THEN REPLY @70 /* ~"We"?~ #35234 */ GOTO 21
  IF ~~ THEN REPLY @71 /* ~Why do I have a feeling of impending doom?~ #35235 */ GOTO 21
  IF ~~ THEN REPLY @72 /* ~That's unfortunate, as I've no wish to talk to you. GET OUT.~ #35236 */ GOTO 21
END

IF ~~ THEN BEGIN 32 // from: 30.2
  SAY @73 /* ~Ah, so you DO remember me! I knew it.~ [BD35240] #35240 */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 33 // from:
  SAY @74 /* ~<CHARNAME>!~ #65092 */
  IF ~~ THEN GOTO 34
END

IF ~  Global("bd_plot","global",293)
~ THEN BEGIN 34 // from: 33.0
  SAY @75 /* ~Tell me, were things here interesting? Things at camp were dull, dull, dull. Corporal Duncan absolutely refused to let me out of it.~ [BD65093] #65093 */
  IF ~~ THEN REPLY @76 /* ~I'm certain he just seeks to protect you. None of us want to see the Flaming Fist's most valuable new recruit endangered.~ #65094 */ DO ~SetGlobal("bd_plot","global",294)
~ EXTERN ~BDBENCE~ 28
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @77 /* ~I'm surprised he can stop you.~ #65095 */ DO ~SetGlobal("bd_plot","global",294)
SetGlobal("bd_mdd409zjb","locals",1)
~ EXTERN ~BDSAFANJ~ 78
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @77 /* ~I'm surprised he can stop you.~ #65095 */ DO ~SetGlobal("bd_plot","global",294)
~ EXTERN ~BDBENCE~ 26
  IF ~~ THEN REPLY @78 /* ~You chose the mercenary life. Live with that choice, and do so in silence.~ #65096 */ DO ~SetGlobal("bd_plot","global",294)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.3
  SAY @79 /* ~I suppose I did ask for this, didn't I?~ [BD65099] #65099 */
  IF ~~ THEN EXTERN ~BDBENCE~ 28
  IF ~  Global("bd_mdd409zjb","locals",1)
~ THEN EXTERN ~BDBENCE~ 27
END

IF ~~ THEN BEGIN 36 // from:
  SAY @80 /* ~I'm sorry, Corporal Duncan. Did you just say something?~ [BD65103] #65103 */
  IF ~~ THEN EXTERN ~BDBENCE~ 29
END

IF ~  GlobalLT("bd_skie_plot","global",5)
See([0.0.0.0.HOSTILES4])
AreaCheck("bd4000")
~ THEN BEGIN 37 // from:
  SAY @81 /* ~Leave me alone! Leave me alone, you animals!~ [BD58616] #58616 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",5)
~ EXTERN ~XAC139~ 0
END

IF ~~ THEN BEGIN 38 // from:
  SAY @82 /* ~<CHARNAME>! Help me, please! They're going to kill me!~ [BD58621] #58621 */
  IF ~~ THEN EXTERN ~XAC139~ 1
END

IF ~  GlobalLT("bd_skie_plot","global",10)
!Range([0.0.0.0.HOSTILES4],30)
AreaCheck("bd4000")
~ THEN BEGIN 39 // from:
  SAY @83 /* ~What is this, <CHARNAME>? What are you doing here?~ [BD44069] #44069 */
  IF ~~ THEN REPLY @84 /* ~What are YOU doing here?~ #44070 */ DO ~SetGlobal("bd_skie_plot","global",10)
~ GOTO 40
  IF ~~ THEN REPLY @85 /* ~I'm looking for you. What the hells, Skie?~ #44071 */ DO ~SetGlobal("bd_skie_plot","global",10)
~ GOTO 40
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY @86 /* ~Wasting my time looking for you. Get back to the camp.~ #44072 */ DO ~SetGlobal("bd_skie_plot","global",10)
~ GOTO 41
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY @86 /* ~Wasting my time looking for you. Get back to the camp.~ #44072 */ DO ~SetGlobal("bd_skie_plot","global",10)
~ EXTERN ~BDDORNJ~ 47
END

IF ~~ THEN BEGIN 40 // from: 39.1 39.0
  SAY @87 /* ~I'm spying on Dragonspear, watching the crusaders for weaknesses we can exploit.~ [BD44073] #44073 */
  IF ~~ THEN REPLY @88 /* ~What have you learned?~ #44074 */ GOTO 45
  IF ~~ THEN REPLY @89 /* ~Who told you to do that?~ #44075 */ GOTO 49
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY @90 /* ~I don't care what you think you're doing. Get back to the camp.~ #44076 */ GOTO 41
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY @90 /* ~I don't care what you think you're doing. Get back to the camp.~ #44076 */ EXTERN ~BDDORNJ~ 47
END

IF ~~ THEN BEGIN 41 // from: 40.2 39.2
  SAY @91 /* ~But there's nothing to DO at the camp!~ [BD44077] #44077 */
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @92 /* ~You do more than you know simply by being there. You are an inspiration to all the Flaming Fist. They look upon you and know what they are fighting for.~ #44078 */ GOTO 47
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY @93 /* ~You'll be safe there, Skie. Please, just go back.~ #44079 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY @93 /* ~You'll be safe there, Skie. Please, just go back.~ #44079 */ GOTO 42
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY @94 /* ~There's little to do here other than get killed needlessly and invite your father's wrath on people who don't deserve it. GO.~ #44080 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY @94 /* ~There's little to do here other than get killed needlessly and invite your father's wrath on people who don't deserve it. GO.~ #44080 */ GOTO 42
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @95 /* ~This is no game, Skie Silvershield. Get back to the camp before the crusaders kill you or I swear by all the gods I'll kill you myself.~ #44081 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @95 /* ~This is no game, Skie Silvershield. Get back to the camp before the crusaders kill you or I swear by all the gods I'll kill you myself.~ #44081 */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 50.5 50.4 50.3 50.2 50.1 50.0 49.0 47.3 45.5 45.4 45.2 45.1 41.6 41.5 41.4 41.3 41.2 41.1
  SAY @96 /* ~You know, when my dad was my age he took his unit into a den of wyverns and killed them all so the nearby farms would be safe.~ [BD44082] #44082 */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @97 /* ~You know how often I've heard about the wyvern den? A LOT. Wyverns... I'VE fought worse things than wyverns, and won, but does Daddy care? Does anyone?~ #69743 */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @98 /* ~Everyone expects ME to sit safely by the fire and polish my boots. That's stupid. But I'll go back to camp FOR NOW.~ [BD69744] #69744 */
  IF ~~ THEN DO ~AddJournalEntry(59789,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~AddJournalEntry(59789,QUEST)
~ EXTERN ~BDCORWIJ~ 156
END

IF ~~ THEN BEGIN 45 // from: 40.0
  SAY @99 /* ~They're just as boring as the Flaming Fist. All they do is work and pray. The most interesting thing I saw was them shoring up a section of wall to the west. And that was not interesting AT ALL.~ [BD44083] #44083 */
  IF ~  OR(3)
Class(Player1,BARD_ALL)
CheckStatGT(Player1,14,INT)
CheckStatGT(Player1,14,WIS)
~ THEN REPLY @100 /* ~Well done, Skie. This is usable intelligence. Now it's time for you to return to the camp. You're too valuable an asset to risk losing.~ #44084 */ GOTO 46
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY @101 /* ~I know you had the best intentions, Skie. But you must return to the camp now. You're not safe here.~ #44085 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY @101 /* ~I know you had the best intentions, Skie. But you must return to the camp now. You're not safe here.~ #44085 */ GOTO 42
  IF ~~ THEN REPLY @102 /* ~That might actually be useful. Good work. Now you should return to the camp.~ #44086 */ GOTO 46
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @103 /* ~The crusade isn't here for your entertainment. Stop acting like a child and get back to the camp.~ #44087 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @103 /* ~The crusade isn't here for your entertainment. Stop acting like a child and get back to the camp.~ #44087 */ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.0
  SAY @104 /* ~I did good...? Really? I mean, yeah, of course. I knew that would be important.~ [BD44088] #44088 */
  IF ~~ THEN GOTO 48
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 155
END

IF ~~ THEN BEGIN 47 // from: 41.0
  SAY @105 /* ~They don't even know who I am.~ [BD44089] #44089 */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN REPLY @106 /* ~It matters not. Beauty and nobility shine from your every pore. They may not know your name or station, but they know YOU, I assure you.~ #44090 */ GOTO 48
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN REPLY @106 /* ~It matters not. Beauty and nobility shine from your every pore. They may not know your name or station, but they know YOU, I assure you.~ #44090 */ EXTERN ~BDVICONJ~ 42
  IF ~~ THEN REPLY @107 /* ~They've been instructed to pretend they don't. I promise you, your absence has not gone unnoticed—rather, it is causing serious distress. You must return, so the Fist and our allies can once again focus on the enemy.~ #44091 */ GOTO 48
  IF ~~ THEN REPLY @108 /* ~They know your type well enough. Now get back to the camp.~ #44092 */ GOTO 42
END

IF ~~ THEN BEGIN 48 // from: 47.2 47.0 46.0
  SAY @109 /* ~When my dad was my age, he was already a hero. No one thinks I can be a hero too, but they're wrong. I'm glad YOU at least see that I've got something to offer. Take care, <CHARNAME>.~ [BD44093] #44093 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",15)
AddJournalEntry(59789,QUEST)
EscapeAreaObject("npc_exit_road")
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.1
  SAY @110 /* ~No one told me to do it. I'm taking the initiative.~ [BD44094] #44094 */
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY @111 /* ~Soldiers don't take the initiative. They follow orders. Return to the camp.~ #44095 */ GOTO 42
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY @111 /* ~Soldiers don't take the initiative. They follow orders. Return to the camp.~ #44095 */ EXTERN ~BDGLINTJ~ 95
  IF ~~ THEN REPLY @112 /* ~Please. What really happened? Did you get a blister on your hand? Stub your toe? Did you even think to concoct a plausible rationale for your actions, or did you just abandon your post the second it occurred to you?~ #44096 */ GOTO 50
  IF ~~ THEN REPLY @113 /* ~You're risking your life for no good reason.~ #44097 */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 51.0 49.2
  SAY @114 /* ~I got TWO blisters. Who lives like this?~ [BD44098] #44098 */
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY @115 /* ~The soldiers of the Flaming Fist. Which you joined of your own free will. Please, return to the camp. People are worried about you.~ #44099 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,12,CHR)
~ THEN REPLY @115 /* ~The soldiers of the Flaming Fist. Which you joined of your own free will. Please, return to the camp. People are worried about you.~ #44099 */ GOTO 42
  IF ~  CheckStatGT(Player1,9,CHR)
~ THEN REPLY @116 /* ~You do, for the time being. Nobody asked for you to come here, Skie—you chose to do so. Now you must live with that decision. Go back to the camp, Bence is worried about you.~ #44100 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,10,CHR)
~ THEN REPLY @116 /* ~You do, for the time being. Nobody asked for you to come here, Skie—you chose to do so. Now you must live with that decision. Go back to the camp, Bence is worried about you.~ #44100 */ GOTO 42
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @117 /* ~Blisters will be the least of your worries if the crusade gets hold of you, you self-absorbed brat. Return to the camp, now.~ #44101 */ DO ~SetGlobal("bd_skie_plot","global",15)
~ GOTO 42
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @117 /* ~Blisters will be the least of your worries if the crusade gets hold of you, you self-absorbed brat. Return to the camp, now.~ #44101 */ GOTO 42
END

IF ~~ THEN BEGIN 51 // from: 49.3
  SAY @118 /* ~No good reason? I'll give you a reason—I am Skie Silvershield, not the scullery maid the Fist would have me be. I'm not supposed to peel potatoes.~ [BD44102] #44102 */
  IF ~~ THEN GOTO 50
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN EXTERN ~BDSAFANJ~ 93
END

IF ~~ THEN BEGIN 52 // from:
  SAY @119 /* ~I matter that much? Truly? All right. I'll go back. Thank you, <CHARNAME>.~ [BD44109] #44109 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",15)
AddJournalEntry(59789,QUEST)
EscapeAreaObject("npc_exit_road")
~ EXIT
END

IF ~  Global("bd_skie_plot","global",10)
AreaCheck("BD4100")
~ THEN BEGIN 53 // from:
  SAY @120 /* ~You're here! Where have you been? Weren't you worried about me?~ [BD62391] #62391 */
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @121 /* ~Skie? What are you doing here?~ #62392 */ GOTO 54
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @121 /* ~Skie? What are you doing here?~ #62392 */ EXTERN ~BDSAFANJ~ 97
  IF ~  GlobalGT("bd_skie_plot","global",9)
!IsValidForPartyDialogue("safana")
~ THEN REPLY @122 /* ~Never mind that, what the hells are you doing here? I told you to get back to the camp.~ #62393 */ GOTO 62
  IF ~  GlobalGT("bd_skie_plot","global",9)
IsValidForPartyDialogue("safana")
~ THEN REPLY @122 /* ~Never mind that, what the hells are you doing here? I told you to get back to the camp.~ #62393 */ EXTERN ~BDSAFANJ~ 98
  IF ~~ THEN REPLY @123 /* ~No, but only because I thought you'd gotten safely back to camp.~ #66139 */ GOTO 54
  IF ~~ THEN REPLY @124 /* ~That's not important. What matters is where the crusaders went and where Caelar is. Tell me what you know.~ #62394 */ GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 53.4 53.0
  SAY @125 /* ~I was gathering intelligence for our fighters when crusaders caught me.~ [BD62396] #62396 */
  IF ~~ THEN GOTO 55
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~BDVICONJ~ 48
END

IF ~~ THEN BEGIN 55 // from: 62.0 54.0
  SAY @126 /* ~I managed to convince them I followed Caelar. They took me in, but they—they made me do the most awful things...~ [BD62398] #62398 */
  IF ~~ THEN REPLY @127 /* ~What did they do to you, Skie?~ #62399 */ GOTO 56
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @128 /* ~Is this as bad as it sounds, or are you doing that thing where you make every little thing sound like Toril's ending? What exactly did they make you do?~ #62400 */ GOTO 56
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @128 /* ~Is this as bad as it sounds, or are you doing that thing where you make every little thing sound like Toril's ending? What exactly did they make you do?~ #62400 */ EXTERN ~BDKHALIJ~ 39
  IF ~~ THEN REPLY @129 /* ~Now you know something of the horrors of war. Where are the crusaders? Where's Caelar?~ #62401 */ GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 55.1 55.0
  SAY @130 /* ~They—I don't even want to think about it—they made, they made me... CLEAN. I had to mop up blood and vomit and, and, and, oh gods, gods—! I had to empty the bedpans for the wounded. Eugh!~ [BD62402] #62402 */
  IF ~~ THEN GOTO 57
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~BDJAHEIJ~ 55
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @131 /* ~You've got to get me out of here, <CHARNAME>. I'm dying!~ [BD62404] #62404 */
  IF ~~ THEN REPLY @132 /* ~The Flaming Fist will see you safely out of here. Can you tell me anything about the crusader movements?~ #62405 */ GOTO 58
  IF ~~ THEN REPLY @133 /* ~All I care about is what you know. Where are the crusaders? Where's Caelar?~ #62406 */ GOTO 58
  IF ~~ THEN REPLY @134 /* ~You're not dying yet, but that could change easily enough. Get out of my way.~ #62407 */ GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 57.1 57.0 55.3 53.5
  SAY @135 /* ~A whole bunch of soldiers came in, and Caelar ordered them to flee. She said they could get out through the tunnels under the castle. They didn't want to leave her, but she yelled that she would take care of everything and they should save themselves.~ [BD62408] #62408 */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @136 /* ~I was following along with the rest of the soldiers when a hand grabbed me and pulled me into a corner. I don't know who—I couldn't see his face under his hood. He whispered to me to stay hidden, and then he kind of vanished into the shadows.~ [BD66140] #66140 */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @137 /* ~From where I was hiding, I saw Caelar and some soldiers go into that big vault downstairs. I tried to sneak back up and go out through the roof, but I got trapped here and my feet really hurt, so I just decided to stay put.~ [BD66141] #66141 */
  IF ~~ THEN REPLY @138 /* ~A sensible plan. Now that we're here, you're safe. The Flaming Fist will protect you.~ #66142 */ DO ~AddJournalEntry(66144,QUEST)
~ GOTO 61
  IF ~~ THEN REPLY @139 /* ~A man in a hood, you say? I wonder why he cares about your safety... No matter. I must press on.~ #65220 */ DO ~AddJournalEntry(66145,QUEST)
~ GOTO 61
  IF ~~ THEN REPLY @140 /* ~Now I know for certain Caelar is in the vault. Now I find her and end her.~ #66143 */ DO ~AddJournalEntry(66144,QUEST)
~ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.2 60.1 60.0 57.2
  SAY @141 /* ~You've got important things to do, I'm sure. Go on, I'll be fine. Probably.~ [BD62409] #62409 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",15)
EscapeAreaObject("TransBD4000")
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.2
  SAY @142 /* ~I was heading back to the camp, but a couple of crusaders caught me.~ [BD62411] #62411 */
  IF ~~ THEN GOTO 55
END

IF ~  Global("bd_sddskie","MYAREA",2)
AreaCheck("BD7000")
~ THEN BEGIN 63 // from:
  SAY @143 /* ~<CHARNAME>? What are you doing here? Why didn't you help me fight these beasts?~ #69935 */
  IF ~~ THEN REPLY @144 /* ~My apologies, Skie. Had I arrived sooner, I certainly would have helped—not that you seemed to need it.~ #69936 */ DO ~SetGlobal("bd_sddskie","MYAREA",3)
~ GOTO 66
  IF ~~ THEN REPLY @145 /* ~Why would I?~ #69937 */ DO ~SetGlobal("bd_sddskie","MYAREA",3)
~ GOTO 64
  IF ~~ THEN REPLY @146 /* ~Why are you here fighting these beasts to begin with?~ #69938 */ DO ~SetGlobal("bd_sddskie","MYAREA",3)
~ GOTO 67
  IF ~~ THEN REPLY @147 /* ~Do not chastise me, girl. I am not some servant at your beck and call.~ #69939 */ DO ~SetGlobal("bd_sddskie","MYAREA",3)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY @148 /* ~Uh, because I'm the daughter of Grand Duke Entar Silvershield...?~ #69940 */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 63.3
  SAY @149 /* ~Whatever.~ #69941 */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 64.0 63.0
  SAY @150 /* ~What are you doing here, anyway?~ #69942 */
  IF ~~ THEN REPLY @151 /* ~My duty. And you?~ #69943 */ GOTO 67
  IF ~~ THEN REPLY @152 /* ~Never mind that. Aren't you supposed to be back at the camp?~ #69944 */ GOTO 67
  IF ~~ THEN REPLY @153 /* ~Do not question me—do not speak to me at all. Return to the camp, now.~ #69945 */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 66.1 66.0 63.2
  SAY @154 /* ~I was at the camp. BORING. Then I spotted this clod lurking around Belegarm's supply tent—I think the oaf thought he was being stealthy, if you can believe that. He was trying to poison our rations.~ #69946 */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @155 /* ~I snuck up behind him and gave him the scare of his life. He took off running and there was nobody nearby to stop him, so I went after him. Then I had an idea.~ #69947 */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @156 /* ~It nearly worked too—he had no idea he was being followed. Unfortunately, his friend there knew his business. He spotted me and, well, here we are.~ #69948 */
  IF ~~ THEN REPLY @157 /* ~You should not have ventured out of the camp alone, Skie. You put yourself in danger.~ #69949 */ GOTO 77
  IF ~~ THEN REPLY @158 /* ~Nice work. Risky, but what's life without risk?~ #69950 */ GOTO 79
  IF ~~ THEN REPLY @159 /* ~Return to the camp, immediately.~ #69951 */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 79.2 77.2 71.2 69.2 66.2
  SAY @160 /* ~Fine, I'll go. It's not like anything interesting's happening here now, anyway.~ #69952 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcskie2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 77.0
  SAY @161 /* ~And when I get back to Baldur's Gate, what will I say to my father?~ #69953 */
  IF ~~ THEN REPLY @162 /* ~Ideally, you will tell him you honored his name in serving the Flaming Fist loyally and well.~ #69954 */ GOTO 72
  IF ~~ THEN REPLY @163 /* ~What does your father have to do with anything?~ #69955 */ GOTO 73
  IF ~~ THEN REPLY @164 /* ~Your familial troubles are no concern of mine. Go back to the camp—NOW.~ #69956 */ GOTO 70
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @165 /* ~You think I honor my family doing drills and digging latrines?~ #69957 */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 71.1
  SAY @166 /* ~I'm the last living child of Entar Silvershield. I'm an adventurer! I should be having adventures!~ #69958 */
  IF ~~ THEN REPLY @167 /* ~I beg you, do not sacrifice another of Entar's children on the altar of "adventure," Skie. Far more adventurers meet your brother's fate than gain your father's fortune.~ #69959 */ GOTO 74
  IF ~~ THEN REPLY @168 /* ~We don't live in the world that SHOULD be, kid. We're stuck dealing with what IS.~ #69960 */ GOTO 81
  IF ~~ THEN REPLY @169 /* ~You are no adventurer; you are a soldier in service to the Flaming Fist. You made that choice—accept its consequences.~ #69961 */ GOTO 81
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY @170 /* ~Eddard... I didn't even think of him—how my parents felt, not knowing whether he was alive or dead.~ #69962 */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @171 /* ~Daddy wasn't trying to punish me by keeping me on the estate, was he...? He was trying to keep me safe.~ #69963 */
  IF ~~ THEN REPLY @172 /* ~As a good father should.~ #69964 */ GOTO 76
  IF ~~ THEN REPLY @173 /* ~Your father adventured so you wouldn't have to. Putting yourself in unnecessary danger does him a grave disservice.~ #69965 */ GOTO 80
  IF ~~ THEN REPLY @174 /* ~And you rewarded his devotion by racing headlong towards the nearest trouble you could find.~ #69966 */ GOTO 80
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @175 /* ~I think... I'm going back to the camp. I need some time to think about this.~ #69967 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcskie2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY @176 /* ~That's what I wanted. That's why I became a part of this whole stupid expedition, so I could have a little excitement.~ #69968 */
  IF ~~ THEN REPLY @177 /* ~Military organizations avoid excitement when they can. It would be wise to do the same.~ #69969 */ GOTO 71
  IF ~~ THEN REPLY @178 /* ~This is no game, Skie. You endanger far more than simply yourself by acting in so reckless a fashion.~ #69970 */ GOTO 80
  IF ~~ THEN REPLY @179 /* ~Well, you've had that. Time to go back to the camp.~ #69971 */ GOTO 70
  IF ~~ THEN REPLY @180 /* ~Idiot child! Thank Tymora you are your father's daughter. Were you not a Grand Duke's child, I would show you the back of my hand.~ #69972 */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.3
  SAY @181 /* ~Try it and maybe I'll show you a little something, too.~ #69973 */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 79 // from: 69.1
  SAY @182 /* ~Duller than life on my father's estate, and that's saying something.~ #69974 */
  IF ~~ THEN REPLY @183 /* ~You are acting like a spoiled child, Skie. Don't you realize that in acting so recklessly you endanger more than simply yourself?~ #69975 */ GOTO 80
  IF ~~ THEN REPLY @184 /* ~Well, you've had your fun, and I'm sure Corporal Bence's missing you, so...~ #69976 */ GOTO 81
  IF ~~ THEN REPLY @185 /* ~I've heard enough from you. Begone back to the camp~ #69977 */ GOTO 70
END

IF ~~ THEN BEGIN 80 // from: 79.0 77.1 75.2 75.1
  SAY @186 /* ~You think these louts were a danger to me? You really don't know what I can do, do you? And here I thought you were just playing along.~ #69978 */
  IF ~~ THEN REPLY @187 /* ~You are part of something larger than yourself now. There are people on this expedition whose lives depend on you fulfilling your responsibilities as a Flaming Fist.~ #69980 */ GOTO 82
  IF ~~ THEN REPLY @188 /* ~Playing along...?~ #69979 */ GOTO 81
  IF ~~ THEN REPLY @189 /* ~Don't try my patience. You've not earned the arrogance you display.~ #69981 */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 82.2 82.1 80.2 80.1 79.1 78.0 73.2 73.1
  SAY @190 /* ~Gods, you're SO BORING! I'm going back to the camp. ~ #69982 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcskie2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0
  SAY @191 /* ~All right, all right. I understand.~ #70036 */
  IF ~~ THEN REPLY @192 /* ~Return to your fellows and explain what happened. And should something like this occur again, I beg you, please, exercise the discipline I know you've got within you.~ #70037 */ DO ~SetGlobal("bd_sddskie_discipline","GLOBAL",1)
~ GOTO 83
  IF ~~ THEN REPLY @193 /* ~I hope you do. There's too much at stake now for any of us to be indulging a spoiled child's caprices.~ #70038 */ DO ~SetGlobal("bd_sddskie_discipline","GLOBAL",1)
~ GOTO 81
  IF ~~ THEN REPLY @194 /* ~I doubt that, but I'll not waste my time arguing it. Begone.~ #70039 */ GOTO 81
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @195 /* ~I'd like to think you're right, <CHARNAME>. But I'm not so sure. I will go back to the camp, though—I need to think about this.~ #70040 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcskie2",FALSE)
~ EXIT
END

IF ~  Global("bd_sddskie","MYAREA",4)
AreaCheck("BD7100")
~ THEN BEGIN 84 // from:
  SAY @196 /* ~What do you want NOW, Bence?~ #69926 */
  IF ~~ THEN DO ~SetGlobal("bd_sddskie","MYAREA",5)
~ EXTERN ~BDBENCE~ 107
END

IF ~~ THEN BEGIN 85 // from:
  SAY @197 /* ~I've got better things to do.~ #69928 */
  IF ~  Global("bd_sddskie_discipline","GLOBAL",0)
~ THEN REPLY @198 /* ~You joined the Flaming Fist willingly, Skie. You chose subservience. Drills are a consequence of that choice.~ #70041 */ EXTERN ~BDBENCE~ 110
  IF ~  Global("bd_sddskie_discipline","GLOBAL",1)
~ THEN REPLY @198 /* ~You joined the Flaming Fist willingly, Skie. You chose subservience. Drills are a consequence of that choice.~ #70041 */ GOTO 87
  IF ~  Global("bd_sddskie_discipline","GLOBAL",0)
~ THEN REPLY @199 /* ~I knew you lacked the discipline to endure the life of a Fist.~ #70042 */ EXTERN ~BDBENCE~ 110
  IF ~  Global("bd_sddskie_discipline","GLOBAL",1)
~ THEN REPLY @199 /* ~I knew you lacked the discipline to endure the life of a Fist.~ #70042 */ GOTO 87
  IF ~  Global("bd_sddskie_discipline","GLOBAL",0)
~ THEN REPLY @200 /* ~You think it better to die than serve?~ #70043 */ GOTO 86
  IF ~  Global("bd_sddskie_discipline","GLOBAL",1)
~ THEN REPLY @200 /* ~You think it better to die than serve?~ #70043 */ GOTO 87
END

IF ~~ THEN BEGIN 86 // from: 85.4
  SAY @201 /* ~Who said anything about dying?~ #70044 */
  IF ~~ THEN EXTERN ~BDBENCE~ 110
END

IF ~~ THEN BEGIN 87 // from: 85.5 85.3 85.1
  SAY @202 /* ~What would you have me do? March back and forth in the muck with the other addlepates?~ #70045 */
  IF ~~ THEN REPLY @203 /* ~If that is your commanding officer's order, then yes. You need to do this, Skie. If you don't, Entar will never see you as anything but a child.~ #70046 */ GOTO 89
  IF ~~ THEN REPLY @204 /* ~What I would have you do is show a modicum of restraint for once in your life—but you are clearly unable to manage it.~ #70047 */ GOTO 88
  IF ~~ THEN REPLY @205 /* ~I'd have you shut your mouth, you insufferable brat.~ #70048 */ EXTERN ~BDBENCE~ 109
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY @206 /* ~I've got restraint. I've got LOTS of restraint!~ #70049 */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 87.0
  SAY @207 /* ~Bringing Daddy into this? That is LOW. *sigh*~ #70050 */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 88.0
  SAY @208 /* ~Show me where the addlepates are again, Bence. I guess I've got some mud to march around in.~ #70051 */
  IF ~~ THEN EXTERN ~BDBENCE~ 108
END
