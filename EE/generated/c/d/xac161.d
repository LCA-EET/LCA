// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDTRISTI.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDTRISTI.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC161~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Knight Commander Tristian, at your service. May the Lady of Strategy bring you victory.~ [BD51230] #51230 */
  IF ~~ THEN REPLY @2 /* ~And you as well.~ #51231 */ GOTO 1
  IF ~  Global("bd_symbol_fence","global",1)
HasItem("bdmisc23",Myself)
~ THEN REPLY @3 /* ~The Lady of Strategy is the Red Knight, correct?~ #51232 */ GOTO 8
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_tristian","bd4000",0)
~ THEN REPLY @4 /* ~Do you serve the crusade as a priest, then?~ #51390 */ GOTO 21
  IF ~  Global("bd_halasan_story","global",2)
Global("bd_tristian_halasan","locals",0)
~ THEN REPLY @5 /* ~Tristian, you say? Do you know a vigilant of Waterdeep named Halasan?~ #51233 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~May she bring victory to us all.~ #51234 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~I need no god's blessing to achieve victory.~ #51235 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 19.3 18.8 18.7 18.6 17.3 17.2 17.1 17.0 13.1 12.2 9.3 8.2 7.1 0.5 0.4 0.0
  SAY @8 /* ~Your pardon. I have duties to attend to.~ [BD51236] #51236 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @9 /* ~Why do you ask that? Is Halasan here?~ [BD51237] #51237 */
  IF ~~ THEN REPLY @10 /* ~I heard someone by that name is stationed in the enemy camp.~ #51238 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~She's in my camp, south of here.~ #51239 */ GOTO 3
  IF ~~ THEN REPLY @12 /* ~So you do know her.~ #51240 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @13 /* ~YOUR camp? That means you're not... Guards! Intruder!~ [BD51241] #51241 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 2.0
  SAY @14 /* ~Aloisa Halasan and I grew up together. I knew there was a chance she'd be here, but... I'd hoped she wouldn't be.~ [BD51242] #51242 */
  IF ~~ THEN REPLY @15 /* ~Perhaps you should go to her. Try talking with her before you're forced into battle.~ #51243 */ GOTO 5
  IF ~~ THEN REPLY @16 /* ~What will happen if you meet her in combat?~ #51244 */ GOTO 6
  IF ~~ THEN REPLY @17 /* ~If hopes were dragons, we'd all be cinders. If you don't want to meet her in the battlefield, leave this place now.~ #51245 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.0
  SAY @18 /* ~No. I cannot abandon my post, and it would solve nothing. The Shining Lady's cause is righteous. Nothing else matters.~ [BD51246] #51246 */
  IF ~~ THEN DO ~SetGlobal("bd_tristian_halasan","locals",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @19 /* ~She will fight as best she's able, as will I. We made our choices.~ [BD51247] #51247 */
  IF ~~ THEN DO ~SetGlobal("bd_tristian_halasan","locals",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.0
  SAY @20 /* ~I'd appreciate you not mentioning this again. Is there something else I can help you with?~ [BD51248] #51248 */
  IF ~  Global("bd_symbol_fence","global",1)
~ THEN REPLY @21 /* ~You mentioned the Lady of Strategy. That refers to the Red Knight, doesn't it?~ #51249 */ GOTO 8
  IF ~~ THEN REPLY @22 /* ~Nothing at the moment.~ #51250 */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 7.0 0.1
  SAY @23 /* ~Correct. The Red Knight gifts us with tactical knowledge in battle.~ [BD51251] #51251 */
  IF ~~ THEN REPLY @24 /* ~Please correct me if I'm wrong, but I've heard you carry an exquisitely crafted holy symbol.~ #51252 */ GOTO 9
  IF ~  PartyHasItem("bdmisc22")
~ THEN REPLY @25 /* ~Tactical knowledge, you say? Then I challenge you to a game of strategy.~ #51253 */ GOTO 10
  IF ~~ THEN REPLY @26 /* ~That's all I wanted to know.~ #51254 */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @27 /* ~You heard of that? Well, it is true. The symbol is very special to me, a gift an old friend gave me when I joined the church.~ [BD51255] #51255 */
  IF ~  PartyHasItem("bdmisc22")
~ THEN REPLY @28 /* ~How confident are you in the Red Knight's favor? Would you wager the symbol in a game of strategy?~ #51256 */ GOTO 10
  IF ~  PartyHasItem("bdmisc22")
~ THEN REPLY @29 /* ~I challenge you to a battle of wits and tactics!~ #51257 */ GOTO 10
  IF ~  PartyHasItem("bdmisc22")
!Kit(Player1,Blackguard)
OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
~ THEN REPLY @30 /* ~In the Grandmaster of the Lanceboard's name, I challenge you to a contest.~ #51258 */ GOTO 11
  IF ~~ THEN REPLY @31 /* ~That's all I wanted to know. Thank you.~ #51259 */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.0 8.1
  SAY @32 /* ~Why would I accept such a challenge?~ [BD51260] #51260 */
  IF ~~ THEN REPLY @33 /* ~I have a Coroniir board here, one of the finest tactical games ever designed. How better to learn its intricacies than playing against a devotee of the Red Knight?~ #51261 */ GOTO 11
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY @34 /* ~If you don't, your gutlessness and lack of faith will be exposed for all to see.~ #51262 */ GOTO 11
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY @34 /* ~If you don't, your gutlessness and lack of faith will be exposed for all to see.~ #51262 */ GOTO 13
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @35 /* ~To pass the time? It's boring waiting for a battle to start.~ #51263 */ GOTO 11
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @35 /* ~To pass the time? It's boring waiting for a battle to start.~ #51263 */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.3 10.1 10.0 9.2
  SAY @36 /* ~And what are the stakes should I accept this challenge?~ [BD51264] #51264 */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @37 /* ~Your holy symbol against 100 gold pieces.~ #51265 */ DO ~SetGlobal("bd_tristian_wage","locals",1)
~ GOTO 12
  IF ~  PartyGoldGT(199)
~ THEN REPLY @38 /* ~Your holy symbol against 200 gold pieces.~ #51266 */ DO ~SetGlobal("bd_tristian_wage","locals",2)
~ GOTO 14
  IF ~~ THEN REPLY @39 /* ~Your holy symbol against my reputation.~ #51267 */ DO ~SetGlobal("bd_tristian_wage","locals",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2 11.0
  SAY @40 /* ~Ridiculous. I'll not risk my most treasured possession, though I hardly think I'd be in danger of losing it to you.~ [BD51268] #51268 */
  IF ~  PartyGoldGT(199)
~ THEN REPLY @41 /* ~Your holy symbol against 200 gold pieces, then.~ #51269 */ DO ~SetGlobal("bd_tristian_wage","locals",2)
~ GOTO 14
  IF ~  CheckStatLT(Player1,13,WIS)
~ THEN REPLY @42 /* ~Your faith in the Red Knight is weak. I suspected as much.~ #58823 */ GOTO 13
  IF ~~ THEN REPLY @43 /* ~I'll return when I have more money to wager.~ #51270 */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 12.1 10.4 10.2
  SAY @44 /* ~Were we not at war, I might accept your challenge. I'll not waste time on frivolities in the midst of conflict.~ [BD51271] #51271 */
  IF ~  PartyGoldGT(199)
~ THEN REPLY @45 /* ~Fine. Your holy symbol against 200 gold pieces, then.~ #70417 */ DO ~SetGlobal("bd_tristian_wage","locals",2)
~ GOTO 14
  IF ~~ THEN REPLY @43 /* ~I'll return when I have more money to wager.~ #51270 */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 19.2 19.1 19.0 13.0 12.0 11.1
  SAY @46 /* ~Set up the board. Who am I playing against?~ [BD51272] #51272 */
  IF ~  OR(2)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)
~ THEN REPLY @47 /* ~Myself.~ #51273 */ GOTO 15
  IF ~  CheckStatLT(Player1,17,INT)
CheckStatLT(Player1,17,WIS)
~ THEN REPLY @47 /* ~Myself.~ #51273 */ GOTO 16
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN REPLY @48 /* ~Dynaheir.~ #51274 */ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)
~ EXTERN ~BDDYNAHJ~ 72
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN REPLY @49 /* ~Edwin.~ #51275 */ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)
~ EXTERN ~BDEDWINJ~ 76
  IF ~  IsValidForPartyDialogue("neera")
~ THEN REPLY @50 /* ~Neera.~ #51276 */ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)
~ EXTERN ~BDNEERAJ~ 281
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @51 /* ~Let's begin.~ [BD51280] #51280 */
  IF ~~ THEN DO ~SetGlobal("bd_challenged_tristian","global",1)
FadeFromColor([10.0],0)
~ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @51 /* ~Let's begin.~ [BD51280] #51280 */
  IF ~~ THEN DO ~SetGlobal("bd_challenged_tristian","global",1)
FadeFromColor([10.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY @52 /* ~You've bested me. The Red Knight has taught me a harsh lesson this day. Here, the holy symbol is yours.~ [BD51282] #51282 */
  IF ~~ THEN REPLY @53 /* ~Thank you.~ #51283 */ DO ~SetGlobal("bd_symbol_fence","global",2)
GiveItem("bdmisc23",LastTalkedToBy)
AddJournalEntry(60273,QUEST)
~ GOTO 1
  IF ~  Global("bd_tristian_vs_npc","locals",0)
~ THEN REPLY @54 /* ~You were pretty good. I was just better.~ #51284 */ DO ~SetGlobal("bd_symbol_fence","global",2)
GiveItem("bdmisc23",LastTalkedToBy)
AddJournalEntry(60273,QUEST)
~ GOTO 1
  IF ~  Global("bd_tristian_vs_npc","locals",0)
~ THEN REPLY @55 /* ~The Red Knight? She taught you nothing, fool. Whatever lesson you take from this came from my hand, no other's.~ #51285 */ DO ~SetGlobal("bd_symbol_fence","global",2)
GiveItem("bdmisc23",LastTalkedToBy)
AddJournalEntry(60273,QUEST)
~ GOTO 1
  IF ~  Global("bd_tristian_vs_npc","locals",1)
~ THEN REPLY @56 /* ~The Red Knight? She taught you nothing, fool. Whatever lesson you take from this came from our hand, no other's.~ #58824 */ DO ~SetGlobal("bd_symbol_fence","global",2)
GiveItem("bdmisc23",LastTalkedToBy)
AddJournalEntry(60273,QUEST)
~ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY @57 /* ~You've lost the match. My thanks for the gold. The church will put it to good use.~ [BD51286] #51286 */
  IF ~  Global("bd_tristian_wage","locals",1)
~ THEN REPLY @58 /* ~The Red Knight has found a worthy disciple in you, my friend. How about a rematch?~ #51287 */ DO ~TakePartyGold(100)
~ GOTO 19
  IF ~  Global("bd_tristian_wage","locals",2)
~ THEN REPLY @58 /* ~The Red Knight has found a worthy disciple in you, my friend. How about a rematch?~ #51287 */ DO ~TakePartyGold(200)
~ GOTO 19
  IF ~  Global("bd_tristian_wage","locals",3)
~ THEN REPLY @58 /* ~The Red Knight has found a worthy disciple in you, my friend. How about a rematch?~ #51287 */ GOTO 19
  IF ~  Global("bd_tristian_wage","locals",1)
~ THEN REPLY @59 /* ~I think you cheated.~ #51288 */ DO ~TakePartyGold(100)
~ GOTO 20
  IF ~  Global("bd_tristian_wage","locals",2)
~ THEN REPLY @59 /* ~I think you cheated.~ #51288 */ DO ~TakePartyGold(200)
~ GOTO 20
  IF ~  Global("bd_tristian_wage","locals",3)
~ THEN REPLY @59 /* ~I think you cheated.~ #51288 */ GOTO 20
  IF ~  Global("bd_tristian_wage","locals",1)
~ THEN REPLY @60 /* ~So be it.~ #51289 */ DO ~TakePartyGold(100)
SetGlobal("bd_symbol_fence","global",3)
AddJournalEntry(60274,QUEST)
~ GOTO 1
  IF ~  Global("bd_tristian_wage","locals",2)
~ THEN REPLY @60 /* ~So be it.~ #51289 */ DO ~TakePartyGold(200)
SetGlobal("bd_symbol_fence","global",3)
AddJournalEntry(60274,QUEST)
~ GOTO 1
  IF ~  Global("bd_tristian_wage","locals",3)
~ THEN REPLY @60 /* ~So be it.~ #51289 */ DO ~SetGlobal("bd_symbol_fence","global",3)
AddJournalEntry(60274,QUEST)
~ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 18.2 18.1 18.0
  SAY @61 /* ~Same stakes?~ [BD51290] #51290 */
  IF ~  Global("bd_tristian_wage","locals",1)
PartyGoldGT(99)
~ THEN REPLY @62 /* ~Yes.~ #51291 */ GOTO 14
  IF ~  Global("bd_tristian_wage","locals",2)
PartyGoldGT(199)
~ THEN REPLY @62 /* ~Yes.~ #51291 */ GOTO 14
  IF ~  Global("bd_tristian_wage","locals",3)
~ THEN REPLY @62 /* ~Yes.~ #51291 */ GOTO 14
  IF ~~ THEN REPLY @63 /* ~I'll return when I have some money to wager.~ #51292 */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 18.5 18.4 18.3
  SAY @64 /* ~I'll pretend I didn't hear that. Be off with you now. I've duties to attend to, even if you don't.~ [BD51293] #51293 */
  IF ~~ THEN DO ~SetGlobal("bd_symbol_fence","global",3)
AddJournalEntry(60274,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @65 /* ~I do. The Red Knight is the patron of tactics and strategy. I help coordinate planning and movement of Caelar's legions.~ [BD51394] #51394 */
  IF ~~ THEN REPLY @66 /* ~You serve as a healer too, though, correct?~ #51395 */ GOTO 22
  IF ~~ THEN REPLY @67 /* ~Will such things be needed in the Nine Hells?~ #51396 */ GOTO 22
  IF ~~ THEN REPLY @68 /* ~What brought you to the crusade in the first place?~ #51397 */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.1 21.0
  SAY @69 /* ~I have healing magic as well, but that's not my primary use. The fiends of the Nine Hells are orderly, regimented. It will take all our skill to outmaneuver them.~ [BD51398] #51398 */
  IF ~~ THEN REPLY @70 /* ~Tell me, what was it that brought you to Caelar's service?~ #51399 */ GOTO 23
  IF ~~ THEN REPLY @71 /* ~Do you really believe Caelar can march into Hell and somehow outmaneuver the devils in their own territory?~ #51400 */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 21.2
  SAY @72 /* ~The crusade passed through my village and conscripted me. At first, I resisted them, but when Caelar explained her mission, I realized fate brought me to her.~ [BD51401] #51401 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 22.1
  SAY @73 /* ~Without expert tactics, we don't stand a chance in the Hells. Caelar has put her faith in me, and I return that faith tenfold. She will lead us to victory.~ [BD51402] #51402 */
  IF ~~ THEN REPLY @74 /* ~Your faith likewise inspires me.~ #51403 */ GOTO 26
  IF ~~ THEN REPLY @75 /* ~It doesn't seem likely we're going to survive.~ #51404 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @76 /* ~Have faith, my friend. I believe Caelar could call down holy fire from heaven itself to blast the fiends to dust. She will see us through this. Now please excuse me. I must return to my duties.~ [BD51406] #51406 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_tristian","bd4000",1)
~ UNSOLVED_JOURNAL @77 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

I spoke to Tristian, a cleric of the Red Knight. Conscripted by force when the crusade went through his village, he now seems happy to serve Caelar. He believes the Red Knight set him on Caelar's path, as the crusade needs planners and strategic minds.~ #58822 */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY @78 /* ~I am glad to hear it. Now please excuse me. I must return to my duties.~ [BD51407] #51407 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_tristian","bd4000",1)
~ UNSOLVED_JOURNAL @77 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

I spoke to Tristian, a cleric of the Red Knight. Conscripted by force when the crusade went through his village, he now seems happy to serve Caelar. He believes the Red Knight set him on Caelar's path, as the crusade needs planners and strategic minds.~ #58822 */ EXIT
END
