// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\WINSKI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\WINSKI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA372~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~*cough* Well, well, I thought it would be you. Quite the little family reunion shaping up now, isn't it? I knew you would follow; you two are of the same blood. You must take the fight to him lest he strike you down at his leisure. Not that it will matter; you have already beaten him. His plans are in ruins, and his allies are fleeing in droves. Such glorious goals they were, though none understood the true desire behind them. None but me, that is. Unfortunately, I am now expendable, but I expected no less.~ #10851 */
  IF ~~ THEN REPLY @2 /* ~What was your role in this? Why did you help him if you knew you were to be cast aside?~ #10852 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Where has he gone? He cannot hope to hide from me!~ #10853 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~What did he hope to gain by all of this? He must have known that inciting war with Amn would eventually expose him!~ #10854 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 3.0 2.1 0.0
  SAY @5 /* ~What was my role? I was Sarevok's mentor and tutored him in the blackest of rituals. If he had succeeded, there is no doubt I would be among the dead, but my name would live on in his wake. There are things beyond death if you die in the right fashion, and how could there not be a place in history for the architect that shaped the actions of the ascending Lord of Murder? You would not understand; you were born to affect the realms. The rest of us must carve our own place by whatever means necessary.~ #10855 */
  IF ~~ THEN REPLY @6 /* ~You arrogant fool! Your death will be much deserved!~ #10856 */ GOTO 4
  IF ~~ THEN REPLY @7 /* ~I would kill you, but perhaps the anonymity you have attained is punishment enough. Get out of my sight!~ #10858 */ GOTO 5
  IF ~~ THEN REPLY @8 /* ~Where has he hidden himself? I will end this tonight!~ #10859 */ GOTO 2
  IF ~~ THEN REPLY @9 /* ~Ascending? What was he planning? The war with Amn makes no sense.~ #10861 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 3.1 1.2 0.1
  SAY @10 /* ~Oh, Sarevok is not intent on hiding. You have stripped him of any pretense; there is no longer any point in him maintaining his respectable veneer. Only the most fanatical or fearful of his allies stand by him now. He will gather what resources he can and move on. Of course he knows that you must come to confront him and that it is to his advantage to choose the battleground. There is an altar in the Undercity; it was to be where the ritual would take place, but now serves as his last refuge. If you do not go to him, he will strike at you at his leisure.~ #10857 */
  IF ~~ THEN REPLY @11 /* ~Ritual? What was he planning? The war with Amn makes no sense.~ #10862 */ GOTO 3
  IF ~~ THEN REPLY @12 /* ~And what of you? Are you not valuable enough to keep by his side?~ #10863 */ GOTO 1
  IF ~~ THEN REPLY @13 /* ~Such threats are hollow, and you shall die first!~ #10868 */ GOTO 4
  IF ~~ THEN REPLY @14 /* ~You shall live to see all of his plans crumble.~ #10871 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.3 0.2
  SAY @15 /* ~You must know his plan by now. You have practically followed his every move. Likely you are driven by the same desires as well, though you have channeled them in a different fashion. No, war with Amn was not his true goal; Sarevok is no profiteer. The slaughter was all he wanted, with enough lives lost in the initial battles to ignite the fire in his own divine blood. He thought death on the appropriate scale would cause him to ascend. Perhaps he would have, but who can really say? If you have the arrogance of a god and can kill like a god, who's to say you are not a god?~ #10860 */
  IF ~~ THEN REPLY @16 /* ~And your role in this atrocity? Who are you to Sarevok?~ #10865 */ GOTO 1
  IF ~~ THEN REPLY @17 /* ~I will prove he is not! Where has he gone to hide?~ #10866 */ GOTO 2
  IF ~~ THEN REPLY @18 /* ~Monstrous! You will die for your part in this!~ #10869 */ GOTO 4
  IF ~~ THEN REPLY @19 /* ~His plans are in shambles. You will live to be accountable for your part in this!~ #10872 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.2 2.2 1.0
  SAY @20 /* ~I am dead regardless. Sarevok left me here for my "failure" earlier. He wished me to dispatch the Grand Dukes rather than effect his escape as I did. He would not consider failing as a possibility: a common weakness in those that would be gods. He will come for me when he realizes his first strike did not kill me. Do as you will: I am resigned to my fate whether it comes now or later.~ #10867 */
  IF ~~ THEN JOURNAL @21 /* ~Tandem in Extremis
Sarevok ordered his former mentor, Winski Perorate, to kill the Grand Dukes. Instead, Winski rescued Sarevok, who cast him aside in anger. At the entrance to the Undercity, Winski said he had expected my arrival because Sarevok and I share the same divine blood. He revealed that war was not the end but the means to Sarevok's goal: He wishes to cause enough slaughter to cause him to ascend to assume the divinity of our dead father, Bhaal, god of murder. It is up to me to stop him. Sarevok awaits in a temple in the Undercity.~ #27513 */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 2.3 1.1
  SAY @22 /* ~Your "charity" is admirable. You have definitely taken a separate path than Sarevok, though I wonder if it shall truly matter in the end. Leave me, I am no longer a threat to you or anyone. I'm just going to rest here a while.~ #10870 */
  IF ~~ THEN JOURNAL @21 /* ~Tandem in Extremis
Sarevok ordered his former mentor, Winski Perorate, to kill the Grand Dukes. Instead, Winski rescued Sarevok, who cast him aside in anger. At the entrance to the Undercity, Winski said he had expected my arrival because Sarevok and I share the same divine blood. He revealed that war was not the end but the means to Sarevok's goal: He wishes to cause enough slaughter to cause him to ascend to assume the divinity of our dead father, Bhaal, god of murder. It is up to me to stop him. Sarevok awaits in a temple in the Undercity.~ #27513 */ EXIT
END
