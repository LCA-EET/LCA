// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\JHASSO.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\JHASSO.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA338~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Well, you'll get naught from me this day, not a cry of pain nor the knowledge in my noggin. Get away from me, shapeshifter scum.~ #1011 */
  IF ~  Global("TalkedToScar","GLOBAL",1)
~ THEN REPLY @2 /* ~We're not the shapeshifter you speak of. We're friends, sent by Scar to see what's been going wrong here at the Seven Suns. Who are you?~ #1018 */ GOTO 4
  IF ~~ THEN REPLY @3 /* ~Ha ha ha, we've come to torture you.~ #1019 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~We're not here to torture you, we're here to save you.~ #1020 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.1
  SAY @5 /* ~As I said before, you'll get nothing from me.~ #1012 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~You think I believe that, you shapeshifting scum? I know your tricks, and that one won't work no more.~ #1013 */
  IF ~~ THEN REPLY @7 /* ~It's not a trick, trust us.~ #1021 */ GOTO 1
  IF ~  Global("TalkedToScar","GLOBAL",1)
~ THEN REPLY @8 /* ~Think what you want, we've been sent by Scar to find Jhasso, could you help us?~ #1022 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~Fine with us. Goodbye.~ #1023 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10 /* ~Jhasso? I'm Jhasso. You know Scar? You might be telling the truth. Is my torment to finally end?~ #1014 */
  IF ~~ THEN REPLY @11 /* ~If you're Jhasso, then you might have an idea of what's been going on here. Tell us everything.~ #1024 */ GOTO 6
  IF ~~ THEN REPLY @12 /* ~We don't have time to chat with you. Come with us, we can get you out of here.~ #1025 */ EXIT
  IF ~~ THEN REPLY @13 /* ~Bye-bye, Jhasso. You can make it out on your own.~ #1026 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY @14 /* ~You know Scar? I'm Jhasso, a friend of his and the owner of the Seven Suns. You have to help me get out of here!~ #1015 */
  IF ~~ THEN REPLY @15 /* ~It's good that we found you. Now we can find out what's been going on here. Before we take you anywhere, could you tell us what has been going on?~ #1027 */ GOTO 6
  IF ~~ THEN REPLY @16 /* ~You can find your own way out, if you're really Jhasso.~ #1029 */ GOTO 18
END

IF ~~ THEN BEGIN 5 // from:
  SAY @17 /* ~Now that we're free of those monsters, I can tell you what's been going on.~ #1016 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.0
  SAY @18 /* ~Those creatures, the shapeshifters, started infiltrating the Seven Suns some months ago. They must have started with some of the less important members of my coster. Eventually they captured me, and their leader took my face. They've been keeping me alive in order to gain information that they need through torture. I don't know what their purpose is, but they have been running my business very poorly. All of you will be well rewarded for rescuing me. When you meet Scar again, he will give you my reward. I must be off now, as there is much of the monsters' work to be undone. I assume you've dealt with the other monsters upstairs. If you haven't, I'll get the Flaming Fist to clear out the rest. It'll probably be weeks before we can clean out their stench.~ #1017 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @19 /* ~The Seven Suns
We've learned from Jhasso that a group of shapeshifting creatures has taken over the Seven Suns trading coster.~ #27186 */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 7 // from:
  SAY @20 /* ~It is good to see you all again friends. I've been hearing quite a few rumors about you, all of which are undoubtedly untrue.~ #1783 */
  IF ~~ THEN JOURNAL @21 /* ~Rising Tensions with Amn
Rumors are flying about town that we're Amnian spies.~ #27187 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @22 /* ~So, do you know all the rumors flying about town? Seems people think you're Amnian spies, and that you've murdered the leaders of the Iron Throne. Does any of that have any truth to it?~ #1784 */
  IF ~~ THEN REPLY @23 /* ~Not a bit, we were framed.~ #1792 */ GOTO 11
  IF ~~ THEN REPLY @24 /* ~We killed the Iron Throne leaders, they had it coming.~ #1793 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @25 /* ~That's too bad, I cannot harbor criminals. I'm going to have to ask you to leave.~ #1785 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @26 /* ~Guards! Will you please escort these unwanted guests from the premises?~ #1786 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY @27 /* ~I'm glad to hear it. I never took any of you to be the murderin' type. Well then, have you heard all the other rumors flying about the city? Seems that Commander Scar, of the Flaming Fist, has been assassinated. Even worse, Grand Duke Eltan has come down with some sort of magical illness. It was those two who first hired you to save my company from the wretched doppelgangers, so I owe them a lot. Do you think you'd be up to investigate what's wrong with Duke Eltan? I know it'd be tough with you wanted and all, but there's no one else who I think is up to the job.~ #1787 */
  IF ~~ THEN REPLY @28 /* ~I don't think we're up to it. Sorry.~ #1794 */ GOTO 12
  IF ~~ THEN REPLY @29 /* ~What is it exactly that you want us to do?~ #1795 */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @30 /* ~Well, I guess there's nothing more to talk about; perhaps we'll meet again.~ #1788 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @31 /* ~I think it would be best to investigate the site where Scar was murdered. He was killed at the Blushing Mermaid tavern. I have no idea why he was there, but if you do some questioning you might learn something.~ #1789 */
  IF ~~ THEN REPLY @32 /* ~We'll look into it. Do you have anything more for us?~ #1796 */ GOTO 14
  IF ~~ THEN REPLY @33 /* ~Doesn't sound like a promising enough lead. We have other things on our agenda, we'll have to pass up on this one.~ #1797 */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @34 /* ~I don't have anything more for you at the moment. I wish you luck.~ #1790 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @35 /* ~I'm disappointed, but I guess that's how things have to be.~ #1791 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 16 // from:
  SAY @36 /* ~Sorry, my friends, but I have very little information to give you. I have been a captive of the doppelgangers for quite a time, and am out of touch with the politics of my beloved city.~ #6272 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY @37 /* ~You're barely better than my captors! Leave me!~ #9204 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 4.1
  SAY @38 /* ~All right then, that's just what I'll do.~ #10087 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
