// creator  : weidu (version 24900)
// argument : AMARCH02.DLG
// game     : .
// source   : ./override/AMARCH02.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~AMARCH02~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #66723 /* ~Can't you see I'm busy? My archers need to stay in top form!~ [AMARCH08] */
  IF ~~ THEN REPLY #66724 /* ~So this is some type of training exercise?~ */ GOTO 2
  IF ~~ THEN REPLY #66725 /* ~I was just wondering what you were doing.~ */ GOTO 8
  IF ~~ THEN REPLY #66726 /* ~I don't like your tone!~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #66727 /* ~My tone wasn't meant to please you! So just button your lip and try and stay out of the way, or my archers might turn you into a pincushion!~ [AMARCH09] */
  IF ~~ THEN REPLY #66728 /* ~Sorry... I was just wondering what you were doing.~ */ GOTO 3
  IF ~~ THEN REPLY #66729 /* ~Fine. I'll just be going then.~ */ GOTO 7
  IF ~~ THEN REPLY #66730 /* ~Now you're threatening me? Do you know who I am?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 0.0
  SAY #66731 /* ~I can't be wasting my time yapping with some slack-jawed yokel.~ [AMARCH10] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 9.0 2.0 1.0
  SAY #66732 /* ~My archers need to practice, and I need to keep summoning monsters so they have a target to aim at.~ */
  IF ~~ THEN REPLY #66733 /* ~That's barbaric—what kind of sadistic monster are you?~ */ GOTO 4
  IF ~~ THEN REPLY #66734 /* ~Isn't that kind of dangerous? What if the monsters break free?~ */ GOTO 4
  IF ~~ THEN REPLY #66735 /* ~Mind if I join in?~ */ GOTO 4
  IF ~~ THEN REPLY #66736 /* ~Oh, I see. Well, I guess I'll be going then.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0
  SAY #66737 /* ~This is a private session... no one asked you to stick your nose in. Now quit bothering me!~ */
  IF ~~ THEN REPLY #66738 /* ~I'm not done with my questions yet!~ */ GOTO 5
  IF ~~ THEN REPLY #66739 /* ~Fine. I'll be going.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 6.1 4.0
  SAY #66740 /* ~That's it! I'm sick of your annoying interruptions... We've got a new target, men! Fire!~ */
  IF ~~ THEN DO ~Enemy()
ActionOverride("AMARCH02",Enemy())
ActionOverride("AMARCH03",Enemy())
ActionOverride("AMARCH04",Enemy())
ActionOverride("AMARCH05",Enemy())
ActionOverride("AMARCH06",Enemy())
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #66741 /* ~You again? I warned you not to bother us anymore!~ */
  IF ~~ THEN REPLY #66742 /* ~Sorry. I'll be going.~ */ GOTO 7
  IF ~~ THEN REPLY #66743 /* ~But I just want to ask you a few questions.~ */ GOTO 5
  IF ~~ THEN REPLY #73052 /* ~I just wanted to know what you were doing.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 8.1 6.0 4.1 3.3 1.1
  SAY #66744 /* ~Good. Don't come back—my archers aren't above using a nosy <RACE> for target practice!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 0.1
  SAY #73051 /* ~What does it look like we're doing? Preparing for war! Now leave us to it and begone!~ */
  IF ~~ THEN REPLY #73053 /* ~War? War against whom?~ */ GOTO 9
  IF ~~ THEN REPLY #73054 /* ~All right, I'll leave you alone then.~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #73055 /* ~What do I look like, a recruiting officer? An information clerk? We're set to face off against the most dangerous of foes... drow, mind flayers, dragons, you name it!~ */
  IF ~~ THEN GOTO 3
END
