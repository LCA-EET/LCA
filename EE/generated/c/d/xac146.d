// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDULORI.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDULORI.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC146~

IF ~  Global("bd_sindret_plot","bd4000",2)
PartyHasItem("bdshackl")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Raaaargh! ~ #49192 */
  IF ~~ THEN REPLY @2 /* ~Uh... Well met, friend. What's your name?~ #49193 */ GOTO 2
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @3 /* ~Calm down there, Mister Troll. I'm not here to hurt you.~ #49194 */ GOTO 1
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @3 /* ~Calm down there, Mister Troll. I'm not here to hurt you.~ #49194 */ EXTERN ~BDDORNJ~ 155
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @4 /* ~Troll! Lie down and hold your hands out. Do as I say!~ #49195 */ GOTO 3
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @4 /* ~Troll! Lie down and hold your hands out. Do as I say!~ #49195 */ EXTERN ~BDKHALIJ~ 37
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~RAAARGH! Trollop! ~ #49196 */
  IF ~~ THEN REPLY @6 /* ~There's no need for name-calling.~ #49197 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Trollop? You're a female?~ #49198 */ GOTO 2
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @8 /* ~Lie down and present your hands. Obey me, damn you!~ #49199 */ GOTO 3
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @8 /* ~Lie down and present your hands. Obey me, damn you!~ #49199 */ EXTERN ~BDKHALIJ~ 37
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0 0.0
  SAY @9 /* ~Back, skinny bites! Back from Ulori! ~ #49200 */
  IF ~~ THEN REPLY @10 /* ~Ulori? That's you, that's your name?~ #49201 */ GOTO 3
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @11 /* ~There'll be no biting here today. Now lie down and be quiet.~ #49202 */ GOTO 3
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @11 /* ~There'll be no biting here today. Now lie down and be quiet.~ #49202 */ EXTERN ~BDKHALIJ~ 37
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @12 /* ~Get down on the ground and hold out your hands. DO IT!~ #49203 */ GOTO 3
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @12 /* ~Get down on the ground and hold out your hands. DO IT!~ #49203 */ EXTERN ~BDKHALIJ~ 37
END

IF ~~ THEN BEGIN 3 // from: 2.3 2.1 2.0 1.2 0.3
  SAY @13 /* ~AAAUGH! Time to eat! YOU! ~ #49204 */
  IF ~  Race(Player1,ELF)
~ THEN REPLY @14 /* ~Try it. I'll tear you apart and burn the pieces. Lie down and be still!~ #49205 */ GOTO 4
  IF ~  !Race(Player1,ELF)
OR(3)
Class(Player1,FIGHTER_ALL)
Kit(Player1,BARBARIAN)
Kit(Player1,Blackguard)
~ THEN REPLY @14 /* ~Try it. I'll tear you apart and burn the pieces. Lie down and be still!~ #49205 */ GOTO 5
  IF ~  !Race(Player1,ELF)
!Class(Player1,FIGHTER_ALL)
!Kit(Player1,BARBARIAN)
!Kit(Player1,Blackguard)
~ THEN REPLY @14 /* ~Try it. I'll tear you apart and burn the pieces. Lie down and be still!~ #49205 */ GOTO 11
  IF ~  Race(Player1,ELF)
Class(Player1,MAGE_ALL)
~ THEN REPLY @15 /* ~Time is but a construct. In one sense, you have already eaten me, and will consume me again. Using a more standard linear chronology, however, that hasn't happened yet. Nor will it any time soon, as you are about to lie down and be still.~ #49206 */ GOTO 4
  IF ~  !Race(Player1,ELF)
Class(Player1,MAGE_ALL)
~ THEN REPLY @15 /* ~Time is but a construct. In one sense, you have already eaten me, and will consume me again. Using a more standard linear chronology, however, that hasn't happened yet. Nor will it any time soon, as you are about to lie down and be still.~ #49206 */ GOTO 6
  IF ~  Race(Player1,ELF)
Class(Player1,BARD_ALL)
~ THEN REPLY @16 /* ~You're clearly anxious, and understandably so. Let me sing you a song to soothe your nerves.~ #49207 */ GOTO 4
  IF ~  !Race(Player1,ELF)
Class(Player1,BARD_ALL)
~ THEN REPLY @16 /* ~You're clearly anxious, and understandably so. Let me sing you a song to soothe your nerves.~ #49207 */ GOTO 8
  IF ~~ THEN REPLY @17 /* ~Take one more step toward me, troll, and you'll regret it.~ #49208 */ GOTO 11
  IF ~~ THEN REPLY @18 /* ~This doesn't have to end in bloodshed. Do as I command and I won't hurt you.~ #49209 */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.5 3.3 3.0
  SAY @19 /* ~Tasty elf! Soft outside with crunch inside! ~ #49210 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @20 /* ~You strong! Me no bite! ~ #49211 */
  IF ~~ THEN REPLY @21 /* ~That's better. Hold still while I put these shackles on you. ~ #49212 */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 3.4
  SAY @22 /* ~Huh? ~ #49213 */
  IF ~~ THEN REPLY @23 /* ~The "arrow of time" flies ever forward. Your capitulation is assured, as, in a very real sense, you have already surrendered to my will. You don't want to alter the timestream, do you?~ #49214 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @24 /* ~N-no? ~ #49215 */
  IF ~~ THEN REPLY @25 /* ~That's right. Chronological disruption carries with it dire consequences. So lie down now, and I'll put these shackles on you.~ #49216 */ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 3.6
  SAY @26 /* ~Ulori like music. ~ #49217 */
  IF ~~ THEN REPLY @27 /* ~Then you'll love this. I call it, "Troll Lullaby." It goes like this: "Go to sleep, massive troll, and dream of your dinner..." ~ #49218 */ DO ~PlaySound("ACT_01")
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @28 /* ~Nice... music... zzzzz.~ #49219 */
  IF ~~ THEN DO ~SetGlobal("bd_troll_wrangled","bd4000",1)
TakePartyItem("bdshackl")
DestroyItem("bdshackl")
DialogueInterrupt(FALSE)
ApplySpellRES("bdulori",Myself)
~ UNSOLVED_JOURNAL @29 /* ~Troll Breakout

I should talk to Sindret again.

I've successfully shackled Ulori the troll. Hopefully Sindret appreciates my hard work.~ #58702 */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 5.0
  SAY @30 /* ~Yah, Ulori stay still.~ #49220 */
  IF ~~ THEN DO ~SetGlobal("bd_troll_wrangled","bd4000",1)
TakePartyItem("bdshackl")
DestroyItem("bdshackl")
DialogueInterrupt(FALSE)
ApplySpellRES("bdulori",Myself)
~ UNSOLVED_JOURNAL @29 /* ~Troll Breakout

I should talk to Sindret again.

I've successfully shackled Ulori the troll. Hopefully Sindret appreciates my hard work.~ #58702 */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0 3.8 3.7 3.2
  SAY @31 /* ~Rip your flesh and chew on the bones!~ #49221 */
  IF ~~ THEN DO ~TakePartyItem("bdshackl")
DestroyItem("bdshackl")
Enemy()
~ EXIT
END
