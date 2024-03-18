// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUS.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCRUS.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC127~

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Caelar will lead us to victory! Those who were lost will be reclaimed!~ #62917 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~We are on the right side of history, <PRO_RACE>. Our enemies just don't undestand what it is we seek to do.~ #62918 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~My feet hurt. I'm not used to marching so much, but it will all be worth it if I can rescue my beloved.~ #62919 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I used to be a sewer cleaner. This is better.~ #62920 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,5)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Have you seen Caelar yet? They say she shines like the sun.~ #62921 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,6)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~The divine protection granted Caelar and her acolytes will allow us to triumph. Never forget, the gods stand beside us.~ #62922 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,7)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~Some of the crusade's commanders have... troubling pasts. But I trust the Shining Lady's judgment. She knows what is best.~ #62923 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,8)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~We will take this fort or die trying! All who defy our righteous crusade must be punished!~ #62924 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,9)
~ THEN BEGIN 8 // from:
  SAY @9 /* ~I miss my family, but I'm out here doing good work. They understand.~ #62925 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,10)
~ THEN BEGIN 9 // from:
  SAY @10 /* ~You look familiar. Have we met?~ #62926 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,11)
~ THEN BEGIN 10 // from:
  SAY @11 /* ~Good day, <PRO_SIRMAAM>.~ #62927 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,12)
~ THEN BEGIN 11 // from:
  SAY @12 /* ~Whatever Caelar needs, we will do. ~ #62928 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,13)
~ THEN BEGIN 12 // from:
  SAY @13 /* ~Forgive me, I cannot speak to you now. I've much to do.~ #62929 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,14)
~ THEN BEGIN 13 // from:
  SAY @14 /* ~You look lost. If you need something to do, talk to one of the commanders.~ #62930 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_plot","GLOBAL",199)
GlobalLT("bd_plot","GLOBAL",300)
RandomNum(15,15)
~ THEN BEGIN 14 // from:
  SAY @15 /* ~Our crusade will be remembered for centuries to come. This will be the turning point in a great war against evil!~ #62931 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,1)
~ THEN BEGIN 15 // from:
  SAY @16 /* ~Greetings, <PRO_SIRMAAM>.~ #63177 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,2)
~ THEN BEGIN 16 // from:
  SAY @17 /* ~I don't recognize you. You must be new.~ #63178 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,3)
~ THEN BEGIN 17 // from:
  SAY @18 /* ~Have we met before? I feel like I've seen your face before.~ #63179 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,4)
~ THEN BEGIN 18 // from:
  SAY @19 /* ~The Shining Lady's enemies will be crushed against the gates of Dragonspear!~ #63180 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,5)
~ THEN BEGIN 19 // from:
  SAY @20 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ #63181 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,6)
~ THEN BEGIN 20 // from:
  SAY @21 /* ~Caelar is an inspiration. I could listen to her speak for a tenday. Longer, even.~ #63182 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,7)
~ THEN BEGIN 21 // from:
  SAY @22 /* ~Our victory is inevitable. We have a righteous cause and the Shining Lady on our side.~ #63183 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,8)
~ THEN BEGIN 22 // from:
  SAY @23 /* ~We make our stand here. Dragonspear Castle is ours!~ #63184 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,9)
~ THEN BEGIN 23 // from:
  SAY @24 /* ~Those trolls will come in handy. Those fools outside won't know what hit them.~ #63185 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,10)
~ THEN BEGIN 24 // from:
  SAY @25 /* ~A good <DAYNIGHTALL> to you.~ #63186 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,11)
~ THEN BEGIN 25 // from:
  SAY @26 /* ~All glory to Caelar! Victory for the Shining Lady!~ #63187 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,12)
~ THEN BEGIN 26 // from:
  SAY @27 /* ~No time to talk, lots to do. Walk ever in Caelar's light.~ #63188 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,13)
~ THEN BEGIN 27 // from:
  SAY @28 /* ~Is there something I can help you with?~ #63189 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,14)
~ THEN BEGIN 28 // from:
  SAY @29 /* ~An attack could come at any moment. Keep your weapon close at hand.~ #63190 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalGT("bd_plot","GLOBAL",299)
GlobalLT("bd_plot","GLOBAL",396)
RandomNum(15,15)
~ THEN BEGIN 29 // from:
  SAY @30 /* ~Morale Officer Deneld knows how to get the best out of his people. His speeches are the best part of my day.~ #63191 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
Global("BD_DungeonSlug","GLOBAL",2)
Global("bd_sdd325bb_slug_freed","bd5100",0)
~ THEN BEGIN 30 // from:
  SAY @31 /* ~Redblooding ogre near took my feldurkin' head off! An' I was one of the lucky ones—Pellyn got tore in half, then into quarters. It was... thorough.~ #69512 */
  IF ~~ THEN DO ~SetGlobal("bd_sdd325bb_slug_freed","bd5100",1)
~ EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,1)
~ THEN BEGIN 31 // from:
  SAY @32 /* ~I'm so bored.~ #63204 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,2)
~ THEN BEGIN 32 // from:
  SAY @33 /* ~Hope I get to go on patrol soon. Least it's something to do.~ #63205 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,3)
~ THEN BEGIN 33 // from:
  SAY @34 /* ~Say, you look... kinda familiar. Do I know you from somewhere?~ #63206 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,4)
~ THEN BEGIN 34 // from:
  SAY @35 /* ~Hello, <PRO_SIRMAAM>.~ #63207 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,5)
~ THEN BEGIN 35 // from:
  SAY @36 /* ~I hate being underground. Never know if the sun's up or not.~ #63208 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,6)
~ THEN BEGIN 36 // from:
  SAY @37 /* ~This is the life. Nothing to do but relax and wait for battle.~ #63209 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,7)
~ THEN BEGIN 37 // from:
  SAY @38 /* ~I've won the last twelve games of "rock, parchment, dagger." I'm unstoppable!~ #63210 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,8)
~ THEN BEGIN 38 // from:
  SAY @39 /* ~I might try to find something to do later on, if I feel like it.~ #63211 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,9)
~ THEN BEGIN 39 // from:
  SAY @40 /* ~Ladle sure likes to yell. Not our fault there's nothing to do round here.~ #63212 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,10)
~ THEN BEGIN 40 // from:
  SAY @41 /* ~Thanks to the fish-men blocking the passage, we're stuck here. Guess I'll take another nap.~ #63213 */
  IF ~~ THEN EXIT
END

IF ~  !GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(11,11)
~ THEN BEGIN 41 // from:
  SAY @42 /* ~Since I have so much spare time, I've been composing a poem.~ #63214 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,1)
~ THEN BEGIN 42 // from:
  SAY @43 /* ~There's so much to DO now.~ #63215 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,2)
~ THEN BEGIN 43 // from:
  SAY @44 /* ~Work work work, that's all we do now.~ #63216 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,3)
~ THEN BEGIN 44 // from:
  SAY @45 /* ~Begging your pardon, but I'm very busy at the moment.~ #63217 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,4)
~ THEN BEGIN 45 // from:
  SAY @46 /* ~With the fish-men gone, we can get back to work. That's good, I guess.~ #63218 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,5)
~ THEN BEGIN 46 // from:
  SAY @47 /* ~My back hurts. Too much lifting.~ #63219 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,6)
~ THEN BEGIN 47 // from:
  SAY @48 /* ~Why'd you have to go and get rid of the sahuagin, huh?~ #63220 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,7)
~ THEN BEGIN 48 // from:
  SAY @49 /* ~Ladle's giving out jobs left and right. Just our luck.~ #63221 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,8)
~ THEN BEGIN 49 // from:
  SAY @50 /* ~I signed up to fight, not to haul supply crates.~ #63222 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,9)
~ THEN BEGIN 50 // from:
  SAY @51 /* ~Something I can do for you?~ #63223 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,10)
~ THEN BEGIN 51 // from:
  SAY @52 /* ~I hate being underground. Can't tell noon from night down here.~ #63224 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,11)
~ THEN BEGIN 52 // from:
  SAY @53 /* ~I heard you got rid of those fishfolk without half trying. You must think you're something special. Well, guess what? You are. You're pretty special, friend.~ #63225 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,12)
~ THEN BEGIN 53 // from:
  SAY @54 /* ~You look kinda familiar. I could swear I've seen—maybe just heard about—someone that looks just like you...~ #63226 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,13)
~ THEN BEGIN 54 // from:
  SAY @55 /* ~Out of the way, please. Supplies coming through.~ #63227 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_sdd700_gf","GLOBAL",3)
AreaCheck("BD5100")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(14,14)
~ THEN BEGIN 55 // from:
  SAY @56 /* ~At least I'm not bored anymore.~ #63228 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,1)
~ THEN BEGIN 56 // from:
  SAY @57 /* ~I'm not sure you're supposed to be here.~ #63335 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,2)
~ THEN BEGIN 57 // from:
  SAY @58 /* ~Authorized personnel only beyond this point.~ #63336 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,3)
~ THEN BEGIN 58 // from:
  SAY @59 /* ~There are many dangerous creatures in these caves. Be careful.~ #63337 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,4)
~ THEN BEGIN 59 // from:
  SAY @60 /* ~We work for the glory of Caelar Argent!~ #63338 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,5)
~ THEN BEGIN 60 // from:
  SAY @61 /* ~No passage beyond this point.~ #63339 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,6)
~ THEN BEGIN 61 // from:
  SAY @62 /* ~Greetings, crusader.~ #63340 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,7)
~ THEN BEGIN 62 // from:
  SAY @63 /* ~The ogres smell terrible. I suppose we need them to raise and lower the lift, if nothing else.~ #63341 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,8)
~ THEN BEGIN 63 // from:
  SAY @64 /* ~This is a critical area. Be sure to keep intruders out.~ #63342 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,9)
~ THEN BEGIN 64 // from:
  SAY @65 /* ~I don't believe there's anything I can help you with.~ #63343 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalLT("bd_plot","GLOBAL",350)
RandomNum(10,10)
~ THEN BEGIN 65 // from:
  SAY @66 /* ~May the Lady's light shine upon you.~ #63344 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,1)
~ THEN BEGIN 66 // from:
  SAY @67 /* ~What was that?~ #63345 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,2)
~ THEN BEGIN 67 // from:
  SAY @68 /* ~I heard a commotion upstairs. Everything all right?~ #63346 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,3)
~ THEN BEGIN 68 // from:
  SAY @69 /* ~Prepare for battle—I think we might be under attack!~ #63347 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,4)
~ THEN BEGIN 69 // from:
  SAY @70 /* ~Are there intruders? We need to defend the tunnels.~ #63348 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,5)
~ THEN BEGIN 70 // from:
  SAY @71 /* ~Are you allowed in here?~ #63349 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,6)
~ THEN BEGIN 71 // from:
  SAY @58 /* ~Authorized personnel only beyond this point.~ #63350 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,7)
~ THEN BEGIN 72 // from:
  SAY @59 /* ~There are many dangerous creatures in these caves. Be careful.~ #63351 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,8)
~ THEN BEGIN 73 // from:
  SAY @72 /* ~Glory to the crusade! Victory for Caelar!~ #63352 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,9)
~ THEN BEGIN 74 // from:
  SAY @73 /* ~Something's going on above, but I don't know what.~ #63353 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,10)
~ THEN BEGIN 75 // from:
  SAY @74 /* ~I'm going to sit tight and stay quiet until I get some orders.~ #63354 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5200")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,11)
~ THEN BEGIN 76 // from:
  SAY @75 /* ~I'm waiting for someone to tell me what happened topside. That was an awful commotion.~ #63355 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,1)
~ THEN BEGIN 77 // from:
  SAY @76 /* ~Someone infiltrated our camp? Impossible!~ #63356 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,2)
~ THEN BEGIN 78 // from:
  SAY @77 /* ~Have you seen anyone suspicious around? I heard there an intruder messed up the supply chain.~ #63357 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,3)
~ THEN BEGIN 79 // from:
  SAY @78 /* ~I hear someone snuck into the depot and sabotaged our supplies.~ #63358 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,4)
~ THEN BEGIN 80 // from:
  SAY @79 /* ~Report any suspicious people to Ladle immediately!~ #63359 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,5)
~ THEN BEGIN 81 // from:
  SAY @80 /* ~This is the Waterdhavians' work, them and their lackeys. I can't wait to crush them.~ #63360 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,6)
~ THEN BEGIN 82 // from:
  SAY @81 /* ~We should retaliate—destroy the Waterdhavians' supplies!~ #63361 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,7)
~ THEN BEGIN 83 // from:
  SAY @82 /* ~It's so dark down here, I can't see my hand in front of my face.~ #63362 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,8)
~ THEN BEGIN 84 // from:
  SAY @83 /* ~Has anyone heard how much damage was done? All I heard is someone broke into the supplies and caused havoc.~ #63363 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,9)
~ THEN BEGIN 85 // from:
  SAY @84 /* ~I'm VERY intuitive. I'll know the saboteurs as soon as I see them. You're okay, though.~ #63364 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,10)
~ THEN BEGIN 86 // from:
  SAY @85 /* ~The righteous will not waver, no matter the provocation.~ #63365 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("BD5100")
GlobalGT("bd_plot","GLOBAL",349)
RandomNum(11,11)
~ THEN BEGIN 87 // from:
  SAY @86 /* ~When Caelar speaks, I obey!~ #63366 */
  IF ~~ THEN EXIT
END
