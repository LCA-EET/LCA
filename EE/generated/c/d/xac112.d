// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDHEPHER.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDHEPHER.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC112~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~The hero of Baldur's Gate arrived, milady—unbound and unescorted by your elites. This... MAN... panicked. He destroyed the bridge before our prey could cross.~ [BD35795] #35795 */
  IF ~~ THEN EXTERN ~BDJAYVIS~ 0
END

IF ~  AreaCheck("bd4300")
GlobalLT("bd_plot","global",360)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~...just need a little more patience, master.~ [BD37829] #37829 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",365)
SetGlobal("bd_hephernann_talk_belhifet","global",1)
~ EXTERN ~BDVOICE~ 0
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~And when you do, all will have been made ready for your arrival. Those who still live will be baptized in the blood of those sacrificed in your name. A million souls will hold their arms up and scream your name, ready to embrace their new lord and master.~ [BD37831] #37831 */
  IF ~~ THEN EXTERN ~BDVOICE~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~The child of Bhaal is near, master. Soon she will be ours. The portal to Avernus shall be opened once again.~ [BD37833] #37833 */
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @5 /* ~No portal to the Nine Hells will be opened while my body still draws breath!~ #37834 */ EXTERN ~BDMINSCJ~ 89
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @5 /* ~No portal to the Nine Hells will be opened while my body still draws breath!~ #37834 */ GOTO 6
  IF ~~ THEN REPLY @6 /* ~...~ #65132 */ EXTERN ~BDVOICE~ 2
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @7 /* ~Did someone mention my name? Well, no, nobody actually did mention my name, but I doubt any other children of Bhaal are in the vicinity.~ #37835 */ EXTERN ~BDMINSCJ~ 90
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @7 /* ~Did someone mention my name? Well, no, nobody actually did mention my name, but I doubt any other children of Bhaal are in the vicinity.~ #37835 */ GOTO 6
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY @8 /* ~I belong to no one, priest. But if you wish to visit the Nine Hells, I can send you there—no portal required!~ #37836 */ EXTERN ~BDDORNJ~ 50
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY @8 /* ~I belong to no one, priest. But if you wish to visit the Nine Hells, I can send you there—no portal required!~ #37836 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9 /* ~The child of Bhaal is near, master. Soon he will be ours. The portal to Avernus shall be opened once again.~ [BD41061] #41061 */
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @5 /* ~No portal to the Nine Hells will be opened while my body still draws breath!~ #37834 */ EXTERN ~BDMINSCJ~ 89
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @5 /* ~No portal to the Nine Hells will be opened while my body still draws breath!~ #37834 */ GOTO 6
  IF ~~ THEN REPLY @6 /* ~...~ #65132 */ EXTERN ~BDVOICE~ 2
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @7 /* ~Did someone mention my name? Well, no, nobody actually did mention my name, but I doubt any other children of Bhaal are in the vicinity.~ #37835 */ EXTERN ~BDMINSCJ~ 90
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @7 /* ~Did someone mention my name? Well, no, nobody actually did mention my name, but I doubt any other children of Bhaal are in the vicinity.~ #37835 */ GOTO 6
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY @8 /* ~I belong to no one, priest. But if you wish to visit the Nine Hells, I can send you there—no portal required!~ #37836 */ EXTERN ~BDDORNJ~ 50
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY @8 /* ~I belong to no one, priest. But if you wish to visit the Nine Hells, I can send you there—no portal required!~ #37836 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.6 3.6
  SAY @10 /* ~That's impossible. Mercenaries are not allowed in the castle, and no crusader would dare trespass in my personal chambers.~ [BD65134] #65134 */
  IF ~~ THEN EXTERN ~BDVOICE~ 3
END

IF ~~ THEN BEGIN 6 // from: 4.4 4.1 3.4 3.1
  SAY @11 /* ~You—here? Impossible! I wove the courtyard wards myself! You couldn't have— Ah. Of course. You learned of the underground river and made good use of it. Impressive.~ [BD65136] #65136 */
  IF ~~ THEN EXTERN ~BDVOICE~ 4
END

IF ~~ THEN BEGIN 7 // from:
  SAY @12 /* ~Take them!~ [BD37841] #37841 */
  IF ~~ THEN DO ~Enemy()
ActionOverride("bdesseri",Enemy())
ActionOverride("bdolvena",Enemy())
DisplayStringHead("bdolvena",@13)
~ EXIT
END

IF ~  AreaCheck("bd4300")
GlobalLT("bd_plot","global",365)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~No more excuses! I want the godling found, you hear me? I want them brought to me NOW!~ [BD56786] #56786 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",365)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15 /* ~<CHARNAME>? You're here? But—how...? ~ [BD37851] #37851 */
  IF ~~ THEN DO ~AddJournalEntry(60182,QUEST_DONE)
~ GOTO 10
  IF ~  Global("bd_poisoned_water","global",0)
Global("bd_poisoned_food","global",1)
~ THEN DO ~AddJournalEntry(56787,QUEST_DONE)
~ GOTO 10
  IF ~  Global("bd_poisoned_water","global",1)
Global("bd_poisoned_food","global",0)
~ THEN DO ~AddJournalEntry(56788,QUEST_DONE)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 9.1 9.0
  SAY @16 /* ~No matter. Olvenaun, Esserin, bring me the Bhaalspawn's blood!~ [BD37852] #37852 */
  IF ~~ THEN DO ~Enemy()
ActionOverride("bdesseri",Enemy())
ActionOverride("bdolvena",Enemy())
~ EXIT
  IF ~  !Dead("bdolvena")
~ THEN EXTERN ~BDOLVENA~ 1
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~BDRASAAJ~ 40
END

IF ~  AreaCheck("bd4300")
GlobalLT("bd_plot","global",370)
~ THEN BEGIN 11 // from:
  SAY @17 /* ~You're in the belly of the beast, <CHARNAME>—there is no escape! I shall return with reinforcements to finish this once and for all.~ [BD37846] #37846 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",370)
AddJournalEntry(65811,QUEST)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @18 /* ~As you command, my lady.~ [BD38662] #38662 */
  IF ~~ THEN EXTERN ~XAC108~ 41
END

IF ~~ THEN BEGIN 13 // from:
  SAY @19 /* ~Calm yourself, my lady. It is likely a coincidence, unrelated to our plans. Appeal to the child of Bhaal. Make him understand the importance of cooperation.~ [BD65125] #65125 */
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN REPLY @20 /* ~If it will help end this madness, I will go with Caelar.~ #38665 */ DO ~SetGlobal("bd_pc_willing_surrender","global",1)
~ EXTERN ~BDNEERAJ~ 58
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN REPLY @20 /* ~If it will help end this madness, I will go with Caelar.~ #38665 */ DO ~SetGlobal("bd_pc_willing_surrender","global",1)
~ EXTERN ~BDSTONEH~ 36
  IF ~~ THEN REPLY @21 /* ~Ordinarily I'm all for cooperation, but I don't think we have the whole story here. I'm not going anywhere with you.~ #38666 */ EXTERN ~BDSTONEH~ 36
  IF ~  OR(2)
Global("bd_sdd350_discovered_cabal","global",1)
Dead("bdkherr")
~ THEN REPLY @22 /* ~Was the cabal of necromancers I had encountered in ancient ruins underneath Dragonspear also a coincidence?~ #70545 */ GOTO 15
  IF ~~ THEN REPLY @23 /* ~Caelar Argent doesn't "cooperate." Nor shall I.~ #38667 */ EXTERN ~BDSTONEH~ 36
END

IF ~~ THEN BEGIN 14 // from:
  SAY @24 /* ~Calm yourself, my lady. It is likely a coincidence, unrelated to our plans. Appeal to the child of Bhaal. Make her understand the importance of cooperation.~ [BD41050] #41050 */
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN REPLY @20 /* ~If it will help end this madness, I will go with Caelar.~ #38665 */ DO ~SetGlobal("bd_pc_willing_surrender","global",1)
~ EXTERN ~BDNEERAJ~ 58
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN REPLY @20 /* ~If it will help end this madness, I will go with Caelar.~ #38665 */ DO ~SetGlobal("bd_pc_willing_surrender","global",1)
~ EXTERN ~BDSTONEH~ 36
  IF ~~ THEN REPLY @21 /* ~Ordinarily I'm all for cooperation, but I don't think we have the whole story here. I'm not going anywhere with you.~ #38666 */ EXTERN ~BDSTONEH~ 36
  IF ~  OR(2)
Global("bd_sdd350_discovered_cabal","global",1)
Dead("bdkherr")
~ THEN REPLY @22 /* ~Was the cabal of necromancers I had encountered in ancient ruins underneath Dragonspear also a coincidence?~ #70545 */ GOTO 15
  IF ~~ THEN REPLY @23 /* ~Caelar Argent doesn't "cooperate." Nor shall I.~ #38667 */ EXTERN ~BDSTONEH~ 36
END

IF ~~ THEN BEGIN 15 // from: 14.3 13.3
  SAY @25 /* ~Why do you choose to blame Lady's hand for every misfortune that has befallen you, Bhaalspawn? The Crusade does not dabble in the dark arts of necromancy. Nor does it seek needless bloodshed. All my lady asks of you is to live up to your reputation of the hero of Baldur's Gate.~ #70546 */
  IF ~~ THEN EXTERN ~BDSTONEH~ 36
END

IF ~~ THEN BEGIN 16 // from:
  SAY @26 /* ~You'll find out soon enough, my puppet, once the devils begin their march into this world. Bleed, Bhaalspawn. Bleed for my master.~ [BD38474] #38474 */
  IF ~~ THEN EXTERN ~BDBENCE~ 62
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 181
END

IF ~~ THEN BEGIN 17 // from:
  SAY @27 /* ~There is nothing you or anyone can do to save her now, godling. She will hang in the hall of my lord Belhifet, and you will hang beside her.~ [BD39121] #39121 */
  IF ~~ THEN EXTERN ~XAC108~ 58
END

IF ~~ THEN BEGIN 18 // from:
  SAY @28 /* ~My treachery and your arrogance, "Shining Lady." ~ #59721 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @29 /* ~This is the secret of Caelar's crusade, <CHARNAME>. There is only one soul in Avernus Caelar has ever cared for. Her uncle, Aun Argent—the man who sacrificed all to save her.~ [BD39123] #39123 */
  IF ~~ THEN REPLY @30 /* ~Is this true, Caelar?~ #39124 */ EXTERN ~XAC108~ 59
  IF ~~ THEN REPLY @31 /* ~The crusade, the carnage it wrought, the death and destruction it left in its wake—it was all for one man?~ #39128 */ GOTO 21
  IF ~~ THEN REPLY @32 /* ~I thought Caelar threw the Sword Coast into chaos. Now, the true villain stands revealed, and he will answer for his perfidy.~ #39125 */ GOTO 22
  IF ~~ THEN REPLY @33 /* ~Wait, wait. Slow down. Aun sacrificed himself for Caelar?~ #39127 */ EXTERN ~BDBELHIF~ 2
END

IF ~~ THEN BEGIN 20 // from:
  SAY @34 /* ~All in vain. She never forgot her uncle's sacrifice. Never forgave herself for his loss. And never stopped seeking a way to restore him.~ [BD39135] #39135 */
  IF ~~ THEN EXTERN ~BDBELHIF~ 4
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @35 /* ~When I offered her a way to free her uncle, she didn't hesitate. Thousands were killed or driven from their homes in her name. She did not waver. She would put all Toril to the torch to ensure Aun Argent's release.~ [BD39147] #39147 */
  IF ~~ THEN EXTERN ~XAC108~ 60
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY @36 /* ~You DARE challenge the great Belhifet, here in his place of power?~ [BD39155] #39155 */
  IF ~~ THEN REPLY @37 /* ~I'll not do it alone. Caelar! Join me! Let Belhifet's death be the first stepping stone on your path to redemption.~ #39156 */ EXTERN ~XAC108~ 62
  IF ~~ THEN REPLY @38 /* ~Innocent lives hang in the balance. I will do what I must.~ #61426 */ EXTERN ~BDBELHIF~ 6
  IF ~~ THEN REPLY @39 /* ~Well... Yeah.~ #39157 */ GOTO 24
  IF ~~ THEN REPLY @40 /* ~I don't see that I have a lot in the way of options, at this point.~ #39158 */ EXTERN ~BDBELHIF~ 6
  IF ~~ THEN REPLY @41 /* ~I give him the same choice I give all my prey: Flee or fall before me. Which would you prefer, devil?~ #39159 */ EXTERN ~BDBELHIF~ 6
END

IF ~~ THEN BEGIN 23 // from:
  SAY @42 /* ~You are as arrogant as my "mistress," <CHARNAME>. And you will share her fate!~ [BD39161] #39161 */
  IF ~~ THEN DO ~AddJournalEntry(59847,QUEST)
SetGlobal("BDFinHep","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @43 /* ~I never thought I'd see arrogance to match the Argent simpleton's. Pay the price of your foolishness!~ [BD39172] #39172 */
  IF ~~ THEN DO ~SetGlobal("BDFinHep","GLOBAL",1)
~ EXTERN ~XAC108~ 67
END

IF ~  AreaCheck("bd0070")
~ THEN BEGIN 25 // from:
  SAY @44 /* ~You came. Good. I wasn't sure you would.~ [BD63931] #63931 */
  IF ~~ THEN EXTERN ~BDIRENI~ 74
END

IF ~~ THEN BEGIN 26 // from:
  SAY @45 /* ~Me? I am naught but a servant.~ [BD63933] #63933 */
  IF ~~ THEN EXTERN ~BDIRENI~ 75
END

IF ~~ THEN BEGIN 27 // from:
  SAY @46 /* ~Do not doubt my master's power—or our allies'.~ [BD63935] #63935 */
  IF ~~ THEN EXTERN ~BDIRENI~ 76
END

IF ~~ THEN BEGIN 28 // from:
  SAY @47 /* ~If you respected it, you would not do as you did in Baldur's Gate. The child of Bhaal belongs to my master.~ [BD63937] #63937 */
  IF ~~ THEN EXTERN ~BDIRENI~ 77
END

IF ~~ THEN BEGIN 29 // from:
  SAY @48 /* ~You are trying to influence Bhaal's spawn and in doing so you interfere with my master's business. The Accord will not let this continue.~ [BD63939] #63939 */
  IF ~~ THEN EXTERN ~BDIRENI~ 78
END
