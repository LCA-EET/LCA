// creator  : weidu (version 24900)
// argument : CERND.DLG
// game     : .
// source   : ./override/CERND.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~CERND~

IF ~~ THEN BEGIN 0 // from: 62.0
  SAY #7579 /* ~You look pleasant enough; are you friends of that charming Lord Coprith? I've made very few friends among the merchants.~ */
  IF ~~ THEN REPLY #7855 /* ~Lord Coprith sent me. I am to escort you out of town and help in any way I can.~ */ GOTO 66
  IF ~~ THEN REPLY #7856 /* ~Coprith sent me, but I don't trust you. What exactly are you trying to do here? ~ */ GOTO 3
  IF ~~ THEN REPLY #7857 /* ~I am indifferent about you. Once you are out of town, you are on your own.~ */ GOTO 4
  IF ~~ THEN REPLY #7863 /* ~What if the merchants did send me? What's in it for me to save you?~ */ GOTO 68
END

IF ~~ THEN BEGIN 1 // from: 63.0
  SAY #7844 /* ~Lord Coprith is a fine man, but I expected he could not hold his people's vengeance. I am Cernd. Will you name yourselves so I know my persecutors?~ */
  IF ~~ THEN REPLY #7858 /* ~I am <GABBER>. Lord Coprith has asked that I escort you out of town.~ */ GOTO 66
  IF ~~ THEN REPLY #7859 /* ~Coprith wants me to take you safely out of town. What is going on?~ */ GOTO 3
  IF ~~ THEN REPLY #7860 /* ~My name is unimportant. I will escort you out of town and then you are on your own.~ */ GOTO 4
  IF ~~ THEN REPLY #7865 /* ~I am called <GABBER>. What have you to offer me in exchange for freedom? ~ */ GOTO 68
END

IF ~~ THEN BEGIN 2 // from: 67.0
  SAY #7845 /* ~Ahh, the blight shall pass, and I will return to cultivate better relations when the time is right.~ */
  IF ~~ THEN REPLY #7866 /* ~We should be going. Best that we do not test the patience of the local townsfolk.~ */ GOTO 3
  IF ~~ THEN REPLY #7867 /* ~What has poisoned their opinions? Their leader is sensible enough.~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1 0.1
  SAY #7861 /* ~Coprith chose well: Caution will win the day. I will endeavor to tell you what I know, but I did not have long to gather information.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 4 // from: 1.2 0.2
  SAY #7871 /* ~As you would have it, though I would ask that you at least hear me out. Please, the seed can only hope to flourish if the rain and winds cooperate.~ */
  IF ~~ THEN REPLY #7881 /* ~Speak then, and tell me exactly what it is you fear is going on here.~ */ GOTO 9
  IF ~~ THEN REPLY #7883 /* ~I will listen, though my mind is made up.~ */ GOTO 69
END

IF ~~ THEN BEGIN 5 // from: 68.0
  SAY #7872 /* ~Their only concern is my death, but I have nothing to offer for crimes I have not committed. There may be tracks from the scene, but they do not lead to me.~ */
  IF ~~ THEN REPLY #7879 /* ~If I kill you, the merchants might reward me anyway. Can you offer better?~ */ GOTO 71
  IF ~~ THEN REPLY #7880 /* ~I might have use for you. What is it you need? What has been happening here?~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 69.0
  SAY #7874 /* ~It is not unheard of, but the attacks have me worried. It can only lead to greater evils; these people will eventually strike out as an animal cornered.~ */
  IF ~  OR(2)
Class(Player1,SHAMAN)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)
!InParty("Jaheira")
!InParty("Minsc")
~ THEN GOTO 70
  IF ~  InParty("Jaheira")
AreaCheckObject("AR2009","Jaheira")
!Dead("Jaheira")
~ THEN GOTO 32
  IF ~  !InParty("Jaheira")
InParty("Minsc")
AreaCheckObject("AR2009","Minsc")
!Dead("Minsc")
~ THEN GOTO 33
  IF ~  OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)
!Class(Player1,SHAMAN)
!InParty("Jaheira")
!InParty("Minsc")
~ THEN GOTO 31
END

IF ~~ THEN BEGIN 7 // from: 70.0
  SAY #7875 /* ~It is the duty of any druid to find this new leader and ascertain if this is for the best of nature. The attacks on the merchants only serve to alarm me.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #7878 /* ~I might succeed alone, but I would much rather have the backing of a group, one that will also benefit from my service. Are you up for the task?~ */
  IF ~~ THEN REPLY #7885 /* ~Yes, I will help as best I can. Join with me, and we shall do what must be done.~ */ DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ GOTO 76
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #7886 /* ~I will participate in this little endeavor, but only so long as there is benefit for me.~ */ DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ GOTO 77
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7887 /* ~I will help as best I can, but I do not wish any more traveling companions. ~ */ DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ GOTO 72
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
~ THEN REPLY #7888 /* ~I cannot help at this time. I am truly sorry, but I must decline.~ */ GOTO 72
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
~ THEN REPLY #7889 /* ~This holds no interest for me and neither does your company. Go on your way. ~ */ GOTO 73
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #7894 /* ~I cannot help at this time. I am truly sorry, but I must decline.~ */ GOTO 74
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #7895 /* ~This holds no interest for me and neither does your company. Go on your way. ~ */ GOTO 74
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
~ THEN REPLY #7898 /* ~Only if there is benefit for me. Join and lead the way, but I won't risk my neck.~ */ DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ GOTO 15
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7901 /* ~I will help as best I can, but I do not wish any more traveling companions. ~ */ DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ EXTERN ~BJAHEIR~ 15
END

IF ~~ THEN BEGIN 9 // from: 10.1 5.1 4.0 2.1
  SAY #7884 /* ~I am not quite sure, but I have suspicions. I will try to tell you what I know of this.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 10 // from: 71.0
  SAY #7882 /* ~Please, you must see through the briar and realize that reaching the other side will benefit everyone, even if not with cold coins at the front.~ */
  IF ~~ THEN REPLY #7890 /* ~Speak then, and I shall decide whether to help for free after I know what is going on.~ */ GOTO 69
  IF ~~ THEN REPLY #7891 /* ~Perhaps if there was possibility of loot... Tell me what you believe is going on.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 73.0
  SAY #7892 /* ~I will require much more time if I must do this alone. Here is the grove on your map in case you change your mind. Think about it. Fare ye well for now.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 75.0
  SAY #7896 /* ~You will decide your own path. I will be near the druid grove if you change your mind. Here, I shall mark it on your map. That is all I can do for you.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
~ UNSOLVED_JOURNAL #54948 /* ~Animal trouble in Trademeet: Said I'd meet Cernd

Cernd thinks the events in Trademeet might have something to do with a local druid grove losing touch with the greater hierarchy. I said I might investigate, but I didn't want him to join my party. I will meet him at the grove and discuss it there.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
~ UNSOLVED_JOURNAL #54948 /* ~Animal trouble in Trademeet: Said I'd meet Cernd

Cernd thinks the events in Trademeet might have something to do with a local druid grove losing touch with the greater hierarchy. I said I might investigate, but I didn't want him to join my party. I will meet him at the grove and discuss it there.~ */ EXTERN ~JAHEIRAJ~ 92
END

IF ~~ THEN BEGIN 13 // from: 76.0
  SAY #7897 /* ~But I fear what we will find this time. I will indicate it on your map. We had best make haste lest the nuts fall and grow before we even shake the tree.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42351 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58718 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ GOTO 95
  IF ~~ THEN REPLY #42352 /* ~All right, let's go.~ */ DO ~RevealAreaOnMap("ar1900")
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
JoinParty()
~ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 77.0
  SAY #7899 /* ~All druids eventually travel to the grove to challenge for status. You will be affected as well if we fail. The grove is on your map. Let us go quickly.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42354 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ UNSOLVED_JOURNAL #54947 /* ~Animal trouble in Trademeet: Joined with Cernd

I joined with Cernd to investigate the strange happenings at the druid grove south of Trademeet. He fears that the druids there have had an unfortunate leadership change, causing conflict in the area. He said that it is in my best interests to help, as every druid eventually goes to the grove to challenge for their title and status.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58717 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ UNSOLVED_JOURNAL #54947 /* ~Animal trouble in Trademeet: Joined with Cernd

I joined with Cernd to investigate the strange happenings at the druid grove south of Trademeet. He fears that the druids there have had an unfortunate leadership change, causing conflict in the area. He said that it is in my best interests to help, as every druid eventually goes to the grove to challenge for their title and status.~ */ GOTO 95
  IF ~~ THEN REPLY #42355 /* ~All right, let's go.~ */ DO ~JoinParty()
~ JOURNAL #54947 /* ~Animal trouble in Trademeet: Joined with Cernd

I joined with Cernd to investigate the strange happenings at the druid grove south of Trademeet. He fears that the druids there have had an unfortunate leadership change, causing conflict in the area. He said that it is in my best interests to help, as every druid eventually goes to the grove to challenge for their title and status.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.7
  SAY #7900 /* ~Nor should I expect you to. Druids alone should handle these squabbles, but I am thankful for what help you can give. Come, the grove is on your map. ~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42356 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58716 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ GOTO 95
  IF ~~ THEN REPLY #42357 /* ~All right, let's go.~ */ DO ~RevealAreaOnMap("ar1900")
JoinParty()
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
~ UNSOLVED_JOURNAL #54946 /* ~Animal trouble in Trademeet: Joined with Cernd

I have joined with Cernd. He worries that the attacks on Trademeet are linked to a druid circle that has ceased communicating with the greater hierarchy. He fears that the situation may degrade into a war between the town and nature. We are to travel to a druid grove south of Trademeet and investigate.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 78.0
  SAY #7903 /* ~I will mark its location for you on your map. Do hurry. What transpires there will regrettably affect others outside the order. ~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
~ UNSOLVED_JOURNAL #54948 /* ~Animal trouble in Trademeet: Said I'd meet Cernd

Cernd thinks the events in Trademeet might have something to do with a local druid grove losing touch with the greater hierarchy. I said I might investigate, but I didn't want him to join my party. I will meet him at the grove and discuss it there.~ */ EXIT
END

IF ~  Global("CerndWentHunting","GLOBAL",1)
!Global("HelpCernd","GLOBAL",1)
!Dead("cefald01")
~ THEN BEGIN 17 // from:
  SAY #7909 /* ~Like the seasons that inevitably turn the world, so must I have known that we would meet again. I trust you are here to help investigate the druid grove?~ [CERND62] */
  IF ~~ THEN REPLY #7925 /* ~Yes, I would be glad to have you in my party and help as best I can. ~ */ GOTO 18
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
~ THEN REPLY #7926 /* ~I will allow you in my group, but this task is not truly mine and I won't treat it as such.~ */ GOTO 79
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #7927 /* ~I will help, but I must do so on my own. Tell me what to do, and I will do it myself.~ */ GOTO 80
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7928 /* ~I will help, but I must do so on my own. Tell me what to do, and I will do it myself.~ */ GOTO 21
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7929 /* ~I will help, but I must do so on my own. Tell me what to do, and I will do it myself.~ */ EXTERN ~BJAHEIR~ 16
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #7932 /* ~No, I am not.~ */ GOTO 83
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
!IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7933 /* ~No, I am not.~ */ GOTO 26
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7934 /* ~No, I am not.~ */ EXTERN ~BJAHEIR~ 20
END

IF ~~ THEN BEGIN 18 // from: 28.1 17.0
  SAY #7941 /* ~Good. We should seek druids near the grove first; they will be indications of how serious the problem is. They may recognize me, but we shouldn't count on it.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42358 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58715 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ GOTO 95
  IF ~~ THEN REPLY #42359 /* ~All right, let's go.~ */ DO ~JoinParty()
~ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 79.0
  SAY #7942 /* ~We should first investigate the druids of this grove. They may recognize me and let us pass, though that would depend on how far into evil they are. Let's go.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42360 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58714 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ GOTO 95
  IF ~~ THEN REPLY #42361 /* ~All right, let's go.~ */ DO ~JoinParty()
~ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 81.0
  SAY #7945 /* ~Go and investigate the local druids. See how far their taint runs and then return to tell me. ~ */
  IF ~~ THEN DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 28.0 17.3
  SAY #7948 /* ~Then I will tell you what is needed. Investigate the local druids. See what they are doing and whom they follow. I must know where the taint originates.~ */
  IF ~~ THEN DO ~SetGlobal("HelpCernd","GLOBAL",1)
SetGlobal("NoHelpCernd","GLOBAL",0)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #7952 /* ~My dear, your waves of anger may move smaller stones, but the patient stream will carve a mountain. If <PRO_HESHE> wants to help alone, so be it.~ */
  IF ~~ THEN DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 23 // from: 84.0
  SAY #7953 /* ~Of course, such selfish needs should not be your motivation. If nature cannot compel you, perhaps you should not be a druid.~ */
  IF ~~ THEN REPLY #7954 /* ~Nature has no better a servant than I! I will help, but I will do it on my own!~ */ GOTO 80
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7955 /* ~I refuse. I have no wish to participate in this.~ */ GOTO 24
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN REPLY #7956 /* ~I refuse. This is not my concern.~ */ EXTERN ~BJAHEIR~ 17
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #7957 /* ~The winter before you will be long and cold. When you change your mind, I will need insight on the local druids. Return if you find how deep their taint goes.~ */
  IF ~~ THEN DO ~SetGlobal("NoHelpCernd","GLOBAL",1)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #7959 /* ~Now, child, they will face the task eventually. A druid must eventually challenge for the title of Great Druid, but not while the druid grove is compromised...~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 18
END

IF ~~ THEN BEGIN 26 // from: 17.6
  SAY #7964 /* ~If that is your choice, so be it. I will remain here until I can accomplish this task on my own. Perhaps if you change your mind... well, we shall see.~ */
  IF ~~ THEN DO ~SetGlobal("NoHelpCernd","GLOBAL",1)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #7966 /* ~Now, child, it is our duty. If they do not follow, then that is their choice. I request that you stay with them as guide even if they do not follow our tenets.~ */
  IF ~~ THEN DO ~SetGlobal("NoHelpCernd","GLOBAL",1)
~ GOTO 85
END

IF ~  Global("NoHelpCernd","GLOBAL",1)
!Dead("cefald01")
~ THEN BEGIN 28 // from:
  SAY #7967 /* ~You return as the dusk, though I hope you choose not to bring darkness to this meeting. Have you decided to aid in the cleansing of this druid grove and end the suffering of Trademeet?~ [CERND63] */
  IF ~~ THEN REPLY #7968 /* ~I will do what I can, though I do not wish you in my group.~ */ GOTO 21
  IF ~~ THEN REPLY #7969 /* ~I will help. Join with me and point the way.~ */ GOTO 18
  IF ~~ THEN REPLY #7970 /* ~No, I will not.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.2
  SAY #7971 /* ~Then nothing has changed. Leave me.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("HelpCernd","GLOBAL",1)
!Dead("cefald01")
~ THEN BEGIN 30 // from: 45.0 44.0
  SAY #7972 /* ~Your investigations have been fruitful? Let us examine them for possible solutions to this regrettable situation. Speak what you have learned of the local druids. How are they tainted?~ [CERND64] */
  IF ~~ THEN REPLY #7973 /* ~I do not have anything to tell you yet.~ */ GOTO 34
  IF ~~ THEN REPLY #7974 /* ~I do not have anything to tell you. You should join me so we can look together.~ */ UNSOLVED_JOURNAL #54952 /* ~Animal trouble in Trademeet: Joined to investigate

I have joined with Cernd to investigate the trouble with the druids near Trademeet. He has suggested that we seek them out, as many may recognize him and give us information.~ */ GOTO 35
  IF ~  Global("DruidTalk","GLOBAL",1)
~ THEN REPLY #8019 /* ~A woman named Faldorn has taken over. She is a Shadow Druid at heart.~ */ GOTO 86
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
Global("TalkedFaldor1","GLOBAL",1)
~ THEN REPLY #8021 /* ~I spoke with Faldorn, a Shadow Druid. She awaits a challenge from another druid.~ */ GOTO 86
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
Global("TalkedFaldor1","GLOBAL",1)
~ THEN REPLY #8022 /* ~I spoke to the Shadow Druid Faldorn. She challenged me, because only a druid can remove power from her.~ */ GOTO 86
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
!InParty("Jaheira")
Global("TalkedFaldor1","GLOBAL",1)
~ THEN REPLY #8023 /* ~I spoke with the Shadow Druid Faldorn. I think she made sense. I may side with her.~ */ GOTO 89
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
InParty("Jaheira")
Global("TalkedFaldor1","GLOBAL",1)
~ THEN REPLY #8045 /* ~I spoke with the Shadow Druid Faldorn. I think she made sense. I may side with her.~ */ GOTO 90
END

IF ~~ THEN BEGIN 31 // from: 6.3
  SAY #7993 /* ~Being a servant of nature, you will recognize the danger. The balance of this area is in disarray, and once it falls, there will be hardship for all.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 32 // from: 6.1
  SAY #7996 /* ~Yes, I see you have a druid with you. Jaheira, is it? She will also be concerned, for she will know the danger of balance lost.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 33 // from: 6.2
  SAY #7997 /* ~You have the ranger Minsc in your group. Likely he will also understand the danger of balance being lost, even though I have heard he has lost his own. ~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 34 // from: 30.0
  SAY #7998 /* ~Then please continue your search. If attacks such as these are allowed to continue, it threatens the balance of the whole region.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY #7999 /* ~That would be best. I know many of the druids that once frequented this area. Perhaps they will be sympathetic. Come, we must hurry to the grove.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42362 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58713 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ GOTO 95
  IF ~~ THEN REPLY #42363 /* ~All right, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 86.0
  SAY #8000 /* ~Do you know of them? They have forsaken balance in favor of militant action. They believe they follow the Earthmother, but blood is not fitting tribute.~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #8069 /* ~This must be stopped before forces from Trademeet seek revenge. The toll on the wood and the people alike will be horrendous.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 38 // from: 88.0
  SAY #8073 /* ~Such dark rituals are frowned upon, but Shadow Druids stop at nothing. We have but one option: She can be challenged, but only a druid can do it.~ */
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #8074 /* ~I could challenge her. It would only be right for me to do so.~ */ GOTO 39
  IF ~  OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
~ THEN REPLY #8075 /* ~You could challenge her. That appears to be why you have come here.~ */ GOTO 40
  IF ~  !Dead("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
~ THEN REPLY #8076 /* ~Jaheira could challenge her. She is a very determined servant of nature.~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 40.1 38.0
  SAY #8077 /* ~She will likely take your challenge, though it will be dangerous. You will not have the benefit of your fellow party members. Do you wish me to accompany you?~ */
  IF ~~ THEN REPLY #8078 /* ~No, I will do this myself.~ */ UNSOLVED_JOURNAL #55265 /* ~Animal trouble in Trademeet: I will challenge

I told Cernd of the Shadow Druid Faldorn, and he said that only a druid could challenge her leadership of the grove. I have volunteered and will go there on my own without Cernd. I will apprise him of the outcome... if I survive.~ */ GOTO 42
  IF ~~ THEN REPLY #8079 /* ~Yes, join my group and we shall go right now.~ */ UNSOLVED_JOURNAL #55291 /* ~Animal trouble in Trademeet: We will challenge

I told Cernd of the Shadow Druid Faldorn, and he said that only a druid could challenge her leadership of the grove. I have volunteered, and Cernd has joined with me for support, though he has said that I will be on my own when facing her.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #8080 /* ~It is indeed. I must restore balance before the local settlers grow to hate nature. Should we present as a group, or should I go alone?~ */
  IF ~~ THEN REPLY #8081 /* ~I would be honored to come with you. Join my group and we shall leave immediately.~ */ UNSOLVED_JOURNAL #55203 /* ~Animal trouble in Trademeet: Cernd will challenge

Cernd will challenge Faldorn for leadership of the druid grove, and I have joined with him that we might present a united front as a group. Cernd seems confident that he will win.~ */ GOTO 43
  IF ~  Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN REPLY #8082 /* ~I do not have room for you in my group. I will make the challenge myself in your stead.~ */ GOTO 39
  IF ~  !Dead("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
~ THEN REPLY #8089 /* ~I do not have room for you in my group. Jaheira can make the challenge in your stead though.~ */ GOTO 41
  IF ~~ THEN REPLY #8093 /* ~No, I have no room for you at this time. I will just observe.~ */ UNSOLVED_JOURNAL #55232 /* ~Animal trouble in Trademeet: Cernd will challenge

Cernd has agreed to challenge Faldorn's leadership of the druid grove. She will apparently be vulnerable to proper druidic challenges, despite whatever spell she has cast for protection. I did not want him in my group though, so he will challenge on his own.~ */ GOTO 46
END

IF ~~ THEN BEGIN 41 // from: 40.2 38.2
  SAY #8083 /* ~Yes, I think she would be honored, as any druid should be. Go to Faldorn to challenge. All will become clear after that. Do you wish me to come as well?~ */
  IF ~~ THEN REPLY #8084 /* ~Yes, join my group and we will leave right now.~ */ UNSOLVED_JOURNAL #55128 /* ~Animal trouble in Trademeet: Apprised Cernd

I have told Cernd what I know of the situation with Faldorn and the druids. He has said that only a challenge from another druid can unseat her, and I have suggested that Jaheira give it a try. ~ */ GOTO 43
  IF ~~ THEN REPLY #8085 /* ~No, we will do this on our own.~ */ UNSOLVED_JOURNAL #55128 /* ~Animal trouble in Trademeet: Apprised Cernd

I have told Cernd what I know of the situation with Faldorn and the druids. He has said that only a challenge from another druid can unseat her, and I have suggested that Jaheira give it a try. ~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1 39.0
  SAY #8086 /* ~Very well. I await here in the dark for the dawn to rise. Go quickly.~ */
  IF ~~ THEN DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 40.0 39.1
  SAY #8087 /* ~Excellent. We are all the stronger having joined. Let's go quickly, before she rallies any more wayward druids to her cause.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42364 /* ~I think I should tell you as well that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ GOTO 64
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58711 /* ~Perhaps you should know that I eventually intend to hunt down a powerful mage named Irenicus. That is, first and foremost, my goal.~ */ GOTO 95
  IF ~~ THEN REPLY #42365 /* ~Okay, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 89.0
  SAY #8090 /* ~No, you were wise to seek council when tempted. You would not have lived to see the dawn. Forgive my repetition, but we must get back to the business at hand.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 45 // from: 91.0
  SAY #8024 /* ~Faldorn smells of honey, but she will undoubtedly crush any foolish enough to taste of it. Forgive my repetition, but we must get back to the business at hand.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 46 // from: 40.3
  SAY #8094 /* ~Then we will go there presently and you may watch my victory or defeat. For all concerned, I hope I am the champion nature deserves. ~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35j",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 61.0
  SAY #8106 /* ~I feared Shadow Druids were to take this land and was sent from the north to investigate, but now I hear I am no longer needed? ~ */
  IF ~~ THEN REPLY #8107 /* ~That is true. We saw the trouble brewing in this place and decided to take action. ~ */ GOTO 92
  IF ~~ THEN REPLY #8108 /* ~It seems you were not needed at all. Go on your way. This place is in capable hands.~ */ GOTO 49
  IF ~~ THEN REPLY #8109 /* ~You have heard correctly. You are free to go if you have no other business here.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 93.0 51.0
  SAY #8114 /* ~You look to be a wandering sort; would you consent to my joining with you? I can best keep watch o'er the land if I am traveling through it.~ */
  IF ~~ THEN REPLY #8115 /* ~Certainly, I would be glad to have you. Come, we must be off.~ */ DO ~EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55364 /* ~Animal trouble in Trademeet: Joined with Cernd

I apprised the captured Cernd of how I solved the trouble with the druid grove and how I restored balance to the region. He was grateful and offered to join with me now that his duty was done. I'm sure he will be a valuable asset.~ */ GOTO 52
  IF ~~ THEN REPLY #8116 /* ~No, thank you, but I have no need of you at the moment. Perhaps another time?~ */ DO ~EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55363 /* ~Animal trouble in Trademeet: Told Cernd of outcome

I told the druid Cernd about how I solved the problems in the druid grove. He was grateful, but I don't know if I wished him in my group. He has gone to the grove, where he has said I may find him if need be. ~ */ GOTO 50
  IF ~~ THEN REPLY #8117 /* ~All right, but do try to keep quiet. I need another back, not another voice.~ */ DO ~EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55364 /* ~Animal trouble in Trademeet: Joined with Cernd

I apprised the captured Cernd of how I solved the trouble with the druid grove and how I restored balance to the region. He was grateful and offered to join with me now that his duty was done. I'm sure he will be a valuable asset.~ */ GOTO 53
  IF ~~ THEN REPLY #8118 /* ~I have no need or desire to have you around. You are of no use to me.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.3 47.1
  SAY #8119 /* ~Well, no need to be rude about it. I shall take my leave and go to the grove where I may be of some use. If you have a change of heart, you may find me there.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55363 /* ~Animal trouble in Trademeet: Told Cernd of outcome

I told the druid Cernd about how I solved the problems in the druid grove. He was grateful, but I don't know if I wished him in my group. He has gone to the grove, where he has said I may find him if need be. ~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #8122 /* ~Perhaps. I shall make my way to the grove in the meantime and help in the reorganization. I will be there if I am needed.~ */
  IF ~~ THEN DO ~EscapeAreaMove("ar1900",2432,604,E)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.2
  SAY #8123 /* ~Well then, where should I go? I could go to the grove, but Verthan was likely installed as a temporary leader, and he is more than capable.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 52 // from: 58.0 48.0
  SAY #8130 /* ~A new season comes, and growth is renewed. I am grateful for your indulgence.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42366 /* ~I think I should tell you that my ultimate goal is to rescue an old friend of mine named Imoen. She's a captive of the Cowled Wizards.~ */ GOTO 65
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58710 /* ~Perhaps you should know that I intend to hunt down a powerful mage named Irenicus. There could be considerable danger involved.~ */ GOTO 94
  IF ~~ THEN REPLY #42367 /* ~All right, let's go, unless more is to be done here.~ */ DO ~JoinParty()
~ EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 53 // from: 48.2
  SAY #8131 /* ~Hmm, I wonder if I will enjoy your company. Still, even vicious animals have a place in the order of things. I will give you your due if you give me mine.~ */
  IF ~  Global("toldCerndImoen","LOCALS",0)
GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #42369 /* ~I think I should tell you that my ultimate goal is to rescue an old friend of mine named Imoen, who has been taken hostage by the Cowled Wizards. It could be quite dangerous.~ */ GOTO 65
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY #58708 /* ~Perhaps you should know that I intend to hunt down a powerful mage named Irenicus. There could be considerable danger involved.~ */ GOTO 94
  IF ~~ THEN REPLY #42370 /* ~All right, let's go.~ */ DO ~JoinParty()
~ EXIT
END

IF ~  Global("GrovePoisoned","GLOBAL",0)
Global("CerndWentHunting","GLOBAL",1)
Dead("cefald01")
Global("saidendFald","GLOBAL",0)
~ THEN BEGIN 54 // from:
  SAY #11204 /* ~The scourge has been purged? I can tell that the deed is done, for even now the land sighs relief. This has been a great service to nature, and she shall not forget.~ [CERND72] */
  IF ~~ THEN DO ~SetGlobal("saidendFald","GLOBAL",1)
SetGlobal("SpeakCerndSpeak","GLOBAL",2)
~ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #11207 /* ~Now to repair the land after the ritual that Faldorn performed. Her invulnerability was at great cost; her loss will cause the land to suffer immeasurably.~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #11216 /* ~Verthan will serve as challenge master and Great Druid until all the healing is done. His reverence for the land will not allow him to be corrupted.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #11218 /* ~When the scars are healed, things will be as they were... or very nearly. A new Great Druid will need to be chosen. More turmoil ahead, but for now we can rest.~ */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #11219 /* ~What of you, <CHARNAME>? Are you off to travel? If ever you need help, you may find me standing amidst the beauty of nature that is our druid grove.~ */
  IF ~~ THEN REPLY #11249 /* ~A fine pairing, I think. Come, there is much to see.~ */ DO ~EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55342 /* ~Animal trouble in Trademeet: Balance is restored

Faldorn has been defeated. She was killed in a druid battle, and the grove is now free of her influence. Verthan has been appointed challenge master until such time as the grove recovers from the Shadow Druid taint. Trademeet will suffer no more attacks.~ */ GOTO 52
  IF ~~ THEN REPLY #11252 /* ~Of course, Cernd. I know where to find you.~ */ DO ~EraseJournalEntry(54895)
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
~ SOLVED_JOURNAL #55342 /* ~Animal trouble in Trademeet: Balance is restored

Faldorn has been defeated. She was killed in a druid battle, and the grove is now free of her influence. Verthan has been appointed challenge master until such time as the grove recovers from the Shadow Druid taint. Trademeet will suffer no more attacks.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #11251 /* ~I look forward to our next meeting.~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
SetDialogue("cerndp")
EscapeAreaMove("ar1900",2432,604,E)
~ EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 60 // from:
  SAY #38462 /* ~I will speak for myself! Faldorn, for crimes upon this grove and her surrounding peoples, I challenge you! By the rites laid down ages ago, you cannot refuse!~ */
  IF ~~ THEN EXTERN ~CEFALDOR~ 21
END

IF ~  NumTimesTalkedTo(0)
Dead("cefald01")
Global("saidendFald","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #39753 /* ~As though on the wings of pigs, I have been granted a fanciful tale of daring and danger amidst the wood. Are you the servants of the wild who have restored the balance to this place?~ [CERND66] */
  IF ~~ THEN DO ~SetGlobal("TalkedToCernd","GLOBAL",1)
SetGlobal("KilledFaldSelf","GLOBAL",1)
~ GOTO 47
END

IF ~  !Dead("cefald01")
CheckStatGT(LastTalkedToBy,9,CHR)
~ THEN BEGIN 62 // from:
  SAY #39754 /* ~Hello, and well met to you. I am Cernd, though my identity is surely no secret after the fuss I have caused here. ~ [CERND01] */
  IF ~~ THEN DO ~SetGlobal("TalkedToCernd","GLOBAL",1)
~ GOTO 0
END

IF ~  !Dead("cefald01")
CheckStatLT(LastTalkedToBy,10,CHR)
~ THEN BEGIN 63 // from:
  SAY #39755 /* ~Well, I take it that your grim visages are to be my escorts to whatever fate the merchants have decided upon? I have feared your coming. ~ [CERND02] */
  IF ~~ THEN DO ~SetGlobal("TalkedToCernd","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 64 // from: 43.0 35.0 19.0 18.0 15.0 14.0 13.0
  SAY #42353 /* ~Then you need my help? If you aid me in completing the quest I have begun, I have no qualms about aiding you in yours. It might be an exciting diversion.~ */
  IF ~~ THEN DO ~SetGlobal("toldCerndImoen","LOCALS",1)
RevealAreaOnMap("ar1900")
SetGlobal("HelpCernd","GLOBAL",1)
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 53.0 52.0
  SAY #42368 /* ~Hmm, I know little of these Cowled Wizards, but enough to believe that your friend may be in real danger. I would be happy to help, regardless of the risk.~ */
  IF ~~ THEN DO ~SetGlobal("toldCerndImoen","LOCALS",1)
RevealAreaOnMap("ar1900")
SetGlobal("HelpCernd","GLOBAL",1)
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
JoinParty()
~ EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 66 // from: 1.0 0.0
  SAY #42667 /* ~He seemed less prone to rash action, though the merchants had little reason to trust me. I arrived not long after an attack, so it must have seemed suspicious.~ */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #42668 /* ~I should have crept quietly as the vine instead of blustering as the wind. On occasion, I forget the subtleties that allows nature to progress.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 68 // from: 1.3 0.3
  SAY #42669 /* ~You bluster as the coming storm, but you do not show the same signs and cannot fool me. Mercenary you may be, but the merchants have not sent you.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 69 // from: 10.0 9.0 4.1 3.0
  SAY #42670 /* ~I am Cernd, as I said, sent from the north to investigate why the druid order of this region has severed its ties with the traditional hierarchy.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 70 // from: 33.0 32.0 31.0 6.0
  SAY #42671 /* ~I know many druids in this region, and they would not support such actions without due cause. I suspect that there has been a change in leadership here.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 71 // from: 5.0
  SAY #42672 /* ~I have my services as a druid to offer. No doubt the people here will add their gratitude to the reward, though none of them know it yet.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 72 // from: 8.3 8.2
  SAY #42679 /* ~Unfortunate. We would be stronger together. Like snowflakes on the bough, if we were many, it might snap it with ease.~ */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 73 // from: 8.4
  SAY #42681 /* ~You only make the task more difficult. Perhaps this is best left to druids, but I see no reason why outsiders we disrupt shouldn't be part of the solution.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 74 // from: 8.6 8.5
  SAY #42682 /* ~I find your decision suspect, especially since you are a druid yourself. It is distressing you do not act the part. You would do well to reconsider in time.~ */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #42683 /* ~Nature rewards her servants well, but she also punishes when she must. What you are is more than a title, your duties more than smelling the occasional rose.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 76 // from: 8.0
  SAY #42684 /* ~We must go to the druid grove and investigate, though I wish circumstances were better. Every druid goes eventually; some challenge for Great Druid status...~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 77 // from: 8.1
  SAY #42685 /* ~An odd condition to place since you are a druid yourself. If you dislike this so much, I think you will find progressing in your skills to be rather difficult.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 78 // from:
  SAY #42686 /* ~My, but she has fire, does she not? She is a fine child of the wood. No, you need not accompany me, but perhaps you can meet me near the grove.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 79 // from: 17.1
  SAY #42687 /* ~Your intent will not matter if the results are good. I regret involving others, especially if they are not totally willing, but one does what one must.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 80 // from: 23.0 17.2
  SAY #42688 /* ~Very well, though I would have preferred to accompany you. Sometimes nature needs her servants to act as one. ~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #42689 /* ~I trust you will do what you can even if you do not walk with me. Perhaps you will fare better than I, though I am sure traveling together would have been better.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 82 // from: 22.0
  SAY #42690 /* ~Investigate the druids here and learn what you can. I must know how deep the taint flows. Go, and remember that your own party demands success of you.~ */
  IF ~~ THEN DO ~SetGlobal("HelpCernd","GLOBAL",1)
~ UNSOLVED_JOURNAL #54949 /* ~Animal trouble in Trademeet: Investigate the grove

Cernd has directed me to investigate the druids in the grove south of Trademeet. If I really wish to help, I am to report any findings to him.~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 17.5
  SAY #42691 /* ~No? As a druid yourself, you have little choice in the matter. Even if you do not confront these druids on my behalf, you will have to do so at some point.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #42692 /* ~Beyond a certain level, druids must come to the grove to challenge for title and status. If you do not act now, you may not be able to utilize it later.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 85 // from: 27.0
  SAY #42693 /* ~I fear Jaheira will not let this matter rest. If you wish to keep her company, you will have to act. Until then, I await here.~ */
  IF ~~ THEN DO ~SetGlobal("NoHelpCernd","GLOBAL",1)
~ UNSOLVED_JOURNAL #54951 /* ~Animal trouble in Trademeet: I refused, but he'll wait

I refused to help Cernd investigate the druids near Trademeet. He says that he will wait there until I change my mind. He also said that all druids must eventually go to the grove to challenge for their title and status. This may eventually affect Jaheira.~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 30.4 30.3 30.2
  SAY #42694 /* ~Then it is as I feared. Shadow Druid violence is a disgrace to nature, and now that they have a hand in this area, they will not stop their advance.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 87 // from: 37.0
  SAY #42695 /* ~We must issue a challenge on behalf of the virtuous. Unfortunately, only one attuned with the ways of the druids will be able to face Faldorn.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #42696 /* ~It is doubtful she will leave the sanctity of the druid grove, and if she has surrounded herself with its protective magics, she will be nearly invulnerable.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 89 // from: 30.5
  SAY #42697 /* ~That will not be an option. Shadow Druids only accept their own kind; if she hinted at that, it was likely just to lure you into a trap you would not survive.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 90 // from: 30.6
  SAY #42698 /* ~First, I doubt Jaheira would let you live through that decision. Second, Shadow Druids never accept outsiders. You would be seen as tainted by civilization.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #42699 /* ~If this Faldorn hinted at such an offer, it was probably only to place you in a more vulnerable position, a trap you would surely have not survived.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 92 // from: 47.0
  SAY #42700 /* ~It is as though the field has sown itself. I am free of my duties in this regard then, though I have no pressing need to travel to the north once more.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #42701 /* ~I am not needed at the grove if the danger has passed. Likely they have appointed Verthan to challenge master, and he will perform admirably.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 94 // from: 53.1 52.1
  SAY #58709 /* ~Hmm, I am no stranger to quests that threaten my life. I will aid you, if you allow it. In fact, I would be glad to.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("HelpCernd","GLOBAL",1)
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
JoinParty()
~ EXTERN ~CECHALLE~ 4
END

IF ~~ THEN BEGIN 95 // from: 43.1 35.1 19.1 18.1 15.1 14.1 13.1
  SAY #58712 /* ~Aid me in my quest, friend, and I shall have no qualms about aiding you in yours... so long as you give me my due. That is all I ask.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("HelpCernd","GLOBAL",1)
SetGlobalTimer("FindDruids","GLOBAL",SIX_DAYS)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 72.0
  SAY #60927 /* ~I will await you at the grove I have marked on your map. Do not tarry; our task is difficult, and time is short.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("ar1900")
SetGlobal("CerndWentHunting","GLOBAL",1)
EscapeAreaMove("ar1900",2432,604,E)
~ UNSOLVED_JOURNAL #54948 /* ~Animal trouble in Trademeet: Said I'd meet Cernd

Cernd thinks the events in Trademeet might have something to do with a local druid grove losing touch with the greater hierarchy. I said I might investigate, but I didn't want him to join my party. I will meet him at the grove and discuss it there.~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #61692 /* ~I look forward to our next meeting.~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
SetDialogue("cerndp")
~ EXTERN ~CECHALLE~ 4
END
