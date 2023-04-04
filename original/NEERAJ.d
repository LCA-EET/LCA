// creator  : weidu (version 24900)
// argument : NEERAJ.DLG
// game     : .
// source   : ./override/NEERAJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~NEERAJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #77696 /* ~Ha ha ha, and I'm sure he used his catlike grace to... th... tho... ah, I've got nothing.~ [OH77696] */
  IF ~~ THEN REPLY #77697 /* ~Don't start unless you can finish.~ */ EXTERN ~RASAAD~ 25
END

IF ~~ THEN BEGIN 1 // from:
  SAY #78808 /* ~At least the rest of you didn't just keep going.~ [OH78808] */
  IF ~~ THEN EXTERN ~RASAADJ~ 471
END

IF ~~ THEN BEGIN 2 // from:
  SAY #78852 /* ~I don't know about crippled, but someone sure did a number on her.~ [OH78852] */
  IF ~~ THEN EXTERN ~RASAADJ~ 497
END

IF ~~ THEN BEGIN 3 // from:
  SAY #79186 /* ~Uh... You know that's a bear you're talking to, right?~ [OH79186] */
  IF ~~ THEN EXTERN ~WILSON~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #79187 /* ~Hey, <CHARNAME>—you realize you're talking to a bear, right?~ [OH79187] */
  IF ~~ THEN EXTERN ~WILSON~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #79188 /* ~I don't know if you're aware of this or not, <CHARNAME>, but you're currently carrying on a conversation with a bear.~ [OH79188] */
  IF ~~ THEN EXTERN ~WILSON~ 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY #79227 /* ~You want a bear as your companion? Seriously?~ */
  IF ~~ THEN EXTERN ~OHRJOLST~ 8
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 322
END

IF ~~ THEN BEGIN 7 // from:
  SAY #80740 /* ~Aw, does he have to go? He's so CUTE.~ [OH80740] */
  IF ~~ THEN EXTERN ~WILSON~ 16
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KELDORJ~ 258
END

IF ~~ THEN BEGIN 8 // from:
  SAY #74512 /* ~That's you. Making friends and influencing people.~ [OH74512] */
  IF ~~ THEN EXTERN ~DORN~ 1
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 248
END

IF ~~ THEN BEGIN 9 // from:
  SAY #74525 /* ~Hear hear! I'm actually a bit surprised we haven't turned to stone yet.~ [OH74525] */
  IF ~~ THEN REPLY #74526 /* ~Let's go.~ */ EXIT
  IF ~~ THEN REPLY #74527 /* ~Did he hear that? I think he heard that—we should probably start running.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #74587 /* ~Ummm... exactly how well is "well"?~ [OH74587] */
  IF ~~ THEN REPLY #74588 /* ~I've worked with Dorn before.~ */ EXTERN ~DORN~ 22
  IF ~~ THEN REPLY #74589 /* ~Well enough to know what I'm getting into.~ */ EXTERN ~DORN~ 20
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 230
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 52
END

IF ~~ THEN BEGIN 11 // from:
  SAY #74683 /* ~A wedding?! I LOVE WEDDINGS! I haven't been to a wedding in years! The last one had two fights and a whole pack of summoned dire wolves. It was so romantic! Although... this one probably won't be as much.~ [OH74683] */
  IF ~~ THEN EXTERN ~OHDDOOR1~ 1
  IF ~  InParty("VICONIA")
IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 408
END

IF ~~ THEN BEGIN 12 // from:
  SAY #74853 /* ~Don't be gross, <CHARNAME>!~ [OH74853] */
  IF ~~ THEN EXTERN ~DORNJ~ 319
END

IF ~~ THEN BEGIN 13 // from:
  SAY #75162 /* ~Yeesh! Who writes your dialogue? Baeloth?~ [OH75162] */
  IF ~~ THEN EXTERN ~OHDTRAGG~ 1
END

IF ~~ THEN BEGIN 14 // from:
  SAY #75224 /* ~Don't stress about it, Dorn. I'm sure you'll find a way to get out from under his thumb. Now, we were talking about something before we ran into those guys... oh yeah! So that w—~ [OH75224] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 15 // from:
  SAY #75738 /* ~Forging through the branches of a giant tree hundreds of feet above the ground. This. Is. AWESOME.~ [OH75738] */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #75921 /* ~You're damn right you've heard that one before! I turn my back for five seconds and some leafy bint starts stealing my material? Ridiculous!~ [OH75921] */
  IF ~~ THEN EXTERN ~OHDYARR~ 27
END

IF WEIGHT #4 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #77502 /* ~I don't like this place. I mean it's okay, I guess, but I'd rather be out there. Way out there. Like no longer in Resurrection Gorge out there.~ [OH77502] */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 56
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 771
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 236
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 266
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 129
END

IF ~~ THEN BEGIN 18 // from:
  SAY #74845 /* ~I think I preferred the last wedding I went to. I need to sit down for a minute. Oh, gross, there was blood there!~ [OH74845] */
  IF ~~ THEN EXTERN ~DORNJ~ 318
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 200
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 417
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 241
END

IF WEIGHT #5 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #96643 /* ~I thought we had something. Obviously, I was wrong.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
  IF ~  IsValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 3
END

IF ~~ THEN BEGIN 20 // from:
  SAY #83797 /* ~Oh, barf. Get a stable, you two.~ [OH83797] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 495
END

IF ~~ THEN BEGIN 21 // from:
  SAY #84080 /* ~Guess I'm lucky all this dust has my nose stuffed.~ [OH84080] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 531
END

IF ~~ THEN BEGIN 22 // from:
  SAY #84500 /* ~Hey, stone face, why the long... no, no. It fell apart on me.~ [OH84500] */
  IF ~~ THEN EXTERN ~OHHSTONE~ 1
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 426
END

IF ~~ THEN BEGIN 23 // from:
  SAY #84546 /* ~I'm so proud of you, <CHARNAME>.~ [OH84546] */
  IF ~~ THEN DO ~SetGlobal("OHH_stoneneera","OH7200",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #102367 /* ~I suppose you'd know, miss mind controlling vampire.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN GOTO 26
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 301
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN GOTO 25
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 300
END

IF ~~ THEN BEGIN 25 // from: 24.7
  SAY #102369 /* ~My point is... uh. It's obvious, really. Isn't it?~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN GOTO 26
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 301
END

IF ~~ THEN BEGIN 26 // from: 25.5 24.5
  SAY #102371 /* ~Why are— This isn't about me. What're we gonna do about mind-controlled guy here?~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
END

IF ~~ THEN BEGIN 27 // from:
  SAY #89463 /* ~Zaviak's great, but I think he got knocked on the head a few too many times in the Black Pits. He's our resident alchemist. We only use his potions as a last resort. His magic tends to make them go a little funny.~ [OH89463] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #87793 /* ~I—I'm in shock. I can't believe this. Oh, this isn't real. This CAN'T be real. Where did they go? We have to find them! We have to!~ [OH87793] */
  IF ~~ THEN REPLY #87794 /* ~I am so, so sorry, Neera. I will do what I can to make this right. You have my word.~ */ GOTO 29
  IF ~~ THEN REPLY #87795 /* ~We will, Neera. But let us hear the full story.~ */ GOTO 30
  IF ~~ THEN REPLY #87796 /* ~This place was a deathtrap. You should have seen it coming.~ */ GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #87797 /* ~Tha-thank you. But you can't make it right. Nothing can. I will kill those who did this. Telana, tell us what happened.~ [OH87797] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 5
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #87798 /* ~Yes. Tell us what happened, Telana. I will kill whoever did this.~ [OH87798] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 5
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #87799 /* ~WHAT?! You say that to me in the face of—of THIS? What is wrong with you? Why... wh-why would you even say that?~ [OH87799] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 4
END

IF ~~ THEN BEGIN 32 // from:
  SAY #87804 /* ~What about Hayes? Was he here for the assault?~ [OH87804] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 8
END

IF ~~ THEN BEGIN 33 // from:
  SAY #100258 /* ~If the others are alive, we will save them!~ */
  IF ~~ THEN EXTERN ~OHNTELAN~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #87806 /* ~I am so, so sorry, Telana. If he's alive, we'll save him.~ [OH87806] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 9
END

IF ~~ THEN BEGIN 35 // from:
  SAY #87826 /* ~We need to go to Athkatla, find the Red Wizard lair, and burn it to the ground. We need to rescue everyone and make the Thayans pay with their lives.~ [OH87826] */
  IF ~~ THEN REPLY #87827 /* ~I agree, Neera, but we also need to think clearly.~ */ GOTO 36
  IF ~~ THEN REPLY #87828 /* ~That's all? What are we waiting for?~ */ GOTO 37
  IF ~~ THEN REPLY #87829 /* ~"We"? If I decide to do this, I don't want you tagging along.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #87830 /* ~I'm thinking plenty clearly. I clearly think the Red Wizards must die hot, itchy deaths!~ [OH87830] */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 35.1
  SAY #87831 /* ~What else can you tell us, Telana? What else do we need to know? Be quick!~ [OH87831] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 14
END

IF ~~ THEN BEGIN 38 // from:
  SAY #87839 /* ~In time? How about NOW?~ [OH87839] */
  IF ~~ THEN REPLY #87840 /* ~You're right. We'll head there immediately.~ */ GOTO 39
  IF ~~ THEN REPLY #87841 /* ~We must marshal our resources. The Red Wizards are not to be taken lightly.~ */ GOTO 39
  IF ~~ THEN REPLY #87842 /* ~I call the shots, Neera. Remember that.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.1 38.0
  SAY #87843 /* ~I... I'm glad you're helping. Let's go. Even if they're protected against my magic, I will find a way to kill them. I'll strangle them with my bare hands if that's what it takes.~ [OH87843] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 132
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 828
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 210
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 287
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 550
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #87848 /* ~I don't need you, <CHARNAME>! I'll do this myself! ~ [OH87848] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 16
END

IF ~~ THEN BEGIN 41 // from:
  SAY #88527 /* ~Fine!~ [OH88527] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveToPointNoInterrupt([1384.1085])
Face(SW)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #87687 /* ~SOMEWHAT contagious? Thanks for the ringing endorsement, Telana.~ [OH87687] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 34
END

IF ~~ THEN BEGIN 43 // from:
  SAY #87689 /* ~Hold it! You never told me you were gonna ask for references, <CHARNAME>!~ [OH87689] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 35
END

IF ~~ THEN BEGIN 44 // from:
  SAY #87691 /* ~See?~ [OH87691] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 36
END

IF ~~ THEN BEGIN 45 // from:
  SAY #93666 /* ~Pretty good, huh?~ [OH93666] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 31
END

IF ~~ THEN BEGIN 46 // from:
  SAY #90306 /* ~It is. For now, anyway.~ [OH90306] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 40
END

IF ~~ THEN BEGIN 47 // from:
  SAY #90314 /* ~It's true. I don't know what we would've done without you. Sorry if I seemed—different, before. I was just—SO angry.~ [OH90314] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #90316 /* ~Right! And it's probably best we go our separate ways—those of us who can, anyway. No more herding wild mages. So much… so much for my brilliant plan. I guess that means I'm coming with you, <CHARNAME>.~ [OH90316] */
  IF ~~ THEN REPLY #90317 /* ~I wouldn't have it any other way.~ */ GOTO 49
  IF ~~ THEN REPLY #90318 /* ~In the future, perhaps, but not right now.~ */ GOTO 52
  IF ~~ THEN REPLY #90319 /* ~Not a chance, Neera. I've done enough for you already.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 53
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #90320 /* ~Great! I—I have something for you. It's not much, but you might appreciate it.~ [OH90320] */
  IF ~~ THEN REPLY #90321 /* ~A mechanical bird. How marvelous. What does it do?~ */ DO ~GiveItemCreate("OHNMBIRD",Player1,1,0,0)
~ GOTO 50
  IF ~~ THEN REPLY #90322 /* ~What is this?!~ */ DO ~GiveItemCreate("OHNMBIRD",Player1,1,0,0)
~ GOTO 54
  IF ~~ THEN REPLY #90323 /* ~This claptrap pile of brass is a reward?~ */ DO ~GiveItemCreate("OHNMBIRD",Player1,1,0,0)
~ GOTO 55
END

IF ~~ THEN BEGIN 50 // from: 55.0 54.0 49.0
  SAY #90324 /* ~It's not the most useful gift. It sings—sometimes—if you can call it singing. ~ [OH90324] */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #90325 /* ~Knocktor helped me make it, so there may be some wild magic in there somewhere. Who knows how it works? But it's a gift. Think of it as gratitude with tiny brass wings!~ [OH90325] */
  IF ~~ THEN REPLY #90326 /* ~Thank you, Neera. It's great.~ */ GOTO 56
  IF ~~ THEN REPLY #90327 /* ~Hmm. Thanks, I guess.~ */ GOTO 56
  IF ~~ THEN REPLY #90328 /* ~In that case, I'll pawn it the first chance I get.~ */ GOTO 57
END

IF ~~ THEN BEGIN 52 // from: 48.1
  SAY #90333 /* ~Well, that's nice to hear, I guess. Not as nice as "Neera, you're great! What would I ever do without you?!" But it'll do for now. The others may head out soon, but... I think I'll stay here for a while.~ [OH90333] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveToPointNoInterrupt([1384.1085])
Face(SW)
~ EXTERN ~OHNTELAN~ 43
END

IF ~~ THEN BEGIN 53 // from: 48.2
  SAY #90334 /* ~I should have expected you to say something like that. Well, jerk, if you change your mind, I'll be here in the camp for a while.~ [OH90334] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveToPointNoInterrupt([1384.1085])
Face(SW)
~ EXTERN ~OHNTELAN~ 43
END

IF ~~ THEN BEGIN 54 // from: 49.1
  SAY #90335 /* ~A mechanical bird, obviously!~ [OH90335] */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 55 // from: 49.2
  SAY #90336 /* ~Claptrap? Do you know what it took to make that thing? Well, I guess if you were expecting a magic sword or something, this could be seen as a letdown.~ [OH90336] */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 56 // from: 51.1 51.0
  SAY #90337 /* ~You're welcome!~ [OH90337] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 43
END

IF ~~ THEN BEGIN 57 // from: 51.2
  SAY #90338 /* ~Are you kidding? It's gratitude! You can't put a price on gratitude. Oh well. I won't tell you what to do with it. You shouldn't pawn it, though.~ [OH90338] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 43
END

IF ~~ THEN BEGIN 58 // from:
  SAY #93410 /* ~If I were her, I'd hunt him down. Not that I'd say that to her face.~ [OH93410] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 428
END

IF ~~ THEN BEGIN 59 // from:
  SAY #93412 /* ~Note to self: Viconia agrees with me. Hm. I'm probably wrong about something.~ [OH93412] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 62.9
  SAY #88974 /* ~That's the spirit!~ [OH88974] */
  IF ~~ THEN DO ~ActionOverride("OHNRWBOU",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #88975 /* ~Let us in. Now.~ [OH88975] */
  IF ~~ THEN EXTERN ~OHNRWBOU~ 3
END

IF ~~ THEN BEGIN 62 // from:
  SAY #88977 /* ~Say another word and I'll turn your insides into outsides. Please. Say another word.~ [OH88977] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #88978 /* ~Listen to her. Run away now. This place is about to become a hole in the ground.~ */ DO ~SetGlobal("OHN_RWE_ENTRANCE","AR0700",1)
~ EXTERN ~OHNRWBOU~ 4
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #88978 /* ~Listen to her. Run away now. This place is about to become a hole in the ground.~ */ EXTERN ~OHNRWBOU~ 5
  IF ~~ THEN REPLY #88979 /* ~Calm down, Neera... Listen. Let us in and we won't hurt you.~ */ EXTERN ~OHNRWBOU~ 5
  IF ~~ THEN REPLY #88980 /* ~Let me handle this, Neera. Now, you seem like a reasonable man. How much will it take to get us inside?~ */ EXTERN ~OHNRWBOU~ 6
  IF ~  Range(Player1,30)
OR(4)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
HaveSpellParty(WIZARD_CHARM_PERSON)
~ THEN REPLY #88981 /* ~I've got this one, Neera. I'll charm him.~ */ DO ~RemoveSpell(WIZARD_CHARM_PERSON)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT08",FALSE)
~ EXIT
  IF ~  Range(Player1,30)
OR(4)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
HaveSpellParty(WIZARD_DIRE_CHARM)
!HaveSpellParty(WIZARD_CHARM_PERSON)
~ THEN REPLY #88981 /* ~I've got this one, Neera. I'll charm him.~ */ DO ~RemoveSpell(WIZARD_DIRE_CHARM)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT08",FALSE)
~ EXIT
  IF ~  Range(Player1,30)
OR(4)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
HaveSpellParty(WIZARD_DOMINATION)
!HaveSpellParty(WIZARD_DIRE_CHARM)
!HaveSpellParty(WIZARD_CHARM_PERSON)
~ THEN REPLY #88981 /* ~I've got this one, Neera. I'll charm him.~ */ DO ~RemoveSpell(WIZARD_DOMINATION)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT08",FALSE)
~ EXIT
  IF ~  Range(Player1,30)
OR(4)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
HaveSpellParty(CLERIC_CHARM_PERSON)
!HaveSpellParty(WIZARD_DOMINATION)
!HaveSpellParty(WIZARD_DIRE_CHARM)
!HaveSpellParty(WIZARD_CHARM_PERSON)
~ THEN REPLY #88981 /* ~I've got this one, Neera. I'll charm him.~ */ DO ~RemoveSpell(CLERIC_CHARM_PERSON)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT08",FALSE)
~ EXIT
  IF ~  Range(Player1,30)
OR(4)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
HaveSpellParty(CLERIC_MENTAL_DOMINATION)
!HaveSpellParty(CLERIC_CHARM_PERSON)
!HaveSpellParty(WIZARD_DOMINATION)
!HaveSpellParty(WIZARD_DIRE_CHARM)
!HaveSpellParty(WIZARD_CHARM_PERSON)
~ THEN REPLY #88981 /* ~I've got this one, Neera. I'll charm him.~ */ DO ~RemoveSpell(CLERIC_MENTAL_DOMINATION)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT08",FALSE)
~ EXIT
  IF ~~ THEN REPLY #88982 /* ~He's said more than enough already.~ */ GOTO 60
END

IF WEIGHT #6 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_RWB_NAHAL","AR0700",1)
~ THEN BEGIN 63 // from:
  SAY #88984 /* ~I told him not to say another word.~ [OH88984] */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 70.0 63.0
  SAY #93674 /* ~I didn't quite mean for THAT to happen, but... oh well.~ [OH93674] */
  IF ~~ THEN REPLY #88985 /* ~How did you do that?~ */ DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",4)
~ GOTO 65
  IF ~~ THEN REPLY #88986 /* ~Neera! What—what were you thinking?~ */ DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",4)
~ GOTO 67
  IF ~~ THEN REPLY #88987 /* ~I'm impressed. Onward.~ */ DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",4)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 68.1 64.0
  SAY #88988 /* ~Wild surge, duh. In we go.~ [OH88988] */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_RWB_NAHAL","AR0700",2)
~ THEN BEGIN 66 // from:
  SAY #93675 /* ~I told him not to say another word.~ */
  IF ~~ THEN REPLY #93676 /* ~ I had him charmed! What in the Nine Hells are you thinking, Neera?~ */ DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",4)
~ GOTO 67
  IF ~~ THEN REPLY #93677 /* ~He should have listened. Let's go.~ */ DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",4)
~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 64.1
  SAY #93678 /* ~I was thinking about Mironda, and Zaviak, and King Gramm. I was thinking about Abby, Connie, Alter, Divine, Chanticleer, Eevo, Lucy, and Nector and how they've no one to feed them now.~ [OH93678] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #93679 /* ~I was THINKING I don't want these people charmed—I want them PUNISHED.~ [OH93679] */
  IF ~~ THEN REPLY #93680 /* ~I understand. But—try and save your energy for the wizards. We're going to need it.~ */ EXIT
  IF ~~ THEN REPLY #93681 /* ~Well, you're off to a good start. How did you do... that?~ */ GOTO 65
  IF ~~ THEN REPLY #93682 /* ~Fair enough. Let's go punish some people.~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #88992 /* ~Yeah, we really, REALLY don't care.~ [OH88992] */
  IF ~~ THEN DO ~SetGlobal("OHN_RWB_NAHAL","AR0700",3)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT07",FALSE)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_RWB_NAHAL","AR0700",3)
~ THEN BEGIN 70 // from:
  SAY #93683 /* ~Huh.~ [OH93683] */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 71 // from:
  SAY #88222 /* ~Reggie and I have bonded over being banished. Watch it, though. He's got a bit of a temper.~ [OH88222] */
  IF ~~ THEN EXTERN ~OHNREGI~ 3
END

IF ~~ THEN BEGIN 72 // from:
  SAY #88226 /* ~Reginald gets angry very easily. Hayes didn't want him here at all on account of his temper. I thought changing his name from Ruglurr to Reginald would help, but—well, you can take the name out of the half-orc tribesman, but you can't take the half-orc tribesman out of the... uh... half-orc tribesman.~ [OH88226] */
  IF ~~ THEN EXTERN ~OHNREGI~ 8
END

IF ~~ THEN BEGIN 73 // from:
  SAY #89530 /* ~Huh. That's a new one.~ [OH89530] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #89547 /* ~AAAHHH!~ [OH89547] */
  IF ~~ THEN REPLY #89548 /* ~What's wrong, Neera? You startled me.~ */ GOTO 75
  IF ~~ THEN REPLY #89549 /* ~What?! What is it?~ */ GOTO 75
  IF ~~ THEN REPLY #89550 /* ~What in the Nine Hells are you screaming about?~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.2 74.1 74.0
  SAY #89551 /* ~That snake just spoke like a man! Kill it! Kill it with knives!~ [OH89551] */
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #89552 /* ~Let's stay calm. You've probably seen dozens of animals speak. What if it's a polymorphed person?~ */ GOTO 77
  IF ~~ THEN REPLY #89553 /* ~Calm down, Neera. We shouldn't do anything rash.~ */ GOTO 76
  IF ~~ THEN REPLY #89554 /* ~Quiet. I want to hear what it has to say; it could be from the camp.~ */ GOTO 78
  IF ~~ THEN REPLY #89555 /* ~With gusto.~ */ DO ~AddJournalEntry(89598,INFO)
ActionOverride("ohnsnake",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #89556 /* ~I... but... Snake! Snaaake!~ [OH89556] */
  IF ~~ THEN REPLY #89557 /* ~Right. But that's not an argument, just an observation.~ */ GOTO 78
  IF ~~ THEN REPLY #89558 /* ~I can't go around putting talking snakes to the sword just because you don't like them.~ */ GOTO 78
  IF ~~ THEN REPLY #89559 /* ~Well, I'm convinced. Die, serpent!~ */ DO ~AddJournalEntry(89598,INFO)
ActionOverride("ohnsnake",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 75.0
  SAY #89560 /* ~That's ridiculous! That's no polymorphed person. He's not screaming in terror about being unable to change himself back, for one thing.~ [OH89560] */
  IF ~~ THEN REPLY #89561 /* ~I think I'll speak with it all the same.~ */ GOTO 79
  IF ~~ THEN REPLY #89562 /* ~I'll make it scream for another reason, then. Die, serpent!~ */ DO ~AddJournalEntry(89598,INFO)
ActionOverride("ohnsnake",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 76.0 75.2
  SAY #89563 /* ~We have one rule at the refuge—no snakes! Actually, we have a lot of rules, but the "no snakes" one is pretty big. If this snake belongs to one of my people, I wasn't told about it.~ [OH89563] */
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #89564 /* ~This snake could be a polymorphed person, maybe even one of your own wild mages.~ */ GOTO 77
  IF ~~ THEN REPLY #89565 /* ~All the more reason to investigate.~ */ GOTO 79
  IF ~~ THEN REPLY #89566 /* ~Then you're right, it's probably dangerous. Let's kill it!~ */ DO ~AddJournalEntry(89598,INFO)
ActionOverride("ohnsnake",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.1 77.0
  SAY #89567 /* ~Suit yourself, but don't expect me to join you. I refuse to die just because you happen to be insanely curious about this talking snake.~ [OH89567] */
  IF ~~ THEN REPLY #89568 /* ~Why are you here, snake?~ */ EXTERN ~OHNSNAKE~ 2
  IF ~~ THEN REPLY #89569 /* ~Ho there, slither-britches! Are you human? Have you been transformed?~ */ EXTERN ~OHNSNAKE~ 1
  IF ~~ THEN REPLY #89570 /* ~You told me to stay out because death lay ahead, serpent. What did you mean?~ */ EXTERN ~OHNSNAKE~ 2
END

IF ~~ THEN BEGIN 80 // from:
  SAY #90260 /* ~Hey, I'm here too! Or at least I'm here right now. Do you remember me saving you from that witch?~ [OH90260] */
  IF ~~ THEN EXTERN ~OHNMERET~ 9
END

IF ~~ THEN BEGIN 81 // from:
  SAY #90280 /* ~I know we've got other things to deal with, but I feel responsible for her in a weird way. I'd really like to help her out.~ [OH90280] */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 351
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 429
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 258
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KELDORJ~ 289
END

IF ~~ THEN BEGIN 82 // from:
  SAY #91749 /* ~We did a good thing, <CHARNAME>. Cute horse, too! Why didn't she want ME to wear the hairband, though?! Eh... I guess Telana's just better with kids than I am.~ [OH91749] */
  IF ~~ THEN DO ~EraseJournalEntry(94465)
EraseJournalEntry(94466)
AddJournalEntry(94467,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #91702 /* ~Thanks, Mereth. I—I needed to hear that.~ [OH91702] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #93177 /* ~You wretched, eyeball-hurting, finger-smelling witch! Where are they? Why did you do it? Just tell me that. Why?~ [OH93177] */
  IF ~~ THEN EXTERN ~OHNLANNE~ 6
END

IF ~~ THEN BEGIN 85 // from:
  SAY #93180 /* ~I'm a half-elf, and you bloody well know it. You're avoiding my question.~ [OH93180] */
  IF ~~ THEN EXTERN ~OHNLANNE~ 7
END

IF ~~ THEN BEGIN 86 // from:
  SAY #93215 /* ~Gramm? No! Don't touch him, Lanneth. Don't hurt him, please! <CHARNAME>, listen to her.~ [OH93215] */
  IF ~~ THEN EXTERN ~OHNLANNE~ 24
END

IF ~~ THEN BEGIN 87 // from:
  SAY #93219 /* ~Gramm, STOP! STOP!! Your Majesty, I beg you, cease casting your spell! The cavalry has arrived. The castle has not fallen!~ [OH93219] */
  IF ~~ THEN EXTERN ~OHNKING~ 3
END

IF ~~ THEN BEGIN 88 // from:
  SAY #93221 /* ~Now's our chance, <CHARNAME>. Get the witch!~ [OH93221] */
  IF ~~ THEN DO ~ActionOverride("OHNLANNE",Enemy())
ActionOverride("OHNLANNE",Shout(151))
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #93222 /* ~NOOO! Gramm! ~ [OH93222] */
  IF ~~ THEN EXTERN ~OHNLANNE~ 27
END

IF ~~ THEN BEGIN 90 // from:
  SAY #93110 /* ~Knocktor! I'm SO glad you're alive. What do we have to do to get you out of there?~ [OH93110] */
  IF ~~ THEN EXTERN ~OHNKNOCK~ 22
END

IF ~~ THEN BEGIN 91 // from:
  SAY #93112 /* ~You don't remember the sequence? Not at all? Come on, Knocktor, it's important!~ [OH93112] */
  IF ~~ THEN EXTERN ~OHNKNOCK~ 23
END

IF ~~ THEN BEGIN 92 // from:
  SAY #93116 /* ~It's so good to see you, Zaviak. I'm so glad you're alive and not—well, not in chunks. Can you help us figure out how to get you out?~ [OH93116] */
  IF ~~ THEN EXTERN ~OHNZAVIA~ 20
END

IF WEIGHT #9 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_FREE_MAGES_TALK","LOCALS",1)
~ THEN BEGIN 93 // from:
  SAY #98556 /* ~I know we've got other things to deal with, but I'd like to go back to the refuge for a bit. Obviously, we can't stay there, but I want to make sure everyone's all right before I decide my next move.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_FREE_MAGES_TALK","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #88121 /* ~Poor "King" Gramm. He's a wild mage, all right, but he needs... other kinds of help. Telana and I saved him from a beating by some thugs at the Copper Coronet. That "we" stuff didn't go over well. Heh! Neither did the random color sprays.~ [OH88121] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #88202 /* ~What's gotten into Hayes? He's always been a little sullen, but the mage we were supposed to rescue just died! *sigh* I feel awful. For Daxus—for everything. I have a really bad feeling.~ [OH88202] */
  IF ~~ THEN REPLY #88203 /* ~He's probably upset and doesn't know what to say. I feel sorry for Daxus too, but we did all we could to save him.~ */ GOTO 96
  IF ~~ THEN REPLY #88204 /* ~Me too. If only we had come a few moments earlier.~ */ GOTO 96
  IF ~~ THEN REPLY #88205 /* ~Hayes is right. There's no use regretting things now.~ */ GOTO 96
END

IF WEIGHT #10 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_DAXUS_TALK","LOCALS",1)
Global("OHN_TELANA_PLOT","GLOBAL",5)
~ THEN BEGIN 96 // from: 95.2 95.1 95.0
  SAY #88206 /* ~I'm worried. The Order seemed to know we were here—did you hear the wizard at Delosar's say we were there "as promised"? Something's not right. We need to get back to Telana and tell her what happened.~ [OH88206] */
  IF ~~ THEN DO ~SetGlobal("OHN_DAXUS_TALK","LOCALS",2)
ActionOverride("OHNHAYES",EscapeAreaMove("AR2010",745,522,NE))
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #87725 /* ~Don't mind Hayes. He plays the role of surly grandpa around here.~ [OH87725] */
  IF ~~ THEN EXTERN ~OHNHAYES~ 25
END

IF ~~ THEN BEGIN 98 // from:
  SAY #93255 /* ~We shouldn't waste our time with this. Let's kill Lanneth and free the wild mages. THEN we can figure out what to do with the slaves.~ [OH93255] */
  IF ~~ THEN REPLY #93256 /* ~These people need help just as much as the wild mages, Neera.~ */ GOTO 99
  IF ~~ THEN REPLY #93257 /* ~If we can clear this place of slaves and mercenaries, freeing the wild mages will be much easier. Besides, these people need help too.~ */ GOTO 101
  IF ~~ THEN REPLY #93258 /* ~I lead this group! Hush!~ */ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #93259 /* ~THEY'RE not being dissected.~ [OH93259] */
  IF ~~ THEN REPLY #93260 /* ~Fine. Let's go.~ */ EXIT
  IF ~~ THEN REPLY #93261 /* ~Fine, but we still need to help them. Let's go.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.2
  SAY #93262 /* ~FINE.~ [OH93262] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.1
  SAY #93263 /* ~You MIGHT be right. I mean, I GUESS you're right... Okay, you're right.~ [OH93263] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #91661 /* ~You're on a first-name basis with this guy? When did that happen? *sigh* You can consort with your shady contacts on your own time; I'll have no part of it.~ [OH91661] */
  IF ~~ THEN REPLY #91662 /* ~Very well, Neera. Let's go.~ */ EXIT
  IF ~~ THEN REPLY #91663 /* ~He may have some items that are of use to us, Neera.~ */ GOTO 103
  IF ~~ THEN REPLY #91664 /* ~I lead this group, Neera. I decide who we do business with.~ */ GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 102.1
  SAY #91665 /* ~Like what? Slaves? Vials of wild mage blood? No thanks. If you insist on dealing with this hrasted scum, I'm done with you.~ [OH91665] */
  IF ~~ THEN REPLY #91666 /* ~You're right, Neera. I'm sorry. Let's go.~ */ EXIT
  IF ~~ THEN REPLY #91667 /* ~I lead this group, Neera.~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.1 102.2
  SAY #91668 /* ~And I decide to leave this group on account of your terrible decisions. Goodbye!~ [OH91668] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("OH6200",1402,1151,SW)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #93684 /* ~No, we aren't!~ [OH93684] */
  IF ~~ THEN REPLY #93685 /* ~Yes. We are.~ */ GOTO 107
END

IF ~~ THEN BEGIN 106 // from:
  SAY #90289 /* ~You should have started with "neck" and ended with "navel," <CHARNAME>. Just something to consider next time you're making a dire threat.~ [OH90289] */
  IF ~~ THEN REPLY #93688 /* ~Thank you, Neera. I'll bear it in mind.~ */ EXTERN ~OHNGDUKE~ 24
END

IF ~~ THEN BEGIN 107 // from: 105.0
  SAY #90290 /* ~I thought we were here to shut this operation down!~ [OH90290] */
  IF ~~ THEN REPLY #90291 /* ~Hush, Neera. We can avoid more bloodshed this way.~ */ GOTO 109
  IF ~~ THEN REPLY #90292 /* ~You're right. Let's shut it down.~ */ GOTO 108
  IF ~~ THEN REPLY #90293 /* ~Be quiet, Neera! These merchants probably have items that would be of great use to me.~ */ GOTO 109
END

IF ~~ THEN BEGIN 108 // from: 111.0 107.1
  SAY #90294 /* ~Now we're talking. All right, everyone! It's time to fight.~ [OH90294] */
  IF ~~ THEN DO ~ActionOverride("OHNGDUKE",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 107.2 107.0
  SAY #90295 /* ~I have a better idea. Why don't we DONATE money to the Order of Eight Staves? That way we could avoid taxes and help the Red Wizards hunt wild mages all at once.~ [OH90295] */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #93689 /* ~Have some patience, Neera. We need to approach this strategically.~ */ DO ~SetGlobal("OHN_NEERA_VS_GUL","OH6300",1)
~ EXTERN ~OHNGDUKE~ 28
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #93689 /* ~Have some patience, Neera. We need to approach this strategically.~ */ EXTERN ~OHNGDUKE~ 25
  IF ~~ THEN REPLY #93690 /* ~This man isn't one of the Order—and he may offer something we can use. Just—let me handle this.~ */ DO ~SetGlobal("OHN_NEERA_VS_GUL","OH6300",1)
~ EXTERN ~OHNGDUKE~ 25
  IF ~~ THEN REPLY #93691 /* ~There's one wild mage I'd like to hand over to them right now.~ */ EXTERN ~OHNGDUKE~ 25
END

IF ~~ THEN BEGIN 110 // from:
  SAY #90297 /* ~What are you, their secretary?~ [OH90297] */
  IF ~~ THEN EXTERN ~OHNGDUKE~ 27
END

IF ~~ THEN BEGIN 111 // from:
  SAY #90302 /* ~But he did. And now we get to kill the miserable blood merchant, right?~ [OH90302] */
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 112 // from:
  SAY #90303 /* ~They're right about that. All right, everyone. It's time to fight.~ [OH90303] */
  IF ~~ THEN EXTERN ~OHNGDUKE~ 24
END

IF ~~ THEN BEGIN 113 // from:
  SAY #98549 /* ~I have a better idea. It's time to fight!~ [OH98549] */
  IF ~~ THEN DO ~ActionOverride("OHNGDUKE",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #98554 /* ~It's time to fight!~ [OH98554] */
  IF ~~ THEN DO ~ActionOverride("OHNGDUKE",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 115 // from:
  SAY #90738 /* ~No, we're—~ [OH90738] */
  IF ~~ THEN REPLY #90739 /* ~Let me handle this, Neera. I know you're angry, but these people aren't Red Wizards.~ */ EXTERN ~OHNFADEL~ 6
  IF ~~ THEN REPLY #90740 /* ~We're here to help—to help you to an early grave.~ */ EXTERN ~OHNFADEL~ 5
  IF ~~ THEN REPLY #90741 /* ~Must I remind you who leads this group, Neera? I will do the talking.~ */ EXTERN ~OHNFADEL~ 6
END

IF ~~ THEN BEGIN 116 // from:
  SAY #90829 /* ~Mironda! You're alive. Where are the others?! Are they alive too?~ [OH90829] */
  IF ~~ THEN EXTERN ~OHNMIRON~ 25
END

IF ~~ THEN BEGIN 117 // from:
  SAY #89535 /* ~Ha! One of our tricks worked. That ettin is just a scary illusion, but those gnolls don't know any better. They'll hightail it out of here and never come back!~ [OH89535] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT41",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #88142 /* ~I know we're here on business, but can we watch a bit more?~ [OH88142] */
  IF ~~ THEN REPLY #88143 /* ~Why not?~ */ EXTERN ~OHNDAXUS~ 10
  IF ~~ THEN REPLY #88144 /* ~No. We have a task to do. Let's go.~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #88149 /* ~He's good! He is really good! Want to keep watching?~ [OH88149] */
  IF ~~ THEN REPLY #88150 /* ~We might as well.~ */ EXTERN ~OHNDAXUS~ 11
  IF ~~ THEN REPLY #88151 /* ~No, let's go talk to him.~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #88156 /* ~Hey! He's talking about the Hidden Refuge. In public, no less! That's our cue. Let's go get him.~ [OH88156] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #88169 /* ~Listen, we're trying to help you! Honest! You're in danger. The Red Wizards are rounding up the wild mages and doing terrible, awful, horrible... TERRIBLE things to us.~ [OH88169] */
  IF ~~ THEN EXTERN ~OHNDAXUS~ 15
END

IF WEIGHT #11 /* Triggers after states #: 137 139 140 even though they appear after this state */
~  Global("OHN_DAXUS_TALK","LOCALS",1)
Global("OHN_DAXUS_ESCAPES","GLOBAL",1)
~ THEN BEGIN 122 // from:
  SAY #98548 /* ~I'm worried. We need to get back to Telana and tell her what happened.~ [OH98548] */
  IF ~~ THEN DO ~SetGlobal("OHN_DAXUS_TALK","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #93382 /* ~Ha ha ha ha ha! Ha ha! Oh, Daxus! You are a blast to have along.~ [OH93382] */
  IF ~~ THEN REPLY #93383 /* ~I don't get it. What's so funny?~ */ GOTO 124
  IF ~~ THEN REPLY #93384 /* ~I agree. I suppose you've decided to stay with Telana, Daxus?~ */ EXTERN ~OHNDAXUS~ 20
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #93385 /* ~Really? You don't? It's just—Daxus is all blue, you know? Oh, so what's next, ya hilariously blue elf?~ [OH93385] */
  IF ~~ THEN EXTERN ~OHNDAXUS~ 21
END

IF ~~ THEN BEGIN 125 // from:
  SAY #87920 /* ~Wild magic wins again! ...If only it was always so good at winning.~ [OH87920] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 134
END

IF ~~ THEN BEGIN 126 // from:
  SAY #93668 /* ~Hey! I'm standing RIGHT HERE, you know.~ [OH93668] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #87923 /* ~Nice shield, but you just gave Kirik good reason for a VERY rebellious adolescence.~ [OH87923] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 134
END

IF ~~ THEN BEGIN 128 // from:
  SAY #102407 /* ~Uh, <CHARNAME>? Are you suuure you know what you're doing?~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 592
END

IF ~~ THEN BEGIN 129 // from:
  SAY #102312 /* ~That's a relief! Or... wait...~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 130 // from:
  SAY #102312 /* ~That's a relief! Or... wait...~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 131 // from:
  SAY #102312 /* ~That's a relief! Or... wait...~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 132 // from:
  SAY #102325 /* ~Suldanessellar is... gone? Just GONE?! How do you lose a city?!~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 606
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 787
END

IF ~~ THEN BEGIN 133 // from:
  SAY #102325 /* ~Suldanessellar is... gone? Just GONE?! How do you lose a city?!~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 607
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 788
END

IF ~~ THEN BEGIN 134 // from:
  SAY #102329 /* ~Even if you had, Bodhi, we'd have found you.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 610
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 839
END

IF ~~ THEN BEGIN 135 // from:
  SAY #102329 /* ~Even if you had, Bodhi, we'd have found you.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 611
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 840
END

IF ~~ THEN BEGIN 136 // from:
  SAY #102336 /* ~Ugh, I suppose we can't really let her smolder, right? Right?~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 792
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 842
END

IF WEIGHT #0 ~  Global("OH_UnderdarkComments","GLOBAL",1)
~ THEN BEGIN 137 // from:
  SAY #102298 /* ~Something tells me we're not in Brynnlaw anymore.~ */
  IF ~~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 612
END

IF ~~ THEN BEGIN 138 // from:
  SAY #102300 /* ~Ooh, you won't have to wear your cloak! No daytime!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~HEXXATJ~ 613
END

IF WEIGHT #1 ~  Global("OH_tanner","AR0502",1)
~ THEN BEGIN 139 // from:
  SAY #102315 /* ~Ugh, the last time I smelled something that bad, I started telling a story I just realized is way more disgusting a story than I really want to tell. I hope it's just some dead bodies this time.~ */
  IF ~~ THEN DO ~SetGlobal("OH_tanner","AR0502",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 614
END

IF WEIGHT #2 ~  Global("OH_Adalon","AR2102",1)
~ THEN BEGIN 140 // from:
  SAY #102332 /* ~<CHARNAME>!~ */
  IF ~~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 845
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 615
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 795
END

IF WEIGHT #12 ~  Global("OHN_bgeeromance","GLOBAL",2)
~ THEN BEGIN 141 // from:
  SAY #90201 /* ~Can we talk a second, <CHARNAME>?~ [OH90201] */
  IF ~~ THEN REPLY #90202 /* ~What's on your mind?~ */ DO ~SetGlobal("OHN_bgeeromance","GLOBAL",3)
SetGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 143
  IF ~~ THEN REPLY #90203 /* ~Of course, Neera. Talking to you is one of the great pleasures of my life.~ */ DO ~SetGlobal("OHN_bgeeromance","GLOBAL",3)
SetGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 142
  IF ~~ THEN REPLY #90204 /* ~I have much to think about. Be quick with it.~ */ DO ~SetGlobal("OHN_bgeeromance","GLOBAL",3)
SetGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 144
END

IF ~~ THEN BEGIN 142 // from: 141.1
  SAY #96077 /* ~I don't even know if you're joking.~ [OH96077] */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 144.0 142.0 141.0
  SAY #90205 /* ~I—wanted to talk about the way we left things back on the Sword Coast.~ [OH90205] */
  IF ~~ THEN REPLY #90206 /* ~And how did we leave things?~ */ GOTO 145
  IF ~~ THEN REPLY #90207 /* ~Which things do you mean? I recall more than a few corpses, some piles of ash, and at least one empty barrel.~ */ GOTO 146
  IF ~~ THEN REPLY #90208 /* ~Oh. Let's not think too much about the past.~ */ GOTO 147
  IF ~~ THEN REPLY #90209 /* ~In that case, I don't think there's anything to discuss. Let's keep moving.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 148
END

IF ~~ THEN BEGIN 144 // from: 141.2
  SAY #90210 /* ~I'll try not to take up too much of your oh-so-valuable time.~ [OH90210] */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #90211 /* ~I'm not sure; that's kind of why I brought it up.~ [OH90211] */
  IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 146 // from: 143.1
  SAY #90212 /* ~Ha! I remember that barrel. Not quite as rich as it once was, right? But that's not what I meant.~ [OH90212] */
  IF ~~ THEN REPLY #90213 /* ~Oh dear. This sounds serious.~ */ GOTO 150
  IF ~~ THEN REPLY #90214 /* ~What did you mean, then?~ */ GOTO 150
  IF ~~ THEN REPLY #90215 /* ~Oh. Let's not think too much about the past.~ */ GOTO 147
  IF ~~ THEN REPLY #90216 /* ~I know what you meant. Don't worry about it, Neera. Whatever was once between us is over.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 148
END

IF ~~ THEN BEGIN 147 // from: 146.2 143.2
  SAY #90217 /* ~Right! I'm glad to be traveling with you again, but picking up where we left off would be hard... wherever that was.~ [OH90217] */
  IF ~~ THEN REPLY #90218 /* ~Then it's settled. A clean slate. Is there anything else?~ */ GOTO 151
  IF ~~ THEN REPLY #90219 /* ~Agreed. But you must have had a reason to bring this up.~ */ GOTO 151
  IF ~~ THEN REPLY #90220 /* ~I feel the same way. There is nothing between us.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 149
END

IF ~~ THEN BEGIN 148 // from: 153.3 150.2 146.3 143.3
  SAY #90221 /* ~That's exactly what I was gonna say... Glad you said it first.~ [OH90221] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from: 156.2 147.2
  SAY #90222 /* ~So we agree. Great. That's great. Glad we got that cleared up.~ [OH90222] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 146.1 146.0 145.0
  SAY #90223 /* ~There's no easy way to say this. I just wanted you to know that... well, a lot's happened since the Sword Coast. For both of us.~ [OH90223] */
  IF ~~ THEN REPLY #90224 /* ~Yes. Did you have something particular in mind?~ */ GOTO 151
  IF ~~ THEN REPLY #90225 /* ~All right, who was he?!~ */ GOTO 152
  IF ~~ THEN REPLY #90226 /* ~Enough. Let's not waste more time on this.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 148
END

IF ~~ THEN BEGIN 151 // from: 150.0 147.1 147.0
  SAY #90227 /* ~Actually, yes. I met someone.~ [OH90227] */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 152 // from: 150.1
  SAY #90228 /* ~How did you know? Or—were you joking? Because it's true. I met someone.~ [OH90228] */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.0 151.0
  SAY #90229 /* ~It's over now between me and him. Not that that means anything... I just thought you should know.~ [OH90229] */
  IF ~~ THEN REPLY #90230 /* ~I'm glad you told me, Neera. Really.~ */ GOTO 154
  IF ~~ THEN REPLY #90231 /* ~I don't really know what to say.~ */ GOTO 155
  IF ~~ THEN REPLY #90232 /* ~What?! Tell me about him. I need to know.~ */ GOTO 156
  IF ~~ THEN REPLY #90234 /* ~So that's it? Just one? Good thing I'm not keeping score.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 148
  IF ~~ THEN REPLY #90233 /* ~You have to be joking. No? Then that's it. We won't discuss this—or anything like this—ever again.~ */ GOTO 157
END

IF ~~ THEN BEGIN 154 // from: 156.0 153.0
  SAY #90235 /* ~Really? Good. Let's get moving. Ah! And I thought my first wild surge was awkward. Ha ha!~ [OH90235] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from: 156.1 153.1
  SAY #90236 /* ~Sorry for making this as awkward as possible. Don't worry. You don't need to say anything!~ [OH90236] */
  IF ~~ THEN REPLY #90237 /* ~Thank you for letting me know, Neera. Let's go.~ */ EXIT
  IF ~~ THEN REPLY #90238 /* ~Then I won't. Let's move on.~ */ EXIT
  IF ~~ THEN REPLY #90239 /* ~I won't. Don't ever expect a kind word from me again.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 158
END

IF ~~ THEN BEGIN 156 // from: 153.2
  SAY #90240 /* ~What good would that do? Please, <CHARNAME>, just leave it alone. I'm sorry I mentioned it.~ [OH90240] */
  IF ~~ THEN REPLY #90241 /* ~Very well. I suppose I'm glad you told me.~ */ GOTO 154
  IF ~~ THEN REPLY #90242 /* ~What am I supposed to say?~ */ GOTO 155
  IF ~~ THEN REPLY #90243 /* ~That's it, then. This conversation is over.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 149
END

IF ~~ THEN BEGIN 157 // from: 153.4
  SAY #90244 /* ~Yes, because you'd automatically lose ten points for being a terrible person. Look, I'm sorry I brought this up. Let's just get going.~ [OH90244] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 158 // from: 155.2
  SAY #90245 /* ~I won't expect anything at all from you. Let's move on. This place is boring.~ [OH90245] */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  Global("NeeraLovetalks","GLOBAL",2)
~ THEN BEGIN 159 // from:
  SAY #89873 /* ~So... You arrived in Amn recently? This Jon Irenicus kidnapped you? That couldn't have been fun.~ [OH89873] */
  IF ~~ THEN REPLY #89874 /* ~It wasn't. But I'm free now. I'd rather not dwell on it.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 160
  IF ~~ THEN REPLY #89876 /* ~I was imprisoned and tortured. No, it wasn't fun.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 161
  IF ~~ THEN REPLY #89878 /* ~There was a bit of imprisonment and torture. I've endured worse.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 161
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #89880 /* ~Understandable! The thought of being imprisoned... brrr!~ [OH89880] */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 161 // from: 159.2 159.1
  SAY #89881 /* ~Oh, gods. I'm so, so sorry.~ [OH89881] */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 160.0
  SAY #89883 /* ~You've had a taste of what I'm most afraid of—being taken by a crazy wizard who wants to tear you apart because of what you are. Not even who you are. WHAT you are. Know what I mean?~ [OH89883] */
  IF ~~ THEN REPLY #89884 /* ~Intimately. It's a terrible thing, being treated as if what you think and feel is of no consequence.~ */ GOTO 166
  IF ~~ THEN REPLY #89886 /* ~You'd prefer evil wizards torture you because of your quick wit or troubled childhood?~ */ GOTO 167
  IF ~~ THEN REPLY #89887 /* ~Not really. Care to explain?~ */ GOTO 163
  IF ~~ THEN REPLY #89889 /* ~No. Nor do I care to.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 164
END

IF ~~ THEN BEGIN 163 // from: 167.0 162.2
  SAY #89890 /* ~The Red Wizards don't even think of wild mages as people. We're more like books they think they'll just open up and then toss aside.~ [OH89890] */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 164 // from: 162.3
  SAY #89892 /* ~Oh. Good. I don't care to tell you.~ [OH89892] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 165 // from: 166.0 163.0
  SAY #89893 /* ~I want the world to know that I CAN'T be tossed aside. That I matter. Don't you?~ [OH89893] */
  IF ~~ THEN REPLY #89895 /* ~I don't think the whole world need know. I'd be happy to make my mark on some small corner of Faerûn.~ */ GOTO 168
  IF ~~ THEN REPLY #89897 /* ~Absolutely. I think I'd die if I didn't make my mark on the world.~ */ GOTO 169
  IF ~~ THEN REPLY #89898 /* ~No. I know that I matter. That is enough for me.~ */ GOTO 170
  IF ~~ THEN REPLY #89900 /* ~But you CAN be tossed aside. As can I. The world doesn't care about either of us.~ */ GOTO 171
END

IF ~~ THEN BEGIN 166 // from: 162.0
  SAY #89902 /* ~Exactly!~ [OH89902] */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 167 // from: 162.1
  SAY #89904 /* ~Ha ha! That's it, in a way.~ [OH89904] */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 168 // from: 165.0
  SAY #89905 /* ~You've already done that! You're right, though. That's all you really need.~ [OH89905] */
  IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 169 // from: 165.1
  SAY #89907 /* ~Usually, I'm pretty sure I'm gonna die no matter what. But I know exactly what you're saying.~ [OH89907] */
  IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 170 // from: 165.2
  SAY #89909 /* ~I know I matter, don't get me wrong. I just want—other people to know, too.~ [OH89909] */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 165.3
  SAY #89910 /* ~There's a cheery thought. You're not big with the moral support, are you?~ [OH89910] */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from: 171.0 170.0
  SAY #89911 /* ~But I get what you're saying. Maybe you're right. MAYBE. Enough chitchat, though. Let's move.~ [OH89911] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from: 169.0 168.0
  SAY #89912 /* ~I guess that makes us peas in a pod—an enormous pod, obviously, with multiple bedrooms, an outhouse, and a wood-burning stove.~ [OH89912] */
  IF ~~ THEN REPLY #89913 /* ~I like the way you think. On we go, my fellow pod person.~ */ EXIT
  IF ~~ THEN REPLY #89914 /* ~How about just one bedroom?~ */ GOTO 174
  IF ~~ THEN REPLY #89915 /* ~That sounds lovely. Let's go find some seeds.~ */ EXIT
  IF ~~ THEN REPLY #89916 /* ~If you say so, Neera. Let's get going.~ */ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.1
  SAY #89917 /* ~I said we were peas in a pod, not rabbits in a... whatever rabbits live in! You're my friend, nothing more. Conversation over!~ [OH89917] */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~  Global("NeeraLovetalks","GLOBAL",4)
~ THEN BEGIN 175 // from:
  SAY #89143 /* ~Look at all these buildings and people! Baldur's Gate was huge, but this place makes it look like my hamlet back in the High Forest.~ [OH89143] */
  IF ~~ THEN REPLY #89144 /* ~Impressive, isn't it?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 176
  IF ~~ THEN REPLY #89145 /* ~Imagine how it looks to me. I grew up in a library.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 179
  IF ~~ THEN REPLY #89146 /* ~It's not so impressive. Waterdeep and Calimport are bigger.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 178
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #89147 /* ~Very!~ [OH89147] */
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 179.0 178.0 176.0
  SAY #89148 /* ~There seems to be no end to the things you can do. Not like the High Forest. I mean, there WAS lots to do, but most of it was pretty dull. There weren't all these people milling around.~ [OH89148] */
  IF ~~ THEN REPLY #89149 /* ~I wonder if the city is really any less lonely.~ */ GOTO 181
  IF ~  OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)
~ THEN REPLY #89150 /* ~That doesn't sound too terrible. I'm very much at home in the wilds.~ */ GOTO 183
  IF ~~ THEN REPLY #89151 /* ~You don't talk much about the High Forest. It was lonely?~ */ GOTO 182
  IF ~~ THEN REPLY #89152 /* ~I'm sure that's true. But come, we have much to do.~ */ GOTO 180
END

IF ~~ THEN BEGIN 178 // from: 175.2
  SAY #89153 /* ~I forgot how cosmopolitan you are, what with all those maps the monks at Candlekeep made you study. I'm not saying Athkatla's the biggest city ever. But it's bigger than anything I've ever seen.~ [OH89153] */
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 179 // from: 175.1
  SAY #89154 /* ~I forgot you're from Candlekeep. Athkatla must look just as big to you, if not bigger.~ [OH89154] */
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 180 // from: 187.3 182.3 177.3
  SAY #89155 /* ~Sure, sure. On we go.~ [OH89155] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 181 // from: 177.0
  SAY #89156 /* ~It would be if you weren't traveling with a bunch of powerful, amusing companions. But a different kind of lonely from what you feel in the High Forest.~ [OH89156] */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 183.0 181.0 177.2
  SAY #89157 /* ~You could doze off there, wake up, and not know where you were or how long you'd been asleep. It was like the rest of the world had stopped. The trees and animals were still there, obviously. But they never paid much attention... until I started accidentally burning things down, of course. It was the purest kind of lonely.~ [OH89157] */
  IF ~~ THEN REPLY #89158 /* ~And was feeling that way good or bad?~ */ GOTO 185
  IF ~~ THEN REPLY #89159 /* ~That doesn't sound terrible. Except for the bit about burning things down.~ */ GOTO 186
  IF ~~ THEN REPLY #89160 /* ~I think I'd rather awake in a keep, with a loving spouse, a loyal hound, and some servants.~ */ GOTO 184
  IF ~~ THEN REPLY #89161 /* ~Of course. Well, we should get moving.~ */ GOTO 180
END

IF ~~ THEN BEGIN 183 // from: 177.1
  SAY #89162 /* ~You'd have loved the High Forest, then.~ [OH89162] */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 184 // from: 182.2
  SAY #89163 /* ~Domestic bliss, eh? Not my cup of tea. I don't even like tea—and bliss is probably overrated. Let's go.~ [OH89163] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from: 182.0
  SAY #89164 /* ~Neither entirely. More good than bad, I think.~ [OH89164] */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 186 // from: 182.1
  SAY #89165 /* ~It wasn't too bad. More good than bad. I think.~ [OH89165] */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0 185.0
  SAY #89166 /* ~I was banished because I didn't fit in. Well, that and burning things. But I DID fit in, in a way. That pure kind of lonely, that solitude—I always think about that. Want it. Good or bad, it's who I am.~ [OH89166] */
  IF ~~ THEN REPLY #89167 /* ~Is it?~ */ GOTO 188
  IF ~~ THEN REPLY #89168 /* ~I think I understand. Part of me feels the same way. Only a part, though.~ */ GOTO 189
  IF ~~ THEN REPLY #89169 /* ~What if you were to fall in love?~ */ GOTO 190
  IF ~~ THEN REPLY #89170 /* ~Interesting. I'll have to think about that. Ready to move?~ */ GOTO 180
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #89171 /* ~It is right now. Who knows how the Neera of the future will think?~ [OH89171] */
  IF ~~ THEN REPLY #89172 /* ~We'll find out.~ */ EXIT
  IF ~~ THEN REPLY #89173 /* ~Indeed. Onward.~ */ EXIT
END

IF ~~ THEN BEGIN 189 // from: 187.1
  SAY #89174 /* ~Maybe it's only a part of me, too. Like my stomach, except it wants solitude and not a sandwich. Or maybe it wants solitude AND a sandwich. Oh, now I'm just making things up. Let's get moving, yes?~ [OH89174] */
  IF ~~ THEN REPLY #89175 /* ~Yes. We have much to do, oh child of the woods.~ */ EXIT
  IF ~~ THEN REPLY #89176 /* ~Indeed. Onward.~ */ EXIT
END

IF ~~ THEN BEGIN 190 // from: 187.2
  SAY #96079 /* ~IF it happened, I guess I wouldn't want solitude so much. Who knows what the Neera of tomorrow will think.~ [OH96079] */
  IF ~~ THEN REPLY #89172 /* ~We'll find out.~ */ EXIT
  IF ~~ THEN REPLY #89173 /* ~Indeed. Onward.~ */ EXIT
END

IF WEIGHT #15 ~  Global("NeeraLovetalks","GLOBAL",6)
~ THEN BEGIN 191 // from:
  SAY #97943 /* ~Life on the road is great, but it makes having friends harder. Before you came along, Telana and I were thick as thieves. Really fat thieves!~ [OH97943] */
  IF ~~ THEN REPLY #98079 /* ~I don't think you know the proper meaning of the phrase "thick as thieves."~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 192
  IF ~~ THEN REPLY #98080 /* ~You aren't so close now?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 193
  IF ~~ THEN REPLY #98081 /* ~You miss her, I take it.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 194
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #97944 /* ~Do you know the proper meaning of "go fly a kite"? As I was saying…~ [OH97944] */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 193 // from: 191.1
  SAY #97945 /* ~No. Even when we're together, it's... different. ~ [OH97945] */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 194 // from: 191.2
  SAY #97946 /* ~I do sometimes. But not as much as I'd have thought.~ [OH97946] */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from: 194.0 193.0 192.0
  SAY #97947 /* ~If I had to decide, I think I'm probably better at being on the road than I am at being a friend. I don't necessarily WANT it to be that way, but there you have it.~ [OH97947] */
  IF ~~ THEN REPLY #98082 /* ~I don't think friendship and adventuring are mutually exclusive, Neera.~ */ GOTO 196
  IF ~~ THEN REPLY #98083 /* ~Why do you feel that way?~ */ GOTO 197
  IF ~~ THEN REPLY #98084 /* ~Friendship is a sacrifice adventurers have to make.~ */ GOTO 198
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #97948 /* ~Aren't they? Maybe you're right. I mean, you're a friend—or at least friendly... ~ [OH97948] */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 197 // from: 195.1
  SAY #97949 /* ~I've... never really had a lasting friendship. I've always driven my friends away. I'm pretty good at wandering about aimlessly, though. But hey, we're friends...~ [OH97949] */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 198 // from: 195.2
  SAY #97950 /* ~Yeah. Friendship, frequent baths, and—well, other things, too.~ [OH97950] */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 203.0 202.0 201.0 198.0
  SAY #97951 /* ~Anyway, the road calls. Off we go.~ [OH97951] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 200 // from: 197.0 196.0
  SAY #97952 /* ~Right?~ [OH97952] */
  IF ~~ THEN REPLY #98085 /* ~Yes, of course!~ */ GOTO 201
  IF ~~ THEN REPLY #98086 /* ~Am I your friend? I like to think I'm... something like that.~ */ GOTO 202
  IF ~~ THEN REPLY #98087 /* ~No, Neera. We are companions. Friendship will come later, if at all.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #97953 /* ~We're friends? Good! Glad to hear it, for the most part. I mean—yes, glad to hear it!~ [OH97953] */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 202 // from: 200.1
  SAY #97954 /* ~Yes! SOMETHING like that. Glad to hear it.~ [OH97954] */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 203 // from:
  SAY #97955 /* ~Fine! I knew you'd make a lousy Telana replacement.~ [OH97955] */
  IF ~~ THEN GOTO 199
END

IF WEIGHT #16 ~  Global("NeeraLovetalks","GLOBAL",8)
~ THEN BEGIN 204 // from:
  SAY #97956 /* ~Darn it! My last wild surge did something... odd to my dry rations.~ [OH97956] */
  IF ~~ THEN REPLY #98088 /* ~What did it do?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 205
  IF ~~ THEN REPLY #98089 /* ~Perhaps it was hungry?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 206
END

IF ~~ THEN BEGIN 205 // from: 206.0 204.0
  SAY #97957 /* ~Undried them. Look. The hardtack's a gooey mess, the apples look like they were just picked, and the fish is—oh! there he goes. Good luck finding a pond, little guy. I don't suppose you'd share some of your rations, would you, <CHARNAME>?~ [OH97957] */
  IF ~~ THEN REPLY #98090 /* ~Of course, Neera. Here you are—beef strips and more hardtack.~ */ GOTO 207
  IF ~~ THEN REPLY #98091 /* ~Sure, but don't eat all of them.~ */ GOTO 208
  IF ~~ THEN REPLY #98092 /* ~Buy some yourself next time we're in town.~ */ GOTO 209
END

IF ~~ THEN BEGIN 206 // from: 204.1
  SAY #97958 /* ~I don't think so. If it was hungry, they'd probably have just disappeared. Also: wild surges? Surprisingly small appetites.~ [OH97958] */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #97959 /* ~Hardtack, hardtack! Always hardtack. Have you noticed no one ever offers to reward us with a nice dinner?~ [OH97959] */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 208 // from: 205.1
  SAY #97960 /* ~Unless they're a lot better than mine, I won't even be tempted.~ [OH97960] */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 209 // from: 205.2
  SAY #97961 /* ~Seriously? Okay. But don't be surprised when I faint during our next battle. Let's get going—maybe I can scrape up some crumbs up ahead.~ [OH97961] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 210 // from: 208.0 207.0
  SAY #97962 /* ~Thanks, <CHARNAME>... Wow! Not bad. You have really nice biscuits. Er... That sounded bad. Buns. No! Hard fruit. Ugh... ~ [OH97962] */
  IF ~~ THEN REPLY #98093 /* ~I like this list. Keep going with it.~ */ GOTO 211
  IF ~~ THEN REPLY #98094 /* ~Ha ha! You're very sly.~ */ GOTO 212
  IF ~~ THEN REPLY #98095 /* ~Don't be silly, Neera.~ */ GOTO 212
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #97963 /* ~No, no, I'm stopping while I'm ahead.~ [OH97963] */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 212 // from: 210.2 210.1
  SAY #97964 /* ~It was an accident! I swear!~ [OH97964] */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213 // from: 212.0 211.0
  SAY #97965 /* ~Oh wow, I'm suddenly very full! High time we got moving, don't you think?!~ [OH97965] */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 ~  Global("NeeraLovetalks","GLOBAL",10)
Global("OHN_bgeeromance","GLOBAL",3)
~ THEN BEGIN 214 // from:
  SAY #89177 /* ~Hey! Um... Remember when I said I was seeing someone back in Baldur's Gate, after you and I—uh, after we parted ways?~ [OH89177] */
  IF ~~ THEN REPLY #89178 /* ~I remember it very well.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 217
  IF ~~ THEN REPLY #89179 /* ~Mm-hm.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 217
  IF ~~ THEN REPLY #89180 /* ~That's something I'd rather not remember.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 216
END

IF WEIGHT #18 ~  Global("NeeraLovetalks","GLOBAL",10)
!Global("OHN_bgeeromance","GLOBAL",3)
~ THEN BEGIN 215 // from:
  SAY #89181 /* ~Hey! Uh... We've been getting to know each other pretty well, right? So... I thought I'd mention I was seeing someone. Recently. Before I came to Amn, back on the Sword Coast.~ [OH89181] */
  IF ~~ THEN REPLY #89182 /* ~Oh really? What happened?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 217
  IF ~~ THEN REPLY #89183 /* ~You've piqued my curiosity. My morbid curiosity.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 217
  IF ~~ THEN REPLY #89184 /* ~Interesting, but we don't have time for idle talk.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 228.1 227.1 226.4 226.3 223.2 215.2 214.2
  SAY #89185 /* ~Right. Sorry. Forget I said anything.~ [OH89185] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 217 // from: 215.1 215.0 214.1 214.0
  SAY #89186 /* ~It's—it didn't end well. Actually, I'm not sure it really ended at all. It just—I sort of left.~ [OH89186] */
  IF ~~ THEN REPLY #89187 /* ~Really?~ */ GOTO 222
  IF ~~ THEN REPLY #89188 /* ~Did he mistreat you in some way?~ */ GOTO 218
  IF ~~ THEN REPLY #89189 /* ~Not the most graceful way to end a relationship.~ */ GOTO 220
END

IF ~~ THEN BEGIN 218 // from: 217.1
  SAY #89190 /* ~Mistreat me? Ha! No. Unless you count saying sweet things and giving me gifts as mistreatment. No, no: I mistreated him.~ [OH89190] */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 222.0 220.0 218.0
  SAY #89191 /* ~This is what happened: I woke up one morning and saw him lying there, and I knew it couldn't go on. He didn't look bad or anything. I just—knew. So I got up, got my things together, and walked out.~ [OH89191] */
  IF ~~ THEN REPLY #89192 /* ~Why didn't you talk to him?~ */ GOTO 223
  IF ~~ THEN REPLY #89193 /* ~I'm not sure I understand. ~ */ GOTO 221
  IF ~~ THEN REPLY #89194 /* ~I would have done the same, in your shoes.~ */ GOTO 224
  IF ~~ THEN REPLY #89195 /* ~Cold.~ */ GOTO 225
END

IF ~~ THEN BEGIN 220 // from: 217.2
  SAY #89196 /* ~Ha. Ha ha. Right. Ha ha.~ [OH89196] */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 221 // from: 219.1
  SAY #89197 /* ~We have something in common.~ [OH89197] */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 217.0
  SAY #89198 /* ~I'm afraid so.~ [OH89198] */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 223 // from: 225.0 224.0 221.0 219.0
  SAY #89199 /* ~I was afraid, I guess. Not of him, I just... I didn't want to see him hurt. I've hurt plenty of people, of course. Usually with magic, and usually by accident. It's happened again and again. But I couldn't bear to see... his face, to know I was responsible for how he felt.~ [OH89199] */
  IF ~~ THEN REPLY #89200 /* ~Why are you telling me this, Neera?~ */ GOTO 226
  IF ~~ THEN REPLY #89201 /* ~You clearly feel responsible, whether you see him or not.~ */ GOTO 226
  IF ~~ THEN REPLY #89202 /* ~If it makes you feel any better, there's no chance of you breaking MY heart. Can we get moving?~ */ GOTO 216
END

IF ~~ THEN BEGIN 224 // from: 219.2
  SAY #89203 /* ~Nice to know you're as bad a person as I am.~ [OH89203] */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 225 // from: 219.3
  SAY #89204 /* ~Hey, not nice! Accurate, but really not nice. It was more than that, though—~ [OH89204] */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 226 // from: 223.1 223.0
  SAY #89205 /* ~I just—thought you should know. I don't want to say, uh, "This is this!" or "That is that!" Because you'd have no idea what I was talking about. I just thought you should know what you're getting into in case—~ [OH89205] */
  IF ~~ THEN REPLY #89206 /* ~In case I start to have feelings for you?~ */ GOTO 227
  IF ~~ THEN REPLY #89207 /* ~In case I still have feelings for you?~ */ GOTO 227
  IF ~~ THEN REPLY #89208 /* ~In case of what?~ */ GOTO 228
  IF ~~ THEN REPLY #89209 /* ~If it makes you feel any better, you'll not break MY heart. Can we get moving?~ */ GOTO 216
  IF ~~ THEN REPLY #89210 /* ~I'm not getting into anything. We are friends, Neera—nothing more.~ */ GOTO 216
END

IF ~~ THEN BEGIN 227 // from: 226.1 226.0
  SAY #89211 /* ~Hey, maybe you could try being a little more loud and straightforward?! But yes, SOMETHING like that. I'm not saying you do. And I'm not saying I do. But—there it is.~ [OH89211] */
  IF ~~ THEN REPLY #89212 /* ~I see. Well, I'm not saying anything one way or the other, but... thank you. ~ */ GOTO 229
  IF ~~ THEN REPLY #89213 /* ~Neera... you're a good friend. And that's all you are.~ */ GOTO 216
END

IF ~~ THEN BEGIN 228 // from: 226.2
  SAY #89214 /* ~You know. Feelings. I'm not saying you have any. I mean, obviously you have feelings. But not about me. Uh, maybe. And I'm not saying I do—have feelings about you. But—there it is.~ [OH89214] */
  IF ~~ THEN REPLY #89215 /* ~I see. Well, I'm not saying anything one way or the other either, but... thank you. ~ */ GOTO 229
  IF ~~ THEN REPLY #89216 /* ~My feelings for you do not go beyond friendship, Neera.~ */ GOTO 216
END

IF ~~ THEN BEGIN 229 // from: 228.0 227.0
  SAY #89217 /* ~Boy, am I glad that's over. Can we get moving? Fast? I can jog on ahead and do some scouting...~ [OH89217] */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 ~  Global("NeeraLovetalks","GLOBAL",12)
~ THEN BEGIN 230 // from:
  SAY #97966 /* ~What a crowd. This place beats most of the inns back in Baldur's Gate. And let's not even TALK about the High Forest. There, an inn is considered busy if there's more than one raccoon in the attic.~ [OH97966] */
  IF ~~ THEN REPLY #98096 /* ~It's a good place to rest between adventures—and for starting some.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 231
  IF ~~ THEN REPLY #98097 /* ~It's a bit of a dive.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 233
  IF ~~ THEN REPLY #100253 /* ~It's nice enough.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 237
  IF ~~ THEN REPLY #98098 /* ~I'd rather camp with raccoons than stay here.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 234
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #97967 /* ~Also, drinking!~ [OH97967] */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232 // from: 234.0 233.0 231.0
  SAY #97968 /* ~Speaking of which, I sure am thirsty... ~ [OH97968] */
  IF ~~ THEN REPLY #98099 /* ~Would you like a drink?~ */ GOTO 236
  IF ~~ THEN REPLY #98100 /* ~Subtle.~ */ GOTO 238
  IF ~~ THEN REPLY #98101 /* ~Why not get a drink, then?~ */ GOTO 235
END

IF ~~ THEN BEGIN 233 // from: 230.1
  SAY #97969 /* ~Exactly! Who doesn't love a dive? Drowning woes, downward spirals—ha! It's all here!~ [OH97969] */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 234 // from: 230.3
  SAY #97970 /* ~I can already see you and your raccoon friends nodding grimly as you sip rainwater together and complain bitterly about the world.~ [OH97970] */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 235 // from: 232.2
  SAY #97971 /* ~Because for some reason the adventure club elected YOU treasurer when I wasn't looking.~ [OH97971] */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 232.0
  SAY #97972 /* ~Yes, please!~ [OH97972] */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 238.0 236.0 235.0 230.2
  SAY #97973 /* ~I'll have a Shadowdark ale. Get one for yourself while you're at it.~ [OH97973] */
  IF ~~ THEN REPLY #98102 /* ~Very well. Try not to burn the place down while I'm gone.~ */ DO ~FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
~ GOTO 239
  IF ~~ THEN REPLY #98103 /* ~Your generosity knows no bounds. I'll be back in a moment... ~ */ DO ~FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
~ GOTO 239
  IF ~~ THEN REPLY #98104 /* ~Not now. It's not time to relax.~ */ DO ~FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
~ GOTO 241
END

IF ~~ THEN BEGIN 238 // from: 232.1
  SAY #97974 /* ~There's something I almost never hear.~ [OH97974] */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 239 // from: 237.1 237.0
  SAY #97975 /* ~Ah, that hits the spot. I could get used to this. Interesting people all around, music, an ale in my hand…~ [OH97975] */
  IF ~~ THEN REPLY #98105 /* ~My hand in your other hand…~ */ GOTO 243
  IF ~~ THEN REPLY #98106 /* ~I agree. This is nice. I could get used to it, too.~ */ GOTO 240
  IF ~~ THEN REPLY #98107 /* ~Wouldn't you prefer someplace... quieter?~ */ GOTO 242
END

IF ~~ THEN BEGIN 240 // from: 242.0 239.1
  SAY #97976 /* ~No one attacking us, no explosions, no crazy wizards (I don't count), no sudden deaths. Nope. This can't last.~ [OH97976] */
  IF ~~ THEN REPLY #98108 /* ~Let's enjoy it while we can.~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 237.2
  SAY #97977 /* ~Will it ever be? Oh, all right. I won't force it.~ [OH97977] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 242 // from: 239.2
  SAY #97978 /* ~Like what, a library? An ancient tomb? No thanks. Let's just enjoy this for a bit.~ [OH97978] */
  IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 243 // from: 239.0
  SAY #97979 /* ~What?! Whoa! What will people think?~ [OH97979] */
  IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #97980 /* ~Like I care what people think of me at this point.~ [OH97980] */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 ~  Global("NeeraLovetalks","GLOBAL",14)
Kit(Player1,Blackguard)
~ THEN BEGIN 245 // from:
  SAY #89226 /* ~Guess it serves me right to have to wander around Amn in the company of a no-good blackguard. I've got to admit, I feel a bit ashamed sticking with someone of your crazy beliefs. I guess I just don't believe you're completely irredeemable. Yet.~ [OH89226] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #21 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,PALADIN_ALL)
~ THEN BEGIN 246 // from:
  SAY #89219 /* ~You know, I never thought I'd travel with a holy warrior so long. Gods, crusades—that's book stuff to me. You're interesting, though. ~ [OH89219] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #22 ~  Global("NeeraLovetalks","GLOBAL",14)
OR(2)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~ THEN BEGIN 247 // from:
  SAY #89220 /* ~You know, <CHARNAME>, I never thought I'd travel so long with someone so at home in nature. When I left the High Forest, I thought I was leaving all that behind.~ [OH89220] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #23 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,CLERIC_ALL)
~ THEN BEGIN 248 // from:
  SAY #89221 /* ~Who'd have thought I'd end up traveling with a priest? I mean, you guys are really good for healing, but I never thought—well, I enjoy your company.~ [OH89221] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #24 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,MONK)
~ THEN BEGIN 249 // from:
  SAY #89222 /* ~You know, if you told me a few years ago I'd spend my days traveling around Amn with a monk, I'd have said you were crazy. I really don't get you guys—the praying and fasting and weird tenets.~ [OH89222] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #25 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,MAGE_ALL)
~ THEN BEGIN 250 // from:
  SAY #89223 /* ~You know, it makes sense that I'm traveling with you. We both use magic. And pretty well, if I do say so myself. ~ [OH89223] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #26 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,BARD_ALL)
~ THEN BEGIN 251 // from:
  SAY #89224 /* ~I love traveling with a bard. You don't sing or recite sonnets as much as I'd like, but I suppose there's a time and place for that.~ [OH89224] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #27 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,THIEF_ALL)
~ THEN BEGIN 252 // from:
  SAY #89225 /* ~Somehow, I always knew I'd end up traveling around the countryside with a no-good thief. *sigh* I'm sure it's what everyone else expected too. But, of course, you're no common cutpurse.~ [OH89225] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #28 ~  Global("NeeraLovetalks","GLOBAL",14)
Class(Player1,FIGHTER_ALL)
~ THEN BEGIN 253 // from:
  SAY #89218 /* ~I never thought I'd travel so long with a fighter. Swords, armor—that stuff does nothing for me. You're interesting, though. More interesting than most warriors I've met.~ [OH89218] */
  IF ~~ THEN GOTO 255
END

IF WEIGHT #29 ~  Global("NeeraLovetalks","GLOBAL",14)
~ THEN BEGIN 254 // from:
  SAY #89227 /* ~Look at me, wandering through the countryside in the company of a mysterious orphan with a great destiny. It's almost—mythical, really. "The Legend of Neera and <CHARNAME>."~ [OH89227] */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255 // from: 254.0 253.0 252.0 251.0 250.0 249.0 248.0 247.0 246.0 245.0
  SAY #89228 /* ~To be fair, though—I have no idea how it is for you. Traveling around with me, I mean. Are you surprised to be hanging out with a headstrong wild mage?~ [OH89228] */
  IF ~~ THEN REPLY #89229 /* ~I never expected to end up in the company of a beautiful, headstrong wild mage.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 256
  IF ~~ THEN REPLY #89230 /* ~Not at all. The minute I left Candlekeep, I thought, "I wonder when I'll run into a pretty half-elven wild mage?"~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 258
  IF ~~ THEN REPLY #89231 /* ~I expected almost none of the extraordinary things that have happened to me.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 259
  IF ~~ THEN REPLY #89232 /* ~Nothing surprises me.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 260
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #89233 /* ~Ugh. I'll try to forget you said that.~ [OH89233] */
  IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 257 // from: 260.0 259.0 258.0 256.0
  SAY #89234 /* ~Second question. "Headstrong." Is that accurate? Is that how you'd describe me? No right answer, I won't judge you—I just want to know what you really think.~ [OH89234] */
  IF ~~ THEN REPLY #89235 /* ~Headstrong? It's fair, I'd say. It's one of the things I like about you.~ */ GOTO 262
  IF ~~ THEN REPLY #89236 /* ~Second question? Does this mean there will be a third? If I'd known I'd be tested, I'd have studied harder.~ */ GOTO 264
  IF ~~ THEN REPLY #89237 /* ~No. You may be headstrong, but I wouldn't use that word to describe you. You're—you.~ */ GOTO 265
  IF ~~ THEN REPLY #89238 /* ~I think you only seem to be headstrong. Now that I know you better, I'd say you're a lot like other women.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 261
END

IF ~~ THEN BEGIN 258 // from: 255.1
  SAY #89239 /* ~Pretty? You know what I like best about you, <CHARNAME>? Your keen skills of observation.~ [OH89239] */
  IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 259 // from: 255.2
  SAY #89240 /* ~So, I'm extraordinary? I can see that.~ [OH89240] */
  IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 260 // from: 255.3
  SAY #89241 /* ~Oooh. Never heard that before.~ [OH89241] */
  IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 261 // from: 264.2 257.3
  SAY #89242 /* ~I said there was no right answer, but... wrong answer. "A lot like other women?" Are all women the same? Do you think that's a compliment to me? To them? Well, guess what: You're a lot like other men.~ [OH89242] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 262 // from: 264.0 257.0
  SAY #89243 /* ~You charmer, you.~ [OH89243] */
  IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 263 // from: 266.0
  SAY #89244 /* ~Whatever. We should get back to what we were doing. ~ [OH89244] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from: 257.1
  SAY #89245 /* ~Nice try, <CHARNAME>. The class clown routine might have worked on the monks at Candlekeep, but I'm a bit more focused. You'll find I'm not so easily distracted. So: headstrong? Is that what I am?~ [OH89245] */
  IF ~~ THEN REPLY #89246 /* ~Sure. It's one of the things I like about you.~ */ GOTO 262
  IF ~~ THEN REPLY #89247 /* ~You may be headstrong, but I wouldn't use that word to describe you. You're—Neera.~ */ GOTO 265
  IF ~~ THEN REPLY #89248 /* ~You only seem headstrong. Now that I know you, I'd say you're a lot like other women.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 261
END

IF ~~ THEN BEGIN 265 // from: 264.1 257.2
  SAY #89249 /* ~That's nice to hear. Really!~ [OH89249] */
  IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0 262.0
  SAY #89250 /* ~I don't mind being called uncontrollable and unpredictable, really. It's just that—well, there's more to me than that. At least I hope there is. After a while, "She wild mage! She wild!" starts sounding a little... dismissive, you know?~ [OH89250] */
  IF ~~ THEN GOTO 263
END

IF WEIGHT #30 ~  Global("NeeraLovetalks","GLOBAL",16)
~ THEN BEGIN 267 // from:
  SAY #97981 /* ~Oh no! You just stepped in something, <CHARNAME>. Oh! This city needs to regulate dogs, not magic.~ [OH97981] */
  IF ~~ THEN REPLY #98109 /* ~I'll take care of it when we rest. We have more important things to worry about.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 270
  IF ~~ THEN REPLY #98110 /* ~Ack! Help me clean it up.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 269
  IF ~~ THEN REPLY #98111 /* ~Don't you have anything better to do than watch where I'm walking?!~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 268
END

IF ~~ THEN BEGIN 268 // from: 267.2
  SAY #97982 /* ~You get so touchy when you're embarrassed. It's cute.~ [OH97982] */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 269 // from: 267.1
  SAY #97983 /* ~I don't think so. You spill gallons of blood every day and you're squeamish about a little pile of digested meat?~ [OH97983] */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 270 // from: 267.0
  SAY #97984 /* ~Those important things won't stop you from smelling.~ [OH97984] */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271 // from: 270.0 269.0 268.0
  SAY #97985 /* ~Luckily, I have some spare rags. Lift up your left boot. There, it'll just take a dab. Don't look at me, I'm not touching it—this is your duty. DUTY, get it? There! You cleaned it all up. Isn't that better?~ [OH97985] */
  IF ~~ THEN REPLY #98112 /* ~I don't know about "better." Mortifying, certainly.~ */ GOTO 273
  IF ~~ THEN REPLY #98113 /* ~I hope I get a reward for this.~ */ GOTO 274
  IF ~~ THEN REPLY #98114 /* ~Leave me be!~ */ GOTO 272
END

IF ~~ THEN BEGIN 272 // from: 271.2
  SAY #97986 /* ~Touchy! Let's move on, sourpuss. Just try and watch your step from now on.~ [OH97986] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 273 // from: 271.0
  SAY #97987 /* ~Mortifying for you is fun for me.~ [OH97987] */
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 274 // from: 271.1
  SAY #97988 /* ~Not having that stuff on your boot is reward enough.~ [OH97988] */
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 274.0 273.0
  SAY #97989 /* ~Still, you were a good sport. Perhaps you do deserve something for all your hard work.~ [OH97989] */
  IF ~~ THEN REPLY #98115 /* ~Something from your lips?~ */ GOTO 276
  IF ~~ THEN REPLY #98116 /* ~What did you have in mind?~ */ GOTO 277
END

IF ~~ THEN BEGIN 276 // from: 277.0 275.0
  SAY #97990 /* ~A kiss? I don't see any harm in it.~ [OH97990] */
  IF ~~ THEN REPLY #98117 /* ~Then I will.~ */ GOTO 279
  IF ~~ THEN REPLY #98118 /* ~Not right now, Neera.~ */ GOTO 278
END

IF ~~ THEN BEGIN 277 // from: 275.1
  SAY #97991 /* ~Oh, I don't know. You're familiar with what's in in my pockets, so—why not a kiss?~ [OH97991] */
  IF ~~ THEN REPLY #98119 /* ~I can kiss you?~ */ GOTO 276
  IF ~~ THEN REPLY #98120 /* ~Not right now, Neera.~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.1 276.1
  SAY #97992 /* ~Fine! I would've had to hold my nose anyway. Let's get moving—watch your step!~ [OH97992] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 279 // from: 276.0
  SAY #97993 /* ~Mm! *sigh* That was... nice, <CHARNAME>. I'd like to find that dog and thank it for helping make that happen.~ [OH97993] */
  IF ~~ THEN EXIT
END

IF WEIGHT #31 ~  Global("NeeraLovetalks","GLOBAL",18)
~ THEN BEGIN 280 // from:
  SAY #97994 /* ~Phew! I'm glad that's over. But it really wasn't THAT hard. I feel like fighting is becoming second nature to me, like breathing or a persistent craving for cheese.~ [OH97994] */
  IF ~~ THEN REPLY #98121 /* ~How do you feel about that?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 281
  IF ~~ THEN REPLY #98122 /* ~It IS second nature to me, you know.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 282
  IF ~~ THEN REPLY #98123 /* ~Perhaps, but you're still you. Don't worry about it.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 283
END

IF ~~ THEN BEGIN 281 // from: 283.0 282.0 280.0
  SAY #97995 /* ~I'm not sure what to think. Who doesn't like feeling powerful? But sometimes I worry—nah. Never mind.~ [OH97995] */
  IF ~~ THEN REPLY #98124 /* ~Go ahead, I'm listening.~ */ GOTO 286
  IF ~~ THEN REPLY #98125 /* ~So be it. I don't think you should be concerned.~ */ GOTO 285
  IF ~~ THEN REPLY #98126 /* ~You don't have to worry about anything with me around.~ */ GOTO 284
END

IF ~~ THEN BEGIN 282 // from: 280.1
  SAY #97996 /* ~I guess it is. Son of Bhaal and all that. But me?~ [OH97996] */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 283 // from: 280.2
  SAY #97997 /* ~Easy for you to say! Thanks for the vote of confidence. But honestly?~ [OH97997] */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 284 // from: 281.2
  SAY #97998 /* ~Ha! That's a good one. It seems like having you around MAKES me worry about things.~ [OH97998] */
  IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 285 // from: 281.1
  SAY #97999 /* ~Is that so? Dismissive much?~ [OH97999] */
  IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0 284.0 281.0
  SAY #98000 /* ~The truth is that I'm beginning to see things more clearly. When you're a wild mage, you kind of open yourself up to chaos. You look into it. As I get more powerful, I see it better and better each time I look.~ [OH98000] */
  IF ~~ THEN REPLY #98127 /* ~That sounds very troubling. Perhaps you should look away.~ */ GOTO 289
  IF ~~ THEN REPLY #98128 /* ~And that worries you?~ */ GOTO 288
  IF ~~ THEN REPLY #98129 /* ~Power is nothing to fear; do not look away from it.~ */ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.2
  SAY #98001 /* ~Whatever. Power is the ONLY thing to fear. Well, maybe not the only. Death and insanity are also pretty frightening. That chaos I see has both. ~ [OH98001] */
  IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 288 // from: 286.1
  SAY #98002 /* ~Well, yes. Clarity isn't all it's cracked up to be. When I look into that chaos, it's equal parts terror and ecstasy—and sometimes I can't tell them apart.~ [OH98002] */
  IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 289 // from: 286.0
  SAY #98003 /* ~That's not a choice I can make. It's part of being a wild mage, and I'm not giving that up, am I? But looking into that chaos CAN be troubling. It's equal parts terror and ecstasy—and sometimes I can't tell them apart.~ [OH98003] */
  IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290 // from: 289.0 288.0 287.0
  SAY #98004 /* ~Okay, cheery thoughts! What's a good cheery thought?... Um, you smell—wow!—you smell really good!~ [OH98004] */
  IF ~~ THEN REPLY #98130 /* ~Impossible! I'm sure I smell like battle.~ */ GOTO 291
  IF ~~ THEN REPLY #98131 /* ~Oh, really? Like what?~ */ GOTO 292
  IF ~~ THEN REPLY #98132 /* ~No, Neera. Don't change the subject so fast.~ */ GOTO 293
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #98005 /* ~Not at all! Like I said, you smell really good... Okay, okay. I might be exaggerating a little bit. But go with it. Lean in and let me get a better whiff... ~ [OH98005] */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 292 // from: 290.1
  SAY #98006 /* ~*sniff* Incense and... peppermint! Okay, not really. You actually smell more like oregano. Try to go with it, though. Lean in and let me get a better whiff... ~ [OH98006] */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 293 // from: 290.2
  SAY #98007 /* ~Why not? Self-conscious about your scent? Embarrassed that it might do things to me? Don't worry. It's not having TOO much of an effect. Maybe lean in and let me get a better whiff…~ [OH98007] */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294 // from: 293.0 292.0 291.0
  SAY #98008 /* ~...Okay, enough smooching! We're lagging behind.~ [OH98008] */
  IF ~~ THEN EXIT
END

IF WEIGHT #32 ~  Global("NeeraLovetalks","GLOBAL",20)
~ THEN BEGIN 295 // from:
  SAY #98009 /* ~I feel really, really tired today. I hope I'm not getting ill.~ [OH98009] */
  IF ~~ THEN REPLY #98133 /* ~You should have said so earlier. Let's take a break.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
SetGlobal("NeeraRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 298
  IF ~~ THEN REPLY #98134 /* ~Anything I can do to help?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
SetGlobal("NeeraRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 298
  IF ~~ THEN REPLY #98135 /* ~You'll be fine. Let's keep moving.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
SetGlobal("NeeraRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 296
END

IF ~~ THEN BEGIN 296 // from: 295.2
  SAY #98010 /* ~You're right, it's probably nothing. But now that I have your attention, there's something I'd like to talk about.~ [OH98010] */
  IF ~~ THEN REPLY #98136 /* ~Go on.~ */ GOTO 301
  IF ~~ THEN REPLY #98137 /* ~Whatever it is can wait. We need to keep moving.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 297
END

IF ~~ THEN BEGIN 297 // from: 296.1
  SAY #98011 /* ~Fine, forget it. I had a question, and you just answered it.~ [OH98011] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 298 // from: 295.1 295.0
  SAY #98012 /* ~No, no. I'm just tired. I don't feel ill so much as... a little overwhelmed.~ [OH98012] */
  IF ~~ THEN REPLY #98138 /* ~Must be the constant danger and excitement.~ */ GOTO 300
  IF ~~ THEN REPLY #98139 /* ~What things do you mean?~ */ GOTO 301
  IF ~~ THEN REPLY #98140 /* ~Then let's keep moving.~ */ GOTO 299
END

IF ~~ THEN BEGIN 299 // from: 298.2
  SAY #98013 /* ~Yes. Let's. I had a question, but you just answered it.~ [OH98013] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 300 // from: 298.0
  SAY #98014 /* ~That? No! Old hat.~ [OH98014] */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0 298.1 296.0
  SAY #98015 /* ~I'm worried. About Telana and the others, about your—issues, about—~ [OH98015] */
  IF ~~ THEN REPLY #98141 /* ~Yes?~ */ GOTO 303
  IF ~~ THEN REPLY #98142 /* ~Us. You're worried about us.~ */ GOTO 303
  IF ~~ THEN REPLY #98143 /* ~Don't worry, then.~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.2
  SAY #98016 /* ~Oh yeah, when you put it that way, it's all so obvious. You think I LIKE being worried? Anyway, I'll make this short.~ [OH98016] */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from: 302.0 301.1 301.0
  SAY #98017 /* ~I'm worried about you and me. We're getting really close, and I've been having fun. WE'VE been having fun. You and me—we've had fun together. And soon, you know, we'll probably want to have even MORE fun. When that happens—if it happens—I'm not sure how much fun things will be after that.~ [OH98017] */
  IF ~~ THEN REPLY #98144 /* ~I think I follow you. What should we do?~ */ GOTO 306
  IF ~~ THEN REPLY #98145 /* ~Only one way to find out.~ */ GOTO 307
  IF ~~ THEN REPLY #98146 /* ~Don't be troubled, Neera. We won't be having that kind of fun.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 306.2 303.2
  SAY #98018 /* ~I guess this is your way of telling me we should cool off, huh? *sigh* All right.~ [OH98018] */
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #98019 /* ~Forget I said anything. A great weight has been lifted; off we go!~ [OH98019] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 306 // from: 303.0
  SAY #98020 /* ~I haven't a clue. I... tend to learn things best by experiencing them.~ [OH98020] */
  IF ~~ THEN REPLY #98147 /* ~I'm ready whenever you are.~ */ GOTO 309
  IF ~~ THEN REPLY #98148 /* ~Me too!~ */ GOTO 311
  IF ~~ THEN REPLY #98149 /* ~I don't think we should. Perhaps later, after all this is over. But not now.~ */ GOTO 304
END

IF ~~ THEN BEGIN 307 // from: 303.1
  SAY #98021 /* ~I guess so.~ */
  IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 308 // from: 310.0
  SAY #98022 /* ~Soon. One of these nights.~ [OH98022] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 309 // from: 306.0
  SAY #98023 /* ~You are? I'm... glad. Excited. ~ [OH98023] */
  IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 311.0 309.0 307.0
  SAY #98024 /* ~Not now, though. I wasn't lying about being tired, but…~ [OH98024] */
  IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 311 // from: 306.1
  SAY #98025 /* ~Ha ha! So suave.~ [OH98025] */
  IF ~~ THEN GOTO 310
END

IF WEIGHT #33 ~  Global("NeeraLovetalks","GLOBAL",22)
~ THEN BEGIN 312 // from:
  SAY #98063 /* ~Something on your mind, <CHARNAME>? You seem nervous, or anxious, or—well, maybe it's just me.~ */
  IF ~~ THEN REPLY #98198 /* ~I've been thinking about what you said earlier, Neera.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 315
  IF ~~ THEN REPLY #98199 /* ~No, nothing in particular. Did you want to say something, though?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 316
  IF ~~ THEN REPLY #98200 /* ~I think it's just you. Isn't it always?~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.2
  SAY #98064 /* ~What? What's that supposed to mean?~ */
  IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #98065 /* ~Forget it, then. Forget THIS.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 315 // from: 312.0
  SAY #98066 /* ~Oh? Me too. A lot. I find you kind of irresistible. KIND of.~ */
  IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 316 // from: 312.1
  SAY #98067 /* ~I suppose I do. What I brought up earlier—you, me, birds, bees—well, it's been on my mind. A lot. I find you kind of irresistible. KIND of.~ */
  IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 317 // from: 316.0 315.0
  SAY #98068 /* ~So I'm curious. How do you feel?~ */
  IF ~~ THEN REPLY #98201 /* ~I'm ready to take that next step.~ */ GOTO 320
  IF ~~ THEN REPLY #98202 /* ~I find you kind of irresistible too, and I feel like we should stop kind of resisting.~ */ GOTO 318
  IF ~~ THEN REPLY #98203 /* ~I think we really shouldn't do this. I care about you so much; it's just not in our best interest.~ */ GOTO 321
END

IF ~~ THEN BEGIN 318 // from: 321.1 320.0 317.1
  SAY #98069 /* ~I want this to happen, too. So much.~ */
  IF ~~ THEN REPLY #98204 /* ~Then I'll come to you the next time we rest.~ */ GOTO 319
  IF ~~ THEN REPLY #98205 /* ~Wait, Neera. Are you certain?~ */ GOTO 327
END

IF ~~ THEN BEGIN 319 // from: 327.0 318.0
  SAY #98070 /* ~Good. I'll wait up for you. I'm sure I'm blushing. I KNOW you are.~ */
  IF ~~ THEN GOTO 325
END

IF ~~ THEN BEGIN 320 // from: 317.0
  SAY #98071 /* ~Next step? I didn't know we were on a staircase—are we going up or down, I wonder? Anyway—~ */
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 321 // from: 327.1 317.2
  SAY #98072 /* ~What do you mean, "our" best interest? You say that like you have some claim to who I am, to what I want. It's not in your best interest? Fine, say so. Just don't include me.~ */
  IF ~~ THEN REPLY #98206 /* ~Neera, I'm sorry. I just want to do what's right. I didn't mean to say that I knew what was right for you.~ */ GOTO 322
  IF ~~ THEN REPLY #98207 /* ~All right, forget I said that. I do want this to happen.~ */ GOTO 318
  IF ~~ THEN REPLY #98208 /* ~You're not giving me any reason to regret what I just said. None at all.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 323
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #98073 /* ~I understand, and I'm sorry I was so short with you. This is just... awkward, you know? It's just so hard to figure things out with you, and I thought—well, I thought a little such-and-such might help. Plus, I really wanted to. No hard feelings?~ */
  IF ~~ THEN REPLY #98209 /* ~No, Neera. ~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",2)
~ GOTO 325
  IF ~~ THEN REPLY #98210 /* ~Well, none that I feel like I should mention at the moment.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",2)
~ GOTO 326
  IF ~~ THEN REPLY #98211 /* ~Listen, Neera. I think we should break this off.~ */ GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 322.2 321.2
  SAY #98074 /* ~Really? Then it's over between us. Don't worry, I won't cry. This conversation just makes me realize how different we really are, how impossible it would be for anything between us to—come to anything. ~ */
  IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #98075 /* ~But I'm not gonna be your groupie, "hero." Farewell.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 325 // from: 326.0 322.0 319.0
  SAY #98076 /* ~Let's get moving. If there's one thing I KNOW you're good for, it's awkward, distracting conversations.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 326 // from: 322.1
  SAY #98077 /* ~Ha ha! You rat. ~ */
  IF ~~ THEN GOTO 325
END

IF ~~ THEN BEGIN 327 // from: 318.1
  SAY #98078 /* ~Nothing's certain, is it? ~ */
  IF ~~ THEN REPLY #98212 /* ~True enough. I'll come to you next time we rest.~ */ GOTO 319
  IF ~~ THEN REPLY #98213 /* ~Actually, I'm rethinking this. Is it really in our best interest to do this right now?~ */ GOTO 321
END

IF WEIGHT #34 ~  Global("NeeraLovetalks","GLOBAL",24)
~ THEN BEGIN 328 // from:
  SAY #89278 /* ~So... I suppose we should talk about what happened last night. What we—uh, what you and I did.~ [OH89278] */
  IF ~~ THEN REPLY #89279 /* ~"What you and I did"?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 329
  IF ~~ THEN REPLY #89280 /* ~Yes, I think we should. What did it mean to you?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 331
  IF ~~ THEN REPLY #89281 /* ~My new favorite subject! I had a great time, did you?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 332
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #89282 /* ~Come on, do I really have to be explicit? It involved heavier breathing than normal.~ [OH89282] */
  IF ~~ THEN REPLY #89283 /* ~Oh right! Well, what did it mean to you?~ */ GOTO 331
  IF ~~ THEN REPLY #96080 /* ~Not ringing any bells, I'm afraid. What else did it involve?~ */ GOTO 330
  IF ~~ THEN REPLY #89284 /* ~My new favorite subject. I, for one, had a great time.~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 329.1
  SAY #96081 /* ~Ha ha. I'm trying to be serious here.~ [OH96081] */
  IF ~~ THEN REPLY #96082 /* ~I can be serious, if I must. What did it mean to you?~ */ GOTO 331
  IF ~~ THEN REPLY #96083 /* ~All right then, seriously: I had a great time.~ */ GOTO 332
END

IF ~~ THEN BEGIN 331 // from: 330.0 329.0 328.1
  SAY #89285 /* ~What did it "mean"? Well—I don't know. Does it have to "mean" something? Not that it didn't mean anything. It's just—I'm not sure.~ [OH89285] */
  IF ~~ THEN GOTO 333
END

IF ~~ THEN BEGIN 332 // from: 330.1 329.2 328.2
  SAY #89286 /* ~Good! Me too. But I think you already knew that.~ [OH89286] */
  IF ~~ THEN GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0 331.0
  SAY #89287 /* ~Had you done that—before?~ [OH89287] */
  IF ~~ THEN REPLY #89288 /* ~Yes. Not long after defeating Sarevok, before I was kidnapped.~ */ GOTO 334
  IF ~~ THEN REPLY #89289 /* ~Uh, yes! Of... of course!~ */ GOTO 335
  IF ~~ THEN REPLY #89290 /* ~No. I grew up in a library filled with monks, remember?~ */ GOTO 336
  IF ~~ THEN REPLY #89291 /* ~Of course. You couldn't tell?~ */ GOTO 337
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #89292 /* ~So, you had your Sword Coast dalliances as well. ~ [OH89292] */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 335 // from: 333.1
  SAY #89293 /* ~You say that SO convincingly. I'd say you were lying, but you didn't seem completely lost last night.~ [OH89293] */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 336 // from: 333.2
  SAY #89294 /* ~And I grew up in a forest filled with treants. But we've both been away from home for a while. People find ways.~ [OH89294] */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 337 // from: 333.3
  SAY #89295 /* ~I could. You certainly knew what you were about.~ [OH89295] */
  IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 337.0 336.0 335.0 334.0
  SAY #89296 /* ~I kind of already told you about Avrum, the man back in Baldur's Gate.~ [OH89296] */
  IF ~~ THEN REPLY #89297 /* ~So, he has a name, finally.~ */ GOTO 339
  IF ~~ THEN REPLY #89298 /* ~No, you didn't tell me that, not directly.~ */ GOTO 340
  IF ~~ THEN REPLY #89299 /* ~I'll not forget that name. I don't suppose you'll give me his last name, too? I'll have to pay him a visit when this is all over.~ */ GOTO 342
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #89300 /* ~Yes, Avrum. He was a scribe. Don't make that face! He was a tall, handsome scribe. Anyway—~ [OH89300] */
  IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 340 // from: 338.1
  SAY #89301 /* ~Ha, I guess you're right. I suppose I convinced myself I had, because I told you what happened next.~ [OH89301] */
  IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 341 // from: 342.0 340.0 339.0
  SAY #89302 /* ~It was the morning after we—uh, you know... that I decided to leave him.~ [OH89302] */
  IF ~~ THEN REPLY #89303 /* ~I see. Do you feel different about me, after last night?~ */ GOTO 345
  IF ~~ THEN REPLY #89304 /* ~He was no <CHARNAME>, I take it. Didn't measure up?~ */ GOTO 343
  IF ~~ THEN REPLY #89305 /* ~So now you pack your bags?~ */ GOTO 346
  IF ~~ THEN REPLY #89306 /* ~Don't even THINK about doing that to me, hear me?~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 338.2
  SAY #89307 /* ~Are you serious? Please stop. If you think some half-baked manly rage is going to impress me, think again. Anyway—~ [OH89307] */
  IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 343 // from: 341.1
  SAY #89308 /* ~Why do men ask questions they really don't want the answers to?~ [OH89308] */
  IF ~~ THEN REPLY #89309 /* ~The male ego can be a delicate and fragile creature. Do you feel different about me now, after last night?~ */ GOTO 345
  IF ~~ THEN REPLY #89310 /* ~So now you pack your bags?~ */ GOTO 346
  IF ~~ THEN REPLY #89311 /* ~Don't even THINK about treating me like you did him. You hear me?~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 343.2 341.3
  SAY #89312 /* ~Whoa! Really? Or what? Maybe Avrum isn't the one I should have left. Bye, <CHARNAME>. It was fun until you got—like THIS.~ [OH89312] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 345 // from: 343.0 341.0
  SAY #89313 /* ~I don't feel like leaving, if that's what you mean. Maybe I'm not the same person I was when I was with Avrum. Or maybe it's something about you. In any case, last night made me feel—I don't know, a little closer to you. It's scary. Kind of like getting a wild surge.~ [OH89313] */
  IF ~~ THEN REPLY #89314 /* ~What do you mean? ~ */ GOTO 348
  IF ~~ THEN REPLY #89315 /* ~I've gotten that before.~ */ GOTO 347
END

IF ~~ THEN BEGIN 346 // from: 343.1 341.2
  SAY #89316 /* ~Ha! No. I don't feel like leaving you. Maybe I'm not the same person I was when I left Avrum. Or maybe it's something about you. In any case, last night only made me feel—I don't know, a little closer to you. It's scary. Kind of like getting a wild surge.~ [OH89316] */
  IF ~~ THEN REPLY #89317 /* ~What do you mean? ~ */ GOTO 348
  IF ~~ THEN REPLY #89318 /* ~A wild surge, eh? I like the sound of that.~ */ GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.1 345.1
  SAY #89319 /* ~Ha ha. Nice try. But that's not what I meant.~ [OH89319] */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348 // from: 347.0 346.0 345.0
  SAY #89320 /* ~When I get a wild surge, I see into chaos. It's full of terror and ecstasy. Sometimes I don't know which is which. That uncertainty is something like what I feel now.~ [OH89320] */
  IF ~~ THEN REPLY #89321 /* ~Some people call it love.~ */ GOTO 349
  IF ~~ THEN REPLY #89322 /* ~I think I know what you mean.~ */ GOTO 350
  IF ~~ THEN REPLY #89323 /* ~Maybe that's all it is—fear, uncertainty.~ */ GOTO 352
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #89324 /* ~Do they? Is love the same for all people? I don't know. ~ [OH89324] */
  IF ~~ THEN GOTO 351
END

IF ~~ THEN BEGIN 350 // from: 348.1
  SAY #89325 /* ~How can you, when I'm me and you're you? I don't know. I hear people talk about love, and they all seem to know what they mean.~ [OH89325] */
  IF ~~ THEN GOTO 351
END

IF ~~ THEN BEGIN 351 // from: 352.0 350.0 349.0
  SAY #89326 /* ~I'm not sure I know anything about what most people call love. But—whatever it is I'm feeling right now, it feels pretty good.~ [OH89326] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 352 // from: 348.2
  SAY #89327 /* ~I think I'd know if it was fear. Everyone knows what fear is like; everyone's been afraid of something. It's funny. I hear people talk about love the same way, as though everyone knows what it means.~ [OH89327] */
  IF ~~ THEN GOTO 351
END

IF WEIGHT #35 ~  Global("NeeraLovetalks","GLOBAL",26)
~ THEN BEGIN 353 // from:
  SAY #89328 /* ~Something's been weighing on my mind since what happened at the Hidden Refuge.~ [OH89328] */
  IF ~~ THEN REPLY #89329 /* ~What's past is past, Neera.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 355
  IF ~~ THEN REPLY #89330 /* ~You feel guilty for what happened.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 354
  IF ~~ THEN REPLY #89331 /* ~Do you want to talk about it?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 356
END

IF ~~ THEN BEGIN 354 // from: 353.1
  SAY #89332 /* ~What, are you a mind flayer now? You just waltz into my brain and tell me what's what? Who do you think you are to just—say that?! But... Fine. You're right. Fortunately for you.~ [OH89332] */
  IF ~~ THEN GOTO 357
END

IF ~~ THEN BEGIN 355 // from: 353.0
  SAY #89333 /* ~"What's past is—?" You should write a book. "<CHARNAME>'s Memorable Sayings." It would sell zero copies because there'd be NOTHING inside. I— Listen, I'm sorry. It's just this is REALLY hard to talk about. And I need to talk about it, even if it's over.~ [OH89333] */
  IF ~~ THEN GOTO 357
END

IF ~~ THEN BEGIN 356 // from: 353.2
  SAY #89334 /* ~Well, yes, genius. I— Sorry. This is just REALLY hard to talk about.~ [OH89334] */
  IF ~~ THEN GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0 355.0 354.0
  SAY #89335 /* ~It all happened so fast. I wasn't even there. All that work, everything that I put into making the refuge happen—gone in a flash. You know, it was the first time I really felt—~ [OH89335] */
  IF ~~ THEN REPLY #89336 /* ~Useful?~ */ GOTO 358
  IF ~~ THEN REPLY #89337 /* ~In control?~ */ GOTO 359
  IF ~~ THEN REPLY #89338 /* ~Like yourself?~ */ GOTO 360
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #89339 /* ~Is that a joke? I know that you call me charming and everything, but if I weren't useful, I doubt I'd be traveling with the Bhaalspawn. No—~ [OH89339] */
  IF ~~ THEN GOTO 361
END

IF ~~ THEN BEGIN 359 // from: 357.1
  SAY #89340 /* ~Exactly!~ [OH89340] */
  IF ~~ THEN GOTO 361
END

IF ~~ THEN BEGIN 360 // from: 357.2
  SAY #89341 /* ~I generally feel like myself. Who else am I gonna feel like? Actually, it might have been just the opposite. Because I had it, for once.~ [OH89341] */
  IF ~~ THEN GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0 359.0 358.0
  SAY #89342 /* ~I had control. I was finally directing my powers toward a definite purpose, and they weren't betraying me for a change. I wanted the Hidden Refuge to be a place for wild mages, but I also wanted it to be exactly what wild magic isn't—safe, stable. And then along came the Red Wizards.~ [OH89342] */
  IF ~~ THEN REPLY #89343 /* ~That wasn't your fault.~ */ GOTO 362
  IF ~~ THEN REPLY #89344 /* ~Your plan backfired.~ */ GOTO 363
  IF ~~ THEN REPLY #89345 /* ~I think it's good you want to take responsibility for what occurred.~ */ GOTO 364
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #89346 /* ~No, it was the Wizards' fault, or Hayes, or a world Hells-bent on transforming whatever I try to do into a pile of steaming dung.~ [OH89346] */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 363 // from: 361.1
  SAY #89347 /* ~What plan did I even really have? Gather up all the wild mages—then what? It doesn't matter. The world doesn't care for plans. It especially hates mine. It's Hells-bent on turning whatever I attempt into a pile of steaming dung.~ [OH89347] */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 364 // from: 361.2
  SAY #89348 /* ~I DON'T want to take responsibility. Why does it have to be my fault? This gods-forsaken world is Hells-bent on turning whatever I do into a pile of steaming dung.~ [OH89348] */
  IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 365 // from: 364.0 363.0 362.0
  SAY #89349 /* ~It's fun when my magic does weird things. Heya, presto! You're a girl! You're a squirrel! You've got pink hair! But sometimes it seems like it's someone else's fun, not mine. I don't want any of that to happen. I just want things to go—the way I want them to go.~ [OH89349] */
  IF ~~ THEN REPLY #89350 /* ~But do you always know what you want?~ */ GOTO 368
  IF ~~ THEN REPLY #89351 /* ~I understand your frustration.~ */ GOTO 367
  IF ~~ THEN REPLY #89352 /* ~You should relax. Let the world decide for you.~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.2
  SAY #89353 /* ~Oh, sure. Then I wake up, the party's over, and everyone's dead. No, I definitely want something. I'm just not always sure what.~ [OH89353] */
  IF ~~ THEN GOTO 369
END

IF ~~ THEN BEGIN 367 // from: 365.1
  SAY #89354 /* ~No, you don't. You have a destiny. My only destiny is to make everything a little messier than it should be. I wish I knew what I even wanted from the future.~ [OH89354] */
  IF ~~ THEN GOTO 369
END

IF ~~ THEN BEGIN 368 // from: 365.0
  SAY #89355 /* ~...No. I don't. I hardly EVER know. How can anyone know what they want all the time?~ [OH89355] */
  IF ~~ THEN GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0 367.0 366.0
  SAY #89356 /* ~But I know what I want right now. I want you. I... guess that's important.~ [OH89356] */
  IF ~~ THEN EXIT
END

IF WEIGHT #36 ~  Global("NeeraLovetalks","GLOBAL",28)
~ THEN BEGIN 370 // from:
  SAY #98026 /* ~You look down, <CHARNAME>.~ [OH98026] */
  IF ~~ THEN REPLY #98150 /* ~Do I? I'm fine, really.~ */ GOTO 372
  IF ~~ THEN REPLY #98151 /* ~The challenges I face just keep getting more difficult, it seems. It's wearing me out.~ */ GOTO 373
  IF ~~ THEN REPLY #98152 /* ~Sadness is a weakness I don't indulge.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.2
  SAY #98027 /* ~But being insufferably proud of yourself is a weakness you frequently indulge. I won't bother you, then.~ [OH98027] */
  IF ~~ THEN REPLY #98153 /* ~Go ahead. What were you going to say?~ */ GOTO 374
  IF ~~ THEN REPLY #98154 /* ~Good. Let's get moving.~ */ EXIT
END

IF ~~ THEN BEGIN 372 // from: 370.0
  SAY #98028 /* ~I don't believe you. Your quest isn't getting any easier.~ [OH98028] */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 373 // from: 370.1
  SAY #98029 /* ~You look a little haggard. Cute! But haggard.~ [OH98029] */
  IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 373.0 372.0 371.0
  SAY #98030 /* ~I can tell you a little story if you want. Something to lift your spirits a bit.~ [OH98030] */
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY #98155 /* ~A story? A story?! That's my territory. I'm the bard, remember?~ */ GOTO 375
  IF ~~ THEN REPLY #98156 /* ~You're welcome to try.~ */ GOTO 378
  IF ~~ THEN REPLY #98157 /* ~I'm trying really hard to hide my skepticism.~ */ GOTO 378
  IF ~~ THEN REPLY #98158 /* ~We don't have time for stories right now, Neera.~ */ GOTO 376
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #98031 /* ~Did you mean for that to rhyme? You're so clever. The offer still stands, though. I might surprise you.~ [OH98031] */
  IF ~~ THEN REPLY #98159 /* ~Anything's possible.~ */ GOTO 378
  IF ~~ THEN REPLY #98160 /* ~Sure... I'm trying really hard to hide my skepticism.~ */ GOTO 378
  IF ~~ THEN REPLY #98161 /* ~I don't think we have time for stories right now.~ */ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.2 374.3
  SAY #98032 /* ~It doesn't have to be right this second. Are you sure?~ [OH98032] */
  IF ~~ THEN REPLY #98162 /* ~You'll tell me later? Fine.~ */ GOTO 378
  IF ~~ THEN REPLY #98163 /* ~I'm positive.~ */ GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 380.2 376.1
  SAY #98033 /* ~All right. I guess we'll just—walk on in silence, then.~ [OH98033] */
  IF ~~ THEN DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 378 // from: 376.0 375.1 375.0 374.2 374.1
  SAY #98034 /* ~Great. I have to look over my notes. I'll get back to you in a bit—tomorrow, maybe.~ [OH98034] */
  IF ~~ THEN REPLY #98164 /* ~Notes?!~ */ GOTO 379
  IF ~~ THEN REPLY #98165 /* ~Very well. I'll do my best to get by until you're ready.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 379 // from: 378.0
  SAY #98035 /* ~Of course! Don't worry. It's not that long. Really.~ [OH98035] */
  IF ~~ THEN REPLY #98166 /* ~Very well. I'll do my best to get by until you're ready.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ EXIT
END

IF WEIGHT #37 ~  Global("NeeraLovetalks","GLOBAL",30)
~ THEN BEGIN 380 // from:
  SAY #98036 /* ~Are you ready for your uplifting story?~ [OH98036] */
  IF ~~ THEN REPLY #98167 /* ~Yes.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 381
  IF ~~ THEN REPLY #98168 /* ~Not quite yet. Why don't you wait until tomorrow?~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",-1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",ONE_DAY)
~ EXIT
  IF ~~ THEN REPLY #98169 /* ~Actually, I've reconsidered. I'd rather not hear this story of yours.~ */ DO ~IncrementGlobal("NeeraLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 377
END

IF ~~ THEN BEGIN 381 // from: 380.0
  SAY #98037 /* ~All right. Once upon a time, there was a mysterious, handsome orphan. He traveled all around the countryside, caring for those who needed care, killing those who needed killing, and helping many people find objects that would've otherwise been lost forever.~ [OH98037] */
  IF ~~ THEN REPLY #98170 /* ~This orphan doesn't sound very mysterious. But keep going.~ */ GOTO 384
  IF ~~ THEN REPLY #98171 /* ~Go on.~ */ GOTO 384
  IF ~~ THEN REPLY #98172 /* ~Enough.~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 385.2 384.2 381.2
  SAY #98038 /* ~I've hardly started! Are you sure?~ [OH98038] */
  IF ~~ THEN REPLY #98173 /* ~Fine, tell me the whole story.~ */ GOTO 384
  IF ~~ THEN REPLY #98174 /* ~Yes, I'm sure.~ */ GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.1
  SAY #98039 /* ~Let's get moving, then.~ [OH98039] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 384 // from: 382.0 381.1 381.0
  SAY #98040 /* ~During his travels, he met a beautiful half-elven lady who captivated him with her quick wit and general usefulness. He also met a cast of secondary characters I won't bore you with.~ [OH98040] */
  IF ~~ THEN REPLY #98175 /* ~It's good that the others are out of earshot. Keep going.~ */ GOTO 385
  IF ~~ THEN REPLY #98176 /* ~Go on.~ */ GOTO 385
  IF ~~ THEN REPLY #98177 /* ~I've heard enough.~ */ GOTO 382
END

IF ~~ THEN BEGIN 385 // from: 384.1 384.0
  SAY #98041 /* ~He did a lot of killing. Kobolds, xvarts, ogres, wyverns. You name it, he's killed it. Then he was kidnapped. He escaped by killing a lot more things, and made money to save his sister killing even MORE things. Oh! He also killed his half-brother and his friends—but he had to; they were trying to kill him. That happened before the kidnapping, by the way.~ [OH98041] */
  IF ~~ THEN REPLY #98178 /* ~Is the uplifting part next?~ */ GOTO 386
  IF ~~ THEN REPLY #98176 /* ~Go on.~ */ GOTO 386
  IF ~~ THEN REPLY #98179 /* ~I've heard enough.~ */ GOTO 382
END

IF ~~ THEN BEGIN 386 // from: 385.1 385.0
  SAY #98042 /* ~Through it all, he was always himself. Some worried he would become a slave to the divine essence of the dead god within him, the god of... well, killing things. But his, uh, actions… and, uh, decisions... proved that... ~ [OH98042] */
  IF ~~ THEN GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #98043 /* ~Oh, Hells. I didn't think through the ending very well.~ [OH98043] */
  IF ~~ THEN REPLY #98180 /* ~I appreciate the effort, Neera.~ */ GOTO 390
  IF ~~ THEN REPLY #98181 /* ~Perhaps you should stick to wild surges.~ */ GOTO 389
  IF ~~ THEN REPLY #98182 /* ~I thought the ending was... quite appropriate.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.2
  SAY #98044 /* ~You did? THAT can't be good.~ [OH98044] */
  IF ~~ THEN GOTO 391
END

IF ~~ THEN BEGIN 389 // from: 387.1
  SAY #98045 /* ~I don't usually take unsolicited advice, but I might make an exception, just this once.~ [OH98045] */
  IF ~~ THEN GOTO 390
END

IF ~~ THEN BEGIN 390 // from: 389.0 387.0
  SAY #98046 /* ~I just made things like a million times worse, didn't I?~ [OH98046] */
  IF ~~ THEN REPLY #98183 /* ~No—an honest story can't ever make things worse than they really are.~ */ GOTO 392
  IF ~~ THEN REPLY #98184 /* ~Don't worry yourself about it.~ */ GOTO 391
END

IF ~~ THEN BEGIN 391 // from: 392.0 390.1 388.0
  SAY #98047 /* ~We should be on our way. If the whole wild mage thing doesn't work out, I'll make it a point not to pursue the calling of inspirational bard.~ [OH98047] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 392 // from: 390.0
  SAY #98048 /* ~Hmm. Perhaps you're right.~ [OH98048] */
  IF ~~ THEN GOTO 391
END

IF WEIGHT #38 ~  Global("OHN_phaere","GLOBAL",1)
~ THEN BEGIN 393 // from:
  SAY #96087 /* ~Just so we're clear—I don't care what you did in there.~ [OH96087] */
  IF ~~ THEN REPLY #96088 /* ~But I didn't do—~ */ DO ~SetGlobal("OHN_phaere","GLOBAL",2)
~ GOTO 394
  IF ~~ THEN REPLY #96089 /* ~You don't? Why not?~ */ DO ~SetGlobal("OHN_phaere","GLOBAL",2)
~ GOTO 395
  IF ~~ THEN REPLY #96090 /* ~Good, because I—~ */ DO ~SetGlobal("OHN_phaere","GLOBAL",2)
~ GOTO 394
END

IF ~~ THEN BEGIN 394 // from: 393.2 393.0
  SAY #96091 /* ~Don't care! Don't want to hear another word about it.~ [OH96091] */
  IF ~~ THEN GOTO 395
END

IF ~~ THEN BEGIN 395 // from: 394.0 393.1
  SAY #96092 /* ~If I thought you were falling madly in love with the drow woman, it might be different. But until we—decide something else, we're free. Kind of free.~ [OH96092] */
  IF ~~ THEN REPLY #96093 /* ~I understand, but I didn't—~ */ GOTO 397
  IF ~~ THEN REPLY #96094 /* ~Kind of free? Can you clarify?~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.1
  SAY #96095 /* ~Nope. Let's get moving.~ [OH96095] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 397 // from: 395.0
  SAY #96096 /* ~LIKE I SAID, I don't want to know. Let's get moving.~ [OH96096] */
  IF ~~ THEN EXIT
END

IF WEIGHT #39 ~  Global("OHN_jaheiraconflict","GLOBAL",2)
~ THEN BEGIN 398 // from:
  SAY #89369 /* ~I take it Jaheira's having a hard time with Khalid's death?~ [OH89369] */
  IF ~~ THEN REPLY #89370 /* ~Yes. I've been trying to help her through it.~ */ DO ~SetGlobal("OHN_jaheiraconflict","GLOBAL",3)
~ GOTO 399
  IF ~~ THEN REPLY #89371 /* ~Uh... yes. Yes, she is.~ */ DO ~SetGlobal("OHN_jaheiraconflict","GLOBAL",3)
~ GOTO 399
  IF ~~ THEN REPLY #89372 /* ~Oh, I'd say she's learning to cope with it.~ */ DO ~SetGlobal("OHN_jaheiraconflict","GLOBAL",3)
~ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 398.2 398.1 398.0
  SAY #89373 /* ~Indeed. She seems to depend on you quite a bit these days.~ [OH89373] */
  IF ~~ THEN REPLY #89374 /* ~Why do you mention it?~ */ GOTO 400
  IF ~~ THEN REPLY #89375 /* ~Jaheira's strong. It isn't fair to say she depends on anyone.~ */ GOTO 403
  IF ~~ THEN REPLY #89376 /* ~Wouldn't you?~ */ GOTO 404
END

IF ~~ THEN BEGIN 400 // from: 404.0 403.0 399.0
  SAY #89377 /* ~Okay, let me be blunt. Jaheira really likes you. I do too. If you're not sure how you feel about her, or about me, that's fine—really! But I'm not going to wait around for you to decide. I just want to know, you know? If you like her, no hard feelings. I'll still follow you around and make cows fall from the sky.~ [OH89377] */
  IF ~~ THEN REPLY #89378 /* ~Jaheira is important to me, but she is just a friend. I like you.~ */ GOTO 401
  IF ~~ THEN REPLY #89379 /* ~I see. Well, the truth is, I think I'm falling in love with Jaheira.~ */ GOTO 405
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #89380 /* ~Really? That's—that's really interesting. Kiss?~ [OH89380] */
  IF ~~ THEN REPLY #89381 /* ~Gladly.~ */ GOTO 402
END

IF ~~ THEN BEGIN 402 // from: 401.0
  SAY #89382 /* ~You should probably make this clear to Jaheira, too.~ [OH89382] */
  IF ~~ THEN REPLY #89383 /* ~You're right. She and I will discuss it in private. Let's get moving.~ */ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 403 // from: 399.1
  SAY #89384 /* ~You just say all the right things, don't you? I don't blame her for wanting to spend time with you.~ [OH89384] */
  IF ~~ THEN GOTO 400
END

IF ~~ THEN BEGIN 404 // from: 399.2
  SAY #89385 /* ~Given the caring sensitivity of that last statement... No.~ [OH89385] */
  IF ~~ THEN GOTO 400
END

IF ~~ THEN BEGIN 405 // from: 400.1
  SAY #89386 /* ~I see. Thanks for being honest. I wish I could say I don't get what you see in her, but I do. Jaheira's great. In the meantime, I guess I'm a free lady! It's kind of a relief, really. Should we get moving?~ [OH89386] */
  IF ~~ THEN REPLY #89387 /* ~Yes. On we go.~ */ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #40 ~  Global("OHN_viconiaconflict","GLOBAL",2)
~ THEN BEGIN 406 // from:
  SAY #89388 /* ~So you and Viconia are getting a little cozy.~ [OH89388] */
  IF ~~ THEN REPLY #89389 /* ~What do you mean?~ */ DO ~SetGlobal("OHN_viconiaconflict","GLOBAL",3)
~ GOTO 408
  IF ~~ THEN REPLY #89390 /* ~Cozy? The word doesn't even belong in the same sentence as "Viconia."~ */ DO ~SetGlobal("OHN_viconiaconflict","GLOBAL",3)
~ GOTO 408
  IF ~~ THEN REPLY #89391 /* ~I'm aiming for more than a little cozy.~ */ DO ~SetGlobal("OHN_viconiaconflict","GLOBAL",3)
~ GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.2
  SAY #89392 /* ~Well, you've already passed more than a little sleazy. I was going to say—oh, never mind. You're not worth it. Be as cozy and sleazy as you want.~ [OH89392] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 408 // from: 406.1 406.0
  SAY #89393 /* ~I'm just saying you seem to be getting close. You're free to do what you want, obviously. But you should know I won't wait around while you two play cat-and-mouse with each other's hearts or—parts. If you like her, that's fine. I won't be hurt. I just need to know.~ [OH89393] */
  IF ~~ THEN REPLY #89394 /* ~Choose Viconia over you? Never.~ */ GOTO 409
  IF ~~ THEN REPLY #89395 /* ~Very well. I'm interested in Viconia. I guess you and I aren't meant to be—at least not for the moment.~ */ GOTO 411
END

IF ~~ THEN BEGIN 409 // from: 408.0
  SAY #89396 /* ~Well, that's good to know. Really good to know! Now you need to make sure she knows it, too.~ [OH89396] */
  IF ~~ THEN REPLY #89397 /* ~Don't worry, Neera. She and I will discuss it in private.~ */ GOTO 410
END

IF ~~ THEN BEGIN 410 // from: 409.0
  SAY #89398 /* ~Fine, as long as things don't get TOO private. Let's go!~ [OH89398] */
  IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 411 // from: 408.1
  SAY #89399 /* ~Thanks for being straight with me. But... be careful. Viconia doesn't mind breaking hearts. I'm not saying I wouldn't have broken yours, but I wouldn't do it for fun. But hey, I guess this means I'm a free lady. That's kind of a relief. Let's move!~ [OH89399] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #41 ~  Global("OHN_aerieconflict","GLOBAL",2)
~ THEN BEGIN 412 // from:
  SAY #89400 /* ~Someone in our group has a little crush on you, <CHARNAME>!~ [OH89400] */
  IF ~~ THEN REPLY #89401 /* ~Is it you?~ */ DO ~SetGlobal("OHN_aerieconflict","GLOBAL",3)
~ GOTO 413
  IF ~~ THEN REPLY #89402 /* ~Get out. Who?~ */ DO ~SetGlobal("OHN_aerieconflict","GLOBAL",3)
~ GOTO 414
  IF ~~ THEN REPLY #89403 /* ~More than one person. I know at least three.~ */ DO ~SetGlobal("OHN_aerieconflict","GLOBAL",3)
~ GOTO 415
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #89404 /* ~Um... well, that's not who I was talking about.~ [OH89404] */
  IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 415.0 413.0 412.1
  SAY #89405 /* ~Aerie is quite taken with you. ~ [OH89405] */
  IF ~~ THEN REPLY #89406 /* ~She's had a hard time adjusting—first to being wingless, then to leaving the circus. I'm here for her.~ */ GOTO 416
  IF ~~ THEN REPLY #89407 /* ~You think so?~ */ GOTO 417
  IF ~~ THEN REPLY #89408 /* ~That makes two of you. What of it?~ */ GOTO 418
END

IF ~~ THEN BEGIN 415 // from: 412.2
  SAY #89409 /* ~Keep that up and you'll soon have one less.~ [OH89409] */
  IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 416 // from: 414.0
  SAY #89410 /* ~I think she wants you for more than talking. ~ [OH89410] */
  IF ~~ THEN GOTO 419
END

IF ~~ THEN BEGIN 417 // from: 414.1
  SAY #89411 /* ~I'm pretty sure she's smitten.~ [OH89411] */
  IF ~~ THEN GOTO 419
END

IF ~~ THEN BEGIN 418 // from: 414.2
  SAY #89412 /* ~You know what? Forget it. I hope Aerie knows what she's getting into. I'm ready to move on, literally AND figuratively.~ [OH89412] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 419 // from: 417.0 416.0
  SAY #89413 /* ~Look, the last thing I want is to get between you two if you feel something for her. But if you feel something for me, the sooner she knows, the better. Aerie's... delicate.~ [OH89413] */
  IF ~~ THEN REPLY #89414 /* ~I'll talk to her privately, let her know how I feel for you.~ */ GOTO 420
  IF ~~ THEN REPLY #89415 /* ~I do have feelings for Aerie.~ */ GOTO 421
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #89416 /* ~Be gentle, <CHARNAME>. You will, won't you? Seal the deal with a kiss... There! Get going.~ [OH89416] */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #89417 /* ~You know what? I'm glad. It was hard to think about her heart getting broken. My heart—well, I'll survive. In the meantime, I guess I'm a free woman. Kind of a relief. Should we get moving?~ [OH89417] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #42 ~  Global("OHN_dornconflict","GLOBAL",2)
~ THEN BEGIN 422 // from:
  SAY #89430 /* ~Dorn really seems to admire you, in his own twisted and thoroughly disturbed way.~ [OH89430] */
  IF ~~ THEN REPLY #89431 /* ~Yes. I noticed that too.~ */ DO ~SetGlobal("OHN_dornconflict","GLOBAL",3)
~ GOTO 423
  IF ~~ THEN REPLY #89432 /* ~And I notice that you do not mind your own business.~ */ DO ~SetGlobal("OHN_dornconflict","GLOBAL",3)
~ GOTO 424
  IF ~~ THEN REPLY #89433 /* ~Admire me? Of course he does.~ */ DO ~SetGlobal("OHN_dornconflict","GLOBAL",3)
~ GOTO 425
END

IF ~~ THEN BEGIN 423 // from: 422.0
  SAY #89434 /* ~Do you feel the same way about him?~ [OH89434] */
  IF ~~ THEN GOTO 426
END

IF ~~ THEN BEGIN 424 // from: 422.1
  SAY #89435 /* ~Well, let's say that, at this point, I kind of consider it my business.~ [OH89435] */
  IF ~~ THEN GOTO 426
END

IF ~~ THEN BEGIN 425 // from: 422.2
  SAY #89436 /* ~And I'm reminded once again how much you two have in common.~ [OH89436] */
  IF ~~ THEN GOTO 426
END

IF ~~ THEN BEGIN 426 // from: 425.0 424.0 423.0
  SAY #89437 /* ~If you want him, I say go for it. But if you've feelings for me, you need to tell him. I do NOT want to fight him for your attention.~ [OH89437] */
  IF ~~ THEN REPLY #89438 /* ~I'll tell him how I feel about you. Wish me luck. This will be a... difficult conversation.~ */ GOTO 427
  IF ~~ THEN REPLY #89439 /* ~Then you should know that I want him.~ */ GOTO 428
END

IF ~~ THEN BEGIN 427 // from: 426.0
  SAY #89440 /* ~Tymora be with you, then. If things get ugly, I'm right here. And... thank you, <CHARNAME>.~ [OH89440] */
  IF ~~ THEN REPLY #89441 /* ~You're welcome. I hope you see me again in one piece.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 428 // from: 426.1
  SAY #89442 /* ~Well, I'd say he's a good guy, but I'd obviously be lying. Watch yourself and your heart, <CHARNAME>. I'm not saying I wouldn't have broken it myself, but I wouldn't have done it on purpose, and I certainly wouldn't tear it from your chest and eat it afterward. But hey! I'm a free woman now! That's kind of nice. Let's move.~ [OH89442] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 429 // from:
  SAY #98401 /* ~A new Neera? Better than being an old and decrepit Neera, I suppose. But what do you mean about lessons unlearned?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 430 // from:
  SAY #98417 /* ~I'm a half-that most vile of races.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 22
END

IF ~~ THEN BEGIN 431 // from:
  SAY #98418 /* ~Well, you'd certainly know.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 23
END

IF ~~ THEN BEGIN 432 // from:
  SAY #98419 /* ~I'll do that, because I suspect it's the only way to get thee gone from my hearing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 433 // from:
  SAY #98423 /* ~I really hope you're talking about... anything other than me.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 36
END

IF ~~ THEN BEGIN 434 // from:
  SAY #98424 /* ~My hair entrances you?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 37
END

IF ~~ THEN BEGIN 435 // from:
  SAY #98425 /* ~I guess there are worse things to have scuzzy guys staring at. But keep your hands to yourself, pal!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 436 // from:
  SAY #98427 /* ~Okayyyy... Thanks for deeply creeping me out? I guess?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 437 // from:
  SAY #98434 /* ~So what, you want us to thank you, is that it?~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
END

IF ~~ THEN BEGIN 438 // from:
  SAY #98435 /* ~Oh, dung nuggets! What is this now?~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~IMOEN2J~ 10
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~AERIEJ~ 131
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ FLAGS 128 EXTERN ~EDWINJ~ 95
  IF ~  Global("OHR_rinthell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rinthell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 313
  IF ~  Global("OHD_dinthell","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dinthell","GLOBAL",1)
~ EXTERN ~DORNJ~ 17
  IF ~  Global("OHH_hinthell","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hinthell","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 270
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 439 // from:
  SAY #98436 /* ~Enough with the blah blah blah. Let's SEE already.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 314
  IF ~  Global("OHD_dintirenicushell","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell","GLOBAL",1)
~ EXTERN ~DORNJ~ 18
  IF ~  Global("OHH_hintirenicushell","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hintirenicushell","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 271
END

IF ~~ THEN BEGIN 440 // from:
  SAY #98436 /* ~Enough with the blah blah blah. Let's SEE already.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell2","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell2","GLOBAL",1)
~ EXTERN ~RASAADJ~ 315
  IF ~  Global("OHD_dintirenicushell2","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell2","GLOBAL",1)
~ EXTERN ~DORNJ~ 19
  IF ~  Global("OHH_hintirenicushell2","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hintirenicushell2","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 272
END

IF ~~ THEN BEGIN 441 // from:
  SAY #98436 /* ~Enough with the blah blah blah. Let's SEE already.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell3","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell3","GLOBAL",1)
~ EXTERN ~RASAADJ~ 316
  IF ~  Global("OHD_dintirenicushell3","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell3","GLOBAL",1)
~ EXTERN ~DORNJ~ 20
  IF ~  Global("OHH_hintirenicushell3","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hintirenicushell3","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 273
END

IF ~~ THEN BEGIN 442 // from:
  SAY #98436 /* ~Enough with the blah blah blah. Let's SEE already.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,MALE)
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,FEMALE)
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell4","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell4","GLOBAL",1)
~ EXTERN ~RASAADJ~ 317
  IF ~  Global("OHD_dintirenicushell4","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell4","GLOBAL",1)
~ EXTERN ~DORNJ~ 21
  IF ~  Global("OHH_hintirenicushell4","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hintirenicushell4","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 274
END

IF ~~ THEN BEGIN 443 // from:
  SAY #98447 /* ~You're wrong about that, <CHARNAME>. I need to do this, and I'm going to do it.~ */
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
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
!Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 60
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 61
END

IF ~~ THEN BEGIN 444 // from:
  SAY #98448 /* ~Well, it's a little late to tell me not to get involved in fights that aren't mine NOW, <CHARNAME>. Where were you, like, a year ago?~ */
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
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
!Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 60
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 61
END

IF ~~ THEN BEGIN 445 // from:
  SAY #98449 /* ~Oh no. I don't want this, not at all. Not even a teensy, tiny bit.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #98450 /* ~But I'm going to do it all the same.~ */
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
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
!Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 60
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 61
END

IF ~~ THEN BEGIN 447 // from:
  SAY #98438 /* ~At a loss for words, <CHARNAME>? That isn't like you.~ */
  IF ~~ THEN GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #98439 /* ~But I'm glad. I've something I want to say to you.~ */
  IF ~~ THEN GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #98440 /* ~We both know what's coming next. We both know one of us might not make it out alive.~ */
  IF ~~ THEN GOTO 450
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #98441 /* ~I want— I need you to know that, if it comes to that... I hope you're the one who doesn't make it.~ */
  IF ~~ THEN GOTO 451
END

IF ~~ THEN BEGIN 451 // from: 450.0
  SAY #98442 /* ~Joking! I'm joking!~ */
  IF ~~ THEN GOTO 452
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #98443 /* ~Look, let's just—let's just do this all right? Together. With no regrets.~ */
  IF ~~ THEN GOTO 453
END

IF ~~ THEN BEGIN 453 // from: 452.0
  SAY #98444 /* ~Let's get your soul back, and then we'll go from there. Okay?~ */
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
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
!Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 60
  IF ~  InParty("hexxat")
IsValidForPartyDialogue("hexxat")
InMyArea("hexxat")
Global("hexxatRomanceActive","GLOBAL",2)
Global("OHH_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 61
END

IF ~~ THEN BEGIN 454 // from:
  SAY #98451 /* ~Well, that's that.~ */
  IF ~~ THEN GOTO 455
END

IF ~~ THEN BEGIN 455 // from: 454.0
  SAY #98452 /* ~That IS that, isn't it?~ */
  IF ~~ THEN GOTO 456
END

IF ~~ THEN BEGIN 456 // from: 455.0
  SAY #98453 /* ~<CHARNAME>?~ */
  IF ~~ THEN GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #98454 /* ~Please tell me that that is that.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 458 // from:
  SAY #98455 /* ~<CHARNAME>, what's—are you okay?~ */
  IF ~~ THEN REPLY #98474 /* ~I'm fine.~ */ GOTO 459
  IF ~~ THEN REPLY #98475 /* ~Great. For a second, I felt like I wasn't in control. It was liberating.~ */ GOTO 460
  IF ~~ THEN REPLY #98476 /* ~For a moment, I felt strange—like I wasn't in control.~ */ GOTO 460
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #98456 /* ~Are you sure? You didn't LOOK fine. Are you sure the ritual didn't affect you more than you're letting on?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 460 // from: 458.2 458.1
  SAY #98457 /* ~Oh, great. THAT's reassuring.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 461 // from:
  SAY #98458 /* ~<CHARNAME>? Are you... you?~ */
  IF ~~ THEN GOTO 462
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #98459 /* ~Yes? Good, good. Glad to hear it.~ */
  IF ~~ THEN GOTO 463
END

IF ~~ THEN BEGIN 463 // from: 462.0
  SAY #98460 /* ~Now WHAT IN THE NINE HELLS WAS THAT THING YOU JUST TURNED INTO?~ */
  IF ~~ THEN GOTO 464
END

IF ~~ THEN BEGIN 464 // from: 463.0
  SAY #98461 /* ~You know what, I don't think I want to know. No, I definitely do not want to know.~ */
  IF ~~ THEN GOTO 465
END

IF ~~ THEN BEGIN 465 // from: 464.0
  SAY #98462 /* ~Just don't do it again, please.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 466 // from:
  SAY #98463 /* ~Oh, thank the gods, you're awake. I was getting worried.~ */
  IF ~~ THEN GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #98464 /* ~Er.~ */
  IF ~~ THEN GOTO 468
END

IF ~~ THEN BEGIN 468 // from: 467.0
  SAY #98465 /* ~I was getting worried-er.~ */
  IF ~~ THEN REPLY #98477 /* ~Get away from me, Neera, quickly! It's happening again!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",91)
~ GOTO 469
  IF ~~ THEN REPLY #98478 /* ~Not worried-er enough. Move, get away from me, NOW! Something's happening!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",91)
~ GOTO 469
  IF ~~ THEN REPLY #98479 /* ~I'm transforming again; I can feel it. If you value your life, get away from me!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",91)
~ GOTO 469
END

IF ~~ THEN BEGIN 469 // from: 468.2 468.1 468.0
  SAY #98466 /* ~What's that? Your lips are moving, but you aren't saying anything... Speak up!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 470 // from:
  SAY #98467 /* ~Wow, <CHARNAME>. You've really got ISSUES, don't you?~ */
  IF ~~ THEN REPLY #98480 /* ~To put it mildly. This is going to happen again, Neera. I can't control it. ~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 472
  IF ~~ THEN REPLY #98481 /* ~I tried to warn you.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 471
  IF ~~ THEN REPLY #98482 /* ~You think this is a joke?~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 473
END

IF ~~ THEN BEGIN 471 // from: 470.1
  SAY #98468 /* ~Next time, try HARDER.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 472 // from: 470.0
  SAY #98469 /* ~Yeah, I kinda noticed. We'll have to do something about it eventually. For now, we've got other things to worry about.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 473 // from: 470.2
  SAY #98470 /* ~No. No, no, no, no, no, no. Jokes are funny. This is the exact opposite of funny. But it's also something to worry about another time. Come on, we've got to get moving.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 474 // from:
  SAY #98402 /* ~Cowled Wizards are nearly as bad as Red ones, <CHARNAME>. You can't go along with this.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 71
  IF ~  IsValidForPartyDialogue("neera")
~ THEN GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.1
  SAY #98403 /* ~You're seriously considering this? I tell you they can't be trusted!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 71
END

IF ~~ THEN BEGIN 476 // from:
  SAY #98404 /* ~I know what it's like to have wizards wanting to claim your body for their own. We've got to stop the Cowled Wizards from doing anything to Valygar.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 2
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 110
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 128
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 101
END

IF ~~ THEN BEGIN 477 // from:
  SAY #98405 /* ~You can't do this, <CHARNAME>. It's not right. It's—it's WRONG.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
ReactionGT(Player1,13)
~ THEN JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ FLAGS 128 EXTERN ~KELDORJ~ 111
  IF ~  IsValidForPartyDialogue("Keldorn")
ReactionLT(Player1,NEUTRAL_UPPER)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~KELDORJ~ 112
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~ANOMENJ~ 185
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
ReactionGT(Player1,13)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~MAZZYJ~ 129
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
ReactionLT(Player1,NEUTRAL_UPPER)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~MAZZYJ~ 130
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
ReactionGT(Player1,13)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~MINSCJ~ 102
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
ReactionLT(Player1,NEUTRAL_UPPER)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~MINSCJ~ 103
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionGT(Player1,10)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~AERIEJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionLT(Player1,11)
~ THEN UNSOLVED_JOURNAL #16343 /* ~The hunt for Valygar Corthala

I have discovered Valygar Corthala, a ranger hiding in his cabin in the Umar Hills from the Cowled Wizards. No doubt I shall be rewarded should I bring his body to them in Athkatla.~ */ EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 478 // from:
  SAY #98410 /* ~Are you calling me Pinky?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 27
END

IF ~~ THEN BEGIN 479 // from:
  SAY #98411 /* ~Give me 500 gold pieces and I'll forget you called me Pinky.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 28
END

IF ~~ THEN BEGIN 480 // from:
  SAY #98412 /* ~You really like my hair?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 29
END

IF ~~ THEN BEGIN 481 // from:
  SAY #98413 /* ~I say thanks for the compliment. Good <DAYNIGHTALL>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 482 // from:
  SAY #98484 /* ~I've got a lot of things I'd like to refer you as. "Sir" isn't one of them.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 74
END

IF ~~ THEN BEGIN 483 // from:
  SAY #98485 /* ~What's going on here, <CHARNAME>? You can't be working with this, this—THIS.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 75
END

IF ~~ THEN BEGIN 484 // from:
  SAY #98486 /* ~Don't worry, it won't last long—~ */
  IF ~~ THEN EXTERN ~EDWIN~ 76
END

IF ~~ THEN BEGIN 485 // from:
  SAY #98487 /* ~...~ */
  IF ~~ THEN GOTO 486
END

IF ~~ THEN BEGIN 486 // from: 485.0
  SAY #98488 /* ~FINE.~ */
  IF ~~ THEN GOTO 487
END

IF ~~ THEN BEGIN 487 // from: 486.0
  SAY #98489 /* ~We'll sort this out when this other stuff is sorted out.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 77
END

IF ~~ THEN BEGIN 488 // from:
  SAY #98490 /* ~Look, <CHARNAME>, I've no love for the Cowled Wizards, but this—this isn't right.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #34211 /* ~Find proof of Mae'Var's treachery

Mae'Var's assistant has turned out to be none other than the Thayan wizard I met on the Sword Coast. He has set me a task to kill one Rayic Gethras, a Cowled Wizard who lives in a three-story gray building on the west end of the Docks District. I will know that Gethras is home if his door is open.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #34211 /* ~Find proof of Mae'Var's treachery

Mae'Var's assistant has turned out to be none other than the Thayan wizard I met on the Sword Coast. He has set me a task to kill one Rayic Gethras, a Cowled Wizard who lives in a three-story gray building on the west end of the Docks District. I will know that Gethras is home if his door is open.~ */ EXTERN ~VALYGARJ~ 57
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #34211 /* ~Find proof of Mae'Var's treachery

Mae'Var's assistant has turned out to be none other than the Thayan wizard I met on the Sword Coast. He has set me a task to kill one Rayic Gethras, a Cowled Wizard who lives in a three-story gray building on the west end of the Docks District. I will know that Gethras is home if his door is open.~ */ EXTERN ~AERIEJ~ 84
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #34211 /* ~Find proof of Mae'Var's treachery

Mae'Var's assistant has turned out to be none other than the Thayan wizard I met on the Sword Coast. He has set me a task to kill one Rayic Gethras, a Cowled Wizard who lives in a three-story gray building on the west end of the Docks District. I will know that Gethras is home if his door is open.~ */ EXTERN ~KELDORJ~ 144
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #34211 /* ~Find proof of Mae'Var's treachery

Mae'Var's assistant has turned out to be none other than the Thayan wizard I met on the Sword Coast. He has set me a task to kill one Rayic Gethras, a Cowled Wizard who lives in a three-story gray building on the west end of the Docks District. I will know that Gethras is home if his door is open.~ */ EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 489 // from:
  SAY #98491 /* ~It figures you'd turn on your boss. How much longer do you think you've got before he turns on you too, <CHARNAME>?~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~EDWIN~ 27
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 115
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 71
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 251
END

IF ~~ THEN BEGIN 490 // from:
  SAY #98492 /* ~We're taking him with us? Great. Fantastic. THAT won't come back to nibble on our posterior any time soon.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #34237 /* ~Find proof of Mae'Var's treachery

Edwin knows of my deception in joining Mae'Var and has opted to join with me. He said there may be a letter contained in a strongbox in Mae'Var's quarters. This would be evidence enough for Renal, I am sure.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL #34237 /* ~Find proof of Mae'Var's treachery

Edwin knows of my deception in joining Mae'Var and has opted to join with me. He said there may be a letter contained in a strongbox in Mae'Var's quarters. This would be evidence enough for Renal, I am sure.~ */ EXTERN ~MINSCJ~ 121
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #34237 /* ~Find proof of Mae'Var's treachery

Edwin knows of my deception in joining Mae'Var and has opted to join with me. He said there may be a letter contained in a strongbox in Mae'Var's quarters. This would be evidence enough for Renal, I am sure.~ */ EXTERN ~KELDORJ~ 145
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #34237 /* ~Find proof of Mae'Var's treachery

Edwin knows of my deception in joining Mae'Var and has opted to join with me. He said there may be a letter contained in a strongbox in Mae'Var's quarters. This would be evidence enough for Renal, I am sure.~ */ EXTERN ~VALYGARJ~ 58
END

IF ~~ THEN BEGIN 491 // from:
  SAY #96099 /* ~We're NOT a "couple." It's complicated.~ [OH96099] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 36
END

IF ~~ THEN BEGIN 492 // from:
  SAY #96101 /* ~What? No way! You won't—~ [OH96101] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNBODHI",FALSE)
~ EXIT
END

IF WEIGHT #43 ~  Global("OHN_bodhiamb","AR0800",3)
~ THEN BEGIN 493 // from:
  SAY #99883 /* ~—take me, you creepy— Wait. <CHARNAME>, she got you too?~ */
  IF ~~ THEN REPLY #99888 /* ~She didn't get you?~ */ DO ~SetGlobal("OHN_bodhiamb","AR0800",4)
~ GOTO 494
  IF ~~ THEN REPLY #99889 /* ~What's going on?~ */ DO ~SetGlobal("OHN_bodhiamb","AR0800",4)
~ GOTO 494
  IF ~~ THEN REPLY #99890 /* ~She got nothing.~ */ DO ~SetGlobal("OHN_bodhiamb","AR0800",4)
~ GOTO 494
END

IF ~~ THEN BEGIN 494 // from: 493.2 493.1 493.0
  SAY #99884 /* ~She tried to teleport me—I felt a surge come on. The next thing I know, I'm standing here with you and she... isn't.~ */
  IF ~~ THEN REPLY #99891 /* ~The surge must have interfered with her spell. Lucky for us.~ */ GOTO 495
  IF ~~ THEN REPLY #99892 /* ~There are times I love wild surges. Come on, let's get out of here.~ */ EXIT
  IF ~~ THEN REPLY #99893 /* ~Count yourself fortunate. I doubt you would have enjoyed your time with Bodhi.~ */ GOTO 495
END

IF ~~ THEN BEGIN 495 // from: 494.2 494.0
  SAY #99885 /* ~I hate relying on luck, but I'd hate being stuck with a vampire more.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN GOTO 496
END

IF ~~ THEN BEGIN 496 // from: 495.1
  SAY #99886 /* ~Er, no offense, Hexxat.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 616
END

IF WEIGHT #44 ~  Global("OHN_planarsphere","AR0411",1)
~ THEN BEGIN 497 // from:
  SAY #102394 /* ~Wow! <CHARNAME>, this place has some *serious* magic going on. My teeth are vibrating.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_planarsphere","AR0411",2)
~ EXIT
END

IF ~~ THEN BEGIN 498 // from:
  SAY #102388 /* ~I'm not sure I like the sound of that. Nope, I'm really very sure I do NOT like the sound of that.~ */
  IF ~~ THEN REPLY #43058 /* ~Then it is a simple matter of retrieving Imoen from this place.~ */ EXTERN ~ARAN~ 40
  IF ~~ THEN REPLY #43059 /* ~What sort of place is this that no one knows of it?~ */ EXTERN ~ARAN~ 40
  IF ~~ THEN REPLY #43060 /* ~I shall storm its walls and break down its gates.~ */ EXTERN ~ARAN~ 40
  IF ~~ THEN REPLY #59462 /* ~I shall take what I need from Irenicus while he is incapacitated there!~ */ EXTERN ~ARAN~ 40
END

IF ~~ THEN BEGIN 499 // from:
  SAY #102389 /* ~Aaaand we're going to go there, aren't we? Great. I'll just go and pack my bags. For an EXTENDED STAY. Wild mage, remember? And we're walking INTO the asylum? Ugh.~ */
  IF ~  !IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~ARAN~ 41
  IF ~  IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~YOSHJ~ 103
  IF ~  IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~JAHEIRAJ~ 518
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~MINSCJ~ 208
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~EDWINJ~ 159
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~KORGANJ~ 186
  IF ~  IsValidForPartyDialogue("neera")
~ THEN GOTO 500
END

IF ~~ THEN BEGIN 500 // from: 499.6
  SAY #102390 /* ~If it weren't Imoen, <CHARNAME>... Let's get this over with.~ */
  IF ~  !IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~ARAN~ 41
  IF ~  IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~YOSHJ~ 103
  IF ~  IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~JAHEIRAJ~ 518
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~MINSCJ~ 208
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~EDWINJ~ 159
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~KORGANJ~ 186
END

IF ~~ THEN BEGIN 501 // from:
  SAY #102391 /* ~Oh gods. <CHARNAME>, this is a child. A CHILD. We've got to do something. Please. ~ */
  IF ~~ THEN REPLY #44187 /* ~What is your name, young one?~ */ EXTERN ~PPDILI~ 1
  IF ~~ THEN REPLY #44189 /* ~What do you mean by "change them"? What's wrong with my face?~ */ EXTERN ~PPDILI~ 3
END

IF ~~ THEN BEGIN 502 // from:
  SAY #102392 /* ~This is the Cowled Wizards we're talking about. The COWLED WIZARDS. Wizard-hating scum? Almost as bad as the Red Wizards? You can't seriously be considering this.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 2
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 47
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 360
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 46
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 218
END

IF ~~ THEN BEGIN 503 // from:
  SAY #102393 /* ~I hope you know what you're doing, <CHARNAME>. It'd make for a pleasant change of pace...~ */
  IF ~~ THEN EXTERN ~TOLGER~ 10
END

IF ~~ THEN BEGIN 504 // from:
  SAY #102395 /* ~Is that what my nose really looks like? Jeez, why didn't anyone TELL me?~ */
  IF ~~ THEN DO ~SetGlobal("MakeStatue","GLOBAL",1)
~ EXTERN ~TRCUT01~ 0
END

IF ~~ THEN BEGIN 505 // from:
  SAY #102396 /* ~The trick is to see the spoon WITHIN the frogs, duh.~ */
  IF ~~ THEN EXTERN ~KRUIN~ 14
END

IF ~~ THEN BEGIN 506 // from:
  SAY #102398 /* ~I didn't even HAVE a mentor. Count yourself lucky, lizardman.~ */
  IF ~~ THEN EXTERN ~KRUIN~ 15
END

IF WEIGHT #45 ~  Global("OHN_REFUGE_SCENE","LOCALS",1)
~ THEN BEGIN 507 // from:
  SAY #87618 /* ~Hey, hey, Hayes! Gods, ha ha! That never gets old, does it? Oh, good to see you—and you too, Telana. Sorry it took me so long to get back. Long story short, I gave away my last talisman, teleporting didn't work, and I had to walk here from the city. This person helped clear a path through the woods.~ [OH87618] */
  IF ~~ THEN DO ~SetGlobal("OHN_ENTER_REFUGE","LOCALS",2)
SetGlobal("OHN_REFUGE_SCENE","LOCALS",2)
~ GOTO 508
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~SetGlobal("OHN_ENTER_REFUGE","LOCALS",2)
SetGlobal("OHN_REFUGE_SCENE","LOCALS",2)
~ GOTO 509
END

IF ~~ THEN BEGIN 508 // from: 507.0
  SAY #87619 /* ~Stop giving them dirty looks, Hayes. You have no reason to be suspicious. They're a good sort.~ [OH87619] */
  IF ~~ THEN EXTERN ~OHNHAYES~ 35
END

IF ~~ THEN BEGIN 509 // from: 507.1
  SAY #87620 /* ~I can see you giving them your best dirty looks, Hayes. Nice work, but no reason to be suspicious. They're a good sort. Well, maybe not "good," exactly. Good at getting things done.~ [OH87620] */
  IF ~~ THEN EXTERN ~OHNHAYES~ 35
END

IF ~~ THEN BEGIN 510 // from:
  SAY #87626 /* ~Great! I can really feel the bonhomie. Best get down to business quick, though.~ [OH87626] */
  IF ~~ THEN GOTO 511
END

IF ~~ THEN BEGIN 511 // from: 510.0
  SAY #87627 /* ~As you might have guessed, we need help against the Thayans. They have an organization that's kidnapping, studying, and doing who-knows-what-else to wild mages. They call it the Order of Eight Staves.~ [OH87627] */
  IF ~~ THEN GOTO 512
END

IF ~~ THEN BEGIN 512 // from: 511.0
  SAY #87628 /* ~Telana, Hayes, and I created the Hidden Refuge about a month ago. It's more than a sanctuary: It's our little way of organizing efforts against the Red Wizards. I haven't been back in a while, so Telana probably has some news—do you have any questions before she tells us what's been happening?~ [OH87628] */
  IF ~~ THEN REPLY #87629 /* ~How did you three meet?~ */ GOTO 513
  IF ~~ THEN REPLY #87630 /* ~Tell me more about the Order.~ */ GOTO 517
  IF ~~ THEN REPLY #87631 /* ~No. Tell us the latest news, Telana.~ */ EXTERN ~OHNTELAN~ 67
END

IF ~~ THEN BEGIN 513 // from: 512.0
  SAY #87632 /* ~I'd just come to Athkatla, and I saw these two in the Bridge District. There was something familiar about them. Wild magic users are pretty fascinating, turning heads wherever they go, you know? Or maybe the smell of singed hair tipped me off.~ [OH87632] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 66
END

IF ~~ THEN BEGIN 514 // from:
  SAY #87634 /* ~Oh right, thanks. Warning, <CHARNAME>! Telana is SO literal-minded. If you tell her she needs to catch forty winks, the next thing you know she'll be pawing carefully at her eyes.~ [OH87634] */
  IF ~~ THEN REPLY #87635 /* ~Understood. Now where were you?~ */ GOTO 515
  IF ~~ THEN REPLY #87636 /* ~On second thought, I don't need to hear any more about this.~ */ GOTO 516
END

IF ~~ THEN BEGIN 515 // from: 514.0
  SAY #87637 /* ~Oh right. So Hayes and Telana noticed me following them and thought I was an agent of the Order. They cornered me, and we all let loose. The only reason we didn't fry each other was because the Cowled Wizards showed up. They gave us their little warning, the three of us started talking, and we realized what we had in common. The rest is history.~ [OH87637] */
  IF ~~ THEN GOTO 516
END

IF ~~ THEN BEGIN 516 // from: 515.0 514.1
  SAY #87638 /* ~Anything else you wanna know?~ [OH87638] */
  IF ~~ THEN REPLY #87630 /* ~Tell me more about the Order.~ */ GOTO 517
  IF ~~ THEN REPLY #87631 /* ~No. Tell us the latest news, Telana.~ */ EXTERN ~OHNTELAN~ 67
END

IF ~~ THEN BEGIN 517 // from: 516.0 512.1
  SAY #87640 /* ~Beyond their eagerness to hunt us down like stray kobolds... we don't know much. Their interest in wild magic certainly does seem extraordinary. I mean, I'm a wild mage, right? But I'm into other things, too. Really long walks, carrying lots of gems and crossbow bolts, men with beards... the list goes on. But the Order is obsessed.~ [OH87640] */
  IF ~~ THEN REPLY #87641 /* ~So it sounds.~ */ GOTO 518
  IF ~  Race(Player1,DWARF)
Gender(Player1,MALE)
~ THEN REPLY #87642 /* ~(Stroke your beard while nodding.)~ */ GOTO 518
END

IF ~~ THEN BEGIN 518 // from: 517.1 517.0
  SAY #87643 /* ~The woman you saw, Lanneth, seems to be their leader, at least in Amn. It seems like every Thayan I've ever met is another Thayan's puppet. Who knows who's really pulling her strings?~ [OH87643] */
  IF ~~ THEN REPLY #87639 /* ~Tell us the latest news, Telana.~ */ EXTERN ~OHNTELAN~ 67
END

IF ~~ THEN BEGIN 519 // from:
  SAY #87645 /* ~She got here safe, then? Oh, that's great! Mereth is the little girl I gave my talisman to in Athkatla, <CHARNAME>.~ [OH87645] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 68
END

IF ~~ THEN BEGIN 520 // from:
  SAY #87647 /* ~Really? Did your husband give him a dirty look?~ [OH87647] */
  IF ~~ THEN EXTERN ~OHNTELAN~ 69
END

IF ~~ THEN BEGIN 521 // from:
  SAY #87649 /* ~I see. Well, <CHARNAME>, I'm glad you're here—sounds like we've got lots of work to do. Feel free to look around the camp and talk to people. If you do want to help out, Knocktor would be a good person to start with.~ [OH87649] */
  IF ~~ THEN REPLY #87650 /* ~Thank you, Neera. I am glad to help.~ */ EXTERN ~OHNTELAN~ 70
  IF ~~ THEN REPLY #81374 /* ~Very well.~ */ EXTERN ~OHNTELAN~ 70
  IF ~~ THEN REPLY #87651 /* ~I suppose I ought to look around. I still haven't decided if this is worth my time.~ */ EXTERN ~OHNTELAN~ 70
END

IF ~~ THEN BEGIN 522 // from:
  SAY #87652 /* ~I see. Well, <CHARNAME>, I'm glad you're here—sounds like we've got lots of work to do. Feel free to look around the camp and talk to people. If you do want to help out, Knocktor would be a good person to start with. Do you want me to come along?~ [OH87649] */
  IF ~~ THEN REPLY #87653 /* ~Yes. That makes the most sense, doesn't it?~ */ DO ~JoinParty()
~ EXTERN ~OHNTELAN~ 70
  IF ~~ THEN REPLY #87654 /* ~Not right now. I'll look for you here if I need you.~ */ EXTERN ~OHNTELAN~ 70
END

IF ~~ THEN BEGIN 523 // from:
  SAY #96097 /* ~Psst! <CHARNAME>! This is way, way too similar to what the Red Wizards want to do with us wild mages. We need to do something.~ [OH96097] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 524 // from:
  SAY #89539 /* ~See that chest? Don't touch it.~ [OH89539] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 525 // from:
  SAY #89540 /* ~I'm warning you! It's a trap. Not the most subtle trap, but a trap all the same.~ [OH89540] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 526 // from:
  SAY #89541 /* ~Please don't open it, <CHARNAME>! I can feel the violence of the energy inside. It's as if all the wild magic in the forest is in there, ready to burst. And that's not all: There's something alive in there... something powerful.~ [OH89541] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 527 // from:
  SAY #89542 /* ~Wait, that was it? Was that spider even poisonous? Come on!~ [OH89542] */
  IF ~~ THEN EXIT
END

IF WEIGHT #46 ~  Global("OHN_POLY_TRAP","LOCALS",1)
AreaCheck("OH6000")
~ THEN BEGIN 528 // from:
  SAY #89543 /* ~Hold on, <CHARNAME>! Magical trap ahead. Surprised? No, I guess you wouldn't be by now. Anyway, this one's a little different.~ [OH89543] */
  IF ~~ THEN DO ~SetGlobal("OHN_POLY_TRAP","LOCALS",2)
~ GOTO 529
END

IF ~~ THEN BEGIN 529 // from: 528.0
  SAY #89544 /* ~It's a polymorph trap. Say you're a rampaging ogre, and you're walking down the path like we are. Now because you're a rampaging ogre, you don't have a clever wild mage to keep you from doing foolish things. So you step into the trap and—zap! You're a squirrel.~ [OH89544] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT42",FALSE)
~ EXIT
END

IF WEIGHT #47 ~  Global("OHN_POLY_TRAP","LOCALS",2)
AreaCheck("OH6000")
~ THEN BEGIN 530 // from:
  SAY #89545 /* ~Wait—what? Oh no! What are those squirrels doing on the OTHER side of the trap? Watch out!~ [OH89545] */
  IF ~~ THEN DO ~SetGlobal("OHN_POLY_TRAP","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT43",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 531 // from:
  SAY #93534 /* ~Wow! You'll be a monarch some day. Don't let it go to your head... especially the way it went to Gramm's.~ [OH93534] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 260
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 325
END

IF ~~ THEN BEGIN 532 // from:
  SAY #93572 /* ~Why do YOU get all the attention? Mmph. But... it's true, Mereth: They ARE really good at saving people.~ [OH93572] */
  IF ~~ THEN EXTERN ~OHNMERET~ 41
END

IF ~~ THEN BEGIN 533 // from:
  SAY #88474 /* ~Wh-what? You want this strangely non-bald Thayan maniac instead of me? All right. I just have two words for you: evil wizard.~ [OH88474] */
  IF ~  Global("OHN_REFUGE_BURNED","GLOBAL",0)
~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("OH6100",1402,1151,SW)
~ EXIT
  IF ~  Global("OHN_REFUGE_BURNED","GLOBAL",1)
~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("OH6200",1402,1151,SW)
~ EXIT
END

IF ~~ THEN BEGIN 534 // from:
  SAY #83024 /* ~You're advising another not to dwell upon what she's lost? Seriously?~ [OH83024] */
  IF ~~ THEN EXTERN ~RASAADJ~ 907
END

IF WEIGHT #48 ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 535 // from:
  SAY #83157 /* ~The rumbling's getting louder. This is not good. It is the exact opposite of good, in fact. This is very, very, very, very, very, very bad...~ [OH83157] */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 270
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 301
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 229
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 160
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 612
END

IF WEIGHT #49 ~  AreaCheck("OH4220")
Global("OHR_FINALE","GLOBAL",24)
~ THEN BEGIN 536 // from:
  SAY #83249 /* ~Is that it? Is it over? Please tell me that's it and it's over.~ [OH83249] */
  IF ~  StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS02~ 6
  IF ~  !StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS01~ 11
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 184
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 857
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 613
END

IF ~~ THEN BEGIN 537 // from:
  SAY #83274 /* ~No. Just—NO.~ [OH83274] */
  IF ~~ THEN EXTERN ~RASAADJ~ 953
END

IF ~~ THEN BEGIN 538 // from:
  SAY #82999 /* ~Ew. Ew ew ew ew ew. I mean, just EWWWW!~ [OH82999] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 539 // from:
  SAY #82377 /* ~No idea!~ [OH82377] */
  IF ~~ THEN EXTERN ~OHRMEEMS~ 52
END

IF ~~ THEN BEGIN 540 // from:
  SAY #89682 /* ~Hehehe, I bet those solars are HOT. Get it? Solar? Heat? Eh? Eh?~ [OH89682] */
  IF ~~ THEN REPLY #89692 /* ~I'm going to pretend I didn't hear that. And wish I didn't need to.~ */ EXTERN ~DORNJ~ 943
END

IF ~~ THEN BEGIN 541 // from:
  SAY #92255 /* ~Seriously? You're saying someone ELSE took to slaughter too eagerly? YOU'RE saying someone else took to slaughter too eagerly.~ [OH92255] */
  IF ~~ THEN EXTERN ~DORNJ~ 978
END

IF WEIGHT #50 ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 542 // from:
  SAY #92222 /* ~We made it! I think we made it. We made it, right? I'm not just dreaming this as I lay bleeding to death in some higher realm, am I?~ [OH92222] */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 231
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 279
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 614
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 227
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 152
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 302
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 175
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1040
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 630
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 185
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 482
END

IF ~~ THEN BEGIN 543 // from:
  SAY #92188 /* ~We're going to FIGHT those things? SERIOUSLY?~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 0
END

IF ~~ THEN BEGIN 544 // from:
  SAY #92116 /* ~We're gonna FIGHT those things? SERIOUSLY?~ [OH92116] */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
END

IF ~~ THEN BEGIN 545 // from:
  SAY #85257 /* ~I don't know if I really want to hear more of that list...~ [OH85257] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 758
END

IF WEIGHT #51 ~  Global("OHH_arrival","OH7300",1)
~ THEN BEGIN 546 // from:
  SAY #85376 /* ~All right. I've now seen enough of these places to officially want to be cremated when I die.~ [OH85376] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 795
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 281
END

IF ~~ THEN BEGIN 547 // from:
  SAY #83578 /* ~Is it gold? I hope it's gold.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 282
END

IF ~~ THEN BEGIN 548 // from:
  SAY #85380 /* ~Yeah!~ [OH85380] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 795
END

IF WEIGHT #52 ~  Global("OHH_culak","OH7300",1)
~ THEN BEGIN 549 // from:
  SAY #85561 /* ~Is it just me, or is that a lot of webs? Even for a tomb, that seems a bit much.~ [OH85561] */
  IF ~~ THEN EXTERN ~OHHCULAK~ 0
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 485
END

IF ~~ THEN BEGIN 550 // from:
  SAY #85673 /* ~That's not the first word that springs to my mind...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #53 ~  Dead("OHHDECOY")
AreaCheck("OH7300")
!Global("OHH_decoydead","OH7300",2)
~ THEN BEGIN 551 // from:
  SAY #85652 /* ~All right. We came to destroy the lich, the lich is about as destroyed as it can get, we're leaving now. Right?~ [OH85652] */
  IF ~~ THEN DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 840
END

IF ~~ THEN BEGIN 552 // from:
  SAY #85653 /* ~No. No, it was hard. It was just exactly hard enough. And now we leave.~ [OH85653] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 843
END

IF ~~ THEN BEGIN 553 // from:
  SAY #85654 /* ~You don't even know what a safe side is, do you? Do you? You don't, just admit it!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #54 ~  False()
Dead("OHHDECOY")
AreaCheck("OH7300")
!Global("OHH_decoydead","OH7300",2)
~ THEN BEGIN 554 // from:
  SAY #85675 /* ~Are dead liches supposed to do that?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 843
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 303
END

IF ~~ THEN BEGIN 555 // from:
  SAY #86672 /* ~I don't like where this is headed.~ [OH86672] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 850
END

IF ~~ THEN BEGIN 556 // from:
  SAY #86673 /* ~Definitely don't like where this is headed.~ [OH86673] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 557 // from:
  SAY #85858 /* ~Ahh! What is that—that voice? Is it a voice? It's in my head!~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 879
END

IF ~~ THEN BEGIN 558 // from:
  SAY #86279 /* ~Uh, don't listen to them. This is obviously an emotional time, and I don't think we should—~ [OH86279] */
  IF ~~ THEN EXTERN ~HEXXATJ~ 908
END

IF WEIGHT #55 ~  Global("OHH_hexxatdeadcomments","GLOBAL",1)
~ THEN BEGIN 559 // from:
  SAY #86290 /* ~Hexxat was a nice person, as vampires go. I don't really know what to say... I'm sorry for your loss, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatdeadcomments","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1079
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1041
END

IF WEIGHT #56 ~  Global("OHN_TOB_PLOT","GLOBAL",1)
AreaCheck("oh6400")
~ THEN BEGIN 560 // from:
  SAY #89823 /* ~This is the spot. All right, I'll cast reckless dweomer, we'll rest, and then we'll see who comes along. I have reckless dweomer memorized, don't I? If I don't, I guess we'll just have to take a couple naps.~ [OH89823] */
  IF ~~ THEN DO ~SetGlobal("OHN_TOB_PLOT","GLOBAL",2)
~ EXIT
END

IF WEIGHT #57 ~  Global("OHN_TOB_PLOT","GLOBAL",3)
~ THEN BEGIN 561 // from:
  SAY #89824 /* ~That should do it. Let's set up camp—but remember, the Red Wizards could show up at any moment.~ [OH89824] */
  IF ~~ THEN DO ~AddJournalEntry(96069,QUEST)
SetGlobal("OHN_TOB_PLOT","GLOBAL",4)
SetGlobalTimer("ohn_vicross_timer","locals",SIX_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 562 // from:
  SAY #89828 /* ~Y-you? You're Vicross?~ [OH89828] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 1
END

IF ~~ THEN BEGIN 563 // from:
  SAY #89830 /* ~Someone more imperious, I guess. You know, "Seize the elf and kill her friends!"~ [OH89830] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 2
END

IF ~~ THEN BEGIN 564 // from:
  SAY #89833 /* ~I am! But your servants always get it wrong.~ [OH89833] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 3
END

IF ~~ THEN BEGIN 565 // from:
  SAY #89854 /* ~I don't understand. How can killing wild mages help you? Gods, why am I even talking to you?!~ [OH89854] */
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
FaceObject("ohnvicro")
ActionOverride("ohnvicro",FaceObject("neera"))
ActionOverride("cutspy2",DestroySelf())
SmallWait(5)
SetSequence(SEQ_CONJURE)
Wait(1)
SetSequence(SEQ_CAST)
SmallWait(4)
CreateVisualEffectObject("spfirepi",Myself)
PlaySound("eff_e06")
SmallWait(17)
StartDialogNoSet(Myself)
~ EXIT
END

IF WEIGHT #58 ~  Global("ohn_vicross_plot","oh6400",1)
~ THEN BEGIN 566 // from:
  SAY #89855 /* ~Huh? My magic isn't working! How did you—?~ [OH89855] */
  IF ~~ THEN DO ~SetGlobal("ohn_vicross_plot","oh6400",2)
~ EXTERN ~OHNVICRO~ 7
END

IF WEIGHT #59 ~  Global("OHN_TOB_PLOT","GLOBAL",6)
~ THEN BEGIN 567 // from:
  SAY #89861 /* ~Something happened! I can use my magic again... Hey! Vicross is trying to get away.~ [OH89861] */
  IF ~~ THEN DO ~SetGlobal("OHN_TOB_PLOT","GLOBAL",7)
StartCutSceneMode()
StartCutSceneEx("ohncut13",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 568 // from:
  SAY #89865 /* ~Oh, I don't know. Maybe it was your WILD SURGE that did it. Fraud! Coward! Killer of your own kind! Come on, <CHARNAME>! Let's get her!~ [OH89865] */
  IF ~~ THEN REPLY #89866 /* ~I swear we will, Neera, but we've found ourselves in the thick of yet another battle.~ */ EXTERN ~OHNVICRO~ 12
END

IF ~~ THEN BEGIN 569 // from:
  SAY #90186 /* ~You! You TRAITOR! You had me, my friends, and other innocent wild mages hunted and killed, while you just sat here in your grand estate, having wild surges in private, letting it all happen. I'll kill you for what you've done!~ [OH90186] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 16
END

IF ~~ THEN BEGIN 570 // from:
  SAY #93774 /* ~I'll—wait, you what now?~ [OH93774] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 17
END

IF ~~ THEN BEGIN 571 // from:
  SAY #90188 /* ~So... you surrender?~ [OH90188] */
  IF ~~ THEN EXTERN ~OHNVICRO~ 18
END

IF ~~ THEN BEGIN 572 // from:
  SAY #93639 /* ~Uh, pardon, then! You mentioned Vicross. Do you know her? We need to find her!~ [OH93639] */
  IF ~~ THEN EXTERN ~OHNSZASS~ 6
END

IF ~~ THEN BEGIN 573 // from:
  SAY #93641 /* ~I'm guessing it's not the basis for a lasting friendship?~ [OH93641] */
  IF ~~ THEN EXTERN ~OHNSZASS~ 7
END

IF ~~ THEN BEGIN 574 // from:
  SAY #93649 /* ~Yes, SO much better... Uh, sorry. Politeness. Right.~ [OH93649] */
  IF ~~ THEN EXTERN ~OHNSZASS~ 12
END

IF ~~ THEN BEGIN 575 // from:
  SAY #102319 /* ~Do we HAVE to kill her? I'm sorry, lady!~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 180
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 931
END

IF ~~ THEN BEGIN 576 // from:
  SAY #102319 /* ~Do we HAVE to kill her? I'm sorry, lady!~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 180
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 932
END

IF ~~ THEN BEGIN 577 // from:
  SAY #102319 /* ~Do we HAVE to kill her? I'm sorry, lady!~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 180
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 933
END

IF ~~ THEN BEGIN 578 // from:
  SAY #102322 /* ~Seriously? SERIOUSLY?~ */
  IF ~  True()
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~KELDORJ~ 310
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~HAERDAJ~ 173
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~JAHEIRAJ~ 595
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~VALYGARJ~ 151
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1045
END

IF ~~ THEN BEGIN 579 // from:
  SAY #102322 /* ~Seriously? SERIOUSLY?~ */
  IF ~  True()
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~KELDORJ~ 310
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~HAERDAJ~ 173
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~JAHEIRAJ~ 595
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~VALYGARJ~ 151
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1046
END

IF WEIGHT #60 ~  Global("NeeraToBLovetalks","GLOBAL",2)
~ THEN BEGIN 580 // from:
  SAY #89957 /* ~Things are really getting serious, aren't they? Not that they weren't before. But this—the Bhaalspawn hunting each other, so many dying... This is different. I can tell.~ [OH89957] */
  IF ~~ THEN REPLY #89958 /* ~This Bhaalspawn crisis will change the world forever, one way or another.~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 583
  IF ~~ THEN REPLY #89959 /* ~Perhaps. But we are different too now. We can handle it.~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 581
  IF ~~ THEN REPLY #89960 /* ~Indeed. I can sense the violence, the deaths of my brothers and sisters. The time is coming.~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 582
END

IF ~~ THEN BEGIN 581 // from: 580.1
  SAY #89961 /* ~I hope you're right. I mean, I'm pretty sure I can handle it—but you? ~ [OH89961] */
  IF ~~ THEN GOTO 584
END

IF ~~ THEN BEGIN 582 // from: 580.2
  SAY #89962 /* ~Yeah, but the time for what, exactly?~ [OH89962] */
  IF ~~ THEN GOTO 584
END

IF ~~ THEN BEGIN 583 // from: 580.0
  SAY #89963 /* ~It's how it'll change it I'm worried about.~ [OH89963] */
  IF ~~ THEN GOTO 584
END

IF ~~ THEN BEGIN 584 // from: 583.0 582.0 581.0
  SAY #89964 /* ~I don't know. We've never talked about what you are, not in depth. I mean, I've gone on and on and ON and on about being a wild mage.~ [OH89964] */
  IF ~  !Kit(Player1,WILDMAGE)
~ THEN REPLY #89965 /* ~True. I consider myself an expert on wild mages and their habits, thanks to you.~ */ GOTO 585
  IF ~  Kit(Player1,WILDMAGE)
~ THEN REPLY #89967 /* ~Well, I'm a wild mage too. But that's not what you mean, is it?~ */ GOTO 586
  IF ~~ THEN REPLY #89968 /* ~I don't have much to go on and on about. I don't really understand what I am.~ */ GOTO 587
  IF ~~ THEN REPLY #89970 /* ~You want to talk about being a child of the dead Lord of Murder?~ */ GOTO 588
END

IF ~~ THEN BEGIN 585 // from: 584.0
  SAY #89971 /* ~I'll be the judge of that!~ [OH89971] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 586 // from: 584.1
  SAY #89973 /* ~No, it's not.~ [OH89973] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 587 // from: 584.2
  SAY #89974 /* ~That makes two of us, then.~ [OH89974] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 588 // from: 584.3
  SAY #89976 /* ~Something like that. "Lord of Murder"—wow. My dad's name was Kevan.~ [OH89976] */
  IF ~~ THEN GOTO 589
END

IF ~~ THEN BEGIN 589 // from: 588.0 587.0 586.0 585.0
  SAY #89978 /* ~Be frank. What does it mean to you, to have this tainted blood? Does it scare you? Are you curious about it? Do you... feel it?~ [OH89978] */
  IF ~~ THEN REPLY #89980 /* ~It's part of who I am—how could I not? Especially when I fight... I am consumed by a rage somehow barren of emotion.~ */ GOTO 590
  IF ~~ THEN REPLY #89982 /* ~That's a lot of questions all at once. Don't know, yes, maybe, and yes?~ */ GOTO 591
  IF ~~ THEN REPLY #89983 /* ~Fear it? Feel it? I embrace it. I love it. It is more than who I am: it is who I am destined to be.~ */ GOTO 592
  IF ~~ THEN REPLY #89985 /* ~It's my blood, nothing more. It's not me. I feel it like I feel the joy that strong drink brings. It doesn't last. It isn't real.~ */ GOTO 594
END

IF ~~ THEN BEGIN 590 // from: 591.0 589.0
  SAY #89987 /* ~That sounds scary. I'd hate to feel something like that was a part of me.~ [OH89987] */
  IF ~~ THEN GOTO 594
END

IF ~~ THEN BEGIN 591 // from: 589.1
  SAY #89988 /* ~All right, all right! I'm just really curious. Come on, you must feel something. Tell me about it.~ [OH89988] */
  IF ~~ THEN REPLY #89990 /* ~I do feel it. It's part of who I am—how could I not? I feel it especially when I fight... a rage somehow barren of emotion.~ */ GOTO 590
  IF ~~ THEN REPLY #89992 /* ~Fear it? Feel it? I embrace it. I love it. It is more than who I am: it is who I am destined to be.~ */ GOTO 592
  IF ~~ THEN REPLY #89993 /* ~It is my blood, nothing more. It does not define me. I feel it like I feel the joy strong drink brings. It does not last. It isn't real.~ */ GOTO 593
END

IF ~~ THEN BEGIN 592 // from: 591.1 589.2
  SAY #89995 /* ~You dirty louse! I thought you were embracing and loving me, and all the while you've thought of nothing but your divine essence.~ [OH89995] */
  IF ~~ THEN GOTO 594
END

IF ~~ THEN BEGIN 593 // from: 591.2
  SAY #89997 /* ~Then it's different from wild magic. Probably a good thing. Cozying up to a dead, evil god can't make for healthy romantic relationships with others.~ [OH89997] */
  IF ~~ THEN GOTO 594
END

IF ~~ THEN BEGIN 594 // from: 593.0 592.0 590.0 589.3
  SAY #89999 /* ~I guess that answers my question, though. I have others, but I kind of don't want them answered. We can talk about them when the time comes. If it ever does.~ [OH89999] */
  IF ~~ THEN EXIT
END

IF WEIGHT #61 ~  Global("NeeraToBLovetalks","GLOBAL",4)
~ THEN BEGIN 595 // from:
  SAY #90001 /* ~I can't believe it's over.~ [OH90001] */
  IF ~~ THEN REPLY #90003 /* ~We are far from finished.~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
~ GOTO 597
  IF ~~ THEN REPLY #90004 /* ~What are you talking about?~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
~ GOTO 598
  IF ~~ THEN REPLY #90006 /* ~You're breaking up with me.~ */ DO ~IncrementGlobal("NeeraToBLovetalks","GLOBAL",1)
~ GOTO 596
END

IF ~~ THEN BEGIN 596 // from: 595.2
  SAY #90008 /* ~Breaking up? Are we even together? No, that's not what I'm talking about.~ [OH90008] */
  IF ~~ THEN GOTO 598
END

IF ~~ THEN BEGIN 597 // from: 595.0
  SAY #90009 /* ~Far from finished your business, maybe. But my quest, my dream ever since Ekandor hounded me all across the Sword Coast, is over.~ [OH90009] */
  IF ~~ THEN GOTO 598
END

IF ~~ THEN BEGIN 598 // from: 597.0 596.0 595.1
  SAY #90011 /* ~The Order of the Eight Staves is gone. We cut off its head. We uprooted the tree. We drained the pond. We—~ [OH90011] */
  IF ~~ THEN REPLY #90013 /* ~Yes, I get it. I'm glad to have helped out.~ */ GOTO 600
  IF ~~ THEN REPLY #90015 /* ~I get it, I get it! You're right; we did well.~ */ GOTO 600
  IF ~~ THEN REPLY #90016 /* ~It's not over. What about Szass Tam?~ */ GOTO 599
END

IF ~~ THEN BEGIN 599 // from: 598.2
  SAY #90017 /* ~Were you even paying attention? Szass Tam didn't care about the Order. Killing him would've been great, but Vicross was the real enemy.~ [OH90017] */
  IF ~~ THEN GOTO 600
END

IF ~~ THEN BEGIN 600 // from: 599.0 598.1 598.0
  SAY #90018 /* ~The funny thing? I'm happy. But I'm not—HAPPY, you know?~ [OH90018] */
  IF ~~ THEN REPLY #90020 /* ~Why would you be? Justice has been done, but that doesn't change the evils that came before.~ */ GOTO 601
  IF ~~ THEN REPLY #90021 /* ~No? But why not?~ */ GOTO 603
  IF ~~ THEN REPLY #90023 /* ~You should be. Revel in your vengeance! It is well deserved and has been a long time coming.~ */ GOTO 602
END

IF ~~ THEN BEGIN 601 // from: 600.0
  SAY #90024 /* ~You're right. I see that now.~ [OH90024] */
  IF ~~ THEN GOTO 603
END

IF ~~ THEN BEGIN 602 // from: 600.2
  SAY #90026 /* ~Believe me, I'm not trying to hold back on the righteous glee.~ [OH90026] */
  IF ~~ THEN GOTO 603
END

IF ~~ THEN BEGIN 603 // from: 602.0 601.0 600.1
  SAY #90027 /* ~It's just that—well, I changed something. I maybe even changed the world, and for the better. But inside, nothing's different. I thought for sure it would be.~ [OH90027] */
  IF ~~ THEN REPLY #90029 /* ~Why does anything inside you NEED to change, Neera? I don't think it does.~ */ GOTO 604
  IF ~~ THEN REPLY #90030 /* ~That is to be expected. That is why, when one quest is finished, we begin another.~ */ GOTO 606
  IF ~~ THEN REPLY #90031 /* ~It does not matter. You have killed your enemies and made the most powerful zulkir in Thay tremble.~ */ GOTO 608
END

IF ~~ THEN BEGIN 604 // from: 603.0
  SAY #90033 /* ~BECAUSE!~ [OH90033] */
  IF ~~ THEN GOTO 607
END

IF ~~ THEN BEGIN 605 // from: 607.0
  SAY #90035 /* ~That I can't be happy. ~ [OH90035] */
  IF ~~ THEN GOTO 609
END

IF ~~ THEN BEGIN 606 // from: 603.1
  SAY #90037 /* ~Yes. Quest after quest, more power, more experience. Life goes on and on, and then we die. But I don't WANT that.~ [OH90037] */
  IF ~~ THEN GOTO 607
END

IF ~~ THEN BEGIN 607 // from: 608.0 606.0 604.0
  SAY #90043 /* ~I WANT something to change inside me. It needs to change! Because there's still something that tells me I can't—~ [OH90043] */
  IF ~~ THEN REPLY #90044 /* ~Can't what, Neera?~ */ GOTO 605
END

IF ~~ THEN BEGIN 608 // from: 603.2
  SAY #90046 /* ~But it DOES matter. I should care about all that, obviously. But on some level I don't care at all!~ [OH90046] */
  IF ~~ THEN GOTO 607
END

IF ~~ THEN BEGIN 609 // from: 605.0
  SAY #90048 /* ~Ah, look at me. I'm being silly. Maybe it's shock. Like I'm actually so happy that if I felt it, I'd die. So... yeah. Just protecting myself. Don't worry about me. Conversation over.~ [OH90048] */
  IF ~~ THEN REPLY #90049 /* ~Does nothing make you happy, Neera? Nothing at all?~ */ GOTO 610
  IF ~~ THEN REPLY #90051 /* ~I can make you happy, Neera.~ */ GOTO 611
END

IF ~~ THEN BEGIN 610 // from: 611.0 609.0
  SAY #90052 /* ~You make me happy... sometimes, in some ways. But I want to be happy all the time. Is that so wrong?~ [OH90052] */
  IF ~~ THEN GOTO 612
END

IF ~~ THEN BEGIN 611 // from: 609.1
  SAY #90054 /* ~Can you? ~ [OH90054] */
  IF ~~ THEN GOTO 610
END

IF ~~ THEN BEGIN 612 // from: 610.0
  SAY #90055 /* ~Let's just get moving. Maybe someday, when this is over, we can figure things out... together. I—I just want you to know that, for what it's worth, I—~ [OH90055] */
  IF ~~ THEN GOTO 613
END

IF ~~ THEN BEGIN 613 // from: 612.0
  SAY #90057 /* ~I—~ [OH90057] */
  IF ~~ THEN GOTO 614
END

IF ~~ THEN BEGIN 614 // from: 613.0
  SAY #90059 /* ~I mean—~ [OH90059] */
  IF ~~ THEN GOTO 615
END

IF ~~ THEN BEGIN 615 // from: 614.0
  SAY #90061 /* ~I'm really glad you're with me.~ [OH90061] */
  IF ~~ THEN EXIT
END

IF WEIGHT #62 ~  Global("OHN_saradush","GLOBAL",1)
~ THEN BEGIN 616 // from:
  SAY #98049 /* ~Red Wizards chased me around, and I was banished because of my wild surges. Sure, wild magic can be dangerous. But look at this. Saradush, an entire city, destroyed. Why aren't generals hounded like wild mages?~ [OH98049] */
  IF ~~ THEN REPLY #98185 /* ~Wars can be just, Neera.~ */ DO ~IncrementGlobal("OHN_saradush","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 617
  IF ~~ THEN REPLY #98186 /* ~There's little use trying to make sense of war.~ */ DO ~IncrementGlobal("OHN_saradush","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 618
  IF ~~ THEN REPLY #98187 /* ~Generals aren't usually the only ones behind wars.~ */ DO ~IncrementGlobal("OHN_saradush","GLOBAL",1)
RealSetGlobalTimer("NeeraToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 619
END

IF ~~ THEN BEGIN 617 // from: 616.0
  SAY #98050 /* ~So can wild mages. I'm a very JUST wild mage, if you hadn't noticed.~ [OH98050] */
  IF ~~ THEN GOTO 620
END

IF ~~ THEN BEGIN 618 // from: 616.1
  SAY #98051 /* ~Hmm. It's hard making sense of something you really don't want to make sense of, isn't it?~ [OH98051] */
  IF ~~ THEN GOTO 620
END

IF ~~ THEN BEGIN 619 // from: 616.2
  SAY #98052 /* ~I know that! It wasn't an entirely serious question.~ [OH98052] */
  IF ~~ THEN GOTO 620
END

IF ~~ THEN BEGIN 620 // from: 619.0 618.0 617.0
  SAY #98053 /* ~Anyway, I'm curious. What was it like for you, seeing all that death and destruction? You've seen plenty before, I know—we both have. But the scale of this—and the fact that your blood—or what's in it—caused it all... ~ [OH98053] */
  IF ~~ THEN REPLY #98188 /* ~I saw nothing but what you saw, Neera. Please believe I want nothing to do with it.~ */ GOTO 624
  IF ~~ THEN REPLY #98189 /* ~I did feel something within me answering to the destruction, but the horror I felt was stronger.~ */ GOTO 624
  IF ~~ THEN REPLY #98190 /* ~In truth? It filled me with a sense of power. I didn't dislike it. I look forward to feeling it again.~ */ GOTO 621
END

IF ~~ THEN BEGIN 621 // from: 626.2 620.2
  SAY #98054 /* ~I was afraid you might say something like that. If that's true, <CHARNAME>, I'm not sure what we have will last much longer.~ [OH98054] */
  IF ~~ THEN REPLY #98191 /* ~What? What are you saying?~ */ GOTO 622
  IF ~~ THEN REPLY #98192 /* ~So be it, Neera. ~ */ GOTO 622
END

IF ~~ THEN BEGIN 622 // from: 621.1 621.0
  SAY #98055 /* ~I'm not angry, just... sad, I guess. Whatever's inside of you is taking over. I get the power thing. Really! I know the rush, what it feels like to want more. But what makes you feel that way—all that death—it's not something I want to be close to.~ [OH98055] */
  IF ~~ THEN GOTO 623
END

IF ~~ THEN BEGIN 623 // from: 622.0
  SAY #98056 /* ~I'll see you to your journey's end. But I won't be what I was to you before.~ [OH98056] */
  IF ~~ THEN DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 624 // from: 620.1 620.0
  SAY #98057 /* ~That's good to hear. You've gotten so powerful, <CHARNAME>... When I saw Saradush, I felt like I was seeing your future. I've told you what it's like to see into chaos, haven't I? How a wild surge is like terror and ecstasy rolled into one?~ [OH98057] */
  IF ~~ THEN REPLY #98193 /* ~Yes, you did.~ */ GOTO 626
  IF ~~ THEN REPLY #98194 /* ~I don't recall.~ */ GOTO 625
END

IF ~~ THEN BEGIN 625 // from: 624.1
  SAY #98058 /* ~Well, I did! I'd think that divine essence would make you a better listener—that's what gods do, right? Listen to their followers?~ [OH98058] */
  IF ~~ THEN GOTO 626
END

IF ~~ THEN BEGIN 626 // from: 625.0 624.0
  SAY #98059 /* ~Anyway, the scary part is that when I'm in the grip of a surge, I can't distinguish between the fear and the joy. When I saw your future in Saradush, it felt like that—except I had no trouble distinguishing the terror. That's all there was.~ [OH98059] */
  IF ~~ THEN REPLY #98195 /* ~Shhh. What you saw wasn't real. I am here, and I am me; nothing will change that.~ */ GOTO 627
  IF ~~ THEN REPLY #98196 /* ~That future is not yet certain, Neera. Do not let what may not come to pass trouble you.~ */ GOTO 628
  IF ~~ THEN REPLY #98197 /* ~Then you should know something, Neera: That terror is indeed my birthright, and I look forward to claiming it.~ */ GOTO 621
END

IF ~~ THEN BEGIN 627 // from: 626.0
  SAY #98060 /* ~That's good to hear. Really good to hear.~ [OH98060] */
  IF ~~ THEN GOTO 629
END

IF ~~ THEN BEGIN 628 // from: 626.1
  SAY #98061 /* ~That's easy to say. Not so easy to do.~ [OH98061] */
  IF ~~ THEN GOTO 629
END

IF ~~ THEN BEGIN 629 // from: 628.0 627.0
  SAY #98062 /* ~Let's get moving; there's better things to do than stand around dooming and glooming.~ [OH98062] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 630 // from:
  SAY #90246 /* ~Wha... what does this mean? Is this what you must decide? It's your decision, <CHARNAME>. It's—all your call. There. I've said my piece.~ [OH90246] */
  IF ~~ THEN GOTO 631
END

IF ~~ THEN BEGIN 631 // from: 630.0
  SAY #90247 /* ~No, I haven't. I'm not done yet. I—~ [OH90247] */
  IF ~~ THEN GOTO 632
END

IF ~~ THEN BEGIN 632 // from: 631.0
  SAY #90248 /* ~I love you. There, I said it. I do, and I don't want you to become a god. I want you to walk with me out of this place and go back to Athkatla and get a beer with me at the Copper Coronet. I want to have as many—cats with you as Barad Ding had at the Hidden Refuge. I want you to yell at me about my wild surges when I'm sixty-seven. I want you to never regret the decision you make here. I want you to feel the same way about me as I feel about you. Because you make me happy. Always. Whenever I am at your side.~ [OH90248] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 633 // from:
  SAY #96084 /* ~I can't believe it. All this time I've walked with someone who might become a god. It's—~ [OH96084] */
  IF ~~ THEN GOTO 634
END

IF ~~ THEN BEGIN 634 // from: 633.0
  SAY #96085 /* ~Weird. Just weird. I can't tell if it's good weird or bad weird. That kind of depends on what happens next.~ [OH96085] */
  IF ~~ THEN GOTO 635
END

IF ~~ THEN BEGIN 635 // from: 634.0
  SAY #96086 /* ~Just know that I'll always think of you as <CHARNAME>, the person I've been proud to call a friend.~ [OH96086] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 636 // from:
  SAY #98432 /* ~Sounds like a happy ending to me. I'll take it.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 54
END

IF ~~ THEN BEGIN 637 // from:
  SAY #98483 /* ~Great... Something to look forward to...~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 638 // from:
  SAY #98433 /* ~The beginning? No, no, no. I'm done with Thay. Dee oh en ee DONE.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 56
END

IF ~~ THEN BEGIN 639 // from:
  SAY #96084 /* ~I can't believe it. All this time I've walked with someone who might become a god. It's—~ [OH96084] */
  IF ~~ THEN GOTO 640
END

IF ~~ THEN BEGIN 640 // from: 639.0
  SAY #96085 /* ~Weird. Just weird. I can't tell if it's good weird or bad weird. That kind of depends on what happens next.~ [OH96085] */
  IF ~~ THEN GOTO 641
END

IF ~~ THEN BEGIN 641 // from: 640.0
  SAY #96086 /* ~Just know that I'll always think of you as <CHARNAME>, the person I've been proud to call a friend.~ [OH96086] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 442
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 440
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 153
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 212
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 213
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 255
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 305
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
  IF ~  IsValidForPartyDialogue("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 913
  IF ~  IsValidForPartyDialogue("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 914
  IF ~  IsValidForPartyDialogue("Hexxat")
!Global("HexxatRomanceActive","GLOBAL",2)
Global("OHH_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHH_FinSol","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 639
  IF ~  IsValidForPartyDialogue("Hexxat")
Global("HexxatRomanceActive","GLOBAL",2)
Global("OHH_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHH_FinSol","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 644
END

IF ~~ THEN BEGIN 642 // from:
  SAY #90246 /* ~Wha... what does this mean? Is this what you must decide? It's your decision, <CHARNAME>. It's—all your call. There. I've said my piece.~ [OH90246] */
  IF ~~ THEN GOTO 643
END

IF ~~ THEN BEGIN 643 // from: 642.0
  SAY #90247 /* ~No, I haven't. I'm not done yet. I—~ [OH90247] */
  IF ~~ THEN GOTO 644
END

IF ~~ THEN BEGIN 644 // from: 643.0
  SAY #90248 /* ~I love you. There, I said it. I do, and I don't want you to become a god. I want you to walk with me out of this place and go back to Athkatla and get a beer with me at the Copper Coronet. I want to have as many—cats with you as Barad Ding had at the Hidden Refuge. I want you to yell at me about my wild surges when I'm sixty-seven. I want you to never regret the decision you make here. I want you to feel the same way about me as I feel about you. Because you make me happy. Always. Whenever I am at your side.~ [OH90248] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 442
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 440
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 153
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 212
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 213
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 255
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 305
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
  IF ~  IsValidForPartyDialogue("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 913
  IF ~  IsValidForPartyDialogue("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 914
  IF ~  IsValidForPartyDialogue("Hexxat")
!Global("HexxatRomanceActive","GLOBAL",2)
Global("OHH_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHH_FinSol","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 639
  IF ~  IsValidForPartyDialogue("Hexxat")
Global("HexxatRomanceActive","GLOBAL",2)
Global("OHH_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHH_FinSol","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 644
END

IF ~~ THEN BEGIN 645 // from:
  SAY #100194 /* ~So this is it, huh? Everything we've been through and then you become a god and it's over?~ */
  IF ~~ THEN GOTO 646
END

IF ~~ THEN BEGIN 646 // from: 645.0
  SAY #100195 /* ~I guess I'm not surprised. But disappointed? Yeah, I'm a little disappointed.~ */
  IF ~~ THEN GOTO 647
END

IF ~~ THEN BEGIN 647 // from: 646.0
  SAY #100196 /* ~Farewell, <CHARNAME>.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 147
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 385
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 452
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 285
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 583
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 156
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 880
  IF ~  IsValidForPartyDialogue("Dorn")
Global("OHD_PCGod","GLOBAL",0)
Global("DornRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHD_PCGod","GLOBAL",1)
~ EXTERN ~DORNJ~ 915
  IF ~  IsValidForPartyDialogue("Hexxat")
Global("OHH_PCGod","GLOBAL",0)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHH_PCGod","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 649
END

IF ~~ THEN BEGIN 648 // from:
  SAY #100197 /* ~You're staying with me instead of becoming a god. That's crazy. You're insane. INSANE.~ */
  IF ~~ THEN GOTO 649
END

IF ~~ THEN BEGIN 649 // from: 648.0
  SAY #100198 /* ~I guess that's why I love you. That and... you know. That thing you do.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 148
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 386
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 453
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 286
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 584
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 157
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 5
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 7
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCNotGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCNotGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 881
  IF ~  IsValidForPartyDialogue("Dorn")
Global("OHD_PCNotGod","GLOBAL",0)
Global("DornRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHD_PCNotGod","GLOBAL",1)
~ EXTERN ~DORNJ~ 916
  IF ~  IsValidForPartyDialogue("Hexxat")
Global("OHH_PCNotGod","GLOBAL",0)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHH_PCNotGod","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 650
END

IF ~~ THEN BEGIN 650 // from:
  SAY #98989 /* ~Me? I'm not in THAT much pain, really.~ [OH98989] */
  IF ~~ THEN EXTERN ~HGWRA01~ 33
END

IF ~~ THEN BEGIN 651 // from:
  SAY #98990 /* ~No! But I'm guessing that answer won't satisfy you.~ [OH98990] */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 652 // from:
  SAY #98991 /* ~Avrum?! But—that can't be you! You're not dead.~ [OH98991] */
  IF ~~ THEN EXTERN ~OHNAVRUM~ 1
END

IF ~~ THEN BEGIN 653 // from:
  SAY #98992 /* ~But… no! I didn't mean to—I didn't want to see your sorrow. You have to believe me! It was the right thing to do. I could've handled it better, sure—but—this is ridiculous! You're alive! This is an illusion.~ [OH98992] */
  IF ~~ THEN EXTERN ~OHNAVRUM~ 2
END

IF ~~ THEN BEGIN 654 // from:
  SAY #98993 /* ~No! You're alive. I didn't want you dead. I never—~ [OH98993] */
  IF ~~ THEN EXTERN ~OHNAVRUM~ 3
END

IF ~~ THEN BEGIN 655 // from:
  SAY #98994 /* ~No! It isn't, I swear! It's—it's not that! ~ [OH98994] */
  IF ~~ THEN REPLY #99001 /* ~Don't listen to him, Neera, it's not true!~ */ DO ~SetGlobal("OHN_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99002 /* ~Stop this, Gorion! This is madness and cruelty.~ */ DO ~SetGlobal("OHN_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99003 /* ~Do not speak to her that way, specter.~ */ DO ~SetGlobal("OHN_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99004 /* ~Enough of this! I tire of these lies.~ */ DO ~SetGlobal("OHN_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
END

IF WEIGHT #63 ~  Global("OHN_BIRD_TALK","LOCALS",1)
~ THEN BEGIN 656 // from:
  SAY #89731 /* ~Oh, look! It's Jerome.~ [OH89731] */
  IF ~~ THEN DO ~SetGlobal("OHN_BIRD_TALK","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHNCUT30",FALSE)
~ EXIT
END

IF WEIGHT #64 ~  Global("OHN_BIRD_TALK","LOCALS",2)
~ THEN BEGIN 657 // from:
  SAY #89732 /* ~Thanks, Jerome! Let's see what Telana has to say.~ [OH89732] */
  IF ~~ THEN REPLY #89733 /* ~Jerome? Who's that? A victim of a wild polymorph?~ */ DO ~SetGlobal("OHN_BIRD_TALK","LOCALS",3)
~ GOTO 659
  IF ~~ THEN REPLY #89734 /* ~Did you just receive a message from that bird?~ */ DO ~SetGlobal("OHN_BIRD_TALK","LOCALS",3)
~ GOTO 658
END

IF ~~ THEN BEGIN 658 // from: 657.1
  SAY #89735 /* ~That bird has a name! It's Jerome, as you should know by now.~ [OH89735] */
  IF ~~ THEN GOTO 660
END

IF ~~ THEN BEGIN 659 // from: 657.0
  SAY #89736 /* ~No, silly. It's Jerome. The messenger bird that carries letters between Telana and me.~ [OH89736] */
  IF ~~ THEN GOTO 660
END

IF ~~ THEN BEGIN 660 // from: 659.0 658.0
  SAY #89737 /* ~Why are you looking all confused? I'm really into birds. Beaks, feathers, beady eyes? I love that stuff.~ [OH89737] */
  IF ~~ THEN GOTO 663
  IF ~  PartyHasItem("OHNMBIRD")
~ THEN GOTO 662
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN GOTO 661
END

IF ~~ THEN BEGIN 661 // from: 660.2
  SAY #89738 /* ~Really! I'm surprised you don't get me confused with Haer'Dalis.~ [OH89738] */
  IF ~~ THEN GOTO 663
  IF ~  PartyHasItem("OHNMBIRD")
~ THEN GOTO 662
END

IF ~~ THEN BEGIN 662 // from: 661.1 660.1
  SAY #89741 /* ~And hey! Don't you remember that mechanical bird I gave you?~ [OH89741] */
  IF ~~ THEN GOTO 663
END

IF ~~ THEN BEGIN 663 // from: 662.0 661.0 660.0
  SAY #89743 /* ~It's true that Jerome doesn't come around that much. But surely you've seen Anton. The falcon? No! I know you're a self-absorbed Bhaalspawn, but how can you take such little interest in other people's lives?~ [OH89743] */
  IF ~~ THEN REPLY #89744 /* ~Other people make it easy. Well, what news did Jerome bring you?~ */ GOTO 669
  IF ~~ THEN REPLY #89745 /* ~I'm interested now. When did you start employing avian messengers?~ */ GOTO 664
END

IF ~~ THEN BEGIN 664 // from: 663.1
  SAY #89746 /* ~As an intelligent woman gaining experience in the world, I thought I'd develop my... proficiencies with certain things. For personal enrichment, you know? I'm no good with weapons, so I thought I'd work on my, well, non-weapon-oriented talent. Which meant bird training, pottery, or dancing. ~ [OH89746] */
  IF ~~ THEN REPLY #89748 /* ~I see. What made you decide to go with birds?~ */ GOTO 667
  IF ~~ THEN REPLY #93711 /* ~I've seen you dance. You made the right choice.~ */ GOTO 665
  IF ~~ THEN REPLY #89749 /* ~Understood. So, what news did Jerome bring?~ */ GOTO 669
END

IF ~~ THEN BEGIN 665 // from: 664.1
  SAY #93712 /* ~Shut up. I'm an AMAZING dancer.~ [OH93712] */
  IF ~~ THEN REPLY #93713 /* ~If you insist.~ */ GOTO 666
  IF ~~ THEN REPLY #93714 /* ~So what news did Jerome bring?~ */ GOTO 669
END

IF ~~ THEN BEGIN 666 // from: 665.0
  SAY #93715 /* ~Let's see what Telana has to say... Oh, bugger. It's a warning. "Vicross, the Order of the Eight Staves leader, is in Tethyr, not far from the Wealdath," she says. "The Order's become very good at tracking mages. A wild surge within a certain proximity to them will attract their attention."~ [OH93715] */
  IF ~~ THEN GOTO 673
  IF ~  Global("NeeraRomanceActive","GLOBAL",2)
~ THEN GOTO 670
END

IF ~~ THEN BEGIN 667 // from: 664.0
  SAY #89751 /* ~Pottery and wild magic seemed like a bad combination. Also, pots are pretty boring in general. ~ [OH89751] */
  IF ~~ THEN REPLY #89753 /* ~Understood. So, what news did Jerome bring?~ */ GOTO 669
  IF ~~ THEN REPLY #89755 /* ~But what about dancing?~ */ GOTO 668
END

IF ~~ THEN BEGIN 668 // from: 667.1
  SAY #89757 /* ~Oh, I'm already an amazing dancer!~ [OH89757] */
  IF ~~ THEN REPLY #89759 /* ~I'm sure. What news did Jerome bring?~ */ GOTO 669
END

IF ~~ THEN BEGIN 669 // from: 668.0 667.0 665.1 664.2 663.0
  SAY #89760 /* ~Let me see... It's—it's a warning. "Vicross, the Order of Eight Staves leader, is in Tethyr, not far from the Wealdath," she says. "The Order's gotten very good at tracking mages. Just a wild surge within a certain proximity to them will attract their attention."~ [OH89760] */
  IF ~~ THEN GOTO 673
  IF ~  Global("NeeraRomanceActive","GLOBAL",2)
~ THEN GOTO 670
END

IF ~~ THEN BEGIN 670 // from: 669.1 666.1
  SAY #89762 /* ~"How are things going otherwise? The Bhaalspawn is very handsome, and after what you told me in your last letter, I think you have a..." Oh, Hells. Did I just read that out loud?~ [OH89762] */
  IF ~~ THEN REPLY #89763 /* ~You did. Why don't you keep going?~ */ GOTO 672
  IF ~~ THEN REPLY #89765 /* ~Don't blush. Now I understand why you've kept the birds a secret.~ */ GOTO 671
END

IF ~~ THEN BEGIN 671 // from: 670.1
  SAY #89767 /* ~They were NOT a secret! I'm sure she's talking about one of the other Bhaalspawn. Yaga-Shura, maybe. Anyway—~ [OH89767] */
  IF ~~ THEN GOTO 673
END

IF ~~ THEN BEGIN 672 // from: 670.0
  SAY #89768 /* ~Absolutely not. I'm sure she's talking about one of the other Bhaalspawn. Yaga-Shura, maybe. Anyway—~ [OH89768] */
  IF ~~ THEN GOTO 673
END

IF ~~ THEN BEGIN 673 // from: 672.0 671.0 669.0 666.0
  SAY #89770 /* ~Hmm. If I could take out the Order's leader, it would crumble.~ [OH89770] */
  IF ~~ THEN REPLY #89771 /* ~Perhaps, perhaps not. What are you suggesting?~ */ GOTO 675
  IF ~~ THEN REPLY #93716 /* ~If pigs had wings, bacon would fly.~ */ GOTO 674
  IF ~~ THEN REPLY #89773 /* ~I don't like the sound of this.~ */ GOTO 675
END

IF ~~ THEN BEGIN 674 // from: 673.1
  SAY #93717 /* ~Bacon? What does bacon have to do with anything?~ [OH93717] */
  IF ~~ THEN REPLY #93718 /* ~Nothing. Go on.~ */ GOTO 675
END

IF ~~ THEN BEGIN 675 // from: 674.0 673.2 673.0
  SAY #89774 /* ~There's a clearing west of the Wealdath and north of Saradush, pretty close to where the Red Wizards might be.~ [OH89774] */
  IF ~~ THEN REPLY #89776 /* ~Did Jerome tell you that, too?~ */ GOTO 678
  IF ~~ THEN REPLY #93719 /* ~There are lots of clearings in a lot of places.~ */ GOTO 676
  IF ~~ THEN REPLY #89777 /* ~Go on.~ */ GOTO 679
END

IF ~~ THEN BEGIN 676 // from: 675.1
  SAY #93720 /* ~True, but I only know about the one close to the where the Red Wizards are.~ [OH93720] */
  IF ~~ THEN REPLY #93721 /* ~Where they might be, you mean.~ */ GOTO 677
END

IF ~~ THEN BEGIN 677 // from: 676.0
  SAY #93722 /* ~I'll work out the details after.~ [OH93722] */
  IF ~~ THEN GOTO 679
END

IF ~~ THEN BEGIN 678 // from: 675.0
  SAY #89778 /* ~No, that was Anton's work.~ [OH89778] */
  IF ~~ THEN GOTO 679
END

IF ~~ THEN BEGIN 679 // from: 678.0 677.0 675.2
  SAY #89779 /* ~Anyway, if we headed there, and I used my wild magic, we could draw their attention... They're so used to setting up ambushes, it'd be great to ambush them for a change!~ [OH89779] */
  IF ~~ THEN REPLY #89780 /* ~A good plan. We'll head there soon.~ */ DO ~AddJournalEntry(96068,QUEST)
SetGlobal("OHN_TOB_PLOT","GLOBAL",1)
RevealAreaOnMap("OH6400")
~ EXIT
  IF ~~ THEN REPLY #89781 /* ~It would be, but we've other matters to attend to first.~ */ DO ~AddJournalEntry(96068,QUEST)
SetGlobal("OHN_TOB_PLOT","GLOBAL",1)
RevealAreaOnMap("OH6400")
~ EXIT
  IF ~~ THEN REPLY #89783 /* ~I'll consider it. The Thayans probably have magical items that would be of use to me.~ */ DO ~AddJournalEntry(96068,QUEST)
SetGlobal("OHN_TOB_PLOT","GLOBAL",1)
RevealAreaOnMap("OH6400")
~ EXIT
END

IF ~~ THEN BEGIN 680 // from:
  SAY #89796 /* ~He's talking about my gift. You know, from when we took care of the Red Wizard Enclave? Seems like so long ago, doesn't it? Show it to him!~ [OH89796] */
  IF ~~ THEN EXTERN ~OHNSCOLL~ 1
END

IF ~~ THEN BEGIN 681 // from:
  SAY #89809 /* ~Wow! I'd have made more of those if I knew it'd fetch that kind of price. I'm glad you didn't let go of it, though. It means a lot to me that you still carry it after all this time.~ [OH89809] */
  IF ~~ THEN DO ~AddXPObject(Player1,100000)
ActionOverride("OHNSCOLL",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 682 // from:
  SAY #89811 /* ~A fortune most would kill for, and you turned it down just like that. Just so you could hold on to my little heap of twittering brass.~ [OH89811] */
  IF ~~ THEN REPLY #89812 /* ~I like holding on to it—and on to you.~ */ DO ~AddXPObject(Player1,100000)
~ GOTO 684
  IF ~~ THEN REPLY #89814 /* ~It WAS hard to pass up. But you're harder to pass up.~ */ DO ~AddXPObject(Player1,100000)
~ GOTO 684
  IF ~~ THEN REPLY #89815 /* ~Ha! You're lucky he showed up when you were around.~ */ DO ~AddXPObject(Player1,100000)
~ GOTO 683
END

IF ~~ THEN BEGIN 683 // from: 682.2
  SAY #89817 /* ~You're lucky I'm around at all!~ [OH89817] */
  IF ~~ THEN GOTO 685
END

IF ~~ THEN BEGIN 684 // from: 682.1 682.0
  SAY #89818 /* ~So sweet! Put the bird away; you'll get sap in its gears.~ [OH89818] */
  IF ~~ THEN GOTO 685
END

IF ~~ THEN BEGIN 685 // from: 684.0 683.0
  SAY #89821 /* ~Come here, my goose... ~ [OH89821] */
  IF ~~ THEN DO ~ActionOverride("OHNSCOLL",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 686 // from:
  SAY #89822 /* ~Wow! I'd have made more of those if I knew they'd fetch that kind of price. But I'm a little sad. It was just a heap of brass, but—oh well! Let's move on. Next round of drinks is on you.~ [OH89822] */
  IF ~~ THEN EXIT
END

IF WEIGHT #65 ~  Global("OHN_THAY_TALK","LOCALS",1)
~ THEN BEGIN 687 // from:
  SAY #93734 /* ~Are we back? Is it over? I smell burning. Am I burning? Are you burning? Something's burning.~ [OH93734] */
  IF ~~ THEN REPLY #93735 /* ~We are indeed back, Neera. Thay is a most... unwelcoming place.~ */ DO ~SetGlobal("OHN_THAY_TALK","LOCALS",2)
~ GOTO 688
  IF ~~ THEN REPLY #93736 /* ~Quickly, cover yourself in a blanket and roll upon the ground.~ */ DO ~SetGlobal("OHN_THAY_TALK","LOCALS",2)
~ GOTO 689
  IF ~~ THEN REPLY #93737 /* ~Knock off the babbling. We've made it back alive.~ */ DO ~SetGlobal("OHN_THAY_TALK","LOCALS",2)
~ GOTO 690
END

IF ~~ THEN BEGIN 688 // from: 687.0
  SAY #93738 /* ~You can say that again! Wait, I know you. Don't say it again. But we really did make it back.~ [OH93738] */
  IF ~~ THEN GOTO 691
END

IF ~~ THEN BEGIN 689 // from: 687.1
  SAY #93739 /* ~Hah! You'd need to wake up preeeetty early to fool me like that again. The smell seems to be going away. I guess we're all clear.~ [OH93739] */
  IF ~~ THEN GOTO 691
END

IF ~~ THEN BEGIN 690 // from: 687.2
  SAY #93740 /* ~Hey, don't bite my head off for being concerned about fire! It's not like there's no precedent for agonizing, fire-based suffering in my vicinity. But... you're right. We made it back. We're alive!~ [OH93740] */
  IF ~~ THEN GOTO 691
END

IF ~~ THEN BEGIN 691 // from: 690.0 689.0 688.0
  SAY #93741 /* ~That means it's... it's over. The Order, being chased day and night by bald crazies. And I guess Vicross is gone as well.~ [OH93741] */
  IF ~~ THEN REPLY #93742 /* ~A satisfying conclusion. Your friends are out of danger, and wild mages everywhere can breathe a sigh of relief due to your efforts.~ */ GOTO 692
  IF ~~ THEN REPLY #93743 /* ~Thay will need to think long and hard about confronting the archmage Neera in the future.~ */ GOTO 693
  IF ~~ THEN REPLY #93744 /* ~Excellent. We can get back to more important matters.~ */ GOTO 694
END

IF ~~ THEN BEGIN 692 // from: 691.0
  SAY #93745 /* ~You're right. Everything's just peachy now... I suppose. But I can't get that damn autharch out of my head.~ [OH93745] */
  IF ~~ THEN REPLY #93746 /* ~Vicross?~ */ GOTO 695
END

IF ~~ THEN BEGIN 693 // from: 691.1
  SAY #93747 /* ~You can bet your bottom on that! But even so... I can't stop thinking about that jerky autharch.~ [OH93747] */
  IF ~~ THEN REPLY #93746 /* ~Vicross?~ */ GOTO 695
END

IF ~~ THEN BEGIN 694 // from: 691.2
  SAY #93748 /* ~Y'know, <CHARNAME>, I don't want to offend, but you're a real ass sometimes. I guess I should thank you anyway, for helping deal with that autharch.~ [OH93748] */
  IF ~~ THEN REPLY #93746 /* ~Vicross?~ */ GOTO 695
END

IF ~~ THEN BEGIN 695 // from: 694.0 693.0 692.0
  SAY #93749 /* ~Yeah. Vicross. She seemed so familiar despite being so... well, foreign. Frighteningly familiar.~ [OH93749] */
  IF ~~ THEN REPLY #93750 /* ~Is this one of those "There but for the grace of the gods go I" scenarios?~ */ GOTO 696
END

IF ~~ THEN BEGIN 696 // from: 695.0
  SAY #93751 /* ~I guess it is. When I saw Vicross, I realized I was only a kitten's whisker away from ending up like her. Full of anger and confusion, lashing out at others when I SHOULD be helping them. Bald. Well, not bald, but the rest of it.~ [OH93751] */
  IF ~~ THEN REPLY #93752 /* ~But you didn't end up like that, Neera. Your whole life seems to be dedicated to helping others, protecting the weak from the strong.~ */ GOTO 697
  IF ~~ THEN REPLY #93753 /* ~Kitten's whisker?~ */ GOTO 698
  IF ~~ THEN REPLY #93754 /* ~And we wouldn't have had this thrilling conversation.~ */ GOTO 699
END

IF ~~ THEN BEGIN 697 // from: 696.0
  SAY #93755 /* ~That's kind of you to say. But it makes me wonder how much of a difference there really is between us. Nature versus nurture, y'know?~ [OH93755] */
  IF ~~ THEN GOTO 700
END

IF ~~ THEN BEGIN 698 // from: 696.1
  SAY #93756 /* ~I'm not good at metaphors, okay? Lay off. I just experienced a life-changing event.~ [OH93756] */
  IF ~~ THEN GOTO 700
END

IF ~~ THEN BEGIN 699 // from: 696.2
  SAY #93757 /* ~I swear to whichever god is applicable, if you don't shut up, I'll stuff my fist down your sneering, sarcastic, evil-god-tainted throat!~ [OH93757] */
  IF ~~ THEN GOTO 700
END

IF ~~ THEN BEGIN 700 // from: 699.0 698.0 697.0
  SAY #93758 /* ~Anyway, I think I'll need some time to think about... all this. Today is the first day of the rest of my life. I need to figure out what to do with it. Probably something involving birds.~ [OH93758] */
  IF ~~ THEN REPLY #93759 /* ~Take all the time you need, Neera. I'm eager to hear what you decide.~ */ GOTO 701
  IF ~~ THEN REPLY #93760 /* ~Again with the birds.~ */ GOTO 702
  IF ~~ THEN REPLY #93761 /* ~Take all the time you need, Neera. And then keep taking it.~ */ GOTO 703
END

IF ~~ THEN BEGIN 701 // from: 700.0
  SAY #93762 /* ~You'll be the first to know, <CHARNAME>. I promise.~ [OH93762] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 702 // from: 700.1
  SAY #93763 /* ~You leave Jerome out of this! And again... thanks for your help, <CHARNAME>. I appreciate it.~ [OH93763] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 703 // from: 700.2
  SAY #93764 /* ~I hate you. I hate you so much. I hate you more than that gross skin on the top of soup. Let's just get moving, shall we?~ [OH93764] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 704 // from:
  SAY #88474 /* ~Wh-what? You want this strangely non-bald Thayan maniac instead of me? All right. I just have two words for you: evil wizard.~ [OH88474] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR4500",2172,1168,SW)
~ EXIT
  IF ~  AreaCheck("AR4500")
~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveToPointNoInterrupt([2172.1168])
Face(SW)
~ EXIT
END

IF WEIGHT #66 ~  Global("NEERA_PLOT","GLOBAL",0)
InParty(Myself)
GlobalTimerExpired("NEERATIMER","GLOBAL")
~ THEN BEGIN 705 // from:
  SAY #227753 /* ~All this traveling, all this adventure... how do you manage it? Until now I was barely able to keep my head above water. Yet here with you, it seems almost... easy!~ [NEC1] */
  IF ~~ THEN REPLY #227754 /* ~Easy? We face our share of danger, Neera.~ */ DO ~SetGlobal("NEERA_PLOT","GLOBAL",1)
~ GOTO 706
  IF ~~ THEN REPLY #227755 /* ~There is safety in numbers.~ */ DO ~SetGlobal("NEERA_PLOT","GLOBAL",1)
~ GOTO 707
  IF ~~ THEN REPLY #227756 /* ~Few dare to cross my path. Now you know how it feels to travel with a powerful protector.~ */ DO ~SetGlobal("NEERA_PLOT","GLOBAL",1)
~ GOTO 708
  IF ~~ THEN REPLY #227757 /* ~I don't have time for conversation right now, Neera. Another time, perhaps.~ */ DO ~SetGlobal("NEERA_PLOT","GLOBAL",0)
SetGlobalTimer("NEERATIMER","GLOBAL",FOUR_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 706 // from: 705.0
  SAY #227758 /* ~Oh, well, yes, there's obviously that. I just meant that ordinary things are easier. I'm not constantly worried where my next meal is coming from or whether a kobold will sneak up and slit my throat as I sleep.~ [NEC2] */
  IF ~~ THEN REPLY #227759 /* ~And that was your life before we met?~ */ GOTO 709
  IF ~~ THEN REPLY #227760 /* ~Oh, now that seems like a lovely way for you to die. In your sleep, you don't see it coming.~ */ GOTO 710
END

IF ~~ THEN BEGIN 707 // from: 705.1
  SAY #227761 /* ~Safety in numbers, eh? Fair enough. I guess I've just never really had a traveling companion before. My life on the road has been a solitary affair, full of cold nights and colder dreams. It's enough to make a girl want to head back to High Forest.~ [NEC3] */
  IF ~~ THEN REPLY #227762 /* ~High Forest? Is that where you come from?~ */ GOTO 711
END

IF ~~ THEN BEGIN 708 // from: 705.2
  SAY #227763 /* ~Oh, I'm sure the brilliant light of your ego keeps death away at night. Yeah, I'm starting to forget why I've thrown in with you. Maybe I should just abandon this whole trip and head back to High Forest.~ [NEC4] */
  IF ~~ THEN REPLY #227762 /* ~High Forest? Is that where you come from?~ */ GOTO 711
END

IF ~~ THEN BEGIN 709 // from: 706.0
  SAY #227764 /* ~Yes. Rocks for a pillow, eating clay, all that and more. My fortune seems to have come in waves. Has ever since High Forest.~ [NEC5] */
  IF ~~ THEN REPLY #227762 /* ~High Forest? Is that where you come from?~ */ GOTO 711
END

IF ~~ THEN BEGIN 710 // from: 706.1
  SAY #227765 /* ~It does! Until you wake up halfway through the sawing process. Perhaps I could demonstrate for you? I'll add you to the list of people I wouldn't mind practicing on. It stretches all the way from here to High Forest.~ [NEC6] */
  IF ~~ THEN REPLY #227762 /* ~High Forest? Is that where you come from?~ */ GOTO 711
END

IF ~~ THEN BEGIN 711 // from: 710.0 709.0 708.0 707.0
  SAY #227766 /* ~That's me, born and raised in the thicket. At least until my mistakes piled up high enough to come crashing down on me.~ [NEC7] */
  IF ~~ THEN REPLY #227767 /* ~What drove you out of your home?~ */ GOTO 712
  IF ~~ THEN REPLY #227768 /* ~Mistakes can be corrected, I'm sure you weren't forced out.~ */ GOTO 713
  IF ~~ THEN REPLY #227769 /* ~Only a coward flees from her mistakes.~ */ GOTO 714
END

IF ~~ THEN BEGIN 712 // from: 711.0
  SAY #227770 /* ~You know, this and that. I was never a very good student of magic, and part of that could be attributed to never studying. I ended up flubbing a few spells, and, uh... here I am!~ [NEC8] */
  IF ~~ THEN REPLY #231246 /* ~It would appear that you glossed over some of the finer details.~ */ GOTO 715
  IF ~~ THEN REPLY #227771 /* ~Stop stalling, tell me what happened.~ */ GOTO 716
END

IF ~~ THEN BEGIN 713 // from: 711.1
  SAY #227772 /* ~No, I guess nobody kicked me out. But they would have, if I'd stayed.~ [NEC9] */
  IF ~~ THEN REPLY #227773 /* ~What exactly happened?~ */ GOTO 715
END

IF ~~ THEN BEGIN 714 // from: 711.2
  SAY #227774 /* ~So call me a coward. I freely admit to fleeing with wild abandon, and I—I know just how it looks.~ [NEC10] */
  IF ~~ THEN REPLY #227773 /* ~What exactly happened?~ */ GOTO 715
END

IF ~~ THEN BEGIN 715 // from: 714.0 713.0 712.0
  SAY #227775 /* ~A maiming or two, if you don't count the second-degree burns. Completely accidental, and everybody lived. At least, I'm pretty sure everybody lived.~ [NEC11] */
  IF ~~ THEN REPLY #227776 /* ~Surely it wasn't your fault. What happened?~ */ GOTO 717
  IF ~~ THEN REPLY #227777 /* ~Accidents happen, even horrible ones.~ */ GOTO 716
  IF ~~ THEN REPLY #227778 /* ~I find most of the deaths around me are rarely accidental. These people crossed you, didn't they?~ */ GOTO 716
END

IF ~~ THEN BEGIN 716 // from: 715.2 715.1 712.1
  SAY #227779 /* ~You really know how to get someone to open up. Why, yes, let me just share intimate details about my past, ha ha. You put me right at ease!~ [NEC12] */
  IF ~~ THEN REPLY #227780 /* ~Take your time. Tell me when you're ready.~ */ GOTO 717
  IF ~~ THEN REPLY #227781 /* ~Hurry, then. I grow tired of your meandering tale.~ */ GOTO 717
END

IF ~~ THEN BEGIN 717 // from: 716.1 716.0 715.0
  SAY #227782 /* ~During our magical training, we were supposed to summon a sphere of fire, and mine got away from me somehow. One moment I was concentrating, the next moment my classmates were rolling on the floor screaming.~ [NEC13] */
  IF ~~ THEN REPLY #227783 /* ~A terrible turn of events, but you can't blame yourself.~ */ GOTO 718
  IF ~~ THEN REPLY #227784 /* ~Perhaps your poor teachers are the ones to blame.~ */ GOTO 719
  IF ~~ THEN REPLY #227785 /* ~Remind me to stand back when you cast a spell.~ */ GOTO 859
END

IF ~~ THEN BEGIN 718 // from: 859.1 859.0 717.0
  SAY #227786 /* ~Of course I can blame myself! Accident or not, I should have been more careful. I could have taken responsibility or at least fetched a bucket of water. Instead, I ran away, terrified of what I'd done.~ [NEC14] */
  IF ~~ THEN REPLY #227787 /* ~I can understand why you might panic in that situation.~ */ GOTO 860
  IF ~~ THEN REPLY #227788 /* ~That seems like the right time to scarper off, if you ask me.~ */ GOTO 860
  IF ~~ THEN REPLY #227789 /* ~You didn't even try to help?~ */ GOTO 861
END

IF ~~ THEN BEGIN 719 // from: 717.1
  SAY #227790 /* ~No. I did it. It was my fault. Accident or not, I should have been more careful. I could have taken responsibility or fetched a bucket of water. Instead, I ran away, terrified of what I'd done.~ [NEC15] */
  IF ~~ THEN REPLY #227787 /* ~I can understand why you might panic in that situation.~ */ GOTO 860
  IF ~~ THEN REPLY #227788 /* ~That seems like the right time to scarper off, if you ask me.~ */ GOTO 860
  IF ~~ THEN REPLY #227789 /* ~You didn't even try to help?~ */ GOTO 861
END

IF ~~ THEN BEGIN 720 // from:
  SAY #227791 /* ~Horrible, I know. I ran into the woods and couldn't bear to go back to face the consequences. I snuck back into the village now and then for food and once to leave a note for my parents, but eventually I had to leave.~ [NEC16] */
  IF ~~ THEN GOTO 721
END

IF ~~ THEN BEGIN 721 // from: 862.0 720.0
  SAY #227792 /* ~I took to wandering High Forest, but I kept running into the wrong people and doing the wrong thing. Eventually, Turlang the treant grabbed me and said, "Take a hike." Well, maybe not in those words exactly.~ [NEC17] */
  IF ~~ THEN REPLY #227793 /* ~And so you left on your journey.~ */ GOTO 722
  IF ~~ THEN REPLY #227794 /* ~An interesting tale. I would like to hear more sometime.~ */ GOTO 723
  IF ~~ THEN REPLY #227795 /* ~And by the gods, she has finished! I have become teary eyed. Say no more, or I'll collapse from dehydration.~ */ GOTO 724
END

IF ~~ THEN BEGIN 722 // from: 721.0
  SAY #227796 /* ~And so I left High Forest. I've been wandering for a while now. I've got a few ideas for a destination, but I'm still considering them. Come, let us continue this journey together.~ [NEC18] */
  IF ~~ THEN DO ~SetGlobalTimer("NEERATIMER2","GLOBAL",SEVEN_DAYS)
AddJournalEntry(231612,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 723 // from: 721.1
  SAY #227797 /* ~All right. Then I'll yank on your ear when I'm ready to gab some more.~ [NEC19] */
  IF ~~ THEN DO ~SetGlobalTimer("NEERATIMER2","GLOBAL",SEVEN_DAYS)
AddJournalEntry(231612,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 724 // from: 721.2
  SAY #227798 /* ~I apologize if my tale of heartbreak and woe bores you, <CHARNAME>. Maybe next time I should embellish it with some courtesans and dragons to make it more exciting.~ [NEC20] */
  IF ~~ THEN DO ~SetGlobalTimer("NEERATIMER2","GLOBAL",SEVEN_DAYS)
AddJournalEntry(231612,INFO)
~ EXIT
END

IF WEIGHT #67 ~  Global("NEERA_PLOT","GLOBAL",1)
InParty(Myself)
GlobalTimerExpired("NEERATIMER2","GLOBAL")
~ THEN BEGIN 725 // from:
  SAY #227799 /* ~So, <CHARNAME>, after giving it some thought, I want to ask you a favor.~ [NED1] */
  IF ~~ THEN REPLY #227800 /* ~Certainly, Neera. What do you need?~ */ DO ~SetGlobal("NEERA_PP","LOCALS",1)
SetGlobal("NEERA_PLOT","GLOBAL",2)
SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",SEVEN_DAYS)
~ GOTO 726
  IF ~~ THEN REPLY #227801 /* ~Oh, here it comes. Will it be an arm or a leg?~ */ DO ~SetGlobal("NEERA_PP","LOCALS",1)
SetGlobal("NEERA_PLOT","GLOBAL",2)
SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",SEVEN_DAYS)
~ GOTO 726
  IF ~~ THEN REPLY #227802 /* ~Hold that thought. I don't want to hear it right now.~ */ DO ~SetGlobal("NEERA_PLOT","GLOBAL",1)
SetGlobalTimer("NEERATIMER2","GLOBAL",THIRTY_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 726 // from: 725.1 725.0
  SAY #227803 /* ~Even though I first ran away because I was scared, I've begun to think I should find a way to reduce the unfortunate side effects of my otherwise awesome spells.~ [NED2] */
  IF ~~ THEN REPLY #227804 /* ~That sounds wise.~ */ GOTO 729
  IF ~~ THEN REPLY #227805 /* ~Aren't "unfortunate side-effects" the main feature of wild magic?~ */ GOTO 727
  IF ~~ THEN REPLY #227806 /* ~What makes your magic so awesome?~ */ GOTO 728
END

IF ~~ THEN BEGIN 727 // from: 726.1
  SAY #227807 /* ~It only seems that way because everyone forgets all the times my untamed magic made my spells more powerful. All anyone remembers is when I accidentally incinerated a classmate.~ [NED3] */
  IF ~~ THEN GOTO 729
END

IF ~~ THEN BEGIN 728 // from: 726.2
  SAY #227808 /* ~Even though there's a risk of things getting out of hand—like that time I zapped poor Enith and all her hair fell out—there's just as much chance of my wild magic making a spell far stronger than normal.~ [NED4] */
  IF ~~ THEN GOTO 729
END

IF ~~ THEN BEGIN 729 // from: 728.0 727.0 726.0
  SAY #227809 /* ~Casting wild magic is like... playing a flute by ear. I just kinda... picked it up as I went along, doing what felt natural. In magical terms, I can play a pretty mean tune. But when I miss a note, the flute shoots fire at everyone.~ [NED5] */
  IF ~~ THEN GOTO 730
END

IF ~~ THEN BEGIN 730 // from: 729.0
  SAY #227810 /* ~Also, the flute sometimes turns me into a hamster.~ [NED6] */
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 289
  IF ~  !InParty("MINSC")
~ THEN GOTO 732
END

IF ~~ THEN BEGIN 731 // from:
  SAY #227811 /* ~<CHARNAME>, promise to keep him away from me if it does happen again!~ [NED8] */
  IF ~~ THEN REPLY #227812 /* ~You can count on me.~ */ GOTO 732
  IF ~~ THEN REPLY #227813 /* ~I can't make any promises.~ */ GOTO 732
  IF ~~ THEN REPLY #227814 /* ~No, it's been too long since we've had a good hamster cage match.~ */ GOTO 732
END

IF ~~ THEN BEGIN 732 // from: 731.2 731.1 731.0 730.1
  SAY #227815 /* ~Anyway, wild mages tend to keep to themselves for obvious reasons, but I've heard about one nearby. They say he's very old and wise.~ [NED9] */
  IF ~~ THEN REPLY #227816 /* ~And you think he can help you?~ */ GOTO 733
  IF ~~ THEN REPLY #227817 /* ~I guess any wild mage would have to become wise to survive long enough to become old.~ */ GOTO 734
  IF ~~ THEN REPLY #227818 /* ~What would a young half-elf like you want with an old man?~ */ GOTO 735
END

IF ~~ THEN BEGIN 733 // from: 732.0
  SAY #227819 /* ~Hey, you're smarter than you look. That's exactly right. Someone who's lived so long with wild magic must be able to teach me a thing or two.~ [NED10] */
  IF ~~ THEN REPLY #227820 /* ~Who is this wild mage, and where can we find him?~ */ GOTO 736
END

IF ~~ THEN BEGIN 734 // from: 732.1
  SAY #227821 /* ~That's exactly what I was thinking. He must know a thing or two about living with wild magic.~ [NED11] */
  IF ~~ THEN REPLY #227820 /* ~Who is this wild mage, and where can we find him?~ */ GOTO 736
END

IF ~~ THEN BEGIN 735 // from: 732.2
  SAY #227822 /* ~What a dirty mind you have! It's nothing like that. I just want to know more about how to handle my wild magic.~ [NED12] */
  IF ~~ THEN REPLY #227820 /* ~Who is this wild mage, and where can we find him?~ */ GOTO 736
END

IF ~~ THEN BEGIN 736 // from: 735.0 734.0 733.0
  SAY #227823 /* ~His name is Adoy, and he was last spotted to the east of Firewine Bridge.~ [NED13] */
  IF ~~ THEN REPLY #227824 /* ~Then we'll look for him there at once.~ */ DO ~RevealAreaOnMap("OH2000")
~ GOTO 737
  IF ~~ THEN REPLY #227825 /* ~If it's convenient, maybe we'll take a look.~ */ DO ~RevealAreaOnMap("OH2000")
~ GOTO 738
  IF ~~ THEN REPLY #227826 /* ~That's too far out of our way. I can't be bothered.~ */ DO ~RevealAreaOnMap("OH2000")
~ GOTO 738
END

IF ~~ THEN BEGIN 737 // from: 736.0
  SAY #227827 /* ~Thanks, <CHARNAME>. You're more than a convenient escape from vicious Red Wizards. You're a real pal.~ [NED14] */
  IF ~~ THEN DO ~AddJournalEntry(231613,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 738 // from: 736.2 736.1
  SAY #227828 /* ~Gee, <CHARNAME>, I would have thought you'd be more concerned about avoiding sudden electrocution and permanent baldness. You do like to live dangerously.~ [NED15] */
  IF ~~ THEN DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF WEIGHT #68 ~  InParty(Myself)
Global("NEERA_ROMANCE","GLOBAL",1)
GlobalTimerExpired("NEERAROMANCETIMER","GLOBAL")
Global("ROMANCE_PT1","LOCALS",1)
~ THEN BEGIN 739 // from:
  SAY #227829 /* ~I've been thinking about you, <CHARNAME>.~ [NEL1] */
  IF ~~ THEN REPLY #227830 /* ~Good thoughts, I hope.~ */ DO ~SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",FOUR_DAYS)
SetGlobal("ROMANCE_PT1","LOCALS",2)
~ GOTO 740
  IF ~~ THEN REPLY #227831 /* ~Uh, oh. That can't be good.~ */ DO ~SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",FOUR_DAYS)
SetGlobal("ROMANCE_PT1","LOCALS",2)
~ GOTO 741
  IF ~~ THEN REPLY #227832 /* ~I'd rather you didn't.~ */ DO ~SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",FOUR_DAYS)
SetGlobal("ROMANCE_PT1","LOCALS",2)
~ GOTO 742
  IF ~~ THEN REPLY #227833 /* ~Can't you see I'm busy? I don't have time for your nonsense.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",0)
SetGlobalTimer("NEERAROMANCETIMER","GLOBAL",THIRTY_DAYS)
SetGlobal("ROMANCE_PT1","LOCALS",0)
~ GOTO 743
END

IF ~~ THEN BEGIN 740 // from: 739.0
  SAY #227834 /* ~Not bad ones, anyway. Mostly I can't figure you out.~ [NEL2] */
  IF ~~ THEN GOTO 744
END

IF ~~ THEN BEGIN 741 // from: 739.1
  SAY #227835 /* ~Don't worry, I'm not throwing fireballs around or anything. I just can't figure you out.~ [NEL3] */
  IF ~~ THEN GOTO 744
END

IF ~~ THEN BEGIN 742 // from: 739.2
  SAY #227836 /* ~What? Are you worried my magic will burst out of control or something? I just can't figure you out.~ [NEL4] */
  IF ~~ THEN GOTO 744
END

IF ~~ THEN BEGIN 743 // from: 739.3
  SAY #227837 /* ~Well, if that's how you feel, I won't bother you.~ [NEL5] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 744 // from: 742.0 741.0 740.0
  SAY #227838 /* ~For example, why did you help me escape the Red Wizards?~ [NEL6] */
  IF ~~ THEN REPLY #227839 /* ~It seemed like the right thing to do. You needed help.~ */ GOTO 745
  IF ~~ THEN REPLY #227840 /* ~Rescuing damsels in distress is all part of the hero job.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 746
  IF ~~ THEN REPLY #227841 /* ~I was hoping you would give me a handsome reward. I didn't know you were broke!~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 747
  IF ~~ THEN REPLY #227842 /* ~You didn't exactly give me much choice.~ */ GOTO 748
END

IF ~~ THEN BEGIN 745 // from: 744.0
  SAY #227843 /* ~That sounds very noble, but is it the real reason?~ [NEL7] */
  IF ~~ THEN REPLY #227844 /* ~Honestly, I stepped in because you needed help and I could give it.~ */ GOTO 749
  IF ~~ THEN REPLY #227845 /* ~Well, the truth is that your predicament intrigued me. I wanted to know more about you.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 750
  IF ~~ THEN REPLY #227846 /* ~To tell the truth, I really was hoping for a reward.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 751
  IF ~~ THEN REPLY #227847 /* ~Seriously, if you hadn't put me on the spot, I wouldn't have bothered.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 751
END

IF ~~ THEN BEGIN 746 // from: 744.1
  SAY #227848 /* ~You like to think of yourself as a hero, don't you?~ [NEL8] */
  IF ~~ THEN REPLY #227849 /* ~No, I just try to treat others as I wish they would treat me.~ */ GOTO 749
  IF ~~ THEN REPLY #227850 /* ~Of course! Considering I saved your life, you of all people should agree.~ */ GOTO 752
  IF ~~ THEN REPLY #227851 /* ~The hero act got your attention, didn't it?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 752
END

IF ~~ THEN BEGIN 747 // from: 744.2
  SAY #227852 /* ~Ha! Did I ever fool you! Seriously though, was that the real reason?~ [NEL9] */
  IF ~~ THEN REPLY #227853 /* ~I was just in the right place at the right time to be of help.~ */ GOTO 749
  IF ~~ THEN REPLY #227854 /* ~Gold is helpful, but meeting interesting new people is even better. I wanted to know more about you.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 750
  IF ~~ THEN REPLY #227855 /* ~Seriously, the reward. I'm still hoping you can turn up some gold.~ */ GOTO 751
END

IF ~~ THEN BEGIN 748 // from: 744.3
  SAY #227856 /* ~I didn't have much choice either. The Red Wizards were practically stepping on my heels... but what was the real reason?~ [NEL10] */
  IF ~~ THEN REPLY #227857 /* ~You needed help, and I was handy. It's as simple as that.~ */ GOTO 749
  IF ~~ THEN REPLY #227858 /* ~A little remuneration is nice. I'm still hoping for that reward.~ */ GOTO 751
  IF ~~ THEN REPLY #227859 /* ~The truth is that your predicament intrigued me. I wanted to know more about you.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 750
END

IF ~~ THEN BEGIN 749 // from: 748.0 747.0 746.0 745.0
  SAY #227860 /* ~As simple as that, is it? Hm, I thought there might be more to you than meets the eye.~ [NEL11] */
  IF ~~ THEN REPLY #227861 /* ~With me, what you see is what you get.~ */ GOTO 753
  IF ~~ THEN REPLY #227862 /* ~There IS more to me than meets the eye. I've got depths and... stuff.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 754
  IF ~~ THEN REPLY #227863 /* ~Sorry to disappoint you.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 750 // from: 772.0 771.0 770.0 769.0 768.0 767.0 766.0 764.2 763.0 762.0 761.0 760.0 759.0 748.2 747.1 745.1
  SAY #227864 /* ~What more could you want to know about me?~ [NEL12] */
  IF ~~ THEN REPLY #227865 /* ~I'm curious why you chose to study wild magic.~ */ GOTO 763
  IF ~~ THEN REPLY #227866 /* ~I can't figure out whether you were brave or crazy to run away from home.~ */ GOTO 764
  IF ~~ THEN REPLY #227867 /* ~What did you do to rile up those Red Wizards?~ */ GOTO 765
  IF ~~ THEN REPLY #227868 /* ~That's enough for one day. I'm glad we had this little chat. Let's do it again sometime. Some other time.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 751 // from: 748.1 747.2 745.3 745.2
  SAY #227869 /* ~All right, I see you're going to stick to that story no matter what I say.~ [NEL13] */
  IF ~~ THEN REPLY #227870 /* ~That's because it's true.~ */ GOTO 755
  IF ~~ THEN REPLY #227871 /* ~Whatever.~ */ GOTO 755
  IF ~~ THEN REPLY #227872 /* ~Fine.~ */ GOTO 755
END

IF ~~ THEN BEGIN 752 // from: 746.2 746.1
  SAY #227873 /* ~That's true, I suppose. I was hoping you'd taken more of a personal interest, but that last spell mishap must have left me confused.~ [NEL14] */
  IF ~~ THEN REPLY #227874 /* ~If you need a cleric to check...~ */ GOTO 756
  IF ~~ THEN REPLY #227875 /* ~You do seem a little unstable. Volatile, even.~ */ GOTO 758
  IF ~~ THEN REPLY #227876 /* ~I'm sure you'll feel better after a good rest.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 753 // from: 749.0
  SAY #227877 /* ~Really? Oh, that's a shame... if it's true.~ [NEL15] */
  IF ~~ THEN DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 754 // from: 749.1
  SAY #227878 /* ~Let's hope so. I suppose time will tell.~ [NEL16] */
  IF ~~ THEN DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 755 // from: 760.1 759.2 758.2 757.2 757.1 757.0 756.2 755.0 751.2 751.1 751.0
  SAY #227879 /* ~Fine.~ [NEL17] */
  IF ~~ THEN REPLY #227879 /* ~Fine.~ [NEL17] */ GOTO 755
  IF ~~ THEN REPLY #227880 /* ~...~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 756 // from: 752.0
  SAY #227881 /* ~I don't need a cleric!~ [NEL18] */
  IF ~~ THEN REPLY #227882 /* ~Are you sure?~ */ GOTO 757
  IF ~~ THEN REPLY #227883 /* ~All right. Is that all you wanted to talk about?~ */ GOTO 757
  IF ~~ THEN REPLY #227884 /* ~In that case, it's time to move on.~ */ GOTO 755
END

IF ~~ THEN BEGIN 757 // from: 756.1 756.0
  SAY #227885 /* ~Yes.~ [NEL19] */
  IF ~~ THEN REPLY #227886 /* ~Good.~ */ GOTO 755
  IF ~~ THEN REPLY #227871 /* ~Whatever.~ */ GOTO 755
  IF ~~ THEN REPLY #227872 /* ~Fine.~ */ GOTO 755
END

IF ~~ THEN BEGIN 758 // from: 752.1
  SAY #227887 /* ~Volatile! What do you mean by volatile?~ [NEL20] */
  IF ~~ THEN REPLY #227888 /* ~I mean you're hard to predict.~ */ GOTO 760
  IF ~~ THEN REPLY #227889 /* ~I mean you're hot. Tempered. Hot-tempered, I mean. Not hot like a tomato. I mean, potato. Hot potato!~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 761
  IF ~~ THEN REPLY #227890 /* ~I didn't mean anything. I don't want to argue with you.~ */ GOTO 755
END

IF ~~ THEN BEGIN 759 // from:
  SAY #227891 /* ~Well, I guess I'll take that as a compliment. It's not as if you really know me.~ [NEL21] */
  IF ~~ THEN REPLY #227892 /* ~Maybe you should tell me more about yourself.~ */ GOTO 750
  IF ~~ THEN REPLY #227893 /* ~Does anyone really know anybody?~ */ GOTO 762
  IF ~~ THEN REPLY #227894 /* ~If I did know more about you, I'm sure I'd be just as bored as I am now. Yawn.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 755
END

IF ~~ THEN BEGIN 760 // from: 758.0
  SAY #227895 /* ~You think so? Sometimes I get the feeling you know exactly what I'm gonna do next. You'd probably find me completely predictable if you just knew me a little better.~ [NEL22] */
  IF ~~ THEN REPLY #227896 /* ~Tell me something else about yourself.~ */ GOTO 750
  IF ~~ THEN REPLY #227897 /* ~I've learned enough for now. Let's talk again another time.~ */ DO ~AddJournalEntry(231614,INFO)
~ GOTO 755
END

IF ~~ THEN BEGIN 761 // from: 758.1
  SAY #227898 /* ~Ha! Sometimes I can't tell whether you're joking or just tongue-tied.~ [NEL23] */
  IF ~~ THEN REPLY #227899 /* ~Just joking, of course. Maybe I'd make better jokes if I knew more about you.~ */ GOTO 750
  IF ~~ THEN REPLY #227900 /* ~Nwuh na muh wokeen, Neera.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 762
  IF ~~ THEN REPLY #227901 /* ~All right, break's over. Let's chat some other time.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 762 // from: 761.1 759.1
  SAY #227902 /* ~Very funny. Everybody loves a clown, I guess. Except for those carnivorous clowns that lurk under your bed, just waiting for you to have a peek. But enough about my childhood traumas.~ [NEL24] */
  IF ~~ THEN REPLY #227903 /* ~I'd like to hear more about your childhood.~ */ GOTO 750
  IF ~~ THEN REPLY #227904 /* ~That's enough for now. Let's talk again another time.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 763 // from: 750.0
  SAY #227905 /* ~Sometimes I wonder whether I chose wild magic or it chose me. Some of my teachers said it was a flaw in my character that came out through my magic.~ [NEL25] */
  IF ~~ THEN REPLY #227906 /* ~Maybe your teachers simply didn't know you well. Tell me something else about yourself.~ */ GOTO 750
  IF ~~ THEN REPLY #227907 /* ~Well, if I were wild magic, I would choose you.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 766
  IF ~~ THEN REPLY #227908 /* ~I don't see any flaws in you. Maybe I need a closer look. Come over here.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",1)
~ GOTO 767
  IF ~~ THEN REPLY #227909 /* ~That makes sense. I've never known a more flawed character.~ */ GOTO 768
END

IF ~~ THEN BEGIN 764 // from: 750.1
  SAY #227910 /* ~Aren't brave and crazy two sides of the same coin? I bet a lot of people think of you as crazy when you take on some of the enemies you've fought.~ [NEL26] */
  IF ~~ THEN REPLY #227911 /* ~I'm sure you'd have done the same.~ */ GOTO 769
  IF ~~ THEN REPLY #227912 /* ~If I follow you, that means it's brave when I do it but crazy when you do it. Right?~ */ GOTO 770
  IF ~~ THEN REPLY #227913 /* ~I'm more interested in hearing about you than about what others think of me.~ */ GOTO 750
END

IF ~~ THEN BEGIN 765 // from: 750.2
  SAY #227914 /* ~I didn't do a thing! They wanted to open me up and see what makes me a wild mage. They try to control everything they understand and destroy everything they don't.~ [NEL27] */
  IF ~~ THEN REPLY #227915 /* ~Those monsters! They won't lay a hand on you as long as you're with me.~ */ GOTO 771
  IF ~~ THEN REPLY #227916 /* ~Considering how little they understand, they may end up trying to destroy everything.~ */ GOTO 772
  IF ~~ THEN REPLY #227917 /* ~That's enough talk for now. Let's talk again another time.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 766 // from: 763.1
  SAY #227918 /* ~Ha ha ha! Flattery will get you... well, time will tell where flattery will get you.~ [NEL28] */
  IF ~~ THEN REPLY #227919 /* ~While we wait for that time to arrive, tell me something else about you.~ */ GOTO 750
  IF ~~ THEN REPLY #227920 /* ~Well, enough about you. Let's get back to the business at hand.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 767 // from: 763.2
  SAY #227921 /* ~You are bold when you want to be! I... well, I rather like this side of you. Still, your timing could use some work.~ [NEL29] */
  IF ~~ THEN REPLY #227922 /* ~While I work on my timing, tell me something else about yourself.~ */ GOTO 750
  IF ~~ THEN REPLY #227923 /* ~In that case, we're out of time for talk. Time to get back to business.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 768 // from: 763.3
  SAY #227924 /* ~That's why you need me—someone to challenge you for the title of "Most Flawed Hero."~ [NEL30] */
  IF ~~ THEN REPLY #227925 /* ~What are some of your other flaws?~ */ GOTO 750
  IF ~~ THEN REPLY #227926 /* ~I've enjoyed our little chat, but it's time to get back to business.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 769 // from: 764.0
  SAY #227927 /* ~Don't be too sure about that. When faced with the fight-or-flight impulse, I always choose the latter.~ [NEL31] */
  IF ~~ THEN REPLY #227928 /* ~Tell me something else.~ */ GOTO 750
  IF ~~ THEN REPLY #227929 /* ~It's time to get moving. Thanks for the chat.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 770 // from: 764.1
  SAY #227930 /* ~Ha! I'm sure there are many who would agree with you.~ [NEL32] */
  IF ~~ THEN REPLY #227928 /* ~Tell me something else.~ */ GOTO 750
  IF ~~ THEN REPLY #227929 /* ~It's time to get moving. Thanks for the chat.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 771 // from: 765.0
  SAY #232213 /* ~Oh, I swoon to hear such words. And by "swoon," I mean "gag." Don't get me wrong: I'm grateful you helped me, and I'm glad to travel with you, but I'm not exactly a damsel in distress.~ [NEL33] */
  IF ~~ THEN REPLY #227928 /* ~Tell me something else.~ */ GOTO 750
  IF ~~ THEN REPLY #227929 /* ~It's time to get moving. Thanks for the chat.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 772 // from: 765.1
  SAY #227931 /* ~Ha! That's a good point. A good, scary point if you think about it. Let's not think about it.~ [NEL34] */
  IF ~~ THEN REPLY #227928 /* ~Tell me something else.~ */ GOTO 750
  IF ~~ THEN REPLY #227929 /* ~It's time to get moving. Thanks for the chat.~ */ DO ~AddJournalEntry(231614,INFO)
~ EXIT
END

IF WEIGHT #69 ~  InParty(Myself)
Global("NEERA_ROMANCE","GLOBAL",2)
GlobalTimerExpired("NEERAROMANCETIMER","GLOBAL")
Global("ROMANCE_PT2","LOCALS",1)
~ THEN BEGIN 773 // from:
  SAY #227932 /* ~Every once in a while, I forget I'm fleeing Red Wizards who want to open up my brain and study it, and I realize I'm having the time of my life.~ [NEL35] */
  IF ~~ THEN REPLY #227933 /* ~I'm glad to hear that, Neera.~ */ DO ~SetGlobal("ROMANCE_PT2","LOCALS",2)
~ GOTO 774
  IF ~~ THEN REPLY #227934 /* ~If your idea of fun is endless battles and looting bodies, I see your point.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
SetGlobal("ROMANCE_PT2","LOCALS",2)
~ GOTO 775
  IF ~~ THEN REPLY #227935 /* ~Of course you are. You're with me!~ */ DO ~SetGlobal("ROMANCE_PT2","LOCALS",2)
~ GOTO 776
  IF ~~ THEN REPLY #227936 /* ~That's fantastic. Now make me a sandwich.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
SetGlobal("ROMANCE_PT2","LOCALS",2)
~ GOTO 777
END

IF ~~ THEN BEGIN 774 // from: 773.0
  SAY #227937 /* ~That's it? That's all you have to say? I was hoping you enjoyed having me along as well.~ [NEL36] */
  IF ~~ THEN REPLY #227938 /* ~Of course. You're a valuable member of my team.~ */ GOTO 778
  IF ~~ THEN REPLY #227939 /* ~You certainly are different from anyone else I've met.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 779
  IF ~~ THEN REPLY #227940 /* ~What did you want me to say?~ */ GOTO 780
END

IF ~~ THEN BEGIN 775 // from: 773.1
  SAY #227941 /* ~While the blood and pillaging is all very well for some girls, I was thinking more about how it's impossible to guess what will happen from one day to the next.~ [NEL37] */
  IF ~~ THEN REPLY #227942 /* ~All part of the job.~ */ GOTO 781
  IF ~~ THEN REPLY #227943 /* ~That's my favorite part, too. I can't stand a predictable routine.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 782
  IF ~~ THEN REPLY #227944 /* ~On the other hand, if you know what's coming next, you can prepare for it.~ */ GOTO 783
END

IF ~~ THEN BEGIN 776 // from: 773.2
  SAY #227945 /* ~You sound awfully sure of yourself.~ [NEL38] */
  IF ~~ THEN REPLY #227946 /* ~And why not? Don't forget who's leading this operation, honey.~ */ GOTO 784
  IF ~~ THEN REPLY #227947 /* ~Maybe so. I know I feel a lot more confident since you've been around.~ */ GOTO 785
  IF ~~ THEN REPLY #227948 /* ~Well, the truth is that it's all a front. More often than not, I'm terrified.~ */ GOTO 786
END

IF ~~ THEN BEGIN 777 // from: 773.3
  SAY #227949 /* ~And already I have tired of your voice.~ [NEL39] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 778 // from: 774.0
  SAY #227950 /* ~A valuable member of your team? Well, I guess I know where I stand!~ [NEL40] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 779 // from: 774.1
  SAY #227951 /* ~Different how?~ [NEL41] */
  IF ~~ THEN REPLY #227952 /* ~Well, you're prettier than any half-orc I've ever seen.~ */ GOTO 787
  IF ~~ THEN REPLY #227953 /* ~Everybody's different, Neera. That's just how people are.~ */ GOTO 788
  IF ~~ THEN REPLY #227954 /* ~It's your impulsive nature. Maybe "effervescent" is a better word.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 789
END

IF ~~ THEN BEGIN 780 // from: 774.2
  SAY #227955 /* ~If I have to tell you that... oh, never mind!~ [NEL42] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 781 // from: 775.0
  SAY #227956 /* ~Job? You think of our adventures as a job?~ [NEL43] */
  IF ~~ THEN REPLY #227957 /* ~Well, we do our work, we get paid. Sounds like a job to me.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 790
  IF ~~ THEN REPLY #227958 /* ~Not just any job. An awesome job!~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 791
  IF ~~ THEN REPLY #227959 /* ~Speaking of jobs, we should stop yakking and get back to work.~ */ DO ~AddJournalEntry(231615,INFO)
~ GOTO 782
END

IF ~~ THEN BEGIN 782 // from: 781.2 775.1
  SAY #227960 /* ~That's just how I feel! It's not just a question of running and fighting for our lives. It's excitement! It's an adventure!~ [NEL44] */
  IF ~~ THEN REPLY #227961 /* ~Yes, who knows what the future holds for you or me. Or both of us.~ */ GOTO 792
END

IF ~~ THEN BEGIN 783 // from: 775.2
  SAY #227962 /* ~Where's the fun in that? If you want to predict the future, you may as well buy a crystal ball and join a circus.~ [NEL45] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 784 // from: 776.0
  SAY #227963 /* ~Don't worry. If I ever forget, I'm sure you'll remind me.~ [NEL46] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 785 // from: 776.1
  SAY #227964 /* ~Really? I feel the same way. Ever since we met on the road, I've begun feeling more and more like there's nothing I can't do.~ [NEL47] */
  IF ~~ THEN REPLY #227965 /* ~You're right to feel that way. With or without wild magic, you're the kind of woman who can do anything she sets her mind to doing.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 793
  IF ~~ THEN REPLY #227966 /* ~Don't worry, that feeling will pass. It's probably just a wild surge.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 794
  IF ~~ THEN REPLY #227967 /* ~That's the spirit. Now let's get back to the matter at hand.~ */ DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 786 // from: 776.2
  SAY #227968 /* ~You had me thinking you were fearless. I'm sorry to hear it's just a front.~ [NEL48] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 787 // from: 779.0
  SAY #227969 /* ~Prettier than a half-orc?! That's like saying "smarter than a goblin"!~ [NEL49] */
  IF ~~ THEN REPLY #227970 /* ~There, there. I'm sure you're smarter than a goblin, too.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 795
  IF ~~ THEN REPLY #227971 /* ~Don't underestimate those goblins. They're small, but they're crafty.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",2)
~ GOTO 796
  IF ~~ THEN REPLY #227972 /* ~Even a goblin would be smart enough to escape this conversation. It's time to go to that place and do that thing.~ */ DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 788 // from: 779.1
  SAY #227973 /* ~What a stupid thing to say! Of course everybody's different. Otherwise we'd all be the same person. Maybe you should have a healer check that last blow to the head.~ [NEL50] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 789 // from: 779.2
  SAY #227974 /* ~"Effervescent"? Ha! I like that. But let's leave it there for now. I draw the line at "effulgent."~ [NEL51] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 790 // from: 781.0
  SAY #227975 /* ~You sure know how to suck all the romance out of a conversation.~ [NEL52] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 791 // from: 781.1
  SAY #227976 /* ~That sounds better, but still, I'll stick with "adventure."~ [NEL53] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 792 // from: 782.0
  SAY #227977 /* ~I like the sound of that. We should talk more about it... later.~ [NEL54] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 793 // from: 785.0
  SAY #227978 /* ~Thanks for the vote of confidence. I'll keep it in mind the next time I'm deciding whether to fight or run for my life.~ [NEL55] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 794 // from: 785.1
  SAY #227979 /* ~Hahaha! Somehow, I think this feeling will last longer than most of my spells.~ [NEL56] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 795 // from: 787.0
  SAY #227980 /* ~Thanks. Thanks bunches.~ [NEL57] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 796 // from: 787.1
  SAY #227981 /* ~Hahahaha! I think you just dodged an arrow, mister.~ [NEL58] */
  IF ~~ THEN DO ~AddJournalEntry(231615,INFO)
~ EXIT
END

IF WEIGHT #70 ~  InParty(Myself)
Global("NEERA_ROMANCE","GLOBAL",3)
GlobalTimerExpired("NEERAROMANCETIMER","GLOBAL")
Global("ROMANCE_PT3","LOCALS",1)
~ THEN BEGIN 797 // from:
  SAY #227982 /* ~Some days I'm surprised you let me tag along, considering how dangerous my wild magic can be.~ [NEL100] */
  IF ~~ THEN REPLY #227983 /* ~I don't think your wild magic is all that dangerous.~ */ DO ~SetGlobal("ROMANCE_PT3","LOCALS",2)
~ GOTO 798
  IF ~~ THEN REPLY #227984 /* ~The way I see it, the danger is worth the reward.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
SetGlobal("ROMANCE_PT3","LOCALS",2)
~ GOTO 799
  IF ~~ THEN REPLY #227985 /* ~Are you whining about that again?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
SetGlobal("ROMANCE_PT3","LOCALS",2)
~ GOTO 800
END

IF ~~ THEN BEGIN 798 // from: 797.0
  SAY #227986 /* ~Really? Haven't you seen how powerful some of my spells are? That's why those Red Wizards were after me. They wish they were half as powerful as a wild mage.~ [NEL101] */
  IF ~~ THEN REPLY #227987 /* ~What I meant is that it doesn't seem dangerous because you handle it well.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 801
  IF ~~ THEN REPLY #227988 /* ~Your spells are terrific sometimes. Other times... Well, "terrific" has two meanings.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 802
  IF ~~ THEN REPLY #227989 /* ~At least their spells work all the time. That makes them much more dangerous. After all, you're the one who was fleeing THEM.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 803
END

IF ~~ THEN BEGIN 799 // from: 797.1
  SAY #227990 /* ~Are we still talking about my wild magic?~ [NEL102] */
  IF ~~ THEN REPLY #227991 /* ~Yes, of course. What else would we be talking about?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #227992 /* ~You're dangerous in more ways than one. The question is how long you'll make me wait before I see a reward.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 802
  IF ~~ THEN REPLY #227993 /* ~Sorry, what were we talking about? My mind was a hundred leagues away.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 800 // from: 797.2
  SAY #227994 /* ~Whining? Well, forget I said anything.~ [NEL103] */
  IF ~~ THEN DO ~AddJournalEntry(231616,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 801 // from: 798.0
  SAY #227995 /* ~Now you're just flattering me.~ [NEL104] */
  IF ~~ THEN REPLY #227996 /* ~It isn't flattery if it's true.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 806
  IF ~~ THEN REPLY #227997 /* ~Someone once told me flattery might get me somewhere.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 806
  IF ~~ THEN REPLY #227998 /* ~No, I'm not. What's the point of flattering you?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 802 // from: 799.1 798.1
  SAY #227999 /* ~Well, of course! That's what's so great about wild magic. If you can't handle it at its worst, then you certainly don't deserve it at its best.~ [NEL105] */
  IF ~~ THEN REPLY #228000 /* ~Are we still talking about your wild magic?~ */ GOTO 807
  IF ~~ THEN REPLY #228001 /* ~I think the same could be said of you, with or without your wild magic.~ */ GOTO 808
  IF ~  Global("ADOY_MET_PARTY","GLOBAL",1)
~ THEN REPLY #228002 /* ~I see you've taken Adoy's advice to heart. Perhaps you'll be more useful in the future.~ */ GOTO 809
END

IF ~~ THEN BEGIN 803 // from: 798.2
  SAY #228003 /* ~Well, of course I fled! They wanted to study my brain! You'd have run too... if you had anything they wanted to study, which clearly you don't!~ [NEL106] */
  IF ~~ THEN REPLY #220737 /* ~Huh?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
  IF ~~ THEN REPLY #200713 /* ~What?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
  IF ~~ THEN REPLY #228004 /* ~Did I just miss a wild surge?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 804 // from: 815.2 815.1 812.2 812.1 812.0 810.2 810.0 809.2 809.1 809.0 808.1 807.2 807.0 806.0 801.2 799.2 799.0
  SAY #228005 /* ~Ooh! Sometimes I wonder why I even try talking to you!~ [NEL107] */
  IF ~~ THEN REPLY #220737 /* ~Huh?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
  IF ~~ THEN REPLY #200713 /* ~What?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
  IF ~~ THEN REPLY #228004 /* ~Did I just miss a wild surge?~ */ DO ~AddJournalEntry(231616,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 805 // from:
  SAY #228006 /* ~Exactly what kind of reward were you hoping to see?~ [NEL108] */
  IF ~~ THEN REPLY #228007 /* ~Something in gold is always appreciated.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 817
  IF ~~ THEN REPLY #228008 /* ~Come a little closer, and I'll show you.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 811
  IF ~~ THEN REPLY #228009 /* ~Why don't you surprise me?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 811
END

IF ~~ THEN BEGIN 806 // from: 801.1 801.0
  SAY #228010 /* ~Is that so? I'm beginning to think you're trying to handle *me*.~ [NEL109] */
  IF ~~ THEN REPLY #228011 /* ~I wouldn't think of it. You're obviously too hard to handle.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228012 /* ~Now that's an idea. Come a little closer, and I'll give it a try.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 811
  IF ~~ THEN REPLY #228013 /* ~Maybe you're the one who wants to "handle" me.~ */ GOTO 810
END

IF ~~ THEN BEGIN 807 // from: 802.0
  SAY #228014 /* ~We could be. Or we could be talking about something else, if you know what I mean.~ [NEL110] */
  IF ~~ THEN REPLY #228015 /* ~No, I have no clue what you mean.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228016 /* ~I think I know what you mean. Why don't you come a little closer, and we'll see if we can trigger a wild surge?~ */ GOTO 811
  IF ~~ THEN REPLY #228017 /* ~Maybe you should just say what you mean instead of making me guess.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 808 // from: 802.1
  SAY #228018 /* ~Is that really how you feel?~ [NEL111] */
  IF ~~ THEN REPLY #228019 /* ~Come a little closer, and I'll show you just how I feel.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 811
  IF ~~ THEN REPLY #228020 /* ~It's exactly how I feel... Wait. Nope. Sorry. The feeling passed.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228021 /* ~I don't know. Sometimes I feel like I want to say something to you, but then I lose my nerve.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 812
END

IF ~~ THEN BEGIN 809 // from: 802.2
  SAY #228022 /* ~Useful? USEFUL?! Is that all you want me to be?~ [NEL112] */
  IF ~~ THEN REPLY #228023 /* ~Well, it would certainly be an improvement.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228024 /* ~Not just useful, of course. You could be amusing from time to time, too.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228025 /* ~No, that's not what I meant. What I should have said was—~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 810 // from: 806.2
  SAY #228026 /* ~Why do you always have to turn everything back to yourself?! Sometimes I think you're the most conceited man I've ever met!~ [NEL113] */
  IF ~~ THEN REPLY #228027 /* ~See? Once again, I'm top of the list. Is there no end to my accomplishments?~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228028 /* ~No, not conceited. Just confident. Since meeting you, I've never felt more sure of myself.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 813
  IF ~~ THEN REPLY #228029 /* ~Me, conceited? That's rich coming from you. All I ever hear is "wild magic" this and "wild magic" that.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 811 // from: 808.0 807.1 806.1 805.2 805.1
  SAY #228030 /* ~Well, since you put it like that... mmm!~ [NEL114] */
  IF ~~ THEN REPLY #227880 /* ~...~ */ GOTO 814
  IF ~~ THEN REPLY #228031 /* ~See? You're not the only one who's full of surprises.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 813
  IF ~~ THEN REPLY #228032 /* ~Not too bad, for a first attempt.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 815
END

IF ~~ THEN BEGIN 812 // from: 808.2
  SAY #228033 /* ~Lose your nerve? I thought I was talking to a grown-up, not a little boy.~ [NEL115] */
  IF ~~ THEN REPLY #228034 /* ~A boy?~ */ GOTO 804
  IF ~~ THEN REPLY #228035 /* ~Wait—!~ */ GOTO 804
  IF ~~ THEN REPLY #228036 /* ~Hey—!~ */ GOTO 804
END

IF ~~ THEN BEGIN 813 // from: 811.1 810.1
  SAY #228037 /* ~This boldness certainly suits you. The way you take charge sometimes... well, it makes me feel more confident too.~ [NEL116] */
  IF ~~ THEN REPLY #228038 /* ~That's good. Let's talk some more about our feelings.~ */ GOTO 816
  IF ~~ THEN REPLY #228039 /* ~Enough chitchat. Give me some sugar, baby.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 816
  IF ~~ THEN REPLY #228040 /* ~You know, I've got a bedroll, and there's a nice secluded spot right over there...~ */ GOTO 816
END

IF ~~ THEN BEGIN 814 // from: 811.0
  SAY #228041 /* ~Cat got your tongue?~ [NEL117] */
  IF ~~ THEN REPLY #228042 /* ~A wild cat, I think. I know another way to skin a cat. Here, let me show you—~ */ GOTO 816
  IF ~~ THEN REPLY #228043 /* ~No, no, I'm sure I left it around here somewhere. There it is. Just let me take it back—~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",3)
~ GOTO 816
  IF ~~ THEN REPLY #228044 /* ~She sure does. Think she'll give it back if I—?~ */ GOTO 816
END

IF ~~ THEN BEGIN 815 // from: 811.2
  SAY #228045 /* ~What do you mean, "not bad"?~ [NEL118] */
  IF ~~ THEN REPLY #228046 /* ~Maybe I was too quick to judge. Let's try that again to be sure.~ */ GOTO 816
  IF ~~ THEN REPLY #228047 /* ~You know I'm a man of the world. I'm just saying I've had better.~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
  IF ~~ THEN REPLY #228048 /* ~Um, I mean "pretty good"? I was just expecting something a little more "wild."~ */ DO ~SetGlobal("NEERA_ROMANCE","GLOBAL",-1)
~ GOTO 804
END

IF ~~ THEN BEGIN 816 // from: 815.0 814.2 814.1 814.0 813.2 813.1 813.0
  SAY #228049 /* ~No, not just yet. It's so exhilarating, and I'd been hoping for it for some time... let's return to this subject later, when we have more time to enjoy it.~ [NEL119] */
  IF ~~ THEN DO ~AddJournalEntry(231616,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 817 // from: 805.0
  SAY #228050 /* ~You expect ME to give YOU something in gold?! Well, I never...!~ [NEL120] */
  IF ~~ THEN DO ~AddJournalEntry(231616,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 818 // from:
  SAY #228051 /* ~Oh dear! Meklin! So good to see you. I see you weren't hindered by any of my misdirection spells... that were cast purely as a practical joke.~ [NEE3] */
  IF ~~ THEN EXTERN ~NEMEKLIN~ 8
END

IF ~~ THEN BEGIN 819 // from:
  SAY #228052 /* ~Half-elven! And I have no idea what money you're talking about. Well, I may have taken a few coins for the road, but I hardly think that's worth chasing after me...~ [NEE5] */
  IF ~~ THEN EXTERN ~NEMEKLIN~ 9
END

IF ~~ THEN BEGIN 820 // from:
  SAY #228053 /* ~Meklin, this is getting outta hand. I didn't want to take your money, but I was in dire straits! If you didn't look so peaceful in your sleep, I would've woken you up to come with me.~ [NEE7] */
  IF ~  !IsGabber("neera")
~ THEN REPLY #228054 /* ~You took his money and left in the night?~ */ GOTO 821
  IF ~  IsGabber("neera")
~ THEN EXTERN ~NEMEKLIN~ 11
END

IF ~~ THEN BEGIN 821 // from: 820.0
  SAY #228055 /* ~I was gonna pay him back! Eventually! At some point! In the future. If I could find him.~ [NEE8] */
  IF ~~ THEN REPLY #228056 /* ~I think you owe this gentleman some money, Neera.~ */ GOTO 822
  IF ~~ THEN REPLY #228057 /* ~You had no intention of paying back the money, did you?~ */ GOTO 824
  IF ~~ THEN REPLY #228058 /* ~Whatever the case, Neera is with me now. Begone, halfling!~ */ EXTERN ~NEMEKLIN~ 15
END

IF ~~ THEN BEGIN 822 // from: 821.0
  SAY #228059 /* ~Come now, it was just a little gold. What's money between friends?! Chums? Acquaintances?~ [NEE9] */
  IF ~~ THEN GOTO 823
END

IF ~~ THEN BEGIN 823 // from: 822.0
  SAY #228060 /* ~Yes, well, if I had the money I would pay him, but clearly I don't! Look at my clothes! Ragged, filthy, peasant-esque... I spent that money on essentials, and essentials aren't cheap. The money is gone!~ [NEE10] */
  IF ~~ THEN REPLY #228061 /* ~Neera, when we met you were carrying several gemstones of high value.~ */ GOTO 824
  IF ~~ THEN REPLY #228062 /* ~That's true, Meklin. Look at her filthy visage and tell me she has any coin upon her.~ */ EXTERN ~NEMEKLIN~ 11
  IF ~~ THEN REPLY #228063 /* ~This is between you and Meklin, I'm not getting involved in your debts.~ */ GOTO 825
END

IF ~~ THEN BEGIN 824 // from: 823.0 821.1
  SAY #228064 /* ~Listen, if you're gonna be like that, then just string me up right now. Gods, you really don't know how to play along, do you?~ [NEE11] */
  IF ~~ THEN REPLY #228065 /* ~I'm not going to lie for you.~ */ GOTO 825
  IF ~~ THEN REPLY #228066 /* ~Er... yes! What I meant to say was that when I met her she was carrying several... hen bones. From a chicken. And that was very sad.~ */ EXTERN ~NEMEKLIN~ 12
END

IF ~~ THEN BEGIN 825 // from: 824.0 823.2
  SAY #228067 /* ~Then we are at an impasse! I have no money to give you, Meklin. And clearly I don't wish to be scalped.~ [NEE12] */
  IF ~~ THEN REPLY #228068 /* ~What are you going to do, Meklin?~ */ EXTERN ~NEMEKLIN~ 10
  IF ~~ THEN REPLY #228069 /* ~Wait, what if I were to pay Neera's debt?~ */ EXTERN ~NEMEKLIN~ 13
END

IF WEIGHT #71 ~  AreaCheck("BG0200")
Global("NEMEKIN_ENCOUNTER","BG0200",1)
~ THEN BEGIN 826 // from:
  SAY #228070 /* ~I am very, very, very, very, very sorry about what just happened. I didn't want to steal from Meklin; I just had no other choice. I wish things had turned out differently.~ [NEE22] */
  IF ~~ THEN REPLY #228071 /* ~The important thing is to learn from your mistakes and not to repeat them.~ */ DO ~SetGlobal("NEMEKIN_ENCOUNTER","BG0200",2)
~ GOTO 827
  IF ~~ THEN REPLY #228072 /* ~At least I've learned a lesson in keeping an eye on my coinpurse.~ */ DO ~SetGlobal("NEMEKIN_ENCOUNTER","BG0200",2)
~ GOTO 829
  IF ~~ THEN REPLY #228073 /* ~Once a thief, always a thief.~ */ DO ~SetGlobal("NEMEKIN_ENCOUNTER","BG0200",2)
~ GOTO 829
END

IF ~~ THEN BEGIN 827 // from: 826.0
  SAY #228074 /* ~I'm glad you see it my way. Now, if we run into a stocky dwarf by the name of Orthan with a burn on his forehead, just pretend I'm a deaf mute and you found me in a ditch.~ [NEE23] */
  IF ~~ THEN REPLY #228075 /* ~Neera!~ */ GOTO 828
END

IF ~~ THEN BEGIN 828 // from: 827.0
  SAY #228076 /* ~Kidding!~ [NEE24] */
  IF ~  Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231611,INFO)
~ EXIT
  IF ~  !Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231610,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 829 // from: 826.2 826.1
  SAY #228077 /* ~I am not a thief! It was a momentary lapse of ethics in a life-or-death situation. I'm on the straight and narrow, I swear it!~ [NEE25] */
  IF ~~ THEN REPLY #228078 /* ~Very well.~ */ GOTO 830
  IF ~~ THEN REPLY #228079 /* ~I remain unconvinced, Neera.~ */ GOTO 831
END

IF ~~ THEN BEGIN 830 // from: 831.0 829.0
  SAY #228080 /* ~Right. Let us continue onward.~ [NEE26] */
  IF ~  Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231611,INFO)
~ EXIT
  IF ~  !Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231610,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 831 // from: 829.1
  SAY #228081 /* ~And I'm sure you've never done anything wrong? No one is perfect, not even you. Let's go find a seer and see whether we can conjure up an image of you kicking a small dog.~ [NEE28] */
  IF ~~ THEN REPLY #228082 /* ~You have a point, Neera. Let us forget this matter for now.~ */ GOTO 830
  IF ~~ THEN REPLY #228083 /* ~Even if I have, I wouldn't let my past dealings catch up with me like you have.~ */ GOTO 832
  IF ~~ THEN REPLY #228084 /* ~Dogs aren't people like you and me!~ */ GOTO 833
END

IF ~~ THEN BEGIN 832 // from: 831.1
  SAY #228085 /* ~I have a feeling you're gonna eat those words someday.~ [NEE29] */
  IF ~  Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231611,INFO)
~ EXIT
  IF ~  !Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231610,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 833 // from: 831.2
  SAY #228086 /* ~Ooh! You are TERRIBLE. I hope that when you finally die, you spend eternity being gnawed on by hell hounds.~ [NEE30] */
  IF ~~ THEN REPLY #228087 /* ~Hell hounds are just a myth.~ */ GOTO 834
END

IF ~~ THEN BEGIN 834 // from: 833.0
  SAY #228088 /* ~Hell hounds are not a myth!~ [NEE31] */
  IF ~~ THEN REPLY #228089 /* ~Yes, they are. They're a myth used to scare children into being nice to dogs.~ */ GOTO 835
END

IF ~~ THEN BEGIN 835 // from: 834.0
  SAY #228090 /* ~No! They're real, and they breathe fire! And they come from the Nine Hells! They can melt iron bars!~ [NEE32] */
  IF ~~ THEN REPLY #228091 /* ~Oh, you're right. That sounds totally real.~ */ GOTO 836
END

IF ~~ THEN BEGIN 836 // from: 835.0
  SAY #228092 /* ~Shut up. I hate you.~ [NEE33] */
  IF ~  Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231611,INFO)
~ EXIT
  IF ~  !Dead("NEMEKLIN")
~ THEN DO ~AddJournalEntry(231610,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 837 // from:
  SAY #228093 /* ~I think that means we're getting close. Unless that squirrel had a crow for a father, I'd say it was recently polymorphed.~ [NEF2] */
  IF ~~ THEN REPLY #228094 /* ~So we must be getting close.~ */ DO ~SetGlobal("SQUIRREL","OH2000",2)
~ GOTO 838
  IF ~~ THEN REPLY #228095 /* ~Why would he turn a crow into a squirrel? Maybe he hasn't learned how to control his magic after all.~ */ DO ~SetGlobal("SQUIRREL","OH2000",2)
~ GOTO 839
  IF ~~ THEN REPLY #228096 /* ~Do you really think a mage who turns birds into squirrels can help you?~ */ DO ~SetGlobal("SQUIRREL","OH2000",2)
~ GOTO 840
END

IF ~~ THEN BEGIN 838 // from: 837.0
  SAY #228097 /* ~Did he also turn you into a parrot? That's what I just said.~ [NEF3] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 839 // from: 837.1
  SAY #228098 /* ~Maybe the squirrel was annoying him with questions about his magical talents.~ [NEF4] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 840 // from: 837.2
  SAY #228099 /* ~That all depends on whether he meant to turn the crow into a squirrel.~ [NEF5] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 841 // from:
  SAY #228100 /* ~Hey! Just because my magic is a little capricious doesn't make me crazy. Besides, <CHARNAME>, I think this man has experienced something awful.~ [NEK3] */
  IF ~~ THEN REPLY #228101 /* ~You're right, Neera. Go on, stranger. Tell us what happened.~ */ EXTERN ~NEMAGREB~ 2
  IF ~~ THEN REPLY #228102 /* ~You aren't going to make this easy, are you, stranger? Spit it out, and I'll do my best to make sense of it.~ */ EXTERN ~NEMAGREB~ 2
  IF ~~ THEN REPLY #228103 /* ~Go on. Not you, Neera. The new guy.~ */ EXTERN ~NEMAGREB~ 2
END

IF ~~ THEN BEGIN 842 // from:
  SAY #228104 /* ~Adoy! That's who we're looking for, isn't it, <CHARNAME>? Wait a second, Magreb. What do you mean by "was"?~ [NEK9] */
  IF ~~ THEN EXTERN ~NEMAGREB~ 7
END

IF ~~ THEN BEGIN 843 // from:
  SAY #228105 /* ~<CHARNAME>, I think this might be Adoy.~ [NER3] */
  IF ~~ THEN EXTERN ~NEADOY~ 2
END

IF ~~ THEN BEGIN 844 // from:
  SAY #228106 /* ~Don't be such a mercenary, <CHARNAME>! Are you the wild mage known as Adoy?~ [NER4] */
  IF ~~ THEN EXTERN ~NEADOY~ 2
END

IF ~~ THEN BEGIN 845 // from:
  SAY #228107 /* ~It's true. I hoped you could... teach me how to control my magic.~ [NER6] */
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 12
  IF ~  !InParty("DYNAHEIR")
~ THEN EXTERN ~NEADOY~ 3
END

IF ~~ THEN BEGIN 846 // from:
  SAY #228108 /* ~Don't tell me we've come all this way for nothing!~ [NER9] */
  IF ~~ THEN EXTERN ~NEADOY~ 4
END

IF ~~ THEN BEGIN 847 // from:
  SAY #228109 /* ~He's not joking, let me tell you.~ [NER16] */
  IF ~~ THEN EXTERN ~NEADOY~ 9
END

IF ~~ THEN BEGIN 848 // from:
  SAY #228110 /* ~Half-elf! What is wrong with you?~ [NER20] */
  IF ~~ THEN EXTERN ~NEEKANDO~ 11
END

IF ~~ THEN BEGIN 849 // from:
  SAY #228111 /* ~Yeah, and I didn't even finish school, so no tests for me, either.~ [NER23] */
  IF ~~ THEN REPLY #228112 /* ~Right. Ekandor, you teleport right back to Thay. You won't have either of these wild mages.~ */ EXTERN ~NEEKANDO~ 12
  IF ~~ THEN REPLY #228113 /* ~The only thing being tested here is my patience. I've had enough of this, Ekandor.~ */ EXTERN ~NEEKANDO~ 12
  IF ~~ THEN REPLY #228114 /* ~I don't suppose we can work out some sort of arrangement, can we, Ekandor?~ */ EXTERN ~NEEKANDO~ 13
END

IF ~~ THEN BEGIN 850 // from:
  SAY #228115 /* ~Well, one wild mage and one aged rabbit.~ [NES3] */
  IF ~~ THEN EXTERN ~NEADOY~ 14
END

IF ~~ THEN BEGIN 851 // from:
  SAY #228116 /* ~Can we not talk about having our brains studied, please? Pretty please?~ [NES6] */
  IF ~~ THEN EXTERN ~NEADOY~ 16
END

IF ~~ THEN BEGIN 852 // from:
  SAY #228117 /* ~Come on, old man. Make with the wisdom. No one gets to be your age without learning a few things. You must know how to avoid the crazy surges of power. You're holding out on me!~ [NES11] */
  IF ~~ THEN EXTERN ~NEADOY~ 20
END

IF ~~ THEN BEGIN 853 // from:
  SAY #228118 /* ~That can't be all there is. You'd never have survived to be so very, very old without something up your sleeve.~ [NES14] */
  IF ~~ THEN EXTERN ~NEADOY~ 22
END

IF ~~ THEN BEGIN 854 // from:
  SAY #228119 /* ~Oh, joy. After coming all this way, I get a belt! It's not even my color.~ [NES18] */
  IF ~~ THEN EXTERN ~NEADOY~ 25
END

IF WEIGHT #72 ~  Global("AdoyLeft","OH2010",2)
~ THEN BEGIN 855 // from:
  SAY #228120 /* ~No! It's not fair! I've traveled so far and overcome so many obstacles, all on my own, and he just disappears!~ [NES22] */
  IF ~~ THEN REPLY #228121 /* ~Ahem.~ */ DO ~SetGlobal("AdoyLeft","OH2010",3)
~ GOTO 856
  IF ~~ THEN REPLY #228122 /* ~Excuse me, but—~ */ DO ~SetGlobal("AdoyLeft","OH2010",3)
~ GOTO 856
  IF ~~ THEN REPLY #228123 /* ~Things wouldn't have turned out so well if you'd been all on your own.~ */ DO ~SetGlobal("AdoyLeft","OH2010",3)
~ GOTO 856
END

IF ~~ THEN BEGIN 856 // from: 855.2 855.1 855.0
  SAY #228124 /* ~Oh, of course you helped, <CHARNAME>. I haven't forgotten that it's all about YOU.~ [NES23] */
  IF ~  InParty("NEERA")
~ THEN DO ~AddexperienceParty(750)
AddJournalEntry(231618,QUEST_DONE)
EraseJournalEntry(231613)
~ EXIT
  IF ~  !InParty("NEERA")
~ THEN DO ~AddexperienceParty(750)
AddJournalEntry(231618,QUEST_DONE)
EraseJournalEntry(231613)
~ EXIT
END

IF ~~ THEN BEGIN 857 // from:
  SAY #230421 /* ~Don't listen to anything that big bully says. You know you can trust me.~ [NE_30421] */
  IF ~~ THEN EXTERN ~DORNJ~ 1286
END

IF ~~ THEN BEGIN 858 // from:
  SAY #230568 /* ~This isn't funny, <CHARNAME>. I didn't say—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1337
END

IF ~~ THEN BEGIN 859 // from: 717.2
  SAY #231701 /* ~You don't need to rub it in. I know better than anyone the harm I caused.~ */
  IF ~~ THEN REPLY #231702 /* ~So you blame yourself?~ */ GOTO 718
  IF ~~ THEN REPLY #231703 /* ~You can't blame yourself.~ */ GOTO 718
END

IF ~~ THEN BEGIN 860 // from: 719.1 719.0 718.1 718.0
  SAY #231704 /* ~It's kind of you to put it that way. There are times when I've wanted to think that way. It was confusing, and I didn't mean to hurt anyone. Still...~ */
  IF ~~ THEN GOTO 862
END

IF ~~ THEN BEGIN 861 // from: 719.2 718.2
  SAY #231705 /* ~Horrible, I know.~ */
  IF ~~ THEN GOTO 862
END

IF ~~ THEN BEGIN 862 // from: 861.0 860.0
  SAY #231706 /* ~Afterwards, I ran into the woods and couldn't bear to go back to face the consequences. I snuck back into the village now and then for food, and once to leave a note for my parents, but eventually I had to leave.~ */
  IF ~~ THEN GOTO 721
END

IF ~~ THEN BEGIN 863 // from:
  SAY #231860 /* ~Hehehe!~ [NE_31860] */
  IF ~~ THEN EXTERN ~BAELOTH~ 1
END

IF ~~ THEN BEGIN 864 // from:
  SAY #231872 /* ~Is he doing that on purpose?~ [NE_31872] */
  IF ~~ THEN REPLY #231873 /* ~Shush, Neera.~ */ EXTERN ~BAELOTH~ 5
  IF ~~ THEN REPLY #231874 /* ~I hope so!~ */ EXTERN ~BAELOTH~ 5
END

IF ~~ THEN BEGIN 865 // from:
  SAY #231877 /* ~He must be! Five words! Did you hear that?~ [NE_31877] */
  IF ~  !InParty("DORN")
~ THEN EXTERN ~BAELOTH~ 6
  IF ~  InParty("DORN")
~ THEN EXTERN ~DORNJ~ 1346
END

IF ~~ THEN BEGIN 866 // from:
  SAY #231891 /* ~Two!~ [NE_31891] */
  IF ~~ THEN EXTERN ~BAELOTH~ 11
END

IF ~~ THEN BEGIN 867 // from:
  SAY #231895 /* ~Is no one else catching this? These are great!~ [NE_31895] */
  IF ~~ THEN EXTERN ~BAELOTH~ 12
END

IF ~~ THEN BEGIN 868 // from:
  SAY #231908 /* ~Oooh! That was a good one! Wait, how is djinn spelled?~ [NE_31908] */
  IF ~  !InParty("RASAAD")
~ THEN EXTERN ~BAELOTH~ 18
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1238
END

IF ~~ THEN BEGIN 869 // from:
  SAY #231920 /* ~Wait, there's a list? Who even keeps track of that? Is there someone I can write to? This isn't one of those "Who's Who in Faerûn" scams, is it?~ [NE_31920] */
  IF ~  !InParty("TIAX")
!InParty("EDWIN")
~ THEN EXTERN ~BAELOTH~ 23
  IF ~  InParty("TIAX")
!InParty("EDWIN")
~ THEN EXTERN ~TIAXJ~ 10
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 259
END

IF ~~ THEN BEGIN 870 // from:
  SAY #231860 /* ~Hehehe!~ [NE_31860] */
  IF ~~ THEN EXTERN ~BAELOTH~ 1
END

IF ~~ THEN BEGIN 871 // from:
  SAY #231872 /* ~Is he doing that on purpose?~ [NE_31872] */
  IF ~~ THEN REPLY #231873 /* ~Shush, Neera.~ */ EXTERN ~BAELOTH~ 5
  IF ~~ THEN REPLY #231874 /* ~I hope so!~ */ EXTERN ~BAELOTH~ 5
END

IF ~~ THEN BEGIN 872 // from:
  SAY #231877 /* ~He must be! Five words! Did you hear that?~ [NE_31877] */
  IF ~  !InParty("DORN")
~ THEN EXTERN ~BAELOTH~ 6
  IF ~  InParty("DORN")
~ THEN EXTERN ~DORNJ~ 1346
END

IF ~~ THEN BEGIN 873 // from:
  SAY #231891 /* ~Two!~ [NE_31891] */
  IF ~~ THEN EXTERN ~BAELOTH~ 11
END

IF ~~ THEN BEGIN 874 // from:
  SAY #231895 /* ~Is no one else catching this? These are great!~ [NE_31895] */
  IF ~~ THEN EXTERN ~BAELOTH~ 12
END

IF ~~ THEN BEGIN 875 // from:
  SAY #231908 /* ~Oooh! That was a good one! Wait, how is djinn spelled?~ [NE_31908] */
  IF ~  !InParty("RASAAD")
~ THEN EXTERN ~BAELOTH~ 18
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1238
END

IF ~~ THEN BEGIN 876 // from:
  SAY #231920 /* ~Wait, there's a list? Who even keeps track of that? Is there someone I can write to? This isn't one of those "Who's Who in Faerûn" scams, is it?~ [NE_31920] */
  IF ~  !InParty("TIAX")
!InParty("EDWIN")
~ THEN EXTERN ~BAELOTH~ 23
  IF ~  InParty("TIAX")
!InParty("EDWIN")
~ THEN EXTERN ~TIAXJ~ 10
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 259
END

IF ~~ THEN BEGIN 877 // from:
  SAY #246167 /* ~Okay. I'm good. Good. I'm good. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 878 // from:
  SAY #235963 /* ~Be quiet, <CHARNAME>! I actually need some turnip juice—it's part of the potion that'll keep Adoy quiet— Oh, don't YOU start in on me now, Adoy. I'm doing this.~ [BD35963] */
  IF ~~ THEN EXTERN ~BDWILHEL~ 1
END

IF ~~ THEN BEGIN 879 // from:
  SAY #235965 /* ~Wait! I actually need some turnip juice.~ [BD35965] */
  IF ~~ THEN EXTERN ~BDWILHEL~ 2
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~SAFANJ~ 85
END

IF ~~ THEN BEGIN 880 // from:
  SAY #235967 /* ~Well, I do.~ [BD35967] */
  IF ~~ THEN EXTERN ~BDWILHEL~ 2
END

IF ~~ THEN BEGIN 881 // from:
  SAY #235984 /* ~I'll take one.~ [BD35984] */
  IF ~~ THEN EXTERN ~BDWILHEL~ 4
END

IF ~~ THEN BEGIN 882 // from:
  SAY #235986 /* ~One turnip juice, please.~ [BD35986] */
  IF ~~ THEN EXTERN ~BDWILHEL~ 5
END

IF ~~ THEN BEGIN 883 // from:
  SAY #240056 /* ~Oooh, I smell magic.~ [BD40056] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 327
END

IF WEIGHT #73 ~  Global("bd_neera_plot","global",5)
Global("bd_neera_has_feather","global",0)
HasItem("bdfeath","Vichand_stash")
Range("Vichand_stash",15)
!See([ENEMY])
OR(4)
Global("bd_crusaders_retreat","bd2000",1)
Dead("bdvichan")
StateCheck("bdvichan",STATE_SLEEPING)
!Range("bdvichan",25)
OR(4)
Dead("bdbsent1")
!Range("bdbsent1",25)
!Global("bd_guard_stash","bd2000",2)
Global("bd_crusaders_retreat","bd2000",1)
~ THEN BEGIN 884 // from:
  SAY #236008 /* ~Look, there on that cart.~ */
  IF ~~ THEN REPLY #236009 /* ~What is it? ~ */ GOTO 888
  IF ~~ THEN REPLY #236010 /* ~It's—it's a cart filled with scrolls! Gods, what wonders you have shown me!~ */ GOTO 885
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #236011 /* ~Moldy papers and other useless junk. ~ */ EXTERN ~EDWINJ~ 331
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #236011 /* ~Moldy papers and other useless junk. ~ */ GOTO 889
END

IF ~~ THEN BEGIN 885 // from: 884.1
  SAY #236012 /* ~Stow the sarcasm, <CHARNAME>. That feather there is from a planetar's wing. YOU CAN STOW THE SARCASM TOO, ADOY!~ [BD36012] */
  IF ~~ THEN GOTO 886
END

IF ~~ THEN BEGIN 886 // from: 885.0
  SAY #236013 /* ~That feather's one more stone on the path to get Adoy out of—wherever he is, and out of my life at the same time.~ [BD36013] */
  IF ~~ THEN GOTO 887
END

IF ~~ THEN BEGIN 887 // from: 889.0 888.0 886.0
  SAY #236014 /* ~Yeah? Well, I won't miss YOU either.~ [BD36014] */
  IF ~~ THEN DO ~ActionOverride("Vichand_stash",DestroyItem("bdfeath"))
GiveItemCreate("bdfeath","neera",0,0,0)
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
  IF ~  Global("bd_neera_items","global",1)
~ THEN DO ~ActionOverride("Vichand_stash",DestroyItem("bdfeath"))
GiveItemCreate("bdfeath","neera",0,0,0)
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~ActionOverride("Vichand_stash",DestroyItem("bdfeath"))
GiveItemCreate("bdfeath","neera",0,0,0)
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
END

IF ~~ THEN BEGIN 888 // from: 884.0
  SAY #236015 /* ~A feather from a planetar's wing. One more—SHUT UP, SHUT UP, SHUT UP, SHUT UP! Sorry. As I was TRYING to say, the feather's the next stone on my path to getting THIS guy OUT OF MY HEAD.~ [BD36015] */
  IF ~~ THEN GOTO 887
END

IF ~~ THEN BEGIN 889 // from: 884.3
  SAY #236018 /* ~I don't care about the moldy papers. It's the feather there that I want. The feather of a planetar's—OH, FOR THE LOVE OF ALL THAT'S HOLY, WILL YOU PLEASE SHUT UP? Sorry. As I was TRYING to say, the feather's the next stone on my path to getting THIS guy OUT OF MY HEAD.~ [BD36018] */
  IF ~~ THEN GOTO 887
END

IF WEIGHT #74 ~  Global("bd_neera_has_feather","global",0)
OR(2)
Global("bd_neera_plot","global",5)
Global("bd_neera_plot","global",11)
PartyHasItem("BDFEATH")
~ THEN BEGIN 890 // from:
  SAY #236165 /* ~Yes! One step closer to getting rid of a certain someone. You know who I'm talking about, Adoy...~ [BD36165] */
  IF ~~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
  IF ~  Global("bd_neera_items","global",1)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
  IF ~  Global("bd_neera_items","global",3)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
AddJournalEntry(259546,QUEST)
DisplayStringHead(Myself,236026)
~ EXIT
END

IF WEIGHT #75 ~  Global("bd_neera_plot","global",1)
!HasItem("bdfeath",Myself)
~ THEN BEGIN 891 // from:
  SAY #236652 /* ~Hey, before we leave, I don't suppose you'd happen to have a feather from a planetar's wing on you, by any chance?~ [BD36652] */
  IF ~~ THEN REPLY #236653 /* ~I do, actually. ~ */ DO ~SetGlobal("bd_neera_plot","global",5)
~ GOTO 892
  IF ~  PartyHasItem("bdfeath")
~ THEN REPLY #236654 /* ~I've got one, but what in Toril would you want with such a thing? ~ */ DO ~SetGlobal("bd_neera_plot","global",5)
~ GOTO 894
  IF ~  !PartyHasItem("bdfeath")
~ THEN REPLY #236655 /* ~Sorry, no. ~ */ DO ~SetGlobal("bd_neera_plot","global",5)
~ GOTO 898
END

IF ~~ THEN BEGIN 892 // from: 891.0
  SAY #236656 /* ~Really?~ [BD36656] */
  IF ~~ THEN REPLY #236657 /* ~No, not really. Sorry. ~ */ GOTO 893
  IF ~~ THEN REPLY #236658 /* ~No. What in the hells would I do with a feather from a planetar's wing? Tickle a deva? ~ */ GOTO 893
  IF ~  PartyHasItem("bdfeath")
~ THEN REPLY #236659 /* ~Yes. A Red Wizard in the crusade camp had one. Why do you want it? ~ */ GOTO 898
END

IF ~~ THEN BEGIN 893 // from: 892.1 892.0
  SAY #236664 /* ~It's people like you that make me appreciate things like Adoy, you know that?~ [BD36664] */
  IF ~~ THEN GOTO 897
END

IF ~~ THEN BEGIN 894 // from: 891.1
  SAY #236660 /* ~You've got one? That's FANTASTIC.~ */
  IF ~~ THEN REPLY #236661 /* ~Here, take it. But why do you want it?~ */ DO ~TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
~ GOTO 898
  IF ~~ THEN REPLY #236662 /* ~It can be yours for just 50 gold pieces. ~ */ GOTO 895
END

IF ~~ THEN BEGIN 895 // from: 894.1
  SAY #236695 /* ~Done. Hand it over.~ */
  IF ~~ THEN REPLY #236663 /* ~Here you go. Out of curiosity, why do you need it? ~ */ DO ~TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
GiveGoldForce(50)
AddJournalEntry(259546,QUEST)
~ GOTO 898
  IF ~~ THEN REPLY #260751 /* ~Patience, Neera. Good things come to those who wait. Here's your feather.~ */ DO ~TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
GiveGoldForce(50)
AddJournalEntry(259546,QUEST)
~ GOTO 896
END

IF ~~ THEN BEGIN 896 // from: 895.1
  SAY #260752 /* ~I don't know how much longer I CAN wait. I'm losing my mind here. Actually, it's worse than losing my mind—I've gained a second mind.~ */
  IF ~~ THEN GOTO 898
END

IF ~~ THEN BEGIN 897 // from: 893.0
  SAY #236665 /* ~NO, ADOY, I DO NOT APPRECIATE YOU AT ALL. IT'S ALL RELATIVE.~ [BD36665] */
  IF ~~ THEN GOTO 898
END

IF ~~ THEN BEGIN 898 // from: 897.0 896.0 895.0 894.0 892.2 891.2
  SAY #236666 /* ~I'm trying to get the ingredients for a—hey, I'm tryin' to TALK here—for a potion that'll SHUT HIM THE HELLS UP. Him being Adoy. The voice in my head THAT NEVER STOPS TALKING.~ [BD36666] */
  IF ~~ THEN DO ~AddJournalEntry(259542,QUEST)
~ GOTO 899
END

IF ~~ THEN BEGIN 899 // from: 898.0
  SAY #236667 /* ~Besides the feather, I need dead water from beneath Boareskyr Bridge—that's why I came here in the first place. I also need the leg of a seven-legged spider.~ [BD36667] */
  IF ~~ THEN GOTO 902
  IF ~  IsValidForPartyDialogue("MINSC")
!PartyHasItem("bdspider")
~ THEN EXTERN ~MINSCJ~ 358
  IF ~  IsValidForPartyDialogue("VOGHILN")
!PartyHasItem("bdspider")
~ THEN EXTERN ~BDVOGHIJ~ 18
END

IF ~~ THEN BEGIN 900 // from:
  SAY #236669 /* ~Honestly? That is so, so great!~ [BD36721] */
  IF ~~ THEN GOTO 902
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 358
END

IF ~~ THEN BEGIN 901 // from:
  SAY #236671 /* ~Uh, before, I think.~ [BD36671] */
  IF ~~ THEN GOTO 902
END

IF ~~ THEN BEGIN 902 // from: 901.0 900.0 899.0
  SAY #236672 /* ~I also need some belladonna, a potion of perception, and the juice of one turnip.~ [BD36672] */
  IF ~  !IsValidForPartyDialogue("safana")
PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #236673 /* ~I came across a potion of perception not too long ago.~ */ GOTO 907
  IF ~  IsValidForPartyDialogue("safana")
PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #236673 /* ~I came across a potion of perception not too long ago.~ */ EXTERN ~SAFANJ~ 72
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #236070 /* ~It seems Tymora smiles upon you, Neera. I've actually got a seven-legged spider leg. Here, take it.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259551,QUEST)
~ GOTO 1154
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270630 /* ~As it happens, I do have some turnip juice.~ */ DO ~TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #237906 /* ~I have found a belladonna flower.~ */ DO ~TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #236549 /* ~I did find a feather from a planetar's wing. ~ */ DO ~TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("misc1i")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270635 /* ~I have this belladonna flower I picked up on an island of werewolves...~ */ GOTO 903
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259553,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259553,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259552,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259553,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259546,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
TakePartyItem("bdfeath")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
PartyHasItem("bdfeath")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
TakePartyItem("bdjuice")
TakePartyItem("bdbellad")
TakePartyItem("bdfeath")
TakePartyItemNum("potn39",1)
DestroyItem("potn39")
DestroyItem("bdspider")
DestroyItem("bdjuice")
DestroyItem("bdbellad")
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",5)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_feather","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259546,QUEST)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 909
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #236675 /* ~I'm sure you'll find them, Neera. ~ */ GOTO 904
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
!PartyHasItem("bdfeath")
~ THEN REPLY #236676 /* ~I don't have any of those things, but stick with me and we'll find them, I promise. ~ */ GOTO 904
END

IF ~~ THEN BEGIN 903 // from: 902.6
  SAY #270636 /* ~I need FRESH belladonna, not some dried up old herb you found ages ago. ~ */
  IF ~~ THEN REPLY #236675 /* ~I'm sure you'll find them, Neera. ~ */ GOTO 904
END

IF ~~ THEN BEGIN 904 // from: 923.0 905.0 903.0 902.34 902.33
  SAY #236677 /* ~I hope you're right, <CHARNAME>. I hope you're right SOON.~ [BD36677] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 905 // from: 910.0 907.1 907.0 902.31 902.30 902.29 902.28 902.27 902.26 902.25 902.24 902.23 902.22 902.21 902.20 902.19 902.18 902.17 902.16 902.15 902.14 902.13 902.12 902.11 902.10 902.9 902.8 902.7 902.5 902.4 902.3
  SAY #236678 /* ~I hope this isn't too forward, but I think I may be in love with you.~ [BD36678] */
  IF ~  !Global("bd_neera_has_belladonna","global",1)
!Global("bd_neera_has_feather","global",1)
!Global("bd_neera_has_potion","global",1)
!Global("bd_neera_has_juice","global",1)
!Global("bd_neera_has_spider","global",1)
~ THEN REPLY #236679 /* ~We'll find everything else you need. I promise.~ */ GOTO 904
  IF ~~ THEN REPLY #236680 /* ~All right-thinking people should be.~ */ GOTO 911
END

IF ~~ THEN BEGIN 906 // from:
  SAY #236682 /* ~I'm a half-elf, lady. And I've got more than enough grating voices in my head right now, so I'll thank you for not adding yours to the din.~ [BD36682] */
  IF ~~ THEN GOTO 907
END

IF ~~ THEN BEGIN 907 // from: 906.0 902.0
  SAY #236683 /* ~You'll give me the potion, <CHARNAME>?~ [BD36683] */
  IF ~  !PartyHasItem("potn39")
~ THEN REPLY #236684 /* ~I will, just as soon as I get ahold of it.~ */ GOTO 905
  IF ~  PartyHasItem("potn39")
~ THEN REPLY #236685 /* ~Of course. ~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259552,QUEST)
~ GOTO 905
  IF ~  PartyHasItem("potn39")
~ THEN REPLY #236686 /* ~For an even exchange, I will.~ */ GOTO 908
END

IF ~~ THEN BEGIN 908 // from: 907.2
  SAY #236687 /* ~Done. Hand it over. ~ */
  IF ~~ THEN DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
GiveItemCreate("potn34",Player1,1,0,0)
AddJournalEntry(259552,QUEST)
~ GOTO 909
END

IF ~~ THEN BEGIN 909 // from: 908.0 902.32
  SAY #236688 /* ~Oh yeah. This'll do JUST fine... Enjoy your time in my head, Adoy. It's nearly over.~ [BD36688] */
  IF ~~ THEN GOTO 910
END

IF ~~ THEN BEGIN 910 // from: 909.0
  SAY #236689 /* ~Thanks, <CHARNAME>. I really appreciate this. You have no idea how much.~ [BD36689] */
  IF ~~ THEN GOTO 905
END

IF ~~ THEN BEGIN 911 // from: 923.1 905.1
  SAY #236690 /* ~Bear in mind that you're talking to a person who hears voices in her head.~ [BD36690] */
  IF ~~ THEN GOTO 912
END

IF ~~ THEN BEGIN 912 // from: 911.0
  SAY #236691 /* ~One voice, anyway. One IRRITATING, AGGRAVATING, UTTERLY APPALLING VOICE!~ [BD36691] */
  IF ~~ THEN EXIT
END

IF WEIGHT #76 ~  Global("bd_neera_plot","global",1)
HasItem("bdfeath",Myself)
~ THEN BEGIN 913 // from:
  SAY #236713 /* ~A feather from a planetar's wing? It's like you're reading my mind, <CHARNAME>.~ [BD36713] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",5)
DestroyItem("bdfeath")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_feather","global",1)
AddJournalEntry(259546,QUEST)
~ GOTO 914
END

IF ~~ THEN BEGIN 914 // from: 913.0
  SAY #236714 /* ~I don't mind that so much when it's you doing it, UNLIKE SOME OTHER PEOPLE I COULD MENTION. WHY, YES, ADOY, I'M TALKING ABOUT YOU.~ [BD36714] */
  IF ~~ THEN REPLY #236715 /* ~Reading your mind? I don't understand.~ */ GOTO 916
  IF ~~ THEN REPLY #236716 /* ~Read your mind? No, no, no. I don't know how you think, and I don't WANT to know.~ */ GOTO 915
END

IF ~~ THEN BEGIN 915 // from: 914.1
  SAY #236717 /* ~Good move. You probably couldn't handle what's in there. Gods know I have trouble with it, and I'm mostly used to it now. With one exception, obviously.~ [BD36717] */
  IF ~~ THEN GOTO 916
END

IF ~~ THEN BEGIN 916 // from: 915.0 914.0
  SAY #236718 /* ~I'm trying to get the ingredients for a—hey, I'm trying to TALK here—for the potion that'll SHUT HIM THE HELLS UP. A feather is one of them.~ [BD36718] */
  IF ~~ THEN DO ~AddJournalEntry(259542,QUEST)
~ GOTO 917
END

IF ~~ THEN BEGIN 917 // from: 916.0
  SAY #236719 /* ~Besides the feather, I need dead water from beneath Boareskyr Bridge—that's why I came here in the first place. I also need a leg of a seven-legged spider.~ [BD36719] */
  IF ~~ THEN GOTO 920
  IF ~  IsValidForPartyDialogue("MINSC")
!PartyHasItem("bdspider")
~ THEN EXTERN ~MINSCJ~ 359
  IF ~  IsValidForPartyDialogue("VOGHILN")
!PartyHasItem("bdspider")
~ THEN EXTERN ~BDVOGHIJ~ 19
END

IF ~~ THEN BEGIN 918 // from:
  SAY #236721 /* ~Honestly? That is so, so great!~ [BD36721] */
  IF ~~ THEN GOTO 920
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 359
END

IF ~~ THEN BEGIN 919 // from:
  SAY #236722 /* ~Before, I think.~ [BD36722] */
  IF ~~ THEN GOTO 920
END

IF ~~ THEN BEGIN 920 // from: 919.0 918.0 917.0
  SAY #236723 /* ~I also need some belladonna, a potion of perception, and the juice of one turnip.~ [BD36723] */
  IF ~  !IsValidForPartyDialogue("safana")
PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #236673 /* ~I came across a potion of perception not too long ago.~ */ GOTO 925
  IF ~  IsValidForPartyDialogue("safana")
PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #236673 /* ~I came across a potion of perception not too long ago.~ */ EXTERN ~SAFANJ~ 73
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #236070 /* ~It seems Tymora smiles upon you, Neera. I've actually got a seven-legged spider leg. Here, take it.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259551,QUEST)
~ GOTO 1154
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #270630 /* ~As it happens, I do have some turnip juice.~ */ DO ~TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(270637,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #237906 /* ~I have found a belladonna flower.~ */ DO ~TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
PartyHasItem("misc1i")
~ THEN REPLY #270635 /* ~I have this belladonna flower I picked up on an island of werewolves...~ */ GOTO 921
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",2)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(270637,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259553,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
!PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
~ GOTO 923
  IF ~  !PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",3)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_spider","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
AddJournalEntry(259551,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259553,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
PartyHasItem("bdspider")
PartyHasItem("bdjuice")
PartyHasItem("bdbellad")
~ THEN REPLY #270631 /* ~I can help you. Here, take what you need.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
TakePartyItem("bdspider")
DestroyItem("bdspider")
TakePartyItem("bdjuice")
DestroyItem("bdjuice")
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
IncrementGlobal("bd_neera_items","global",4)
SetGlobal("bd_neera_has_potion","global",1)
SetGlobal("bd_neera_has_juice","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259553,QUEST)
AddJournalEntry(270637,QUEST)
AddJournalEntry(259552,QUEST)
AddJournalEntry(259551,QUEST)
~ GOTO 927
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #236675 /* ~I'm sure you'll find them, Neera. ~ */ GOTO 922
  IF ~  !PartyHasItem("potn39")
!PartyHasItem("bdspider")
!PartyHasItem("bdjuice")
!PartyHasItem("bdbellad")
~ THEN REPLY #236726 /* ~I don't have any of those things, but stick with me and we'll find them, I promise.~ */ GOTO 922
END

IF ~~ THEN BEGIN 921 // from: 920.5
  SAY #270636 /* ~I need FRESH belladonna, not some dried up old herb you found ages ago. ~ */
  IF ~~ THEN REPLY #236675 /* ~I'm sure you'll find them, Neera. ~ */ GOTO 922
END

IF ~~ THEN BEGIN 922 // from: 921.0 920.18 920.17
  SAY #236727 /* ~I hope you're right, <CHARNAME>. I hope you're right SOON.~ [BD36727] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 923 // from: 928.0 925.1 925.0 920.15 920.14 920.13 920.12 920.11 920.10 920.9 920.8 920.7 920.6 920.4 920.3
  SAY #236728 /* ~I hope this isn't too forward, but I think I may be in love with you.~ [BD36728] */
  IF ~  !Global("bd_neera_has_belladonna","global",1)
!Global("bd_neera_has_feather","global",1)
!Global("bd_neera_has_potion","global",1)
!Global("bd_neera_has_juice","global",1)
!Global("bd_neera_has_spider","global",1)
~ THEN REPLY #236729 /* ~We'll find the rest of the ingredients. I promise.~ */ GOTO 904
  IF ~~ THEN REPLY #236730 /* ~As all right-thinking people should.~ */ GOTO 911
END

IF ~~ THEN BEGIN 924 // from:
  SAY #236732 /* ~I'm a half-elf, lady. And I've got more than enough grating voices in my head right now, so I'll thank you for not adding yours to the din.~ [BD36732] */
  IF ~~ THEN GOTO 925
END

IF ~~ THEN BEGIN 925 // from: 924.0 920.0
  SAY #236733 /* ~You'll give me the potion, <CHARNAME>?~ [BD36733] */
  IF ~  !PartyHasItem("potn39")
~ THEN REPLY #236734 /* ~I will, just as soon as I get ahold of it.~ */ GOTO 923
  IF ~  PartyHasItem("potn39")
~ THEN REPLY #236735 /* ~Of course.~ */ DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
AddJournalEntry(259552,QUEST)
~ GOTO 923
  IF ~  PartyHasItem("potn39")
~ THEN REPLY #236736 /* ~For an even exchange, I will.~ */ GOTO 926
END

IF ~~ THEN BEGIN 926 // from: 925.2
  SAY #236737 /* ~Done. Hand it over.~ */
  IF ~~ THEN DO ~TakePartyItemNum("potn39",1)
DestroyItem("potn39")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
GiveItemCreate("potn34",Player1,1,0,0)
AddJournalEntry(259552,QUEST)
~ GOTO 927
END

IF ~~ THEN BEGIN 927 // from: 926.0 920.16
  SAY #236738 /* ~Oh yeah. This will do JUST fine... Enjoy your time in my head, Adoy. It's nearly over.~ */
  IF ~~ THEN GOTO 928
END

IF ~~ THEN BEGIN 928 // from: 927.0
  SAY #236739 /* ~Thanks, <CHARNAME>. I really appreciate this. You have no idea how much.~ */
  IF ~~ THEN GOTO 923
END

IF ~~ THEN BEGIN 929 // from:
  SAY #236740 /* ~Bear in mind that you're talking to a person who hears voices in her head.~ [BD36740] */
  IF ~~ THEN GOTO 930
END

IF ~~ THEN BEGIN 930 // from: 929.0
  SAY #236741 /* ~One voice, anyway. One IRRITATING, AGGRAVATING, UTTERLY APPALLING VOICE!~ [BD36741] */
  IF ~~ THEN EXIT
END

IF WEIGHT #77 ~  AreaCheck("BD0114")
Global("BD_POINT1","BD0114",0)
Global("bd_neera_has_spider","global",0)
!HasItem("bdspider",Myself)
~ THEN BEGIN 931 // from:
  SAY #247202 /* ~All right! LET'S DO THIS!~ */
  IF ~~ THEN DO ~SetGlobal("BD_POINT1","BD0114",1)
~ EXIT
END

IF WEIGHT #78 ~  Global("bd_neera_has_potion","global",0)
OR(2)
Global("bd_neera_plot","global",5)
Global("bd_neera_plot","global",11)
PartyHasItem("potn39")
~ THEN BEGIN 932 // from:
  SAY #240079 /* ~YES, WE HAVE THE POTION; I HEARD YOU. Sorry, <CHARNAME>. Now we've just got to find the rest of the ingredients. ~ */
  IF ~~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
TakePartyItemNum("potn39",1)
DestroyItem("potn39")
AddJournalEntry(259552,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",1)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
TakePartyItemNum("potn39",1)
DestroyItem("potn39")
AddJournalEntry(259552,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
TakePartyItemNum("potn39",1)
DestroyItem("potn39")
AddJournalEntry(259552,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",3)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_potion","global",1)
TakePartyItemNum("potn39",1)
DestroyItem("potn39")
AddJournalEntry(259552,QUEST)
~ EXIT
END

IF WEIGHT #79 ~  Global("bd_neera_has_belladonna","global",0)
OR(2)
Global("bd_neera_plot","global",5)
Global("bd_neera_plot","global",11)
PartyHasItem("bdbellad")
~ THEN BEGIN 933 // from:
  SAY #240080 /* ~Belladonna's poisonous, <CHARNAME>. Be careful with it. Glad we've got it though. One more item down. ~ */
  IF ~~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
AddJournalEntry(259553,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",1)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
AddJournalEntry(259553,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
AddJournalEntry(259553,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",3)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_belladonna","global",1)
TakePartyItem("bdbellad")
DestroyItem("bdbellad")
AddJournalEntry(259553,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 934 // from:
  SAY #237259 /* ~That is cold. I mean, really cold. There's snow and there's ice and then there's... you.~ */
  IF ~~ THEN EXTERN ~KHALIJ~ 46
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 668
END

IF ~~ THEN BEGIN 935 // from:
  SAY #238682 /* ~Oh no, <CHARNAME>. No, no, no. Bad idea. Oh no.~ [BD38682] */
  IF ~~ THEN EXTERN ~BDSTONEH~ 36
END

IF ~~ THEN BEGIN 936 // from:
  SAY #238755 /* ~The whole place is burning...~ */
  IF ~~ THEN GOTO 937
END

IF ~~ THEN BEGIN 937 // from: 936.0
  SAY #238756 /* ~I didn't do it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 938 // from:
  SAY #239825 /* ~Ugh. UGH. UUUUUUUUGH. Just keep your paws off of me.~ */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 54
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 55
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 56
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 57
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 939 // from:
  SAY #238983 /* ~Half-elf.~ [BD59477] */
  IF ~~ THEN EXTERN ~BDTHRIX~ 131
END

IF ~~ THEN BEGIN 940 // from:
  SAY #239012 /* ~That is cold. I mean really cold. There's snow, and there's ice, and then there's... you.~ [BD39012] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF WEIGHT #80 ~  Global("BD_Sacrifice_Neera","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 941 // from:
  SAY #239081 /* ~That—that right there—is that something you do by accident, or do you actually WANT people to hate and fear you?~ [BD53269] */
  IF ~~ THEN DO ~SetGlobal("BD_Sacrifice_Neera","bd4500",3)
~ EXIT
END

IF ~~ THEN BEGIN 942 // from:
  SAY #239335 /* ~Nowhere to go but up. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 943 // from:
  SAY #239407 /* ~I think I'm going to be sick. This can't really be happening, right? You didn't... actually... and in front of everyone!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 944 // from:
  SAY #240694 /* ~You're joking. Right? Tell me you're joking.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 125
END

IF WEIGHT #81 ~  Global("bd_NeeraRomance1","GLOBAL",1)
~ THEN BEGIN 945 // from:
  SAY #252922 /* ~So, <CHARNAME>... Long time no see. Well, I guess it hasn't been that long—like a few seconds, really—but, uh... how are you?~ [BD52922] */
  IF ~~ THEN REPLY #252923 /* ~I'm doing... well. All things considered.~ */ DO ~SetGlobal("bd_NeeraRomance1","GLOBAL",2)
~ GOTO 962
  IF ~~ THEN REPLY #252924 /* ~Beyond having a madwoman and her army of zealots out to kill me? I'm fine. How are you?~ */ DO ~SetGlobal("bd_NeeraRomance1","GLOBAL",2)
~ GOTO 952
  IF ~~ THEN REPLY #252925 /* ~Why do you ask?~ */ DO ~SetGlobal("bd_NeeraRomance1","GLOBAL",2)
~ GOTO 947
  IF ~~ THEN REPLY #252926 /* ~I'd be better if I didn't get involved in a prolonged discussion about how I am.~ */ DO ~SetGlobal("bd_NeeraRomance1","GLOBAL",2)
SetGlobal("bd_neera_romanceactive","global",3)
~ GOTO 946
END

IF ~~ THEN BEGIN 946 // from: 956.3 952.3 947.3 945.3
  SAY #252927 /* ~Yeah, all right, you don't want to talk. I get it. Just know this, then. Whatever you have to face, you don't have to face it alone. If you need to talk—I'm here.~ [BD52927] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 947 // from: 962.0 945.2
  SAY #252928 /* ~You just seem—different.~ [BD52928] */
  IF ~~ THEN REPLY #252929 /* ~If I am, it's only in response to an unpleasant situation. I'm still the same <PRO_MANWOMAN> I've always been.~ */ GOTO 948
  IF ~~ THEN REPLY #252930 /* ~Having a crazed paladin target you for death does tend to change one's outlook.~ */ GOTO 963
  IF ~~ THEN REPLY #252931 /* ~Circumstances change. I do not. Whatever you see in me now is a product of your own overactive imagination.~ */ GOTO 948
  IF ~~ THEN REPLY #252932 /* ~Caelar's who you should be focused upon. Or possibly Adoy. What I am, if I have indeed changed—it matters not.~ */ GOTO 946
END

IF ~~ THEN BEGIN 948 // from: 947.2 947.0
  SAY #252933 /* ~I don't think so. There's something about you, a—I don't want to say darkness, but I just did, so I guess it's too late now.~ [BD52933] */
  IF ~~ THEN REPLY #252934 /* ~I'm a child of Bhaal. Darkness is in my blood.~ */ GOTO 956
  IF ~~ THEN REPLY #252935 /* ~If you've a problem with me, Neera, you're free to go.~ */ GOTO 950
  IF ~~ THEN REPLY #252936 /* ~Dark times inspire dark thoughts.~ */ GOTO 949
  IF ~~ THEN REPLY #252937 /* ~If I seem darker now than when last we met, it's only because you're now seeing me with open eyes.~ */ GOTO 951
END

IF ~~ THEN BEGIN 949 // from: 948.2
  SAY #252938 /* ~Just don't drown in those thoughts, all right?~ [BD52938] */
  IF ~~ THEN GOTO 964
END

IF ~~ THEN BEGIN 950 // from: 948.1
  SAY #252939 /* ~You really don't get it, do you? Friends HELP friends with their problems.~ [BD52939] */
  IF ~~ THEN GOTO 964
END

IF ~~ THEN BEGIN 951 // from: 954.0 948.3
  SAY #252940 /* ~I'm not sure I like the new you. Or the old you. Whatever you is talking to me now. I'm—I'm gonna stop talking to both of you for the moment.~ [BD52940] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 952 // from: 945.1
  SAY #252941 /* ~You don't really care to know the answer, do you?~ [BD52941] */
  IF ~~ THEN REPLY #252942 /* ~Forgive me, Neera. I didn't mean to be harsh. It's just been a trying time.~ */ GOTO 955
  IF ~~ THEN REPLY #252943 /* ~No, please, tell me. Every fiber of my being is consumed by a desire to talk about your feelings.~ */ GOTO 953
  IF ~~ THEN REPLY #252944 /* ~Not particularly.~ */ GOTO 954
  IF ~~ THEN REPLY #252945 /* ~How we feel... It's irrelevant. It doesn't matter. All that matters is what we do.~ */ GOTO 946
END

IF ~~ THEN BEGIN 953 // from: 952.1
  SAY #252946 /* ~I'm tempted to tell you all about them in excruciating detail just because I know it'd bother you.~ [BD52946] */
  IF ~~ THEN GOTO 954
END

IF ~~ THEN BEGIN 954 // from: 955.2 953.0 952.2
  SAY #252947 /* ~You've changed, <CHARNAME>. You're—darker now. Or maybe you've always been that way and I'm only just seeing it.~ [BD52947] */
  IF ~~ THEN GOTO 951
END

IF ~~ THEN BEGIN 955 // from: 952.0
  SAY #252948 /* ~For a lot of people. But you seem to get the sharp edge of the sword more often than most.~ [BD52948] */
  IF ~~ THEN REPLY #252949 /* ~That's just part and parcel of being a child of Bhaal.~ */ GOTO 956
  IF ~~ THEN REPLY #252950 /* ~If I didn't have bad luck, I'd have no luck at all.~ */ GOTO 966
  IF ~~ THEN REPLY #252951 /* ~I give worse than I get.~ */ GOTO 954
END

IF ~~ THEN BEGIN 956 // from: 963.0 955.0 948.0
  SAY #252952 /* ~You aren't your father, <CHARNAME>. You're nothing like him. Look at all the good you've done.~ [BD52952] */
  IF ~~ THEN REPLY #252953 /* ~I try to. I do. But it's hard to see it sometimes.~ */ GOTO 957
  IF ~~ THEN REPLY #252954 /* ~You always did know how to cheer me up.~ */ GOTO 967
  IF ~~ THEN REPLY #252955 /* ~Look at all the blood I've spilled doing it.~ */ GOTO 957
  IF ~~ THEN REPLY #252956 /* ~You tread on dangerous ground, Neera. You may not like where you find yourself.~ */ GOTO 946
END

IF ~~ THEN BEGIN 957 // from: 956.2 956.0
  SAY #252957 /* ~You did what you had to do. You always have. You carry whatever weight the world puts on you, always. I wish I could say the same.~ [BD52957] */
  IF ~~ THEN GOTO 958
END

IF ~~ THEN BEGIN 958 // from: 957.0
  SAY #252958 /* ~Speaking of weight, this conversation's a little too heavy for me. But—if you do need to talk—I'm here. All right?~ [BD52958] */
  IF ~~ THEN REPLY #252959 /* ~Thanks, Neera.~ */ GOTO 959
  IF ~~ THEN REPLY #252960 /* ~I'll keep it in mind.~ */ GOTO 960
END

IF ~~ THEN BEGIN 959 // from: 964.0 958.0
  SAY #252961 /* ~Any time.~ [BD52961] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 960 // from: 964.1 958.1
  SAY #252962 /* ~Or perhaps, "Thank you, Neera," and then "You're welcome, <CHARNAME>."~ [BD52962] */
  IF ~~ THEN GOTO 961
END

IF ~~ THEN BEGIN 961 // from: 960.0
  SAY #252963 /* ~Just joking. Mostly. If you need me, you know where to find me.~ [BD52963] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 962 // from: 945.0
  SAY #252964 /* ~All things? That's a lot of things to consider. Could we just consider MOST things? Or the good things?~ [BD52964] */
  IF ~~ THEN GOTO 947
END

IF ~~ THEN BEGIN 963 // from: 947.1
  SAY #252965 /* ~I guess it would. Luckily, I only do have to guess. I don't know how I'd feel walking a mile in your boots. I'd probably spend it running the exact opposite direction you are.~ [BD52965] */
  IF ~~ THEN REPLY #252966 /* ~I do seem to attract trouble. My father's gift to his beloved <PRO_SONDAUGHTER>.~ */ GOTO 956
  IF ~~ THEN REPLY #252967 /* ~Yes, well, you're a sensible person. Unfortunately, I'm me.~ */ GOTO 965
END

IF ~~ THEN BEGIN 964 // from: 967.0 966.0 965.0 950.0 949.0
  SAY #252968 /* ~Whatever you have to face, you don't have to face it alone. If you need to talk—I'm here. All right?~ [BD52968] */
  IF ~~ THEN REPLY #252969 /* ~Thanks, Neera.~ */ GOTO 959
  IF ~~ THEN REPLY #252970 /* ~I'll keep it in mind.~ */ GOTO 960
END

IF ~~ THEN BEGIN 965 // from: 963.1
  SAY #252971 /* ~I think you may be the first person who has ever accused me of being sensible...~ [BD52971] */
  IF ~~ THEN GOTO 964
END

IF ~~ THEN BEGIN 966 // from: 955.1
  SAY #252972 /* ~Yeah, but you always manage to deal with it. No matter what the world throws at you, you keep going. I don't know how you do it. But there's something you should know...~ */
  IF ~~ THEN GOTO 964
END

IF ~~ THEN BEGIN 967 // from: 956.1
  SAY #252973 /* ~That's what I'm here for! But seriously, <CHARNAME>...~ [BD52973] */
  IF ~~ THEN GOTO 964
END

IF WEIGHT #82 ~  Global("bd_NeeraRomance2","GLOBAL",1)
~ THEN BEGIN 968 // from:
  SAY #252974 /* ~Shut up, shut up, shut up, shut up, shut up, shut up... *sigh*... shut up.~ [BD52974] */
  IF ~~ THEN REPLY #252975 /* ~I'm starting to worry about you, Neera. We've got to get that wild mage out of your head.~ */ DO ~SetGlobal("bd_NeeraRomance2","GLOBAL",2)
~ GOTO 972
  IF ~~ THEN REPLY #252976 /* ~Adoy's still giving you trouble, I take it?~ */ DO ~SetGlobal("bd_NeeraRomance2","GLOBAL",2)
~ GOTO 969
  IF ~~ THEN REPLY #252977 /* ~I'm going to not talk to you now, which from the sounds of it should suit both of us.~ */ DO ~SetGlobal("bd_NeeraRomance2","GLOBAL",2)
~ GOTO 990
END

IF ~~ THEN BEGIN 969 // from: 968.1
  SAY #252978 /* ~I swear he's driving me insane, <CHARNAME>.~ [BD52978] */
  IF ~~ THEN REPLY #252979 /* ~You're strong, Neera. You can handle this. We'll get the ingredients for your potion together soon, and then you'll be free of Adoy.~ */ GOTO 990
  IF ~~ THEN REPLY #252980 /* ~At least it's a short trip.~ */ GOTO 970
  IF ~~ THEN REPLY #252981 /* ~How can you tell?~ */ GOTO 982
END

IF ~~ THEN BEGIN 970 // from: 969.1
  SAY #252982 /* ~KEEP TALKIN'! I'LL FIND YOU, AND WHEN I DO, YOU ARE GOING TO REGRET THE DAY YOU WERE BORN!~ [BD52982] */
  IF ~~ THEN REPLY #252983 /* ~Try to remember Adoy's as much a victim in this as you are. I'm sure he's no more thrilled being stuck in your head than you are having him stuck there.~ */ GOTO 991
  IF ~~ THEN REPLY #252984 /* ~Yeah, I did sort of go over the line there, didn't I?~ */ GOTO 973
  IF ~~ THEN REPLY #252985 /* ~I hope that was aimed at Adoy.~ */ GOTO 971
  IF ~~ THEN REPLY #252986 /* ~Screaming threats at the voice in your head. Of course. That will surely get the desired result.~ */ GOTO 992
END

IF ~~ THEN BEGIN 971 // from: 970.2
  SAY #252987 /* ~It was. I already know where to find you. But make another "short trip" crack and Adoy will get a preview of what's coming to him...~ [BD52987] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 972 // from: 968.0
  SAY #252988 /* ~Gee, you think?~ [BD52988] */
  IF ~~ THEN GOTO 973
END

IF ~~ THEN BEGIN 973 // from: 992.0 972.0 970.1
  SAY #252989 /* ~Sorry. You know it's not you...~ [BD52989] */
  IF ~~ THEN REPLY #252990 /* ~I'd hope my voice in your head wouldn't affect you so.~ */ GOTO 974
  IF ~~ THEN REPLY #252991 /* ~I know. It's not easy for any of us right now, is it?~ */ GOTO 994
  IF ~~ THEN REPLY #252992 /* ~Even so, we're done talking now.~ */ GOTO 993
END

IF ~~ THEN BEGIN 974 // from: 973.0
  SAY #252993 /* ~No, when I hear your voice, it makes me feel better.~ [BD52993] */
  IF ~~ THEN REPLY #252994 /* ~I'm glad to hear it. I feel the same way.~ */ GOTO 985
  IF ~~ THEN REPLY #252995 /* ~Please tell me you don't hear my voice in your head like you do Adoy's.~ */ GOTO 975
  IF ~~ THEN REPLY #252996 /* ~And so it should.~ */ GOTO 975
END

IF ~~ THEN BEGIN 975 // from: 985.2 985.1 974.2 974.1
  SAY #252997 /* ~And then your wonderful voice says something like that and my murderous impulses return.~ [BD52997] */
  IF ~~ THEN REPLY #252998 /* ~Sorry. I shouldn't be making jokes about your situation.~ */ GOTO 983
  IF ~~ THEN REPLY #252999 /* ~Shutting up now.~ */ GOTO 976
  IF ~~ THEN REPLY #253000 /* ~Make good use of them. Focus on Caelar and her destruction.~ */ GOTO 984
END

IF ~~ THEN BEGIN 976 // from: 975.1
  SAY #253001 /* ~I don't want that, necessarily. I just want you to tell me—tell me things are gonna be all right.~ [BD53001] */
  IF ~~ THEN REPLY #253002 /* ~They're going to be better than all right, Neera. For you, at least.~ */ GOTO 977
  IF ~~ THEN REPLY #253003 /* ~Things are going to be all right...?~ */ GOTO 981
  IF ~~ THEN REPLY #253004 /* ~You would have me lie to you.~ */ GOTO 978
END

IF ~~ THEN BEGIN 977 // from: 976.0
  SAY #253005 /* ~I like the sound of that. I really hope you're right.~ [BD53005] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 978 // from: 976.2
  SAY #253006 /* ~I WOULD have, but you made mincemeat of that idea. Do you ever think before you open your mouth?~ [BD53006] */
  IF ~~ THEN GOTO 979
END

IF ~~ THEN BEGIN 979 // from: 978.0
  SAY #253007 /* ~No, don't answer that. I've had enough of your voice right now.~ [BD53007] */
  IF ~~ THEN GOTO 980
END

IF ~~ THEN BEGIN 980 // from: 982.0 979.0
  SAY #253008 /* ~And I've had enough of YOUR voice to last me a lifetime, Adoy. SEVERAL lifetimes. Long ones too, ones with great-grandkids. That's how much I've had it with your voice.~ [BD53008] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 981 // from: 976.1
  SAY #253009 /* ~Damn, <CHARNAME>, you could at least try a LITTLE. Way to kill the moment.~ [BD53009] */
  IF ~~ THEN GOTO 982
END

IF ~~ THEN BEGIN 982 // from: 981.0 969.2
  SAY #253010 /* ~Don't say any more. I've had enough of your voice for the moment.~ [BD53010] */
  IF ~~ THEN GOTO 980
END

IF ~~ THEN BEGIN 983 // from: 975.0
  SAY #253011 /* ~It's all right. When this is all over, I'm sure I'll look back on this all and laugh. Eventually.~ [BD53011] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 984 // from: 975.2
  SAY #253012 /* ~Kinda hard to focus at all right now. I've got to find the rest of this potion's ingredients. And soon.~ [BD53012] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 985 // from: 974.0
  SAY #253013 /* ~Really? My voice makes you feel good?~ [BD53013] */
  IF ~~ THEN REPLY #253014 /* ~It does. Things are—not great right now, obviously. But having you here makes it tolerable.~ */ GOTO 986
  IF ~~ THEN REPLY #253015 /* ~No. Mine does.~ */ GOTO 975
  IF ~~ THEN REPLY #253016 /* ~Yes. Because I know it will stop nattering, eventually, and I will finally have some peace.~ */ GOTO 975
END

IF ~~ THEN BEGIN 986 // from: 985.0
  SAY #253017 /* ~Making things tolerable is what I do. Now if I could just get rid of Adoy, my life might get tolerable again...~ [BD53017] */
  IF ~~ THEN GOTO 987
END

IF ~~ THEN BEGIN 987 // from: 986.0
  SAY #253018 /* ~Ah, who am I kidding? My life's always been a mess. But it was a quiet mess; the only voices in my head were the ones that would SHUT UP, SHUT UP, SHUT UP when I told them to.~ [BD53018] */
  IF ~~ THEN GOTO 988
END

IF ~~ THEN BEGIN 988 // from: 990.0 987.0
  SAY #253019 /* ~I miss those voices. Especially the part where they STOPPED TALKING.~ [BD53019] */
  IF ~~ THEN GOTO 989
END

IF ~~ THEN BEGIN 989 // from: 988.0
  SAY #253020 /* ~TAKE THE HINT, ADOY. Yeesh...~ [BD53020] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 990 // from: 994.0 993.0 991.0 969.0 968.2
  SAY #253021 /* ~I remember when the voices in my head SHUT UP! SHUT UP! SHUT! UUUUUUUP! when I told them to.~ [BD53021] */
  IF ~~ THEN GOTO 988
END

IF ~~ THEN BEGIN 991 // from: 970.0
  SAY #253022 /* ~I know, I know. It's just—it feels like he never stops talking!~ [BD53022] */
  IF ~~ THEN GOTO 990
END

IF ~~ THEN BEGIN 992 // from: 970.3
  SAY #253023 /* ~And YOU can shut up too.~ [BD53023] */
  IF ~~ THEN GOTO 973
END

IF ~~ THEN BEGIN 993 // from: 973.2
  SAY #253024 /* ~Oh, don't be that way, <CHARNAME>. I'm just—it's not easy for me, you know?~ [BD53024] */
  IF ~~ THEN GOTO 990
END

IF ~~ THEN BEGIN 994 // from: 973.1
  SAY #253025 /* ~It really isn't.~ [BD53025] */
  IF ~~ THEN GOTO 990
END

IF WEIGHT #83 ~  Global("bd_NeeraRomance3","GLOBAL",1)
~ THEN BEGIN 995 // from:
  SAY #253026 /* ~Yes, that should work—worth a try, anyway...~ [BD53026] */
  IF ~~ THEN DO ~SetGlobal("bd_NeeraRomance3","GLOBAL",2)
~ GOTO 996
END

IF ~~ THEN BEGIN 996 // from: 995.0
  SAY #253027 /* ~Hey, I need help.~ [BD53027] */
  IF ~~ THEN REPLY #253028 /* ~Is everything all right?~ */ GOTO 997
  IF ~~ THEN REPLY #253029 /* ~Really? I hadn't noticed... Joking! Don't give me that look.~ */ GOTO 998
  IF ~~ THEN REPLY #253030 /* ~Obviously. Good luck finding some.~ */ GOTO 999
END

IF ~~ THEN BEGIN 997 // from: 996.0
  SAY #253031 /* ~Fine. I'm just— I AM TRYING TO HAVE A MOMENT. SHUT UP.~ [BD53031] */
  IF ~~ THEN GOTO 999
END

IF ~~ THEN BEGIN 998 // from: 996.1
  SAY #253032 /* ~What look? I don't know what you're—I SWEAR TO GODS, I AM TRYING TO HAVE A MOMENT, SHUT UP—talking about!~ [BD53032] */
  IF ~~ THEN GOTO 1000
END

IF ~~ THEN BEGIN 999 // from: 997.0 996.2
  SAY #253033 /* ~Wait, wait, wait, wait! Wait. Don't leave me. Please?~ [BD53033] */
  IF ~~ THEN GOTO 1001
END

IF ~~ THEN BEGIN 1000 // from: 998.0
  SAY #253034 /* ~Look. I'll be honest.~ [BD53034] */
  IF ~~ THEN GOTO 1001
END

IF ~~ THEN BEGIN 1001 // from: 1000.0 999.0
  SAY #253035 /* ~I need a distraction. Something. Anything. Desperately.~ [BD53035] */
  IF ~~ THEN REPLY #253036 /* ~How desperately are we talking?~ */ GOTO 1003
  IF ~~ THEN REPLY #253037 /* ~Ever try sport?~ */ GOTO 1004
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY #253038 /* ~Have you tried talking to Minsc?~ */ GOTO 1002
  IF ~~ THEN REPLY #253039 /* ~Unlike you, I can't afford distractions right now.~ */ GOTO 1005
  IF ~~ THEN REPLY #253040 /* ~Good luck finding something. Now if you'll excuse me, I've actual important matters to attend to.~ */ GOTO 1010
END

IF ~~ THEN BEGIN 1002 // from: 1001.2
  SAY #253041 /* ~Minsc! Yes! The perfect distraction. Great idea, <CHARNAME>. Thanks.~ [BD53041] */
  IF ~~ THEN DO ~MoveToObject("Minsc")
~ EXIT
END

IF ~~ THEN BEGIN 1003 // from: 1001.0
  SAY #253042 /* ~Uh, pretty desperately. On a scale of one to ten, around an eight. Hundred. Maybe eight hundred and fifty.~ [BD53042] */
  IF ~~ THEN GOTO 1006
END

IF ~~ THEN BEGIN 1004 // from: 1001.1
  SAY #253043 /* ~I used to play ball ball.~ [BD53043] */
  IF ~~ THEN REPLY #253044 /* ~"Ball ball"? What kind of sport is that?~ */ GOTO 1007
  IF ~~ THEN REPLY #253045 /* ~Go play some ball ball then, and stop bothering me.~ */ GOTO 1009
  IF ~~ THEN REPLY #253046 /* ~I'm leaving now. ~ */ GOTO 1010
END

IF ~~ THEN BEGIN 1005 // from: 1001.3
  SAY #253047 /* ~No, don't go. Please. Please, please, please, please, please, pleeeeeeease.~ [BD53047] */
  IF ~~ THEN GOTO 1006
END

IF ~~ THEN BEGIN 1006 // from: 1009.0 1008.0 1005.0 1003.0
  SAY #253048 /* ~Just talk to me. That's all I ask. Just give me something to listen to other than—GODS, ADOY, SHUT THE HELLS UP OR I WILL KILL YOU IN A STRICTLY METAPHORICAL SENSE—*him*.~ [BD53048] */
  IF ~~ THEN REPLY #253049 /* ~What do you want to talk about?~ */ GOTO 1011
  IF ~~ THEN REPLY #253050 /* ~I AM talking to you.~ */ GOTO 1012
  IF ~~ THEN REPLY #253051 /* ~I don't need to point out how you sound when you speak to Adoy anymore at this point, do I?~ */ GOTO 1013
END

IF ~~ THEN BEGIN 1007 // from: 1004.0
  SAY #253052 /* ~You start with two balls, everyone stands in a circle, then you throw the first—~ [BD53052] */
  IF ~~ THEN GOTO 1008
END

IF ~~ THEN BEGIN 1008 // from: 1007.0
  SAY #253053 /* ~Actually, never mind. Ball ball was terrible. I always lost ball ball, but I can't lose some things, CAN I, ADOY?~ [BD53053] */
  IF ~~ THEN GOTO 1006
END

IF ~~ THEN BEGIN 1009 // from: 1004.1
  SAY #253054 /* ~You need a group to play ball ball, and a couple of balls—FOR THE LOVE OF GODS EVERYWHERE, LEAVE ME ALONE—and I always hated ball ball anyway.~ [BD53054] */
  IF ~~ THEN GOTO 1006
END

IF ~~ THEN BEGIN 1010 // from: 1004.2 1001.4
  SAY #253055 /* ~Fine! Fine. Leave me to suffer, then. I bet you'll be super happy when my brain starts leaking out of my ears BECAUSE SOMEONE WON'T SHUT UP!~ [BD53055] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1011 // from: 1006.0
  SAY #253056 /* ~Oh, you're actually willing to do it? I didn't think you would. Hadn't thought that far ahead.~ [BD53056] */
  IF ~~ THEN GOTO 1014
END

IF ~~ THEN BEGIN 1012 // from: 1006.1
  SAY #253057 /* ~Right. Well.~ [BD53057] */
  IF ~~ THEN GOTO 1013
END

IF ~~ THEN BEGIN 1013 // from: 1012.0 1006.2
  SAY #253058 /* ~I am teetering, <CHARNAME>.~ [BD53058] */
  IF ~~ THEN GOTO 1019
END

IF ~~ THEN BEGIN 1014 // from: 1011.0
  SAY #253059 /* ~Caelar's crusade, hey? What's with that?~ [BD53059] */
  IF ~~ THEN REPLY #253060 /* ~Would that I knew. Her goals seem to be noble, but some of her actions continue to confound me.~ */ GOTO 1015
  IF ~~ THEN REPLY #253061 /* ~Her conviction is impressive. Which is as nice a way to say she's utterly mad as I can think of.~ */ GOTO 1016
  IF ~~ THEN REPLY #253062 /* ~I'm done wasting words on Caelar.~ */ GOTO 1017
END

IF ~~ THEN BEGIN 1015 // from: 1014.0
  SAY #253063 /* ~We don't need to understand her to—I'M IGNORING YOU—defeat her, though.~ [BD53063] */
  IF ~~ THEN GOTO 1018
END

IF ~~ THEN BEGIN 1016 // from: 1014.1
  SAY #253064 /* ~That's what I like about you, <CHARNAME>. You always have a kind word, even for your enemies. Her conviction is really something. Yep. She's got a whole lot of conviction...~ [BD53064] */
  IF ~~ THEN GOTO 1018
END

IF ~~ THEN BEGIN 1017 // from: 1014.2
  SAY #253065 /* ~Okayyyy... That didn't work.~ [BD53065] */
  IF ~~ THEN GOTO 1019
END

IF ~~ THEN BEGIN 1018 // from: 1016.0 1015.0
  SAY #253066 /* ~Okay. This isn't working.~ [BD53066] */
  IF ~~ THEN GOTO 1019
END

IF ~~ THEN BEGIN 1019 // from: 1018.0 1017.0 1013.0
  SAY #253067 /* ~But I have an idea. Just work with me here...~ */
  IF ~~ THEN REPLY #253068 /* ~What... are you doing?~ */ GOTO 1021
  IF ~~ THEN REPLY #253069 /* ~Neera—I care for you. I do. But I don't want this to happen. Not like this. We'll get rid of Adoy, I promise you. You just need to hang on until then. Can you do that?~ */ GOTO 1020
  IF ~~ THEN REPLY #253070 /* ~I think I might like this idea.~ */ GOTO 1021
  IF ~~ THEN REPLY #253071 /* ~I don't think so. You're useful to me, so I indulge your eccentricities. But I'm not interested in you like that.~ */ DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ GOTO 1022
END

IF ~~ THEN BEGIN 1020 // from: 1019.1
  SAY #253072 /* ~A girl throws herself at you, and this is how you respond? Gah! Why do you have to be so, so, so NOBLE?~ [BD53072] */
  IF ~~ THEN GOTO 1022
END

IF ~~ THEN BEGIN 1021 // from: 1019.2 1019.0
  SAY #253073 /* ~Shhh. Shhhhhhh.~ [BD53073] */
  IF ~~ THEN GOTO 1023
END

IF ~~ THEN BEGIN 1022 // from: 1020.0 1019.3
  SAY #253074 /* ~Gods damn it. All right. Fine. Whatever. I'll talk to you later.~ [BD53074] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1023 // from: 1021.0
  SAY #253075 /* ~Mmm...~ [BD53075] */
  IF ~~ THEN REPLY #253076 /* ~Your lips taste of mead. How much have you had to drink?~ */ GOTO 1024
  IF ~~ THEN REPLY #253077 /* ~Well, I'm certainly distracted. Did it work for you?~ */ GOTO 1025
  IF ~~ THEN REPLY #253078 /* ~Now that's what I call a distraction...~ */ GOTO 1025
END

IF ~~ THEN BEGIN 1024 // from: 1023.0
  SAY #253079 /* ~Not enough. Nothing makes him go away. NOTHING.~ [BD53079] */
  IF ~~ THEN GOTO 1025
END

IF ~~ THEN BEGIN 1025 // from: 1024.0 1023.2 1023.1
  SAY #253080 /* ~Oh. Oh, gods, no. He ENJOYED that. HE enjoyed it. Ugh. NOT OKAY, ADOY.~ [BD53080] */
  IF ~~ THEN GOTO 1026
END

IF ~~ THEN BEGIN 1026 // from: 1025.0
  SAY #253081 /* ~Thanks for trying. Maybe when this is all over... you and I seem to work well together.~ [BD53081] */
  IF ~~ THEN REPLY #253082 /* ~We do, don't we?~ */ GOTO 1027
  IF ~~ THEN REPLY #253083 /* ~You just need to hold on until we can get rid of Adoy. I know you can do it. You're one of the strongest people I've ever met. We are going to fix this, Neera. ~ */ GOTO 1028
  IF ~~ THEN REPLY #253084 /* ~Are we done now? We've work to do.~ */ GOTO 1029
END

IF ~~ THEN BEGIN 1027 // from: 1026.0
  SAY #253085 /* ~We do. Just not when I've got a third wheel turning around and around and around in my brain. Someday, maybe, we can be really alone. Alone. That would be—that would be great.~ [BD53085] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1028 // from: 1026.1
  SAY #253086 /* ~I hope you're right. I hope you're right SOON.~ [BD53086] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1029 // from: 1026.2
  SAY #253087 /* ~Yes! Work. Let's do it!~ [BD53087] */
  IF ~~ THEN EXIT
END

IF WEIGHT #84 ~  Global("bd_NeeraRomance4","GLOBAL",1)
Global("bd_neera_plot","global",15)
~ THEN BEGIN 1030 // from:
  SAY #253113 /* ~Go in, kill the enemy, get out, celebrate. Everything in life should be this straightforward.~ [BD53113] */
  IF ~~ THEN REPLY #253114 /* ~It can't be?~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1031
  IF ~~ THEN REPLY #253115 /* ~Sounds like you've got something on your mind.~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1032
  IF ~~ THEN REPLY #253116 /* ~Simple pleasures are the best. And best enjoyed in silence. You understand?~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1034
END

IF ~~ THEN BEGIN 1031 // from: 1030.0
  SAY #253117 /* ~Not in my world. Not at the moment, anyway.~ [BD53117] */
  IF ~~ THEN GOTO 1033
END

IF ~~ THEN BEGIN 1032 // from: 1030.1
  SAY #253118 /* ~Yeah. Mostly the guy I recently got out of it.~ [BD53118] */
  IF ~~ THEN GOTO 1033
END

IF ~~ THEN BEGIN 1033 // from: 1032.0 1031.0
  SAY #253119 /* ~I'm just— What happened with Adoy is eating at me. How do you know when you've made the right decision, y'know?~ [BD53119] */
  IF ~~ THEN REPLY #253120 /* ~You can never know. Just do the best you can, and hope it's enough.~ */ GOTO 1035
  IF ~~ THEN REPLY #253121 /* ~You know it's the right decision because it's the decision you made.~ */ GOTO 1036
  IF ~~ THEN REPLY #253122 /* ~What's done is done. You can't let it bother you now.~ */ GOTO 1037
END

IF ~~ THEN BEGIN 1034 // from: 1030.2
  SAY #253123 /* ~Yeah. I understand. Forget I said anything.~ [BD53123] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1035 // from: 1033.0
  SAY #253124 /* ~Yeah. Hope.~ [BD53124] */
  IF ~~ THEN GOTO 1037
END

IF ~~ THEN BEGIN 1036 // from: 1033.1
  SAY #253125 /* ~Is that how you do it? I wish I had your confidence.~ [BD53125] */
  IF ~~ THEN GOTO 1037
END

IF ~~ THEN BEGIN 1037 // from: 1036.0 1035.0 1033.2
  SAY #253126 /* ~When I cut Adoy off, it felt like the right decision at the time. I still think it was. I hated feeling so—helpless.~ [BD53126] */
  IF ~~ THEN GOTO 1038
END

IF ~~ THEN BEGIN 1038 // from: 1037.0
  SAY #253127 /* ~I couldn't DO anything for him. Wherever he was, he was trapped. The only thing he could do was drive me halfway to madness.~ [BD53127] */
  IF ~~ THEN REPLY #253128 /* ~Exactly. He almost drove you insane. You did what you had to do.~ */ GOTO 1040
  IF ~~ THEN REPLY #253129 /* ~You're lucky he didn't drive you further.~ */ GOTO 1039
  IF ~~ THEN REPLY #253130 /* ~Better you than me.~ */ GOTO 1041
END

IF ~~ THEN BEGIN 1039 // from: 1038.1
  SAY #253131 /* ~I know. I know he didn't. I just wish I could have done something... more.~ [BD53131] */
  IF ~~ THEN GOTO 1042
END

IF ~~ THEN BEGIN 1040 // from: 1038.0
  SAY #253132 /* ~I heard his every thought, but I couldn't do anything for him.~ [BD53132] */
  IF ~~ THEN GOTO 1042
END

IF ~~ THEN BEGIN 1041 // from: 1038.2
  SAY #253133 /* ~Gee. Thanks.~ [BD53133] */
  IF ~~ THEN GOTO 1042
END

IF ~~ THEN BEGIN 1042 // from: 1041.0 1040.0 1039.0
  SAY #253134 /* ~I'm tired of feeling helpless. I'm done with it. Next time, I WILL help. I will find a way.~ [BD53134] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",2)
~ EXIT
END

IF WEIGHT #85 ~  Global("bd_NeeraRomance4","GLOBAL",1)
~ THEN BEGIN 1043 // from:
  SAY #253088 /* ~You know something, <CHARNAME>?~ [BD53088] */
  IF ~~ THEN REPLY #253089 /* ~Some things. Never enough of them, though.~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1044
  IF ~~ THEN REPLY #253090 /* ~I know many things. I am a wise, wise man. ~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1045
  IF ~~ THEN REPLY #253091 /* ~Can it wait? We're kind of in a hurry here.~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1046
  IF ~~ THEN REPLY #253092 /* ~I know more than enough, and I've no inclination to add to that knowledge right now. If we have to chat, we can do it when Caelar's in the ground.~ */ DO ~SetGlobal("bd_NeeraRomance4","GLOBAL",2)
~ GOTO 1055
END

IF ~~ THEN BEGIN 1044 // from: 1046.0 1043.0
  SAY #253093 /* ~I like you. It's stuff like what you just said that makes me really glad that you're around.~ [BD53093] */
  IF ~~ THEN GOTO 1047
END

IF ~~ THEN BEGIN 1045 // from: 1043.1
  SAY #253094 /* ~I want to say something serious, so I'm gonna let that one pass. I'm really glad you're around.~ [BD53094] */
  IF ~~ THEN GOTO 1047
END

IF ~~ THEN BEGIN 1046 // from: 1043.2
  SAY #253095 /* ~It'll only take a second.~ [BD53095] */
  IF ~~ THEN GOTO 1044
END

IF ~~ THEN BEGIN 1047 // from: 1045.0 1044.0
  SAY #253096 /* ~I know I haven't been easy to get along with recently. Or, you know. Remain sane in the proximity of.~ [BD53096] */
  IF ~~ THEN REPLY #253097 /* ~It wasn't your fault, Neera. Adoy was driving you to distraction, and—~ */ GOTO 1048
  IF ~~ THEN REPLY #253098 /* ~No problem. I'm more or less immune to insanity at this point.~ */ GOTO 1049
  IF ~~ THEN REPLY #253099 /* ~I briefly considered running for the hills when we met, but now I'm glad I didn't.~ */ GOTO 1050
END

IF ~~ THEN BEGIN 1048 // from: 1047.0
  SAY #253100 /* ~Totally. You have no idea what it's like having someone interrupt you CONSTANTLY. The man never shuts up.~ [BD53100] */
  IF ~~ THEN GOTO 1051
END

IF ~~ THEN BEGIN 1049 // from: 1047.1
  SAY #253101 /* ~Still, it couldn't have been fun. It certainly wasn't for me.~ [BD53101] */
  IF ~~ THEN GOTO 1051
END

IF ~~ THEN BEGIN 1050 // from: 1047.2
  SAY #253102 /* ~I wouldn't have blamed you if you did abandon me.~ [BD53102] */
  IF ~~ THEN GOTO 1051
END

IF ~~ THEN BEGIN 1051 // from: 1050.0 1049.0 1048.0
  SAY #253103 /* ~You stuck with me, though. So, thanks. You're the best.~ [BD53103] */
  IF ~~ THEN REPLY #253104 /* ~It's the least I can do for my favorite wild mage.~ */ GOTO 1052
  IF ~~ THEN REPLY #253105 /* ~You know I'd do anything for you, Neera.~ */ GOTO 1053
  IF ~~ THEN REPLY #253106 /* ~Perhaps not the best. Among the best, certainly. Top Five at least, I should think.~ */ GOTO 1054
  IF ~~ THEN REPLY #253107 /* ~Did you have something you wanted to discuss other than the obvious?~ */ GOTO 1056
END

IF ~~ THEN BEGIN 1052 // from: 1051.0
  SAY #253108 /* ~I don't know how many wild mages you know, so that might not be much of a compliment. Still, I'm glad to hear it.~ [BD53108] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",2)
~ EXIT
END

IF ~~ THEN BEGIN 1053 // from: 1051.1
  SAY #253109 /* ~I know.~ [BD53109] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",2)
~ EXIT
END

IF ~~ THEN BEGIN 1054 // from: 1051.2
  SAY #253110 /* ~And so modest to boot!~ [BD53110] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",2)
~ EXIT
END

IF ~~ THEN BEGIN 1055 // from: 1043.3
  SAY #253111 /* ~You know, I was about to say something nice about you, but in retrospect, I'm glad I didn't.~ [BD53111] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1056 // from: 1051.3
  SAY #253112 /* ~No. I kinda regret talking as much as I did now.~ [BD53112] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF WEIGHT #86 ~  Global("bd_NeeraRomance5","GLOBAL",1)
~ THEN BEGIN 1057 // from:
  SAY #253135 /* ~We're never gonna be safe again, are we?~ [BD53135] */
  IF ~~ THEN REPLY #253136 /* ~It's not looking likely, no.~ */ DO ~SetGlobal("bd_NeeraRomance5","GLOBAL",2)
~ GOTO 1058
  IF ~~ THEN REPLY #253137 /* ~Why would you want safe? Safe is boring. ~ */ DO ~SetGlobal("bd_NeeraRomance5","GLOBAL",2)
~ GOTO 1059
  IF ~~ THEN REPLY #253138 /* ~What brought this on?~ */ DO ~SetGlobal("bd_NeeraRomance5","GLOBAL",2)
~ GOTO 1060
  IF ~~ THEN REPLY #253139 /* ~Whining about it certainly won't make us any safer.~ */ DO ~SetGlobal("bd_NeeraRomance5","GLOBAL",2)
~ GOTO 1061
END

IF ~~ THEN BEGIN 1058 // from: 1060.0 1059.0 1057.0
  SAY #253140 /* ~I always thought that one day—one shining, beautiful day—I could go fifteen minutes without having to worry about being killed.~ [BD53140] */
  IF ~~ THEN GOTO 1062
END

IF ~~ THEN BEGIN 1059 // from: 1057.1
  SAY #253141 /* ~Safe might be boring, but on the upside, it is safe.~ [BD53141] */
  IF ~~ THEN GOTO 1058
END

IF ~~ THEN BEGIN 1060 // from: 1057.2
  SAY #253142 /* ~Our impending doom, mostly.~ [BD53142] */
  IF ~~ THEN GOTO 1058
END

IF ~~ THEN BEGIN 1061 // from: 1057.3
  SAY #253143 /* ~All right, I get it. Let's do this.~ [BD53143] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1062 // from: 1058.0
  SAY #253144 /* ~It's stupid, I know.~ [BD53144] */
  IF ~~ THEN REPLY #253145 /* ~Wanting to be safe isn't stupid. It's healthy.~ */ GOTO 1063
  IF ~~ THEN REPLY #253146 /* ~You are a wild mage. Danger is part of the package.~ */ GOTO 1064
  IF ~~ THEN REPLY #253147 /* ~It makes no difference where you are. There's always danger. Always. Never think otherwise.~ */ GOTO 1065
END

IF ~~ THEN BEGIN 1063 // from: 1062.0
  SAY #253148 /* ~Yeah, but me being who I am, the world being as it is... There's always gonna be something dangerous and scary and murder-y around.~ [BD53148] */
  IF ~~ THEN GOTO 1067
END

IF ~~ THEN BEGIN 1064 // from: 1062.1
  SAY #253149 /* ~True. I am what I am, and being in mortal peril's part of that.~ [BD53149] */
  IF ~~ THEN GOTO 1067
END

IF ~~ THEN BEGIN 1065 // from: 1062.2
  SAY #253150 /* ~I was fooling myself. But not any longer.~ [BD53150] */
  IF ~~ THEN GOTO 1066
END

IF ~~ THEN BEGIN 1066 // from: 1065.0
  SAY #253151 /* ~Thanks, <CHARNAME>. Let's do this.~ [BD53151] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1067 // from: 1064.0 1063.0
  SAY #253152 /* ~And it's not gonna stop me, not anymore. Not ever again. Let's do this.~ [BD53152] */
  IF ~~ THEN EXIT
END

IF WEIGHT #87 ~  Global("bd_NeeraRomance6","GLOBAL",1)
~ THEN BEGIN 1068 // from:
  SAY #253153 /* ~I never thought I'd be so happy to see a normal, non-lava-spewing basement.~ [BD53153] */
  IF ~~ THEN DO ~SetGlobal("bd_NeeraRomance6","GLOBAL",2)
~ GOTO 1069
END

IF ~~ THEN BEGIN 1069 // from: 1068.0
  SAY #253154 /* ~Not that I had any doubts we'd see a normal, non-lava-spewing basement again, mind you. We are GOOD. Almost too good.~ [BD53154] */
  IF ~~ THEN REPLY #253155 /* ~You were very good.~ */ GOTO 1071
  IF ~~ THEN REPLY #253156 /* ~I'm okay. You—you were fantastic, Neera. I couldn't have done this without you. Beauty, brains, and—something else that starts with B. Bewitching. You've got it all.~ */ GOTO 1072
  IF ~~ THEN REPLY #253157 /* ~ 'Twas a passable effort.~ */ GOTO 1073
  IF ~~ THEN REPLY #253158 /* ~Good isn't good enough. I shall be great, or nothing.~ */ GOTO 1070
END

IF ~~ THEN BEGIN 1070 // from: 1069.3
  SAY #253159 /* ~We just killed a devil and walked out of one of the Nine Hells. That's pretty great if you ask me. But nobody did, so shutting up now.~ [BD53159] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1071 // from: 1069.0
  SAY #253160 /* ~Oh, I'm just gettin' started.~ [BD53160] */
  IF ~~ THEN GOTO 1079
END

IF ~~ THEN BEGIN 1072 // from: 1069.1
  SAY #253161 /* ~You silver-tongued dev—actually, I think I saw a silver-tongued devil a couple hours ago. It didn't look nearly as good as you.~ */
  IF ~~ THEN GOTO 1079
END

IF ~~ THEN BEGIN 1073 // from: 1069.2
  SAY #253162 /* ~Passable, huh? How about I make you passably pink?~ [BD53162] */
  IF ~~ THEN GOTO 1074
END

IF ~~ THEN BEGIN 1074 // from: 1073.0
  SAY #253163 /* ~...Actually, never mind. I don't think the crowd would appreciate you being pink as much as I would.~ [BD53163] */
  IF ~~ THEN REPLY #253164 /* ~I certainly wouldn't.~ */ GOTO 1076
  IF ~~ THEN REPLY #253165 /* ~You're a smart woman, Neera.~ */ GOTO 1077
  IF ~~ THEN REPLY #253166 /* ~I don't know. Pink looks pretty fetching on me.~ */ GOTO 1078
  IF ~~ THEN REPLY #253167 /* ~Would it kill you to be serious for once in your life?~ */ GOTO 1075
END

IF ~~ THEN BEGIN 1075 // from: 1074.3
  SAY #253168 /* ~Well, excuuuuuse me. We just killed a devil and walked out of one of the Nine Hells. I don't know about you, but I'M gonna celebrate.~ [BD53168] */
  IF ~~ THEN GOTO 1096
END

IF ~~ THEN BEGIN 1076 // from: 1074.0
  SAY #253169 /* ~I'll save that one for another time.~ [BD53169] */
  IF ~~ THEN GOTO 1079
END

IF ~~ THEN BEGIN 1077 // from: 1074.1
  SAY #253170 /* ~You're just figuring that out now? Shame on you, <CHARNAME>. Shaaaame. You're lucky I'm in a forgiving mood.~ [BD53170] */
  IF ~~ THEN GOTO 1079
END

IF ~~ THEN BEGIN 1078 // from: 1074.2
  SAY #253171 /* ~I bet it does. I think you'd look VERY fetching in pink undergarments. And even better without them.~ [BD53171] */
  IF ~~ THEN GOTO 1079
END

IF ~~ THEN BEGIN 1079 // from: 1078.0 1077.0 1076.0 1072.0 1071.0
  SAY #253172 /* ~Come here, you.~ [BD53172] */
  IF ~~ THEN REPLY #253173 /* ~Whatever you say, O mighty one.~ */ GOTO 1087
  IF ~~ THEN REPLY #253174 /* ~If you insist.~ */ GOTO 1087
  IF ~~ THEN REPLY #253175 /* ~Neera... There are people here...~ */ GOTO 1088
  IF ~~ THEN REPLY #253176 /* ~I can't, Neera. I don't feel that way about you.~ */ GOTO 1080
END

IF ~~ THEN BEGIN 1080 // from: 1079.3
  SAY #253177 /* ~...Oh. I thought... Well, I guess it doesn't matter what I thought.~ [BD53177] */
  IF ~~ THEN REPLY #253178 /* ~I'm sorry, Neera. I didn't mean to lead you on.~ */ GOTO 1081
  IF ~~ THEN REPLY #253179 /* ~Not really. In the greater scheme of things, it matters little what anyone thinks.~ */ GOTO 1082
END

IF ~~ THEN BEGIN 1081 // from: 1080.0
  SAY #253180 /* ~No, no. You have nothing to apologize for. I'm the one who— Uh, sorry, I misunderstood things, I guess.~ [BD53180] */
  IF ~~ THEN GOTO 1083
END

IF ~~ THEN BEGIN 1082 // from: 1080.1
  SAY #253181 /* ~I see. I guess I'll just— Excuse me.~ [BD53181] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1083 // from: 1081.0
  SAY #253182 /* ~Friends?~ [BD53182] */
  IF ~~ THEN REPLY #253183 /* ~Always.~ */ GOTO 1084
  IF ~~ THEN REPLY #253184 /* ~Well, yeah, I hope so.~ */ GOTO 1085
  IF ~~ THEN REPLY #253185 /* ~Allies.~ */ GOTO 1086
END

IF ~~ THEN BEGIN 1084 // from: 1083.0
  SAY #253186 /* ~That's good enough for me.~ [BD53186] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1085 // from: 1083.1
  SAY #253187 /* ~Well, I won't say that I'm not disappointed, but if that's what you want—if that's ALL you want—then it'll have to do.~ [BD53187] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1086 // from: 1083.2
  SAY #253188 /* ~If that's the way you want it, I guess I'll have to live with it. Have a good night, <CHARNAME>.~ [BD53188] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1087 // from: 1079.1 1079.0
  SAY #253189 /* ~Mmm...~ [BD53189] */
  IF ~~ THEN GOTO 1089
END

IF ~~ THEN BEGIN 1088 // from: 1079.2
  SAY #253190 /* ~So?~ [BD53190] */
  IF ~~ THEN GOTO 1089
END

IF ~~ THEN BEGIN 1089 // from: 1088.0 1087.0
  SAY #253191 /* ~I like you, <CHARNAME>. I think I like you a lot.~ [BD53191] */
  IF ~~ THEN REPLY #253192 /* ~I like you, Neera. A little more than a lot.~ */ GOTO 1090
  IF ~~ THEN REPLY #253193 /* ~Is that what you think?~ */ GOTO 1091
  IF ~~ THEN REPLY #253194 /* ~And who can blame you?~ */ GOTO 1093
  IF ~~ THEN REPLY #253195 /* ~I see. That's... nice.~ */ GOTO 1092
END

IF ~~ THEN BEGIN 1090 // from: 1089.0
  SAY #253196 /* ~Good.~ [BD53196] */
  IF ~~ THEN GOTO 1093
END

IF ~~ THEN BEGIN 1091 // from: 1089.1
  SAY #253197 /* ~You bet your pretty little butt.~ [BD53197] */
  IF ~~ THEN GOTO 1093
END

IF ~~ THEN BEGIN 1092 // from: 1089.3
  SAY #253198 /* ~I'm glad you think so.~ [BD53198] */
  IF ~~ THEN GOTO 1093
END

IF ~~ THEN BEGIN 1093 // from: 1092.0 1091.0 1090.0 1089.2
  SAY #253199 /* ~When this is over—when everything here is done—maybe the two of us could go somewhere, you know... a little quieter. More private.~ [BD53199] */
  IF ~~ THEN REPLY #253200 /* ~I'd like that. I would like that a lot.~ */ GOTO 1094
  IF ~~ THEN REPLY #253201 /* ~Uhh... Yes, please?~ */ GOTO 1095
  IF ~~ THEN REPLY #253202 /* ~We'll discuss it later. For now, let's focus on celebrating our victory.~ */ GOTO 1096
END

IF ~~ THEN BEGIN 1094 // from: 1093.0
  SAY #253203 /* ~Excellent. Now where did that mead cart go...?~ [BD53203] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1095 // from: 1093.1
  SAY #253204 /* ~Gods, <CHARNAME>! Could you be more adorable?~ [BD53204] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1096 // from: 1093.2 1075.0
  SAY #253205 /* ~Woohoo! Celebration! I want some mutton. WHO'S GOT MUTTON?~ [BD53205] */
  IF ~~ THEN EXIT
END

IF WEIGHT #88 ~  Global("bd_neera_edwin","locals",1)
~ THEN BEGIN 1097 // from:
  SAY #253274 /* ~Can we talk a second, <CHARNAME>? In private?~ [BD53274] */
  IF ~~ THEN REPLY #253275 /* ~Of course, Neera. What can I do for you?~ */ GOTO 1103
  IF ~  GlobalLT("BD_NEERA_VS_EDWIN","locals",3)
~ THEN REPLY #253276 /* ~This isn't the time, Neera.~ */ DO ~SetGlobal("bd_neera_edwin","locals",5)
RealSetGlobalTimer("bd_edneera_delay","global",1000)
IncrementGlobal("BD_NEERA_VS_EDWIN","locals",1)
~ GOTO 1098
  IF ~  !GlobalLT("BD_NEERA_VS_EDWIN","locals",3)
~ THEN REPLY #253276 /* ~This isn't the time, Neera.~ */ GOTO 1099
END

IF ~~ THEN BEGIN 1098 // from: 1097.1
  SAY #253277 /* ~All right. But we've gotta talk about this soon.~ [BD53277] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1099 // from: 1097.2
  SAY #253278 /* ~You're right, it's way past time. We need to talk about the Red Wizard. NOW.~ [BD53278] */
  IF ~~ THEN EXTERN ~EDWINJ~ 356
END

IF ~~ THEN BEGIN 1100 // from:
  SAY #253280 /* ~I can't be around Eddy Oddbody anymore. I don't like him, I don't trust him, and that cologne of his makes my eyes water.~ [BD53280] */
  IF ~~ THEN REPLY #253281 /* ~I see.~ */ EXTERN ~EDWINJ~ 357
  IF ~~ THEN REPLY #253282 /* ~He does smell awful. But he has his uses.~ */ GOTO 1101
  IF ~~ THEN REPLY #253283 /* ~Honestly? I don't fully trust him either. I'm kind of counting on you to watch my back here.~ */ GOTO 1106
  IF ~~ THEN REPLY #253284 /* ~Are you giving me an ultimatum, Neera?~ */ GOTO 1104
END

IF ~~ THEN BEGIN 1101 // from: 1100.1
  SAY #253285 /* ~He probably thinks the same of you. What do you think'll happen when he stops thinking it?~ [BD53285] */
  IF ~~ THEN REPLY #253286 /* ~Edwin? Can you give our friend some comfort?~ */ EXTERN ~EDWINJ~ 357
  IF ~~ THEN REPLY #253287 /* ~Hmm. A good point.~ */ EXTERN ~EDWINJ~ 357
  IF ~~ THEN REPLY #253288 /* ~I think that's when I'll be glad to have you watching my back.~ */ GOTO 1106
  IF ~~ THEN REPLY #253289 /* ~We'll cross that bridge when we come to it, and likely burn it behind us. Until then, Edwin remains with me.~ */ GOTO 1105
  IF ~~ THEN REPLY #253290 /* ~Nothing good. Sorry, Edwin. This is where we part ways.~ */ EXTERN ~EDWINJ~ 358
END

IF ~~ THEN BEGIN 1102 // from:
  SAY #253297 /* ~Thanks, <CHARNAME>. I'll sleep a lot easier without him around.~ [BD53297] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_edwin","locals",3)
ActionOverride("EDWIN",DestroyAllFragileEquipment(ADAMANTINE))
ActionOverride("EDWIN",LeaveParty())
~ EXIT
END

IF ~~ THEN BEGIN 1103 // from: 1097.0
  SAY #253298 /* ~It's about the Red Wizard. I don't know how else to say this: He's got to go.~ [BD53298] */
  IF ~~ THEN EXTERN ~EDWINJ~ 356
END

IF ~~ THEN BEGIN 1104 // from: 1100.3
  SAY #253299 /* ~No wild mage expects to die of old age. But I don't want to die with a knife in my back.~ [BD53299] */
  IF ~~ THEN REPLY #253300 /* ~So it's you or him, then? Very well. I choose him.~ */ EXTERN ~EDWINJ~ 360
  IF ~~ THEN REPLY #253301 /* ~Nor do I. That's why I need you.~ */ GOTO 1106
  IF ~~ THEN REPLY #253302 /* ~Sorry, Edwin. It's you or Neera, and her I can actually trust.~ */ EXTERN ~EDWINJ~ 358
END

IF ~~ THEN BEGIN 1105 // from: 1101.3
  SAY #253304 /* ~Well then. I guess this is goodbye. Farewell, <CHARNAME>. And watch your back. I don't think you really understand who's standing behind it.~ [BD53304] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_edwin","locals",3)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 1106 // from: 1104.1 1101.2 1100.2
  SAY #253305 /* ~Oh. Oh, that was slick. Really slick. There aren't enough O's in smoooooth for you.~ [BD53305] */
  IF ~~ THEN GOTO 1107
END

IF ~~ THEN BEGIN 1107 // from: 1106.0
  SAY #253306 /* ~All right, <CHARNAME>. You're clutching a bearded viper to your breast, but as long as you know you're doing it, I guess I can deal with it too.~ [BD53306] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_edwin","locals",2)
~ EXIT
END

IF WEIGHT #89 ~  Global("bd_neera_edwin","locals",4)
~ THEN BEGIN 1108 // from:
  SAY #253280 /* ~I can't be around Eddy Oddbody anymore. I don't like him, I don't trust him, and that cologne of his makes my eyes water.~ [BD53280] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_edwin","locals",3)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF WEIGHT #90 ~  AreaCheck("BD5100")
Global("SDD321","GLOBAL",0)
Global("bd_neera_plot","global",20)
~ THEN BEGIN 1109 // from:
  SAY #256633 /* ~Ahhh! SHUT UP, SHUT UP, SHUT UP!~ [BD56633] */
  IF ~~ THEN REPLY #256642 /* ~I'm sorry...?~ */ DO ~SetGlobal("SDD321","GLOBAL",2)
~ GOTO 1110
  IF ~~ THEN REPLY #256643 /* ~I'm sure Adoy feels the same way, trapped with all those thoughts of yours.~ */ DO ~SetGlobal("SDD321","GLOBAL",2)
~ GOTO 1113
  IF ~~ THEN REPLY #256644 /* ~Would there be any positive benefit to me pointing out that you're the one hollering at the top of her lungs, not me?~ */ DO ~SetGlobal("SDD321","GLOBAL",2)
~ GOTO 1113
END

IF ~~ THEN BEGIN 1110 // from: 1109.0
  SAY #256634 /* ~No, I'M sorry. It's not you. It's Adoy.~ [BD56634] */
  IF ~~ THEN GOTO 1111
END

IF ~~ THEN BEGIN 1111 // from: 1113.0 1110.0
  SAY #256635 /* ~The closer we get to the Fugue Plane, the louder he gets.~ [BD56635] */
  IF ~~ THEN REPLY #256646 /* ~We need to free him. But we still have no idea where this Mountain of Nepenthe is.~ */ GOTO 1116
  IF ~~ THEN REPLY #256648 /* ~We're getting close to the Fugue Plane? I thought it was on a mountain.~ */ GOTO 1112
  IF ~~ THEN REPLY #256651 /* ~I thought you'd silenced him.~ */ GOTO 1114
END

IF ~~ THEN BEGIN 1112 // from: 1111.1
  SAY #256636 /* ~That's what he said—I think that's what he said. Keep an eye out.~ [BD56636] */
  IF ~~ THEN UNSOLVED_JOURNAL #259562 /* ~The Call of the Wild Mage

I should search for a portal to the Fugue Plane.

I must find the Fugue Plane to release Neera from the distraction of the wild mage Adoy's spirit. Neera senses the "mountain" of Nepenthe is very close, somewhere in these caverns.~ */ EXIT
END

IF ~~ THEN BEGIN 1113 // from: 1109.2 1109.1
  SAY #256637 /* ~Sorry. Sorry. You're right. It's Adoy irritating me again.~ [BD56637] */
  IF ~~ THEN GOTO 1111
END

IF ~~ THEN BEGIN 1114 // from: 1111.2
  SAY #256638 /* ~Maybe not silenced so much as quieted down. Usually, he sounds like a... a babbling brook, or something not incredibly irritating. Now the babbling brook's like a massive waterfall, crashing down.~ [BD56638] */
  IF ~~ THEN GOTO 1115
END

IF ~~ THEN BEGIN 1115 // from: 1114.0
  SAY #256640 /* ~We need to get him out of the Fugue Plane. That's the only way to stop his yammering. Keep an eye out for a mountain.~ [BD56640] */
  IF ~~ THEN UNSOLVED_JOURNAL #259562 /* ~The Call of the Wild Mage

I should search for a portal to the Fugue Plane.

I must find the Fugue Plane to release Neera from the distraction of the wild mage Adoy's spirit. Neera senses the "mountain" of Nepenthe is very close, somewhere in these caverns.~ */ EXIT
END

IF ~~ THEN BEGIN 1116 // from: 1111.0
  SAY #256641 /* ~It's not far from here, I can tell you that much.~ [BD56641] */
  IF ~~ THEN UNSOLVED_JOURNAL #259562 /* ~The Call of the Wild Mage

I should search for a portal to the Fugue Plane.

I must find the Fugue Plane to release Neera from the distraction of the wild mage Adoy's spirit. Neera senses the "mountain" of Nepenthe is very close, somewhere in these caverns.~ */ EXIT
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 420
END

IF WEIGHT #91 ~  AreaCheck("BD5300")
Global("SDD321","GLOBAL",3)
~ THEN BEGIN 1117 // from:
  SAY #256665 /* ~This is it? This is the portal to the Fugue Plane? That's not a mount—ohhh, it's a FOUNTAIN. That makes more sense. Not a lot more sense, but a bit.~ [BD56665] */
  IF ~~ THEN DO ~SetGlobal("SDD321","GLOBAL",4)
~ GOTO 1118
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN DO ~SetGlobal("SDD321","GLOBAL",4)
~ EXTERN ~MINSCJ~ 421
END

IF ~~ THEN BEGIN 1118 // from: 1117.0
  SAY #256668 /* ~I need to get closer, and then Adoy should be able to get out of my head and back into the real world. I think. Hopefully.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #92 ~  Global("SDD321","GLOBAL",6)
~ THEN BEGIN 1119 // from:
  SAY #256712 /* ~Adoy! But you're... you're...~ [BD56712] */
  IF ~~ THEN GOTO 1120
END

IF ~~ THEN BEGIN 1120 // from: 1119.0
  SAY #256713 /* ~Uh, I don't know how to say this, but you're... well... a spirit. You're a little bit dead. Actually, more than a little. "Completely" would be more accurate.~ [BD56713] */
  IF ~~ THEN DO ~SetGlobal("SDD321","GLOBAL",8)
~ EXTERN ~BDADOY~ 0
END

IF ~~ THEN BEGIN 1121 // from:
  SAY #256715 /* ~So no matter what we did, we couldn't save you? And you knew? You spent weeks driving me insane for NO REASON AT ALL?!~ [BD56715] */
  IF ~~ THEN REPLY #256716 /* ~Do not be so quick to judge him, Neera. Let's hear him out.~ */ EXTERN ~BDADOY~ 1
  IF ~~ THEN REPLY #256717 /* ~You've much to answer for, Adoy.~ */ EXTERN ~BDADOY~ 2
  IF ~~ THEN REPLY #256718 /* ~In fairness, we've done more pointless things for less reason in the past.~ */ GOTO 1122
  IF ~~ THEN REPLY #256719 /* ~What's done is done. Adoy will no longer haunt you. Let's be on our way.~ */ EXTERN ~BDADOY~ 3
END

IF ~~ THEN BEGIN 1122 // from: 1121.2
  SAY #256720 /* ~Shut up, bucko! I don't wanna hear it.~ [BD56720] */
  IF ~~ THEN GOTO 1124
END

IF ~~ THEN BEGIN 1123 // from:
  SAY #256722 /* ~YOUR FACE IS UNBECOMING.~ [BD56722] */
  IF ~~ THEN EXTERN ~BDADOY~ 4
END

IF ~~ THEN BEGIN 1124 // from: 1122.0
  SAY #256725 /* ~I can't believe you, Adoy! Ugh! If you weren't already dead, I'd kill you myself!~ [BD56725] */
  IF ~~ THEN EXTERN ~BDADOY~ 4
END

IF ~~ THEN BEGIN 1125 // from:
  SAY #256729 /* ~...What?~ [BD56729] */
  IF ~~ THEN EXTERN ~BDADOY~ 5
END

IF ~~ THEN BEGIN 1126 // from:
  SAY #256732 /* ~What—? How can you think like that? How does your mind not strangle itself?~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 366
END

IF ~~ THEN BEGIN 1127 // from:
  SAY #256735 /* ~I think I'm gonna be sick.~ [BD56735] */
  IF ~~ THEN EXTERN ~BDADOY~ 6
END

IF ~~ THEN BEGIN 1128 // from:
  SAY #256742 /* ~One more second. What makes them more of a threat? I've dealt with Red Wizards before, you know.~ [BD56742] */
  IF ~~ THEN EXTERN ~BDADOY~ 7
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 367
END

IF ~~ THEN BEGIN 1129 // from:
  SAY #256745 /* ~Sounds like I'm gonna have to.~ [BD56745] */
  IF ~~ THEN EXTERN ~BDADOY~ 10
END

IF ~~ THEN BEGIN 1130 // from:
  SAY #256752 /* ~I will.~ [BD56752] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut322",TRUE)
~ EXIT
END

IF WEIGHT #93 ~  Global("SDD321","GLOBAL",8)
~ THEN BEGIN 1131 // from:
  SAY #256753 /* ~Well, that was... I don't know what that was.~ [BD56753] */
  IF ~~ THEN REPLY #256754 /* ~Are you going to be all right, Neera?~ */ DO ~SetGlobal("SDD321","GLOBAL",10)
~ GOTO 1132
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #256755 /* ~Tortured to death by Red Wizards. Not the best way to go.~ */ DO ~SetGlobal("SDD321","GLOBAL",10)
~ GOTO 1134
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #256755 /* ~Tortured to death by Red Wizards. Not the best way to go.~ */ DO ~SetGlobal("SDD321","GLOBAL",10)
~ EXTERN ~EDWINJ~ 368
  IF ~~ THEN REPLY #256756 /* ~We've got work to do. Come on.~ */ DO ~SetGlobal("SDD321","GLOBAL",10)
~ GOTO 1137
END

IF ~~ THEN BEGIN 1132 // from: 1131.0
  SAY #256757 /* ~I'm fine. It's the damned world that's the problem. On the upside, my head isn't splitting in two anymore. So there's that.~ [BD56757] */
  IF ~~ THEN GOTO 1135
END

IF ~~ THEN BEGIN 1133 // from:
  SAY #256758 /* ~Sacrificed for the advancement of Thayan magic. A painful death, perhaps, but suffered for the most worthy of causes.~ [BD56758] */
  IF ~~ THEN GOTO 1135
END

IF ~~ THEN BEGIN 1134 // from: 1131.1
  SAY #256759 /* ~It's horrible. I don't even want to think about it.~ */
  IF ~~ THEN GOTO 1135
END

IF ~~ THEN BEGIN 1135 // from: 1134.0 1133.0 1132.0
  SAY #256760 /* ~But if Adoy is right, if the Red Wizards are really coming... I'd better get prepared.~ [BD56760] */
  IF ~~ THEN REPLY #256761 /* ~If you need to go... I'll miss you, but I'll understand.~ */ GOTO 1136
  IF ~~ THEN REPLY #256762 /* ~Wait, you're leaving me now? NOW?~ */ GOTO 1136
  IF ~  !IsValidForPartyDialogue("edwin")
~ THEN REPLY #256763 /* ~Prepare by helping me crush Caelar. No Red Wizard could be a greater threat.~ */ GOTO 1136
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN REPLY #256763 /* ~Prepare by helping me crush Caelar. No Red Wizard could be a greater threat.~ */ EXTERN ~EDWINJ~ 369
END

IF ~~ THEN BEGIN 1136 // from: 1135.2 1135.1 1135.0
  SAY #256764 /* ~You saved me in Bridgefort. You helped me with Adoy. I'm not leaving you until Caelar's dealt with. Let's get going. We've got work to do.~ [BD56764] */
  IF ~~ THEN DO ~AddexperienceParty(18000)
~ SOLVED_JOURNAL #259563 /* ~The Call of the Wild Mage

Adoy's spirit has left Neera's mind.

I helped Neera set Adoy's spirit free. She is now as calm and focused as she ever gets. Unfortunately, Adoy implied the Red Wizards are hunting Neera, and other wild mages too. Neera will have to deal with this sooner or later.~ */ EXIT
END

IF ~~ THEN BEGIN 1137 // from: 1131.3
  SAY #256765 /* ~If what Adoy said is true, if the Red Wizards really are coming, I need to get ready. But... you saved me in Bridgefort. You helped me with Adoy. And Caelar's interested in you. I can't leave, not until she's dealt with. Well, what are you waiting for? Come on, we've got work to do!~ */
  IF ~~ THEN DO ~AddexperienceParty(18000)
~ SOLVED_JOURNAL #259563 /* ~The Call of the Wild Mage

Adoy's spirit has left Neera's mind.

I helped Neera set Adoy's spirit free. She is now as calm and focused as she ever gets. Unfortunately, Adoy implied the Red Wizards are hunting Neera, and other wild mages too. Neera will have to deal with this sooner or later.~ */ EXIT
END

IF WEIGHT #94 ~  Global("bd_neera_has_spider","global",0)
Global("bd_neera_plot","global",5)
Global("bd_spider_talk","locals",0)
AreaCheck("bd2000")
IsValidForPartyDialogue("voghiln")
~ THEN BEGIN 1138 // from:
  SAY #236033 /* ~Eight, eight. One two three four times two makes eight... Darn it! It shouldn't be this hard to find a seven-legged spider!~ [BD36033] */
  IF ~  Global("bd_voghiln_spider","global",0)
!PartyHasItem("bdspider")
~ THEN REPLY #236034 /* ~A seven-legged spider? I can't say I've ever seen such a thing.~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ EXTERN ~BDVOGHIJ~ 136
  IF ~  Global("bd_voghiln_spider","global",1)
!PartyHasItem("bdspider")
~ THEN REPLY #265536 /* ~Voghiln, didn't you say you'd seen a spider with seven legs?~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ EXTERN ~BDVOGHIJ~ 135
  IF ~~ THEN REPLY #236035 /* ~If you want a seven-legged spider, look for a five-legged fly. ~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1139
  IF ~~ THEN REPLY #236036 /* ~What could you possibly want with a seven-legged spider? ~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1140
END

IF ~~ THEN BEGIN 1139 // from: 1138.2
  SAY #236037 /* ~Ha ha. Funny.~ [BD36037] */
  IF ~~ THEN GOTO 1140
END

IF ~~ THEN BEGIN 1140 // from: 1139.0 1138.3
  SAY #236038 /* ~I need to get rid of Adoy. Well, not get rid of him—YES, Adoy, I was just about to say—not get rid of him, but to get him out of wherever he is. And MY HEAD.~ [BD36038] */
  IF ~  Global("bd_voghiln_spider","global",0)
!PartyHasItem("bdspider")
~ THEN REPLY #236039 /* ~A seven-legged spider, you say. ~ */ GOTO 1141
  IF ~  PartyHasItem("bdspider")
~ THEN REPLY #236070 /* ~It seems Tymora smiles upon you, Neera. I've actually got a seven-legged spider leg. Here, take it.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259551,QUEST)
~ GOTO 1154
  IF ~  Global("bd_voghiln_spider","global",1)
!PartyHasItem("bdspider")
~ THEN REPLY #266662 /* ~I seem to recall our skald friend mentioning a seven-legged spider. Have you encountered such a creature, Voghiln?~ */ EXTERN ~BDVOGHIJ~ 136
  IF ~  Global("bd_voghiln_spider","global",0)
~ THEN REPLY #236040 /* ~We need to find a way to shut that loon up before he drives you crazy. Well, craziER. You're already pretty—well, you know.~ */ EXTERN ~BDVOGHIJ~ 141
  IF ~  Global("bd_voghiln_spider","global",0)
~ THEN REPLY #236041 /* ~Are you sure he's real? The voice in your head, I mean. ~ */ GOTO 1144
END

IF ~~ THEN BEGIN 1141 // from: 1140.0
  SAY #236042 /* ~It'll be six-legged when I've gotten what I need.~ [BD36042] */
  IF ~~ THEN EXTERN ~BDVOGHIJ~ 135
END

IF ~~ THEN BEGIN 1142 // from:
  SAY #236044 /* ~You know where I can find a seven-legged spider?~ [BD36044] */
  IF ~~ THEN EXTERN ~BDVOGHIJ~ 136
END

IF ~~ THEN BEGIN 1143 // from:
  SAY #236054 /* ~I'm a half-elf.~ [BD36054] */
  IF ~~ THEN EXTERN ~BDVOGHIJ~ 140
END

IF ~~ THEN BEGIN 1144 // from: 1140.4
  SAY #236057 /* ~Is he real? Of course he's—YES, I'M TELLING—of course he's real!~ [BD36057] */
  IF ~~ THEN GOTO 1145
END

IF ~~ THEN BEGIN 1145 // from: 1144.0
  SAY #236058 /* ~He's very real! He's TOO real! And he WON'T STOP TALKING!~ [BD36058] */
  IF ~~ THEN GOTO 1146
END

IF ~~ THEN BEGIN 1146 // from: 1145.0
  SAY #236059 /* ~I need help, <CHARNAME>! I need the leg of a seven-legged spider!~ [BD36059] */
  IF ~~ THEN EXTERN ~BDVOGHIJ~ 135
END

IF ~~ THEN BEGIN 1147 // from:
  SAY #236061 /* ~Yeah, fine, do that, but can he draw us a map to the seven-legged spider first?~ [BD36061] */
  IF ~~ THEN EXTERN ~BDVOGHIJ~ 143
END

IF WEIGHT #95 ~  Global("bd_neera_has_spider","global",0)
Global("bd_neera_plot","global",5)
Global("bd_spider_talk","locals",0)
AreaCheck("bd2000")
!IsValidForPartyDialogue("voghiln")
~ THEN BEGIN 1148 // from:
  SAY #236033 /* ~Eight, eight. One two three four times two makes eight... Darn it! It shouldn't be this hard to find a seven-legged spider!~ [BD36033] */
  IF ~  !PartyHasItem("bdspider")
~ THEN REPLY #236034 /* ~A seven-legged spider? I can't say I've ever seen such a thing.~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1150
  IF ~~ THEN REPLY #236035 /* ~If you want a seven-legged spider, look for a five-legged fly. ~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1149
  IF ~  !PartyHasItem("bdspider")
Global("bd_pc_saw_spider","global",1)
~ THEN REPLY #236063 /* ~I can scarcely believe I'm saying this, but I know where you can find one. I encountered a cluster of giant spiders not far from here. One had seven legs. ~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1152
  IF ~~ THEN REPLY #236036 /* ~What could you possibly want with a seven-legged spider? ~ */ DO ~SetGlobal("bd_spider_talk","locals",1)
~ GOTO 1150
END

IF ~~ THEN BEGIN 1149 // from: 1148.1
  SAY #236037 /* ~Ha ha. Funny.~ [BD36037] */
  IF ~~ THEN GOTO 1150
END

IF ~~ THEN BEGIN 1150 // from: 1149.0 1148.3 1148.0
  SAY #236064 /* ~I need to get rid of Adoy. Well, not get rid of him—YES, Adoy, I was just about to say—not get rid of him, but to get him out of wherever he is. And MY HEAD.~ [BD36064] */
  IF ~~ THEN REPLY #236065 /* ~A seven-legged spider, you say. ~ */ GOTO 1151
  IF ~  PartyHasItem("bdspider")
~ THEN REPLY #236070 /* ~It seems Tymora smiles upon you, Neera. I've actually got a seven-legged spider leg. Here, take it.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259551,QUEST)
~ GOTO 1154
  IF ~~ THEN REPLY #236066 /* ~We need to find a way to shut that loon up before he drives you crazy. Crazier, I mean. You're already pretty—well, you know. ~ */ GOTO 1153
  IF ~~ THEN REPLY #236067 /* ~Are you sure he's real? The voice in your head I mean. ~ */ GOTO 1156
END

IF ~~ THEN BEGIN 1151 // from: 1150.0
  SAY #236068 /* ~It'll be six-legged when I've gotten what I need.~ [BD36068] */
  IF ~~ THEN REPLY #236069 /* ~I haven't seen one, but I'll keep an eye out. ~ */ GOTO 1155
  IF ~  PartyHasItem("bdspider")
~ THEN REPLY #236070 /* ~It seems Tymora smiles upon you, Neera. I've actually got a seven-legged spider leg. Here, take it.~ */ DO ~TakePartyItem("bdspider")
DestroyItem("bdspider")
IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
AddJournalEntry(259551,QUEST)
~ GOTO 1154
  IF ~  !PartyHasItem("bdspider")
Global("bd_pc_saw_spider","global",1)
~ THEN REPLY #236071 /* ~I can scarcely believe I'm saying this, but I know where you can find one. I encountered a cluster of giant spiders not far from here. One had seven legs. ~ */ GOTO 1152
END

IF ~~ THEN BEGIN 1152 // from: 1151.2 1148.2
  SAY #236072 /* ~I need to go there. RIGHT NOW. Can you take me, pleeeeease?~ [BD36072] */
  IF ~~ THEN DO ~SetGlobal("bd_reveal_spider_lair","global",1)
AddJournalEntry(259548,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1153 // from: 1150.2
  SAY #236074 /* ~I do know. And you have no idea how sad it makes me to admit it—ADOY, IF YOU DON'T STOP YAMMERING, I SWEAR I'M GOING TO BLUDGEON MYSELF TO DEATH WITH A ROCK! Sorry, sorry. But yeah. I need help. Really.~ [BD36074] */
  IF ~~ THEN DO ~AddJournalEntry(259549,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1154 // from: 1151.1 1150.1 1140.1 920.2 902.2
  SAY #236076 /* ~This... This is AWESOME. Thank you so, so much, <CHARNAME>! Yeah. Yeah, this'll be perfect.~ [BD36076] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1155 // from: 1151.0
  SAY #236078 /* ~I knew it was a long shot. Thanks, <CHARNAME>.~ [BD36078] */
  IF ~~ THEN DO ~AddJournalEntry(259549,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1156 // from: 1150.3
  SAY #236079 /* ~He's very real! He's TOO real! And he WON'T STOP TALKING! Sorry, sorry. But yeah. I need help. Really.~ [BD36079] */
  IF ~~ THEN DO ~AddJournalEntry(259549,QUEST)
~ EXIT
END

IF WEIGHT #96 ~  Global("bd_neera_has_spider","global",0)
OR(2)
Global("bd_neera_plot","global",5)
Global("bd_neera_plot","global",11)
PartyHasItem("bdspider")
~ THEN BEGIN 1157 // from:
  SAY #236084 /* ~Yeah. Yeah, this'll be perfect. Thank you so much, <CHARNAME>. At this rate, I won't be driven completely mad before I get rid of—I mean, before I free Adoy.~ [BD36084] */
  IF ~~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
TakePartyItem("bdspider")
DestroyItem("bdspider")
AddJournalEntry(259551,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",1)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
TakePartyItem("bdspider")
DestroyItem("bdspider")
AddJournalEntry(259551,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
TakePartyItem("bdspider")
DestroyItem("bdspider")
AddJournalEntry(259551,QUEST)
~ EXIT
  IF ~  Global("bd_neera_items","global",3)
~ THEN DO ~IncrementGlobal("bd_neera_items","global",1)
SetGlobal("bd_neera_has_spider","global",1)
TakePartyItem("bdspider")
DestroyItem("bdspider")
AddJournalEntry(259551,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1158 // from:
  SAY #251279 /* ~You trust me with this? Thanks!~ */
  IF ~~ THEN EXTERN ~BDTRISTI~ 15
END

IF WEIGHT #97 ~  Global("bd_neera_plot","global",10)
GlobalGT("bd_neera_items","global",4)
~ THEN BEGIN 1159 // from:
  SAY #236087 /* ~All right! That's everything I need! LET'S DO THIS! Any time it's convenient for you, of course, <CHARNAME>. But, uh. Sooner. Sooner is better. Right now would be best.~ [BD36087] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",11)
~ GOTO 1160
END

IF ~~ THEN BEGIN 1160 // from: 1159.0
  SAY #236089 /* ~But any time you're ready, I can brew this godsforsaken potion and finally silence this godsforsaken mage in my godsforsaken head! YES, I HEARD THAT!~ [BD36089] */
  IF ~~ THEN GOTO 1161
END

IF ~~ THEN BEGIN 1161 // from: 1160.0
  SAY #236090 /* ~Deep breaths, Neera. Okay. Whenever you're good, <CHARNAME>, I'm good. Good. I'm good.~ [BD36090] */
  IF ~~ THEN DO ~AddJournalEntry(259554,QUEST)
~ EXIT
END

IF WEIGHT #98 ~  Global("bd_neera_plot","global",11)
GlobalGT("bd_neera_items","global",4)
~ THEN BEGIN 1162 // from:
  SAY #236091 /* ~I'm so very, very ready for this to be over already. Go to sleep, <CHARNAME>. This is gonna take a while.~ [BD36091] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",12)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #99 ~  Global("bd_neera_plot","global",12)
~ THEN BEGIN 1163 // from:
  SAY #236092 /* ~IT IS DONE. Ha hah! It is done! Dramatic, huh? All right... here goes nothin'...~ [BD36092] */
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("bd_neera_plot","global",13)
SmallWait(10)
SetSequence(SEQ_READY)
SmallWait(5)
CreateVisualEffectObject("sphealin",Myself)
SmallWait(50)
ReallyForceSpellRES("bdwynan",Myself)
SmallWait(35)
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #100 ~  Global("bd_neera_plot","global",13)
GlobalGT("bd_neera_items","global",4)
~ THEN BEGIN 1164 // from:
  SAY #236094 /* ~Yes. Yes. YES! Silence—blissful, glorious silence! I never thought I'd hear it again. Or not hear it again. Can you hear silence?~ [BD36094] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
~ GOTO 1165
END

IF ~~ THEN BEGIN 1165 // from: 1164.0
  SAY #236095 /* ~Adoy's still there. I can feel him, but I can live with that. I think I could even... I totally could. But should I?~ [BD36095] */
  IF ~~ THEN REPLY #236096 /* ~Slow down. Use your words. ~ */ GOTO 1167
  IF ~~ THEN REPLY #236097 /* ~Should you explain to us what in the hells you're talking about? Yes. You should definitely do that.~ */ GOTO 1168
  IF ~~ THEN REPLY #236098 /* ~Do whatever you're going to do, but do it quickly. We've lost enough time dealing with your imaginary friend. ~ */ GOTO 1166
END

IF ~~ THEN BEGIN 1166 // from: 1165.2
  SAY #236099 /* ~Fine. I get it. Stop talking about Adoy. Done. My lips are sealed. Onward!~ [BD36099] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1167 // from: 1165.0
  SAY #236100 /* ~Right. Words. Okay.~ [BD36100] */
  IF ~~ THEN GOTO 1169
END

IF ~~ THEN BEGIN 1168 // from: 1165.1
  SAY #236101 /* ~Sheesh, witchy britches. Calm down!~ [BD36101] */
  IF ~~ THEN GOTO 1169
END

IF ~~ THEN BEGIN 1169 // from: 1168.0 1167.0
  SAY #236102 /* ~The potion helped me focus. At least, I think that's what it did. I can control our link, anyway. That's the important bit.~ [BD36102] */
  IF ~~ THEN GOTO 1170
END

IF ~~ THEN BEGIN 1170 // from: 1169.0
  SAY #236103 /* ~I can kind of—make him louder or quieter. If that makes sense.~ [BD36103] */
  IF ~~ THEN GOTO 1171
END

IF ~~ THEN BEGIN 1171 // from: 1170.0
  SAY #236104 /* ~I THINK I could sever the connection completely if I wanted. Just... cut him off. I'm just not so sure I should.~ [BD36104] */
  IF ~~ THEN REPLY #236105 /* ~Really? Why not? ~ */ GOTO 1173
  IF ~~ THEN REPLY #236106 /* ~What's the alternative? ~ */ GOTO 1174
  IF ~~ THEN REPLY #236107 /* ~It's your head, Neera. You've got to do what's best for you. ~ */ GOTO 1172
END

IF ~~ THEN BEGIN 1172 // from: 1171.2
  SAY #236108 /* ~I get that. I do. But...~ [BD36108] */
  IF ~~ THEN GOTO 1173
END

IF ~~ THEN BEGIN 1173 // from: 1172.0 1171.0
  SAY #236109 /* ~He's trapped... somewhere. I think he's in trouble. If I cut him off, what'll happen to him?~ [BD36109] */
  IF ~~ THEN REPLY #236110 /* ~If he's in trouble, we should try to save him. ~ */ GOTO 1175
  IF ~~ THEN REPLY #236111 /* ~Why do you care? ~ */ GOTO 1176
  IF ~~ THEN REPLY #236112 /* ~As long as it doesn't happen to you, what difference does it make? ~ */ GOTO 1177
END

IF ~~ THEN BEGIN 1174 // from: 1171.1
  SAY #236113 /* ~Uh, I'm not really sure yet.~ [BD36113] */
  IF ~~ THEN GOTO 1175
END

IF ~~ THEN BEGIN 1175 // from: 1176.2 1176.1 1174.0 1173.0
  SAY #236114 /* ~All right, I'm gonna talk to him.~ [BD36114] */
  IF ~~ THEN REPLY #236115 /* ~Take as long as you need. ~ */ DO ~SetGlobal("bd_neera_plot","global",19)
StartCutSceneMode()
FadeToColor([10.0],0)
Wait(3)
FadeFromColor([10.0],0)
StartDialogNoSet(Player1)
~ EXIT
  IF ~~ THEN REPLY #236116 /* ~Well, that should be fun. And by fun, I mean the exact opposite of fun. ~ */ GOTO 1179
  IF ~~ THEN REPLY #236117 /* ~Keep it quick. We've got things to do. ~ */ DO ~SetGlobal("bd_neera_plot","global",19)
StartCutSceneMode()
FadeToColor([10.0],0)
Wait(3)
FadeFromColor([10.0],0)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 1176 // from: 1173.1
  SAY #236118 /* ~After everything he's put me through, I almost *want* him to suffer, but... he's still a wild mage. I can't just leave him, can I?~ [BD36118] */
  IF ~~ THEN REPLY #236119 /* ~I would. ~ */ GOTO 1177
  IF ~~ THEN REPLY #236120 /* ~I guess not? ~ */ GOTO 1175
  IF ~~ THEN REPLY #236121 /* ~I think you already know the answer to that question. ~ */ GOTO 1175
END

IF ~~ THEN BEGIN 1177 // from: 1176.0 1173.2
  SAY #236122 /* ~You're right. Whatever it is—he got himself into it. He can get himself OUT of it. This'll just take a second...~ [BD36122] */
  IF ~~ THEN GOTO 1178
END

IF ~~ THEN BEGIN 1178 // from: 1177.0
  SAY #236124 /* ~FREEDOMMMMM! No more Adoy, no more headaches... I could kiss you!~ [BD36124] */
  IF ~  OR(2)
Global("bd_neera_romanceactive","global",1)
Global("bd_neera_romanceactive","global",2)
~ THEN REPLY #236125 /* ~Now there's a thought... ~ */ GOTO 1184
  IF ~  !Global("bd_neera_romanceactive","global",1)
!Global("bd_neera_romanceactive","global",2)
~ THEN REPLY #236125 /* ~Now there's a thought... ~ */ GOTO 1190
  IF ~~ THEN REPLY #236126 /* ~What do you think will happen to Adoy? ~ */ GOTO 1191
  IF ~~ THEN REPLY #236127 /* ~Then let's get going. ~ */ GOTO 1192
END

IF ~~ THEN BEGIN 1179 // from: 1175.1
  SAY #236128 /* ~Hey, at least you don't have to listen to the guy. Give me a sec; this won't take long...~ [BD36128] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",19)
StartCutSceneMode()
FadeToColor([10.0],0)
Wait(3)
FadeFromColor([10.0],0)
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #101 ~  Global("bd_neera_plot","global",19)
~ THEN BEGIN 1180 // from:
  SAY #236129 /* ~...I don't CARE if it's embarrassing, just TELL ME WHERE YOU ARE.~ [BD36129] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",20)
~ GOTO 1181
END

IF ~~ THEN BEGIN 1181 // from: 1180.0
  SAY #236130 /* ~Oh, you have got to be kidding... How in the hells did you manage that?~ [BD36130] */
  IF ~~ THEN GOTO 1182
END

IF ~~ THEN BEGIN 1182 // from: 1181.0
  SAY #236131 /* ~Yes, I know you're not in one of the Hells. It was— Just listen a sec— Stop flapping your insubstantial ghost lips, PLEASE. Oh, that does it—this talk is over. I can do that now. BYE.~ [BD36131] */
  IF ~~ THEN GOTO 1183
END

IF ~~ THEN BEGIN 1183 // from: 1182.0
  SAY #236133 /* ~Fugue Plane. Ugh. Okay. It *sounds* like he's trapped in the Fugue Plane.~ [BD36133] */
  IF ~  CheckStatLT(Player1,15,INT)
~ THEN REPLY #236134 /* ~The Fugue Plane? ~ */ GOTO 1193
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY #236135 /* ~Isn't the Fugue Plane where souls go when they die? ~ */ GOTO 1194
  IF ~~ THEN REPLY #236136 /* ~How did he get there? ~ */ GOTO 1195
  IF ~~ THEN REPLY #236137 /* ~And how would we bring him back? ~ */ GOTO 1196
END

IF ~~ THEN BEGIN 1184 // from: 1178.0
  SAY #236138 /* ~I've had a few too many thoughts in my head lately. It's time to act. Come a little closer...~ [BD36138] */
  IF ~~ THEN DO ~FadeFromColor([10.0],0)
~ GOTO 1185
END

IF ~~ THEN BEGIN 1185 // from: 1184.0
  SAY #236139 /* ~Mmm. Not bad. I'd rate it a six out of ten. A solid effort.~ [BD36139] */
  IF ~~ THEN REPLY #236140 /* ~I guess I'll just have to keep practicing, won't I? ~ */ GOTO 1186
  IF ~~ THEN REPLY #236141 /* ~Next time, I'll try harder. ~ */ GOTO 1186
END

IF ~~ THEN BEGIN 1186 // from: 1185.1 1185.0
  SAY #236142 /* ~...Uh, okay... Uh, hey! We should. Um. Go. Yes.~ [BD36142] */
  IF ~~ THEN GOTO 1188
  IF ~  NumInPartyGT(2)
~ THEN GOTO 1187
END

IF ~~ THEN BEGIN 1187 // from: 1186.1
  SAY #236143 /* ~The others are staring.~ [BD36143] */
  IF ~~ THEN GOTO 1188
  IF ~  IsValidForPartyDialogue("glint")
~ THEN EXTERN ~BDGLINTJ~ 208
END

IF ~~ THEN BEGIN 1188 // from: 1187.0 1186.0
  SAY #236144 /* ~Onward!~ [BD36144] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1189 // from:
  SAY #236148 /* ~Other things to do. Right. Onward!~ [BD36148] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1190 // from: 1178.1
  SAY #236149 /* ~Ah. Yeah, I guess it is a thought. I think—it'd probably be best if we kept it that way. Onward!~ [BD36149] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1191 // from: 1178.2
  SAY #236150 /* ~Don't know, don't care. He's caused me more than enough misery. Onward!~ [BD36150] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1192 // from: 1178.3
  SAY #236151 /* ~Sounds like a plan to me! Onward!~ [BD36151] */
  IF ~~ THEN DO ~AddJournalEntry(259555,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1193 // from: 1183.0
  SAY #236152 /* ~It's the place souls go after their host bodies die. Not a nice place to visit, and you shouldn't be able to live there, even though Adoy is somehow managing it.~ [BD36152] */
  IF ~~ THEN GOTO 1196
END

IF ~~ THEN BEGIN 1194 // from: 1183.1
  SAY #236153 /* ~Yeah. How he got there, I don't know.~ [BD36153] */
  IF ~~ THEN GOTO 1195
END

IF ~~ THEN BEGIN 1195 // from: 1194.0 1183.2
  SAY #236155 /* ~My magic's done some pretty crazy things in the past... I guess it's not totally out of the question.~ [BD36155] */
  IF ~~ THEN GOTO 1196
END

IF ~~ THEN BEGIN 1196 // from: 1195.0 1193.0 1183.3
  SAY #236156 /* ~He says there's some kind of mountain nearby that can help him out. I think he said mountain. He was, uh, agitated. Anyway, if I can find this Mountain of Nepenthe, I can bring him back to the Material Plane.~ [BD36156] */
  IF ~~ THEN REPLY #236157 /* ~So where do we start? ~ */ GOTO 1198
  IF ~~ THEN REPLY #236158 /* ~And we want to do this because...? ~ */ GOTO 1197
  IF ~~ THEN REPLY #236159 /* ~Mountain of Nepenthe. Never heard of it. ~ */ GOTO 1199
  IF ~~ THEN REPLY #236160 /* ~You understand this is a distraction from our goal here, right? If we have a chance to help Adoy, fine, but ending Caelar's crusade is the important thing. ~ */ GOTO 1200
END

IF ~~ THEN BEGIN 1197 // from: 1196.1
  SAY #236161 /* ~Because if I were stuck in some kind of limbo dimension and another wild mage knew about it, I'd hope she'd help me.~ [BD36161] */
  IF ~~ THEN GOTO 1198
END

IF ~~ THEN BEGIN 1198 // from: 1197.0 1196.0
  SAY #236162 /* ~Adoy'll tell me when we're near. It's roughly north of here, so it's on our way... I think. Guess we'll find out.~ [BD36162] */
  IF ~~ THEN DO ~AddJournalEntry(259556,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1199 // from: 1196.2
  SAY #236163 /* ~Yeah. Me neither. Adoy'll tell me when we're near. It's roughly north of here, so it's on our way... I think. Guess we'll find out.~ [BD36163] */
  IF ~~ THEN DO ~AddJournalEntry(259556,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1200 // from: 1196.3
  SAY #236164 /* ~I get it. Adoy'll tell me when we're near. It's roughly north of here, so it's on our way... I think. Guess we'll find out.~ [BD36164] */
  IF ~~ THEN DO ~AddJournalEntry(259556,QUEST)
~ EXIT
END

IF WEIGHT #102 ~  Global("bd_neera_plot","global",10)
GlobalLT("bd_neera_items","global",5)
~ THEN BEGIN 1201 // from:
  SAY #240082 /* ~No. Nope. No. NO. Uh-uh. No, no, no, no, no, no, NO. NO MORE!~ [BD40082] */
  IF ~~ THEN REPLY #240083 /* ~Neera? Are you all right?~ */ DO ~SetGlobal("bd_neera_plot","global",11)
~ GOTO 1202
  IF ~~ THEN REPLY #240084 /* ~Adoy?~ */ DO ~SetGlobal("bd_neera_plot","global",11)
~ GOTO 1203
  IF ~~ THEN REPLY #240085 /* ~What are you raving incoherently about now?~ */ DO ~SetGlobal("bd_neera_plot","global",11)
~ GOTO 1203
END

IF ~~ THEN BEGIN 1202 // from: 1201.0
  SAY #240086 /* ~That depends on how you define "all right"—oh wait, no, it doesn't, and I'm not all right. I'm not all right at all!~ [BD40086] */
  IF ~~ THEN GOTO 1203
END

IF ~~ THEN BEGIN 1203 // from: 1202.0 1201.2 1201.1
  SAY #240088 /* ~I can't take it anymore, <CHARNAME>! If I go one more day with Adoy buzzing around in my head, I'm gonna d—I don't know what I'm gonna do, but it won't be good! I need him out—now!~ [BD40088] */
  IF ~~ THEN REPLY #240089 /* ~What can we do? We don't have all the ingredients you need for your potion.~ */ GOTO 1204
  IF ~~ THEN REPLY #240090 /* ~Can you make the potion with the elements you've got?~ */ GOTO 1207
  IF ~~ THEN REPLY #240091 /* ~I could knock you out. That would stop him talking in your head and you talking in my vicinity.~ */ GOTO 1205
END

IF ~~ THEN BEGIN 1204 // from: 1203.0
  SAY #240092 /* ~I don't care. Next time we rest, I'm making the potion with what I do have. I've got to do SOMETHING.~ [BD40092] */
  IF ~~ THEN DO ~AddJournalEntry(259557,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1205 // from: 1203.2
  SAY #240096 /* ~That's just it—it WON'T stop him talking. Even when I'm asleep or unconscious, he's still there, nattering away! YES, I SAID NATTERING. BECAUSE YOU NATTER. YOU ARE A NATTERER.~ [BD40096] */
  IF ~~ THEN GOTO 1206
END

IF ~~ THEN BEGIN 1206 // from: 1207.0 1205.0
  SAY #240098 /* ~I don't care how many of the potion's ingredients I've got. I'm making it the next time we stop to rest. I've got to do SOMETHING.~ [BD40098] */
  IF ~~ THEN DO ~AddJournalEntry(259557,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1207 // from: 1203.1
  SAY #240103 /* ~It's risky, but it's a risk I'm ready to take.~ [BD40103] */
  IF ~~ THEN GOTO 1206
END

IF WEIGHT #103 ~  Global("bd_neera_plot","global",11)
GlobalLT("bd_neera_items","global",5)
~ THEN BEGIN 1208 // from:
  SAY #240110 /* ~I am so very, very ready for this to be over already. Go to sleep, <CHARNAME>. This potion's gonna take a while.~ [BD40110] */
  IF ~~ THEN REPLY #240111 /* ~Are you sure you want to do this, Neera? We might be able to find some more of the ingredients for the potion...~ */ DO ~SetGlobal("bd_neera_plot","global",12)
~ GOTO 1209
  IF ~~ THEN REPLY #240112 /* ~Making this potion now—it's a bad idea. Can't you hold on just a little longer?~ */ DO ~SetGlobal("bd_neera_plot","global",12)
~ GOTO 1211
  IF ~~ THEN REPLY #240113 /* ~You're determined to do this, aren't you? You're a fool—but fools can be amusing. Go ahead, I'll not stop you.~ */ DO ~SetGlobal("bd_neera_plot","global",12)
~ GOTO 1212
END

IF ~~ THEN BEGIN 1209 // from: 1208.0
  SAY #240114 /* ~It's happening now—YES, IT IS. YOU CAN'T STOP ME.~ [BD40114] */
  IF ~~ THEN GOTO 1210
END

IF ~~ THEN BEGIN 1210 // from: 1211.0 1209.0
  SAY #240115 /* ~You see? You see? I can't put up with that anymore! I can't. I won't. Go to sleep. We'll talk about this again in a few hours.~ [BD40115] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 1211 // from: 1208.1
  SAY #240116 /* ~Even if the potion kills me, it can't be worse than having Adoy buzzing in my head. THAT'S RIGHT, I'D RATHER DIE THAN LISTEN TO YOU—I don't CARE about your feelings!~ [BD40116] */
  IF ~~ THEN GOTO 1210
END

IF ~~ THEN BEGIN 1212 // from: 1208.2
  SAY #240117 /* ~Well, thanks for the support. Now go to sleep; I've got work to do.~ [BD40117] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #104 ~  Global("bd_neera_plot","global",13)
GlobalLT("bd_neera_items","global",5)
~ THEN BEGIN 1213 // from:
  SAY #247414 /* ~Yes. YES! Silence, wonderful, amazing, GLORIOUS silence! It worked! But—something's wrong. Adoy's gone, but—what's happening to me...?~ [BD47414] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("bd_neera_plot","global",14)
SmallWait(5)
ReallyForceSpellRES("bdconfus",Myself)
SmallWait(15)
SetSequence(SEQ_READY)
SmallWait(5)
StartDialogNoSet(Player1)
~ EXIT
  IF ~  Global("bd_neera_items","global",3)
~ THEN DO ~StartCutSceneMode()
SetGlobal("bd_neera_plot","global",14)
SmallWait(5)
ReallyForceSpellRES("bdconfus",Myself)
SmallWait(15)
ReallyForceSpellRES("bdneera2",Myself)
SmallWait(15)
SetSequence(SEQ_READY)
SmallWait(5)
StartDialogNoSet(Player1)
~ EXIT
  IF ~  Global("bd_neera_items","global",2)
~ THEN DO ~StartCutSceneMode()
SetGlobal("bd_neera_plot","global",14)
SmallWait(5)
ReallyForceSpellRES("bdconfus",Myself)
SmallWait(15)
ReallyForceSpellRES("bdneera2",Myself)
SmallWait(15)
SetSequence(SEQ_READY)
ReallyForceSpellRES("bdneera2",Myself)
SmallWait(15)
SetSequence(SEQ_READY)
SmallWait(5)
StartDialogNoSet(Player1)
~ EXIT
  IF ~  GlobalLT("bd_neera_items","global",2)
~ THEN DO ~StartCutSceneMode()
SetGlobal("bd_neera_plot","global",14)
SmallWait(5)
ReallyForceSpellRES("bdconfus",Myself)
SmallWait(15)
ReallyForceSpellRES("bdneera2",Myself)
SmallWait(15)
SetSequence(SEQ_READY)
ReallyForceSpellRES("bdneera2",Myself)
SmallWait(15)
ReallyForceSpellRES("bdneera3",Myself)
SetGlobalTimer("bd_neera_boom_timer","global",TWO_ROUNDS)
SetGlobal("bd_neera_boom","global",1)
SmallWait(15)
SetSequence(SEQ_READY)
SmallWait(5)
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #105 ~  Global("bd_neera_plot","global",14)
GlobalGT("bd_neera_items","global",2)
~ THEN BEGIN 1214 // from:
  SAY #247415 /* ~Well. This isn't ideal. But I'll take it over having someone else endlessly babbling in my brain.~ [BD47415] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
AddJournalEntry(259558,QUEST_DONE)
~ EXIT
END

IF WEIGHT #106 ~  Global("bd_neera_plot","global",14)
Global("bd_neera_items","global",2)
~ THEN BEGIN 1215 // from:
  SAY #247416 /* ~Oh, gods... What have I done?~ [BD47416] */
  IF ~~ THEN REPLY #247417 /* ~It's not so bad, Neera. You're going to get through this. I'll make sure of it.~ */ DO ~SetGlobal("bd_neera_plot","global",15)
~ GOTO 1216
  IF ~~ THEN REPLY #247418 /* ~You drank a potion you knew was flawed, and now you pay the price.~ */ DO ~SetGlobal("bd_neera_plot","global",15)
~ GOTO 1217
END

IF ~~ THEN BEGIN 1216 // from: 1218.0 1215.0
  SAY #247419 /* ~Th-thanks, <CHARNAME>. I don't know what I'd do without you...~ [BD47419] */
  IF ~~ THEN DO ~AddJournalEntry(259558,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1217 // from: 1215.1
  SAY #247421 /* ~Didn't your mother ever tell you that if you can't say anything nice about— No. I guess she wouldn't have, would she? I'm sorry, <CHARNAME>.~ [BD47421] */
  IF ~~ THEN GOTO 1218
END

IF ~~ THEN BEGIN 1218 // from: 1217.0
  SAY #247422 /* ~It's just—I knew taking the potion was risky, but I never expected... this. I think I—I need to be alone right now.~ [BD47422] */
  IF ~~ THEN REPLY #247423 /* ~No. You need to be with friends right now. I won't let you face this alone.~ */ GOTO 1216
  IF ~~ THEN REPLY #247424 /* ~I understand. But you don't have to go through this on your own. If you change your mind, head back to the camp. I'll return there myself soon enough.~ */ GOTO 1219
  IF ~~ THEN REPLY #247425 /* ~Show some spine, girl. You made a mistake, you pay the price. Don't make ME suffer for it too.~ */ GOTO 1220
END

IF ~~ THEN BEGIN 1219 // from: 1218.1
  SAY #247426 /* ~I'll do that. Goodbye, <CHARNAME>. For now, anyway.~ [BD47426] */
  IF ~~ THEN DO ~SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
AddJournalEntry(259558,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 1220 // from: 1218.2
  SAY #247427 /* ~You always come through for me, don't you? Fine. I'll stay with you. But don't expect me to be happy about it.~ [BD47427] */
  IF ~~ THEN DO ~AddJournalEntry(259558,QUEST_DONE)
~ EXIT
END

IF WEIGHT #107 ~  Global("bd_neera_plot","global",14)
GlobalLT("bd_neera_items","global",2)
~ THEN BEGIN 1221 // from:
  SAY #247428 /* ~<CHARNAME>... I think you should run now.~ [BD47428] */
  IF ~~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
AddJournalEntry(259559,QUEST_DONE)
~ EXIT
  IF ~  IsValidForPartyDialogue("glint")
~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
AddJournalEntry(259559,QUEST_DONE)
~ EXTERN ~BDGLINTJ~ 209
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
AddJournalEntry(259559,QUEST_DONE)
~ EXTERN ~DYNAHJ~ 104
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN DO ~SetGlobal("bd_neera_plot","global",15)
AddJournalEntry(259559,QUEST_DONE)
~ EXTERN ~BDCORWIJ~ 121
END

IF ~~ THEN BEGIN 1222 // from:
  SAY #258551 /* ~You could call it "Fifty Shades of What the Hells Was I Thinking."~ */
  IF ~~ THEN EXTERN ~BDHYRETH~ 15
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 373
END
