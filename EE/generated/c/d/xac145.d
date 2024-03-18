// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSINDRE.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSINDRE.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC145~

IF ~  Global("bd_sindret_plot","bd4000",0)
Global("bd_troll_wrangled","bd4000",0)
!Dead("bdulori")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Watch his claw! Do you want to be disemboweled?~ [BD49141] #49141 */
  IF ~  OR(2)
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("VICONIA")
OR(2)
See("BAELOTH")
IsValidForPartyDialogue("VICONIA")
OR(2)
IsValidForPartyDialogue("BAELOTH")
See("VICONIA")
OR(2)
See("BAELOTH")
See("VICONIA")
~ THEN REPLY @2 /* ~Are you a troll handler?~ #49142 */ GOTO 2
  IF ~  OR(2)
!IsValidForPartyDialogue("BAELOTH")
!See("BAELOTH")
OR(2)
!IsValidForPartyDialogue("VICONIA")
!See("VICONIA")
~ THEN REPLY @2 /* ~Are you a troll handler?~ #49142 */ GOTO 5
  IF ~~ THEN REPLY @3 /* ~I have some questions for you.~ #49143 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~You seem busy. I'll come back later.~ #49144 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 5.3 5.2 0.3 0.2
  SAY @5 /* ~Get out of here! I need to get this troll under control and you aren't helping!~ #49145 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6 /* ~Is that a drow by your side?~ #49146 */
  IF ~  IsValidForPartyDialogue("BAELOTH")
See("BAELOTH")
~ THEN REPLY @7 /* ~Who, Baeloth? He's a friend of mine.~ #49147 */ EXTERN ~BDBAELOJ~ 31
  IF ~  IsValidForPartyDialogue("VICONIA")
See("VICONIA")
~ THEN REPLY @8 /* ~You mean Viconia? Don't worry, she's trustworthy.~ #49148 */ EXTERN ~BDVICONJ~ 38
  IF ~~ THEN REPLY @9 /* ~It is. You have a problem with that?~ #58817 */ GOTO 3
  IF ~~ THEN REPLY @10 /* ~A drow! Where?~ #49149 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @11 /* ~If you count a drow as a friend of yours, you are no friend of mine. The crusade accepts all who swear loyalty to Caelar. I do not. Luck to you—if you continue throwing your lot in with this scum, you'll surely need it.~ #49152 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY @12 /* ~Right there! Get it!~ #49153 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @13 /* ~No, but I assist them. I can heal anyone who takes a claw to the face. Usually.~ #49154 */
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_sindret","bd4000",0)
~ THEN REPLY @14 /* ~Is that why you joined the crusade? To heal people?~ #49082 */ GOTO 29
  IF ~~ THEN REPLY @15 /* ~Looks like you're having some trouble. Can I be of assistance?~ #49155 */ GOTO 6
  IF ~~ THEN REPLY @16 /* ~Seems like a dangerous job. I'll leave you to it.~ #49156 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I have some questions for you.~ #49157 */ GOTO 1
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @17 /* ~Actually, yes. We can't find Gnarg, the regular troll keeper. He keeps troll shackles in a chest back in the camp. ...Go get them!~ [BD49158] #49158 */
  IF ~~ THEN REPLY @19 /* ~Yes, ma'am.~ #49159 */ DO ~SetGlobal("bd_sindret_plot","bd4000",1)
~ UNSOLVED_JOURNAL @18 /* ~Troll Breakout

I need to find the troll shackles somewhere in camp.

Sindret, a cleric and assistant troll-wrangler, has asked me to fetch special troll shackles. They're apparently in a chest somewhere in camp.~ #58698 */ GOTO 7
  IF ~  Global("bd_where_is_chest","locals",0)
~ THEN REPLY @20 /* ~How will I recognize the chest?~ #49160 */ DO ~SetGlobal("bd_sindret_plot","bd4000",1)
SetGlobal("bd_where_is_chest","locals",1)
~ UNSOLVED_JOURNAL @18 /* ~Troll Breakout

I need to find the troll shackles somewhere in camp.

Sindret, a cleric and assistant troll-wrangler, has asked me to fetch special troll shackles. They're apparently in a chest somewhere in camp.~ #58698 */ GOTO 8
  IF ~~ THEN REPLY @21 /* ~I have more important things to do.~ #49161 */ DO ~SetGlobal("bd_sindret_plot","bd4000",1)
~ UNSOLVED_JOURNAL @18 /* ~Troll Breakout

I need to find the troll shackles somewhere in camp.

Sindret, a cleric and assistant troll-wrangler, has asked me to fetch special troll shackles. They're apparently in a chest somewhere in camp.~ #58698 */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 8.0 6.0
  SAY @22 /* ~Watch those claws, soldiers!~ #49162 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 11.1 6.1
  SAY @23 /* ~It's next to one of the black and white tents.~ #49163 */
  IF ~~ THEN REPLY @25 /* ~I'll bring them right back.~ #49164 */ DO ~AddMapNoteColor([1410.1675],@24,SLATE)
~ GOTO 7
  IF ~~ THEN REPLY @21 /* ~I have more important things to do.~ #49165 */ DO ~AddMapNoteColor([1410.1675],@24,SLATE)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 6.2
  SAY @26 /* ~Excuse me, RECRUIT, but I'm your superior and I'm giving you a direct order. Fetch those shackles or I'll see you wearing a pair of your own!~ #49166 */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("bd_sindret_plot","bd4000",2)
Dead("bdulori")
~ THEN BEGIN 10 // from:
  SAY @27 /* ~Well, I guess you did a good enough job. Of BOTCHING everything up COMPLETELY.~ #49229 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",6)
EscapeArea()
~ EXIT
END

IF ~  Global("bd_sindret_plot","bd4000",1)
Global("bd_troll_wrangled","bd4000",0)
!Dead("bdulori")
~ THEN BEGIN 11 // from:
  SAY @28 /* ~This monster isn't subduing itself, recruit! Do you have the shackles?~ #49167 */
  IF ~  PartyHasItem("bdshackl")
~ THEN REPLY @29 /* ~Yes, I have them right here.~ #49168 */ GOTO 13
  IF ~  !PartyHasItem("bdshackl")
Global("bd_where_is_chest","locals",0)
~ THEN REPLY @30 /* ~You said they're in a chest. How am I supposed to recognize it?~ #58814 */ DO ~SetGlobal("bd_where_is_chest","locals",1)
~ GOTO 8
  IF ~~ THEN REPLY @31 /* ~I need a little more time.~ #49169 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY @32 /* ~Hurry up! We can't keep this troll at bay forever.~ #49170 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY @33 /* ~Good job—now get in there and slap those shackles on the beast!~ #49171 */
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @34 /* ~I'm on it!~ #49172 */ EXTERN ~BDMKHIIJ~ 86
  IF ~  !IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @34 /* ~I'm on it!~ #49172 */ GOTO 14
  IF ~~ THEN REPLY @35 /* ~Uhhh... What?~ #49173 */ GOTO 15
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @36 /* ~The monster will submit—or die.~ #49174 */ EXTERN ~BDMKHIIJ~ 87
  IF ~  !IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @36 /* ~The monster will submit—or die.~ #49174 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 16.3 15.4 15.1 13.4 13.1
  SAY @37 /* ~That's the spirit. We'll be right here if you need help!~ #49176 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",2)
~ UNSOLVED_JOURNAL @38 /* ~Troll Breakout

I should talk to the troll and convince it to let me shackle it.

I've agreed to try to shackle the troll. Hopefully I can manage it without getting my head bitten off.~ #58699 */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @39 /* ~Show some backbone, <PRO_MANWOMAN>! Go in there and tame that monster!~ #49177 */
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @40 /* ~I'll get right on that.~ #49178 */ EXTERN ~BDMKHIIJ~ 86
  IF ~  !IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @40 /* ~I'll get right on that.~ #49178 */ GOTO 14
  IF ~~ THEN REPLY @41 /* ~You want it tamed, go in there and do it yourself.~ #49179 */ GOTO 16
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @42 /* ~It will break, or die.~ #49180 */ EXTERN ~BDMKHIIJ~ 87
  IF ~  !IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @42 /* ~It will break, or die.~ #49180 */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY @43 /* ~See this insignia? It means I outrank you—I give the orders here. Get in there, or by Shevarash, there will be consequences!~ #49181 */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @44 /* ~I may look like a simple recruit, but I'm actually on assignment from Caelar, canvassing the troops undercover, evaluating morale.~ #49182 */ GOTO 19
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY @44 /* ~I may look like a simple recruit, but I'm actually on assignment from Caelar, canvassing the troops undercover, evaluating morale.~ #49182 */ GOTO 18
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @45 /* ~I'll give it a try.~ #49183 */ EXTERN ~BDDORNJ~ 154
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @45 /* ~I'll give it a try.~ #49183 */ GOTO 14
  IF ~~ THEN REPLY @46 /* ~Uh, have you actually seen that thing? I'm not going anywhere near it!~ #49184 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY @47 /* ~You're out of order, recruit! Insubordination must be dealt with firmly!~ #49185 */
  IF ~~ THEN DO ~Enemy()
~ SOLVED_JOURNAL @48 /* ~Troll Breakout

I fought Sindret over who would shackle the troll.

Sindret wanted me to shackle the troll, but I refused. She took offense, and a battle followed.~ #58701 */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @49 /* ~You're out of order, recruit. Lying and insubordination must be dealt with firmly!~ #49186 */
  IF ~~ THEN DO ~Enemy()
~ SOLVED_JOURNAL @48 /* ~Troll Breakout

I fought Sindret over who would shackle the troll.

Sindret wanted me to shackle the troll, but I refused. She took offense, and a battle followed.~ #58701 */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY @50 /* ~You do look familiar. ~ #49187 */
  IF ~~ THEN REPLY @51 /* ~Take these shackles and put them on the troll. Now. That's an order.~ #49188 */ GOTO 21
  IF ~~ THEN REPLY @52 /* ~I'll handle the troll, but you'd better be ready to back me up. And in future, mind your tone.~ #49189 */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @53 /* ~Yes, <PRO_SIRMAAM>.~ #49190 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",2)
~ UNSOLVED_JOURNAL @38 /* ~Troll Breakout

I should talk to the troll and convince it to let me shackle it.

I've agreed to try to shackle the troll. Hopefully I can manage it without getting my head bitten off.~ #58699 */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY @54 /* ~As you order, <PRO_SIRMAAM>.~ #49191 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",3)
SetGlobal("bd_wranglers_assist","bd4000",1)
TakePartyItem("bdshackl")
DestroyItem("bdshackl")
ActionOverride("bdulori",Enemy())
ActionOverride("bdulori",AttackOneRound("bdsindr3"))
~ EXIT
END

IF ~  Global("bd_sindret_plot","bd4000",2)
Global("bd_troll_wrangled","bd4000",0)
!Dead("bdulori")
~ THEN BEGIN 22 // from:
  SAY @32 /* ~Hurry up! We can't keep this troll at bay forever.~ #49170 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_sindret_plot","bd4000",3)
Global("bd_troll_wrangled","bd4000",0)
!Dead("bdulori")
~ THEN BEGIN 23 // from:
  SAY @22 /* ~Watch those claws, soldiers!~ #49162 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sindret_plot","bd4000",0)
GlobalLT("bd_sindret_plot","bd4000",4)
OR(2)
Global("bd_troll_wrangled","bd4000",1)
Dead("bdulori")
~ THEN BEGIN 24 // from:
  SAY @55 /* ~You're back. ~ #49222 */
  IF ~  Global("bd_sindret_plot","bd4000",2)
Global("bd_troll_wrangled","bd4000",1)
!Dead("bdulori")
~ THEN REPLY @56 /* ~I've come to claim my reward.~ #49223 */ GOTO 26
  IF ~  Global("bd_sindret_plot","bd4000",2)
Dead("bdulori")
~ THEN REPLY @56 /* ~I've come to claim my reward.~ #49223 */ GOTO 27
  IF ~  Global("bd_sindret_plot","bd4000",3)
OR(2)
Global("bd_troll_wrangled","bd4000",1)
Dead("bdulori")
~ THEN REPLY @57 /* ~You look none the worse for wear.~ #49224 */ GOTO 28
  IF ~~ THEN REPLY @58 /* ~I have a few questions.~ #49225 */ GOTO 25
END

IF ~  Global("bd_sindret_plot","bd4000",0)
Global("bd_troll_wrangled","bd4000",1)
!Dead("bdulori")
~ THEN BEGIN 25 // from: 24.3
  SAY @59 /* ~Sorry, I have to track down Gnarg and finish a hundred other tasks. We'll have to talk later.~ #49226 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",5)
AddJournalEntry(58704,QUEST_DONE)
EscapeArea()
~ EXIT
  IF ~  !Global("bd_sindret_plot","bd4000",3)
Dead("bdulori")
~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",5)
AddJournalEntry(58705,QUEST_DONE)
EscapeArea()
~ EXIT
  IF ~  Global("bd_sindret_plot","bd4000",3)
~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",5)
AddJournalEntry(58700,QUEST_DONE)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY @60 /* ~You did a good job, recruit. Here, these potions should serve as a token of my gratitude. You'll need them when we challenge the enemies gathering beyond the gates. They do devils' work. We'll have to put them down.~ #49227 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",5)
AddexperienceParty(4000)
GiveItem("POTN41",LastTalkedToBy(Myself))
GiveItem("POTN34",LastTalkedToBy(Myself))
GiveItemCreate("POTN09",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("POTN21",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("POTN45",LastTalkedToBy(Myself),1,0,0)
EscapeArea()
~ SOLVED_JOURNAL @61 /* ~Troll Breakout

I've successfully wrangled the troll.

Looks like I can add "troll wrangler" to my list of accomplishments. The crusade seems to be using the trolls as expendable muscle. I fear that will make the coming battle more difficult for the coalition.~ #58704 */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @62 /* ~Damn it! You were to shackle the troll, not kill it! The Shining Lady could have used its strength and you just wasted it! Go, get out of my sight before I throw you in the stocks!~ #49230 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",6)
AddexperienceParty(4000)
EscapeArea()
~ SOLVED_JOURNAL @63 /* ~Troll Breakout

I slew the troll the crusaders were trying to shackle.

Sindret wanted me to shackle the troll, but I killed it instead. The crusade seems to be using the trolls as expendable muscle—one fewer to deal with makes things easier for our side, even if Sindret's furious.~ #58705 */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.2
  SAY @64 /* ~Yes, <PRO_SIRMAAM>, I was able to patch up the survivors. More or less. Now if you'll excuse me, I have work to do.~ #49231 */
  IF ~~ THEN DO ~SetGlobal("bd_sindret_plot","bd4000",5)
AddexperienceParty(4000)
EscapeArea()
~ SOLVED_JOURNAL @65 /* ~Troll Breakout

Sindret took on the task of shackling the troll.

I bluffed Sindret into attempting to shackle the troll herself. Things did not go well for the crusaders.~ #58700 */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.0
  SAY @66 /* ~You could say that. Are you familiar with Shevarash?~ [BD49085] #49085 */
  IF ~  Class(Player1,CLERIC_ALL)
~ THEN REPLY @67 /* ~He's an elven god of revenge, is he not? His faithful often hunt drow.~ #49086 */ GOTO 30
  IF ~  CheckStatGT(Player1,15,WIS)
!Class(Player1,CLERIC_ALL)
~ THEN REPLY @68 /* ~I've heard the name. He's some sort of vengeance god...?~ #49087 */ GOTO 30
  IF ~  Race(Player1,ELF)
~ THEN REPLY @69 /* ~Of course. The Black Archer guides his faithful toward just vengeance.~ #49088 */ GOTO 30
  IF ~~ THEN REPLY @70 /* ~No, I'm afraid I'm not.~ #49089 */ GOTO 30
  IF ~~ THEN REPLY @71 /* ~Of course. Good ol' Shevarash. ~ #49090 */ GOTO 30
  IF ~~ THEN REPLY @72 /* ~Why should I care about your faith?~ #49091 */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.5 29.4 29.3 29.2 29.1 29.0
  SAY @73 /* ~Many servants of Shevarash focus on our enemy, the drow, but he is also the god of crusades. I thought by coming here I might learn tactics I could take back home, while doing some good.~ [BD49092] #49092 */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @74 /* ~Instead, I gained a new appreciation of the power of faith. Caelar is so pure, so driven. She has accessed power that will protect us in the Nine Hells themselves.~ [BD49098] #49098 */
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY @75 /* ~That's incredible.~ #49099 */ EXTERN ~BDGLINTJ~ 206
  IF ~  !IsValidForPartyDialogue("glint")
~ THEN REPLY @75 /* ~That's incredible.~ #49099 */ GOTO 32
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY @76 /* ~Caelar's something, all right.~ #49100 */ EXTERN ~BDGLINTJ~ 206
  IF ~  !IsValidForPartyDialogue("glint")
~ THEN REPLY @76 /* ~Caelar's something, all right.~ #49100 */ GOTO 32
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY @77 /* ~So she says. I have my doubts.~ #49101 */ EXTERN ~BDGLINTJ~ 206
  IF ~  !IsValidForPartyDialogue("glint")
~ THEN REPLY @77 /* ~So she says. I have my doubts.~ #49101 */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.5 31.3 31.1
  SAY @78 /* ~I hope I can achieve Caelar's level of devotion someday, and harness it as she has to protect my people from the Underdark.~ [BD49103] #49103 */
  IF ~~ THEN REPLY @79 /* ~If Caelar truly can shield us from the Hells' fury, I'm sure you can manage the same against the Underdark.~ #49104 */ GOTO 33
  IF ~~ THEN REPLY @80 /* ~Good luck with that.~ #49105 */ GOTO 33
  IF ~~ THEN REPLY @81 /* ~A noble aim.~ #49106 */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.2 32.1 32.0
  SAY @82 /* ~I need to get back to work now. Have a good day. ~ #49107 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_sindret","bd4000",1)
~ UNSOLVED_JOURNAL @83 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

I spoke to a cleric of Shevarash named Sindret. A hunter of drow, as dictated by her deity, she originally joined the crusade to learn new tactics. Caelar's faith inspired her, though. Now she fights wholeheartedly for the Shining Lady's cause. It's interesting that people of such different faiths all take Caelar as a spiritual leader.~ #58810 */ EXIT
END
