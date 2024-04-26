// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VAIL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VAIL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA241~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I awake from dark slumber and see before me... a deva? Certainly you must be such a creature to have rescued me. My name is Vail. Please honor me with your name as well.~ #10543 */
  IF ~  Global("Baldurian","GLOBAL",1)
~ THEN REPLY @2 /* ~I am <CHARNAME>, and I have come seeking the Helm of Balduran.~ #10544 */ DO ~AddexperienceParty(500)
~ GOTO 1
  IF ~  Global("Baldurian","GLOBAL",1)
~ THEN REPLY @3 /* ~Who I am is unimportant. Who you are is equally unimportant. I seek the Helm of Balduran and nothing else matters.~ #10545 */ DO ~AddexperienceParty(500)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I am <CHARNAME>. Now give me the reward that is due to me for releasing you.~ #10588 */ DO ~AddexperienceParty(500)
~ GOTO 9
  IF ~~ THEN REPLY @5 /* ~We have come to relieve you of all your treasure. By force, if necessary.~ #10591 */ DO ~AddexperienceParty(500)
~ GOTO 8
  IF ~~ THEN REPLY @6 /* ~I am <CHARNAME>, but am certainly no deva.~ #32203 */ DO ~AddexperienceParty(500)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @7 /* ~The Helm of Balduran? I am acquainted with that trinket. May I ask why you are looking for it? Or, more importantly, who told you to come to me?~ #10546 */
  IF ~~ THEN REPLY @8 /* ~You may not! Your answer confirms what I thought! You must have the helm!~ #10547 */ GOTO 2
  IF ~~ THEN REPLY @9 /* ~I was hired by Degrodel to retrieve it. He said you hapless chaps would have it, and would perhaps trade it for your freedom.~ #10548 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @10 /* ~You are that set in your path? So be it. I do own that item. It is mine won fair and square through hard work and honest labor. If you intend to take it, I will first ask you to reconsider. We are both adventuring sorts, whether hired or driven by spirit. You can see why I should not like to let my prize go, can't you?~ #10549 */
  IF ~~ THEN REPLY @11 /* ~I care not! You will hand it over or face my wrath!~ #10551 */ GOTO 8
  IF ~~ THEN REPLY @12 /* ~I see your point, though I must insist. I have been hired to retrieve it and I cannot return empty-handed.~ #10553 */ GOTO 4
  IF ~~ THEN REPLY @13 /* ~You have moved me. If it means so much, I shall not take it from you.~ #10555 */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @14 /* ~That is what he said? Well, he was wrong. As much as I am grateful for your help, the item you seek is very important to me. I earned it through hard work, and take good care of it. Am I to relinquish such a historical curiosity that means so much to me? I ask you to reconsider. We are both adventuring sorts, whether hired or driven by spirit. Leave me my prize; you know I well deserve it.~ #10550 */
  IF ~~ THEN REPLY @15 /* ~I do not care! Deliver it or you shall suffer!~ #10552 */ GOTO 8
  IF ~~ THEN REPLY @16 /* ~I hear you, but I am steadfast. I have a job to complete and must return with the helm.~ #10554 */ GOTO 4
  IF ~~ THEN REPLY @17 /* ~Your words ring true. I will not take this item from you.~ #10556 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.1 2.1
  SAY @18 /* ~If you wish to force the matter, I shall yield. Do not think me such an easy foe however, as you must still retrieve the helm yourself. You did not think I had it with me, did you? Had I been wearing it, I might not have suffered the fate from which you rescued me. Search, as you will, where this note dictates. Perhaps you will find it, perhaps not. I will help you no further. Does this satiate you, or must we fight as well?~ #10561 */
  IF ~~ THEN REPLY @20 /* ~You will die for your trickery!~ #10568 */ DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)
~ UNSOLVED_JOURNAL @19 /* ~The Helm of Balduran
From Vail the elf I've received a scroll that is supposed to reveal the location of the Helm of Balduran.~ #26932 */ GOTO 5
  IF ~~ THEN REPLY @21 /* ~I will leave you with your life. I have what I want.~ #10569 */ DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)
~ UNSOLVED_JOURNAL @19 /* ~The Helm of Balduran
From Vail the elf I've received a scroll that is supposed to reveal the location of the Helm of Balduran.~ #26932 */ GOTO 6
  IF ~~ THEN REPLY @22 /* ~I want nothing with your lies! Hand over the helm or I'll take it by force.~ #10583 */ DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)
~ UNSOLVED_JOURNAL @19 /* ~The Helm of Balduran
From Vail the elf I've received a scroll that is supposed to reveal the location of the Helm of Balduran.~ #26932 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @23 /* ~If I must, but I will not go quietly!~ #10570 */
  IF ~~ THEN DO ~Shout(99)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @24 /* ~Then get out of my sight. I thank you for reviving me, but do not expect much more.~ #10571 */
  IF ~~ THEN DO ~SetGlobal("VailLeft","AR0719",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 2.2
  SAY @25 /* ~I am... relieved. Do not think you will go away empty-handed for your compassion. I... I will give up another item nearly as dear to me. Perhaps the two should not be separated, but you have done well by me. The Cloak of Balduran is with a favored consort of mine in the Undercellar. Quenash is her name. Go there and she will give it to you. She will know I sent you. Now please leave me.~ #10574 */
  IF ~~ THEN DO ~SetGlobal("Baldurian","GLOBAL",2)
EraseJournalEntry(@27)
EraseJournalEntry(@19)
EraseJournalEntry(@28)
SetGlobal("VailLeft","AR0719",1)
EscapeArea()
~ UNSOLVED_JOURNAL @26 /* ~The Cloak of Balduran
Vail the elf gave the cloak of Balduran to his consort, Quenash. I can find her in the Undercellar.~ #27374 */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 3.0 2.0 0.3
  SAY @29 /* ~You are probably going to kill me anyway, so I will fight as best I can, as any of my fellows would!~ #10579 */
  IF ~~ THEN DO ~Shout(99)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 0.2
  SAY @30 /* ~Sorry, but I have no reward for you, and I must be on my way immediately. There are many things that might have been happening while I was trapped in this stone form.~ #10590 */
  IF ~~ THEN DO ~SetGlobal("VailLeft","AR0719",1)
EscapeArea()
~ EXIT
END
