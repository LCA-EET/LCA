// creator  : weidu (version 24900)
// argument : BODHI2.DLG
// game     : .
// source   : ./override/BODHI2.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BODHI2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #39681 /* ~Hmm... I had hoped it would not come to this, but you are set in your path, aren't you?~ [BODHIX31] */
  IF ~~ THEN REPLY #39683 /* ~It's nothing personal. Killing you is just business.~ */ GOTO 1
  IF ~~ THEN REPLY #39684 /* ~It's a job I must do. Destroying you is just a bonus.~ */ GOTO 2
  IF ~~ THEN REPLY #39685 /* ~What would you know of my "path"?~ */ GOTO 3
  IF ~~ THEN REPLY #39686 /* ~I will always come into conflict with creatures like you!~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39689 /* ~As you are told, but by who? Employers that cloak themselves in shadow, disguising their motives. Do you know any less of me?~ */
  IF ~~ THEN REPLY #39696 /* ~You will say anything to try and talk me out of this. I will not listen.~ */ GOTO 4
  IF ~~ THEN REPLY #39697 /* ~You must know I will view anything you say now with great suspicion.~ */ GOTO 4
  IF ~~ THEN REPLY #59417 /* ~Talk all you want; it will change nothing.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3 0.1
  SAY #39690 /* ~And how do you choose which evil to destroy? You do seem to overlook whichever is convenient to do so. Take your employers, cloaked in shadow, hiding intentions.~ */
  IF ~~ THEN REPLY #39694 /* ~You will say anything to try and talk me out of this. I will not listen.~ */ GOTO 4
  IF ~~ THEN REPLY #39695 /* ~You must know I will view anything you say now with great suspicion.~ */ GOTO 4
  IF ~~ THEN REPLY #59418 /* ~Talk all you want; it will change nothing.~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #39691 /* ~I know about many things: about you, your employers, what they intend. Can you say as much? Do you truly know these people cloaked in shadow?~ */
  IF ~~ THEN REPLY #39692 /* ~You will say anything to try and talk me out of this. I will not listen.~ */ GOTO 4
  IF ~~ THEN REPLY #39693 /* ~You must know I will view anything you say now with great suspicion.~ */ GOTO 4
  IF ~~ THEN REPLY #59419 /* ~Talk all you want; it will change nothing.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0 2.2 2.1 2.0 1.2 1.1 1.0
  SAY #39698 /* ~You may believe what I say or not; I have little concern about the matter. It would seem you are determined to make a nuisance of yourself regardless.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39699 /* ~Tell me, have the Shadow Thieves done more than promise? Have they delivered anything, or have they simply made certain you are always within reach?~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #39700 /* ~I imagine they are confused as to what their goals are. Have they said why they sought your service? Why they offered to help you? ~ */
  IF ~~ THEN REPLY #39701 /* ~Their service has not come cheaply. I have paid more than enough for it.~ */ GOTO 7
  IF ~~ THEN REPLY #39702 /* ~I don't care. I will take advantage of what they offer and then move on.~ */ GOTO 8
  IF ~~ THEN REPLY #39703 /* ~Perhaps they have some sympathy for my plight. The rescue I wish is a worthy cause.~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39705 /* ~Have you? Was the gold so important to them? Or were you being observed, your capabilities mapped and charted?~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39706 /* ~And is your ego so great that you think yourself the only one capable of such a plan? What use are you, do you think? ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #39707 /* ~Perhaps it is worthy. Perhaps your goals are golden, but I doubt very much they are as much a concern to others as they are to you.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 8.0 7.0
  SAY #39708 /* ~Ask yourself what you bring to the equation. Gold? Gold is never in short supply for long. Service? Possibly, but there are others that would serve as well. ~ */
  IF ~~ THEN REPLY #39710 /* ~Say what you must, and be quick about it! This will only end in battle anyway!~ */ GOTO 12
  IF ~~ THEN REPLY #39711 /* ~And what would you suggest? That I join with you instead?~ */ GOTO 12
  IF ~~ THEN REPLY #39712 /* ~I trust them because it is convenient to do so. They know little about me.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 12.1 12.0 10.2
  SAY #39709 /* ~Do they really? Are you certain? What if their interest in you was more than simply mercenary? What if they knew full well who you are... and what you are?~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.0
  SAY #39717 /* ~Oh no, I am quite sure this will end in violence. You are too volatile for my purposes. I merely wondered if you knew the extent to which you were being used.~ */
  IF ~~ THEN REPLY #39718 /* ~No one uses me! The Shadow Thieves know as much as I choose to tell them!~ */ GOTO 11
  IF ~~ THEN REPLY #39719 /* ~The Shadow Thieves seem to be honest in their dealings so far.~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #39720 /* ~You look surprised. I know what you are, child of Bhaal. Irenicus told me. He might have learned more, awakened your power, but the Thieves interrupted him.~ */
  IF ~~ THEN REPLY #39723 /* ~What do you know of Irenicus?! I owe him a debt for what he has done!~ */ GOTO 14
  IF ~~ THEN REPLY #39724 /* ~What do you know of my capture?!~ */ GOTO 14
  IF ~~ THEN REPLY #59420 /* ~I will have what he knows! If you share that knowledge, I demand you relinquish it!~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.2 13.1 13.0
  SAY #39725 /* ~I know more than your brain could hold in a lifetime. There is so much beneath your nose, so much you do not see. Why, even Imoen escaped your notice. ~ */
  IF ~~ THEN REPLY #39726 /* ~Imoen was taken from me! I will find her! And I will find this Irenicus!~ */ GOTO 15
  IF ~~ THEN REPLY #39727 /* ~This Irenicus did not seem the type to have anyone close to him. Why were you there?~ */ GOTO 16
  IF ~~ THEN REPLY #39728 /* ~What did he want with us?! What power did he speak of?!~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39729 /* ~You might have done both were circumstances different, but now I am afraid there is only one possible end to this discussion.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #39730 /* ~I was there because I chose to be, the duty of any good "sister." Of course, you are not familiar with such virtues since those around you fail at them so terribly.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #39731 /* ~Perhaps you are asking the wrong person these questions. It is irrelevant now, of course, as you will not be leaving here alive.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0 15.0
  SAY #39732 /* ~I grow tired of this conversation. You have asked your questions and made your threats, and I have indulged them both. Now this will end. ~ */
  IF ~~ THEN REPLY #39733 /* ~Good! I am so sick of wordy opponents!~ */ GOTO 19
  IF ~~ THEN REPLY #39734 /* ~There is more I should ask. You could shed so much light on my situation. ~ */ GOTO 20
  IF ~~ THEN REPLY #39735 /* ~So you are to destroy me? Has this Irenicus lost interest in me then?~ */ GOTO 21
  IF ~~ THEN REPLY #39739 /* ~But Irenicus was taken at the same time Imoen was. Should we not work together?~ */ GOTO 22
  IF ~~ THEN REPLY #59422 /* ~Fine with me! Let it end with your blood! And then I will move on to Irenicus!~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #39736 /* ~There will come a time when you understand the value of words. Of course, battle can teach as well. Come then, let us each learn a thing or two.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #39737 /* ~I do not believe I have ever been accused of "shedding light." No, I am not here as teacher, though battle educates well. Come, let us both learn a thing or two.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.4 18.2
  SAY #39738 /* ~There is much to be learned through duress. Such a curiosity you are. Come, let us both learn a thing or two.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #39740 /* ~Irenicus allowed himself to be overcome in his rage. He has recovered and is no one's prisoner. Your Imoen is not as strong, though I am told she has... potential.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #39741 /* ~There is much to learn about her, and you as well. Battle will be my laboratory. Come, let us both learn a thing or two.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 24 // from:
  SAY #39742 /* ~Well, that certainly was... educational. I have seen enough, and I am done with you... for now.~ [BODHIX32] */
  IF ~~ THEN REPLY #39743 /* ~You'll not walk away from me so easily!~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddexperienceParty(18750)
~ GOTO 25
  IF ~~ THEN REPLY #39744 /* ~What manner of creature are you? Is this all a game to you?~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddexperienceParty(18750)
~ GOTO 26
  IF ~~ THEN REPLY #39745 /* ~Crawl back to your master then. I will see him soon enough.~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddexperienceParty(18750)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #39746 /* ~Oh yes, yes, I will. I see no reason to finish this here. You can still be useful to Irenicus where he is. Fight on; I have seen what I have come to see.~ */
  IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL #47838 /* ~Aran's tasks to receive the Shadow Thieves' aid

I have defeated the rival guild, full of vampires as it was, and have faced Bodhi. She claimed to know something of Imoen and seemed to be judging me in some manner before she left in gaseous form. All that remains now is to return to Aran and tell him that the guild is gone, even if their leader remains unkilled. I will have questions for him as well.

One more troubling thing... Bodhi knew. She knew I am a child of Bhaal. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #39747 /* ~Perhaps, but games can be deadly serious, especially when I keep the rules to myself. Fight on, and seek your lost Imoen; I have seen what I came to see.~ */
  IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL #47838 /* ~Aran's tasks to receive the Shadow Thieves' aid

I have defeated the rival guild, full of vampires as it was, and have faced Bodhi. She claimed to know something of Imoen and seemed to be judging me in some manner before she left in gaseous form. All that remains now is to return to Aran and tell him that the guild is gone, even if their leader remains unkilled. I will have questions for him as well.

One more troubling thing... Bodhi knew. She knew I am a child of Bhaal. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #39748 /* ~Oh, I am not crawling away for fear of your wrath. By all means, coddle, develop, and direct it. Fight on, and seek your lost Imoen; I have seen what I came to see.~ */
  IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL #47838 /* ~Aran's tasks to receive the Shadow Thieves' aid

I have defeated the rival guild, full of vampires as it was, and have faced Bodhi. She claimed to know something of Imoen and seemed to be judging me in some manner before she left in gaseous form. All that remains now is to return to Aran and tell him that the guild is gone, even if their leader remains unkilled. I will have questions for him as well.

One more troubling thing... Bodhi knew. She knew I am a child of Bhaal. ~ */ EXIT
END
