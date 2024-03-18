// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ALATOS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ALATOS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA278~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome, my little friends! Please relax, and keep your weapons at your sides. No need for hostility.~ #2783 */
  IF ~~ THEN DO ~SetGlobal("TalkedToThief","GLOBAL",1)
EraseJournalEntry(@2)
SetGlobal("TalkedToAlatos","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3 /* ~I simply must apologize for the manner of my thieves. I suppose a thieves' guild must keep a measure of malice about it, but it does tend to put a cloud over introductions. I am Alatos Thuibuld, though I thank you not to mention that too often. You are <CHARNAME>, of course. Be not surprised, there are very few people in Baldur's Gate I cannot name. You have been here for only a few days, and have already made quite a stir.~ #2784 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @4 /* ~Do you have something to tell me, or am I here just to listen to your fat musings?~ #2785 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~Your interest in me is flattering, though I question your intent.~ #2786 */ GOTO 5
  IF ~~ THEN REPLY @6 /* ~This is quite the honor, having one such as yourself interested in my travels.~ #2787 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @7 /* ~Have I been called here for a reason, or just to listen to your fat musings?~ #2803 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8 /* ~Ho HO! Such fire untempered by common sense! An unfortunately common cause of early demise in my organization. Now, because I like you, I'll show you what waits for your next outburst. You have the rare opportunity to revise your statement, and your life expectancy.~ #2788 */
  IF ~~ THEN REPLY @9 /* ~Your lackeys don't scare me one whit, you pompous windbag!~ #2789 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~Your interest in me is flattering, though I question your intent.~ #2790 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~It is quite the honor, having one such as yourself interested in my travels.~ #2791 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 19.2 18.2 2.0 1.3
  SAY @11 /* ~Hmph. Well, I suppose I should thank you for showing your true nature right away. It saves me the time I'd have spent evaluating you. No need for it now, and no need to ask if you'll take the job. I'll not have you work for me, and you know too much to leave, so I'll just have you killed now. I wish I could say it's been nice. Goodbye.~ #2792 */
  IF ~~ THEN DO ~Shout(1)
SetGlobal("AttackedThieves","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL @12 /* ~Alatos and the Thieves' Guild
I was offered a job by Alatos Thuibuld of the Thieves' Guild. The windbag dared to threaten me, so I told him where to stick his offer. I've made a few new enemies, but I care not.~ #26813 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 1.2
  SAY @13 /* ~Oh, please, save your ingratiating remarks for another time. They are far too good to be wasted on me. In truth, you have never heard of me, and I care not a whit where you go from here. While in this city however, you become my concern. In fact, I should like to take advantage of your talents for a small job, something best accomplished by someone unknown in this city.~ #2793 */
  IF ~~ THEN REPLY @14 /* ~I am quite sure that the membership of a thieves' guild would include several people capable of whatever you ask. Danger of being recognized seems a minor concern if one is able to not be seen at all. Why do you need me?~ #2794 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @15 /* ~I am not interested in your organization, or in working for it. Sorry, but you'll have to look elsewhere.~ #2795 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~What exactly is it you would have me do? And what would be my reward for this service? How well can you afford to pay?~ #2796 */ GOTO 9
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @17 /* ~I am not interested in your organization or in working for it. Sorry, but you'll have to look elsewhere.~ #2821 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 1.1
  SAY @18 /* ~Oh, I don't intend to flatter, merely to assure you that you have been watched since you entered the city. As for my intent, I do have a proposition for your group to consider. A small task really, best suited to someone unknown here.~ #2798 */
  IF ~~ THEN REPLY @14 /* ~I am quite sure that the membership of a thieves' guild would include several people capable of whatever you ask. Danger of being recognized seems a minor concern if one is able to not be seen at all. Why do you need me?~ #2799 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @15 /* ~I am not interested in your organization, or in working for it. Sorry, but you'll have to look elsewhere.~ #2800 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~What exactly is it you would have me do? And what would be my reward for this service? How well can you afford to pay?~ #2801 */ GOTO 9
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @17 /* ~I am not interested in your organization or in working for it. Sorry, but you'll have to look elsewhere.~ #2822 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 7.0 5.0 4.0
  SAY @19 /* ~Shrewd, very shrewd. I do indeed have many fine individuals of exceptional skill, but a large number of them are vacationing at the garrison this season. The guard have been exceptionally vigilant, what with the banditry on the roads, and to their credit they have captured several of my best people. I am sure that in the history of guilds, we are the first to experience a shortage of thieves.~ #2804 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @15 /* ~I am not interested in your organization, or in working for it. Sorry, but you'll have to look elsewhere.~ #2807 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~What exactly is it you would have me do? And what would be my reward for this service? How well can you afford to pay?~ #2808 */ GOTO 9
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @17 /* ~I am not interested in your organization or in working for it. Sorry, but you'll have to look elsewhere.~ #2823 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.1 4.1
  SAY @20 /* ~I'm afraid it is not that simple, though it never is, is it? You see, you have been allowed into the inner chambers of my guild, you have met me, and you have seen a number of other members. While this knowledge might not directly benefit you, if made known to the guard it would certainly harm me. I submit to you that I cannot allow this information to leave with someone... not of good standing with the guild. Your choice is somewhat limited in this manner. Choose wisely.~ #2809 */
  IF ~~ THEN REPLY @14 /* ~I am quite sure that the membership of a thieves' guild would include several people capable of whatever you ask. Danger of being recognized seems a minor concern if one is able to not be seen at all. Why do you need me?~ #2824 */ GOTO 6
  IF ~~ THEN REPLY @16 /* ~What exactly is it you would have me do? And what would be my reward for this service? How well can you afford to pay?~ #2825 */ GOTO 9
  IF ~~ THEN REPLY @21 /* ~Rock and a hard place, how well I know thee. Nevertheless, I still wish nothing to do with you or your blasted Thieves' Guild.~ #2826 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 19.0 7.2 6.2 5.3 4.3
  SAY @22 /* ~Unfortunate. I must apologize, but I cannot let you leave with knowledge of me and the guild. Security is paramount, and your lives are the unfortunate price.~ #2810 */
  IF ~~ THEN DO ~Shout(1)
SetGlobal("AttackedThieves","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL @23 /* ~Alatos and the Thieves' Guild
The leader of the Thieves' Guild attacked me when I refused his deal. I don't like this Alatos Thuibuld.~ #26814 */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 6.1 5.2 4.2
  SAY @24 /* ~It's quite the bit of intrigue actually. A local wizard by the name of Shandalar makes his home in a moored Halruaan skyship. It would appear that he has the knowledge to reproduce these flying marvels and is currently organizing the sale of the recipe to Grand Duchess Liia Jannath. He has drawn up a set of rituals and has procured an artifact fragment and an ancient statuette vital to the spell that keeps the ships aloft. These he has divided amongst his daughters until the deal is to proceed. I have been contacted by a representative of the Halruaans, and they have no wish to see scores of flying ships manufactured in every port. You are to infiltrate the place of exchange, steal the ingredients, and return here with them. Simple enough. You would be well paid. Enough gold to give you a backache and, if I am well pleased, mayhaps a magical weapon or two. Perhaps a little more, perhaps a little less. It entirely depends upon your performance.~ #2811 */
  IF ~~ THEN REPLY @25 /* ~Seems a fairly straightforward bit of burglary and well within my ability. I accept this challenge and hope it increases my standing within the guild.~ #2827 */ DO ~SetGlobal("ASSNUTS","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY @26 /* ~Not good enough. I wish a set price, with half the coin in my purse beforehand. I'll not be uncertain about what awaits when the task is through.~ #2828 */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 19.1 18.1 9.0
  SAY @27 /* ~As it should be! Now that you have agreed, the facilities of the guild are at your disposal. Feel free to make use of them, and make your presence known to the other members. You have my permission, so they will be less likely to kill you on sight. As for your mission, you have a tenday to complete it. Informants have told me that the Duchess intends to take possession of the components that tenth day, and the exchange will be hosted by Oberan at his estate. As I see it, you have several options. Directly "persuade" any of the involved parties to hand over the items, or burgle them out from under their noses. Good luck.~ #2812 */
  IF ~~ THEN DO ~SetGlobalTimer("AlatosTenDayTimer","GLOBAL",TEN_DAYS)
SetGlobal("HelpAlatos","GLOBAL",1)
~ UNSOLVED_JOURNAL @28 /* ~Alatos and the Thieves' Guild
I have been hired by Alatos Thuibuld to do a bit of burglary. I am to sneak into Oberan's estate and there steal several magical components from the three daughters of Shandalar. The components in question are the necessary ingredients for creating a Halruaan flying ship, and the Halruaans want their secret preserved and the items stolen. Alatos suggested that I either "persuade" the daughters to release the items or spirit them out from under their noses. The items are as follows: a spellbook that outlines the rituals needed, a statuette of indeterminate origin, and a fragment of some powerful artifact. I am to return to the Thieves' Guild once the items are in my possession.~ #26815 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 12 13 even though they appear after this state */
~  !Dead("Resar")
!Global("ResarAttack","GLOBAL",1)
OR(2)
Global("HelpAlatos","GLOBAL",2)
GlobalTimerExpired("AlatosTenDayTimer","GLOBAL")
~ THEN BEGIN 11 // from:
  SAY @29 /* ~You did not complete the mission. Disappointing, to say the least. I am afraid that I don't take too kind a view of failure, and even less so when it means trouble for me as well. I should like you to meet Resar, my Halruaan contact. Not very pleased with any of us, though I have assured him that it is entirely your fault. I believe he would like to have a word with you.~ #2813 */
  IF ~~ THEN DO ~TakePartyItem("MISC69")
TakePartyItem("MISC70")
TakePartyItem("MISC71")
~ EXTERN ~XAA276~ 0
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  PartyHasItem("MISC69")
PartyHasItem("MISC70")
PartyHasItem("MISC71")
!Dead("Resar")
~ THEN BEGIN 12 // from:
  SAY @30 /* ~A fine, if rough-hewn performance. Of course, while I may not mourn the loss of those you killed, the guard is certainly irate. This is my Halruaan contact, Resar. I believe he would like a word with you about the unnecessary attention you have brought to his cause.~ #2814 */
  IF ~~ THEN DO ~AddexperienceParty(4000)
TakePartyItem("MISC69")
TakePartyItem("MISC70")
TakePartyItem("MISC71")
~ EXTERN ~XAA276~ 1
END

IF WEIGHT #1 ~  PartyHasItem("MISC69")
PartyHasItem("MISC70")
PartyHasItem("MISC71")
!Dead("Helshara")
!Dead("Delorna")
!Dead("Ithmeera")
!Dead("Oberan")
!Dead("Resar")
~ THEN BEGIN 13 // from:
  SAY @31 /* ~Well done, if I do say so myself! A fine bit of burglary with no unnecessary attention brought to yourself. This is Resar, my Halruaan contact. He is well pleased and will now see to your reward. My apologies, but it was part of the agreement.~ #2815 */
  IF ~~ THEN DO ~AddexperienceParty(4000)
TakePartyItem("MISC69")
TakePartyItem("MISC70")
TakePartyItem("MISC71")
~ EXTERN ~XAA276~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY @32 /* ~You have returned only half victorious, which also means half a failure. I should like you to meet my Halruaan contact Resar, who is only half pleased with your performance.~ #2816 */
  IF ~~ THEN EXTERN ~XAA276~ 3
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("NarlenMove","GLOBAL",8)
~ THEN BEGIN 15 // from:
  SAY @33 /* ~Narlen! What, by all the gods, are you doing?!~ #2817 */
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",9)
~ EXTERN ~XAA277~ 27
END

IF ~~ THEN BEGIN 16 // from:
  SAY @34 /* ~Explain yourself, lest you take an earth bath by next morn!~ #2818 */
  IF ~~ THEN EXTERN ~XAA277~ 28
END

IF ~~ THEN BEGIN 17 // from:
  SAY @35 /* ~Seems ye made quite the impression on the guild, ye did. It would also seem that I erred aligning with Resar. Blasted politics addles the brains, and time and again I should stay out! Still, we've his coin, and the story of his demise is ours to construct. Never a total loss to be had! Ye have earned a place in the guild, a tie that never breaks.~ #2819 */
  IF ~~ THEN EXTERN ~XAA277~ 29
END

IF ~~ THEN BEGIN 18 // from: 9.1
  SAY @36 /* ~I see. Well, having carefully considered your terms, I have decided that you are in no position to speak to me in such a manner. My offer is more than generous, and ye could not hope to do better unless ye burgled the Ducal Palace itself. You have but a yes or no to choose from.~ #2830 */
  IF ~~ THEN REPLY @37 /* ~I am sorry, but I have no wish to make enemies of a family of mages. Find someone else to do your task.~ #2831 */ GOTO 19
  IF ~~ THEN REPLY @38 /* ~Seems a fairly straightforward bit of burglary, and well within my ability. I accept this challenge and hope it increases my standing within the guild.~ #2832 */ GOTO 10
  IF ~~ THEN REPLY @39 /* ~It was you who asked me here and you who should be prepared to pay. I will do nothing for you without gold in my purse!~ #2834 */ GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @20 /* ~I'm afraid it is not that simple, though it never is, is it? You see, you have been allowed into the inner chambers of my guild, you have met me, and you have seen a number of other members. While this knowledge might not directly benefit you, if made known to the guard it would certainly harm me. I submit to you that I cannot allow this information to leave with someone... not of good standing with the guild. Your choice is somewhat limited in this manner. Choose wisely.~ #2833 */
  IF ~~ THEN REPLY @37 /* ~I am sorry, but I have no wish to make enemies of a family of mages. Find someone else to do your task.~ #2829 */ GOTO 8
  IF ~~ THEN REPLY @25 /* ~Seems a fairly straightforward bit of burglary and well within my ability. I accept this challenge and hope it increases my standing within the guild.~ #2835 */ GOTO 10
  IF ~~ THEN REPLY @39 /* ~It was you who asked me here and you who should be prepared to pay. I will do nothing for you without gold in my purse!~ #2836 */ GOTO 3
END

IF WEIGHT #4 ~  !Global("NarlenMove","GLOBAL",8)
Dead("Resar")
~ THEN BEGIN 20 // from:
  SAY @40 /* ~So you've killed the Halruaan. Well, don't take it personally that I let him attack you; he was a powerful mage, and there was little I could do to dissuade him from killing you. Don't worry, you have full run of the guild—if you're able to kill a Halruaan mage, I'm sure there's little that my guild members can do to you. Again, accept my apologies for the entire incident.~ #11813 */
  IF ~~ THEN EXIT
END
