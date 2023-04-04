// creator  : weidu (version 24900)
// argument : YOSHIMOX.DLG
// game     : .
// source   : ./override/YOSHIMOX.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~YOSHIMOX~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49466 /* ~There you are, I see. Why do you continue? You are dead inside already. Irenicus has seen to it. I am left to finish your physical shell.~ [YOSHIM66] */
  IF ~~ THEN REPLY #49467 /* ~Traitor! You will die for your part in this!~ */ GOTO 1
  IF ~~ THEN REPLY #49468 /* ~Yoshimo, how could you do this? We had traveled so long together.~ */ GOTO 4
  IF ~~ THEN REPLY #49469 /* ~He will not succeed in the end. You should reconsider your allegiance to him.~ */ GOTO 4
  IF ~~ THEN REPLY #49470 /* ~I fight because I must. You know I am right. You knew me well...~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 5.0 0.0
  SAY #49471 /* ~Bring your wrath to bear if you are so sure. I doubt you will outlive the tenday regardless! I will not bother with excuses; I cannot fight his spells. ~ [YOSHIM67] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 7.0 6.0 1.0
  SAY #49473 /* ~No redemptions, no second chances! Let us get this over with! I stride into the hell that Irenicus promised! Ilmater take my heart, I have no choice!~ [YOSHIM68] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #49483 /* ~I did not spend so much time in <CHARNAME>'s company just to have <PRO_HIMHER> killed. That could have been done a dozen times over.~ */
  IF ~~ THEN REPLY #58761 /* ~And why didn't you?! You will regret not slitting my throat when you had the chance!~ */ GOTO 9
  IF ~~ THEN REPLY #58762 /* ~Then I am curious why you didn't. You have the opportunity even now.~ */ GOTO 9
  IF ~~ THEN REPLY #58763 /* ~Is that genuine concern, or are you worried that you will not be paid if I am a corpse?~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.2 0.1
  SAY #58205 /* ~I can't fight it, <CHARNAME>, I can't. I was in his service first, and all those that follow him must undergo a geas. I was willing at the time... but now...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58206 /* ~Do you... do you know what happens when you try to defy a geas? It hurts... It hurts and then you die. His spells are powerful, <CHARNAME>, so powerful.~ */
  IF ~~ THEN REPLY #58218 /* ~Is that your answer? I think you hide your treachery! I do not believe you!~ */ GOTO 1
  IF ~~ THEN REPLY #58219 /* ~I will help you. This does not have to be like this.~ */ GOTO 6
  IF ~~ THEN REPLY #58220 /* ~You brought it on yourself. I don't think I can help you.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #58216 /* ~I believe it does... I can wither and die for failing to kill you, or I can fall in battle and pray that my heart will find purchase with Ilmater.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #58217 /* ~Yes, yes, you can. I have but two options. A slow and painful death for failing to kill you, or a swift one in battle, and may my heart find purchase with Ilmater for these sins.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 8 // from:
  SAY #58221 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 3.1 3.0
  SAY #58764 /* ~Don't make this harder than it already is, <CHARNAME>. I can't help you. There are circumstances that you are not aware of.~ */
  IF ~~ THEN REPLY #58765 /* ~The excuse of a betrayer. The coward's way out. ~ */ GOTO 10
  IF ~~ THEN REPLY #58766 /* ~Boo hoo. What, was it just too much gold for a sane man to refuse?~ */ GOTO 11
  IF ~~ THEN REPLY #58767 /* ~Then enlighten me. I know of nothing that would warrant such a betrayal.~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58768 /* ~Yes, yes, it is the coward's way out. What of it?! What choice do I have when the alternative is death, no matter where I go or what I do?!~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #58769 /* ~I would not deliver a friend to a devil for mere coin! I had... no choice! Death would be my payment if I failed, no matter where I went or what I did!~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #58770 /* ~Death! Death no matter where I would go or what I would do! That is what awaited me if I failed. Can you understand that?~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 11.0 10.0
  SAY #58771 /* ~My service was promised long before I was called on to do this! I did not know what would come! I did not know what a filthy creature Irenicus truly was. I did not!~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 51
END
