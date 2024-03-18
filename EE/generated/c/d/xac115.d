// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBETROR.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBETROR.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC115~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Einer! Manners!~ [BD44147] #44147 */
  IF ~~ THEN GOTO 1
END

IF ~  Global("bd_ogres_plot","bd5200",0)
~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Hello, <PRO_SIRMAAM>. What we do for you this fine day?~ [BD38555] #38555 */
  IF ~  Global("bd_ogres_chat","bd5200",4)
~ THEN REPLY @3 /* ~Did I hear you say someone's been beating you? That's appalling. Unforgivable.~ #38556 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ EXTERN ~XAC114~ 8
  IF ~~ THEN REPLY @4 /* ~Well met, gentlemen. How does this <DAYNIGHTALL> find you? It is <DAYNIGHTALL>, right? It's hard to tell down here.~ #38557 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ EXTERN ~XAC114~ 7
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @5 /* ~I need lifting up. I'm on urgent crusade business. See, I hold the crest of Caelar.~ #38558 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ EXTERN ~XAC114~ 6
  IF ~  !PartyHasItem("BDMISC04")
~ THEN REPLY @6 /* ~I wish to be raised up.~ #38559 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ EXTERN ~XAC114~ 9
  IF ~  Global("bd_ogres_chat","bd5200",4)
OR(2)
CheckStatGT(Player1,15,CHR)
CheckStatGT(Player1,15,STR)
~ THEN REPLY @7 /* ~I just heard you say you're happier not being beaten. That's excellent. I'll be happy not to thrash you—provided you transport me up on your lift.~ #38560 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ GOTO 4
  IF ~  Global("bd_ogres_chat","bd5200",4)
CheckStatLT(Player1,16,CHR)
CheckStatLT(Player1,16,STR)
~ THEN REPLY @7 /* ~I just heard you say you're happier not being beaten. That's excellent. I'll be happy not to thrash you—provided you transport me up on your lift.~ #38560 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ GOTO 9
  IF ~  GlobalLT("bd_ogres_chat","bd5200",4)
~ THEN REPLY @8 /* ~You can turn that wheel and send me where I want to go, and quickly.~ #38561 */ DO ~SetGlobal("bd_ogres_plot","bd5200",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9 /* ~Stupid Einer. They got the Shining Lady's seal. "Doesn't smell like crusader," what kind of talk is that?~ [BD38568] #38568 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10 /* ~Einer not very smart. Hop on, <PRO_SIRMAAM>. We take you up.~ [BD38569] #38569 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.4 1.4
  SAY @11 /* ~Hop on, <PRO_SIRMAAM>. We take you up.~ [BD38570] #38570 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 1.6
  SAY @12 /* ~We not take anyone up without Belben saying so.~ [BD38573] #38573 */
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @13 /* ~I bear the Shining Lady's seal. Is that permission enough?~ #38574 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ GOTO 6
  IF ~~ THEN REPLY @14 /* ~And you just do whatever Belben says?~ #38575 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ EXTERN ~XAC114~ 15
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @15 /* ~Belben said I could go up. He said it wouldn't be a problem.~ #38576 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ GOTO 12
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @15 /* ~Belben said I could go up. He said it wouldn't be a problem.~ #38576 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ GOTO 13
  IF ~  OR(2)
CheckStatGT(Player1,16,CON)
CheckStatGT(Player1,16,STR)
~ THEN REPLY @16 /* ~I'M giving you permission.~ #38577 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ GOTO 4
  IF ~  CheckStatLT(Player1,17,CON)
CheckStatLT(Player1,17,STR)
~ THEN REPLY @16 /* ~I'M giving you permission.~ #38577 */ DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17 /* ~Aye, that do. Hop on, <PRO_SIRMAAM>. We get you where you going.~ [BD38578] #38578 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @18 /* ~Belben say no drinking on job.~ [BD38581] #38581 */
  IF ~~ THEN EXTERN ~XAC114~ 11
END

IF ~~ THEN BEGIN 8 // from:
  SAY @19 /* ~You gonna get us in trouble, Einer.~ [BD38588] #38588 */
  IF ~~ THEN EXTERN ~XAC114~ 14
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @20 /* ~Watch yourself, <PRO_RACE>. Me in charge down here.~ [BD38590] #38590 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 13.0
  SAY @21 /* ~Him up in castle.~ [BD38599] #38599 */
  IF ~~ THEN REPLY @22 /* ~How am I supposed to get Belben to tell you I'm allowed up there when I'm stuck down here?~ #38600 */ GOTO 11
  IF ~~ THEN REPLY @23 /* ~Well. That poses a bit of a dilemma, doesn't it?~ #38601 */ GOTO 14
  IF ~~ THEN REPLY @24 /* ~You realize I'm going to have to slaughter you now, yes?~ #38602 */ EXTERN ~XAC114~ 16
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @25 /* ~Hn. That IS stumper. Good luck wit' that.~ [BD38603] #38603 */
  IF ~~ THEN DO ~PlaySound("ogrem01")
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY @26 /* ~He did? Why you no say so? Hop on, <PRO_SIRMAAM>. We get you where you going.~ [BD38606] #38606 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY @27 /* ~Ya? Well, he no say it to me.~ [BD38607] #38607 */
  IF ~~ THEN REPLY @28 /* ~Where is this Belben?~ #38608 */ GOTO 10
  IF ~~ THEN REPLY @29 /* ~I don't want to hurt you, ogre. I do, however, want to kill you.~ #38609 */ EXTERN ~XAC114~ 16
  IF ~~ THEN REPLY @30 /* ~Turn the wheel, you primitive brute. Raise me up into Dragonspear.~ #61096 */ EXTERN ~XAC114~ 16
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @31 /* ~A dill-what?~ [BD38610] #38610 */
  IF ~~ THEN EXTERN ~XAC114~ 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY @25 /* ~Hn. That IS stumper. Good luck wit' that.~ [BD38603] #38612 */
  IF ~~ THEN DO ~PlaySound("ogrem01")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY @32 /* ~That does it. Y'wanna go up, <PRO_RACE>? Me like to see you try it with your arms and legs tore off!~ [BD38633] #38633 */
  IF ~~ THEN DO ~ActionOverride("bdeiner",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.5
  SAY @33 /* ~And if you Belben, that permission worth somethin'. But you not, so shove off before something gets shoved off for you.~ [BD38634] #38634 */
  IF ~~ THEN EXTERN ~XAC114~ 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @34 /* ~Belben say no takin' people up without permission.~ [BD37742] #37742 */
  IF ~~ THEN DO ~SetGlobal("bd_pc_heard_of_belben","global",1)
~ EXTERN ~XAC114~ 3
END

IF ~~ THEN BEGIN 19 // from:
  SAY @35 /* ~You do whatever you want. No trouble to me.~ [BD37748] #37748 */
  IF ~~ THEN EXTERN ~BDRHONDA~ 22
END

IF ~  Global("bd_ogres_commotion","bd5200",1)
~ THEN BEGIN 20 // from:
  SAY @36 /* ~Hey, what be all that noise upstairs?~ [BD65477] #65477 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_commotion","bd5200",2)
~ EXTERN ~XAC114~ 34
END

IF ~~ THEN BEGIN 21 // from:
  SAY @37 /* ~Oh, that make sense. Go on past.~ [BD65482] #65482 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @38 /* ~You got in trouble. You not crusade!~ [BD65483] #65483 */
  IF ~~ THEN EXTERN ~XAC114~ 35
END

IF ~  Global("bd_ogres_plot","bd5200",4)
~ THEN BEGIN 23 // from:
  SAY @39 /* ~Hm. Look who back.~ [BD37751] #37751 */
  IF ~~ THEN EXTERN ~XAC114~ 25
END

IF ~~ THEN BEGIN 24 // from:
  SAY @40 /* ~Hop on, then, an' do quick. Me no wanna have to explain what you do to Belben.~ [BD37756] #37756 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @41 /* ~Well, step it up, <PRO_RACE>. Belben be back soon, an' me no wanna explain you goin' up to 'im.~ [BD37757] #37757 */
  IF ~~ THEN EXTERN ~XAC114~ 26
END

IF ~  Global("bd_ogres_plot","bd5200",1)
~ THEN BEGIN 26 // from:
  SAY @42 /* ~You again. Go away; you give Einer thoughts.~ [BD37760] #37760 */
  IF ~~ THEN EXTERN ~XAC114~ 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY @43 /* ~Ya. Hop onna platform. We getcha where you goin'.~ [BD37765] #37765 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_plot","bd5200",5)
SetGlobal("bd_activate_pulley","bd5200",1)
SetGlobalTimer("bd_ogres_timer","bd5200",TWO_ROUNDS)
~ EXIT
END

IF ~  Global("bd_ogres_plot","bd5200",5)
GlobalTimerNotExpired("bd_ogres_timer","bd5200")
~ THEN BEGIN 28 // from:
  SAY @44 /* ~What, now you no wanna go up? Fine.~ [BD37766] #37766 */
  IF ~~ THEN DO ~SetGlobal("bd_ogres_timer","bd5200",1)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY @45 /* ~You wanna go up, <PRO_RACE>? Me like to see you try it with your arms and legs torn off!~ [BD37767] #37767 */
  IF ~~ THEN DO ~ActionOverride("bdeiner",Enemy())
Enemy()
~ EXIT
END

IF ~  Global("bd_ogres_plot","bd5200",2)
~ THEN BEGIN 30 // from:
  SAY @42 /* ~You again. Go away; you give Einer thoughts.~ [BD37760] #37760 */
  IF ~~ THEN EXTERN ~XAC114~ 29
END

IF ~~ THEN BEGIN 31 // from:
  SAY @46 /* ~Shuddup, Einer.~ [BD37775] #37775 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_ogres_plot","bd5200",5)
!GlobalTimerNotExpired("bd_ogres_timer","bd5200")
~ THEN BEGIN 32 // from:
  SAY @47 /* ~Ready t'go now?~ [BD37778] #37778 */
  IF ~~ THEN REPLY @48 /* ~I am. ~ #37779 */ GOTO 33
  IF ~~ THEN REPLY @49 /* ~Not yet. ~ #37780 */ EXTERN ~XAC114~ 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @50 /* ~Bout bloody time. Hop on.~ [BD37781] #37781 */
  IF ~~ THEN DO ~SetGlobalTimer("bd_ogres_timer","bd5200",TWO_ROUNDS)
~ EXIT
END
