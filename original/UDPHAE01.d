// creator  : weidu (version 24900)
// argument : UDPHAE01.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~UDPHAE01~

IF ~  Global("SolaufeinJob","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #51031 /* ~It is about time that my captors were finally defeated. Hmph. I was beginning to think that they would reach their illithid city after all.~ */
  IF ~~ THEN DO ~AddexperienceParty(20000)
~ EXTERN ~UDSOLA01~ 52
END

IF ~~ THEN BEGIN 1 // from:
  SAY #51033 /* ~Who is that? Solaufein? So... matron mother sent you, did she? How that must gall you, risking your life to save mine.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 53
END

IF ~~ THEN BEGIN 2 // from:
  SAY #51035 /* ~Yes, you did... as any male should. You have done well enough, I suppose, you and your... assistance. Hmmm... who is this <PRO_MALEFEMALE> with you?~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 54
END

IF ~~ THEN BEGIN 3 // from:
  SAY #51037 /* ~I am sure <PRO_HESHE> can speak for <PRO_HIMHER>self, male. Am I correct? You have a tongue, yes? Who might you be?~ */
  IF ~~ THEN REPLY #51038 /* ~I am Veldrin of Ched Nasad.~ */ GOTO 4
  IF ~~ THEN REPLY #51039 /* ~I am no one of importance.~ */ GOTO 5
  IF ~~ THEN REPLY #51040 /* ~You've a lot of nerve, woman! We just saved you from the illithids, and all you can do is insult us?!~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51041 /* ~Indeed? A foreigner? How very odd. We shall have to speak more, you and I, once we are back in Ust Natha.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51042 /* ~An excellent attitude to have. But I am sure there is more to you than that. We shall have to speak more on this when we are back in Ust Natha.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #51043 /* ~Ahhhh, we have a feisty lesser <PRO_MALEFEMALE>, do we? We shall have to discuss this attitude when we are back in Ust Natha.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.0 4.0
  SAY #51046 /* ~I shall head back to the city on my own and inform the matron mother of your... successful service, Solaufein. You have proven useful. You should be grateful.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 55
END

IF ~~ THEN BEGIN 8 // from:
  SAY #51048 /* ~I appreciate your touching "concern," but I can handle myself, Solaufein. And it is my command, so you have no choice. Farewell.~ */
  IF ~~ THEN DO ~SetGlobal("udDrowPlot","GLOBAL",5)
EscapeArea()
~ EXIT
END

IF ~  Global("SolaufeinJob","GLOBAL",5)
Global("PhaereJob","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #51155 /* ~Ah! So Veldrin arrives at last to greet the female that <PRO_HESHE> rescued so valiantly from the clutches of the filthy devourers!~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 77
END

IF ~~ THEN BEGIN 10 // from:
  SAY #51162 /* ~I was speaking to Veldrin, Solaufein. When I speak to you, it shall be to command you to lick my boot. Keep your bitterness silent or lose your tongue.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51165 /* ~Now, ignore your emasculated commander's outburst, Veldrin, and consider this a time for reward and enjoyment. Mother Ardulace was pleased by your performance.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51167 /* ~Solaufein's abilities are known to her, but she was delighted to learn you are such a powerful fighter. Ust Natha could use such as you, Veldrin.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51168 /* ~Amongst the drow, only the strong survive... You could have slaves at your beck and call, rewards at your fingertips... the favor of Lolth. How does this sound?~ */
  IF ~~ THEN REPLY #51173 /* ~Sounds good to me!~ */ GOTO 14
  IF ~~ THEN REPLY #51174 /* ~What's the catch?~ */ GOTO 16
  IF ~~ THEN REPLY #51175 /* ~I don't think I'm interested in anything you have to offer.~ */ GOTO 18
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #51177 /* ~I think I'd rather have you.~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51179 /* ~Excellent. It is good to see someone with a modicum of ambition. Something not everyone has a true grasp of... isn't that right, Solaufein?~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 78
END

IF ~~ THEN BEGIN 15 // from:
  SAY #51181 /* ~Sometimes the worm is worth the hook, fool. One might have thought you would have learned that lesson long ago.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #51183 /* ~The catch is that you have to earn that favor, Veldrin. Favor and comforts are not given out lightly... they must be purchased with blood and sacrifice.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 79
END

IF ~~ THEN BEGIN 17 // from:
  SAY #51188 /* ~Silence! Not all drow forget that sometimes a reward is worth spending a part of yourself... or everything. It is a lesson you would do well to relearn.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #51195 /* ~That is too bad, <PRO_MALEFEMALE>, because you have no choice in the matter. Perform poorly and have nothing... or perform well and be rewarded well.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 80
END

IF ~~ THEN BEGIN 19 // from:
  SAY #51207 /* ~If I dance, fool, it shall be upon the grave of your gutted corpse. Speak again with such a tone, and that day shall come sooner than you think.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 13.3
  SAY #51211 /* ~Ahhh, is that so? Perhaps I may just show you the carnal delights of which only I am capable, male... but only if you prove yourself worthy of that honor.~ */
  IF ~~ THEN DO ~SetGlobal("CheckMad","AR2202",1)
SetGlobal("CheckMad","AR2202",1)
SetGlobal("CheckMad","AR2202",1)
SetGlobal("PhaereInnuendo","GLOBAL",1)
~ EXTERN ~UDSOLA01~ 81
END

IF ~~ THEN BEGIN 21 // from:
  SAY #51213 /* ~A pity some cannot comprehend the exquisite pleasure of being bitten, Solaufein. Perhaps some are hardy enough to withstand my poison and shudder with ecstasy.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 19.0 17.0 15.0
  SAY #51221 /* ~Seeing as you are so capable, Veldrin, you and Solaufein have been given another task to complete for the greater glory of Lolth.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51223 /* ~You will meet me on the city platform, away from curious ears. But not right away... rest and amuse yourselves for a time. I shall be here awhile.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51224 /* ~After I leave, take no longer than a few days before you meet with me on the platform. This is as the matron mother commands, and so shall it be.~ */
  IF ~~ THEN DO ~EraseJournalEntry(97326)
AddJournalEntry(97326,QUEST_DONE)
SetGlobal("PhaereJob","GLOBAL",1)
SetGlobalTimer("udMovePha","GLOBAL",FIVE_HOURS)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ UNSOLVED_JOURNAL #15725 /* ~Inside the drow city

I have met Phaere, the daughter of the matron mother, at the tavern as commanded. It seems her mother is very interested in me, and we are to perform another task. After Phaere leaves, Solaufein and I are to meet her within a few days at the city entrance to receive further instructions. Until then, my time is my own.~ */ EXIT
END

IF ~  InPartySlot(LastTalkedToBy,0)
Global("SolaufeinJob","GLOBAL",5)
Global("PhaereJob","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #51279 /* ~Yes? Is there something you wish, Veldrin?~ */
  IF ~~ THEN REPLY #51280 /* ~What's the deal with you and Solaufein?~ */ GOTO 26
  IF ~~ THEN REPLY #51281 /* ~What can you tell me about the matron mother and your House?~ */ GOTO 29
  IF ~~ THEN REPLY #51282 /* ~Do you know anything about dragons?~ */ GOTO 35
  IF ~~ THEN REPLY #51283 /* ~No, not really.~ */ GOTO 38
END

IF ~~ THEN BEGIN 26 // from: 36.0 34.0 25.0
  SAY #51284 /* ~Have you asked him this question? The answer you get may be entirely different. Let me just say that Solaufein is too weak to be worthy of my respect.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51285 /* ~The matron mother would sacrifice him to the temple for his boldness, but he has allied himself with a powerful House. So the arrogant male walks free.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #51286 /* ~But fortunes change, Veldrin. Fortunes always change.~ */
  IF ~~ THEN REPLY #51287 /* ~What can you tell me about the matron mother and your House?~ */ GOTO 29
  IF ~~ THEN REPLY #51288 /* ~Do you know anything about dragons?~ */ GOTO 35
  IF ~~ THEN REPLY #51289 /* ~I'll be on my way.~ */ GOTO 38
END

IF ~~ THEN BEGIN 29 // from: 36.1 28.0 25.1
  SAY #51290 /* ~House Despana exists in more places than merely Ust Natha, Veldrin. Here, Mother Ardulace rules over our House and is our most favored of Lolth.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #51291 /* ~I have many younger sisters scheming for my position. The more capable, both older and younger, I have poisoned or murdered as necessary.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #51292 /* ~I am the strongest and eldest of Ardulace's daughters now. And when she is weak and I kill her, I will become the matron mother of my House.~ */
  IF ~~ THEN REPLY #51293 /* ~That sounds horrible!~ */ GOTO 32
  IF ~~ THEN REPLY #51294 /* ~You sound rather ambitious, Phaere.~ */ GOTO 33
  IF ~~ THEN REPLY #51295 /* ~Excellent! You are very strong!~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51296 /* ~Does it? It seems a common enough practice to me. Are you saying that you do not have the stomach for such a practice? A pity.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 31.2 31.1
  SAY #51297 /* ~Soon, fortune shall move House Despana above all others in Ust Natha, and I shall be matron mother of Lolth's most favored... stay close to my path.~ */
  IF ~~ THEN REPLY #51298 /* ~Why? What is happening soon?~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #51299 /* ~You shall see, Veldrin. If you are intelligent, that is.~ */
  IF ~~ THEN REPLY #51300 /* ~So... what is the deal, exactly, with you and Solaufein?~ */ GOTO 26
  IF ~~ THEN REPLY #51301 /* ~Tell me... do you know anything of dragons?~ */ GOTO 35
  IF ~~ THEN REPLY #51302 /* ~I see. I'll be on my way.~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.1 28.1 25.2
  SAY #51303 /* ~Dragons? Perhaps. Why do you ask?~ */
  IF ~~ THEN REPLY #51304 /* ~Curiosity.~ */ GOTO 36
  IF ~~ THEN REPLY #51305 /* ~No reason.~ */ GOTO 36
  IF ~~ THEN REPLY #51306 /* ~I just wanted to be sure we did not encounter any... I hear tales of a silver dragon in the caverns that preys upon the drow.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 37.0 35.1 35.0
  SAY #51307 /* ~Curiosity is a poor trait to exist in a servant, Veldrin. Staunch your questions for now, for all shall be revealed to you that you wish in good time.~ */
  IF ~~ THEN REPLY #51308 /* ~What is the deal, then, between you and Solaufein?~ */ GOTO 26
  IF ~~ THEN REPLY #51309 /* ~What can you tell me, then, about the matron mother and your House?~ */ GOTO 29
  IF ~~ THEN REPLY #51310 /* ~I see. I'll be on my way.~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY #51311 /* ~Ah. You need not worry about such tales any longer, Veldrin. Such a creature no longer poses a threat to us.~ */
  IF ~~ THEN REPLY #51312 /* ~Why? Are you sure?~ */ GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 36.2 34.2 28.2 25.3
  SAY #51313 /* ~Yes, enjoy the time you have to yourself. You are fortunate, Veldrin, that my gaze has fallen upon you. With you by my side, things will be made much easier.~ */
  IF ~  Gender(Player1,FEMALE)
~ THEN EXIT
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #51314 /* ~And, if you are an obedient and intelligent male... and an imaginative lover, should I desire... you may engineer to make things even easier for yourself. ~ */
  IF ~~ THEN EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Gender(Player1,MALE)
Gender(LastTalkedToBy,FEMALE)
Global("SolaufeinJob","GLOBAL",5)
Global("PhaereJob","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #51315 /* ~You are a companion of Veldrin? He has my attention now. Stay away from him, female, whatever your prior connection... or it shall be most unpleasant. ~ */
  IF ~~ THEN EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Gender(Player1,FEMALE)
Gender(LastTalkedToBy,FEMALE)
Global("SolaufeinJob","GLOBAL",5)
Global("PhaereJob","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #51317 /* ~You are a companion of Veldrin? It is good Ched Nasad sports strong women... together, we may conquer Ust Natha. But begone... you hold no interest for me.~ */
  IF ~~ THEN EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Gender(LastTalkedToBy,MALE)
Global("SolaufeinJob","GLOBAL",5)
Global("PhaereJob","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #51318 /* ~You are one of Veldrin's male companions? How interesting. Perhaps you shall be of service to me once my use of Veldrin is exhausted. Do not stray far.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PhaereJob","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #51322 /* ~Ah, you have finally come. Good. Your timing is excellent, as I had just arrived here recently myself. I trust you are ready to leave presently.~ */
  IF ~~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
~ EXTERN ~UDSOLA01~ 84
END

IF ~~ THEN BEGIN 44 // from:
  SAY #51326 /* ~None of my ambitions are foolish, Solaufein. And we are here to perform a service for the good of the city and the matron mother.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 85
END

IF ~~ THEN BEGIN 45 // from:
  SAY #51328 /* ~Silence! You will obey, male! An eye tyrant... a beholder... is in the city, smuggling adamantite. The matrons have decided we are to kill it.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 86
END

IF ~~ THEN BEGIN 46 // from:
  SAY #51332 /* ~I did. I am to join you in this duty. The eye tyrant has come on his Spelljammer ship, near here. Solaufein and I will go and scout it out, alone.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #51333 /* ~Veldrin... I trust you can find your own way to the ship. It is off one of the platforms in the southeast of Ust Natha. Do not take too long to catch up.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #51337 /* ~Come, Solaufein. We can catch up on "old times."~ */
  IF ~~ THEN DO ~AddJournalEntry(97327,QUEST)
SetGlobal("PhaereJob","GLOBAL",3)
SetGlobal("udPhaTimerOn","GLOBAL",1)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udMoveToBeholder","GLOBAL",1)
~ UNSOLVED_JOURNAL #23500 /* ~Inside the drow city

Phaere intends to join me and Solaufein in attacking a beholder that has been smuggling adamantite. The beholder has come to the drow city on a spelljammer ship off a platform in the southeast part of the city, and I am to meet Phaere and Solaufein there.~ */ EXIT
END

IF ~  Global("udMoveToBeholder","GLOBAL",2)
Global("PhaereJob","GLOBAL",3)
Global("PhaereSpeakBehold","GLOBAL",0)
~ THEN BEGIN 49 // from:
  SAY #51355 /* ~Veldrin! Finally! We have been watching the crew leave the ship for their rest, and I suspect the eye tyrant is soon to follow! We must be ready!~ */
  IF ~  GlobalLT("SolaufeinLikes","GLOBAL",1)
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
SetGlobal("PhaereSpeakBehold","GLOBAL",1)
~ EXTERN ~UDSOLA01~ 87
  IF ~  GlobalGT("SolaufeinLikes","GLOBAL",0)
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
SetGlobal("PhaereSpeakBehold","GLOBAL",1)
~ EXTERN ~UDSOLA01~ 88
END

IF ~~ THEN BEGIN 50 // from:
  SAY #51366 /* ~Hmph. Indeed... although I can—wait! Wait, be still! It comes, I sense it! Be ready!~ */
  IF ~~ THEN DO ~Wait(5)
CreateVisualEffect("SPFIREPI",[4126.3190])
PlaySound("PORTAL2")
Wait(1)
CreateCreature("udbeho01",[4126.3190],N)
~ UNSOLVED_JOURNAL #11690 /* ~Inside the drow city

Solaufein has warned me that I should bring no accidental harm to himself or Phaere when we engage the beholder. Such "accidents" happen too often in drow society, and no doubt I will be held accountable for such.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #51396 /* ~Indeed. Well done. Do not disturb the carcass, however. There will be several acolytes coming to deal with it.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 90
END

IF ~~ THEN BEGIN 52 // from:
  SAY #51402 /* ~Ask me no questions, Solaufein. We shall return to report to the matron mothers. Veldrin... I will see you again in the tavern within three days. ~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 91
END

IF ~~ THEN BEGIN 53 // from:
  SAY #51405 /* ~Do as you are commanded, male, and live. Veldrin, journey about the city at your will... but remember our meeting. Do not be late!~ */
  IF ~~ THEN DO ~EraseJournalEntry(97327)
AddJournalEntry(97327,QUEST_DONE)
AddJournalEntry(97328,QUEST)
SetGlobal("PhaereJob","GLOBAL",5)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
ActionOverride("Solaufein",EscapeAreaMove("ar2202",953,692,S))
EscapeAreaMove("AR2202",1000,756,S)
~ UNSOLVED_JOURNAL #15746 /* ~Inside the drow city

Now that the beholder is dead, Phaere and Solaufein have gone to report to the matron mothers. Phaere has commanded me to meet with her again in the tavern within three days.~ */ EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",5)
GlobalLT("SolaufeinJob","GLOBAL",6)
~ THEN BEGIN 54 // from:
  SAY #51436 /* ~I do not wish to speak to you, <MALEFEMALE>. Veldrin is the only one that I have business with at the moment.~ */
  IF ~~ THEN EXIT
END

IF ~  InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",5)
GlobalLT("SolaufeinJob","GLOBAL",6)
~ THEN BEGIN 55 // from:
  SAY #51439 /* ~It is good that you have come, Veldrin. Up until now I have only had the company of Solaufein, and his pathetic melancholy has nearly drained my patience.~ */
  IF ~~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
~ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #51461 /* ~So I shall be brief and send you on your way. You would like that, Solaufein, yes?~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 97
END

IF ~~ THEN BEGIN 57 // from:
  SAY #51464 /* ~Very well. The matron mothers have decided the deep gnomes, the svirfneblin, have not shown enough fear of the drow of late. ~ */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #51467 /* ~So it is time to teach them a lesson. Mother Ardulace has volunteered you for this particular service.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 98
END

IF ~~ THEN BEGIN 59 // from:
  SAY #51472 /* ~You have better things to do than to serve the Queen of the Demonweb Pits? Mother Lolth herself?~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 99
END

IF ~~ THEN BEGIN 60 // from:
  SAY #51475 /* ~No. You will go with Veldrin. Argue again and it shall be your tongue, Solaufein.~ */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #51476 /* ~Approach the svirfneblin village in the great caverns and await a patrol. Slaughter them... and bring back proof of the deed. Return here in a few days. ~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~UDSOLA01~ 100
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 144
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 182
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 162
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 123
END

IF ~~ THEN BEGIN 62 // from:
  SAY #51485 /* ~An odd sentiment for a drow. What would you propose? Mercy? How would that look to our true enemies? You shall do as I say without a further word.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 100
END

IF ~  Global("PhaereJob","GLOBAL",5)
Global("SolaufeinJob","GLOBAL",6)
~ THEN BEGIN 63 // from:
  SAY #51495 /* ~I suggest you go and find Solaufein at the svirfneblin village in the northwest part of the cavern... and quickly. I will not tolerate a delay.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PhaereJob","GLOBAL",5)
Global("SolaufeinJob","GLOBAL",7)
!PartyHasItem("MISCA6")
~ THEN BEGIN 64 // from:
  SAY #51522 /* ~What is this? If you killed the patrol, where is your proof?! Where is the leader's helmet?! Go and get it, fool! I will not brook another delay!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PhaereJob","GLOBAL",5)
Global("SolaufeinJob","GLOBAL",7)
PartyHasItem("MISCA6")
~ THEN BEGIN 65 // from:
  SAY #51523 /* ~Ahhh... you return, and with a svirfneblin helmet, no less. Good. I am sure the gnomes are scrambling as we speak to provide a tribute to the matron mothers.~ */
  IF ~~ THEN DO ~EraseJournalEntry(5832)
TakePartyItem("MISCA6")
SetGlobal("udPhaTimerOn","GLOBAL",0)
AddXPObject(Player1,28000)
AddXPObject(Player2,28000)
AddXPObject(Player3,28000)
AddXPObject(Player4,28000)
AddXPObject(Player5,28000)
AddXPObject(Player6,28000)
~ EXTERN ~UDSOLA01~ 111
END

IF ~~ THEN BEGIN 66 // from:
  SAY #51526 /* ~What is this? Are you losing your stomach for blood, Solaufein? The Spider Queen would be displeased to hear such, I would think.~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 112
END

IF ~~ THEN BEGIN 67 // from:
  SAY #51528 /* ~It is not for you to decide, male! I shall have your bloody heart ripped from your chest on the altar if you continue to speak!~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 113
END

IF ~~ THEN BEGIN 68 // from:
  SAY #51530 /* ~It is almost worth it to silence your impudent tongue! If a Handmaiden were to see you speak to me such, she would flay you open without a second thought!~ */
  IF ~~ THEN EXTERN ~UDSOLA01~ 114
END

IF ~~ THEN BEGIN 69 // from:
  SAY #51532 /* ~Bah! I will listen to no more! Veldrin! Meet me within my private quarters in the Female Fighters' Society tower. Within one hour, Veldrin... do *not* be late.~ */
  IF ~~ THEN REPLY #51533 /* ~Very well, I will be there.~ */ GOTO 70
  IF ~~ THEN REPLY #51534 /* ~Why? Why your private quarters?~ */ GOTO 71
  IF ~~ THEN REPLY #51535 /* ~Phaere, I have other things to do first.~ */ GOTO 72
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #51536 /* ~Good. You, Solaufein, will wait until the matron mothers find another task to set you to. May it lead you to a gruesome death, worm.~ */
  IF ~~ THEN DO ~EraseJournalEntry(97330)
AddJournalEntry(97330,QUEST_DONE)
AddJournalEntry(97331,QUEST)
SetGlobal("PhaereJob","GLOBAL",6)
SetGlobalTimer("udPhaTimer","GLOBAL",400)
SetGlobal("udPhaTimerOn","GLOBAL",1)
ActionOverride("Solaufein",EscapeArea())
EscapeAreaMove("ar2204",743,1008,S)
~ UNSOLVED_JOURNAL #23486 /* ~Inside the drow city

Phaere has something else in store for me, commanding that I meet her in her private quarters within the Female Fighters' Society tower.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 69.1
  SAY #51537 /* ~Because I wish privacy, worm! Fail to attend me and I shall have you dragged there screaming by hooks!~ */
  IF ~~ THEN DO ~EraseJournalEntry(97330)
AddJournalEntry(97330,QUEST_DONE)
AddJournalEntry(97331,QUEST)
SetGlobal("PhaereJob","GLOBAL",6)
SetGlobalTimer("udPhaTimer","GLOBAL",400)
SetGlobal("udPhaTimerOn","GLOBAL",1)
ActionOverride("Solaufein",EscapeArea())
EscapeAreaMove("ar2204",743,1008,S)
~ UNSOLVED_JOURNAL #23486 /* ~Inside the drow city

Phaere has something else in store for me, commanding that I meet her in her private quarters within the Female Fighters' Society tower.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.2
  SAY #51538 /* ~Do not balk me, <PRO_MALEFEMALE>! I will not hesitate to throw you upon Lolth's altar! One hour, Veldrin... or your death shall be a thing to make slaves tremble!~ */
  IF ~~ THEN DO ~EraseJournalEntry(97330)
AddJournalEntry(97330,QUEST_DONE)
AddJournalEntry(97331,QUEST)
SetGlobal("PhaereJob","GLOBAL",6)
SetGlobalTimer("udPhaTimer","GLOBAL",400)
SetGlobal("udPhaTimerOn","GLOBAL",1)
ActionOverride("Solaufein",EscapeArea())
EscapeAreaMove("ar2204",743,1008,S)
~ UNSOLVED_JOURNAL #23486 /* ~Inside the drow city

Phaere has something else in store for me, commanding that I meet her in her private quarters within the Female Fighters' Society tower.~ */ EXIT
END

IF ~  InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",6)
Global("SolaufeinJob","GLOBAL",7)
~ THEN BEGIN 73 // from:
  SAY #51627 /* ~You are lucky that my mood is improved, <PRO_MALEFEMALE>. I was pondering having you tortured for my amusement, but the whim has passed.~ */
  IF ~  Gender(Player1,MALE)
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
~ GOTO 74
  IF ~  Gender(Player1,FEMALE)
~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
~ GOTO 75
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #51662 /* ~You needn't look so nervous, fool. If I desired you for intimate matters, you'd be naked and sweating already. No, I need you for something else.~ */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 73.1
  SAY #51665 /* ~You are aware of my relationship with Solaufein, yes? You do not need to stare at me blankly. Our animosity is open and obvious.~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #51666 /* ~His insolence is beyond all endurance. I cannot tolerate it further without risking my position in Lolth's hierarchy.~ */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #51667 /* ~But I also cannot take action that would be traced back to myself or my House without risking war. So you shall take action for me. You will kill Solaufein.~ */
  IF ~~ THEN REPLY #51668 /* ~What? I cannot do that!~ */ GOTO 78
  IF ~~ THEN REPLY #51669 /* ~What would be my reward for this task?~ */ GOTO 79
  IF ~~ THEN REPLY #51670 /* ~How do you propose I do this?~ */ GOTO 81
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #51671 /* ~You can and you will. You have bloodlust in you, Veldrin, do not deny it. And what do you owe Solaufein? Or do you object out of some strange morality? ~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #51672 /* ~Your reward is continued existence and my continued favor. You will do this because I command it... or you shall suffer unspeakable torments.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 78.0
  SAY #51673 /* ~We are drow, and the drow show no mercy. My opportunity is nearly upon me, and I will not be distracted by a gnat at my back.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 77.2
  SAY #51674 /* ~Solaufein has been given time off from his regular duties... you will find him in his quarters in the Male Fighters' Society, sulking as is his wont.~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51675 /* ~He will not be expecting you... but nor will he suspect your true intentions, I imagine. He will greet you, and then you will kill him.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #51677 /* ~Those of my House would be the first questioned for his death... but you, without allies of any House, can get away with his murder.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #51678 /* ~Once you are done, take his... hmmm... take his piwafwi cloak and bring it back to me here. It shall make an excellent trophy.~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #51679 /* ~That is all. Do you understand what I ask of you, Veldrin? Telling anyone will bring death down upon yourself. I shall keep your secret if you keep mine.~ */
  IF ~~ THEN REPLY #51680 /* ~I understand... and I look forward to killing that arrogant bastard.~ */ GOTO 86
  IF ~~ THEN REPLY #51681 /* ~I suppose I have little choice in the matter.~ */ GOTO 87
  IF ~~ THEN REPLY #51682 /* ~No, I won't do this. It isn't right.~ */ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51683 /* ~It is good to see a drow <PRO_MALEFEMALE> with a commendable lust for power. Continue this attitude, Veldrin, and things in Ust Natha will prove favorable for you.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 87 // from: 89.0 85.1
  SAY #51684 /* ~That is true. Ohhhh, it is not all bad, Veldrin. In Ched Nasad, did you have the favor of a House's eldest daughter and the promise of riches? I think not.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0 86.0
  SAY #51685 /* ~Go, then. You have three days to hunt down the fool and return with his cloak. Do not fail me, Veldrin.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~EraseJournalEntry(97331)
AddJournalEntry(97331,QUEST_DONE)
AddJournalEntry(97332,QUEST)
SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ UNSOLVED_JOURNAL #23485 /* ~Inside the drow city

Phaere demands that I hunt down Solaufein and kill him. He will be within his quarters in the Male Fighters' Society, and once the deed is done, I am to return to Phaere's quarters with his piwafwi cloak.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ UNSOLVED_JOURNAL #23485 /* ~Inside the drow city

Phaere demands that I hunt down Solaufein and kill him. He will be within his quarters in the Male Fighters' Society, and once the deed is done, I am to return to Phaere's quarters with his piwafwi cloak.~ */ EXTERN ~JAHEIRAJ~ 472
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("HaerDalis")
~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ UNSOLVED_JOURNAL #23485 /* ~Inside the drow city

Phaere demands that I hunt down Solaufein and kill him. He will be within his quarters in the Male Fighters' Society, and once the deed is done, I am to return to Phaere's quarters with his piwafwi cloak.~ */ EXTERN ~HAERDAJ~ 113
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Imoen2")
~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ UNSOLVED_JOURNAL #23485 /* ~Inside the drow city

Phaere demands that I hunt down Solaufein and kill him. He will be within his quarters in the Male Fighters' Society, and once the deed is done, I am to return to Phaere's quarters with his piwafwi cloak.~ */ EXTERN ~IMOEN2J~ 23
END

IF ~~ THEN BEGIN 89 // from: 85.2
  SAY #51686 /* ~I see. Do you truly wish your life to be forfeit for refusing me? I shall ask again and pretend I did not hear your first answer... will you kill Solaufein?~ */
  IF ~~ THEN REPLY #51687 /* ~Very well. I suppose I have little choice.~ */ GOTO 87
  IF ~~ THEN REPLY #51688 /* ~No! I will not!~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.1
  SAY #51689 /* ~You dare?! You are a fool, Veldrin... you have lost your place in this city! I shall see your entrails strung from the cavern ceiling before I am through!~ */
  IF ~~ THEN DO ~EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
SetGlobal("DrowCityHostile","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL #19438 /* ~Inside the drow city

I have been discovered, and the alarm has been sounded throughout the drow city. Getting anywhere will be problematic at best. Obviously, I should have been more careful.~ */ EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",6)
Global("SolaufeinJob","GLOBAL",7)
~ THEN BEGIN 91 // from:
  SAY #51690 /* ~If I wished to talk to you, <MALEFEMALE>, I would have asked you to my quarters. It is Veldrin I asked to come, and it is <PRO_HESHE> I will speak to.~ */
  IF ~~ THEN EXIT
END

IF ~  !PartyHasItem("misc9w")
Global("PhaereJob","GLOBAL",6)
GlobalGT("SolaufeinJob","GLOBAL",7)
~ THEN BEGIN 92 // from:
  SAY #51755 /* ~I do not wish to speak to you again, <MALEFEMALE>, until Solaufein lies dead and rotting and you have returned with his piwafwi cloak. Go.~ */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("misc9w")
!InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",6)
GlobalGT("SolaufeinJob","GLOBAL",7)
~ THEN BEGIN 93 // from:
  SAY #51756 /* ~Yes, yes, this is all very well and good that you have returned... but where is Veldrin? I wish to speak to <PRO_HIMHER> and nobody else.~ */
  IF ~~ THEN EXIT
END

IF ~  PartyHasItem("misc9w")
InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",6)
GlobalGT("SolaufeinJob","GLOBAL",7)
~ THEN BEGIN 94 // from:
  SAY #51757 /* ~Ah, I see you carrying his piwafwi, my darling Veldrin. He... Solaufein is dead, yes? Yes... of course, he... he is dead.~ */
  IF ~~ THEN DO ~TakePartyItem("misc9w")
SetGlobal("udPhaTimerOn","GLOBAL",0)
SetGlobal("udSolTimerOn","GLOBAL",0)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51758 /* ~Here... give it to me.~ */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #51759 /* ~"All love is foolish." You have done well, Veldrin... you have earned a place of honor in this House by serving me well. This shall not stop, naturally.~ */
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 98
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY #51763 /* ~First... I will speak to you alone, Veldrin.~ */
  IF ~~ THEN DO ~SetGlobal("PhaereJob","GLOBAL",7)
StartCutSceneMode()
StartCutSceneEx("Cut44p",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 114.0 113.0 109.0 96.0
  SAY #51766 /* ~It is time to introduce you to the matron mother of House Despana, Veldrin. Mother Ardulace is anxious to see the <PRO_MALEFEMALE> who has done so much for Ust Natha.~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #51768 /* ~You will go to the temple and meet me and Mother Ardulace there. Do not delay, Veldrin... Mother Ardulace wishes to speak with you immediately.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
EraseJournalEntry(97333)
AddJournalEntry(97333,QUEST_DONE)
AddJournalEntry(97334,QUEST)
EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
EraseJournalEntry(61412)
SetGlobal("PhaereJob","GLOBAL",8)
SetGlobal("udPhaTimerOn","GLOBAL",1)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetSequence(SEQ_CAST)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
EndCutSceneMode()
MoveBetweenAreas("AR2201",[1014.1253],S)
~ UNSOLVED_JOURNAL #9986 /* ~Inside the drow city

I have performed more than a few tasks for the drow, and have instilled enough trust that I am now to meet Matron Mother Ardulace of House Despana personally. In drow terms, this means that I have gained the favor of this House... and that can only help me get ever closer to what I seek. I am to meet Phaere, the matron's daughter, at the temple of Lolth without much delay.~ */ EXIT
END

IF ~  Global("PhaereJob","GLOBAL",7)
GlobalLT("PhaereInnuendo","GLOBAL",2)
~ THEN BEGIN 100 // from:
  SAY #51771 /* ~I find you useful, Veldrin. You are a strong and powerful male... worthy of my bed. You shall remain here for a time and please me... Come.~ */
  IF ~~ THEN REPLY #51781 /* ~I... I can't, Phaere.~ */ GOTO 101
  IF ~~ THEN REPLY #51782 /* ~Is this really necessary?~ */ GOTO 102
  IF ~~ THEN REPLY #51783 /* ~If... if I must, then I suppose I have no choice...~ */ GOTO 103
  IF ~~ THEN REPLY #51784 /* ~I'm all for that!~ */ GOTO 103
END

IF ~~ THEN BEGIN 101 // from: 166.1 110.1 105.6 102.1 100.0
  SAY #51786 /* ~What do you mean, "can't"? I command it! Why do you balk?!~ */
  IF ~~ THEN REPLY #51787 /* ~Because I do not wish to do this!~ */ GOTO 104
  IF ~~ THEN REPLY #51788 /* ~Because I mean what I say... I "can't"!~ */ GOTO 105
  IF ~~ THEN REPLY #51789 /* ~Because I, ah, belong to another.~ */ GOTO 106
  IF ~~ THEN REPLY #51792 /* ~Well, if you command it, I suppose I have no choice...~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 100.1
  SAY #51799 /* ~Of course it is necessary, fool. The fact that I command it makes it necessary. Remove your clothing and come here already.~ */
  IF ~~ THEN REPLY #51800 /* ~No, I do not wish this.~ */ GOTO 104
  IF ~~ THEN REPLY #51801 /* ~I can't do this, Phaere.~ */ GOTO 101
  IF ~~ THEN REPLY #51802 /* ~If... if I must, then I suppose I have no choice...~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 166.3 110.3 108.2 106.9 105.7 104.3 102.2 101.3 100.3 100.2
  SAY #51803 /* ~Excellent. I shall show you, my dark Veldrin, why an evening with Phaere is worth more than an eternity with all other women. Come... I am anxious to begin...~ */
  IF ~~ THEN DO ~SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("PhaereInnuendo","GLOBAL",2)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 108.0 102.0 101.0
  SAY #51805 /* ~Your wishes do not come into this, foolish Veldrin. Refuse me again and you shall pay the ultimate price, do you understand? Now... come *here*.~ */
  IF ~~ THEN REPLY #51808 /* ~No! I still won't do this with you, no matter what you say!~ */ GOTO 107
  IF ~~ THEN REPLY #51809 /* ~I... I really can't, Phaere... I mean I *really* can't.~ */ GOTO 105
  IF ~~ THEN REPLY #51810 /* ~I cannot. I, ah, belong to another.~ */ GOTO 106
  IF ~~ THEN REPLY #51811 /* ~Very well. If I must, I suppose I have no choice...~ */ GOTO 103
END

IF ~~ THEN BEGIN 105 // from: 166.2 110.2 104.1 101.1
  SAY #51812 /* ~You... you speak of a physical disability of some kind? Surely you jest.~ */
  IF ~  CheckStatLT(Player1,13,CHR)
CheckStatGT(Player1,16,INT)
~ THEN REPLY #51813 /* ~I, ah... swore an oath to Lolth. I, ah... cannot speak of it.~ */ GOTO 108
  IF ~  CheckStatGT(Player1,12,CHR)
CheckStatGT(Player1,16,INT)
~ THEN REPLY #51814 /* ~I swore an oath to Lolth to remain celibate. I cannot speak more of it.~ */ GOTO 109
  IF ~  CheckStatLT(Player1,15,CHR)
CheckStatGT(Player1,14,INT)
~ THEN REPLY #51815 /* ~It's... it's a curse. A curse that, uh, you can't remove. It prevents me from, um, becoming... ah, intimate.~ */ GOTO 108
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,INT)
~ THEN REPLY #51816 /* ~I am afflicted with an insidious curse, Phaere. It is not easily removed, I am afraid... I can do nothing about it.~ */ GOTO 109
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY #51817 /* ~I... ah... yes, a disability. I'm, ah... a eunuch...~ */ GOTO 108
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #51818 /* ~It's no joke. I'm... ah... a eunuch...~ */ GOTO 109
  IF ~~ THEN REPLY #51819 /* ~Uh... well, maybe it's not physical, but I still can't...~ */ GOTO 101
  IF ~~ THEN REPLY #51820 /* ~I... I suppose you caught me. Fine... if I have no choice...~ */ GOTO 103
END

IF ~~ THEN BEGIN 106 // from: 108.1 104.2 101.2
  SAY #51823 /* ~What?! Who?~ */
  IF ~  OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN REPLY #51824 /* ~My companion, Jaheira.~ */ GOTO 110
  IF ~  OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY #51825 /* ~My companion, Aerie.~ */ GOTO 110
  IF ~  InParty("Hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #102462 /* ~My companion, Hexxat.~ */ GOTO 110
  IF ~  InParty("Neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN REPLY #102458 /* ~My companion, Neera.~ */ GOTO 110
  IF ~  OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN REPLY #102464 /* ~My companion, Anomen.~ */ GOTO 166
  IF ~  InParty("Dorn")
OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #102459 /* ~My companion, Dorn.~ */ GOTO 166
  IF ~  InParty("Rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN REPLY #102463 /* ~My companion, Rasaad.~ */ GOTO 166
  IF ~  OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN REPLY #51826 /* ~My companion, Viconia.~ */ GOTO 110
  IF ~~ THEN REPLY #51827 /* ~It... it's someone you don't know...~ */ GOTO 111
  IF ~~ THEN REPLY #51830 /* ~I... well, I suppose I have no choice, do I?~ */ GOTO 103
END

IF ~~ THEN BEGIN 107 // from: 104.0
  SAY #51832 /* ~Then you have signed your death warrant, you impotent fool. I shall see you ground into dust!~ */
  IF ~~ THEN DO ~EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
Enemy()
SetGlobal("DrowCityHostile","GLOBAL",1)
~ SOLVED_JOURNAL #19438 /* ~Inside the drow city

I have been discovered, and the alarm has been sounded throughout the drow city. Getting anywhere will be problematic at best. Obviously, I should have been more careful.~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.4 105.2 105.0
  SAY #51834 /* ~*snort* You are not a good liar, Veldrin. Is this a game, hmm? Come to me, my dark lovely one... come and I shall fix your little "problem"...~ */
  IF ~~ THEN REPLY #51835 /* ~No! I do not want to do this!~ */ GOTO 104
  IF ~~ THEN REPLY #51836 /* ~It's not a game... it's just that... that I belong to another.~ */ GOTO 106
  IF ~~ THEN REPLY #51837 /* ~Very well, if I have no choice.~ */ GOTO 103
END

IF ~~ THEN BEGIN 109 // from: 105.5 105.3 105.1
  SAY #51838 /* ~*sigh* We shall have to solve this problem... but I have no time now. I thought you were more of a male than this, Veldrin. Bah! No matter.~ */
  IF ~~ THEN DO ~SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("PhaereInnuendo","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 110 // from: 106.7 106.3 106.2 106.1 106.0
  SAY #51840 /* ~*snort* The female who fights by your side? What do I care if you dally with her? But I shall have her executed before I allow you to choose her over me.~ */
  IF ~~ THEN REPLY #51841 /* ~Well, all right, it's not her... It's, uh, someone else you don't know...~ */ GOTO 111
  IF ~~ THEN REPLY #51842 /* ~But I still can't do this, Phaere...~ */ GOTO 101
  IF ~~ THEN REPLY #51843 /* ~Well, perhaps it's not someone... it's, ah, a more personal problem...~ */ GOTO 105
  IF ~~ THEN REPLY #51844 /* ~Very well. I suppose I have no choice here.~ */ GOTO 103
END

IF ~~ THEN BEGIN 111 // from: 166.0 110.0 106.8
  SAY #51845 /* ~Someone I... ah. From Ched Nasad. A Handmaiden has collared you, yes? I am almost tempted to break the ward, but I have no interest in a battle at the moment.~ */
  IF ~~ THEN DO ~SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("CheckMad","AR2204",1)
SetGlobal("PhaereInnuendo","GLOBAL",3)
~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #51846 /* ~A pity. I now see why you fled from Ched Nasad. Soon, dear Veldrin, I shall break your collar and free you from her grasp... then we can do as I wish.~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #51847 /* ~But I have no time for such a thing now. I shall have to find another male to satisfy me later, when I have the time... for now, there is more for you to do.~ */
  IF ~~ THEN GOTO 98
END

IF ~  Global("PhaereJob","GLOBAL",7)
Global("PhaereInnuendo","GLOBAL",2)
~ THEN BEGIN 114 // from:
  SAY #51849 /* ~Ah. Finally you awaken. Come... rise, lazy one. I was almost ready to call in the slaves and have you beaten. There is much for you to do.~ */
  IF ~~ THEN GOTO 98
END

IF ~  Global("PhaereJob","GLOBAL",8)
Global("MatronJob","GLOBAL",0)
~ THEN BEGIN 115 // from:
  SAY #51853 /* ~Ah! Here you are! Matron... this is the <PRO_MALEFEMALE> that I spoke to you of, Veldrin.~ */
  IF ~~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
~ EXTERN ~UDARDUL~ 1
END

IF ~~ THEN BEGIN 116 // from:
  SAY #51856 /* ~Matron, <PRO_HESHE> is an excellent fighter... and <PRO_HESHE> is the one that rid House Despana of its... other... problem.~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 2
END

IF ~~ THEN BEGIN 117 // from:
  SAY #51858 /* ~I am positive, matron, that <PRO_HESHE> could prove of great use to you.~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 3
END

IF ~~ THEN BEGIN 118 // from:
  SAY #51862 /* ~But, Matron, I—~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 6
END

IF ~~ THEN BEGIN 119 // from:
  SAY #51872 /* ~The Spelljammer tyrant was supposed to be an elder, Matron! I swear that is what the spies had reported! They must have exaggerated!~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 12
END

IF ~~ THEN BEGIN 120 // from:
  SAY #51874 /* ~No, Matron, I do not.~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 13
END

IF ~  Global("PhaereJob","GLOBAL",8)
Global("MatronJob","GLOBAL",2)
!PartyHasItem("misca8")
!PartyHasItem("misca7")
!PartyHasItem("miscbv")
~ THEN BEGIN 121 // from:
  SAY #51890 /* ~Do not stand about here if you do not have the blood, fool! Go! Quickly! We have much that is to be done while you are gone!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PhaereJob","GLOBAL",8)
Global("MatronJob","GLOBAL",2)
OR(3)
PartyHasItem("misca8")
PartyHasItem("misca7")
PartyHasItem("miscbv")
~ THEN BEGIN 122 // from:
  SAY #51891 /* ~You have the blood! You have done it! Outstanding, Veldrin!~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 18
END

IF ~~ THEN BEGIN 123 // from:
  SAY #51893 /* ~Praise Lolth! The ritual may finally be begun! Despana will rule Ust Natha without question as the preeminent House!~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 19
END

IF ~~ THEN BEGIN 124 // from:
  SAY #51895 /* ~You are going to seal the city, Matron?~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 20
END

IF ~~ THEN BEGIN 125 // from:
  SAY #51899 /* ~Well, I am not done with <PRO_HIMHER> just yet. Veldrin... come to my personal apartments. I expect you to meet me there within the hour... this is not a request.~ */
  IF ~~ THEN DO ~EraseJournalEntry(97336)
AddJournalEntry(97336,QUEST_DONE)
AddJournalEntry(97337,QUEST)
AddXPObject(Player1,22000)
AddXPObject(Player2,22000)
AddXPObject(Player3,22000)
AddXPObject(Player4,22000)
AddXPObject(Player5,22000)
AddXPObject(Player6,22000)
SetGlobal("PhaereJob","GLOBAL",9)
SetGlobal("udPhaTimerOn","GLOBAL",1)
SetGlobalTimer("udPhaTimer","GLOBAL",400)
SetGlobal("udDrowPlot","GLOBAL",10)
ActionOverride("ARDULACE",JumpToPoint([516.1142]))
EscapeAreaMove("AR2204",743,1008,S)
~ UNSOLVED_JOURNAL #15793 /* ~The drow summoning ritual

I have returned with the blood, and Matron Ardulace was very pleased. She mentioned that she is about to start a ritual... and before doing so, she is going to seal the city. I suppose that means that nobody can enter or leave. She also mentioned the "silver one" being barred from entry... obviously she knows something of the silver dragon's eggs.

Matron Ardulace told me to relax, but Phaere ordered me to meet her within her apartments within an hour. Obviously, she has something else in mind.~ */ EXIT
END

IF ~  !InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",9)
GlobalLT("udDrowPlot","GLOBAL",20)
~ THEN BEGIN 126 // from:
  SAY #51902 /* ~You are well and good, I assure you, <MALEFEMALE>... but Veldrin is your leader and I would talk to <PRO_HIMHER> first and foremost.~ */
  IF ~~ THEN EXIT
END

IF ~  InPartySlot(LastTalkedToBy,0)
Global("PhaereJob","GLOBAL",9)
GlobalLT("udDrowPlot","GLOBAL",20)
~ THEN BEGIN 127 // from:
  SAY #51903 /* ~Veldrin? Good. I have a plan... a plan that will place me as the head of House Despana even as we take our place as the rightful ruling House of Ust Natha.~ */
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 130.0
  SAY #51904 /* ~In order for this plan to be successful, however, you must betray the matron mother. Are you willing to do this? Think carefully on your answer.~ */
  IF ~~ THEN REPLY #51965 /* ~I have no qualms about betraying the matron mother.~ */ GOTO 137
  IF ~~ THEN REPLY #51968 /* ~I would prefer to know first exactly what I'll be doing.~ */ GOTO 131
  IF ~~ THEN REPLY #51908 /* ~I doubt I have much choice, so I have to agree.~ */ GOTO 133
  IF ~~ THEN REPLY #51909 /* ~No! I won't do it!~ */ GOTO 132
END

IF ~~ THEN BEGIN 129 // from: 127.0
  SAY #51966 /* ~My plan includes you, Veldrin... without your timely arrival here, none of this would have been possible. Do as I say and your rewards will be unimaginable.~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #51967 /* ~Refuse and... well, why would you refuse? You have everything to gain, Veldrin. Everything.~ */
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 131 // from: 128.1
  SAY #51969 /* ~No. There are too many things that cannot be said without your agreement first. I will hear it from your lips, Veldrin.~ */
  IF ~~ THEN REPLY #51970 /* ~Very well. I will betray the matron mother, as you ask.~ */ GOTO 137
  IF ~~ THEN REPLY #51971 /* ~I doubt I have much choice. I agree to do as you command.~ */ GOTO 133
  IF ~~ THEN REPLY #51972 /* ~Then I refuse. I won't help you.~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 133.6 131.2 128.3
  SAY #51973 /* ~Then die, fool. If you are not with me in this plan, then you are only a danger to me. Darkness take you for your stubbornness!~ */
  IF ~~ THEN DO ~EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
EraseJournalEntry(15793)
EraseJournalEntry(15792)
EraseJournalEntry(23424)
SetGlobal("DrowCityHostile","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL #19438 /* ~Inside the drow city

I have been discovered, and the alarm has been sounded throughout the drow city. Getting anywhere will be problematic at best. Obviously, I should have been more careful.~ */ EXIT
END

IF ~~ THEN BEGIN 133 // from: 131.1 128.2
  SAY #51974 /* ~Hmph. I desire no half-hearted agreement. I must have assurance you will not betray me for your own benefit. I suggest you convince me of your loyalty. ~ */
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #51976 /* ~You are strong, and you deserve the position of matron mother, Phaere. The drow would be made stronger by your presence.~ */ GOTO 135
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #51978 /* ~You are strong, and you deserve the position of matron mother, Phaere. The drow would be made stronger by your presence.~ */ GOTO 134
  IF ~  CheckStatGT(Player1,9,CHR)
~ THEN REPLY #51975 /* ~Ah... when I said I had no choice, I meant I had no choice but to serve you, Phaere. The matron mother means nothing to me.~ */ GOTO 135
  IF ~  CheckStatLT(Player1,10,CHR)
~ THEN REPLY #51979 /* ~Ah... when I said I had no choice, I meant I had no choice but to serve you, Phaere. The matron mother means nothing to me.~ */ GOTO 134
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #51977 /* ~I would never betray you, Phaere. I have done everything you have asked of me, and I am yours to command.~ */ GOTO 135
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #51980 /* ~I would never betray you, Phaere. I have done everything you have asked of me, and I am yours to command.~ */ GOTO 134
  IF ~~ THEN REPLY #51981 /* ~I'll convince you of nothing. I refuse to betray the matron mother.~ */ GOTO 132
END

IF ~~ THEN BEGIN 134 // from: 133.5 133.3 133.1
  SAY #51982 /* ~Hmmm... no. No, I do not trust you, Veldrin. You will betray me for your own benefit to the matron mother, I think. It is time for you to die.~ */
  IF ~~ THEN DO ~EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
EraseJournalEntry(15793)
EraseJournalEntry(15792)
EraseJournalEntry(23424)
SetGlobal("DrowCityHostile","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL #19438 /* ~Inside the drow city

I have been discovered, and the alarm has been sounded throughout the drow city. Getting anywhere will be problematic at best. Obviously, I should have been more careful.~ */ EXIT
END

IF ~~ THEN BEGIN 135 // from: 133.4 133.2 133.0
  SAY #51983 /* ~Hah! You are a flatterer, Veldrin. But your statement has the ring of truth. I will allow you to aid me in my plan... and I shall forget your hesitation.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 137.0 135.0
  SAY #51984 /* ~You heard Matron speak of the ritual? Matron will summon a demon of terrible power, Veldrin... one to aid the drow in our attack upon the surface elves.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Valygar")
~ THEN GOTO 138
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 115
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 469
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 140
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 84
END

IF ~~ THEN BEGIN 137 // from: 131.0 128.0
  SAY #51985 /* ~Good. Then you may aid me in my plan and be rewarded accordingly once I am the new matron mother.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #51986 /* ~The blood is a component in this ritual, used to draw the demon's attention and bring him before us.~ */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #51987 /* ~But, most gloriously, House Despana has acquired the eggs of a silver dragon. The one guarding the route to the surface that we drow descended from so long ago.~ */
  IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #51988 /* ~Holding these eggs hostage keeps the silver dragon from interfering. Even better, Matron plans to use them as an offering to the demon to enlist its aid.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 140.0
  SAY #51989 /* ~Indeed, what demon could refuse? House Despana will have opened the way for the war and summoned its most powerful warrior. We shall become preeminent.~ */
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #51990 /* ~But there is no rule that states Ardulace must still be matron mother of such a powerful House.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #51992 /* ~Go to the treasury, Veldrin... steal the dragon's eggs and replace them with the convincing fakes that I have had made. You will then bring the real eggs to me.~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #51993 /* ~Matron will offer the fake eggs to the demon and be killed. Then I shall offer him the real eggs. The ritual will be completed, and I shall be matron mother.~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #51996 /* ~Here... here is the key to the treasury room and the fake eggs. Take them. Return with the real eggs before the ritual is ready to begin.~ */
  IF ~~ THEN DO ~GiveItemCreate("MISC9u",Player1,0,0,0)
GiveItemCreate("KEY25",Player1,1,0,0)
~ GOTO 149
END

IF ~  Global("PhaereJob","GLOBAL",10)
Global("EggsReplaced","GLOBAL",0)
!PartyHasItem("MISC9t")
GlobalLT("udDrowPlot","GLOBAL",20)
!PartyHasItem("MISC9v")
~ THEN BEGIN 146 // from:
  SAY #52000 /* ~What are you waiting for? Go! Go! Replace the real eggs with the fakes and bring the real eggs to me! Quickly!~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("udDrowPlot","GLOBAL",20)
Global("PhaereJob","GLOBAL",10)
Global("EggsReplaced","GLOBAL",0)
OR(2)
PartyHasItem("MISC9t")
PartyHasItem("MISC9v")
~ THEN BEGIN 147 // from:
  SAY #52002 /* ~I see you have the eggs with you. But the false eggs must be placed where the real ones were kept, or my deception will be worth nothing. Go quickly!~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("udDrowPlot","GLOBAL",20)
Global("PhaereJob","GLOBAL",10)
Global("EggsReplaced","GLOBAL",1)
!PartyHasItem("MISC9t")
!PartyHasItem("MISC9v")
~ THEN BEGIN 148 // from:
  SAY #52004 /* ~You have replaced the real eggs, I see, but where are they?! Did you not bring them with you?! Go! Go and find them and bring me the real eggs! Quickly!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from: 145.0
  SAY #52006 /* ~I give you one warning... the guards will try and stop you in the treasury, if they see you. Kill them only if you must. Use stealth, Veldrin... now go.~ */
  IF ~~ THEN DO ~SetGlobal("PhaereJob","GLOBAL",10)
SetGlobal("udPhaTimerOn","GLOBAL",1)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
~ UNSOLVED_JOURNAL #7148 /* ~The drow summoning ritual

Phaere has told me of Ardulace's plan in its entirety. The drow intend to invade the surface... to what end, I don't know. But Matron Ardulace's ritual is going to summon a great demon to aid the drow. The dragon eggs will be sacrificed to the demon in return for its service, and this will place House Despana in great favor with Lolth.

Phaere intends to betray Matron Ardulace and has coerced me into helping her. She wants me to go to the Despana treasury (in Lolth's temple) and replace the silver dragon's eggs with fake eggs that Phaere has had made. Then when Ardulace offers the dragon the fake eggs, Phaere can step in with the real ones.

I must be careful if I go to the treasury... killing the guards, if it is done, must be done discreetly if at all. And even once I get the eggs, the city has been sealed by Matron Ardulace... there is no escaping. I must continue to play along... for now.~ */ EXIT
END

IF ~  GlobalLT("udDrowPlot","GLOBAL",20)
Global("PhaereJob","GLOBAL",10)
Global("EggsReplaced","GLOBAL",1)
OR(2)
PartyHasItem("MISC9t")
PartyHasItem("MISC9v")
~ THEN BEGIN 150 // from:
  SAY #52009 /* ~Ahhhh, you are a marvel, my brilliant <PRO_MALEFEMALE>. You are indeed. You have done as I asked and returned to me with the eggs. Where are they?~ */
  IF ~  PartyHasItem("MISC9v")
~ THEN REPLY #52011 /* ~Here you go. (Give Solaufein's eggs.)~ */ DO ~TakePartyItem("MISC9v")
AddexperienceParty(20000)
SetGlobal("udPhaTimerOn","GLOBAL",0)
~ GOTO 151
  IF ~  PartyHasItem("MISC9t")
~ THEN REPLY #52013 /* ~Here you go. (Give the real eggs.)~ */ DO ~TakePartyItem("MISC9t")
AddexperienceParty(10000)
SetGlobal("udPhaTimerOn","GLOBAL",0)
~ GOTO 152
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #52018 /* ~So these are the silver dragon's eggs? Yes, they must be. Thank you, Veldrin... you have performed well. ~ */
  IF ~~ THEN DO ~SetGlobal("PhaereHasFakeEggs","GLOBAL",1)
~ UNSOLVED_JOURNAL #6590 /* ~The drow summoning ritual

I gave Phaere the eggs that Solaufein had given me... and it seems that she has been fooled into thinking they are the real ones. The real eggs are still in my possession... and both Phaere and Matron Ardulace think they have the real eggs for the upcoming ritual.

Phaere has gone onwards to the temple of Lolth and has commanded me to follow right away.~ */ GOTO 153
END

IF ~~ THEN BEGIN 152 // from: 150.1
  SAY #52019 /* ~Excellent! It is most gratifying to have such a servant as you, <PRO_MALEFEMALE>. You have done well.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #6403 /* ~The drow summoning ritual

I have given Phaere the real silver eggs... I had little choice... and she has gone on to the temple of Lolth and commanded me to follow.~ */ GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.0 151.0
  SAY #52020 /* ~I will go to the temple for the ritual... I expect you to be present for my victory. Go to the temple to meet me and do not delay, or I shall be most angry.~ */
  IF ~~ THEN DO ~SetGlobal("PhaereJob","GLOBAL",11)
SetGlobal("udPhaTimerOn","GLOBAL",1)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
StartCutSceneMode()
StartCutSceneEx("Cut44u",FALSE)
~ EXIT
END

IF ~  GlobalLT("udDrowPlot","GLOBAL",20)
Global("PhaereJob","GLOBAL",11)
~ THEN BEGIN 154 // from:
  SAY #52021 /* ~You have come! The ritual is about to begin... and my ascension shall be sweet indeed. Let us attend, Veldrin.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut44q",FALSE)
~ EXIT
END

IF ~  Global("udDrowPlot","GLOBAL",20)
~ THEN BEGIN 155 // from:
  SAY #52097 /* ~What?! What is the meaning of this, Matron?! Why am I to be dragged before you?!~ */
  IF ~~ THEN DO ~SetGlobal("udDrowPlot","GLOBAL",21)
~ EXTERN ~UDARDUL~ 41
END

IF ~~ THEN BEGIN 156 // from:
  SAY #52099 /* ~No! No, why do you say this?!~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 42
END

IF ~~ THEN BEGIN 157 // from:
  SAY #52101 /* ~Who...? Veldrin? No! No, Matron! It is *<PRO_HISHER>* plot to overthrow you, <PRO_HISHER> plot alone! I swear by Lolth's name that <PRO_HESHE> is attempting to frame me!~ */
  IF ~~ THEN EXTERN ~UDARDUL~ 43
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52103 /* ~NO! NO! VELDRIN, ATTACK HER! KILL HER! I COMMAND YOU! AHHHHH! BURN IN THE ABYSS THEN! ROT FOREVER, I WILL—~ */
  IF ~~ THEN DO ~ChangeAIScript("",CLASS)
ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE)
Wait(1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52156 /* ~Hold, demon! I am the daughter of the one who has summoned you... and I have the eggs that you seek. I offer them to you as the tithe!~ */
  IF ~  Global("PhaereHasFakeEggs","GLOBAL",1)
~ THEN EXTERN ~UDDEMON~ 14
  IF ~  Global("PhaereHasFakeEggs","GLOBAL",0)
~ THEN REPLY #52161 /* ~You aren't doing anything with those eggs, Phaere. Hand them over or die.~ */ GOTO 162
  IF ~  Global("PhaereHasFakeEggs","GLOBAL",0)
~ THEN REPLY #52165 /* ~(Remain silent.)~ */ EXTERN ~UDDEMON~ 17
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52158 /* ~What?! No, it's... Veldrin? VELDRIN?! WHAT HAVE YOU DONE TO ME?!~ */
  IF ~~ THEN EXTERN ~UDDEMON~ 15
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52160 /* ~NO! I WILL DESTROY YOU, VELDRIN! I WILL FIND YOU AND EAT YOUR BEATING HEART! I WILL—~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE)
SetGlobal("udDrowPlot","GLOBAL",44)
Wait(1)
SetGlobalTimer("udEscape","GLOBAL",THREE_TURNS)
SetGlobal("udDemonHasDoneTheKill","GLOBAL",1)
Unlock("Door02")
Unlock("Door01")
Kill(Myself)
~ EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE)
SetGlobal("udDrowPlot","GLOBAL",44)
Wait(1)
SetGlobalTimer("udEscape","GLOBAL",THREE_TURNS)
SetGlobal("udDemonHasDoneTheKill","GLOBAL",1)
Unlock("Door02")
Unlock("Door01")
Kill(Myself)
~ EXTERN ~VICONIJ~ 144
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Keldorn")
~ THEN DO ~ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE)
SetGlobal("udDrowPlot","GLOBAL",44)
Wait(1)
SetGlobalTimer("udEscape","GLOBAL",THREE_TURNS)
SetGlobal("udDemonHasDoneTheKill","GLOBAL",1)
Unlock("Door02")
Unlock("Door01")
Kill(Myself)
~ EXTERN ~KELDORJ~ 202
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE)
SetGlobal("udDrowPlot","GLOBAL",44)
Wait(1)
SetGlobalTimer("udEscape","GLOBAL",THREE_TURNS)
SetGlobal("udDemonHasDoneTheKill","GLOBAL",1)
Unlock("Door02")
Unlock("Door01")
Kill(Myself)
~ EXTERN ~IMOEN2J~ 22
END

IF ~~ THEN BEGIN 162 // from: 159.1
  SAY #52162 /* ~You betray me?! Ignorant fool! Your use to me was ended anyway. Lolth would have enjoyed you as a sacrifice. Demon! I command you to destroy the infidels!~ */
  IF ~~ THEN EXTERN ~UDDEMON~ 16
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52164 /* ~Damn you, Veldrin! You have destroyed us all! I will see you writhing in the Demonweb Pits for all eternity for this!~ */
  IF ~~ THEN DO ~SetGlobalTimer("udEscape","GLOBAL",TWO_TURNS)
ActionOverride("udDemon",Enemy())
SetGlobal("DemonHatesAll","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52168 /* ~Take the eggs then, demon lord! For the glory of Lolth, lead our people to the surface and carve a path of blood through our ancient elven foes!~ */
  IF ~~ THEN DO ~DestroyItem("MISC9t")
GiveItemCreate("MISCBY","UDDEMON",0,0,0)
SetGlobal("EggsDie","GLOBAL",1)
~ EXTERN ~UDDEMON~ 18
END

IF ~  Global("udDrowPlot","GLOBAL",35)
~ THEN BEGIN 165 // from:
  SAY #52169 /* ~V-Veldrin?! Not a drow at all, but a... a surface <PRO_RACE>?! Infiltrator?! AN OUTRAGE! DEMON LORD, GUARDS... KILL THEM ALL!~ */
  IF ~~ THEN DO ~SetGlobal("udDrowPlot","GLOBAL",36)
~ EXTERN ~UDDEMON~ 19
END

IF ~~ THEN BEGIN 166 // from: 106.6 106.5 106.4
  SAY #102460 /* ~*snort* The male who fights by your side? What do I care if you dally with him? But I shall have him executed before I allow you to choose him over me.~ */
  IF ~~ THEN REPLY #102461 /* ~Well, all right, it's not him... It's, uh, someone else you don't know...~ */ GOTO 111
  IF ~~ THEN REPLY #51842 /* ~But I still can't do this, Phaere...~ */ GOTO 101
  IF ~~ THEN REPLY #51843 /* ~Well, perhaps it's not someone... it's, ah, a more personal problem...~ */ GOTO 105
  IF ~~ THEN REPLY #51844 /* ~Very well. I suppose I have no choice here.~ */ GOTO 103
END
