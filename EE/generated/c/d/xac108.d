// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCAELAR.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCAELAR.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC108~

IF ~  GlobalLT("bd_plot","global",161)
AreaCheck("bd1000")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hephernaan. What happened here?~ [BD35794] #35794 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",161)
~ EXTERN ~XAC112~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~There is nothing to forgive, Jayvis. The fault is mine—I should have warned you of this possibility.~ [BD35797] #35797 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~It is time this child of Bhaal and I had words.~ [BD35798] #35798 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut16",TRUE)
~ EXIT
END

IF ~  Global("bd_plot","global",161)
IsValidForPartyDialogue("CORWIN")
AreaCheck("bd1000")
!Detect(Player1)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I KNOW YOU HEAR MY WORDS! I WOULD SPEAK WITH YOU!~ [BD35688] #35688 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",163)
~ EXTERN ~BDCORWIJ~ 29
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~IF YOU FEAR FOR YOUR SAFETY, I SWEAR TO YOU ON MY HONOR, NO HARM WILL BEFALL YOU TODAY. NOT FROM MY HAND OR ANY OF THOSE WHO FOLLOW ME. I SEEK ONLY TO PARLEY.~ #59533 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut17",TRUE)
~ EXIT
END

IF ~  Global("bd_plot","global",161)
!IsValidForPartyDialogue("CORWIN")
AreaCheck("bd1000")
!Detect(Player1)
~ THEN BEGIN 5 // from:
  SAY @4 /* ~I KNOW YOU HEAR MY WORDS! I WOULD SPEAK WITH YOU!~ [BD35688] #35688 */
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN DO ~SetGlobal("bd_plot","global",163)
~ EXTERN ~BDSAFANJ~ 39
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN DO ~SetGlobal("bd_plot","global",163)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @6 /* ~I SWEAR TO YOU, NO HARM WILL BEFALL YOU, NOT FROM MY HAND OR ANY WHO FOLLOW ME.~ [BD35707] #35707 */
  IF ~~ THEN GOTO 7
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 1
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7 /* ~I SEEK ONLY TO PARLEY.~ [BD35709] #35709 */
  IF ~~ THEN REPLY @8 /* ~Then we shall.~ #35715 */ DO ~IncrementGlobal("bd_mdd420_good","global",1)
~ GOTO 8
  IF ~  NumInPartyGT(1)
~ THEN REPLY @9 /* ~Don't let her kill me, all right? This <DAYNIGHTALL>'s been misery enough as it is.~ #35716 */ GOTO 8
  IF ~~ THEN REPLY @10 /* ~WORDS ARE THE LEAST OF WHAT I'D INFLICT UPON YOU, DESPOILER!~ #35717 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @11 /* ~I AWAIT YOU, HERO OF BALDUR'S GATE!~ [BD35718] #35718 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut17",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @12 /* ~THEN FACE ME NOW!~ [BD35719] #35719 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut17",TRUE)
~ EXIT
END

IF ~  GlobalGT("bd_plot","global",160)
GlobalLT("bd_plot","global",170)
AreaCheck("bd1000")
~ THEN BEGIN 10 // from:
  SAY @13 /* ~And so the hero of Baldur's Gate comes for my head. Shall we speak and see what truth comes of it?~ [BD35801] #35801 */
  IF ~~ THEN REPLY @14 /* ~Speak your piece.~ #35802 */ DO ~SetGlobal("bd_plot","global",170)
ChangeAIScript("bdcutsce",OVERRIDE)
~ GOTO 12
  IF ~~ THEN REPLY @15 /* ~We'll see about that. Speak, but keep your distance.~ #35803 */ DO ~SetGlobal("bd_plot","global",170)
ChangeAIScript("bdcutsce",OVERRIDE)
~ GOTO 12
  IF ~~ THEN REPLY @16 /* ~My actions will speak louder than any words between us, "Shining Lady."~ #35804 */ DO ~SetGlobal("bd_plot","global",170)
ChangeAIScript("bdcutsce",OVERRIDE)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY @17 /* ~You have thundered across the land this past year, your actions shaping the fate of nations. I intend to do no less.~ [BD35805] #35805 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 10.1 10.0
  SAY @18 /* ~We stand poised on the cusp of a new age. Someday, all Faerûn shall look to this moment and say, "Then. That was when everything changed."~ [BD35807] #35807 */
  IF ~~ THEN REPLY @19 /* ~You were what brought me here—the attempt you made on my life, the damage you've wrought across the land.~ #35809 */ DO ~IncrementGlobal("bd_mdd420_good","global",3)
~ GOTO 14
  IF ~~ THEN REPLY @20 /* ~Destiny, and the blades of the assassins you sent to slay me.~ #35810 */ GOTO 14
  IF ~~ THEN REPLY @21 /* ~Pressure from the Council of Four and the payment they offer brought me here, though the opportunity to kill you is reason enough.~ #35811 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY @22 /* ~You wish to see me dead, then? More blood spilled in service to the Grand Dukes?~ [BD35813] #35813 */
  IF ~~ THEN REPLY @23 /* ~Your crusade must be stopped. Were there any way to do that short of killing you, I would take it. Is there another way, Caelar?~ #35814 */ DO ~IncrementGlobal("bd_mdd420_good","global",1)
~ GOTO 16
  IF ~~ THEN REPLY @24 /* ~In fairness, you did try to have me killed first.~ #35815 */ GOTO 14
  IF ~~ THEN REPLY @25 /* ~At the absolute minimum.~ #35816 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.2 13.1 12.1 12.0
  SAY @26 /* ~I am not your enemy, <CHARNAME>... Consider for a moment the "poison" my agents sought to use against you.~ [BD35817] #35817 */
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @27 /* ~It rendered Imoen unconscious, but was not a fatal dose.~ #56573 */ GOTO 15
  IF ~  !CheckStatGT(Player1,14,INT)
~ THEN REPLY @28 /* ~You didn't intend to kill me?~ #56574 */ GOTO 15
  IF ~~ THEN REPLY @29 /* ~Get to the point.~ #56575 */ GOTO 15
  IF ~~ THEN REPLY @30 /* ~My ears are deaf to your lies, witch. Deceive your followers if you want; I will not be so easily manipulated.~ #56576 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.3 14.2 14.1 14.0
  SAY @31 /* ~It may seem that we stand on opposite sides, but it is not so. Our goals align closer than you know, and there is much we could achieve together.~ [BD56577] #56577 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0 13.0
  SAY @32 /* ~I am a drop of water in the river of my army. We will wash away all opposition. Return to Baldur's Gate. Tell the Council not to oppose me.~ [BD35818] #35818 */
  IF ~~ THEN REPLY @33 /* ~The Grand Dukes will not be turned, nor will the Lords of Waterdeep, nor the rulers of Daggerford.~ #35822 */ DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
  IF ~~ THEN REPLY @34 /* ~Some say the blood of Bhaal runs through your veins, Caelar Argent. Is it true?~ #59534 */ DO ~SetGlobal("bd_mdd018","global",1)
~ GOTO 17
  IF ~~ THEN REPLY @35 /* ~I care nothing for the motivations of dukes—I am here of my own accord.~ #35821 */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 21.1 16.1
  SAY @36 /* ~Nay, no child of Bhaal am I, nor any other god. I am an aasimar, descended from a solar that blessed my line generations ago. Is blood what matters to you, or the message?~ [BD59535] #59535 */
  IF ~  Global("bd_mdd016a_fowc38","locals",0)
~ THEN REPLY @37 /* ~Blood matters when it is spilled in service to a message.~ #59536 */ DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
  IF ~  Global("bd_mdd016a_fowc38","locals",1)
~ THEN REPLY @38 /* ~I seek naught but a way to sway you from this mad plan to rescue lost souls from the Nine Hells.~ #65434 */ GOTO 23
  IF ~~ THEN REPLY @39 /* ~I care nothing for your message any more than I care for the orders of the Grand Dukes.~ #59537 */ GOTO 18
  IF ~  Global("bd_mdd016a_fowc38","locals",0)
~ THEN REPLY @40 /* ~Blood is not forgiveness, and there is nothing in your message that will justify the deaths you have caused.~ #59538 */ DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @41 /* ~Shared blood did not save Sarevok, and it will not save you.~ #65433 */ EXTERN ~BDCORWIJ~ 28
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @41 /* ~Shared blood did not save Sarevok, and it will not save you.~ #65433 */ GOTO 36
END

IF ~~ THEN BEGIN 18 // from: 17.2 16.2
  SAY @42 /* ~Such humility in one whose shadow stretches far across the Sword Coast—your deeds are many. Slayer of Sarevok, hero of Baldur's Gate, and it is even said the Council of Four answers to you.~ [BD35823] #35823 */
  IF ~~ THEN REPLY @43 /* ~And what of your intentions? If you wish us to stand down, then convince me.~ #35824 */ DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
  IF ~~ THEN REPLY @44 /* ~Your grasp of reality is clearly as firm as I'd been led to believe...~ #35825 */ GOTO 19
  IF ~~ THEN REPLY @45 /* ~You accuse me of feigning humility? And what of you, "Shining Lady"?~ #35826 */ DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @46 /* ~I have heard the whispers. Some see the fire in my eyes and call me mad. I am not. I am ambitious, yes, and I am righteous, but not mad. I see the possibility of a better world than this. And I will make my vision a reality.~ [BD35827] #35827 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @47 /* ~A title given to me by those who I have inspired, those who believe in my cause. I will not be shamed for acting as a beacon of light to those in darkness.~ [BD60747] #60747 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd016a_fowc38","locals",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 19.0 18.0 17.3 17.0 16.0
  SAY @48 /* ~In our lifetimes, two Dragonspear Wars have ravaged this land. Fiends set out from the castle, bringing ruin to the land and dragging thousands of innocent souls into the inferno before being beaten back for a time. Those who follow me lost wives and husbands, parents, children, friends... But what was lost can be restored. I will bring those tortured souls back to Toril.~ [BD35829] #35829 */
  IF ~~ THEN REPLY @49 /* ~You cannot march into the Nine Hells and claim the devils' due! It's madness even to consider it!~ #35831 */ GOTO 24
  IF ~  Global("bd_mdd018","global",0)
~ THEN REPLY @50 /* ~Some say the blood of Bhaal runs through your veins, Caelar. Now that you speak this madness, I believe it.~ #65435 */ DO ~SetGlobal("bd_mdd018","global",1)
~ GOTO 17
  IF ~  CheckStatGT(Player1,30,LORE)
~ THEN REPLY @51 /* ~You must know what you propose is impossible. Even if it weren't, no good can come from resurrecting those lost so long to the Hells.~ #35832 */ GOTO 24
  IF ~  !CheckStatGT(Player1,30,LORE)
~ THEN REPLY @52 /* ~Do you really believe such a thing is possible?~ #35833 */ GOTO 22
  IF ~~ THEN REPLY @53 /* ~You should think to your own life before seeking to rescue those already dead.~ #35834 */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.3
  SAY @54 /* ~I do. And even should I fail, it is necessary. To not attempt it would be a greater crime.~ [BD56578] #56578 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 24.0 22.0 17.1
  SAY @55 /* ~Would you hesitate if one of your own were cast into the Hells, whatever their deeds? Or would the dukes be fighting you now to keep you from what you feel is right?~ [BD65436] #65436 */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.4 21.2 21.0
  SAY @56 /* ~You're willing to condemn the unjustly imprisoned to an eternity of torment, then? Eternity, Bhaalspawn. Consider this...~ [BD56579] #56579 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY @57 /* ~Countless lives were lost as the fiends erupted from Dragonspear, a tide of hate and sulfur, ravaging the land. None could escape; there was nowhere to run—families, homes, loved ones—every soul, caught in a fiend's grip at the moment of their death.~ [BD56580] #56580 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @58 /* ~But it does not end there. They are taken to the Nine Hells. Their blood boils; their skin blisters and bursts. Devils' claws rend their soul, tearing it to shreds—but they CANNOT DIE. I hear them, <CHARNAME>. I hear the screams of the unjustly damned. And I will not turn a deaf ear.~ [BD35835] #35835 */
  IF ~~ THEN REPLY @59 /* ~I am not without sympathy for the souls of Dragonspear, Caelar. But what you attempt lacks strategy, and worse, ignores what could happen—perhaps again.~ #35836 */ GOTO 27
  IF ~~ THEN REPLY @60 /* ~The picture you paint is truly horrifying. If what you propose is truly possible... ~ #56581 */ GOTO 35
  IF ~  CheckStatGT(Player1,30,LORE)
~ THEN REPLY @61 /* ~It is a fool's errand, and a blind and mad fool at that. The Hells will not surrender the souls, only take more—including your own.~ #35837 */ GOTO 27
  IF ~~ THEN REPLY @62 /* ~If the Hells are your destination, then let me speed you on your journey.~ #35838 */ GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.0
  SAY @63 /* ~You have done little to fight the calling in your own blood, and you cannot judge me for the same, Bhaalspawn. Murder beats in your heart, justice and salvation in mine. In the end, we will see which beats stronger.~ [BD35841] #35841 */
  IF ~~ THEN REPLY @64 /* ~I cannot let you do this, Caelar. You've already brought harm upon the living, and soon you will do the same to the dead.~ #35843 */ GOTO 29
  IF ~  OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
~ THEN REPLY @65 /* ~The gods protect you? What gods are those, then?~ #35844 */ GOTO 28
  IF ~~ THEN REPLY @66 /* ~When you lay dying at my feet, you'll learn that not everything is possible for you.~ #35845 */ GOTO 34
  IF ~~ THEN REPLY @67 /* ~Keep on believing that, madwoman. Believe it right up to the moment you die at my hand.~ #35846 */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @68 /* ~What gods? The pantheon shines its light upon me—Lathander, Tyr, Helm, Tempus—all see the righteousness of my cause. Soon, the Hells shall see that light as well.~ [BD35847] #35847 */
  IF ~~ THEN REPLY @69 /* ~It is not the light of the gods, Caelar, it is your arrogance that blinds you.~ #35848 */ GOTO 31
  IF ~~ THEN REPLY @70 /* ~Were it not for the damage you do the Sword Coast, I'd leave you to your foolishness.~ #35849 */ GOTO 29
  IF ~  !Kit(Player1,Blackguard)
OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
~ THEN REPLY @71 /* ~Gods save us from your misguided beliefs and arrogance.~ #35850 */ GOTO 29
  IF ~~ THEN REPLY @72 /* ~Keep on believing that, madwoman. No god will save you from my vengeance.~ #35851 */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.2 28.1 27.0
  SAY @73 /* ~I regret the loss of those who stood against me, and trust that, in death, they will come to understand what I could not show them in life. I will honor their passing with the return of the Dragonspear dead.~ [BD35852] #35852 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @74 /* ~Your father was the Lord of Murder. Countless lives were stolen in his name. What if you could restore that balance—bring back those unjustly taken? Would you? Or is the call of your sire's blood too strong?~ [BD35853] #35853 */
  IF ~~ THEN REPLY @75 /* ~Had you seen the streets of Baldur's Gate, felt the desperation of those your crusade has displaced, you would realize the folly of your words.~ #35854 */ GOTO 32
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @76 /* ~As compelling as your argument is, my lady, the Council of Four will not be turned from their path, nor will I.~ #56582 */ EXTERN ~BDCORWIJ~ 28
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @76 /* ~As compelling as your argument is, my lady, the Council of Four will not be turned from their path, nor will I.~ #56582 */ GOTO 35
  IF ~~ THEN REPLY @77 /* ~I do not heed the call of my blood. My actions are my own, and you will not sway me from them.~ #35856 */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY @78 /* ~Arrogant? I serve the gods—you serve the corrupt, the ignorant, ones consumed with territory, gold, power—is that also your legacy, <CHARNAME>? Do you stand with them or for something greater?~ [BD35858] #35858 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 30.3 30.0
  SAY @79 /* ~Very well. If this is your choice, then meet me at Dragonspear Castle, and we shall end this.~ [BD35861] #35861 */
  IF ~~ THEN REPLY @80 /* ~Very well, then. Dragonspear Castle.~ #35862 */ GOTO 34
  IF ~~ THEN REPLY @81 /* ~Your arrogance will be your undoing, Caelar. Surrender, and you might survive what's to come.~ #35863 */ GOTO 33
  IF ~~ THEN REPLY @82 /* ~Flee then. I will come for you, and when I do, not even the walls of Dragonspear shall keep me from you.~ #35864 */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @83 /* ~Arrogant? I serve the gods—you serve the corrupt, the ignorant, ones consumed with territory, gold, power. Is that also your legacy, <CHARNAME>? Do you stand with them or for something greater?~ [BD35866] #35866 */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 37.0 36.0 32.2 32.0 31.0 28.3 27.3 27.2 26.3
  SAY @84 /* ~You and I will meet again, of this I am sure. We do not need to meet as enemies. Reconsider your course, <CHARNAME>, I beg you.~ [BD35872] #35872 */
  IF ~~ THEN DO ~AddJournalEntry(59648,QUEST)
SetGlobalTimer("bd_mdd016a_cutspy_timer","bd1000",7)
~ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN DO ~AddJournalEntry(59649,QUEST)
SetGlobalTimer("bd_mdd016a_cutspy_timer","bd1000",7)
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(59650,QUEST)
SetGlobalTimer("bd_mdd016a_cutspy_timer","bd1000",7)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2 26.1
  SAY @85 /* ~It is said that the Council listens to you—don't underestimate the weight your words carry. Yet your hesitation and doubt tells me there is more that separates us than the Winding Water.~ [BD56583] #56583 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 17.5
  SAY @86 /* ~The Grand Dukes' pressure and your own misguided convictions will muddy any bargain we might strike this night. For now, I shall continue along my own path, and you should do the same. We shall speak again. This I have foreseen.~ [BD35873] #35873 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY @87 /* ~Only I can challenge the fiends of the Nine Hells. I must carry my mission out to its end.~ [BD56585] #56585 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 38 // from:
  SAY @88 /* ~You understand my position, then. I need the child of Bhaal, but only for a short time. I shall return them safe, unharmed, within the week and disperse my troops from Dragonspear Castle.~ [BD38637] #38637 */
  IF ~~ THEN EXTERN ~BDDELANC~ 45
END

IF ~~ THEN BEGIN 39 // from:
  SAY @89 /* ~Listen to me, <CHARNAME>. The lost souls of the Dragonspear dead need a hero. That hero is you. Join me, and together we shall liberate the souls trapped in the Nine Hells.~ [BD38656] #38656 */
  IF ~~ THEN REPLY @90 /* ~You make a strong case for aiding you. I admit I'm tempted.~ #38657 */ EXTERN ~BDDELANC~ 49
  IF ~~ THEN REPLY @91 /* ~You're up to something, Caelar. If it were that simple you would have just asked for my help instead of drumming up an army and sending assassins after me.~ #38658 */ GOTO 43
  IF ~~ THEN REPLY @92 /* ~I may very well join you in the Hells, Caelar—but I will never stand at your side.~ #38659 */ EXTERN ~BDDELANC~ 47
END

IF ~~ THEN BEGIN 40 // from:
  SAY @93 /* ~Time is now our enemy. If someone else seeks the Bhaalspawn... I cannot wait any longer for you to see the light. What will not be given freely must be taken.~ [BD38661] #38661 */
  IF ~~ THEN EXTERN ~XAC112~ 12
END

IF ~~ THEN BEGIN 41 // from:
  SAY @94 /* ~When next you see my banner, it will be at the head of the army that marches on you. For righteousness. For justice.~ [BD38663] #38663 */
  IF ~~ THEN EXTERN ~XAC103~ 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @95 /* ~Someone in Baldur's Gate paid for the Bhaalspawn's blood? Why? Hephernaan, what can this mean?~ [BD65124] #65124 */
  IF ~~ THEN EXTERN ~XAC112~ 13
  IF ~  Gender(Player1,FEMALE)
~ THEN EXTERN ~XAC112~ 14
END

IF ~~ THEN BEGIN 43 // from: 39.1
  SAY @96 /* ~You know nothing of me, godling. You have no idea of the compromises I've made, the people I lost, to stand here today. If you did, you would not be so quick to condemn me.~ [BD38668] #38668 */
  IF ~~ THEN EXTERN ~XAC111~ 0
END

IF ~  Global("bd_plot","global",450)
AreaCheck("bd4000")
~ THEN BEGIN 44 // from:
  SAY @97 /* ~Have none among you lost a mother, a father, a sibling, a loved one lost to a cruel and unjust fate? So it was for the victims of the Dragonspear Wars. Too many dead, their souls dragged to Avernus, lost forever. Or so we believed.~ [BD38355] #38355 */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @98 /* ~Then I discovered the truth! I tell you that the Dragonspear dead are NOT lost! I shall lead an army into Avernus and retrieve them if you will but LET me. Do not toss this opportunity aside. Do not let the devils take so much more than their due!~ [BD38358] #38358 */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @99 /* ~Join me! Together, we can bring about a new age. An age of peace, of justice, of enlightenment.~ [BD38359] #38359 */
  IF ~~ THEN REPLY @100 /* ~You speak of peace and justice, but your crusade has left nothing but chaos and ruin in its wake. End this madness, Caelar. Surrender now!~ #38360 */ GOTO 49
  IF ~~ THEN REPLY @101 /* ~I wish I could believe you, Caelar. I truly do.~ #38361 */ GOTO 47
  IF ~~ THEN REPLY @102 /* ~Peace and justice are all well and good, but I will have my revenge before this is done.~ #38362 */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @103 /* ~Remember this, then. When everything's said and done, you had a chance. You could have stood in the light. You choose darkness. You will pay for it.~ [BD38363] #38363 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut43",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 49.0 46.2
  SAY @104 /* ~You could have walked with me in the light, but you chose blood and darkness. You will pay for that.~ [BD38364] #38364 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut43",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY @105 /* ~You ask me to surrender now, when I stand on the threshold of victory? No! I will not stop now. I cannot!~ [BD38365] #38365 */
  IF ~~ THEN GOTO 48
END

IF ~  Global("bd_plot","global",485)
AreaCheck("bd4300")
~ THEN BEGIN 50 // from:
  SAY @106 /* ~And so we reach the end of a long, long journey. If you only knew the sacrifices I made to bring us to this point. All of them worthwhile.~ [BD38472] #38472 */
  IF ~  Global("bd_illusion_magic_response","GLOBAL",1)
~ THEN REPLY @107 /* ~Our mage detected illusion magic. Who else is here? Don't expect me to believe you're alone.~ #66595 */ DO ~SetGlobal("bd_plot","global",486)
~ GOTO 51
  IF ~~ THEN REPLY @108 /* ~I've little doubt you did what you thought right, Caelar. But your efforts have led to naught but chaos and destruction. Surrender now.~ #66596 */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
  IF ~~ THEN REPLY @109 /* ~That's a matter of perspective.~ #66597 */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
  IF ~~ THEN REPLY @110 /* ~Consider your next words carefully. They will be your last.~ #66598 */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @111 /* ~Change is upon us. Great and righteous change. You've come to face me, so do so! Now is our time.~ [BD38473] #38473 */
  IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride("bdcutid2",DestroySelf())
CreateCreature("bdcutid2",[1.1],S)
StartCutSceneEx("bdcut45a",FALSE)
~ EXIT
END

IF ~  Global("bd_plot","global",486)
AreaCheck("bd4300")
~ THEN BEGIN 52 // from:
  SAY @112 /* ~YOUR plan? What do you mean? Hephernaan, what are you doing?~ [BD66602] #66602 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",490)
~ EXTERN ~XAC112~ 16
END

IF ~  Global("bd_plot","global",530)
AreaCheck("bd4500")
~ THEN BEGIN 53 // from:
  SAY @113 /* ~I'll not kill an innocent man. I've not fallen so far as that. But I cannot stop now. Do as you will. Join me or no; I care not.~ [BD38865] #38865 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",530)
~ GOTO 54
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~SetGlobal("bd_plot","global",530)
~ EXTERN ~BDCORWIJ~ 184
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @114 /* ~Your part in this is done, <CHARNAME>. Now let me do mine!~ [BD38867] #38867 */
  IF ~~ THEN REPLY @115 /* ~This has to end, Caelar. Come back to Dragonspear. We will seal the portal together.~ #38868 */ GOTO 55
  IF ~~ THEN REPLY @116 /* ~You can't free the dead of the Dragonspear Wars, Caelar. It can't be done!~ #38869 */ GOTO 56
  IF ~~ THEN REPLY @117 /* ~My part is done? I've barely started, "Shining Lady." You'll not leave this place alive.~ #38870 */ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @118 /* ~I cannot stop. There's no turning back for me, not now. I swore an oath once long ago. I must keep it.~ [BD38871] #38871 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut51",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY @119 /* ~You may be right—I no longer know. But there's no turning back for me now. I swore an oath many years ago. I will keep it.~ [BD38872] #38872 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut51",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.2
  SAY @120 /* ~I don't expect to. But there is one here who WILL leave this place—no matter the cost!~ [BD38873] #38873 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut51",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @121 /* ~Damn you, Hephernaan! It was your treachery that brought me to this!~ [BD39122] #39122 */
  IF ~~ THEN EXTERN ~XAC112~ 18
END

IF ~~ THEN BEGIN 59 // from:
  SAY @122 /* ~No. NO! If I could have freed the Dragonspear dead, I would have.~ [BD39136] #39136 */
  IF ~~ THEN EXTERN ~BDBELHIF~ 3
END

IF ~~ THEN BEGIN 60 // from:
  SAY @123 /* ~I wanted my uncle freed, yes. But if the Dragonspear dead could have been restored, I would have done so.~ [BD39148] #39148 */
  IF ~~ THEN EXTERN ~BDBELHIF~ 3
END

IF ~~ THEN BEGIN 61 // from:
  SAY @124 /* ~You have defeated me. I see that now. But consider a moment the ways I might be of use to you.~ [BD39149] #39149 */
  IF ~~ THEN EXTERN ~BDAUN~ 1
END

IF ~~ THEN BEGIN 62 // from:
  SAY @125 /* ~After everything I've done, you would have me at your side...?~ [BD39160] #39160 */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @126 /* ~So be it! The child of Bhaal and the Shining Lady will stand together against this devil's darkness!~ [BD59720] #59720 */
  IF ~~ THEN DO ~SetGlobal("bd_caelar_fate","global",2)
ActionOverride("bdhepher",DestroyItem("minhp1"))
ActionOverride("bdbelhif",DestroyItem("minhp1"))
DestroyItem("minhp1")
DestroyItem("monhp1")
~ EXTERN ~XAC112~ 23
  IF ~  NumInPartyLT(6)
~ THEN DO ~SetGlobal("bd_caelar_fate","global",2)
ActionOverride("bdhepher",DestroyItem("minhp1"))
ActionOverride("bdbelhif",DestroyItem("minhp1"))
DestroyItem("minhp1")
DestroyItem("monhp1")
JoinParty()
~ EXTERN ~XAC112~ 23
END

IF ~~ THEN BEGIN 64 // from:
  SAY @127 /* ~Everything I've done has been your will, Belhifet. I should rather face the truth than live in ignorance. Free my uncle, and I will be your faithful servant.~ [BD39163] #39163 */
  IF ~~ THEN EXTERN ~BDAUN~ 2
END

IF ~~ THEN BEGIN 65 // from:
  SAY @128 /* ~But I humbly beseech you, Lord Belhifet, grant your servant one other boon. Destroy Hephernaan.~ [BD39165] #39165 */
  IF ~~ THEN EXTERN ~BDBELHIF~ 7
END

IF ~~ THEN BEGIN 66 // from:
  SAY @129 /* ~Your journey is at an end, <CHARNAME>. Look upon my visage and see that I am your doom!~ [BD39169] #39169 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY @130 /* ~Pay the price for your treachery, Hephernaan!~ [BD39173] #39173 */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(59848,QUEST)
SetGlobal("bd_caelar_fate","global",3)
StartCutSceneEx("bdcut57b",FALSE)
~ EXIT
END

IF ~  Global("bd_plot","global",570)
AreaCheck("bd4700")
~ THEN BEGIN 68 // from:
  SAY @131 /* ~I can scarcely believe it. Everything I did, every sacrifice I made, all to reach this moment... You are free at last, Uncle.~ [BD39190] #39190 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",575)
~ EXTERN ~BDAUN~ 10
END

IF ~~ THEN BEGIN 69 // from:
  SAY @132 /* ~Do you think so little of me, Uncle? Did you truly believe I would leave you to rot in the devil's claws?~ [BD39196] #39196 */
  IF ~~ THEN EXTERN ~BDAUN~ 12
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~BDDORNJ~ 69
END

IF ~~ THEN BEGIN 70 // from:
  SAY @133 /* ~The better question is, where is mine?~ [BD39201] #39201 */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 81.0 70.0
  SAY @134 /* ~I was brought up in the Order of the Aster. My aasimar heritage and the Argent name assured me a place of honor as a paladin of the Morninglord. Or so I thought at the time. I had such confidence then. Such certainty of purpose. I knew I would rise to greatness, knew it in my bones.~ [BD39202] #39202 */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @135 /* ~All that barred my ascent were my superiors in the Order. They sought to teach me humility; I see that now. But I could not bring myself to bow to their authority. To any authority but Lathander's, perhaps not even his.~ [BD39204] #39204 */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @136 /* ~I was told to watch over the library. To guard the volumes within, for they held knowledge critical to the order's success in the battle against darkness. I coveted that knowledge. In my arrogance, I read aloud from the pages, not understanding the forces I was invoking...~ [BD39206] #39206 */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY @137 /* ~That was how a girl not yet ten years old found herself in this pit, in that cage.~ [BD39207] #39207 */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @138 /* ~Yet you escaped its bars. You must have.~ #39208 */ EXTERN ~BDVICONJ~ 61
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @138 /* ~Yet you escaped its bars. You must have.~ #39208 */ GOTO 75
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN REPLY @139 /* ~We all make mistakes.~ #39209 */ EXTERN ~BDJAHEIJ~ 64
  IF ~  !IsValidForPartyDialogue("jaheira")
~ THEN REPLY @139 /* ~We all make mistakes.~ #39209 */ EXTERN ~BDAUN~ 13
  IF ~~ THEN REPLY @140 /* ~Then you have experience in being caged. Good. It will serve you well when we return to the Material Plane.~ #39210 */ GOTO 77
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY @141 /* ~I was freed, yes. But the cost... It was too much to bear. I couldn't do it, Uncle. Forgive me, I just—I couldn't.~ [BD39211] #39211 */
  IF ~~ THEN REPLY @142 /* ~Aun offered himself to Belhifet in your place.~ #39212 */ EXTERN ~BDAUN~ 14
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY @143 /* ~I begin to understand. Aun gave up his own freedom that yours might be restored. We should all have such an uncle.~ #39213 */ EXTERN ~BDGLINTJ~ 119
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY @143 /* ~I begin to understand. Aun gave up his own freedom that yours might be restored. We should all have such an uncle.~ #39213 */ EXTERN ~BDAUN~ 15
  IF ~~ THEN REPLY @144 /* ~You ask HIS forgiveness? Aun Argent is perhaps the one person who benefited from your lunatic crusade.~ #39214 */ GOTO 78
END

IF ~~ THEN BEGIN 76 // from:
  SAY @145 /* ~A heavy toll was paid, by me and those who followed me. A heavier one still was exacted from those who stood in my path. Am I without regret? No. Would I do it again? Without hesitation.~ [BD39218] #39218 */
  IF ~~ THEN REPLY @146 /* ~Then you have learned nothing. Retribution is all that is left. You will return to the Material Plane, close the portal to Avernus, and stand trial for your crimes.~ #39219 */ GOTO 77
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @147 /* ~If you'd hesitated just once in your life, one time somewhere along the line, countless lives might have been spared.~ #39220 */ EXTERN ~BDMKHIIJ~ 113
  IF ~  !IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @147 /* ~If you'd hesitated just once in your life, one time somewhere along the line, countless lives might have been spared.~ #39220 */ GOTO 80
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @148 /* ~I must admit, I'm impressed. You cling to righteousness as a hungry wolf does a piece of meat, without thought or doubt or any consideration of others.~ #39221 */ EXTERN ~BDRASAAJ~ 52
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @148 /* ~I must admit, I'm impressed. You cling to righteousness as a hungry wolf does a piece of meat, without thought or doubt or any consideration of others.~ #39221 */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0 74.4
  SAY @149 /* ~I am an Argent. I hold myself to the highest standard. I know I did evil, though I did it in pursuit of good. I must answer for my crimes.~ [BD39222] #39222 */
  IF ~~ THEN DO ~AddJournalEntry(59850,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~AddJournalEntry(59850,INFO)
~ EXTERN ~BDCORWIJ~ 191
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY @150 /* ~You say he benefited from my actions? Were it not for me, my uncle would never have been caged.~ [BD39223] #39223 */
  IF ~~ THEN EXTERN ~BDAUN~ 13
END

IF ~~ THEN BEGIN 79 // from: 80.0 76.4
  SAY @151 /* ~You may admire me or not, as you wish. I am an Argent. I hold myself to the highest standard. I know I did evil, though I did it in pursuit of good. I must answer for my crimes.~ [BD39224] #39224 */
  IF ~~ THEN DO ~AddJournalEntry(59850,INFO)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~AddJournalEntry(59850,INFO)
~ EXTERN ~BDCORWIJ~ 190
END

IF ~~ THEN BEGIN 80 // from: 76.2
  SAY @152 /* ~Lives are lost every day with no purpose that any but the gods can see. Those who sacrificed themselves in my name have saved a great man from an unjust fate.~ [BD39237] #39237 */
  IF ~~ THEN GOTO 79
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~BDRASAAJ~ 52
END

IF ~~ THEN BEGIN 81 // from:
  SAY @153 /* ~More than I ever wanted to know. I knew no happiness in my ignorance, yet the misery I felt while convinced I trod a righteous path was nothing compared to the guilt I must carry now.~ [BD39241] #39241 */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 82 // from:
  SAY @154 /* ~And I gave myself so that you might see Toril once more. It was worth it, Uncle. It was all... worth it...~ [BD39245] #39245 */
  IF ~~ THEN DO ~Kill(Myself)
~ EXTERN ~BDAUN~ 18
END

IF ~  !GlobalLT("bd_plot","global",575)
GlobalLT("bd_plot","global",580)
AreaCheck("bd4700")
~ THEN BEGIN 83 // from:
  SAY @155 /* ~Divine blood was the key to opening Dragonspear's portal to Avernus...~ [BD39292] #39292 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",580)
~ EXTERN ~BDAUN~ 38
END

IF ~  Global("bd_plot","global",580)
AreaCheck("bd4400")
~ THEN BEGIN 84 // from:
  SAY @156 /* ~Here, take this key. It will open the Dragonspear vault. I'll not be returning to Toril.~ [BD39315] #39315 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",581)
~ EXTERN ~BDAUN~ 47
END

IF ~~ THEN BEGIN 85 // from:
  SAY @157 /* ~The rift 'twixt the planes was opened by me—not by my hand, but I am responsible nonetheless.~ [BD39320] #39320 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 86 // from:
  SAY @158 /* ~The portal can only be closed from this side. Someone must remain behind. I shall sever Avernus's connection to Toril, and then stand guard. Whosoever would cross the threshold to Dragonspear will first face Caelar Argent.~ [BD39321] #39321 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0 85.0
  SAY @159 /* ~I can do nothing to change the past. What future I have is here, in this place. That was true from the moment I first summoned Belhifet. Uncle, please, go now, before Avernus's legions overtake us. Do what you can to redeem the Argent name of the shame I brought upon it, I beg you.~ [BD39322] #39322 */
  IF ~~ THEN EXTERN ~BDAUN~ 48
END

IF ~  AreaCheck("bd0071")
~ THEN BEGIN 88 // from:
  SAY @160 /* ~You know my name. You know my cause. But you do not know my story. Mine is a noble family, blessed in every way. The Argents are destined for greatness, or so some think. I thought it myself once.~ [BD64354] #64354 */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY @161 /* ~Thinking I could do no wrong, I wronged many, far too many. In time, I came to realize that my actions were not without consequence. That a price was paid, though it was not paid by me.~ [BD64357] #64357 */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @162 /* ~I knew that had to change. But how? How might I redeem myself for my sins? For years, I prayed for guidance, and then one day, one glorious day, an answer was bestowed on me by the gods themselves.~ [BD64358] #64358 */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @163 /* ~Many have been taken from this world before their time. Lost in the Dragonspear Wars, dragged down into the Nine Hells in defiance of the holy order of things.~ [BD64359] #64359 */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @164 /* ~Some believe they are gone, never to return. I know better. With you at my back, I swear to you, what was lost will be restored!~ [BD64360] #64360 */
  IF ~~ THEN DO ~AddJournalEntry(64435,INFO)
SetCutSceneLite(TRUE)
StartCutSceneEx("bdscry04",FALSE)
~ EXIT
END
