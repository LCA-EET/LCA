// creator  : weidu (version 24900)
// argument : JAHEIRAJ.DLG
// game     : .
// source   : ./override/JAHEIRAJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~JAHEIRAJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Range("DeadKhalid",20)
Global("SawKhalid","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #1035 /* ~Kha... Khalid?~ [JAHEIRC3] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1085 /* ~Khalid... No! This... this is an illusion... a dream... a bad dream...~ [JAHEIRC4] */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 2 // from: 342.0
  SAY #1090 /* ~Sil... Silvanus guide the light... to the source. Take this man to what he justly deserves. By... nature's will, what was given is returned; what was turmoil is now... is now peace.~ */
  IF ~~ THEN GOTO 343
END

IF ~~ THEN BEGIN 3 // from: 343.0
  SAY #1092 /* ~We... we must hurry before we are noticed. We must get out of this... this grave... and seek the light above. Let us go.~ */
  IF ~~ THEN REPLY #1095 /* ~There may be a way to get him returned to life. Should we not try?~ */ GOTO 219
  IF ~~ THEN REPLY #1111 /* ~Well, that was a short mourning period. I guess you weren't that close after all.~ */ GOTO 222
  IF ~~ THEN REPLY #1113 /* ~No pointless crying; we will honor him when there is time.~ */ GOTO 5
  IF ~~ THEN REPLY #1094 /* ~That's it? I certainly hope you try a little harder to rescue me if I fall.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 6.1 3.3
  SAY #1117 /* ~You will watch your tongue lest I rip it from your mouth! I, more than anyone, know of the ways life may return, but there is a line that cannot be crossed!~ */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 5 // from: 221.0 219.0 3.2
  SAY #1118 /* ~We live in a time of miracles, and nature allows the rebirth of many that have passed beyond the veil, but there is a time when... when it is better to let go. ~ */
  IF ~~ THEN REPLY #1127 /* ~Then we will not disturb his body further. We will honor his loss with future deeds.~ */ GOTO 8
  IF ~~ THEN REPLY #1128 /* ~Whatever you say, though I still think you are just giving up.~ */ GOTO 223
END

IF ~~ THEN BEGIN 6 // from: 222.0
  SAY #1119 /* ~I will mourn according to what I believe. His death... his death is horrible, but I am still trapped and we are still in danger. Should sorrow doom us all?~ */
  IF ~~ THEN REPLY #1132 /* ~Should we try to have him saved? If we are careful and bring him to a temple...~ */ GOTO 219
  IF ~~ THEN REPLY #1133 /* ~No, but I would at least try to save him. I hope you do not make a habit of this. ~ */ GOTO 4
  IF ~~ THEN REPLY #1134 /* ~I suppose not. Very well, we will honor him by bringing his killer to justice. ~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 223.0
  SAY #1136 /* ~Nature is a cycle of birth and... death. Interrupting that cycle isn't... natural! Ah, there's no time for this! I will mourn, but we must still rescue ourselves!~ */
  IF ~~ THEN REPLY #1141 /* ~As you wish, though we are obviously of different minds. Let us go.~ */ GOTO 8
  IF ~~ THEN REPLY #1142 /* ~If you would not help your husband, how are you to be trusted to help another?~ */ GOTO 10
  IF ~~ THEN REPLY #1143 /* ~You will get no further argument from me. I apologize.~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0 6.2 5.0
  SAY #1140 /* ~That is the way of things. There will be... there will be payment for this crime, and I shall not rest until it is collected. When we are able, there will be...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 11.0 8.0
  SAY #1144 /* ~Enough. I would leave this place. ~ */
  IF ~~ THEN DO ~SetGlobal("SawKhalid","AR0603",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #1147 /* ~I will not suffer this! You will learn the limits and understand, but I will not bear this idiocy now! Find your own path; I will not travel with you! ~ */
  IF ~~ THEN GOTO 527
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #1149 /* ~You will learn. There are things that cannot change, and others that cannot remain. And others...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 12 // from:
  SAY #1150 /* ~Another day! We must live to pose a bigger threat! There is no point joining the fray today; we would only end up dead or back in our cells. Another day...~ */
  IF ~~ THEN REPLY #1155 /* ~Are you afraid? I know I would be if my mate had been killed.~ */ GOTO 13
  IF ~~ THEN REPLY #1156 /* ~I couldn't agree more. Let's leave these heavy-hitters and get out of here! ~ */ GOTO 14
  IF ~~ THEN REPLY #1157 /* ~Turn and run if you will, but I am not a coward!~ */ GOTO 15
  IF ~~ THEN REPLY #1158 /* ~I agree, there is no point to a hopeless battle. We will do no good by dying.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #1152 /* ~Of course I am afraid; what fool wouldn't be? We were captured with little difficulty, held with even less, and have escaped with friends dead or wounded. ~ */
  IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #1153 /* ~We will exact vengeance when it is to our advantage. I will not start a losing battle. A guaranteed loss is a fool's endeavor. Another day... another day...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY #1159 /* ~Only an idiot is not afraid when <PRO_HESHE> should be. We were captured and held with ease! Yes, we have earned our freedom, but it was at the cost of our friends! ~ */
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #1160 /* ~Agreed. We will exact justice when we have hope of succeeding. Until then... I will not forget. Another time and place...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #1161 /* ~I know this place... these buildings. Yes, that person was assuredly correct; this is Athkatla. We are in the state of Amn. ~ [JAHEIRH3] */
  IF ~~ THEN REPLY #1164 /* ~I have no reason to doubt you. Are we far from the Sword Coast? ~ */ GOTO 18
  IF ~~ THEN REPLY #1165 /* ~You do not expect me to believe that you can tell that just by a few buildings?~ */ GOTO 226
  IF ~~ THEN REPLY #1166 /* ~I would have thought my enemies would have come from closer to home.~ */ GOTO 227
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1162 /* ~No, Athkatla is along the lower edge of the Sword Coast. I wonder whom we angered that we should be brought here? We should lay low, perhaps in the slums.~ */
  IF ~~ THEN REPLY #1170 /* ~We'll need a safe place to plan what we do next.~ */ GOTO 21
  IF ~~ THEN REPLY #1171 /* ~And how is it you know so much about this place?~ */ GOTO 22
  IF ~~ THEN REPLY #1177 /* ~Why not just leave? Why should we wait around for whoever to strike again?~ */ GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 226.0
  SAY #1163 /* ~Regardless, we will have to make sure we are out of sight for a while. I might know a few safe places here and there, by the docks or outside of town.~ */
  IF ~~ THEN REPLY #1167 /* ~I shall follow your lead. We'll need a safe place to plan what we do next.~ */ GOTO 21
  IF ~~ THEN REPLY #1168 /* ~You seem to know a lot about this place. Maybe too much. ~ */ GOTO 22
  IF ~~ THEN REPLY #1173 /* ~If we are in such danger, perhaps we should just leave.~ */ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 227.0
  SAY #1169 /* ~Whatever our enemy, we should keep low for a while. Perhaps at the docks or out of town. I might know a few places.~ */
  IF ~~ THEN REPLY #1175 /* ~Sounds like a good idea. We'll need a safe place to plan what we do next.~ */ GOTO 21
  IF ~~ THEN REPLY #1176 /* ~You seem to know this place fairly well. How do you come by this information?~ */ GOTO 22
  IF ~~ THEN REPLY #1187 /* ~Why not just get out while the getting is good?~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0 19.0 18.0
  SAY #1172 /* ~I would suggest the slums. There will be low-profile work, especially at the Copper Coronet. Someone might have heard of our capture or know where Imoen is.~ */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 22 // from: 20.1 19.1 18.1
  SAY #1174 /* ~You might have never been here, but I have. Those Who Harp tend to travel. Khalid... Khalid and I came here... well, let us just say I have been here before.~ */
  IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 23 // from: 20.2 19.2 18.2
  SAY #1186 /* ~That would solve nothing, and would abandon Imoen to her fate. No, if we were captured before, then we can be captured again, so we must secure ourselves here.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 24 // from:
  SAY #1188 /* ~I... I am sorry? Do I know you?~ [JAHEIRD5] */
  IF ~~ THEN EXTERN ~BARONP~ 1
END

IF ~~ THEN BEGIN 25 // from:
  SAY #1191 /* ~Forgive me, but I will require a little more information. Your name again?~ */
  IF ~~ THEN EXTERN ~BARONP~ 2
END

IF ~~ THEN BEGIN 26 // from:
  SAY #1193 /* ~No... no, I am terribly sorry, but your face is unfamiliar. Perhaps if you told me what you do...~ */
  IF ~~ THEN EXTERN ~BARONP~ 3
END

IF ~~ THEN BEGIN 27 // from:
  SAY #1195 /* ~I remember well, but I wanted you to say it, and I wanted others to hear. Quite the outburst, Mister Ployer. I assume you are still at odds with your new life?~ */
  IF ~~ THEN EXTERN ~BARONP~ 4
END

IF ~~ THEN BEGIN 28 // from:
  SAY #1197 /* ~MISTER Ployer, I wanted you *dead* instead of merely humiliated! The courts did not seem to think death was warranted, so they claimed your assets instead.~ */
  IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 29 // from:
  SAY #1199 /* ~He is none of your concern. If you value your teeth, you will not speak that name again. You dirty it.~ */
  IF ~~ THEN EXTERN ~BARONP~ 6
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1206 /* ~Well, the slander is going a bit far. You actually were a slaver, you know. It's not slander if it's proven.~ */
  IF ~~ THEN EXTERN ~BARONP~ 12
END

IF ~~ THEN BEGIN 31 // from:
  SAY #1209 /* ~I don't think that word means what you think it means. You really were trading in slaves, you know? How am I libelous...?~ */
  IF ~~ THEN EXTERN ~BARONP~ 8
END

IF WEIGHT #2 /* Triggers after states #: 610 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #1220 /* ~What have you just done, Ployer?! Speak!~ [JAHEIRH4] */
  IF ~~ THEN DO ~SetGlobal("JaheiraCursed","GLOBAL",2)
~ EXTERN ~BARONP~ 13
END

IF ~~ THEN BEGIN 33 // from:
  SAY #1222 /* ~Nobody made you a slaver; you just loved the profit! Now you blame those that caught you because you cannot take responsibility? You are a weak, weak man!~ */
  IF ~~ THEN EXTERN ~BARONP~ 14
END

IF WEIGHT #4 /* Triggers after states #: 610 611 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #1224 /* ~By the horns of Silvanus, I'll plant him beneath the Stones of Aisath if I... if I...~ [JAHEIRH5] */
  IF ~~ THEN REPLY #1225 /* ~Are you all right, Jaheira? You look a little peaked.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #1226 /* ~If you what? Speak up, woman, I can hardly hear you!~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #1227 /* ~Oh, quit your crying. There does not appear to be any harm done.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",3)
~ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1228 /* ~No, I... I'm fine. I just felt a little strange for a moment. That... that fat excuse for a slaver, he's cursed me! Damn him!~ */
  IF ~~ THEN REPLY #1229 /* ~What can be done? We could track him down and demand he remove it.~ */ GOTO 41
  IF ~~ THEN REPLY #1230 /* ~Well, I am sorry to hear that. I guess you'll be leaving the group then. ~ */ GOTO 40
  IF ~~ THEN REPLY #1231 /* ~This is a simple matter. We merely walk to a temple and have it removed. ~ */ GOTO 38
  IF ~~ THEN REPLY #1236 /* ~Are there Harpers that might help? I hear Elminster is a member. Honestly, with friend like that, I don't know why you even bother to walk.~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #1232 /* ~Try not to shout, please? My head is unsettled at the moment. There... it clears somewhat, but undoubtedly there will be more. That fat old slaver cursed me!~ */
  IF ~~ THEN REPLY #1233 /* ~What can be done? We could track him down and demand he remove it.~ */ GOTO 41
  IF ~~ THEN REPLY #1234 /* ~Well, I am sorry to hear that. I guess you'll be leaving the group then. ~ */ GOTO 40
  IF ~~ THEN REPLY #1235 /* ~This is a simple matter. We merely walk to a temple and have it removed. ~ */ GOTO 38
  IF ~~ THEN REPLY #1237 /* ~Are there Harpers that might help? I hear Elminster is a member. Honestly, with friend like that, I don't know why you even bother to walk.~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY #1238 /* ~For the moment, though I do feel a touch under the weather. Damn him! I'll see his slaving heart stopped for this!~ */
  IF ~~ THEN REPLY #1239 /* ~What can be done? We could track him down and demand he remove it.~ */ GOTO 41
  IF ~~ THEN REPLY #1240 /* ~Well, I am sorry to hear that. I guess you'll be leaving the group then. ~ */ GOTO 40
  IF ~~ THEN REPLY #1241 /* ~This is a simple matter. We merely walk to a temple and have it removed. ~ */ GOTO 38
  IF ~~ THEN REPLY #1242 /* ~Are there Harpers that might help? I hear Elminster is a member. Honestly, with friend like that, I don't know why you even bother to walk.~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.2 36.2 35.2
  SAY #1243 /* ~I doubt he would have bothered if the cure were quite so simple. If this curse was tailored to me, then we've no recourse but to exact its cure from his hide.~ */
  IF ~~ THEN REPLY #1272 /* ~Then we should find this Ployer immediately. Any thoughts on where to look?~ */ GOTO 42
  IF ~~ THEN REPLY #1273 /* ~We'll never find that fool in this city, assuming he's even still within it.~ */ GOTO 45
  IF ~~ THEN REPLY #1274 /* ~This may be more trouble than it's worth. I think it's better if you did this on your own.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 37.3 36.3 35.3
  SAY #1244 /* ~The Harpers do not operate like that. No, I bet only the one who cast it can remove it. It likely resists conventional means if it was tailored to me.~ */
  IF ~~ THEN REPLY #1269 /* ~Then we should find this Ployer immediately. Any thoughts on where to look?~ */ GOTO 42
  IF ~~ THEN REPLY #1270 /* ~We'll never find that fool in this city, assuming he's even still within it.~ */ GOTO 45
  IF ~~ THEN REPLY #1271 /* ~This may be more trouble than it's worth. I think it's better if you did this on your own.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 44.3 41.2 39.2 38.2 37.1 36.1 35.1
  SAY #1245 /* ~I beg your pardon? I am to be cast out because of this? What is your reasoning? ~ */
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1247 /* ~It is simple to understand. You require more maintenance than you are worth. ~ */ GOTO 46
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1248 /* ~It is simple to understand. You require more maintenance than you are worth. ~ */ GOTO 47
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1262 /* ~My apologies, I meant nothing. Simple musings. We shall find this Ployer at once.~ */ GOTO 48
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1263 /* ~My apologies, I meant nothing. Simple musings. We shall find this Ployer at once.~ */ GOTO 49
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1264 /* ~I was just suggesting an additional option. We need not follow it if there are better.~ */ GOTO 48
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1265 /* ~I was just suggesting an additional option. We need not follow it if there are better.~ */ GOTO 49
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1285 /* ~You are afflicted and no more use to me. Better you were put out of your misery.~ */ GOTO 46
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1286 /* ~You are afflicted and no more use to me. Better you were put out of your misery.~ */ GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 37.0 36.0 35.0
  SAY #1246 /* ~That may be my only option. If it was tailored to me, it might resist removal by normal means. I doubt Ployer would have done this if the solution were simple.~ */
  IF ~~ THEN REPLY #1266 /* ~Then we should find this Ployer immediately. Any thoughts on where to look?~ */ GOTO 42
  IF ~~ THEN REPLY #1267 /* ~We'll never find that fool in this city, assuming he's even still within it.~ */ GOTO 45
  IF ~~ THEN REPLY #1268 /* ~This may be more trouble than it's worth. I think it's better if you did this on your own.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 49.0 48.0 41.0 39.0 38.0
  SAY #1275 /* ~I have a few options. Ployer mentioned that he lived in squalor, suggesting he may be in the poor section of the city. Not likely to find him quick though.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 43 // from:
  SAY #1276 /* ~He also mentioned Belgrade, a merchant that helped expose Ployer. He frequents the Copper Coronet, and the bartender Bernard might know his whereabouts.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 80.0 43.0
  SAY #1277 /* ~He also mentioned Belgrade, a merchant that helped expose Ployer. He frequents the Copper Coronet, and the bartender Bernard might know his whereabouts.~ */
  IF ~~ THEN REPLY #1278 /* ~Then we shall begin searching the slums as soon as possible.~ */ UNSOLVED_JOURNAL #47971 /* ~Save Jaheira from Baron Ployer's curse

Jaheira has already begun to weaken from this curse of the baron's. She suggested three possible courses: First, that we might find the baron in the poorest section of the city (namely the slums), as he is now living in squalor. Second, that the mages who cast the spell upon her might be identified by asking around at the government building in the Government District. Third, that the bartender Bernard at the Copper Coronet in the Slums District might know something about Belgrade, a friend of hers that the baron mentioned.~ */ GOTO 50
  IF ~~ THEN REPLY #1279 /* ~To the taverns then, and we will seek out this Belgrade.~ */ UNSOLVED_JOURNAL #47971 /* ~Save Jaheira from Baron Ployer's curse

Jaheira has already begun to weaken from this curse of the baron's. She suggested three possible courses: First, that we might find the baron in the poorest section of the city (namely the slums), as he is now living in squalor. Second, that the mages who cast the spell upon her might be identified by asking around at the government building in the Government District. Third, that the bartender Bernard at the Copper Coronet in the Slums District might know something about Belgrade, a friend of hers that the baron mentioned.~ */ GOTO 51
  IF ~~ THEN REPLY #34525 /* ~To the Government District then. Some clerk will know these mages.~ */ UNSOLVED_JOURNAL #47971 /* ~Save Jaheira from Baron Ployer's curse

Jaheira has already begun to weaken from this curse of the baron's. She suggested three possible courses: First, that we might find the baron in the poorest section of the city (namely the slums), as he is now living in squalor. Second, that the mages who cast the spell upon her might be identified by asking around at the government building in the Government District. Third, that the bartender Bernard at the Copper Coronet in the Slums District might know something about Belgrade, a friend of hers that the baron mentioned.~ */ GOTO 50
  IF ~~ THEN REPLY #1281 /* ~No, I think this is more bothersome than it needs to be. The best option for me is to let you leave the group and go do this on your own. ~ */ UNSOLVED_JOURNAL #47971 /* ~Save Jaheira from Baron Ployer's curse

Jaheira has already begun to weaken from this curse of the baron's. She suggested three possible courses: First, that we might find the baron in the poorest section of the city (namely the slums), as he is now living in squalor. Second, that the mages who cast the spell upon her might be identified by asking around at the government building in the Government District. Third, that the bartender Bernard at the Copper Coronet in the Slums District might know something about Belgrade, a friend of hers that the baron mentioned.~ */ GOTO 40
END

IF ~~ THEN BEGIN 45 // from: 41.1 39.1 38.1
  SAY #1282 /* ~True, there is a lot of ground to cover, but it seemed clear that he lives in squalor. I would begin in the poor sections of the city. It will take some time.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 46 // from: 40.6 40.0
  SAY #1283 /* ~Again this side of you surfaces. I should not have believed your apologies in Irenicus's dungeon. I will not spend a... *cough*... a moment more in your company!~ */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 47 // from: 40.7 40.1
  SAY #1284 /* ~You *cough* surprise me. To think this cold streak was within and I had only glimpsed it until now. Well then, I will cause you no more inconvenience.~ */
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 48 // from: 40.4 40.2
  SAY #1287 /* ~That is not *cough* amusing, and it's not the first time you have acted such. Perhaps you are colder than you let on, but I have little choice but to follow.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 49 // from: 40.5 40.3
  SAY #1288 /* ~There is always a better path than simply abandoning those that are weak. You will not keep allies by demonstrating that you are willing to sacrifice them. ~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 50 // from: 44.2 44.0
  SAY #1289 /* ~Very well, though I should like to try and find Belgrade eventually. It has been... *cough*... it has been some time since we talked.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.1
  SAY #1290 /* ~A good first step. Hopefully he can give us some idea where Ployer might... *cough*... might be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #1291 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 291 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",4)
~ THEN BEGIN 53 // from:
  SAY #1327 /* ~Ooohhh... mm! I did not find resting at all comfortable last eve. I... *cough*... I just couldn't bring my eyes to close. My head pounds as thunder behind my temples.~ [JAHEIRH6] */
  IF ~~ THEN REPLY #1328 /* ~Are you sure you're all right? You look sore today.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",5)
~ GOTO 54
  IF ~~ THEN REPLY #1329 /* ~Perhaps we should rest a while longer; you do not seem very refreshed.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",5)
~ GOTO 55
  IF ~~ THEN REPLY #1330 /* ~Ahh, you are just lazy. The rest of us are fine, yet you complain at every step.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",5)
~ GOTO 56
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1331 /* ~I do not think this is going to work out. I cannot allow your curse to endanger me. ~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",5)
~ GOTO 57
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1336 /* ~I do not think this is going to work out. I cannot allow your curse to endanger me. ~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",5)
~ GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #1332 /* ~Aye, that I am, but well enough to walk. I will see that Ployer pay for this. Blasted slaver!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY #1333 /* ~I am rested well enough. I will not coddle this curse. Sleeping may ease the aching, but it won't help remove it. Only finding that Ployer will do that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.2
  SAY #1334 /* ~Lazy, am I? I wouldn't wish a wasting on many, but you come close. Ah, I have no time to bicker. We must continue on lest this affliction progress too far.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from: 65.0 62.1 53.3
  SAY #1335 /* ~I see. So despite assurances, you are indeed the bastard I thought you were after that stunt in Irenicus's jail. Oh, I remember, and I'll remember this too.~ */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 58 // from: 53.4
  SAY #1338 /* ~Do not joke so! I am in grave straits, and you mock my condition with talk of leaving?~ */
  IF ~~ THEN REPLY #1339 /* ~It was just idle chatter. What can I do to make you more comfortable?~ */ GOTO 59
  IF ~~ THEN REPLY #1341 /* ~I am merely stating a truth. It would be better for the group if you left.~ */ GOTO 61
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #1343 /* ~You can get me Ployer. Never have I been so mad at another living thing. All this because he could not admit responsibility. He is irredeemable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #1344 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from: 65.1 58.1
  SAY #1346 /* ~I see. Then I will waste no more of your time. I will seek help on my own, and damn you for being so cold. Farewell, <CHARNAME>. We will not meet again.~ */
  IF ~~ THEN DO ~EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #47972 /* ~Save Jaheira from Baron Ployer's curse

One of Jaheira's old enemies managed to place a curse on her that I just don't have the time to track down a cure for. I let her leave the party so that she might find a cure on her own. She was not pleased, to say the least.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 291 606 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",6)
~ THEN BEGIN 62 // from:
  SAY #1347 /* ~My very bones ache today. It is as though I age on the inside. Ohh, this cannot go on for long.~ [JAHEIRC7] */
  IF ~~ THEN REPLY #1348 /* ~We will find Baron Ployer soon enough. Try to save your strength.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",7)
~ GOTO 63
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1350 /* ~If not for the promise of combat, I would not bother looking for this "Ployer."~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",7)
~ GOTO 57
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1356 /* ~If not for the promise of combat, I would not bother looking for this "Ployer."~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",7)
~ GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #1353 /* ~Oh, I shall certainly save it. I shall save it just long enough to bring the fury of Mother Earth upon that fat slaver that would imprison her children. ~ */
  IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 64 // from:
  SAY #1355 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from: 62.2
  SAY #1358 /* ~What do you mean by that? Am I not worth the effort of rescue? Have you better things to do?~ */
  IF ~  Global("JaheiraJerk","GLOBAL",1)
~ THEN REPLY #1359 /* ~Yes, I have numerous better things to do. I will assist, but you are of little use.~ */ GOTO 57
  IF ~  Global("JaheiraJerk","GLOBAL",0)
~ THEN REPLY #1360 /* ~Yes, I have numerous better things to do. I will assist, but you are of little use.~ */ GOTO 61
  IF ~~ THEN REPLY #1361 /* ~Of course not. I merely grow frustrated at not being able to help. I apologize.~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from:
  SAY #1371 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2
  SAY #1372 /* ~Forgive my outburst as well; I am... *cough*... I am not myself. Come, we must go. I will see that slaver pay for this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #1486 /* ~Despicable... *cough* *cough*... despicable wretch! You knew I would come here?~ [JAHEIRD6] */
  IF ~~ THEN EXTERN ~BARONP~ 40
END

IF ~~ THEN BEGIN 69 // from:
  SAY #1489 /* ~I am... I am not here to grovel, Ployer. You would sooner get that from my corpse!~ */
  IF ~~ THEN EXTERN ~BARONP~ 41
END

IF ~~ THEN BEGIN 70 // from:
  SAY #1491 /* ~I— *COUGH* I AM NOT HERE TO GROVEL! I may be weak, even dying, but you WON'T get that! I have come to take what is mine! I (ehrm) will be free of you... of your...~ */
  IF ~~ THEN EXTERN ~BARONP~ 42
END

IF WEIGHT #12 /* Triggers after states #: 291 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",8)
PartyHasItem("MISC5V")
~ THEN BEGIN 71 // from:
  SAY #1508 /* ~I feel... weak, but better. I... *cough* *cough*... I thank you for helping me through this. You have earned my gratitude and... ehh... and I should really get a full day of rest. ~ [JAHEIRC8] */
  IF ~~ THEN REPLY #1510 /* ~We will get to an inn as soon as we can. With the curse gone, you should heal normally.~ */ DO ~AddexperienceParty(21250)
SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #1511 /* ~Yes, whatever you wish. Just as long as there are no more of these fools in your past.~ */ DO ~AddexperienceParty(21250)
SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 74
  IF ~~ THEN REPLY #1512 /* ~Just move. I don't want to stay still too long; who knows whom you've angered in the past?~ */ DO ~AddexperienceParty(21250)
SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.2
  SAY #1513 /* ~Ahh, yes, I'm the one with enemies we need to worry about. Do you even believe that yourself? Don't make me lau... ow... laugh.~ */
  IF ~~ THEN DO ~EraseJournalEntry(1340)
EraseJournalEntry(1349)
EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
~ SOLVED_JOURNAL #10626 /* ~Save Jaheira from Baron Ployer's curse

Baron Ployer has been killed, and found on his person was a lock of Jaheira's hair... likely tying the curse to her and preventing any simple removal. Now that we have the lock of hair in our possession, simply resting somewhere should be enough that Jaheira's curse will be finally lifted.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0
  SAY #1514 /* ~I certainly hope so. Such weakness... I swear, if I meet his like again, I'll not let the courts spare him. I'll... I'll be better after a night's rest.~ */
  IF ~~ THEN DO ~EraseJournalEntry(1340)
EraseJournalEntry(1349)
EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
~ SOLVED_JOURNAL #10626 /* ~Save Jaheira from Baron Ployer's curse

Baron Ployer has been killed, and found on his person was a lock of Jaheira's hair... likely tying the curse to her and preventing any simple removal. Now that we have the lock of hair in our possession, simply resting somewhere should be enough that Jaheira's curse will be finally lifted.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.1
  SAY #1515 /* ~Like him? No. Well, perhaps, though he was certainly one of the more wretched. I doubt we'll see any more like him, though we'll never want for enemies.~ */
  IF ~~ THEN DO ~EraseJournalEntry(1340)
EraseJournalEntry(1349)
EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
~ SOLVED_JOURNAL #10626 /* ~Save Jaheira from Baron Ployer's curse

Baron Ployer has been killed, and found on his person was a lock of Jaheira's hair... likely tying the curse to her and preventing any simple removal. Now that we have the lock of hair in our possession, simply resting somewhere should be enough that Jaheira's curse will be finally lifted.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #1516 /* ~*yawn*... I'm... I live to see the Earthmother's dawn once more? Then... then you have succeeded. Excellent. And Ployer? What of him?~ */
  IF ~~ THEN REPLY #1517 /* ~He will not bother you further, of that I am certain. Let's go.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 76
  IF ~~ THEN REPLY #1518 /* ~He is not important. Are you well enough to travel?~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 77
  IF ~~ THEN REPLY #1519 /* ~Enough of that, we've things to do and I've no more time to waste on this. Let's go.~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 78
  IF ~  Dead("Ployer")
~ THEN REPLY #1520 /* ~Dead and gone. ~ */ DO ~SetGlobal("JaheiraCursed","GLOBAL",10)
~ GOTO 79
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #1521 /* ~Indeed. I am glad to be rid of his foul curse. Odd bit of magic that. Onward then. I am fit for travel.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #1522 /* ~I am, I am. With luck, we shall not meet the like of him again. With luck.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from: 75.2
  SAY #1523 /* ~There is no need to get excited. I am sorry to have caused such trouble. I shall just die outright in the future. Do not say a word. Let us go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 75.3
  SAY #1524 /* ~Good riddance. It was years overdue. Most of his ilk in my past suffered a more final version of Harper justice. Let us go; I have sat about too long.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from: 45.0 42.0
  SAY #1525 /* ~The mages with him wore odd colors that might be traceable. Ask at the government building, as all magic is regulated in Athkatla. If they will talk...~ */
  IF ~~ THEN GOTO 44
END

IF WEIGHT #13 /* Triggers after states #: 291 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCursed","GLOBAL",7)
PartyHasItem("MISC5V")
!Dead("Ployer")
~ THEN BEGIN 81 // from:
  SAY #1653 /* ~No deals for a slayer of Harpers. ~ [JAHEIRC9] */
  IF ~~ THEN DO ~AddexperienceParty(21250)
SetGlobal("JaheiraCursed","GLOBAL",8)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #1656 /* ~I'm... I'm fine, Bernard. I just need...~ */
  IF ~~ THEN EXTERN ~BERNARD~ 16
END

IF ~~ THEN BEGIN 83 // from:
  SAY #1658 /* ~Bernard, I'm FINE. I just need... need some information. I need to find Belgrade.~ */
  IF ~~ THEN EXTERN ~BERNARD~ 17
END

IF ~~ THEN BEGIN 84 // from:
  SAY #1661 /* ~BERNARD! Bernard, this is important. I need to contact him. I know you can connect with the network when you need to, so...~ */
  IF ~~ THEN EXTERN ~BERNARD~ 18
END

IF ~~ THEN BEGIN 85 // from:
  SAY #1663 /* ~D... dead? When?~ */
  IF ~~ THEN EXTERN ~BERNARD~ 19
END

IF ~~ THEN BEGIN 86 // from:
  SAY #1665 /* ~Bernard, please. I need to know where they found Belgrade. I also need to know if you have seen Baron Ployer.~ */
  IF ~~ THEN EXTERN ~BERNARD~ 20
END

IF ~~ THEN BEGIN 87 // from:
  SAY #1667 /* ~I see... Thank you, Bernard. I... I really must be going now.~ */
  IF ~~ THEN EXTERN ~BERNARD~ 21
END

IF ~~ THEN BEGIN 88 // from:
  SAY #1689 /* ~Drenden, I... I am dying.~ */
  IF ~~ THEN EXTERN ~DRENDEN~ 7
END

IF ~~ THEN BEGIN 89 // from:
  SAY #1691 /* ~No arguments from... from me.~ */
  IF ~~ THEN EXTERN ~DRENDEN~ 8
END

IF ~~ THEN BEGIN 90 // from:
  SAY #1693 /* ~Drenden, they have done nothing to me... I am... cursed. It cannot be removed. I cannot... I feel...~ */
  IF ~~ THEN EXTERN ~DRENDEN~ 9
END

IF ~~ THEN BEGIN 91 // from:
  SAY #1695 /* ~It's... all right. Find... find Ployer and...~ */
  IF ~~ THEN EXTERN ~DRENDEN~ 10
END

IF ~~ THEN BEGIN 92 // from:
  SAY #7905 /* ~Think hard on this! This matter is near and dear my own heart, and it deserves due care and attention!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #11072 /* ~I make claim that you are an affront to all nature. You are a disruption that will not be allowed, and I will fight with the power of my faith and conviction.~ */
  IF ~~ THEN EXTERN ~CEFALDOR~ 2
END

IF ~~ THEN BEGIN 94 // from:
  SAY #11170 /* ~You will accept this challenge, and we will proceed! I will not have this place remain in your "care"! By the Great Mother, you will not leave the duel alive!~ */
  IF ~~ THEN EXTERN ~CEFALDOR~ 12
END

IF ~~ THEN BEGIN 95 // from:
  SAY #14221 /* ~Thank you, child. Surely you have better things to be about, however, so begone.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #14332 /* ~What is this "clap" you speak of, child? Enough. Begone, you are disturbing me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #14981 /* ~I can speak for myself, human. And I can assure you that I am not "available," as you put it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #16092 /* ~Do I know of you? Have you reason to subject me to your rude manner? I have no coin, if that is your wish.~ */
  IF ~~ THEN EXTERN ~JAMERONI~ 1
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16093 /* ~I do not follow by a stranger's command. Who are you?~ */
  IF ~~ THEN EXTERN ~JAMERONI~ 2
END

IF ~~ THEN BEGIN 100 // from:
  SAY #16095 /* ~I... Yes, I see. If you would give me a moment, I will do what needs be done.~ */
  IF ~~ THEN EXTERN ~JAMERONI~ 3
END

IF ~~ THEN BEGIN 101 // from:
  SAY #16097 /* ~Relax, <CHARNAME>, I will not be gone long. Please, I will explain when I return. I... I do not wish to be apart from you too long. I will return when I can.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
ActionOverride("Meronia",EscapeArea())
~ UNSOLVED_JOURNAL #4838 /* ~Summoned to the Harper Hold

Another Harper named Meronia appeared and bid Jaheira to follow her. I have misgivings of what may come of this, although Jaheira has assured me that she will not be gone long.~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #16098 /* ~Try not to worry, <CHARNAME>, I can take care of myself. I will return as soon as possible. I have obligations elsewhere that must be attended to.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
ActionOverride("Meronia",EscapeArea())
~ UNSOLVED_JOURNAL #4838 /* ~Summoned to the Harper Hold

Another Harper named Meronia appeared and bid Jaheira to follow her. I have misgivings of what may come of this, although Jaheira has assured me that she will not be gone long.~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #16099 /* ~I have obligations elsewhere. Worry not, I will return shortly. You will survive without me for a time.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
ActionOverride("Meronia",EscapeArea())
~ UNSOLVED_JOURNAL #4838 /* ~Summoned to the Harper Hold

Another Harper named Meronia appeared and bid Jaheira to follow her. I have misgivings of what may come of this, although Jaheira has assured me that she will not be gone long.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #16150 /* ~No one is disputing that, but I do have obligations outside the group. I will return when I am able.~ */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
ActionOverride("Meronia",EscapeArea())
~ UNSOLVED_JOURNAL #4838 /* ~Summoned to the Harper Hold

Another Harper named Meronia appeared and bid Jaheira to follow her. I have misgivings of what may come of this, although Jaheira has assured me that she will not be gone long.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 197 198 200 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("ReturnToHarpers","LOCALS",1)
!Dead("Galvarey")
~ THEN BEGIN 105 // from:
  SAY #16433 /* ~Remember your obligations elsewhere, <CHARNAME>. We have to go to the Harper Hold in Athkatla as soon as possible. It would not be good to keep them waiting too long.~ */
  IF ~~ THEN DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
SetGlobalTimer("HarperHold","LOCALS",TWO_DAYS)
~ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 197 198 200 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("ReturnToHarpers","LOCALS",3)
!Dead("Galvarey")
~ THEN BEGIN 106 // from:
  SAY #16434 /* ~We should make our way to the Harper Hold in Athkatla as soon as we are able. I do not look forward to the trip any more than you do, but we must. ~ */
  IF ~~ THEN DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
SetGlobalTimer("HarperHold","LOCALS",TWO_DAYS)
~ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 197 198 200 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("ReturnToHarpers","LOCALS",5)
!Dead("Galvarey")
~ THEN BEGIN 107 // from:
  SAY #16436 /* ~Please, it is very important that we go to the Harper Hold in Athkatla. They were very insistent that I bring you there, and we must go soon.~ */
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
~ THEN REPLY #16437 /* ~If you are so eager to take me there, why have you not left my company? ~ */ DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
~ GOTO 108
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN REPLY #16438 /* ~Why have you not left without me? Perhaps you value my company more than others? ~ */ DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
~ GOTO 109
  IF ~~ THEN REPLY #16439 /* ~I will go when I wish; they can wait. Where is their legendary Harper patience?~ */ DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
~ GOTO 110
  IF ~~ THEN REPLY #16447 /* ~I have no intention of going. What can they offer me, save trouble?~ */ DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
~ GOTO 111
  IF ~~ THEN REPLY #16459 /* ~I have received nothing but cold treatment from them, and I have no intention of returning.~ */ DO ~IncrementGlobal("ReturnToHarpers","LOCALS",1)
~ GOTO 111
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #16577 /* ~I am a Harper in my heart; you know this. It is my duty to bring you to them, but... but I no more want to make the trip than you do. Nevertheless, we must go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from: 107.1
  SAY #16579 /* ~Very true, <CHARNAME>, but I am a Harper, as you know. They ask that I bring you. I will not make you go, and I will not leave you, but eventually we must.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 110 // from: 107.2
  SAY #16580 /* ~Harpers will wait an eternity for vengeance or justice, though defining the two is sometimes difficult. They made it clear I was to bring you to them. ~ */
  IF ~~ THEN GOTO 525
END

IF ~~ THEN BEGIN 111 // from: 107.4 107.3
  SAY #16583 /* ~Please, do not make this difficult. I have a duty to take you, and I will not rest easy until we have gone. I will not force you, but eventually we must go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #16764 /* ~Your welcome is forced, Galvarey. You know I am here at the bidding of the Herald. Why have you come to greet me? This is too important to waste time on you.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 1
END

IF ~~ THEN BEGIN 113 // from:
  SAY #16795 /* ~You! You are no Herald! What is going on here?~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 2
END

IF ~~ THEN BEGIN 114 // from:
  SAY #16803 /* ~I know you are an ambitious fool. You cannot be sanctioned to do this. Even this gaudy base is against our usual restraint. The position of Herald requires...~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 3
END

IF ~~ THEN BEGIN 115 // from:
  SAY #16810 /* ~Fine, set about with your questions so I can get on with my job as well.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 4
END

IF ~~ THEN BEGIN 116 // from:
  SAY #16835 /* ~<CHARNAME>! Please.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 5
END

IF ~~ THEN BEGIN 117 // from:
  SAY #16838 /* ~Galvarey, siblings we are in Harper blood, but if you do not cease your tongue, I shall remove it!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 6
END

IF ~~ THEN BEGIN 118 // from:
  SAY #17017 /* ~Mind yourself, <CHARNAME>, this is very serious.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 10
END

IF ~~ THEN BEGIN 119 // from:
  SAY #17060 /* ~Please, <CHARNAME>, do not make this difficult for yourself.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 15
END

IF ~~ THEN BEGIN 120 // from:
  SAY #17086 /* ~You are twisting <PRO_HISHER> words, Galvarey. That is not what <PRO_HESHE> meant.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 22
END

IF ~~ THEN BEGIN 121 // from:
  SAY #17090 /* ~Why do you ask the question if you are going to infuse the answer with your own meaning? <CHARNAME> would never...~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 20
END

IF ~~ THEN BEGIN 122 // from:
  SAY #17094 /* ~Only in your mind. This is a farce!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 21
END

IF ~~ THEN BEGIN 123 // from:
  SAY #17177 /* ~This is a difficult situation! Would you react any different?~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 26
END

IF ~~ THEN BEGIN 124 // from:
  SAY #17216 /* ~What has *that* to do with anything?!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 27
END

IF ~~ THEN BEGIN 125 // from:
  SAY #17325 /* ~And also the sky, or the ocean! You are so intent on seeing what you wish the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 126 // from:
  SAY #17337 /* ~And also of apples, or the rose! You are so intent on seeing what you wish the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 127 // from:
  SAY #17341 /* ~And also of the sun above, or the daisy! You are so intent on seeing what you wish the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 128 // from:
  SAY #17343 /* ~And also of the grass, or the leaves in the trees! You are so intent on seeing what you wish the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 129 // from:
  SAY #17345 /* ~And also of the night sky, or the coat of a fine steed! You are so intent on seeing what you wish the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 130 // from:
  SAY #17350 /* ~Now you are really stretching! What of clouds that bring life to the soil, or the purity of undyed wool?! You see what you wish; the answer does not matter!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 34
END

IF ~~ THEN BEGIN 131 // from:
  SAY #17433 /* ~Thank you, but no. Tonight I am fine as I am.~ */
  IF ~~ THEN EXTERN ~BERNARD~ 24
END

IF ~~ THEN BEGIN 132 // from:
  SAY #17441 /* ~But you were to see <CHARNAME> as <PRO_HESHE> is, not as you expected <PRO_HIMHER> to be! I was to bring <PRO_HIMHER> here so...~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 35
END

IF ~~ THEN BEGIN 133 // from:
  SAY #17449 /* ~I am sorry, <CHARNAME>, this was not my intent at all! I thought...~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 36
END

IF ~~ THEN BEGIN 134 // from:
  SAY #17450 /* ~Indeed, Galvarey, what is it you intend? This is not as we had discussed...~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 39
END

IF ~~ THEN BEGIN 135 // from:
  SAY #17452 /* ~My... what?! You are questioning me?! You subject him to this... this witch hunt and you think I am the one that is to be questioned?~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 37
END

IF ~~ THEN BEGIN 136 // from:
  SAY #17454 /* ~And what if <PRO_HESHE> will restore the balance? What if <PRO_HISHER> intent is good?~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 38
END

IF ~~ THEN BEGIN 137 // from:
  SAY #17457 /* ~As Harpers, we respect others!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 40
END

IF ~~ THEN BEGIN 138 // from:
  SAY #17459 /* ~It is as good as death and you know it, Galvarey!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 41
END

IF ~~ THEN BEGIN 139 // from:
  SAY #17469 /* ~Nay, Galvarey, there is but you and your four lackeys. I will have no part in this!~ */
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN GOTO 140
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
ReputationGT(Player1,6)
~ THEN GOTO 144
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
ReputationLT(Player1,7)
~ THEN GOTO 145
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #17472 /* ~<CHARNAME>, I... I will stand by your side if you will have me. You are... you are better than this, I know. I...~ */
  IF ~~ THEN REPLY #17473 /* ~You got me into this mess. I wouldn't trust you as far as I could throw you! ~ */ GOTO 141
  IF ~~ THEN REPLY #17474 /* ~I had hoped... I had hoped you would, but I do not wish you to harm your friends.~ */ GOTO 142
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #17475 /* ~So... so be it, then. I will... I must not... I will have no part in either side of this!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 44
END

IF ~~ THEN BEGIN 142 // from: 140.1
  SAY #17477 /* ~These are no friends of mine! I do not recognize them! ~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #17479 /* ~Harpers may interfere, but it is for the greater good! Not this! I don't know you!~ */
  IF ~~ THEN DO ~EraseJournalEntry(4838)
EraseJournalEntry(4840)
EraseJournalEntry(4841)
EraseJournalEntry(47980)
SetGlobal("HarperFight","GLOBAL",1)
SetGlobal("JaheiraTraitor","GLOBAL",1)
~ SOLVED_JOURNAL #47981 /* ~Summoned to the Harper Hold

I presented myself before the Harpers at their base and discovered that I was there only to bolster the ambitions of a man by the name of Galvarey. Imprisoning the "child of Bhaal" to restore the balance, as he claimed, would improve his position amongst the Harpers and bolster his chance of obtaining the position of Herald.

Jaheira had apparently brought me there to show Galvarey my true nature, but the decision had obviously already been made. Jaheira fought with me against the Harpers, disgusted by their treatment of me and becoming a traitor to her own kind... and now Galvarey is dead, his petty ambitions along with him.~ */ EXIT
END

IF ~~ THEN BEGIN 144 // from: 139.1
  SAY #17480 /* ~<CHARNAME>, you are my comrade in arms. I know you are good and true in heart. I will fight with you against this!~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 45
END

IF ~~ THEN BEGIN 145 // from: 139.2
  SAY #17481 /* ~<CHARNAME>, I am Harper. I cannot fight by your side against my own, but I will not take part in this! I... I cannot side with either. Goodbye.~ */
  IF ~~ THEN EXTERN ~JAGALVAR~ 46
END

IF ~~ THEN BEGIN 146 // from:
  SAY #17795 /* ~What is this? Reviane! What are you doing here? It is I, Jaheira!~ [JAHEIR96] */
  IF ~~ THEN EXTERN ~JAREVIA~ 1
END

IF ~~ THEN BEGIN 147 // from:
  SAY #17798 /* ~What? If this is about the attack at the Harper Hold, you know I would not do such a thing if I had any alternative! They left me no choice!~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 2
END

IF ~~ THEN BEGIN 148 // from:
  SAY #17800 /* ~It was Galvarey; he had me bring my companion there on the pretense of determining <PRO_HISHER> danger, but he had no intention of letting <CHARNAME> leave once there.~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 3
END

IF ~~ THEN BEGIN 149 // from:
  SAY #17807 /* ~Bah! He was a fool bent on advancing his own station! His intent was to use <CHARNAME> as a trophy, hoping to gain enough influence to become a Herald!~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 4
END

IF ~~ THEN BEGIN 150 // from:
  SAY #17819 /* ~As you wish. Reviane, <CHARNAME> is of interest because <PRO_HESHE> is one of the Children. Galvarey wished to capitalize on the fear around the prophecies of old.~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 5
END

IF ~~ THEN BEGIN 151 // from:
  SAY #17825 /* ~If that is your wish, <CHARNAME>. Reviane, suffice to say that Galvarey had an unhealthy interest in my compatriot. You must trust me in this matter.~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 6
END

IF ~~ THEN BEGIN 152 // from:
  SAY #17826 /* ~<CHARNAME> has proven that <PRO_HESHE> is not a slave to <PRO_HISHER> origins, just as Galvarey proved that calling oneself a Harper is not enough to make you one in your heart.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #17831 /* ~You must do as you will, Reviane. I have told you my circumstance; there is little more for me to say.~ */
  IF ~~ THEN REPLY #17832 /* ~I will stand by you in this, Jaheira. We should attack and get the upper hand. ~ */ GOTO 154
  IF ~~ THEN REPLY #17833 /* ~Stand down your weapons, Jaheira. We need not shed any blood here today. ~ */ GOTO 155
END

IF ~~ THEN BEGIN 154 // from: 153.0
  SAY #17840 /* ~If you attack, you are no better than Galvarey. I will meet your threats with whatever force that I can! Do not do this. Harpers seek the truth...~ */
  IF ~~ THEN EXTERN ~JAREVIA~ 7
END

IF ~~ THEN BEGIN 155 // from: 153.1
  SAY #17846 /* ~I will not draw arms against you, Reviane. This has been a huge mistake, and I will not be party to making another.~ */
  IF ~  ReputationGT(Player1,15)
~ THEN EXTERN ~JAREVIA~ 8
  IF ~  ReputationLT(Player1,16)
~ THEN EXTERN ~JAREVIA~ 9
END

IF ~~ THEN BEGIN 156 // from:
  SAY #17882 /* ~As am I, Reviane.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 197 198 200 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("DerminSpawn","GLOBAL",2)
~ THEN BEGIN 157 // from:
  SAY #18237 /* ~Der... Dermin? Is that you? It has been some time.~ [JAHEIRA1] */
  IF ~~ THEN DO ~SetGlobal("DerminSpawn","GLOBAL",3)
~ EXTERN ~JADERMIN~ 0
END

IF ~~ THEN BEGIN 158 // from:
  SAY #18238 /* ~What is the matter, Dermin? You would not have let me walk on by, would you? I know we did not always see eye to eye, but I assure you, the respect...~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 1
END

IF ~~ THEN BEGIN 159 // from:
  SAY #18240 /* ~Of... of course, you were the one that introduced me to the Harpers. ~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 2
END

IF ~~ THEN BEGIN 160 // from:
  SAY #18242 /* ~What... what are you getting at, Dermin?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 3
END

IF ~~ THEN BEGIN 161 // from:
  SAY #18325 /* ~I see. And what power has decided that I should be killed? I serve nature and protect the good of the land through my work as a Harper. Who have I offended?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 4
END

IF ~~ THEN BEGIN 162 // from:
  SAY #18488 /* ~I have washed my hands of the incident in the Harper Hold. Galvarey was in the wrong and brought his fate upon himself. ~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 5
END

IF ~~ THEN BEGIN 163 // from:
  SAY #18490 /* ~He was in the wrong! Of that I am certain! Galvarey sought to imprison <CHARNAME> for his own gain, and I took the side of right. I could do no other!~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 6
END

IF ~~ THEN BEGIN 164 // from:
  SAY #18493 /* ~This is wrong, Dermin. This is not the right solution.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 7
END

IF ~~ THEN BEGIN 165 // from: 171.0
  SAY #18500 /* ~Dermin... I...~ */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #18501 /* ~Dermin, I cannot do as you ask. You are in the wrong, as was Galvarey. I was right to choose <CHARNAME>'s side, and it is your loss if you cannot see this.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 8
END

IF ~~ THEN BEGIN 167 // from:
  SAY #18503 /* ~This is not justice. This is revenge for a lie, a falsehood that none seem bothered to find the truth behind. If this is Harper justice, then I...~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 9
END

IF ~~ THEN BEGIN 168 // from:
  SAY #18505 /* ~If this is the justice you represent, then I... I renounce you. I renounce... I renounce my life as a Harper.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 10
END

IF ~~ THEN BEGIN 169 // from:
  SAY #18507 /* ~It would seem I am the only one that has thought any of this through. You do not, Galvarey did not, and now the Harpers out for blood do not. ~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY #18508 /* ~I mourn many fellows of the Harp, but they died fighting for balance and truth. Galvarey did not, and this matter cheapens their loss. I will not be party to it.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 14
END

IF ~~ THEN BEGIN 171 // from:
  SAY #18518 /* ~It is their... it is my duty to "meddle," <CHARNAME>. It is only this instance where they are wrong. I cannot go along with this.~ */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 172 // from:
  SAY #18527 /* ~<CHARNAME>, you... you do not trust my judgment either? I have stood by you through the mistakes of my own kind, and you still keep your guard around me?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 11
END

IF ~~ THEN BEGIN 173 // from:
  SAY #18532 /* ~No... no... I do not think it is. You are advocating revenge without thought. You are not giving the balance its due. I... I have little choice here, I think.~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #18534 /* ~Dermin... Dermin, I renounce my life as a Harper. ~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 12
END

IF ~~ THEN BEGIN 175 // from:
  SAY #18536 /* ~You are right, of course, and <PRO_HESHE> has proven it. No, I think it best if I return to tending the balance with my druidic brethren.~ */
  IF ~~ THEN GOTO 526
END

IF ~~ THEN BEGIN 176 // from:
  SAY #18538 /* ~That it is. <CHARNAME>, I know you will not upset the balance, but if you change, we will meet again. I will not be happy if you cheapen my choice here today.~ */
  IF ~~ THEN DO ~ActionOverride("Dermin",EscapeArea())
SetGlobal("JaheiraAbandoned","GLOBAL",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ SOLVED_JOURNAL #16556 /* ~Jaheira renounces her Harper status

We have met with yet another Harper... this one, apparently, a former tutor of Jaheira's by the name of Dermin. He told Jaheira that he was sent to execute her for the deaths at the Harper Hold, and while he did not attack, Jaheira renounced her life as a Harper.

But as I had urged her on to this path, she felt that I did not trust her judgment any more than the Harpers, and so she has left the group. I fear she is gone for good.~ */ EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #18546 /* ~It shall not be peaceful, but it is clearer than the course you are on. Goodbye, Dermin.~ */
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
~ THEN REPLY #18547 /* ~Are you certain of this? I did not want to be a burden, Jaheira.~ */ GOTO 178
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
~ THEN REPLY #18548 /* ~You have a place here, Jaheira, regardless of this mess. ~ */ GOTO 179
  IF ~~ THEN REPLY #18549 /* ~Well, now that this bit of garbage is over, we can get back to what's important.~ */ GOTO 180
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN REPLY #18553 /* ~Are you certain of this, Jaheira? I did not want to be a burden.~ */ GOTO 182
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN REPLY #18554 /* ~You have a place here, Jaheira, regardless of this mess. ~ */ GOTO 184
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #18498 /* ~Do not concern yourself. This was the only course open, even if... I... I wish to not talk of this. This matter is... is behind me. Onward, we have much to do.~ */
  IF ~~ THEN DO ~ActionOverride("Dermin",EscapeArea())
SetGlobal("JaheiraNotHarper","GLOBAL",1)
~ SOLVED_JOURNAL #47983 /* ~Jaheira renounces her Harper status

We have met with yet another Harper... this one, apparently, a former tutor of Jaheira's by the name of Dermin. He told Jaheira that he was sent to execute her for the deaths at the Harper Hold, and while he did not attack, Jaheira renounced her life as a Harper in anger over the injustice.~ */ EXIT
END

IF ~~ THEN BEGIN 179 // from: 177.1
  SAY #18499 /* ~I thank you, <CHARNAME>, but part of me is gone. I... I will speak no more of this. This is behind me. I must go forward. Come, we have friends to avenge.~ */
  IF ~~ THEN DO ~ActionOverride("Dermin",EscapeArea())
SetGlobal("JaheiraNotHarper","GLOBAL",1)
~ SOLVED_JOURNAL #47983 /* ~Jaheira renounces her Harper status

We have met with yet another Harper... this one, apparently, a former tutor of Jaheira's by the name of Dermin. He told Jaheira that he was sent to execute her for the deaths at the Harper Hold, and while he did not attack, Jaheira renounced her life as a Harper in anger over the injustice.~ */ EXIT
END

IF ~~ THEN BEGIN 180 // from: 177.2
  SAY #18551 /* ~Garbage?! Do you comprehend the magnitude of what I have done?! Do you see... what... no, I will not cheapen this moment by arguing with you. ~ */
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #18552 /* ~<CHARNAME>, find your own way. See to it that you continue the course we began. Do not make a liar of me, or we will meet again under violent circumstances.~ */
  IF ~~ THEN DO ~ActionOverride("Dermin",EscapeArea())
SetGlobal("JaheiraAbandoned","GLOBAL",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ JOURNAL #47984 /* ~Jaheira renounces her Harper status

We have met with yet another Harper... this one, apparently, a former tutor of Jaheira's by the name of Dermin. He told Jaheira that he was sent to execute her for the deaths at the Harper Hold, and while he did not attack, Jaheira renounced her life as a Harper in anger over the injustice of it all. She was so wrapped up in the gravity of her decision that she blew up when I urged us to continue on and left for good. Perhaps just as well, considering all the trouble she brought me.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from: 177.3
  SAY #18555 /* ~You are no burden, <CHARNAME>; you are why I go on. I have friends to avenge, but life is also for the living. My life is worth pursuing. I... I hope you agree.~ */
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183 // from: 184.0 182.0
  SAY #18556 /* ~Come, enough sadness for the day. We have much to do, and... and together we will not fail.~ */
  IF ~~ THEN DO ~ActionOverride("Dermin",EscapeArea())
SetGlobal("JaheiraNotHarper","GLOBAL",1)
~ SOLVED_JOURNAL #47983 /* ~Jaheira renounces her Harper status

We have met with yet another Harper... this one, apparently, a former tutor of Jaheira's by the name of Dermin. He told Jaheira that he was sent to execute her for the deaths at the Harper Hold, and while he did not attack, Jaheira renounced her life as a Harper in anger over the injustice.~ */ EXIT
END

IF ~~ THEN BEGIN 184 // from: 177.4
  SAY #18557 /* ~I take strength from the group, but... more so in your company. I have friends to avenge, but life is also for the living. Life is worth pursuing. I... I hope you agree.~ */
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 185 // from:
  SAY #18637 /* ~But... what? ~ */
  IF ~~ THEN EXTERN ~BERNARD~ 29
END

IF ~~ THEN BEGIN 186 // from:
  SAY #18639 /* ~Not the way they tell it, Bernard. You know me, so trust in what I do.~ */
  IF ~~ THEN EXTERN ~BERNARD~ 30
END

IF ~~ THEN BEGIN 187 // from:
  SAY #19435 /* ~Do... I know you? I... Your voice is familiar, but I cannot place your face.~ [JAHEIRC2] */
  IF ~~ THEN EXTERN ~JATERMIN~ 1
END

IF ~~ THEN BEGIN 188 // from:
  SAY #19437 /* ~We met among the Harpers, did we not? I am through with them. Many a decent person I met, but damned if I'll be crucified for the failures of their own.~ */
  IF ~~ THEN EXTERN ~JATERMIN~ 2
END

IF ~~ THEN BEGIN 189 // from:
  SAY #19455 /* ~Then do so. I wish this matter behind me once and for all.~ */
  IF ~~ THEN EXTERN ~JATERMIN~ 3
END

IF ~~ THEN BEGIN 190 // from:
  SAY #19689 /* ~Ah... I...~ [JAHEIRD8] */
  IF ~~ THEN EXTERN ~JATERMIN~ 8
END

IF ~~ THEN BEGIN 191 // from:
  SAY #19699 /* ~I... I don't know.~ */
  IF ~~ THEN EXTERN ~JATERMIN~ 9
END

IF ~~ THEN BEGIN 192 // from:
  SAY #19717 /* ~Undoubtedly. I would do as such again without hesitation. <CHARNAME> is proven decent, and others are all the more fools for not seeing so.~ [JAHEIRD9] */
  IF ~~ THEN EXTERN ~JATERMIN~ 11
END

IF ~~ THEN BEGIN 193 // from:
  SAY #19736 /* ~I... I believe I have placed a proper name to your manner, now that I have experienced it up close. I should have thought you fond of anagrams, "Terminsel."~ */
  IF ~~ THEN EXTERN ~JATERMIN~ 13
END

IF ~~ THEN BEGIN 194 // from:
  SAY #20543 /* ~Don't make deals with this scum! He won't keep his—mmmph!~ */
  IF ~~ THEN EXTERN ~JAERTOF~ 9
END

IF ~~ THEN BEGIN 195 // from:
  SAY #20551 /* ~You lying son of a mMMPH!~ */
  IF ~~ THEN EXTERN ~JAERTOF~ 12
END

IF ~~ THEN BEGIN 196 // from:
  SAY #20553 /* ~Fight as best you can, <CHARNAME>—I am free of him!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 291 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraBanditPlot","GLOBAL",3)
~ THEN BEGIN 197 // from:
  SAY #20555 /* ~Gllgghh!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",4)
~ EXTERN ~JAERTOF~ 14
END

IF WEIGHT #15 /* Triggers after states #: 291 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraBanditPlot","GLOBAL",5)
~ THEN BEGIN 198 // from:
  SAY #20558 /* ~No! Blast you filthy bogslimes! Not again!~ [JAHEIR90] */
  IF ~~ THEN DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",6)
~ EXTERN ~JAERTOF~ 16
END

IF ~~ THEN BEGIN 199 // from:
  SAY #20561 /* ~Oh for crying at the moon, don't prostrate yourself before this weasel. That's all I'm going to stand!~ */
  IF ~~ THEN EXTERN ~JAERTOF~ 18
END

IF WEIGHT #16 /* Triggers after states #: 291 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraBanditPlot","GLOBAL",7)
~ THEN BEGIN 200 // from:
  SAY #20563 /* ~Fight! I am free of him!~ [JAHEIR91] */
  IF ~~ THEN DO ~SetGlobal("JaheiraBanditPlot","GLOBAL",8)
SetGlobal("BanditsWuss","GLOBAL",1)
~ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("BanditsSlit","GLOBAL",1)
GlobalLT("JaheiraBanditPlot","GLOBAL",9)
~ THEN BEGIN 201 // from:
  SAY #20564 /* ~You... you...~ [JAHEIR86] */
  IF ~~ THEN REPLY #20571 /* ~Now, Jaheira, no need to thank me.~ */ GOTO 205
  IF ~~ THEN REPLY #20572 /* ~Are you all right? I tried as best I could to get you free.~ */ GOTO 205
  IF ~~ THEN REPLY #20573 /* ~Well, that was quite the fun, wasn't it?~ */ GOTO 205
END

IF WEIGHT #27 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("BanditsStole","GLOBAL",1)
GlobalLT("JaheiraBanditPlot","GLOBAL",9)
~ THEN BEGIN 202 // from:
  SAY #20565 /* ~You... you were pretty quick to give up your equipment. ~ [JAHEIR87] */
  IF ~~ THEN REPLY #20594 /* ~It's all replaceable—everything except you.~ */ GOTO 212
  IF ~~ THEN REPLY #20595 /* ~Material things; there are always more. I've gotten by with less. People are harder to replace, some more than others.~ */ GOTO 212
  IF ~~ THEN REPLY #20596 /* ~Ahh, it's all just baggage. I couldn't carry it all without you anyway. ~ */ GOTO 212
END

IF WEIGHT #28 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("BanditsSacrifice","GLOBAL",1)
GlobalLT("JaheiraBanditPlot","GLOBAL",9)
~ THEN BEGIN 203 // from:
  SAY #20566 /* ~Are... are you all right? ~ [JAHEIR88] */
  IF ~~ THEN REPLY #20582 /* ~I was more worried about you. I'm a little sore, but I'll be all right.~ */ GOTO 208
  IF ~~ THEN REPLY #20583 /* ~Just a scratch or two here and there. Nothing a day or two of rest won't cure.~ */ GOTO 208
  IF ~~ THEN REPLY #20584 /* ~I... I think so. Rather a close call there. ~ */ GOTO 208
END

IF WEIGHT #29 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("BanditsWuss","GLOBAL",1)
GlobalLT("JaheiraBanditPlot","GLOBAL",9)
~ THEN BEGIN 204 // from:
  SAY #20567 /* ~Well, that was the most stunning display of bravado I have ever had the pleasure of seeing. Could you possibly have stooped any lower?~ [JAHEIR89] */
  IF ~~ THEN REPLY #20576 /* ~It was all a ruse. I just played the ineffectual coward to throw him off. Yeah, that's it.~ */ GOTO 207
  IF ~~ THEN REPLY #20577 /* ~I couldn't lose my stuff, and I couldn't let him hurt you. Groveling was the only way.~ */ GOTO 207
  IF ~~ THEN REPLY #20578 /* ~Ahh, stow it. Everything worked out in the end.~ */ GOTO 207
END

IF ~~ THEN BEGIN 205 // from: 201.2 201.1 201.0
  SAY #20574 /* ~You IDIOT! Do you realize how easily he could have killed me?! That was the most irresponsible thing I have EVER had the misfortune of seeing!~ */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY #20575 /* ~Rest assured I'll not forget that! It's a wonder my head is still attached, or that yours ever was! Stand well back of me; I'm doubly careful from now on!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 207 // from: 204.2 204.1 204.0
  SAY #20581 /* ~Regardless, I had thought you made of sterner mettle. I was mistaken, and will not expect as such from ye again.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 208 // from: 203.2 203.1 203.0
  SAY #20585 /* ~Good, I am so glad... you IDIOT! What were you thinking?! You could have been killed! An arrow can pierce the heart or the eyes while you stand like a pincushion!~ */
  IF ~~ THEN REPLY #20586 /* ~It was a risk I had to take. I couldn't let him hurt you.~ */ GOTO 209
  IF ~~ THEN REPLY #20587 /* ~I... I suppose. I didn't think about it at the time. I just wanted you safe.~ */ GOTO 209
  IF ~~ THEN REPLY #20588 /* ~I thought he was bluffing, but I would rather risk myself than you on such a bet.~ */ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.2 208.1 208.0
  SAY #20589 /* ~Don't you EVER do something that stupid again, you hear me? Not in a thousand seasons! I lost... I lost...~ */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 212.0 209.0
  SAY #20590 /* ~*ahem*... I lost Khalid... to a pointless death. I'm not going... to lose you too.~ */
  IF ~~ THEN REPLY #20591 /* ~Jaheira? Jaheira, I...~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #20592 /* ~Oh, shut up and let's get out of here. We'll... we'll talk later.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 212 // from: 202.2 202.1 202.0
  SAY #20598 /* ~Regardless, I really appreciate what you did... what you tried to do. I was worried that I was... I mean, I've already lost... um...~ */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 213 // from:
  SAY #20813 /* ~This is... most disturbing, <CHARNAME>. Nature itself curls back from this vileness. Something must be done!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 214 // from:
  SAY #21397 /* ~You'll keep your hands to yourself, lowly one, or have them cut off!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 215 // from:
  SAY #21778 /* ~Do not test me, rogue. I have not the patience for it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 216 // from:
  SAY #22450 /* ~You should go then, small one. The world is as easily accessible to you as one foot placed in front of the other.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #22512 /* ~You should rub your drunken eyes, then, human sailor. And then avert them, for you are close to offending me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 218 // from:
  SAY #23696 /* ~I would sooner jump into a whirlpool than to sit here for endless hours, as you must surely do.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 219 // from: 6.0 4.0 3.0
  SAY #14683 /* ~He... Khalid... is dead, and has been so for some time! Beyond a point, there can be no raising, especially when the body has been... has been desecrated!~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 220 // from:
  SAY #14685 /* ~Yes, there are greater spells that raise even the aged dead, but they leech from the caster, and I will not ask that of someone! Khalid would not have it!~ */
  IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #14687 /* ~We live in a time of miracles, and nature allows the rebirth of many that have passed beyond the vale, but there is a time when... when it is better to let go.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 222 // from: 3.1
  SAY #14691 /* ~You will not speak ill of my life with Khalid! I will answer such insults with lethal intent, and rightfully so! You cannot know... you cannot!~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 223 // from: 5.1
  SAY #14695 /* ~Your opinion is of a fool that thinks magic and spells are the ultimate forces that shape our lives! You will learn that some... some things are unalterable!~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 224 // from: 13.0
  SAY #14696 /* ~We cannot prevail here; best we leave until we can. Another day, another place; there will be righteous vengeance, but in its own time. Oh yes... in time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 225 // from: 15.0
  SAY #14698 /* ~I doubt we would have come this far if a battle were not distracting our host! We will exact punishment when we can; there is no point in dying here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 226 // from: 17.1
  SAY #14699 /* ~I expect less of you with each utterance. I have said what I know, and you can take it or leave it. Ask around and you will know I speak the truth.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 227 // from: 17.2
  SAY #14700 /* ~I was wondering the same, though we are not all that far from home and organizations can span continents. Perhaps it is not an individual that seeks our heads.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 228 // from: 22.0
  SAY #14706 /* ~I do not know the city well enough to give directions though. We will have to seek out the slums. Perhaps we may find who holds Imoen still.~ */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 229 // from: 23.0
  SAY #14715 /* ~Perhaps in the slums, we will find who planned this, or who has Imoen still. I have heard that the Copper Coronet is a good place to find information.~ */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 230 // from:
  SAY #24798 /* ~Do you also find sensual my disdain for your disgusting manner?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 7
END

IF ~~ THEN BEGIN 231 // from:
  SAY #24802 /* ~I could set you on fire with more than that, if you truly wish.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 8
END

IF ~~ THEN BEGIN 232 // from:
  SAY #24804 /* ~The first thing of sense you have said. Now stay out of my way.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 233 // from: 28.0
  SAY #24836 /* ~That you live in poverty is gratifying, if you must live at all! I would suggest you change your tone. I am not in a mood for giving charity to old slavers!~ */
  IF ~~ THEN EXTERN ~BARONP~ 5
END

IF ~~ THEN BEGIN 234 // from:
  SAY #24875 /* ~I take it I am the one being addressed here?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 10
END

IF ~~ THEN BEGIN 235 // from:
  SAY #24877 /* ~I would say you are a fool trying to sell something you do not own and a wastrel attempting to take advantage of the innocent.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 11
END

IF ~~ THEN BEGIN 236 // from:
  SAY #24879 /* ~It is because of dirt such as you that I do not like coming to the city. Do not speak to me again, criminal.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from:
  SAY #25320 /* ~What is this? Why do you exhibit such an unpleasant demeanor? What have my people done to deserve such hatred from you?~ */
  IF ~~ THEN EXTERN ~BELMIN~ 8
END

IF ~~ THEN BEGIN 238 // from:
  SAY #25322 /* ~I lead no one to evil, human. And we elves have reason to be proud... we are an old race, far older than you.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 9
END

IF ~~ THEN BEGIN 239 // from:
  SAY #25324 /* ~You are a fool, human, and I've no reason to discuss anything with you further.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 240 // from:
  SAY #25458 /* ~Are... are you speaking of me? And Khalid? How do you know of this? Answer me!~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 241 // from:
  SAY #25600 /* ~You should be careful, woman... you might miss him more than you think should your wish come true.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 242 // from:
  SAY #25615 /* ~Not all elves are "flighty"... in their many years, they learn all too well the responsibilities and pitfalls of this world. You would do well to remember that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 243 // from:
  SAY #25741 /* ~Have no fear for me, my friend. I am well capable of defending myself... and punishing those who commit such acts on others!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 244 // from:
  SAY #25783 /* ~It is not the magic that is evil, but the purpose behind it, and the purpose of many magic users is good... something I am sure even you have benefited from somehow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 245 // from:
  SAY #26476 /* ~N-no, that's quite all right. Do not make a fuss.~ */
  IF ~~ THEN EXTERN ~DSHOP02~ 2
END

IF ~~ THEN BEGIN 246 // from:
  SAY #9659 /* ~I said not to...~ */
  IF ~~ THEN EXTERN ~DSHOP02~ 5
END

IF ~~ THEN BEGIN 247 // from:
  SAY #9695 /* ~<CHARNAME>! You do not need to...~ */
  IF ~~ THEN REPLY #9697 /* ~I believe he said he was talking to me, Jaheira. Shush yourself and take the gift.~ */ EXTERN ~DSHOP02~ 10
  IF ~~ THEN REPLY #9698 /* ~Well, I suppose not. If you are sure you do not want it.~ */ EXTERN ~DSHOP02~ 8
END

IF ~~ THEN BEGIN 248 // from:
  SAY #26496 /* ~Heh...~ */
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #26497 /* ~Well...~ */
  IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #26498 /* ~What a... charming fellow. Completely insane of course. Out of his mind. Blind as a bat. No idea what he was saying.~ */
  IF ~~ THEN REPLY #26499 /* ~Yes... yes, of course. Out of his mind. Yes.~ */ GOTO 251
  IF ~~ THEN REPLY #26500 /* ~Perhaps. Or perhaps I have been blind myself.~ */ GOTO 253
END

IF ~~ THEN BEGIN 251 // from: 250.0
  SAY #26503 /* ~Yes. Well.~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252 // from: 253.0 251.0
  SAY #26504 /* ~Let's... let's get going shall we?~ */
  IF ~  !PartyHasItem("MISC5W")
~ THEN EXIT
  IF ~  PartyHasItem("MISC5W")
~ THEN GOTO 254
END

IF ~~ THEN BEGIN 253 // from: 250.1
  SAY #26505 /* ~Um... I...~ */
  IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 254 // from: 252.1
  SAY #26733 /* ~The... the locket is lovely, by the way. Thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 255 // from:
  SAY #26961 /* ~Dermin? What are you doing back here? I am glad to see you; I had thought our friendship...~ [JAHEIRA8] */
  IF ~~ THEN EXTERN ~JADERMIN~ 16
END

IF ~~ THEN BEGIN 256 // from:
  SAY #26963 /* ~What are you talking about?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 17
END

IF ~~ THEN BEGIN 257 // from:
  SAY #26965 /* ~What? Such a thing has never been done!~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 18
END

IF ~~ THEN BEGIN 258 // from:
  SAY #26967 /* ~What do you mean?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 19
END

IF ~~ THEN BEGIN 259 // from:
  SAY #26973 /* ~Very well, Dermin. I will think on this.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 22
END

IF ~~ THEN BEGIN 260 // from:
  SAY #26975 /* ~Well, that was decidedly unpleasant, and more than I wish to worry about.~ */
  IF ~~ THEN REPLY #26976 /* ~You will not agree to such a thing, of course.~ */ GOTO 261
  IF ~~ THEN REPLY #26977 /* ~More of their tricks. I do not trust him.~ */ GOTO 263
  IF ~~ THEN REPLY #26978 /* ~His deal is thought-provoking. What are you going to do?~ */ GOTO 262
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #26979 /* ~Of... of course. It would be senseless. It does put a different light on things though. I will give this much thought indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 262 // from: 260.2
  SAY #26980 /* ~I am going to do exactly what I said I would do. I am going to think about this. All of this. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 263 // from: 260.1
  SAY #26981 /* ~I have known him a long time. He was a mentor when I had none. I will think on this a long time. All of this.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #30 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("DerminSpawn","GLOBAL",6)
~ THEN BEGIN 264 // from:
  SAY #27405 /* ~Stop!~ [JAHEIRB2] */
  IF ~~ THEN DO ~SetGlobal("DerminSpawn","GLOBAL",7)
~ GOTO 265
END

IF ~~ THEN BEGIN 265 // from: 264.0
  SAY #27406 /* ~Do you see him? Ready yourself.~ [JAHEIRBX] */
  IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #27407 /* ~Dermin! I would speak at you!~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 23
END

IF ~~ THEN BEGIN 267 // from:
  SAY #27409 /* ~Shut up! I said I would speak AT you! This matter is finished! I will not acknowledge this again! If you press it, I will be forced to deal with you!~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 24
END

IF ~~ THEN BEGIN 268 // from:
  SAY #27411 /* ~Yes, actually, and you well know it! Galvarey was no more a Harper than a treant. His actions betrayed him, and all those that followed him!~ */
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #27412 /* ~The garish Hold, his political agenda—he was merely using the weight of the Harper name to promote himself. Tell me: What did he offer you?~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 25
END

IF ~~ THEN BEGIN 270 // from:
  SAY #27414 /* ~Then I am better for it. Call me traitor, but I have followed the spirit of the Harpers. You are the traitor, and if the events were known, others would see!~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 26
END

IF ~~ THEN BEGIN 271 // from:
  SAY #27416 /* ~Of course not. Despite the ambushes, you will still be able to claim the moral high ground for your actions. What happened to you, Dermin? I do not know you.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 27
END

IF ~~ THEN BEGIN 272 // from:
  SAY #27418 /* ~At the cost of the innocents. That is always the way.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 28
END

IF ~~ THEN BEGIN 273 // from:
  SAY #27420 /* ~It certainly disrupted you. The innocents also include Harpers that have died thinking they were fighting for the right cause. Galvarey's cause. Your cause.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 29
END

IF ~~ THEN BEGIN 274 // from:
  SAY #27422 /* ~As was yours, though I suspect you have been gone for years.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 30
END

IF ~~ THEN BEGIN 275 // from:
  SAY #27424 /* ~Save it, Dermin. I have no more guilt about facing you or any other sent on this fool's crusade. You are the betrayers, not I. I know this in my heart.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 31
END

IF WEIGHT #31 /* Triggers after states #: 291 378 437 441 447 528 606 607 608 609 610 611 even though they appear after this state */
~  Global("DerminSpawn","GLOBAL",8)
~ THEN BEGIN 276 // from:
  SAY #27426 /* ~I did not wish to do this. I did not. We are in the right, <CHARNAME>, but why does it still hurt?~ */
  IF ~~ THEN REPLY #27427 /* ~The right thing is not always the easiest. Actually, it's usually the bloody hard bit.~ */ DO ~IncrementGlobal("DerminSpawn","GLOBAL",1)
~ GOTO 277
  IF ~~ THEN REPLY #27428 /* ~People do not always want to see reason. You do what you can...~ */ DO ~IncrementGlobal("DerminSpawn","GLOBAL",1)
~ GOTO 282
  IF ~~ THEN REPLY #27429 /* ~You know the answers to such things better than me. I'll spare you my clichés.~ */ DO ~IncrementGlobal("DerminSpawn","GLOBAL",1)
~ GOTO 284
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #27430 /* ~Heh, you and your jokes make me smile far too often, even when I do not want to. People will think I am getting soft. ~ */
  IF ~~ THEN REPLY #27431 /* ~Yes, but you're always quick with a backhand to set them right.~ */ GOTO 278
  IF ~~ THEN REPLY #27432 /* ~Not a chance. Hey, why didn't I get to say something to him? I wanted to help.~ */ GOTO 280
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #27433 /* ~Haha! Shush you! I'm supposed to be feeling bad about this whole thing. Oh, let's just get moving. ~ */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 281.0 278.0
  SAY #27434 /* ~*snicker*~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 280 // from: 277.1
  SAY #27435 /* ~I've sat through all of your little plots and plans. The least you can do is toss me a bone now and then. Yeesh, take <PRO_HISHER> thunder for one conversation and <PRO_HESHE> gets all touchy.~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #27436 /* ~Let's get out of here. We've still got things to do.~ */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 282 // from: 276.1
  SAY #27437 /* ~Yes, yes, you do what you can, not always what you want. The Big Little Book of Alaundo, right? Insightful.~ */
  IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #27438 /* ~I am sorry, <CHARNAME>, I shouldn't be taking my anger out on you. Let's just get moving. I'll be all right in a while.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 284 // from: 276.2
  SAY #27439 /* ~Heh, a wise move. I will not have this situation made trite. I may be in a foul mood for a while, you understand? Yes, I think you do. Thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 285 // from:
  SAY #27863 /* ~Are you trying to tell me, bard, that you do not remember us? You were working for that evil sorceress, Silke, when we ran into you.~ */
  IF ~~ THEN EXTERN ~GARRICK~ 4
END

IF ~~ THEN BEGIN 286 // from:
  SAY #27865 /* ~Well, you didn't have many thoughts in your head then, and it is obvious you do not have many now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #28450 /* ~Perhaps you should go and soak your head within a bucket, guard, before you attempt to address me again.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 288 // from:
  SAY #29651 /* ~Obviously, if I did have a problem, you would be the very last person I would be speaking to, you selfish and close-minded fool.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 289 // from:
  SAY #30033 /* ~You Amnian are too closed-minded about the demihuman kin that live amongst you in peace... they are not so different from you as you seem to think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #30059 /* ~You certainly are not! And perhaps you should think, sir, before you speak such insults so candidly.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 608 610 611 even though they appear after this state */
~  Global("JaheiraCursedDead","GLOBAL",1)
~ THEN BEGIN 291 // from:
  SAY #33335 /* ~Too... weak... I feel the curse within... Damn you, Ployer! I'll be cured yet...~ [JAHEIRD1] */
  IF ~~ THEN DO ~Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 292 // from:
  SAY #33663 /* ~Her cause seems just, and she is druid kin of a sort. Let us do our best to aid.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 293 // from: 47.0 46.0
  SAY #34526 /* ~I will find my own way, and... *cough*... and damned if I won't live to see you die on this path you've chosen. Ah, I will waste no more breath on you!~ */
  IF ~~ THEN DO ~EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #47972 /* ~Save Jaheira from Baron Ployer's curse

One of Jaheira's old enemies managed to place a curse on her that I just don't have the time to track down a cure for. I let her leave the party so that she might find a cure on her own. She was not pleased, to say the least.~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 57.0
  SAY #34528 /* ~You wish me gone! I— *cough* I shall seek help on my own. A word before I go: Beware your friends. No doubt they will eventually treat you as you treat them.~ */
  IF ~~ THEN DO ~EraseJournalEntry(1363)
EraseJournalEntry(4751)
EraseJournalEntry(4833)
EraseJournalEntry(4834)
EraseJournalEntry(4836)
EraseJournalEntry(47970)
EraseJournalEntry(47971)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #47972 /* ~Save Jaheira from Baron Ployer's curse

One of Jaheira's old enemies managed to place a curse on her that I just don't have the time to track down a cure for. I let her leave the party so that she might find a cure on her own. She was not pleased, to say the least.~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 63.0
  SAY #34529 /* ~He was irredeemable when he was on trial. He lives because he "donated" to the state. I will make good use of our next meeting, but not just because of his attack.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 296 // from:
  SAY #38634 /* ~No! You do not know. This is not the time for this conversation, child.~ [JAHEIRE1] */
  IF ~~ THEN EXTERN ~IMOEN2J~ 96
END

IF ~~ THEN BEGIN 297 // from:
  SAY #38636 /* ~What are you babbling about, Imoen? I am not in the mood.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 97
END

IF ~~ THEN BEGIN 298 // from:
  SAY #38638 /* ~You saw this? You watched as it was done?~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 98
END

IF ~~ THEN BEGIN 299 // from:
  SAY #38640 /* ~Stop, I don't want to hear this.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 99
END

IF ~~ THEN BEGIN 300 // from:
  SAY #38642 /* ~Be quiet, child! No more!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 301 // from:
  SAY #38644 /* ~You've seen some horrible things best forgotten. We all have, in our day. This will pass when we... avenge the fallen and... bury this son of a bitch.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 101
END

IF ~~ THEN BEGIN 302 // from:
  SAY #38646 /* ~Imoen! Enough! Let's go!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 303 // from:
  SAY #38675 /* ~We have done nothing to you. I see that you are an elf... We are prisoners here, as are you. Perhaps if we could—~ */
  IF ~~ THEN EXTERN ~CLONE1~ 7
END

IF ~~ THEN BEGIN 304 // from:
  SAY #38676 /* ~Nonsense, he was secretive with everyone. We just had... mutual acquaintances.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 110
END

IF ~~ THEN BEGIN 305 // from:
  SAY #38692 /* ~So... I see we have a name for our captor at last. Irenicus, is it? Tell me, dryads, why this Irenicus would go to such lengths to keep you three here?~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 16
END

IF ~~ THEN BEGIN 306 // from:
  SAY #38699 /* ~Surely you won't refuse them the chance to return to their forest, <CHARNAME>? It takes no effort from us and would be a kindness to them. Think it over.~ */
  IF ~~ THEN DO ~IncrementGlobal("ImoenDryad","AR0602",1)
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY #38720 /* ~It is monstrous that one would do such a thing to a servant, to lock him away in an eternity of pain. It offends nature.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #38726 /* ~Nature does not intend her creations to live past their allotted time. Certainly not this forgotten servant, tormented and then left for dead, but not dead.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #38729 /* ~I wonder how this master came to live such a life that he abandons much of it? The fault of ill-considered magic, no doubt. We shall see when we find him.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #38742 /* ~<CHARNAME> will do as <PRO_HESHE> decides is best. While kind enough to give the beggar a coin, there is no need for <PRO_HIMHER> to give away everything <PRO_HESHE> owns.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 311 // from:
  SAY #38761 /* ~For shame, <CHARNAME>, that you could speak to a child so. Have you no compassion for the helpless?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #38773 /* ~Take care, <CHARNAME>. I have heard of these Cowled Wizards. Spellcasters of the highest order, the only magic-users allowed here in Amn, I believe.~ */
  IF ~~ THEN EXTERN ~BYSTAND2~ 4
END

IF ~~ THEN BEGIN 313 // from:
  SAY #38862 /* ~Greetings to you, good sir. I trust all is well?~ */
  IF ~~ THEN EXTERN ~RIBALD~ 25
END

IF ~~ THEN BEGIN 314 // from:
  SAY #38864 /* ~I am not here in an official capacity, suspicious one. There is no need to worry.~ */
  IF ~~ THEN EXTERN ~RIBALD~ 26
END

IF ~~ THEN BEGIN 315 // from:
  SAY #38877 /* ~The gnome is dead. How he was able to perform these great feats of illusion will have to remain a mystery, it seems.~ */
  IF ~  !Dead("Aerie")
~ THEN DO ~StartCutSceneMode()
EraseJournalEntry(34110)
EraseJournalEntry(34111)
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)
AddexperienceParty(25000)
ActionOverride("Aerie",Wait(3))
ActionOverride("Aerie",StartDialogNoSet([PC]))
ActionOverride("Kalah",Kill(Myself))
~ EXIT
  IF ~  Dead("Aerie")
!Dead("Quaylem")
~ THEN DO ~StartCutSceneMode()
EraseJournalEntry(34110)
EraseJournalEntry(34111)
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)
AddexperienceParty(25000)
ActionOverride("Quayle",Wait(3))
ActionOverride("Quayle",StartDialogNoSet([PC]))
ActionOverride("Kalah",Kill(Myself))
~ EXIT
  IF ~  Dead("Aerie")
Dead("Quaylem")
~ THEN DO ~EraseJournalEntry(34110)
EraseJournalEntry(34111)
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)
AddexperienceParty(25000)
ActionOverride("Kalah",Kill(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 316 // from:
  SAY #38920 /* ~That was unbecoming of you, <CHARNAME>, to be so forceful with one of such a lesser station. But I suppose you shall do as you wish regardless.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 317 // from:
  SAY #38941 /* ~It sounds like there is a trade of flesh going on, <CHARNAME>, but questioning this man will get us nowhere. Perhaps a more thorough inquiry is called for.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 318 // from:
  SAY #38944 /* ~I doubt this man is a prisoner, <CHARNAME>. More likely a slave, prohibitions notwithstanding. A revolting practice wherever it is carried out.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 30
END

IF ~~ THEN BEGIN 319 // from:
  SAY #39178 /* ~There is nothing wrong with a noble task duly undertaken. And perhaps it will be enjoyable to see you in a greener setting, dwarf.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 44
END

IF ~~ THEN BEGIN 320 // from:
  SAY #39181 /* ~I hope you intend to go to this village soon, <CHARNAME>. A visit to greener lands would be welcome after our trek through this crowded city.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 321 // from:
  SAY #39282 /* ~You may wish to reconsider your refusal, <CHARNAME>. This may be a way to overcome the slavers here for good. It is the honorable path, if you are interested.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 45
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 95
END

IF ~~ THEN BEGIN 322 // from:
  SAY #39362 /* ~Do not overly concern yourself with the pursuit of precious metals alone, Korgan. There are other matters that we must consider here.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 48
END

IF ~~ THEN BEGIN 323 // from:
  SAY #39364 /* ~Ah, a chance to strike at the heart of slavery here in Athkatla. Think of it, <CHARNAME>; you could make a difference, if you wish. At least for a while.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~HENDAK~ 24
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 33
END

IF ~~ THEN BEGIN 324 // from:
  SAY #39372 /* ~A thoroughly despicable man... and an equally despicable place. This is the sort of thing that comes naturally with civilization, it seems.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 325 // from:
  SAY #39398 /* ~No, he is not. He has no interest in anything you might have to sell, woman.~ */
  IF ~~ THEN EXTERN ~MADAM~ 17
END

IF ~~ THEN BEGIN 326 // from:
  SAY #39402 /* ~Druids would not attack a town without cause. It would be a very extreme reaction, <CHARNAME>, and is definitely something we should investigate.~ */
  IF ~~ THEN EXTERN ~MESSEN~ 8
END

IF ~~ THEN BEGIN 327 // from:
  SAY #39413 /* ~You will not, Korgan. There is a disturbance in nature that we are to restore... I will not have you swinging about, heedless of the consequences.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 52
END

IF ~~ THEN BEGIN 328 // from:
  SAY #39414 /* ~You may wish to reconsider, Korgan. Doves can carry several diseases, and I wouldn't wish you vomiting and cramps simply for being an ignorant lout.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 53
END

IF ~~ THEN BEGIN 329 // from:
  SAY #39415 /* ~You're welcome to try, but you are not the only one trained in martial skill. Remember that in the forest, you are in my domain and at an extreme disadvantage.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 330 // from:
  SAY #39422 /* ~I thought such childish antics to be above you, <CHARNAME>. But if it makes you feel better, I suppose I cannot stop you.~ */
  IF ~~ THEN EXTERN ~RUFFIAN~ 7
END

IF ~~ THEN BEGIN 331 // from:
  SAY #39424 /* ~I cannot believe you would partake in such cruelty, <CHARNAME>. I refuse to watch this.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN DO ~ClearAllActions()
SetGlobal("SurlyFight","AR0406",1)
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 84
END

IF ~~ THEN BEGIN 332 // from:
  SAY #39590 /* ~So... I see we have a name for our captor at last. Irenicus, is it? Tell me, dryads, why this Irenicus would go to such lengths to keep you three here?~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 15
END

IF ~~ THEN BEGIN 333 // from:
  SAY #40725 /* ~Get your hands off me! So help me, I'll...~ */
  IF ~~ THEN EXTERN ~JAERTOF~ 2
END

IF ~~ THEN BEGIN 334 // from: 1.0
  SAY #42212 /* ~Where are the mirrors, the switches to pull to show where he is hidden...? *sob* Khalid...!~ [JAHEIRC5] */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #42213 /* ~Damn... damn you...~ [JAHEIRC6] */
  IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 336 // from: 337.0
  SAY #42214 /* ~I... no.~ */
  IF ~~ THEN REPLY #42215 /* ~This... this is Khalid? What has happened to him?~ */ GOTO 338
  IF ~~ THEN REPLY #42216 /* ~This isn't real, is it? He couldn't be dead?~ */ GOTO 338
  IF ~~ THEN REPLY #42217 /* ~Looks like the fool finally got himself killed. ~ */ GOTO 338
END

IF ~~ THEN BEGIN 337 // from: 335.0
  SAY #42218 /* ~Damn you! I will have the heart of who has done this! I will tear their blackened heart from their... I will...~ */
  IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 338 // from: 336.2 336.1 336.0
  SAY #42219 /* ~Shut up! No more words! Words are nothing!~ */
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 37
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 87
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Minsc")
~ THEN GOTO 340
END

IF ~~ THEN BEGIN 339 // from:
  SAY #42221 /* ~Stranger! Nobody! I will not hear your words! Leave me! ~ */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 87
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN GOTO 340
END

IF ~~ THEN BEGIN 340 // from: 341.0 339.1 338.2
  SAY #42223 /* ~No words! No more words! Save your speeches, save your proverbs! The only voice I wish to hear is... is dead! No more! No...~ */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 341 // from:
  SAY #42224 /* ~Imbecile! Affront to nature! What do you and your rodent know?! What can you know?!~ */
  IF ~~ THEN GOTO 340
END

IF ~~ THEN BEGIN 342 // from: 340.0
  SAY #42225 /* ~No...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 343 // from: 2.0
  SAY #42226 /* ~Khalid of my heart, let my love... my love guide the way...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 344 // from: 229.0 228.0 21.0
  SAY #42227 /* ~Khalid? Silvanus, let him hear my vow... If I must, I shall empty this city of all within to find his killer... So do I swear.~ */
  IF ~~ THEN REPLY #42228 /* ~Well, that was certainly morbid. Are you going to talk to him often?~ */ GOTO 345
  IF ~~ THEN REPLY #42229 /* ~A fine sentiment. I will aid as best I can.~ */ GOTO 345
  IF ~~ THEN REPLY #42230 /* ~We have other things to worry about too. Don't waste your time.~ */ GOTO 345
END

IF ~~ THEN BEGIN 345 // from: 344.2 344.1 344.0
  SAY #42231 /* ~It is my wont to do this, and I shall see that it is done properly. If you would assist, more the better. If not, be prepared to stand aside.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 346 // from:
  SAY #44178 /* ~She seems distant. Those are not Imoen's eyes. Not the one we knew, anyway.~ */
  IF ~~ THEN EXTERN ~PPIMOEN~ 1
END

IF ~~ THEN BEGIN 347 // from:
  SAY #47077 /* ~An excellent warning, if vague. I shall think on your words, though I doubt I shall alter my course. What will come will come.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 348 // from:
  SAY #48466 /* ~Have you no sense of charity, dwarf? What is the sense of freeing such children only to subject them to starvation and destitution, then?~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 58
END

IF ~~ THEN BEGIN 349 // from:
  SAY #48475 /* ~Really, <CHARNAME>, couldn't you have spared a little gold for the child? You may have rescued them only to subject them to starvation and worse.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 180
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 60
END

IF ~~ THEN BEGIN 350 // from:
  SAY #48480 /* ~And one wonders how long you have been able to hide your arrogance and disregard behind a semblance of honor, Anomen. Helm would disapprove, I think.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 181
END

IF ~~ THEN BEGIN 351 // from:
  SAY #48481 /* ~I do not fear you, knight! Any moment you wish to meet on the field of battle, I will be there!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 352 // from:
  SAY #48485 /* ~It comes as no surprise to me that an immoral dwarf such as you has a heart of stone, Korgan. I simply expect better from <CHARNAME>.~ */
  IF ~~ THEN REPLY #48486 /* ~Knock it off, you two!~ */ EXTERN ~KORGANJ~ 61
  IF ~~ THEN REPLY #48487 /* ~Go to Hell, Jaheira! I saved them, didn't I?~ */ GOTO 353
  IF ~~ THEN REPLY #48488 /* ~Maybe you're right. I'll think on your words.~ */ EXTERN ~KORGANJ~ 62
  IF ~~ THEN REPLY #48489 /* ~Let's just get out of here.~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.1
  SAY #48491 /* ~That you did, <CHARNAME>, but there is a responsibility that comes with such actions as well. You might decide to ponder that at some point in the future.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY #48512 /* ~How sad, to have been kept prisoner in such a state. And by what? The presence in the sword? It does not make sense.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Nalia")
~ THEN DO ~ActionOverride("quallo",EscapeArea())
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 56
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 230
END

IF ~~ THEN BEGIN 355 // from:
  SAY #48515 /* ~A puzzle, obviously. We must find the four things spoken of to unlock whatever mystery is hidden here. Who would hide something in such a fashion, I wonder?~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 94
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 38
END

IF ~~ THEN BEGIN 356 // from:
  SAY #48530 /* ~I think it would be an excellent idea to get outside of the city and administer justice on such evil creatures. Tyranny is best matched with equal force.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 68
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 231
END

IF ~~ THEN BEGIN 357 // from:
  SAY #48534 /* ~I've fought many an ogre in the past, dwarf, and many other powerful evil creatures aside from such. You should be wary that I do not add you to the list.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 69
END

IF ~~ THEN BEGIN 358 // from:
  SAY #48551 /* ~Ah, Gorion once said that he and some Harpers dealt a humiliating blow to a dragon in the Stormhorn Mountains. I was not aware this was the same one.~ */
  IF ~~ THEN EXTERN ~FIRKRA02~ 5
END

IF ~~ THEN BEGIN 359 // from:
  SAY #48573 /* ~I am sure you have your reasons, <CHARNAME>, but be not quick to turn down an offer of sanctuary. I am not eager to battle paladins without need.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 40
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 44
END

IF ~~ THEN BEGIN 360 // from:
  SAY #48592 /* ~Indeed. They seek your agreement before telling you what they wish you to do. The Cowled Wizards are not to be trusted, <CHARNAME>, as you well know.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 2
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 46
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 218
END

IF ~~ THEN BEGIN 361 // from:
  SAY #48599 /* ~While surely all murderers must be brought to task, I wonder what manner of justice the Cowled Wizards would apply. It is something to consider.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 19
END

IF ~~ THEN BEGIN 362 // from:
  SAY #48630 /* ~We will have to be careful with the Cowled Wizards now at our heels. But it is a righteous cause, and another companion to stand at our side is always welcome.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Cernd")
OR(2)
!Global("HiredByCowled","GLOBAL",1)
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 104
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 93
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Cernd")
Global("HiredByCowled","GLOBAL",1)
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 221
END

IF ~~ THEN BEGIN 363 // from:
  SAY #48645 /* ~And well you should be. This is coward's work, despicable to the core.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 364 // from:
  SAY #48668 /* ~You are mistaken. I do not bear that name, and I will not. The greater balance bids me here.~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 1
END

IF ~~ THEN BEGIN 365 // from:
  SAY #48678 /* ~You are lucky we did not allow the creatures to complete what they started. You are a fool, merchant, and should think with your head instead of your purse.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #48693 /* ~I think I should like to walk through this place when we no longer need anything from the devil we know.~ */
  IF ~  !IsValidForPartyDialogue("KELDORN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KELDORJ~ 117
END

IF ~~ THEN BEGIN 367 // from:
  SAY #48762 /* ~I... I am not always frowning, I... oh, go away, child. Why are the children of this city so annoying?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 368 // from:
  SAY #48814 /* ~Hmm... wait one moment... do I know you?~ */
  IF ~~ THEN EXTERN ~FFCUST01~ 10
END

IF ~~ THEN BEGIN 369 // from:
  SAY #48815 /* ~I see. A Zhentish agent, if I recall, but one of no consequence. Pay him no heed, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 370 // from:
  SAY #48889 /* ~Ah, yes. The infamous capacity for drow compassion is revealed once again. Ignore her, <CHARNAME>, and let us get this task over with quickly.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 197
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 371 // from:
  SAY #48901 /* ~Ah, Berinvar, <CHARNAME> is not a Harper, but I certainly am. Will you treat my guests as friends and answer? I assume the guardians are spectral harpists?~ */
  IF ~~ THEN EXTERN ~BERINVAR~ 9
END

IF ~~ THEN BEGIN 372 // from:
  SAY #48907 /* ~He and the others seem preoccupied with the trinkets around their necks. I find it odd I have not heard of this before now. Harpers do not often wear symbols to make themselves *more* noticeable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 373 // from:
  SAY #48924 /* ~This person makes me ill. <CHARNAME>, I suggest we move on before I ignore the greater balance and return him to the dust.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 374 // from:
  SAY #48926 /* ~No doubt you have plied your trade on good folk as well in the past. Your balance will come in the end. Nothing goes unpunished.~ */
  IF ~~ THEN EXTERN ~BOOTER~ 19
END

IF ~~ THEN BEGIN 375 // from:
  SAY #48951 /* ~The confines of the city do much to chisel at the sanity of its inhabitants, but I wonder if there is some other force at work. We had best be wary.~ */
  IF ~~ THEN EXTERN ~INSPECT~ 14
END

IF ~~ THEN BEGIN 376 // from:
  SAY #48960 /* ~I'm not sure the lieutenant should go alone. We have evidence of the culprit, but we know nothing of his ability. There may be danger we are not aware of.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 377 // from:
  SAY #48967 /* ~His work?! What does he speak of? Quickly, <CHARNAME>, we must stop him before he escapes!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  AreaCheck("AR0502")
Global("EnteredTanner","AR0502",0)
~ THEN BEGIN 378 // from:
  SAY #48976 /* ~This... this place smells heavily of death, <CHARNAME>, and the evidence of it is all around us. Step carefully, for I believe we enter the workshop sanctum of a madman.~ */
  IF ~  Global("ToldInspector","GLOBAL",0)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ EXIT
  IF ~  Global("ToldInspector","GLOBAL",1)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ GOTO 379
END

IF ~~ THEN BEGIN 379 // from: 378.1
  SAY #48982 /* ~I have little doubt, <CHARNAME>, that we will also find Lieutenant Aegisfield somewhere herein... Hopefully, the man is still alive.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 380 // from:
  SAY #49030 /* ~You are mistaken, but I care not! Khalid will be avenged whether you stand aside willingly or not!~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN 381 // from:
  SAY #49206 /* ~I should think not! Child, surely you are better than this? Are you certain of this choice?~ */
  IF ~~ THEN EXTERN ~DHARLOT2~ 2
END

IF ~~ THEN BEGIN 382 // from:
  SAY #49208 /* ~That was unnecessarily harsh. I can see that we shall be at odds more often than not, drow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 383 // from:
  SAY #49248 /* ~Such a lack of compassion is unseemly for a knight. Would you have others judge you as quickly?~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 211
END

IF ~~ THEN BEGIN 384 // from:
  SAY #49263 /* ~One should not turn away an offered hand so quickly, <CHARNAME>, but I would be wary of its secretive origin. Perhaps we can find Imoen on our own.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 75
END

IF ~~ THEN BEGIN 385 // from:
  SAY #49282 /* ~Shadow Thieves? Perhaps we shall finally get answers as to their interest in us.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 386 // from:
  SAY #49295 /* ~My own Harpers have used us. I should have suspected... the gaudy necklaces, the invitation. Ah well. If Xzar was doing as she said, he deserved his fate.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 112
END

IF ~~ THEN BEGIN 387 // from:
  SAY #49322 /* ~I was wondering when you would turn up, Zhent. I had suspected our parting would not be permanent when last we met, and it appears my suspicions were correct.~ */
  IF ~~ THEN EXTERN ~LYROS~ 28
END

IF ~~ THEN BEGIN 388 // from:
  SAY #49339 /* ~Be wary, <CHARNAME>, the Harpers will not brook interference lightly, and this Zhent likely holds only the worst of intentions in his heart.~ */
  IF ~~ THEN EXTERN ~LYROS~ 30
END

IF ~~ THEN BEGIN 389 // from:
  SAY #49347 /* ~Well, if you wish to investigate what has happened to the spy, that is up to you, <CHARNAME>. I suggest caution and perhaps some common sense.~ */
  IF ~~ THEN GOTO 390
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY #49348 /* ~If the Harpers will even speak to us, which I doubt, they certainly will not reveal what they did with the halfling. Best not to ask about him directly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 391 // from:
  SAY #49384 /* ~It is good that this is the final of these tasks set for us. I've no taste for bounty hunting, but let us find this thief and have the deed done with quickly.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 83
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 56
END

IF ~~ THEN BEGIN 392 // from:
  SAY #49404 /* ~Yes, this is an odd structure for the Harpers to erect. I have never heard of an opulent base such as this. Secrecy has always been the watchword before.~ */
  IF ~~ THEN EXTERN ~MERONIA~ 5
END

IF ~~ THEN BEGIN 393 // from:
  SAY #49410 /* ~I am a Harper, Meronia. May I be allowed to speak to these guardians? I assume they are spectral harpists. Perhaps they could satisfy my... curiosity.~ */
  IF ~~ THEN EXTERN ~MERONIA~ 20
END

IF ~~ THEN BEGIN 394 // from:
  SAY #49419 /* ~Yes... I've noticed the amulets you wear. I've heard of the Harper pins, but nothing of these. Is this a local custom?~ */
  IF ~~ THEN EXTERN ~PACE~ 6
END

IF ~~ THEN BEGIN 395 // from:
  SAY #49489 /* ~Your memory is selective, Red Wizard. Why do you now work with Shadow Thieves, and what is your connection to our capture by Irenicus? Khalid is dead, and I will have an answer!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 56
END

IF ~~ THEN BEGIN 396 // from:
  SAY #49540 /* ~How about conscience, dwarf? Or morality? Perhaps <CHARNAME> knows what is best.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 91
END

IF ~~ THEN BEGIN 397 // from:
  SAY #49552 /* ~Do not make us laugh, thief master. We have heard of your guild war. You would not approach outsiders if your own house were strong and solid, hm?~ */
  IF ~~ THEN EXTERN ~RENAL~ 58
END

IF ~~ THEN BEGIN 398 // from:
  SAY #49553 /* ~<CHARNAME>! You would abandon Imoen here? I would rather leave myself than have you cast her away in this place. It is not right.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 399 // from:
  SAY #49586 /* ~You would leave a person in obvious distress to his own devices? I would have expected better of you, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobalTimer("RenfeldDeath","LOCALS",TWO_DAYS)
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 87
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 253
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 150
END

IF ~~ THEN BEGIN 400 // from:
  SAY #49599 /* ~But it is the truth, is it not? I am a Harper myself, and we simply wish to be treated as guests. <CHARNAME> did bring you your poisoned friend, after all.~ */
  IF ~~ THEN EXTERN ~RYLOCK~ 14
END

IF ~~ THEN BEGIN 401 // from:
  SAY #49606 /* ~That was foolish, <CHARNAME>! The Harpers could have helped you. *sigh* But I suppose you will do as you always have, stubborn <PRO_MANWOMAN>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 402 // from:
  SAY #49608 /* ~I am a Harper, friend, and I think I see where this is heading... Is all this really necessary?~ */
  IF ~~ THEN EXTERN ~RYLOCK~ 54
END

IF ~~ THEN BEGIN 403 // from:
  SAY #49609 /* ~*sigh* If the Harpers have asked this task to judge your worthiness, then there is no way around it. Let us proceed and be done with these "creatures."~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 220
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 75
END

IF ~~ THEN BEGIN 404 // from:
  SAY #49612 /* ~Hmm, I am surprised they are letting us in, even after all this. I warn you, <CHARNAME>, be polite. Our reason for being here is questionable enough as it is.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 71
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 82
END

IF ~~ THEN BEGIN 405 // from:
  SAY #49627 /* ~Hmmm... it's nice to know there's a "softer" and "sweeter" side to you... "Eddie."~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 75
END

IF ~~ THEN BEGIN 406 // from:
  SAY #49631 /* ~And all feared the Slayer, for it walked like a mortal, but in its wake there came murder, and in the future, there was death.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 407 // from:
  SAY #49778 /* ~This is a dark place to meet this woman, <CHARNAME>, and I sense an unnaturalness about her that is disturbing to me. Step carefully.~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
END

IF ~~ THEN BEGIN 408 // from:
  SAY #49783 /* ~How does she know of our link to the Shadow Thieves? And what would they think of this meeting? Be careful, <CHARNAME>, our lives may hang in the balance.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 409 // from:
  SAY #49812 /* ~Boldly said, creature, yet you do not face us. <CHARNAME> has been underestimated by far better. You will rue the day of conflict when it comes, I think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 410 // from:
  SAY #49886 /* ~Step slowly, you do not look well at all. How do you feel?~ */
  IF ~~ THEN EXIT
  IF ~~ THEN REPLY #49887 /* ~~ */ EXIT
  IF ~~ THEN REPLY #49888 /* ~~ */ EXIT
  IF ~~ THEN REPLY #49889 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 411 // from:
  SAY #49913 /* ~You have your money, <CHARNAME>, but you could have avoided the inevitable reputation of a kidnapper. Sometimes I think you act without due consideration.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 61
END

IF ~~ THEN BEGIN 412 // from:
  SAY #49920 /* ~Are you well? I am growing very worried about you, you know. I should not like to lose you in this evil place.~ */
  IF ~~ THEN REPLY #49921 /* ~Jaheira, I would get back if I were you. I think it's happening again!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",1)
~ GOTO 413
  IF ~~ THEN REPLY #49922 /* ~Get back, Jaheira, if you value your life.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",1)
~ GOTO 413
  IF ~~ THEN REPLY #49923 /* ~Leave me be, woman! You endanger yourself just standing there!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.2 412.1 412.0
  SAY #49924 /* ~<CHARNAME>? Your lips move, but there is no sound. <CHARNAME>? <CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 414 // from:
  SAY #49953 /* ~Nature is not so vindictive, fool. It cares not who prostrates before it, it cares only that the balance is maintained.~ */
  IF ~~ THEN EXTERN ~ACOLYTE1~ 2
END

IF ~~ THEN BEGIN 415 // from:
  SAY #49963 /* ~This is the hilt of a long sword. It appears to have been forged by a fine craftsman, even though the blade was broken off long ago and the pommel is obviously missing a large gem.

STATISTICS:

Weight: 2~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 416 // from:
  SAY #49969 /* ~You would have killed me if I had let you. You would have left me to rot in this place.~ */
  IF ~~ THEN REPLY #49971 /* ~I fear this will not be the last time this happens. I can't control it.~ */ GOTO 417
  IF ~~ THEN REPLY #49972 /* ~I tried to warn you, but I couldn't speak. I am sorry. I should leave.~ */ GOTO 418
  IF ~~ THEN REPLY #49973 /* ~It wasn't my fault. Whine if you want, but I'm the one really in trouble here.~ */ GOTO 419
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #49974 /* ~I'm not sure you should try to control it. We must distance you from it, not embrace it. We will make do despite the danger.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 418 // from: 416.1
  SAY #49975 /* ~No, you should not be alone during this. We will get through, I am sure. We just have to keep going, no matter what comes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 419 // from: 416.2
  SAY #49976 /* ~You are not the only one affected by this! It is so hard to see you...~ */
  IF ~~ THEN GOTO 420
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #49977 /* ~<CHARNAME>, please, let's just keep moving. We'll get through, I'm sure of it. Really.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 421 // from:
  SAY #50006 /* ~Are you well? It would only be fitting to take some time to rest. You have been through quite an ordeal.~ */
  IF ~~ THEN REPLY #50007 /* ~I felt strange for a moment, like I wasn't in control.~ */ GOTO 423
  IF ~~ THEN REPLY #50008 /* ~It's nothing. Leave me alone.~ */ GOTO 422
  IF ~~ THEN REPLY #50009 /* ~I don't want to worry anyone. Just forget it.~ */ GOTO 422
END

IF ~~ THEN BEGIN 422 // from: 421.2 421.1
  SAY #50011 /* ~Very well, but keep me apprised of your condition. Imoen supposedly went through the same ritual, but she did not seem to suffer from sudden attacks like that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 423 // from: 421.0
  SAY #50013 /* ~That is troubling. I do not know what effect having the ritual had on you, but it does appear to be different from what Imoen suffered. Odd.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 424 // from:
  SAY #50037 /* ~I am glad that you have chosen this course, <CHARNAME>. This cult stinks of wrongness, an affront against nature that must be stopped!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 425 // from:
  SAY #50053 /* ~You align yourself with a temple that threatens its followers? You would bow down before a vindictive god, <CHARNAME>? You are strange indeed.~ */
  IF ~~ THEN EXTERN ~BHNALLA~ 53
END

IF ~~ THEN BEGIN 426 // from:
  SAY #50100 /* ~Hold, <CHARNAME>, do not be foolish! You there... how can we be certain of your innocence? Why are you here if you are no longer members of the cult?~ */
  IF ~~ THEN EXTERN ~SASSAR~ 4
END

IF ~~ THEN BEGIN 427 // from:
  SAY #50121 /* ~<CHARNAME>! This... this is the same child-killing gnome from Baldur's Gate! I remember! For the greater balance, his head must be brought to the authorities!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("Neb")
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("Neb")
~ EXTERN ~MINSCJ~ 140
END

IF ~~ THEN BEGIN 428 // from:
  SAY #50124 /* ~I... I understand. It is an avatar of a faded god, left guarding an item that has waned in power. Loathing has replaced the worship of his followers. A lingering fate.~ */
  IF ~~ THEN EXTERN ~RIFTG03~ 8
END

IF ~~ THEN BEGIN 429 // from:
  SAY #50534 /* ~I have no love for drow, or for this drow in particular... but it seems that she has done nothing to deserve this fate other than simply be a drow. This is not justice.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 430 // from:
  SAY #50555 /* ~Is that what you see as justice, <CHARNAME>? I sensed great sadness behind her darkness. With balance, she might have been... well, who knows?~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 146
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 113
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 179
END

IF ~~ THEN BEGIN 431 // from:
  SAY #50566 /* ~Truth be known, I am not opposed to having Viconia travel with us. Remember, though, that many will think less of us simply because she is here.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VICONI~ 25
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 114
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 249
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 147
END

IF ~~ THEN BEGIN 432 // from:
  SAY #50639 /* ~<CHARNAME>? Are you... yourself? That was... the Slayer! You became a form of the avatar of Bhaal... but the god is dead...~ */
  IF ~~ THEN GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #50640 /* ~<CHARNAME>, this is not right at all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 434 // from:
  SAY #50660 /* ~<CHARNAME>, we had best move quickly! The mages you have let loose will need direction, or they will be impossible to control.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 435 // from:
  SAY #50957 /* ~We must be subservient, <CHARNAME>. To them, we are lesser drow and no doubt under suspicion. Any sign of disobedience would bring scrutiny upon us.~ */
  IF ~~ THEN GOTO 436
END

IF ~~ THEN BEGIN 436 // from: 435.0
  SAY #50958 /* ~The drow have a harsh culture, one I am not overly familiar with. We must harden our hearts if we are to blend in. The alternative is discovery and death.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCheckMad1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",1)
!Range("Phaere",6)
Global("JaheiraMad1","LOCALS",0)
~ THEN BEGIN 437 // from:
  SAY #51254 /* ~Just what are you on to, <CHARNAME>? You think I am blind, not to see your foolish behavior with the drow woman? Why would you play such an idiotic game...? Do you not remember our situation?~ */
  IF ~~ THEN REPLY #51257 /* ~Are you jealous, Jaheira? I would not expect that from you.~ */ DO ~SetGlobal("JaheiraMad1","LOCALS",1)
~ GOTO 438
  IF ~~ THEN REPLY #51258 /* ~It's a ploy, Jaheira... nothing more.~ */ DO ~SetGlobal("JaheiraMad1","LOCALS",1)
~ GOTO 439
  IF ~~ THEN REPLY #51259 /* ~I'll do as I like, Jaheira. Keep your opinions to yourself.~ */ DO ~SetGlobal("JaheiraMad1","LOCALS",1)
~ GOTO 440
END

IF ~~ THEN BEGIN 438 // from: 437.0
  SAY #51261 /* ~Jealous of a simple drow that turns her eyes up at you? Is your opinion of me so low? I merely think that flirtations will gain nothing and endanger us all.~ */
  IF ~~ THEN REPLY #51262 /* ~It's a ploy, Jaheira... nothing more.~ */ GOTO 439
  IF ~~ THEN REPLY #51263 /* ~I'll do as I like, Jaheira. Keep your opinions to yourself.~ */ GOTO 440
END

IF ~~ THEN BEGIN 439 // from: 438.0 437.1
  SAY #51264 /* ~It is a foolish one. Drow enjoy neither affection nor intense attraction. Sex is nothing but a game to them. To indulge would be... disappointing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 440 // from: 438.1 437.2
  SAY #51265 /* ~Oh? I am disappointed. Indulge your carnality, by all means, if it means so much to you. I shall say no more on that subject or any other.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("JaheiraMad2","LOCALS",0)
~ THEN BEGIN 441 // from:
  SAY #52240 /* ~You spent quite some time in the drow woman's chambers, <CHARNAME>. Care to elaborate what you were about, as if I did not know?~ */
  IF ~  ReputationGT(Player1,12)
~ THEN REPLY #52241 /* ~She forced me, Jaheira. I had no choice if I wanted to maintain our guise.~ */ DO ~SetGlobal("JaheiraMad2","LOCALS",1)
~ GOTO 442
  IF ~  ReputationLT(Player1,13)
~ THEN REPLY #52242 /* ~She forced me, Jaheira. I had no choice if I wanted to maintain our guise.~ */ DO ~SetGlobal("JaheiraMad2","LOCALS",1)
~ GOTO 443
  IF ~~ THEN REPLY #52243 /* ~It served a purpose and nothing more.~ */ DO ~SetGlobal("JaheiraMad2","LOCALS",1)
~ GOTO 444
  IF ~~ THEN REPLY #52244 /* ~I didn't have much choice. I'm sorry.~ */ DO ~SetGlobal("JaheiraMad2","LOCALS",1)
~ GOTO 445
  IF ~~ THEN REPLY #52245 /* ~It's none of your business either way.~ */ DO ~SetGlobal("JaheiraMad2","LOCALS",1)
~ GOTO 446
END

IF ~~ THEN BEGIN 442 // from: 441.0
  SAY #52246 /* ~I suppose that is true enough, although I can think of several lies you might have tried for our sake. But I trust you enough. Let us just... move on.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 443 // from: 441.1
  SAY #52247 /* ~Hmph. You are just the sort to lie to me about this. And that this makes me uncomfortable is even worse. I think I prefer to be on my own for a time.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 444 // from: 441.2
  SAY #52248 /* ~I know the purpose. Simple self-gratification, or do you maintain there was no way to avoid the situation? Ahhh, enough... I do not want to hear any more.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 445 // from: 441.3
  SAY #52249 /* ~I am sorry too, and disappointed, but I suppose it could not be avoided... with you being male and in this guise. I shall... attempt to forget about it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 446 // from: 441.4
  SAY #52250 /* ~No? Very well. I shall endeavor to keep my shrewish opinions to myself, on this and all other matters regarding us.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("JaheiraCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("JaheiraMad3","LOCALS",0)
~ THEN BEGIN 447 // from:
  SAY #52251 /* ~Hmmm... out so soon? Did the drow woman not dig her claws into you successfully? That is good. I shudder to think what might have happened otherwise.~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraMad3","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 448 // from:
  SAY #52293 /* ~How can you refuse so coldly? I will not stand idly by. Nalia... we will aid you, as will <CHARNAME>, I am sure. What is the problem, precisely?~ */
  IF ~~ THEN EXTERN ~NALIA~ 50
END

IF ~~ THEN BEGIN 449 // from:
  SAY #55188 /* ~A bitter end to a terrible man. We did well, I think, but I am not certain that all has been restored to as it was. <CHARNAME>? Do you feel any different?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 450 // from:
  SAY #55210 /* ~It... it is not finished, is it? This is death... and your strange power has dragged me here with you. ...So be it then. We stand together until the end.~ [JAHEIRD3] */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 451 // from:
  SAY #55650 /* ~I understand plenty already! This place reeks of corruption and deceit!~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 7
END

IF ~~ THEN BEGIN 452 // from:
  SAY #55671 /* ~Rest, child. None of this group shall harm you. ~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 21
END

IF ~~ THEN BEGIN 453 // from:
  SAY #55672 /* ~Oh? Is that what those retching noises were? I thought that perhaps there was a wounded seal somewhere onboard giving birth.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 118
END

IF ~~ THEN BEGIN 454 // from:
  SAY #55677 /* ~Okay, I'm not quite so concerned about this little freak. Rule as you will, little tyrant, just as long as it is from a cell.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 23
END

IF ~~ THEN BEGIN 455 // from:
  SAY #55686 /* ~I suppose we could expect no less from a simple pirate. Begone with you then, scoundrel. No doubt you would only bring us more trouble here than we need.~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 34
END

IF ~~ THEN BEGIN 456 // from:
  SAY #55693 /* ~These are the same creatures we fought when we entered the lair of the vampire that was aligned against your own guild. Bodhi must be nearby indeed.~ */
  IF ~~ THEN EXTERN ~PPSIME~ 7
END

IF ~~ THEN BEGIN 457 // from:
  SAY #55698 /* ~Do you spend all your time in the guise of others, child? Do you not take solace in the balance of your true self?~ */
  IF ~~ THEN EXTERN ~PPDILI~ 4
END

IF ~~ THEN BEGIN 458 // from:
  SAY #55726 /* ~War? War amongst the elves? What could that mean? How could even Irenicus start such a thing? That would bring nothing but ruin!~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 38
END

IF ~~ THEN BEGIN 459 // from:
  SAY #55740 /* ~As much as I should not trust his advice, he may have a point, <CHARNAME>. There are powerful mages above who may be the difference between life and death.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 265
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 106
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 129
END

IF ~~ THEN BEGIN 460 // from:
  SAY #55779 /* ~What revenge do *you* have, wizard? You killed my Khalid with no more thought than one would give to a fly! I shall have *my* revenge! Nature's fury shall strike you down!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPIRENI2~ 60
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 19
END

IF ~~ THEN BEGIN 461 // from:
  SAY #55788 /* ~You think us fools?! You knew your ship was scuttled when you first spoke to us, didn't you?! You seek to use us somehow!~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 462 // from:
  SAY #55809 /* ~She sees the universe unrestricted. It is amazing that she manages to be as lucid as she is.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 110
END

IF ~~ THEN BEGIN 463 // from:
  SAY #55813 /* ~And what would you have to do with that, Edwin? Perhaps if ego were all that was required.~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 111
END

IF ~~ THEN BEGIN 464 // from:
  SAY #55821 /* ~I should have known. Once again your peculiar destiny has drawn us into something, <CHARNAME>. Even the shark gods flounder in anticipation of your arrival.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 13
END

IF ~~ THEN BEGIN 465 // from:
  SAY #55840 /* ~I have never known you to be so judgmental, paladin. Surely you do not label all sahuagin so? Condemn them all to death and you are no better than they.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 199
END

IF ~~ THEN BEGIN 466 // from:
  SAY #55859 /* ~Must it come to slaughter, sahuagin? Your priestesses speak of your entire people needing your blood... Have you attempted to resolve this with the king peacefully?~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 18
END

IF ~~ THEN BEGIN 467 // from:
  SAY #55876 /* ~Well, Viconia. It would seem you carry less weight than you thought. He questions your worth, rightfully so.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 81
END

IF ~~ THEN BEGIN 468 // from:
  SAY #55889 /* ~A most underhanded maneuver, <CHARNAME>. Although I am sure it is no less than Phaere might have planned for us. There is an ironic justice in this, no?~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("Cut44r",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 139
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 200
END

IF ~~ THEN BEGIN 469 // from:
  SAY #55895 /* ~So... a war? Open battle between the drow and the surface has not occurred in... eons. With a greater demon to back them... I truly wonder why Irenicus would do this. ~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN 470 // from:
  SAY #55913 /* ~You would commit such a sacrilege against nature?! Had I known, I would never have accompanied you! No, I will not let this be!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 471 // from:
  SAY #55921 /* ~As much as I despise this form, it does seem to have captivated our friend here. He seems fearful.~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 15
END

IF ~~ THEN BEGIN 472 // from:
  SAY #55934 /* ~Despite what she says, <CHARNAME>, we may be able to use this situation to our advantage. Perhaps there is no need to kill Solaufein. Consider this, at least.~ */
  IF ~~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 473 // from:
  SAY #55948 /* ~Drow roaming the surface, even the most noble, should expect an occasional misunderstanding. I am sure this can be worked out, <CHARNAME>... I suggest you try.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~C6DRIZZ1~ 2
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 272
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 145
END

IF ~~ THEN BEGIN 474 // from:
  SAY #55966 /* ~This drow is well respected by the Harpers, <CHARNAME>. I will not assist you fighting him. I will return to Athkatla; consider your idiocy before we speak again.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Viconia")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0300",1257,3007,SE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0300",1257,3007,SE)
~ EXTERN ~MINSCJ~ 172
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Viconia")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0300",1257,3007,SE)
~ EXTERN ~VICONIJ~ 146
END

IF ~~ THEN BEGIN 475 // from:
  SAY #55997 /* ~An excellent idea, <CHARNAME>. Adding Drizzt and his companions to our battle against Bodhi will certainly tip the scales. You show great wisdom.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 206
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 150
END

IF ~~ THEN BEGIN 476 // from:
  SAY #56009 /* ~I know of this one, <CHARNAME>, from the Harpers. A drow of good alignment and heroic reputation. He is deserving of respect.~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~C6BRUEN1~ 8
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 118
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 139
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 173
END

IF ~~ THEN BEGIN 477 // from:
  SAY #56041 /* ~A fine sentiment, Cernd, though we may be forced into more trouble than we wish.~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 116
END

IF ~~ THEN BEGIN 478 // from:
  SAY #56080 /* ~That was close. We must make an effort to act as we appear.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 123
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~KORGANJ~ 149
  IF ~  IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~AERIEJ~ 158
END

IF ~~ THEN BEGIN 479 // from:
  SAY #56083 /* ~The Seldarine? The collection of elven gods led by Corellon Larethian? How would he ever propose to join such ranks? Mad! Mad!~ */
  IF ~~ THEN EXTERN ~SUAVATAR~ 6
END

IF ~~ THEN BEGIN 480 // from:
  SAY #56085 /* ~Your soul is borrowed, and it shall be returned. You are a blight upon nature, and you shall be destroyed!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 176
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 30
END

IF ~~ THEN BEGIN 481 // from:
  SAY #56087 /* ~Edwin, in some another time... some other place, such a comment would get you a beating of mythic proportions. It may yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 482 // from:
  SAY #56111 /* ~No more platitudes, Irenicus. You have taken much from all of us. Now you die your final death!~ [JAHEIRD2] */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 483 // from:
  SAY #56130 /* ~<CHARNAME>! I will not let you do this! You will not murder those that beg for aid! Who will follow me?!~ */
  IF ~~ THEN REPLY #56131 /* ~Do what you must! I have made my decision!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ SOLVED_JOURNAL #57768 /* ~Svirfneblin village concerns

I spoke with Goldander Blackenrock, lord of the svirfneblin village. His pompous title revealed the shallow nature of his needs. He spoke of a means that I might enter the drow city: by enlisting the aid of Adalon, a powerful creature that holds court at the base of the great staircase. Goldander wanted me to first perform a service for his village, defeating some creature that they had unearthed, and he offered to grant me access to Adalon as a reward, giving me a glow stone or some such so that I could pass through the darkness that protects her lair. I cut out the middleman and killed the lot of them.~ */ EXIT
  IF ~~ THEN REPLY #56132 /* ~All right, I won't kill him then. Yeesh.~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 484 // from:
  SAY #56154 /* ~It would appear that neither of us have much of a choice in the matter. We must trust one another.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 17
END

IF ~~ THEN BEGIN 485 // from:
  SAY #56162 /* ~Of course, my Lady Adalon. <CHARNAME>, do keep quiet.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 15
END

IF ~~ THEN BEGIN 486 // from:
  SAY #56165 /* ~It is unfortunate that they did not offend you in some way. We might have been spared the headache of this journey if they had to face an angry silver.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 17
END

IF ~~ THEN BEGIN 487 // from:
  SAY #56174 /* ~To become such a hated thing... I do not look forward to that. ~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~UDSILVER~ 26
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 164
END

IF ~~ THEN BEGIN 488 // from:
  SAY #56176 /* ~You should have made more of an effort. We have an obligation to destroy you, as if we needed more reasons.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 489 // from:
  SAY #56413 /* ~Knock him on the head? It is obvious this lout has no compassion for others and no inclination of how nature must be protected. Ignore him, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~TREVIL01~ 16
END

IF ~~ THEN BEGIN 490 // from:
  SAY #56417 /* ~<CHARNAME>, you can't seriously consider poisoning this font. If there is evil there, we must cleanse it. To destroy it is sacrilege! I will not allow it!~ */
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

IF ~~ THEN BEGIN 491 // from:
  SAY #56425 /* ~No, <CHARNAME>, no! This is evil! You poison nature itself! I shall not partake in this... who stands with me?!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ EXTERN ~TREVIL02~ 6
  IF ~  OR(2)
Dead("trevil02")
!See("trevil02")
~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ EXTERN ~CEFALD04~ 4
END

IF ~~ THEN BEGIN 492 // from:
  SAY #56453 /* ~These people are slaves, mentally as well as physically, controlled despite themselves. All we can offer them, unfortunately, is a quick death.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 493 // from:
  SAY #56457 /* ~There are many who easily sidestep laws through wealth. Perhaps, in this case, it would be best to see why the law has failed so.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~ANOMENJ~ 52
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 188
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 165
END

IF ~~ THEN BEGIN 494 // from:
  SAY #56461 /* ~The law may not be able to do anything, Anomen, but such men as this Saerk always trip over their own schemes. If he is responsible, he will pay, as you say.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~ANOMENJ~ 177
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 134
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 94
END

IF ~~ THEN BEGIN 495 // from:
  SAY #56465 /* ~Too many of the wealthy escape justice, yes. If you are sure that Saerk is responsible for the death of your sister, then we must ensure he pays dearly!~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 132
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 166
END

IF ~~ THEN BEGIN 496 // from:
  SAY #56470 /* ~By... by the gods! You foolish man! Can you say that this young woman was a murderer as well?! You have murdered an innocent!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 497 // from:
  SAY #56474 /* ~I have the feeling we are intruding on a very private matter, <CHARNAME>. I feel uncomfortable with our intrusion; perhaps we should leave...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 22
END

IF ~~ THEN BEGIN 498 // from:
  SAY #56481 /* ~A fair line easily used by servants of the wizard themselves. We have been imprisoned and worse, and given many reasons to distrust strangers we encounter.~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 1
END

IF ~~ THEN BEGIN 499 // from:
  SAY #56487 /* ~You have extorted a payment from Raelis in return for our help, <CHARNAME>. I do not agree with this decision... it smacks of selfish greed.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 231
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 167
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 176
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 500 // from:
  SAY #56498 /* ~We must be calm, <CHARNAME>. Vengeance will only bring conflict with the guard. To help Nalia, we must prove that our cause is just... there is no other way.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut39a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 501 // from:
  SAY #56508 /* ~A mind flayer? Here? A spy perhaps, using its psionic powers to keep its secret. Strange that Jan's mad uncle should be aware of its presence.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 502 // from:
  SAY #56516 /* ~You speak as if unaware of class distinction, and yet your manner exudes it. A sign of immaturity... perhaps adventuring is not the place for you.~ */
  IF ~~ THEN EXTERN ~NALIA~ 66
END

IF ~~ THEN BEGIN 503 // from:
  SAY #56517 /* ~You speak as if unaware of class distinction, and yet your manner exudes it. A sign of immaturity... good, then, that <CHARNAME> is sending you ahead. ~ */
  IF ~~ THEN EXTERN ~NALIA~ 53
END

IF ~~ THEN BEGIN 504 // from:
  SAY #56528 /* ~You dare reprimand those who have died defending you? Even now they strive to protect you from evil you don't even understand! You could have been dead!~ */
  IF ~~ THEN EXTERN ~DELCIA~ 39
END

IF ~~ THEN BEGIN 505 // from:
  SAY #56551 /* ~I have no fear for his well-being, monster.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 13
END

IF ~~ THEN BEGIN 506 // from:
  SAY #56877 /* ~Where? Where exactly is it being put to good use? We are not to be played with, Linvail. I should like to see results, and I should like to see them soon.~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 507 // from:
  SAY #56899 /* ~Oh, how generous. Do you expect that to compensate while you delay our more important concerns? We have friends in need of rescue and vengeance both!~ */
  IF ~~ THEN EXTERN ~ARAN~ 52
END

IF ~~ THEN BEGIN 508 // from:
  SAY #56906 /* ~And vengeance!~ */
  IF ~~ THEN EXTERN ~ARAN~ 54
END

IF ~~ THEN BEGIN 509 // from:
  SAY #57066 /* ~I see. You must be the rogue, Jarlaxle, that was mentioned to us, yes?~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 1
END

IF ~~ THEN BEGIN 510 // from:
  SAY #57396 /* ~A poor thing, <CHARNAME>. We could have done better by these people with minimal effort. It is a better fate than what the drow had in store, however.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 511 // from:
  SAY #57455 /* ~No. "Veldrin" would not be interested in such diversions, male. I... as a female, I command you to stand away from him. Slug.~ */
  IF ~~ THEN EXTERN ~DADROW21~ 3
END

IF ~~ THEN BEGIN 512 // from:
  SAY #57903 /* ~Yes, declare your loyalty, Viconia. When you eventually betray us, I will hold your statement up as proof of the untrustworthy nature of your kind.~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 205
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 133
END

IF ~~ THEN BEGIN 513 // from:
  SAY #57911 /* ~Cernd, I would normally bow to your wisdom, but in this matter, I think you are... mistaken. I make no protest; I merely wish to state my opinion.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 120
END

IF ~~ THEN BEGIN 514 // from:
  SAY #58132 /* ~We are bought off yet again. I do not deny that they are the best chance we have to find our quarry, but we had best do their little chores quickly.~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 181
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 206
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 134
END

IF ~~ THEN BEGIN 515 // from:
  SAY #58133 /* ~Thank you for your opinion, Korgan. I'll just place it over here where it can collect flies all on its own.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 182
END

IF ~~ THEN BEGIN 516 // from:
  SAY #58164 /* ~You baffle me sometimes, Cernd, but I bow to your wisdom on this matter.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 517 // from:
  SAY #58186 /* ~Not just thieves, but traitorous thieves. Our associations sink ever lower in Aran's service. Let's get this over with.~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 184
END

IF ~~ THEN BEGIN 518 // from:
  SAY #58187 /* ~I have heard some in the Harpers speak of it. It is more than a prison or supposed asylum; it is a place to forget people that are "troublesome."~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 519 // from:
  SAY #58198 /* ~Long ago, I promised to assist you if your adopted father fell. That promise has not expired, nor has your worthiness. I stand with you if you will have me.~ */
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
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
END

IF ~~ THEN BEGIN 520 // from:
  SAY #58247 /* ~It is not necessary to say anything, <CHARNAME>. I know what comes next... I know what may happen. To either of us.~ */
  IF ~~ THEN GOTO 521
END

IF ~~ THEN BEGIN 521 // from: 520.0
  SAY #58248 /* ~We have been through too much to let that stop what you must do. For all the pain that losing Khalid brought... I would not give up our years of good works.~ */
  IF ~~ THEN GOTO 522
END

IF ~~ THEN BEGIN 522 // from: 521.0
  SAY #58249 /* ~Let us regain your soul and make you whole again. And what comes after... comes after. I look forward to it... should the gods prove willing.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN 523 // from:
  SAY #58518 /* ~No, Valygar, we shall not give up on you. The Cowled Wizards believe much if they think to use everyone as they wish. You will receive nothing this day, mage!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 81
END

IF ~~ THEN BEGIN 524 // from:
  SAY #58719 /* ~You will hear the name "traitor" many more times today, Yoshimo, but let me be the first among the group to spit it at you! ~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
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
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 182
  IF ~  !IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 192
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~ANOMENJ~ 306
  IF ~  IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
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
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 525 // from: 110.0
  SAY #60891 /* ~I no more want the trip than you do, so I will not force and I will not leave, but I cannot rest easy until we go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 526 // from: 175.0
  SAY #60892 /* ~If you wish, Dermin, you may return whence you came with the message that "Jaheira the Harper" is dead.~ */
  IF ~~ THEN EXTERN ~JADERMIN~ 13
END

IF ~~ THEN BEGIN 527 // from: 10.0
  SAY #60893 /* ~Perhaps we will meet again, but I shall not look forward to it!~ */
  IF ~~ THEN DO ~SetGlobal("SawKhalid","AR0603",1)
SetGlobal("JaheiraHunt","GLOBAL",1)
LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("PostCutSpeak","AR0700",1)
~ THEN BEGIN 528 // from:
  SAY #61015 /* ~I find it odd that this Irenicus would leave of his own volition. And why take Imoen when it is <CHARNAME> he is so obviously interested in? Perhaps he expects us to give chase?~ */
  IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)
~ GOTO 529
END

IF ~~ THEN BEGIN 529 // from: 528.0
  SAY #61016 /* ~We must step carefully then. We know little about him... whom he was fighting, who took him, or even where we are. We seem to be drawn into machinations not of our own making.~ */
  IF ~  OR(3)
!InParty("Minsc")
Dead("Minsc")
StateCheck("Minsc",STATE_SLEEPING)
OR(3)
!InParty("Yoshimo")
Dead("Yoshimo")
StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXIT
  IF ~  InParty("Minsc")
!Dead("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
~ THEN EXTERN ~MINSCJ~ 240
  IF ~  OR(3)
!InParty("Minsc")
Dead("Minsc")
StateCheck("Minsc",STATE_SLEEPING)
InParty("Yoshimo")
!Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXTERN ~YOSHJ~ 149
END

IF ~~ THEN BEGIN 530 // from:
  SAY #61018 /* ~Do not be foolish, Minsc. We must know our enemies... and the extent of our danger here... before we rush into anything.~ */
  IF ~  OR(3)
!InParty("Yoshimo")
Dead("Yoshimo")
StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXIT
  IF ~  InParty("Yoshimo")
!Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXTERN ~YOSHJ~ 146
END

IF ~~ THEN BEGIN 531 // from:
  SAY #70524 /* ~Interesting. A god was forced to deal with your Imprisoned One? No ordinary apparition, this.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 532 // from:
  SAY #70541 /* ~You may feel pity for yourself and justify your failure however you wish, Odren, but you attempted to murder us. I am surprised Helm does not turn away from you for such an affront.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 533 // from:
  SAY #70413 /* ~The natural order will scream in protest should this demon prince be allowed to walk freely through the realms. To preserve the balance, we must imprison the creature—or send it back to the Abyss.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
END

IF ~~ THEN BEGIN 534 // from:
  SAY #70507 /* ~That is unworthy of you, Haer'Dalis. The lives of men hang in the balance.~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 157
END

IF ~~ THEN BEGIN 535 // from:
  SAY #70435 /* ~I suspect this apparition's sense of duty is going to make our task more difficult.~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 536 // from:
  SAY #70439 /* ~As I feared, <CHARNAME>... we must prove our worth to this spirit before we can complete this quest.~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 47
END

IF ~~ THEN BEGIN 537 // from:
  SAY #74583 /* ~You can't work with such as this, <CHARNAME>. Have you forgotten all that Gorion taught you? ~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74584 /* ~Not all of it, Jaheira. But Gorion is gone. I am my own <PRO_MANWOMAN> now.~ */ EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74584 /* ~Not all of it, Jaheira. But Gorion is gone. I am my own <PRO_MANWOMAN> now.~ */ EXTERN ~DORN~ 22
  IF ~  IsValidForPartyDialogue("Haerdalis")
~ THEN EXTERN ~HAERDAJ~ 160
END

IF ~~ THEN BEGIN 538 // from:
  SAY #74809 /* ~Take a moment and think, <CHARNAME>. What would Gorion say about this pointless bloodshed?~ */
  IF ~~ THEN REPLY #74810 /* ~If he were alive, I'd never hear the end of it. As it is, not much.~ */ EXTERN ~OHDBRIDE~ 0
  IF ~~ THEN REPLY #74811 /* ~I'll be sure to ask him next time we meet.~ */ EXTERN ~OHDBRIDE~ 0
  IF ~~ THEN REPLY #74812 /* ~No more half measures, <CHARNAME>.~ */ EXTERN ~OHDBRIDE~ 0
END

IF WEIGHT #32 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 539 // from:
  SAY #75712 /* ~Careful, <CHARNAME>. We want to walk into the gorge, not fall into it.~ */
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
IsValidForPartyDialogue("dorn")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
IsValidForPartyDialogue("viconia")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
IsValidForPartyDialogue("valygar")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
IsValidForPartyDialogue("minsc")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~MINSCJ~ 252
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
IsValidForPartyDialogue("mazzy")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~MAZZYJ~ 208
  IF ~  !IsValidForPartyDialogue("jan")
!IsValidForPartyDialogue("keldorn")
IsValidForPartyDialogue("korgan")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~KORGANJ~ 234
  IF ~  !IsValidForPartyDialogue("jan")
IsValidForPartyDialogue("keldorn")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~KELDORJ~ 265
  IF ~  IsValidForPartyDialogue("jan")
~ THEN REPLY #75713 /* ~I can take care of myself, Jaheira. Take care that you do the same.~ */ EXTERN ~JANJ~ 192
END

IF ~~ THEN BEGIN 540 // from:
  SAY #77110 /* ~Beware, <CHARNAME>. You cannot trust a tanar'ri.~ */
  IF ~~ THEN EXTERN ~OHDXACH~ 22
END

IF WEIGHT #33 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 541 // from:
  SAY #96641 /* ~You disappoint me more than I could ever say. I am glad Gorion is not around to see this.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
  IF ~  IsValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 3
  IF ~  IsValidForPartyDialogue("neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~NEERAJ~ 19
END

IF WEIGHT #34 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("OHD_jaheiraconflict","GLOBAL",2)
~ THEN BEGIN 542 // from:
  SAY #100114 /* ~<CHARNAME>, do you think it wise to spend so much time with Dorn? He seems to have taken an unhealthy interest in you.~ */
  IF ~~ THEN REPLY #100120 /* ~Oh, I think it's quite healthy.~ */ DO ~SetGlobal("OHD_jaheiraconflict","GLOBAL",3)
~ GOTO 543
  IF ~~ THEN REPLY #100121 /* ~Wise? No. But fun.~ */ DO ~SetGlobal("OHD_jaheiraconflict","GLOBAL",3)
~ GOTO 544
  IF ~~ THEN REPLY #100122 /* ~Is it any business of yours?~ */ DO ~SetGlobal("OHD_jaheiraconflict","GLOBAL",3)
~ GOTO 543
END

IF ~~ THEN BEGIN 543 // from: 542.2 542.0
  SAY #100115 /* ~He is not to be trusted. ~ */
  IF ~~ THEN GOTO 544
END

IF ~~ THEN BEGIN 544 // from: 543.0 542.1
  SAY #100116 /* ~He is a murderous half-orc with an unquenchable bloodlust. He is incapable of the feelings you and I possess.~ */
  IF ~~ THEN REPLY #100123 /* ~I'll make my own decisions, Jaheira.~ */ GOTO 545
  IF ~~ THEN REPLY #100124 /* ~I don't have feelings for him, if that's what you're asking.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 546
  IF ~~ THEN REPLY #100125 /* ~Dorn and I are alike in more ways than one. ~ */ GOTO 545
END

IF ~~ THEN BEGIN 545 // from: 544.2 544.0
  SAY #100117 /* ~If you intend to take up with a barbaric half-orc, I must end this.~ */
  IF ~~ THEN REPLY #100126 /* ~Then it's fortunate I have no such intention.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 546
  IF ~~ THEN REPLY #100127 /* ~End it, then. ~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ GOTO 547
END

IF ~~ THEN BEGIN 546 // from: 545.0 544.1
  SAY #100118 /* ~I am relieved to hear that, <CHARNAME>. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 547 // from: 545.1
  SAY #100119 /* ~I am glad Gorion did not live to see this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 548 // from:
  SAY #81447 /* ~An evil one.~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 65
END

IF ~~ THEN BEGIN 549 // from:
  SAY #89488 /* ~Ha. My advice has the virtue of being in the common tongue, at least. And I can take the shape of a bear when I please.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 209
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 827
END

IF ~~ THEN BEGIN 550 // from:
  SAY #87844 /* ~We must proceed with caution. The Red Wizards are devious. They will expect retaliation.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 132
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 828
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 210
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KELDORJ~ 287
END

IF ~~ THEN BEGIN 551 // from:
  SAY #89527 /* ~Refusing to engage with him further was wise. I sense that he is a part of the magic that infects this forest.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 73
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 200
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 237
END

IF ~~ THEN BEGIN 552 // from:
  SAY #88081 /* ~Animals should be wild, not kept as pets by wandering heroes. Tell Barad the gift is appreciated but inappropriate.~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 201
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 246
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 259
END

IF ~~ THEN BEGIN 553 // from:
  SAY #88457 /* ~The half-elf's magic may represent a threat to the balance, but I think she would do less harm with us than without us.~ */
  IF ~~ THEN EXTERN ~NEERA~ 22
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 165
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 135
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 846
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 353
END

IF ~~ THEN BEGIN 554 // from:
  SAY #65916 /* ~It is my choice as much as his, Gorion... though I doubt that is truly who you are.~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 555 // from:
  SAY #65964 /* ~Khalid? No... this cannot be...~ [JAHE2526] */
  IF ~~ THEN EXTERN ~LOVEONE2~ 1
END

IF ~~ THEN BEGIN 556 // from:
  SAY #65969 /* ~Khalid would not say such a thing! I did not kill him. I did not!~ [JAHE2527] */
  IF ~~ THEN EXTERN ~LOVEONE2~ 2
END

IF ~~ THEN BEGIN 557 // from:
  SAY #65973 /* ~No! No, my Khalid... do not think that! I loved you, but you were gone! Gone!~ [JAHE2528] */
  IF ~~ THEN EXTERN ~LOVEONE2~ 3
END

IF ~~ THEN BEGIN 558 // from:
  SAY #65978 /* ~No! This is not real. Khalid would know... he would know what I felt! *sob* What I always felt! <CHARNAME>, make this stop!~ [JAHE2529] */
  IF ~~ THEN REPLY #65980 /* ~Khalid, stop this! She's not responsible for what happened to you!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #65981 /* ~Stop this, Gorion! She doesn't deserve this!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #65982 /* ~Enough! I won't allow this to continue!~ */ EXTERN ~HGWRA01~ 25
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #65983 /* ~Don't you believe it, Jaheira! It isn't real!~ */ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 559 // from:
  SAY #67750 /* ~Alas, your desire to be what you are not counts for little; that door is closed to you now. You cannot escape your fate... you must learn to accept it.~ */
  IF ~~ THEN EXTERN ~SARBHA02~ 2
END

IF ~~ THEN BEGIN 560 // from:
  SAY #67771 /* ~When we offer our heart to another, we are vulnerable to such disappointments. You must not torture yourself over the past, Sister... you must accept your mistakes and move on.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~SARTEM01~ 3
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 435
END

IF ~~ THEN BEGIN 561 // from:
  SAY #67920 /* ~It seems my promise to Gorion is at last at an end. It will be... difficult to watch you move on to a higher state of being, if that is where you choose to go. But you hardly need my guidance any longer.~ [JAHE2511] */
  IF ~~ THEN GOTO 562
END

IF ~~ THEN BEGIN 562 // from: 561.0
  SAY #67921 /* ~I only pray you make the decision that is right for you, <CHARNAME>. Even Gorion would ask you to do no less.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 365
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 438
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 248
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 364
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 436
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 246
END

IF ~~ THEN BEGIN 563 // from:
  SAY #67933 /* ~So. It seems we have finally reached the end of your quest. What comes next... could change you forever and dictate your... our future.~ [JAHE2510] */
  IF ~~ THEN REPLY #67934 /* ~What do you think I should do?~ */ GOTO 564
  IF ~~ THEN REPLY #67935 /* ~I don't want to leave you behind, Jaheira. I love you.~ */ GOTO 570
  IF ~~ THEN REPLY #67936 /* ~I'm sorry. I feel I have no choice but to go forward, to accept my birthright.~ */ GOTO 571
  IF ~~ THEN REPLY #67937 /* ~What do you want, Jaheira? What future do you see for us?~ */ GOTO 564
END

IF ~~ THEN BEGIN 564 // from: 563.3 563.0
  SAY #67938 /* ~I have pondered that question at your every move. With all that has been learned, I don't know where we would go next. I don't know where we could go.~ */
  IF ~~ THEN GOTO 565
END

IF ~~ THEN BEGIN 565 // from: 570.0 564.0
  SAY #67940 /* ~I do know this: There is no place for me at your side if you accept the power. It would be... hard... to lose you, just as hard as it was to say goodbye to... to Khalid.~ */
  IF ~~ THEN GOTO 566
END

IF ~~ THEN BEGIN 566 // from: 571.0 565.0
  SAY #67941 /* ~Bastards... both of you, to do this to me. I knew this would...~ */
  IF ~~ THEN REPLY #69514 /* ~Jaheira.~ */ GOTO 567
END

IF ~~ THEN BEGIN 567 // from: 566.0
  SAY #67942 /* ~*ahem* I knew this would happen, that I would lose you. Not that I could see this coming, of course. Seems the gods themselves conspire to... to...~ */
  IF ~~ THEN GOTO 568
END

IF ~~ THEN BEGIN 568 // from: 567.0
  SAY #67943 /* ~This is ridiculous. This is not about me. This is about you. I won't ask you to stay. I won't make your choice for you. You worked for this, fought through so much...~ */
  IF ~~ THEN REPLY #69515 /* ~With you at my side.~ */ GOTO 569
  IF ~~ THEN REPLY #69516 /* ~And now there is no turning back.~ */ GOTO 569
  IF ~~ THEN REPLY #69517 /* ~What am I supposed to do? This seems so unreal...~ */ GOTO 569
END

IF ~~ THEN BEGIN 569 // from: 568.2 568.1 568.0
  SAY #67944 /* ~If it is important, then go. I will not have you stay and regret it later. I will not be the great mistake that forever follows you. I have... too many of those to wish them on another.~ */
  IF ~~ THEN GOTO 574
END

IF ~~ THEN BEGIN 570 // from: 563.1
  SAY #67946 /* ~I... Strange, isn't it? After all we have faced, these few words scare me more than anything. It's just that... I don't know if we could have a normal life after all of this.~ */
  IF ~~ THEN GOTO 565
END

IF ~~ THEN BEGIN 571 // from: 563.2
  SAY #67947 /* ~I... thought as much. You have a destiny greater than anything I might offer, and I do not begrudge you for it. So I... lose you forever, just as I lost my... Khalid.~ */
  IF ~~ THEN GOTO 566
END

IF ~~ THEN BEGIN 572 // from:
  SAY #68083 /* ~So this is it. I... wish you well. Maybe... maybe someday... oh, well... I doubt this is the last we've heard of you...~ [JAHE2522] */
  IF ~~ THEN REPLY #69534 /* ~Goodbye.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~FINSOL01~ 33
  IF ~~ THEN REPLY #69535 /* ~Count on it.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~FINSOL01~ 33
  IF ~~ THEN REPLY #69536 /* ~Jaheira... I'm sorry.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 573 // from:
  SAY #68086 /* ~Wh... what?~ [JAHE2519] */
  IF ~~ THEN REPLY #69528 /* ~What do you mean, "what?" I'm staying. I'm staying, and you'll never get rid of me.~ */ GOTO 576
  IF ~~ THEN REPLY #69529 /* ~All that power... the gods... that's somewhere else. You are here... real, and I'm not leaving.~ */ GOTO 576
  IF ~~ THEN REPLY #69530 /* ~I didn't want it. That's all. We'll see what happens.~ */ GOTO 575
END

IF ~~ THEN BEGIN 574 // from: 569.0
  SAY #69518 /* ~Go. Do what you must. I... I love you. (Jaheira kisses you, and then turns away, resigned to the decision she feels you have already made.)~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 575 // from: 573.2
  SAY #69519 /* ~Yes... *ahem*... I—I suppose we shall see. ~ [JAHE2521] */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 576 // from: 573.1 573.0
  SAY #69531 /* ~Oh my... I, um... what can I say?~ [JAHE2520] */
  IF ~~ THEN REPLY #69532 /* ~Nothing. Nothing at all.~ */ EXTERN ~FINSOL01~ 33
  IF ~~ THEN REPLY #69533 /* ~Just smile. That's enough.~ */ EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 577 // from:
  SAY #70388 /* ~The fact that these men know you by mere sight worries me, <CHARNAME>. Tread with care—our every move is being closely watched.~ */
  IF ~~ THEN EXTERN ~AMMONK02~ 4
END

IF ~~ THEN BEGIN 578 // from:
  SAY #70413 /* ~The natural order will scream in protest should this demon prince be allowed to walk freely through the realms. To preserve the balance, we must imprison the creature—or send it back to the Abyss.~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
END

IF ~~ THEN BEGIN 579 // from:
  SAY #70435 /* ~I suspect this apparition's sense of duty is going to make our task more difficult.~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 580 // from:
  SAY #70439 /* ~As I feared, <CHARNAME>... we must prove our worth to this spirit before we can complete this quest.~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 162
END

IF ~~ THEN BEGIN 581 // from:
  SAY #70440 /* ~Sarevok! By the sacred oaths of Silvanus, is there no end to you?! Must your foulness be stamped out only to return evermore? What can you want with us?!~ */
  IF ~  True()
~ THEN EXTERN ~SAREV25A~ 68
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 265
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 212
END

IF ~~ THEN BEGIN 582 // from:
  SAY #70476 /* ~Sarevok lives again? A foul act that spits on everything that is natural! I know you have your reasons, <CHARNAME>, but I... I will never agree with this.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 39
END

IF ~~ THEN BEGIN 583 // from:
  SAY #70478 /* ~You... you were unsure?! How *dare* you place <CHARNAME>'s immortal soul at risk for your gain! I should kill you for such an affront!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 42
END

IF ~~ THEN BEGIN 584 // from:
  SAY #70483 /* ~Bring him if you wish. It is your mistake to make. I refuse to acknowledge his existence.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 296
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 172
END

IF ~~ THEN BEGIN 585 // from:
  SAY #70507 /* ~That is unworthy of you, Haer'Dalis. The lives of men hang in the balance.~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 174
END

IF ~~ THEN BEGIN 586 // from:
  SAY #70524 /* ~Interesting. A god was forced to deal with your Imprisoned One? No ordinary apparition, this.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 587 // from:
  SAY #70541 /* ~You may feel pity for yourself and justify your failure however you wish, Odren, but you attempted to murder us. I am surprised Helm does not turn away from you for such an affront.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 588 // from:
  SAY #71306 /* ~Such jesting is offensive and in poor taste, <CHARNAME>.~ */
  IF ~~ THEN REPLY #71309 /* ~I'm sorry, my love... I was just trying to lighten the grim mood.~ */ GOTO 589
  IF ~~ THEN REPLY #71310 /* ~I find this woman's offer much more interesting than your affections, Jaheira!~ */ GOTO 590
END

IF ~~ THEN BEGIN 589 // from: 588.0
  SAY #71325 /* ~Perhaps... perhaps I overreacted, my love. Jealousy is never becoming, I know. Should we give this young woman some coin so she is not forced to prostitute herself anymore?~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 3
END

IF ~~ THEN BEGIN 590 // from: 588.1
  SAY #71328 /* ~You are despicable, <CHARNAME>! I cannot believe I let myself love you! Rest assured, that mistake shall no longer be a problem! Go with this tramp if that is what you want!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXTERN ~SARPRO01~ 12
END

IF ~~ THEN BEGIN 591 // from:
  SAY #71345 /* ~I would not normally approve of this, <CHARNAME>, but I sense this is more than a simple sex for money deal. Perhaps this woman has information she wishes to reveal in private. Go with her... but be careful.~ */
  IF ~~ THEN EXTERN ~SARPROVF~ 1
END

IF ~~ THEN BEGIN 592 // from:
  SAY #71448 /* ~<CHARNAME>! As a Harper, I cannot condone these horrible acts! I... I can no longer stay by your side!~ */
  IF ~  True()
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KORGANJ~ 260
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~VICONIJ~ 462
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~EDWINJ~ 218
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 303
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 219
END

IF ~~ THEN BEGIN 593 // from:
  SAY #71628 /* ~Well, at least the balance was mentioned. So long as your tale does not turn into some tawdry bundle of lies existing solely to titillate the common reader, perhaps your relation of <CHARNAME>'s tale will have some merit, Volo.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 38
END

IF ~~ THEN BEGIN 594 // from:
  SAY #71630 /* ~Hmph. Not even an attempt to feign honesty, is it? No wonder Elminster speaks so highly of you. I shall have to see this work of yours once it is done... I so wonder if <CHARNAME> will even be recognizable.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 39
END

IF ~~ THEN BEGIN 595 // from:
  SAY #72359 /* ~<CHARNAME>! As a Harper, I cannot condone these horrible acts! I will defend this woman with my life! To my side, all who serve the cause of justice!~ */
  IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 596 // from:
  SAY #72450 /* ~Murder for hire? <CHARNAME>, this goes against everything I stand for.~ */
  IF ~~ THEN REPLY #72451 /* ~Relax, Jaheira. We haven't even done anything yet.~ */ GOTO 597
  IF ~~ THEN REPLY #72452 /* ~I call the shots around here, Harper! Or did I miss a vote where we decided you were in charge?~ */ GOTO 598
END

IF ~~ THEN BEGIN 597 // from: 596.0
  SAY #72453 /* ~You are right, <CHARNAME>. I will judge you by what you actually do, not what I fear you might do.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 34
END

IF ~~ THEN BEGIN 598 // from: 596.1
  SAY #72454 /* ~You... you are not the <PRO_MANWOMAN> I thought you were, <CHARNAME>. I can no longer stay by your side. ~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~SARKIS01~ 34
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 308
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 223
END

IF ~~ THEN BEGIN 599 // from:
  SAY #72577 /* ~Truly, <CHARNAME>, I am amazed. Rarely have I ever seen anyone so obviously in over their foolish heads as this young trio.~ */
  IF ~~ THEN EXTERN ~BAZPAT01~ 2
END

IF WEIGHT #35 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("OHR_FINALE","GLOBAL",16)
Global("OHR_CUT","OH4230",1)
~ THEN BEGIN 600 // from:
  SAY #83132 /* ~She's a shadow dragon!~ */
  IF ~~ THEN EXTERN ~OHRYXTRA~ 1
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 927
END

IF WEIGHT #36 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 601 // from:
  SAY #83158 /* ~We cannot remain here, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 182
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 275
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 222
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 160
END

IF WEIGHT #37 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  AreaCheck("OH4220")
Global("OHR_FINALE","GLOBAL",24)
~ THEN BEGIN 602 // from:
  SAY #83250 /* ~For us, perhaps. For the dwarves, it's just begun.~ */
  IF ~~ THEN EXTERN ~OHRDWS01~ 11
  IF ~  StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS02~ 6
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 849
END

IF WEIGHT #38 /* Triggers after states #: 606 607 608 609 610 611 even though they appear after this state */
~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 603 // from:
  SAY #92234 /* ~That was an adventure straight from the pages of legend. Let's not have another like it ever again.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 224
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 274
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
END

IF ~~ THEN BEGIN 604 // from:
  SAY #85671 /* ~Keep your hands to yourself, Jan. The only thing you and this place promise is a series of devastating explosions.~ */
  IF ~~ THEN EXTERN ~JANJ~ 226
END

IF ~~ THEN BEGIN 605 // from:
  SAY #85765 /* ~Such a creature cannot be trusted.~ */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1068
END

IF WEIGHT #9 /* Triggers after states #: 608 609 610 611 even though they appear after this state */
~  False()
~ THEN BEGIN 606 // from:
  SAY #216687 /* ~I openly question your judgment, but it is your decision to make. You do show some measure of leadership, and I should be glad to assist you in the future.~ */
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("JaheiP")
~ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 608 609 610 611 even though they appear after this state */
~  False()
~ THEN BEGIN 607 // from:
  SAY #216688 /* ~I openly question your judgment, but it is your decision to make. You do show some measure of leadership, and I should be glad to assist you in the future. Come Khalid, we must depart for now.~ */
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",SetDialogue("KhaliP"))
LeaveParty()
SetDialogue("JaheiP")
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 610 611 even though they appear after this state */
~  HappinessLT(Myself,-290)
!InParty("Khalid")
~ THEN BEGIN 608 // from:
  SAY #216689 /* ~Perhaps it is for the best. I would rather be somewhere else, as you appear to be something of a lost cause. You have some of Gorion's sense, but little of his wisdom.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 610 611 even though they appear after this state */
~  HappinessLT(Myself,-290)
InParty("Khalid")
~ THEN BEGIN 609 // from:
  SAY #216690 /* ~Perhaps it is for the best. I would rather be somewhere else, as you appear to be something of a lost cause. You have some of Gorion's sense, but little of his wisdom. Come Khalid, there are better places for us than this.~ */
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  GlobalTimerExpired("Jaheira","GLOBAL")
Global("Chapter","GLOBAL",1)
Global("GoToNashkell","GLOBAL",0)
~ THEN BEGIN 610 // from:
  SAY #217216 /* ~As much as I admire your desire to travel your own path, I must insist that we go to Nashkel soon.~ */
  IF ~~ THEN DO ~SetGlobalTimer("Jaheira","GLOBAL",FOUR_DAYS)
SetGlobal("GoToNashkell","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 ~  GlobalTimerExpired("Jaheira","GLOBAL")
Global("Chapter","GLOBAL",1)
Global("GoToNashkell","GLOBAL",1)
~ THEN BEGIN 611 // from:
  SAY #217217 /* ~Still we have not gone to Nashkel. Where do you get this streak of laziness? Gorion was a man of action and conviction.~ */
  IF ~~ THEN DO ~SetGlobal("GoToNashkell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 612 // from:
  SAY #224878 /* ~~ */
  IF ~~ THEN EXTERN ~DORN_~ 16
END

IF ~~ THEN BEGIN 613 // from:
  SAY #226958 /* ~Investigating the Iron Throne
We have agreed to go on a mission for Duke Eltan. We are to infiltrate the Iron Throne headquarters here in Baldur's Gate.~ */
  IF ~~ THEN EXTERN ~NEMEKLIN~ 5
END

IF ~~ THEN BEGIN 614 // from:
  SAY #228173 /* ~Watch your tone when speaking to me, halfling. I have half a mind to insert a quarterstaff into your nether regions.~ [NEE2G] */
  IF ~~ THEN EXTERN ~NEMEKLIN~ 5
END

IF ~~ THEN BEGIN 615 // from:
  SAY #228313 /* ~I do not think that Gorion would have wanted you to take up arms with such individuals, <CHARNAME>. You continue to diverge from the lessons he taught you, and it does not bode well.~ */
  IF ~~ THEN EXTERN ~DORN_~ 16
END

IF ~~ THEN BEGIN 616 // from:
  SAY #230393 /* ~Are you looking at me, blackguard? I have my eye on you.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1173
END

IF ~~ THEN BEGIN 617 // from:
  SAY #230540 /* ~Why would you tell such a lie, <CHARNAME>? I never—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1224
END

IF ~~ THEN BEGIN 618 // from:
  SAY #230393 /* ~Are you looking at me, blackguard? I have my eye on you.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1264
END

IF ~~ THEN BEGIN 619 // from:
  SAY #230540 /* ~Why would you tell such a lie, <CHARNAME>? I never—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1315
END

IF ~~ THEN BEGIN 620 // from:
  SAY #232822 /* ~Seniyad. It is good to see you once more.~ */
  IF ~~ THEN EXTERN ~SENIYA~ 7
END

IF ~~ THEN BEGIN 621 // from:
  SAY #232824 /* ~I could do no less. <CHARNAME>?~ */
  IF ~~ THEN REPLY #200960 /* ~Sorry, Aldeth, but we're siding with the druids. They have this great aloe vera balm they are giving away samples of, and my armor has been chafing a bit, ya know?~ */ EXTERN ~ALDETH~ 6
  IF ~~ THEN REPLY #200961 /* ~Don't you think you're being rather harsh, Seniyad? We can't just let you murder Aldeth. Come now, why don't we come to a peaceful solution?~ */ EXTERN ~SENIYA~ 1
END

IF ~~ THEN BEGIN 622 // from:
  SAY #232825 /* ~No! <CHARNAME>, you cannot ask this of me. I will not!~ */
  IF ~  False()
~ THEN REPLY #232826 /* ~Then you will share in their fate!~ */ DO ~EndCutSceneMode()
ActionOverride("Aldeth",MoveToPoint([2428.1899]))
ActionOverride("Aldeth",Face(SE))
ActionOverride("Seniyad",Enemy())
ActionOverride("Seniyad",Shout(1))
ActionOverride("Khalid",LeaveParty())
LeaveParty()
ActionOverride("Khalid",Enemy())
Enemy()
~ EXIT
  IF ~~ THEN REPLY #232842 /* ~I am asking you, Jaheira.~ */ GOTO 624
  IF ~~ THEN REPLY #232827 /* ~There must be a way to solve this without bloodshed.~ */ EXTERN ~SENIYA~ 10
  IF ~~ THEN REPLY #232828 /* ~Very well. Aldeth, my hands are tied.~ */ EXTERN ~ALDETH~ 6
END

IF ~~ THEN BEGIN 623 // from:
  SAY #232833 /* ~Be well, Seniyad. Be well.~ */
  IF ~~ THEN DO ~AddexperienceParty(2000)
SetGlobal("SeniyadXP","GLOBAL",1)
EraseJournalEntry(226820)
AddJournalEntry(227430,QUEST_DONE)
ActionOverride("Seniyad",Shout(3))
ActionOverride("Seniyad",EscapeAreaObject("druid_escape"))
~ EXIT
  IF ~  Global("DefusedDruids","GLOBAL",1)
~ THEN DO ~AddexperienceParty(1000)
SetGlobal("SeniyadXP","GLOBAL",1)
ActionOverride("Seniyad",Shout(3))
ActionOverride("Seniyad",EscapeAreaObject("druid_escape"))
~ EXIT
END

IF ~~ THEN BEGIN 624 // from: 622.1
  SAY #232843 /* ~I cannot, <CHARNAME>. If you go through with this, it will be without me.~ */
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN EXTERN ~KHALIJ~ 11
  IF ~~ THEN REPLY #232845 /* ~Then so be it.~ */ DO ~EndCutSceneMode()
ActionOverride("Aldeth",MoveToPoint([2428.1899]))
ActionOverride("Aldeth",Face(SE))
ActionOverride("Seniyad",Enemy())
ActionOverride("Seniyad",Shout(1))
ActionOverride("Khalid",LeaveParty())
LeaveParty()
ActionOverride("Khalid",EscapeArea())
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #232827 /* ~There must be a way to solve this without bloodshed.~ */ EXTERN ~SENIYA~ 10
  IF ~~ THEN REPLY #232828 /* ~Very well. Aldeth, my hands are tied.~ */ EXTERN ~ALDETH~ 6
END

IF ~~ THEN BEGIN 625 // from:
  SAY #232831 /* ~I'm afraid not.~ */
  IF ~~ THEN EXTERN ~SENIYA~ 9
END

IF WEIGHT #39 ~  !Dead("khalid")
Global("BD_SDD223","GLOBAL",6)
GlobalLT("chapter","global",13)
GlobalTimerExpired("bd_sdd223_end_timer","global")
~ THEN BEGIN 626 // from:
  SAY #250790 /* ~Khalid just gave me this necklace. An "anniversary gift," he called it. He takes time to make a pointless ornament in the midst of all this chaos.~ */
  IF ~~ THEN REPLY #250791 /* ~You don't like it?~ */ GOTO 627
  IF ~~ THEN REPLY #250792 /* ~The effort may have been ill-conceived, but the sentiment is admirable, surely?~ */ GOTO 627
  IF ~~ THEN REPLY #250793 /* ~I agree. It was impractical of him.~ */ GOTO 627
END

IF ~~ THEN BEGIN 627 // from: 626.2 626.1 626.0
  SAY #250794 /* ~I LOVE it. No matter what happens in our lives, I know Khalid is always thinking of me. Words do not always come easy to him. This is how he shows me he cares. I am truly fortunate to have him in my life.~ */
  IF ~~ THEN DO ~SetGlobal("BD_SDD223","GLOBAL",7)
GiveItemCreate("bdamul12",Myself,1,0,0)
AddexperienceParty(3000)
~ SOLVED_JOURNAL #258558 /* ~Anniversary Gift

I've helped Khalid with his request.

Even after all their time together, even with a war going on, Khalid and Jaheira still find ways to show their love for each other. Khalid makes a good point; we shouldn't wait to tell the people we love how we feel about them. Who knows when it will be too late?~ */ EXIT
END

IF ~~ THEN BEGIN 628 // from:
  SAY #266302 /* ~Do as <PRO_HESHE> asks, Khalid. It pains me to be apart from you, but we will be reunited soon, I promise you.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 8
END

IF ~~ THEN BEGIN 629 // from:
  SAY #269644 /* ~Do as she asks, Khalid. It pains me to be apart from you, but we will be reunited soon, I promise you.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 8
END

IF ~~ THEN BEGIN 630 // from:
  SAY #266309 /* ~You would do well to keep a civil tongue in your mouth, <CHARNAME>. Khalid is a kindly soul who will tolerate your insults. I am not so accommodating.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 116
END

IF ~~ THEN BEGIN 631 // from:
  SAY #257132 /* ~Very well.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 13
END

IF ~~ THEN BEGIN 632 // from:
  SAY #257135 /* ~You think yourself fit to judge whether we are needed or not? I'm not convinced. But we shall do as you ask.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 15
END

IF ~~ THEN BEGIN 633 // from:
  SAY #246060 /* ~This girl has been through much. What are you thinking, making her relive her pain?~ */
  IF ~~ THEN EXTERN ~BDCHILD~ 7
END

IF ~~ THEN BEGIN 634 // from:
  SAY #246119 /* ~Don't be so dense, <CHARNAME>. This place is clearly home to the poor soul.~ */
  IF ~~ THEN EXTERN ~BDMUMMY~ 15
END

IF ~~ THEN BEGIN 635 // from:
  SAY #246123 /* ~This picture you paint disturbs me, <CHARNAME>. We are not Sarevok. We must be better than that.~ */
  IF ~~ THEN EXTERN ~BDMUMMY~ 13
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 1345
END

IF ~~ THEN BEGIN 636 // from:
  SAY #246146 /* ~A convenient rationalization.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1243
END

IF WEIGHT #40 ~  GlobalGT("bd_plot","global",25)
GlobalLT("bd_plot","global",30)
GlobalLT("bd_child_plot","bd0120",7)
Global("bd_mdd000ha_ot","bd0120",0)
Dead("bdkorlas")
~ THEN BEGIN 637 // from:
  SAY #246149 /* ~Korlasz was all but defeated, <CHARNAME>. That slaughter was unnecessary. ~ */
  IF ~~ THEN REPLY #246150 /* ~This is a bloody business. Sometimes, we must do things we would find... distasteful... to ensure a venture's success.~ */ DO ~SetGlobal("bd_mdd000ha_ot","bd0120",1)
~ GOTO 638
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN REPLY #246151 /* ~Unnecessary, but highly entertaining.~ */ DO ~SetGlobal("bd_mdd000ha_ot","bd0120",1)
~ EXTERN ~KHALIJ~ 22
  IF ~  !IsValidForPartyDialogue("KHALID")
~ THEN REPLY #246151 /* ~Unnecessary, but highly entertaining.~ */ DO ~SetGlobal("bd_mdd000ha_ot","bd0120",1)
~ GOTO 639
  IF ~~ THEN REPLY #246152 /* ~You would have me spare the life of an enemy? No, Jaheira. She had to die.~ */ DO ~SetGlobal("bd_mdd000ha_ot","bd0120",1)
~ GOTO 638
END

IF ~~ THEN BEGIN 638 // from: 637.3 637.0
  SAY #246153 /* ~Perhaps, but still it leaves a bitter taste upon my tongue.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 639 // from: 637.2
  SAY #246155 /* ~Gorion would be disappointed in you, <CHARNAME>. As am I.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 640 // from:
  SAY #264045 /* ~"Stole" is not the proper word. "Liberated" is more accurate. Harpers sometimes rescue innocents from cults prepared to sacrifice them.~ */
  IF ~~ THEN EXTERN ~BDMADELE~ 5
END

IF ~~ THEN BEGIN 641 // from:
  SAY #242375 /* ~You are not rid of me so easily as that, Khalid.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 24
END

IF ~~ THEN BEGIN 642 // from:
  SAY #242380 /* ~It has been days since I last saw my husband, <CHARNAME>. I'll not be apart from him again so soon.~ */
  IF ~~ THEN REPLY #242381 /* ~I understand. You two go get reacquainted. There's a Flaming Fist camp not far from here. I'll see you there when I return.~ */ GOTO 643
  IF ~~ THEN REPLY #242382 /* ~He'll need to come with us, then. Business before pleasure.~ */ EXTERN ~BDKHALID~ 25
END

IF ~~ THEN BEGIN 643 // from: 642.0
  SAY #242387 /* ~Take care of yourself, <CHARNAME>. We'll talk again soon, I'm sure.~ */
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 644 // from:
  SAY #242531 /* ~A cage is the proper place for one such as this.~ */
  IF ~~ THEN EXTERN ~BDDORN~ 25
END

IF ~~ THEN BEGIN 645 // from:
  SAY #242434 /* ~I know this man, <CHARNAME>, and can tell you that for all his many... MANY faults, he is a good and valiant warrior. I'd introduce you, but he's a skald—he takes such joy in speaking of himself I would not rob him of the chance.~ */
  IF ~~ THEN EXTERN ~BDVOGHIL~ 69
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 32
END

IF ~~ THEN BEGIN 646 // from:
  SAY #247466 /* ~I think we have more important things to do right now, no?~ */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 1
END

IF ~~ THEN BEGIN 647 // from:
  SAY #247528 /* ~Valis and Corinth, Leopas's rangers. One accuses the other of betrayal. You can't have forgotten this already.~ */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 16
END

IF ~~ THEN BEGIN 648 // from:
  SAY #247545 /* ~This is Corinth, one of Leopas's rangers. His colleague, Valis, accuses him of betraying the crusade at the hamlet of Innisfall. You were to determine the truth of these allegations. Please, don't tell me you've forgotten this already...~ */
  IF ~~ THEN EXTERN ~BDCORINT~ 11
END

IF ~~ THEN BEGIN 649 // from:
  SAY #236850 /* ~Has it been so long that you no longer recognize your wife?~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 29
END

IF ~~ THEN BEGIN 650 // from:
  SAY #257959 /* ~Have a care how you speak. It is a miracle that Khalid has held the fort. Lesser men would have lost it days ago.~ */
  IF ~~ THEN EXTERN ~BDKHALID~ 42
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1260
END

IF ~~ THEN BEGIN 651 // from:
  SAY #249493 /* ~Have some compassion, <CHARNAME>. This family is suffering. How did you come to Bridgefort, Senderin?~ */
  IF ~~ THEN EXTERN ~BDSENDER~ 1
END

IF ~~ THEN BEGIN 652 // from:
  SAY #249522 /* ~Such discourtesy ill becomes you, <CHARNAME>. There's no call for it. Please forgive <PRO_HIMHER>, Senderin.~ */
  IF ~~ THEN EXTERN ~BDSENDER~ 8
END

IF WEIGHT #41 ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",2)
~ THEN BEGIN 653 // from:
  SAY #247215 /* ~A rhino beetle. It is here to feed on the spiders' eggs. It would be best for us if we let it. ~ */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 30
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 16
END

IF ~~ THEN BEGIN 654 // from:
  SAY #247293 /* ~We all face loss eventually. I'm sorry you've had to face yours.~ */
  IF ~~ THEN EXTERN ~BDTHARAN~ 13
END

IF ~~ THEN BEGIN 655 // from:
  SAY #250806 /* ~That is not a natural environment for a chicken, <CHARNAME>. Unless it is a Lantan well-chicken. But I do not think it is.~ */
  IF ~~ THEN EXTERN ~BDDOGW01~ 1
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 96
END

IF ~~ THEN BEGIN 656 // from:
  SAY #236999 /* ~You thought otherwise?~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 124
END

IF ~~ THEN BEGIN 657 // from:
  SAY #237256 /* ~Everything we fought for these past weeks, you threw away, <CHARNAME>. What Gorion saw in you, I'll never know.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 658 // from:
  SAY #237604 /* ~You may not like her, <CHARNAME>, but such insults are uncalled for. In the future, mind your words.~ */
  IF ~~ THEN EXTERN ~BDBENCE~ 37
END

IF ~~ THEN BEGIN 659 // from:
  SAY #240981 /* ~I feel strange. My head is spinning. ~ */
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240982 /* ~Maybe you should sit down for a minute. ~ */ GOTO 660
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #240982 /* ~Maybe you should sit down for a minute. ~ */ EXTERN ~SAFANJ~ 86
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY #240983 /* ~As does mine. The stench is overpowering.~ */ GOTO 660
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY #240983 /* ~As does mine. The stench is overpowering.~ */ EXTERN ~DORNJ~ 1369
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #240984 /* ~Let's find some fresh air.~ */ GOTO 660
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #240984 /* ~Let's find some fresh air.~ */ EXTERN ~RASAADJ~ 1272
END

IF ~~ THEN BEGIN 660 // from: 659.4 659.2 659.0
  SAY #240985 /* ~No, I... I feel something. Someone. Inside my mind. They're trying to tell me something... ~ */
  IF ~  CheckStatGT("JAHEIRA",10,CON)
~ THEN REPLY #240986 /* ~What are they saying? Concentrate, Jaheira. ~ */ GOTO 661
  IF ~  !CheckStatGT("JAHEIRA",10,CON)
~ THEN REPLY #240986 /* ~What are they saying? Concentrate, Jaheira. ~ */ GOTO 662
  IF ~  CheckStatGT("JAHEIRA",10,CON)
~ THEN REPLY #240987 /* ~Ignore the voices; focus on me. Fight for focus. ~ */ GOTO 661
  IF ~  !CheckStatGT("JAHEIRA",10,CON)
~ THEN REPLY #240987 /* ~Ignore the voices; focus on me. Fight for focus. ~ */ GOTO 662
  IF ~~ THEN REPLY #240988 /* ~Get outside now! ~ */ GOTO 662
END

IF ~~ THEN BEGIN 661 // from: 660.2 660.0
  SAY #240989 /* ~Their voices float... spores in the air. They... ugh... they hear my sorrow for them. The voices swell to the north, by a corpse.~ */
  IF ~~ THEN REPLY #240990 /* ~Well done, Jaheira. ~ */ DO ~SetGlobal("bd_get_sdd308_journal","myarea",1)
~ EXTERN ~BDDYINGM~ 1
  IF ~~ THEN REPLY #240991 /* ~Thanks for talking to the spore ghosts, I guess. ~ */ DO ~SetGlobal("bd_get_sdd308_journal","myarea",1)
~ EXTERN ~BDDYINGM~ 1
  IF ~~ THEN REPLY #240992 /* ~Next time warn me of the danger of these creatures. ~ */ DO ~SetGlobal("bd_get_sdd308_journal","myarea",1)
~ EXTERN ~BDDYINGM~ 1
END

IF ~~ THEN BEGIN 662 // from: 660.4 660.3 660.1
  SAY #240993 /* ~They're so loud I can't... I can't separate them. Augh! ~ */
  IF ~~ THEN REPLY #240994 /* ~Jaheira! ~ */ DO ~ForceSpell("JAHEIRA",HULK_CONFUSION)
~ EXIT
END

IF ~~ THEN BEGIN 663 // from:
  SAY #256414 /* ~I can understand it, after a fashion. This is an elder myconid. It says we trespass in the sacred—no, not sacred... the resting place of the fungal dead.~ */
  IF ~~ THEN EXTERN ~BDMYCELD~ 1
END

IF ~~ THEN BEGIN 664 // from:
  SAY #256420 /* ~It seems to matter a great deal to them.~ */
  IF ~~ THEN EXTERN ~BDMYCELD~ 11
END

IF ~~ THEN BEGIN 665 // from:
  SAY #256422 /* ~It does not want an apology. It wants revenge.~ */
  IF ~~ THEN EXTERN ~BDMYCELD~ 11
END

IF ~~ THEN BEGIN 666 // from:
  SAY #241408 /* ~The children of the waters have one less thing to fear this <DAYNIGHTALL>.~ */
  IF ~~ THEN EXTERN ~BDPWATER~ 6
END

IF ~~ THEN BEGIN 667 // from:
  SAY #241517 /* ~What this man does, it is not right. He is no servant to nature—he twists it inside and out, makes a mockery of the proper order of things.~ */
  IF ~~ THEN EXTERN ~BDFERRUS~ 25
END

IF ~~ THEN BEGIN 668 // from:
  SAY #240327 /* ~Careful, <CHARNAME>. I do not like the looks of this.~ */
  IF ~~ THEN EXTERN ~BDPCRUS~ 2
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 44
END

IF ~~ THEN BEGIN 669 // from:
  SAY #240329 /* ~This place is not likely to hold allies. If we approach at all, it should be with caution. ~ */
  IF ~~ THEN EXTERN ~BDPCRUS~ 2
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 387
END

IF ~~ THEN BEGIN 670 // from:
  SAY #240363 /* ~Fungus caused his infection. Healing it is beyond my skill. A brew of fungal growths might help, but it would take time to determine the proper ingredients. Too much time, I fear.~ */
  IF ~~ THEN EXTERN ~BDPCRUS~ 6
END

IF ~~ THEN BEGIN 671 // from:
  SAY #241426 /* ~I do not trust this man. I see a darkness in his eyes. ~ */
  IF ~~ THEN EXTERN ~BDFERRUS~ 3
END

IF ~~ THEN BEGIN 672 // from:
  SAY #241554 /* ~Myconids are powerful creatures that favor dark, damp places. They can be very dangerous—an elder would take all our skill to fell. ~ */
  IF ~~ THEN EXTERN ~BDFERRUS~ 30
END

IF WEIGHT #42 ~  Global("BD_SDD317_WYRMS","BD5100",0)
~ THEN BEGIN 673 // from:
  SAY #241577 /* ~I sense... a powerful anger. Something has gone terribly, terribly wrong in this place...~ */
  IF ~~ THEN DO ~SetGlobal("BD_SDD317_WYRMS","BD5100",1)
~ EXIT
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 388
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 101
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN EXTERN ~BDMKHIIJ~ 80
END

IF WEIGHT #43 ~  Global("BD_SDD317_WYRMS","BD5100",3)
~ THEN BEGIN 674 // from:
  SAY #241593 /* ~Look at them—their bodies, their souls twisted by the foulest of magics. Their wings were stubs that never touched the sky. Their tongues knew the taste of their hatchling-kin. Their eyes... never have I seen such desperation. Ending their existence was a mercy.~ */
  IF ~~ THEN DO ~SetGlobal("BD_SDD317_WYRMS","BD5100",4)
AddJournalEntry(261916,QUEST_DONE)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 129
END

IF ~~ THEN BEGIN 675 // from:
  SAY #251140 /* ~A distasteful practice. We should have no part of this.~ */
  IF ~~ THEN EXTERN ~BDWAIZAH~ 18
END

IF ~~ THEN BEGIN 676 // from:
  SAY #250151 /* ~With good reason.~ */
  IF ~~ THEN EXTERN ~BDHALATA~ 3
END

IF ~~ THEN BEGIN 677 // from:
  SAY #262514 /* ~Yes, accuse the ghost dragon of cowardice. This should end well.~ */
  IF ~~ THEN EXTERN ~BDHALATA~ 16
END

IF ~~ THEN BEGIN 678 // from:
  SAY #237891 /* ~Perhaps they sought to capture, not kill <PRO_HIMHER>. ~ */
  IF ~~ THEN EXTERN ~BDNEDERL~ 48
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 99
END

IF ~~ THEN BEGIN 679 // from:
  SAY #261100 /* ~A fire burnt out cannot be restored, nor can a dead child of Bhaal be revived. Ashes are all that is left of either.~ */
  IF ~~ THEN EXTERN ~BDNEDERL~ 48
END

IF ~~ THEN BEGIN 680 // from:
  SAY #237897 /* ~He's no Harper. He WISHES he were a Harper. ~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut39",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 681 // from:
  SAY #262403 /* ~That's it?~ */
  IF ~~ THEN EXTERN ~BDSKIE~ 57
END

IF ~~ THEN BEGIN 682 // from:
  SAY #238540 /* ~It galls me to admit it, but the Thayan's right.~ */
  IF ~~ THEN EXTERN ~BDDELANC~ 76
END

IF ~~ THEN BEGIN 683 // from:
  SAY #238752 /* ~ 'Tis everything the Harpers feared and more...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 684 // from:
  SAY #258092 /* ~I knew I was in no danger. You are not without fault, <CHARNAME>, but I would trust you with my life.~ */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 78
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 79
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 80
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 81
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 685 // from:
  SAY #241666 /* ~No! I'll not lose my beloved again!~ */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 74
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 75
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 76
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 77
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 686 // from:
  SAY #239006 /* ~A bargain with a devil is no bargain at all!~ */
  IF ~~ THEN EXTERN ~BDGLINTJ~ 111
END

IF ~~ THEN BEGIN 687 // from:
  SAY #241704 /* ~Come and get me, devil—if you can!~ */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF WEIGHT #44 ~  !Global("bd_thrix_mark_jaheira","global",1)
Global("BD_Sacrifice_Jaheira","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 688 // from:
  SAY #241706 /* ~You played a dangerous game with that devil back there. Do not do so again.~ */
  IF ~~ THEN DO ~SetGlobal("BD_Sacrifice_Jaheira","bd4500",3)
~ EXIT
END

IF WEIGHT #45 ~  Global("bd_thrix_mark_jaheira","global",1)
Global("BD_Sacrifice_Jaheira","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 689 // from:
  SAY #269998 /* ~I am not used to being bartered in this manner, <CHARNAME>. I will watch for this devil, and when it comes for me I hope you will do the right thing and help me destroy it.~ */
  IF ~~ THEN DO ~SetGlobal("BD_Sacrifice_Jaheira","bd4500",3)
~ EXIT
END

IF ~~ THEN BEGIN 690 // from:
  SAY #261427 /* ~Flip remarks do you no credit. Caelar speaks of matters of monumental import—ill-considered actions with ramifications not just for her and her uncle, but ourselves and all the Sword Coast.~ */
  IF ~~ THEN EXTERN ~BDAUN~ 13
END

IF ~~ THEN BEGIN 691 // from:
  SAY #239277 /* ~She paid the penalty for her hubris.~ */
  IF ~~ THEN EXTERN ~BDAUN~ 32
END

IF ~~ THEN BEGIN 692 // from:
  SAY #239340 /* ~The rift between the planes is healed. Avernus's threat to Toril is ended.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 693 // from:
  SAY #239398 /* ~This can't be. I can't believe it. I WON'T believe it. This must be a... a ruse of some sort. Gorion can't have been wrong!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 694 // from:
  SAY #239746 /* ~So Imoen's hireling told it true. You have escaped the Fist and Silvershield's justice, <CHARNAME>—for the moment. I promised to watch over and protect you. Your actions make me regret that promise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 695 // from:
  SAY #239764 /* ~We've not aided you yet. We would none of us be here were it not for Imoen's pleas.~ */
  IF ~~ THEN EXTERN ~BDIMOEN~ 125
END

IF ~~ THEN BEGIN 696 // from:
  SAY #239770 /* ~Perhaps we will—IF an error we have indeed made. Which I doubt.~ */
  IF ~~ THEN EXTERN ~BDIMOEN~ 126
END

IF ~~ THEN BEGIN 697 // from:
  SAY #239773 /* ~I know how I feel about it. Were it not for Gorion, I'd let Silvershield have you.~ */
  IF ~~ THEN EXTERN ~BDIMOEN~ 124
END

IF ~~ THEN BEGIN 698 // from:
  SAY #239776 /* ~Someone is playing games with us.~ */
  IF ~~ THEN EXTERN ~BDIMOEN~ 127
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~KHALIJ~ 63
END

IF WEIGHT #46 ~  GlobalGT("bd_plot","global",599)
GlobalLT("bd_plot","global",685)
~ THEN BEGIN 699 // from:
  SAY #239781 /* ~We've escaped for the moment, but we cannot run forever. How do you plan to answer the charges against you, <CHARNAME>? Your flight will do little to win you favor with the citizens of Baldur's Gate.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 700 // from:
  SAY #239798 /* ~Khalid, no! Please, I cannot lose you, not again...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 701 // from:
  SAY #239799 /* ~Back! Back, you flapping vultures, get away from me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 702 // from:
  SAY #239800 /* ~I— What is this? What have you done to us?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 703 // from:
  SAY #239801 /* ~Is this how it ends, then...?~ */
  IF ~~ THEN EXTERN ~KHALIJ~ 69
END

IF ~~ THEN BEGIN 704 // from:
  SAY #240122 /* ~I hear it as well. These vines are not natural.~ */
  IF ~~ THEN EXTERN ~BDJAMVEN~ 1
END

IF ~~ THEN BEGIN 705 // from:
  SAY #240953 /* ~Helping restore the natural balance is a noble aim.~ */
  IF ~~ THEN EXTERN ~BDJAMVEN~ 14
END

IF ~~ THEN BEGIN 706 // from:
  SAY #240195 /* ~You would attack a peaceful circle? You are not the person I thought you were! ~ */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 141
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~BDJAMVEN~ 30
END

IF ~~ THEN BEGIN 707 // from:
  SAY #240197 /* ~This does not sit well with me. Nature needed help, and you turned your back on her.~ */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 142
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~BDCHORST~ 11
END

IF ~~ THEN BEGIN 708 // from:
  SAY #240199 /* ~You showed courage and character, <CHARNAME>. I am proud of you.~ */
  IF ~~ THEN EXTERN ~BDJAMVEN~ 27
END

IF ~~ THEN BEGIN 709 // from:
  SAY #240697 /* ~Evil to they who do evil.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1295
END

IF ~~ THEN BEGIN 710 // from:
  SAY #240249 /* ~I think he means sahuagin. Scaled humanoids who live in the water.~ */
  IF ~~ THEN EXTERN ~BDLADLE~ 10
END

IF ~~ THEN BEGIN 711 // from:
  SAY #256478 /* ~Every time, <CHARNAME>! If you have no problems, you find a way to make some. We are here, we follow you. Insisting we do so in silence is too much.~ */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 145
END

IF ~~ THEN BEGIN 712 // from:
  SAY #250305 /* ~Must you always cheapen your good deeds with such crass demands for payment?~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 17
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 93
END

IF ~~ THEN BEGIN 713 // from:
  SAY #250360 /* ~So he claims.~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 13
END

IF ~~ THEN BEGIN 714 // from:
  SAY #250362 /* ~Spare us the self-pity, <CHARNAME>. Your moaning helps no one.~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 15
END

IF ~~ THEN BEGIN 715 // from:
  SAY #248942 /* ~Hst! Perhaps you should be more cautious with your name.~ */
  IF ~~ THEN EXTERN ~BDDENELD~ 2
END

IF ~~ THEN BEGIN 716 // from:
  SAY #248069 /* ~I have never been a soldier, but I know what it is to be different. I was raised by druids, not by my parents, and often felt alone.~ */
  IF ~~ THEN EXTERN ~BDTAIELD~ 7
END

IF ~~ THEN BEGIN 717 // from:
  SAY #248071 /* ~Everyone has a reason to feel alone. We each make our own paths and fight for our own causes. You must find the strength within to endure, as do we all.~ */
  IF ~~ THEN EXTERN ~BDTAIELD~ 6
END

IF ~~ THEN BEGIN 718 // from:
  SAY #248177 /* ~This man is grievously ill. His skin's hot enough to light parchment. I know healing herbs that can bring the fever down. I'll begin work on a poultice immediately.~ */
  IF ~~ THEN EXTERN ~BDXERRA~ 2
END

IF ~~ THEN BEGIN 719 // from:
  SAY #248203 /* ~Restless energy lives in this man's limbs, despite his pain. The agony seems to ignite rage in his mind. I've seen this before, in rats from the Forest of Wyrms. We need to be careful or he will—too late! Watch out!~ */
  IF ~~ THEN DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 720 // from:
  SAY #248232 /* ~She is in poor condition, my friend. If we don't find a cure for this sickness, she will be the first to die. Her position in the camp's center leaves her exposed to all her ill companions. I believe that proximity makes the illness worse.~ */
  IF ~~ THEN EXTERN ~BDZIDRAN~ 2
END

IF ~~ THEN BEGIN 721 // from:
  SAY #248281 /* ~The bark of the blackthorn tree that grows in these parts has many healing properties. I suggest we venture into the woods to find one.~ */
  IF ~~ THEN DO ~AddJournalEntry(261440,QUEST)
SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
~ EXTERN ~BDDOSIA~ 16
END

IF ~~ THEN BEGIN 722 // from:
  SAY #248340 /* ~I shall do what I can. I have seen rats with symptoms like those afflicted in camp before—I'm asking the creature what it does when its pack falls ill.~ */
  IF ~~ THEN EXTERN ~BDFRAT~ 9
END

IF ~~ THEN BEGIN 723 // from:
  SAY #248343 /* ~In the forest grows a tree we call the blackthorn tree. Old trees collapse and grow mold on their bark—the rats roll in it to relieve the sickness. We must find a tree and collect all the mold we can—but leave some for the rats.~ */
  IF ~~ THEN DO ~SetGlobal("bd_sdd302_rat_hunt","global",4)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(261440,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 724 // from:
  SAY #248691 /* ~If you think it's best, I will heal the man.~ */
  IF ~~ THEN EXTERN ~BDHYRETH~ 2
END

IF ~~ THEN BEGIN 725 // from:
  SAY #250993 /* ~Persistence can be admirable trait, skald, but the impulses behind your tenacity are as obvious as they are wearisome.~ */
  IF ~~ THEN EXTERN ~BDDOSIA~ 49
END

IF WEIGHT #47 ~  Global("bd_jaheira_reputation_warning","GLOBAL",1)
~ THEN BEGIN 726 // from:
  SAY #260621 /* ~<CHARNAME>. These are difficult times, I know. Hard decisions must be made for the greater good. Even so, I will not stand silent in the face of your atrocious behavior.~ */
  IF ~~ THEN REPLY #260622 /* ~I would not have stand silent, Jaheira. Certainly not when you've such valuable counsel to give.~ */ DO ~SetGlobal("bd_jaheira_reputation_warning","GLOBAL",2)
~ GOTO 730
  IF ~~ THEN REPLY #260623 /* ~You think I've gone too far?~ */ DO ~SetGlobal("bd_jaheira_reputation_warning","GLOBAL",2)
~ GOTO 728
  IF ~~ THEN REPLY #260624 /* ~I doubt you've stood silent in the face of anything in your life.~ */ DO ~SetGlobal("bd_jaheira_reputation_warning","GLOBAL",2)
~ GOTO 727
  IF ~  IsValidForPartyDialogue("Khalid")
~ THEN REPLY #260625 /* ~Then walk away, or better still run. You may not stand silent, but I can arrange it so you lie that way.~ */ DO ~SetGlobal("bd_jaheira_reputation_warning","GLOBAL",2)
~ EXTERN ~KHALIJ~ 108
  IF ~  !IsValidForPartyDialogue("Khalid")
~ THEN REPLY #260625 /* ~Then walk away, or better still run. You may not stand silent, but I can arrange it so you lie that way.~ */ DO ~SetGlobal("bd_jaheira_reputation_warning","GLOBAL",2)
~ GOTO 729
END

IF ~~ THEN BEGIN 727 // from: 726.2
  SAY #260626 /* ~Mock me if you will. I care little what you think, it's what you do that matters. And what you have done recently offends me. If you continue down this road much farther, you'll do so without me at your side. I warn you now out of respect, but I'll not do so a second time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 728 // from: 726.1
  SAY #260627 /* ~Not so far that you cannot turn back. But that day is coming. And when it does, though it would pain me greatly, I will have no choice but to leave you to your fate. Don't make me do that. Please, don't.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 729 // from: 726.4
  SAY #260629 /* ~I will go, and gladly. I thought I might be able to bear the stench that surrounds you, but I'm happier not having to.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 730 // from: 726.0
  SAY #260630 /* ~There may be hope for you yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 731 // from:
  SAY #260655 /* ~Khalid is right. This cannot continue. Take care of yourself, <CHARNAME>. You walk a dark path. I fear where it may lead.~ */
  IF ~~ THEN DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
JumpToObject("khalid")
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 732 // from:
  SAY #260658 /* ~Take care of yourself, <CHARNAME>. You walk a dark path. I fear where it may lead.~ */
  IF ~~ THEN DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
JumpToObject("khalid")
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 733 // from:
  SAY #269127 /* ~Such is the way of nature. The strong survive and the weak perish. We should not interfere.~ */
  IF ~~ THEN EXIT
END
