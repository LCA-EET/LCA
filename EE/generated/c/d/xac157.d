// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLEOSIS.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLEOSIS.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC157~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Yes, <PRO_SIRMAAM>! What can I do for you this fine <DAYNIGHTALL>?~ #47798 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @2 /* ~You know what's happening with Valis and Corinth?~ #47799 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I'm looking for Caelar.~ #47800 */ GOTO 6
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @4 /* ~Do you know where I could get a drink around here? I am parched.~ #47801 */ EXTERN ~BDVOGHIJ~ 12
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @4 /* ~Do you know where I could get a drink around here? I am parched.~ #47801 */ GOTO 8
  IF ~~ THEN REPLY @5 /* ~Nothing. Go away. Now.~ #47802 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 6.1 0.0
  SAY @6 /* ~I know sheep dung from my mam's good silver! Valis says Corinth warned Innisfall the crusade was a-coming and lost us potential conscripts and supplies. Now, Corinth never took a shine to me. Says Caelar's got her hand up my backside—I wish!—and I don't have a thought of my own in my head.~ #47804 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~But Valis, she don't think too highly of me neither. One time we were marching through the Troll Claws and she put porridge in my boots while I was asleep. Well, she said it was porridge. I didn't want to look too closely, you know what I mean?~ #47805 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* ~I guess what I'm saying is, I don't know whether Corinth did what Valis says or not, and I wouldn't be too sad if the pair of 'em took a flying leap off the edge of Toril!~ #47806 */
  IF ~~ THEN REPLY @9 /* ~That was... most enlightening. Thank you.~ #47807 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~That was no help whatsoever, but thanks for trying.~ #47808 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~I am beginning to agree with you. You may go now.~ #47809 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 6.0 3.1 3.0
  SAY @12 /* ~No problem, no problem at all, anything for a fellow servant of the Lady. Hey—may Caelar shine upon you! Take care now!~ #47810 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.3 3.2 0.4
  SAY @13 /* ~I could go; I could do that, yes, <PRO_SIRMAAM>, but then I'd be the one Leopas was looking at cock-eyed. He told me to man my post! So I'll just stay here if it's all the same to you. May the Shining Lady's light guide you always!~ #47811 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @14 /* ~Lots of people are! She got here a week, maybe two weeks, maybe three weeks, maybe a month or more ago and went into Dragonspear. As far as I know, she's still in there.~ #47812 */
  IF ~~ THEN REPLY @15 /* ~Thank you. You've been most helpful.~ #47813 */ GOTO 4
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @16 /* ~Have you any thoughts on this matter with Valis and Corinth? You know them?~ #47814 */ GOTO 1
  IF ~~ THEN REPLY @17 /* ~As far as you know?~ #47815 */ GOTO 7
  IF ~~ THEN REPLY @18 /* ~Interesting. You may leave.~ #47816 */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @19 /* ~It's not like I'm part of her inner circle. I wish, you know? But no, no, I'm just a normal fella, I'm not outstanding in my field, so here I am, out standing in the field! Hey, you take care of yourself now, you hear? May Caelar guide you and yours from the darkness.~ #47817 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @20 /* ~Now that is a good question. I'm not a man of the grape, if you know what I mean. I mean I'm no great drinker of anything that's not water. But I hear there's a dwarf—it's always a dwarf, isn't it?—there's a dwarf named Heath Lodefinder; they say you want a drink, he's the man to talk to.~ #47819 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21 /* ~You have yourself a great <DAYNIGHTALL> now. May you be worthy in the Shining Lady's eyes.~ #47820 */
  IF ~~ THEN EXIT
END
