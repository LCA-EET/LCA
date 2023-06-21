// creator  : weidu (version 24900)
// argument : FIRKRA02.DLG
// game     : .
// source   : ./override/FIRKRA02.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~FIRKRA02~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43148 /* ~Welcome. You have come as I wanted. It has been an interesting game, but to tell the truth... I tire of it.~ [FIRKRA08] */
  IF ~~ THEN REPLY #43149 /* ~Monster! Why have you done this to me? Why try to ruin my reputation?~ */ GOTO 1
  IF ~~ THEN REPLY #43150 /* ~So here I am. Why have you done this? Why have you forced this confrontation?~ */ GOTO 1
  IF ~~ THEN REPLY #43151 /* ~As do I. I do not even know the reason for it!~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY #43152 /* ~For my amusement, for my curiosity, and for my memory of transgressions long since past—all of this spurred me on, but *sigh* I grow bored with you.~ [FIRKRA09] */
  IF ~~ THEN REPLY #43154 /* ~What are you speaking of? Explain!~ */ GOTO 2
  IF ~~ THEN REPLY #43155 /* ~This tells me nothing. You meander around the truth like a cat taunting a mouse.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY #43153 /* ~Very well, an in-depth response. *sigh* Your fathers are my interest. Your lineage crosses the mortal and spiritual, and both concern me somewhat.~ [FIRKRA10] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43156 /* ~Gorion raised you. I know this from my spies and followers. They are subtle when I wish it. Gorion was as much your father as anyone.~ [FIRKRA11] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43157 /* ~He was also an adventurer in his day and crossed my path long ago. Him and his Harper friends. I bear the scars of that meeting. ~ [FIRKRA12] */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN GOTO 5
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 358
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43158 /* ~He is beyond my revenge, being dead as he is, so I settled for the next best thing. I can torment his spirit by destroying you. *chuckle* Wherever he is, he is *seething*.~ [FIRKRA13] */
  IF ~~ THEN REPLY #43159 /* ~That cannot be the whole of it. Such an old debt must seem hollow.~ */ GOTO 6
  IF ~~ THEN REPLY #43160 /* ~All of this over a grudge with a dead man? Are you mad?~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY #43161 /* ~I had toyed with forgetting the transgression, though it has not been that long in dragon terms. It was your other father that made me curious, however.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43162 /* ~You are a child of Bhaal. What an interesting subject to study, or so I thought. Really, you are not so different, despite your little personal struggles.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 19.0
  SAY #43163 /* ~For now, you bore me. I will taunt you no more. This has been such sport that I bear you no ill will. You may go.~ */
  IF ~~ THEN REPLY #43164 /* ~Oh no, this is not over! You owe me!~ */ GOTO 9
  IF ~~ THEN REPLY #43165 /* ~I cannot leave without Garren's child. You know this.~ */ GOTO 16
  IF ~~ THEN REPLY #43166 /* ~That is it? A dismissal? I fear I cannot let it end so peacefully.~ */ GOTO 10
  IF ~~ THEN REPLY #43167 /* ~Well then, I will take this opportunity to leave and not bother you further.~ */ GOTO 17
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #43168 /* ~Do I now? And what is it that I owe you? An explanation? You have had one. A promise of absolution? You have that as well.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #43169 /* ~You cannot? That would be unfortunate. Certainly you would not survive any such confrontation. It would be a pity to lose your life here.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 9.0
  SAY #43170 /* ~Perhaps your demands are better sated with the rescue of Garren's child. Yes, perhaps that would better suit your needs.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 17.0 16.0 11.0
  SAY #43171 /* ~The child has proven no more interesting than its father. I had finished taunting him some years ago, really. It was only your arrival that brought him into this.~ */
  IF ~~ THEN REPLY #43175 /* ~His suffering has never ended. You took his lands.~ */ GOTO 14
  IF ~~ THEN REPLY #43176 /* ~Then I regret coming. I did not wish to compound his worries.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 14.0
  SAY #43172 /* ~Here, rescue the child from my servant and feel fulfilled. Do not think it will be easy. I test my subjects thus all the time, and they know that failure is death.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.0
  SAY #43173 /* ~I think he is actually happier now that the burden of leadership has been lifted. Such resilience took all the fun out of his downfall. All that is left for me to do is kill him and take the deed to the land.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #43174 /* ~Conster! Go to the child! If <CHARNAME> fails to take it from you, kill it. ~ */
  IF ~~ THEN REPLY #43177 /* ~I will save the child and return for you in the future, Firkraag. I swear it.~ */ GOTO 20
  IF ~~ THEN REPLY #43178 /* ~I thank you for this act of charity, disguised though it is. ~ */ GOTO 22
  IF ~~ THEN REPLY #43179 /* ~I'll rescue Garren's child after I kill you, monster!~ */ GOTO 23
  IF ~  !Alignment(Player1,MASK_GOOD)
~ THEN REPLY #49290 /* ~You made an interesting comment. Garren still has the deed to this land. Do you need it?~ */ GOTO 28
END

IF ~~ THEN BEGIN 16 // from: 8.1
  SAY #43180 /* ~Do I know this? Do I really? Oh, very well. The brat was but a byproduct of my scrutiny of you anyway. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 8.3
  SAY #43181 /* ~Oh, and before you go, do rescue that blasted brat of Garren's. It was only a byproduct of my scrutiny of you anyway.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 7.0
  SAY #43183 /* ~What will be interesting is your conflict with Jon Irenicus. That is something I would very much like to see. So I leave you your life. Do with it what you will.~ */
  IF ~~ THEN REPLY #43184 /* ~What do you know of Irenicus?!~ */ GOTO 19
  IF ~~ THEN REPLY #43185 /* ~I suppose you are league with that sadist, aren't you? It would not surprise me.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 18.0
  SAY #43186 /* ~I will have no dealings with that creature. I am merely interested in YOUR confrontation with him. Yes, that will be something to see.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 36.2 29.3 28.1 24.0 15.0
  SAY #43187 /* ~Do as you must; it does not interest me until the "future" becomes "now." If you wish to make a confrontation inevitable, you know where I lie in wait.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 31.0 22.0 20.0
  SAY #43188 /* ~Now walk away and see to your little rescue efforts. Take your time. Enjoy life. You have much to face.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("Firmag01Move","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
AddJournalEntry(15724,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("Firmag01Move","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #15724 /* ~Firkraag himself

I have encountered the true Firkraag, a gigantic red dragon. He has tormented me due to a past grudge with Gorion as well as some faint interest in my status as a child of Bhaal. Either way, his interest in me is finished, and he has sent one of his servants to be the only barrier between myself and Garren's child.

So he will not attack me, but I am sure our dealings are not done yet.~ */ EXTERN ~KELDORJ~ 101
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Edwin")
~ THEN DO ~SetGlobal("Firmag01Move","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #15724 /* ~Firkraag himself

I have encountered the true Firkraag, a gigantic red dragon. He has tormented me due to a past grudge with Gorion as well as some faint interest in my status as a child of Bhaal. Either way, his interest in me is finished, and he has sent one of his servants to be the only barrier between myself and Garren's child.

So he will not attack me, but I am sure our dealings are not done yet.~ */ EXTERN ~EDWINJ~ 44
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("Firmag01Move","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #15724 /* ~Firkraag himself

I have encountered the true Firkraag, a gigantic red dragon. He has tormented me due to a past grudge with Gorion as well as some faint interest in my status as a child of Bhaal. Either way, his interest in me is finished, and he has sent one of his servants to be the only barrier between myself and Garren's child.

So he will not attack me, but I am sure our dealings are not done yet.~ */ EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY #43189 /* ~Do not think me soft because of this. I am capable of far more than you can imagine. Of course, you are destined to experience worse.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #43190 /* ~I again give you the chance to rescind your decision. I have expressed no desire to confront you and have gone so far as to give you reason to leave.~ */
  IF ~~ THEN GOTO 24
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 46
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43191 /* ~Do you still demand a battle? You shall have one, if you wish, but you will not win. Do not be foolish, <PRO_GIRLBOY>.~ */
  IF ~~ THEN REPLY #43192 /* ~I will leave for now, but I will return.~ */ GOTO 20
  IF ~~ THEN REPLY #43193 /* ~I will fight you, and I shall win. I can do no other.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 26.0 24.1
  SAY #43194 /* ~It is, as they say, your funeral. Now I am afraid that you must feel the wrath of the most ancient of Faerûn's species. Do you think your divine blood enough to match? I highly doubt it.~ [FIRKRA16] */
  IF ~  !IsValidForPartyDialogue("Keldorn")
OR(2)
!IsValidForPartyDialogue("Edwin")
CheckStatGT(Player1,8,CHR)
~ THEN DO ~ActionOverride("firmag01",Enemy())
Enemy()
EraseJournalEntry(15724)
AddJournalEntry(22917,QUEST_DONE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~ActionOverride("firmag01",Enemy())
Enemy()
EraseJournalEntry(15724)
AddJournalEntry(22917,QUEST_DONE)
~ EXTERN ~KELDORJ~ 100
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Edwin")
CheckStatLT(Player1,9,CHR)
~ THEN DO ~ActionOverride("firmag01",Enemy())
Enemy()
EraseJournalEntry(15724)
AddJournalEntry(22917,QUEST_DONE)
~ EXTERN ~EDWINJ~ 43
END

IF ~  !Global("FirkraagDeal","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #43195 /* ~You return? Oh, WHY do you insist on bothering me? Oh, you would think that the children of the gods would have something better to do...~ [FIRKRA15] */
  IF ~~ THEN REPLY #43197 /* ~I have returned, as I said I would. Your menace must end!~ */ GOTO 25
  IF ~~ THEN REPLY #43198 /* ~Sorry to have bothered you. I'll be going.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #43199 /* ~A wise move. You will live to be a nice, cowardly old <PRO_MANWOMAN>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3
  SAY #49291 /* ~Hardly. It is a mere formality. Should the Amnian army ever come to investigate Windspear's fall from grace, my ownership of the deed would stop an annoying battle. ~ */
  IF ~~ THEN REPLY #49294 /* ~I care not for Garren and his whelps. What if I were to obtain the deed for you? I suspect that a small reward would be in order.~ */ GOTO 29
  IF ~~ THEN REPLY #49296 /* ~Then I shall ensure that you never obtain it. Once I have returned Garren's children, I shall return to destroy you in the future!~ */ GOTO 20
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #49321 /* ~Hah! A fascinating turn of events! You will betray Windspear and bring me the deed? Betrayal is a dangerous habit to get into, <CHARNAME>. Is this truly what you desire?~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49330 /* ~What care do you have for my reasoning? Do you want the deed or not?~ */ GOTO 32
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49332 /* ~It is what I desire.~ */ GOTO 32
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49333 /* ~That depends on what sort of payment you intend to offer.~ */ GOTO 30
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #52305 /* ~Perhaps not. But we will meet again, you and I.~ */ GOTO 20
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 151
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 74
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 186
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 163
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 30 // from: 36.0 29.2
  SAY #49334 /* ~The reward will be of my choosing. The task is hardly difficult. Garren is old and beaten already. ~ */
  IF ~~ THEN REPLY #49335 /* ~Do we have a deal?~ */ GOTO 32
  IF ~~ THEN REPLY #49336 /* ~I will not do it without a substantial reward.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #49337 /* ~Your greed has gotten the better or you. We do not have a deal.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 32 // from: 36.1 30.0 29.1 29.0
  SAY #49338 /* ~Very well. Go to Garren Windspear and find the deed to the Windspear Hills. I care not whether he lives or dies. Conster! Go and take care of the child. They are no longer needed. <CHARNAME>, return when you have the deed.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",MASK_GOOD)
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~MINSCJ~ 152
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~VALYGARJ~ 75
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~KELDORJ~ 187
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~MAZZYJ~ 164
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~AERIEJ~ 129
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN DO ~SetGlobal("FirkraagDeal","GLOBAL",1)
ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))
~ UNSOLVED_JOURNAL #49465 /* ~Retrieving the deed for the Windspear Hills

I have made a deal with Firkraag the dragon. If I retrieve the deed to the Windspear Hills from Garren Windspear and return it to Firkraag, I shall be rewarded.~ */ EXTERN ~ANOMENJ~ 256
END

IF ~  Global("FirkraagDeal","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #49349 /* ~So, you return! Have you brought the deed to these hills?~ [FIRKRA14] */
  IF ~  PartyHasItem("misc9L")
~ THEN REPLY #49350 /* ~I have brought the deed. What reward do you offer for the item?~ */ GOTO 34
  IF ~  !PartyHasItem("misc9L")
~ THEN REPLY #49352 /* ~I have not yet retrieved the deed.~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #49355 /* ~You may have an item from my hoard. Use this cloak well, and be thankful that you have not only lived but have profited from our meeting. Go now, and do not return again.~ */
  IF ~~ THEN DO ~AddXPObject(Player1,40500)
GiveItem("clck20",LastTalkedToBy)
TakePartyItem("misc9l")
AddXPObject(Player2,40500)
AddXPObject(Player3,40500)
AddXPObject(Player4,40500)
AddXPObject(Player5,40500)
AddXPObject(Player6,40500)
SetGlobal("FirkraagDeal","GLOBAL",2)
EraseJournalEntry(49476)
EraseJournalEntry(49465)
~ SOLVED_JOURNAL #49472 /* ~Firkraag's task completed

I have brought the deed to the Windspear Hills to Firkraag. He gave me a magical cloak for the favor. He suggests that I leave now that my task is complete.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #49358 /* ~Then do not bother me until you have it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #52301 /* ~O-ho! Dissension in your ranks, <CHARNAME>? Can this be so? Your companions' attitudes mean nothing to me, however. What is it that you wish to do?~ */
  IF ~~ THEN REPLY #52302 /* ~That depends on what sort of payment you intend to offer.~ */ GOTO 30
  IF ~~ THEN REPLY #52303 /* ~I'll do as I wish, and I wish to do this.~ */ GOTO 32
  IF ~~ THEN REPLY #52304 /* ~I suppose I will rescue the child, as I'd planned. We *will* meet again in the future, however, dragon.~ */ GOTO 20
END

IF ~~ THEN BEGIN 37 // from:
  SAY #52318 /* ~Aha-ha! This should be amusing, at least. I am content to watch, so long as your battle does not get irritating. Now, <CHARNAME>... let's see what comes naturally, yes?~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",MASK_GOOD)
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 129
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN EXTERN ~ANOMENJ~ 256
END
