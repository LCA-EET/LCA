// creator  : weidu (version 24900)
// argument : RASAAD.DLG
// game     : .
// source   : ./override/RASAAD.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~RASAAD~

IF ~  NumTimesTalkedTo(0)
Global("OHR_PLOT","GLOBAL",0)
Global("RASAAD_ROMANCE","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #86142 /* ~<CHARNAME>! Is it truly you?~ [OH86142] */
  IF ~~ THEN REPLY #86143 /* ~Rasaad yn Bashir. I haven't seen you since—was it the Cloud Peaks? How have you been?~ */ GOTO 3
  IF ~~ THEN REPLY #86144 /* ~I certainly hope so. If it isn't, I've made a grave error. How are you, Rasaad?~ */ GOTO 3
  IF ~~ THEN REPLY #86145 /* ~Do I know you?~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #86146 /* ~You don't remember me? Rasaad yn Bashir? We fought side by side atop the Cloud Peaks.~ [OH86146] */
  IF ~~ THEN REPLY #86147 /* ~Rasaad! Forgive me, my friend—it's been a while, and you seem much changed.~ */ GOTO 5
  IF ~~ THEN REPLY #86148 /* ~Of course I know you, Rasaad. I see humor remains your blind spot.~ */ GOTO 2
  IF ~~ THEN REPLY #86149 /* ~I don't know you, monk—nor do I care to. Begone.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #86150 /* ~Ah. Forgive me. I've much on my mind these days.~ [OH86150] */
  IF ~~ THEN REPLY #86151 /* ~I can tell. You seem much changed since our time together.~ */ GOTO 9
  IF ~~ THEN REPLY #86152 /* ~Does it have anything to do with those monks I saw you beating up earlier?~ */ GOTO 20
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.0
  SAY #86153 /* ~These are dark days.~ [OH86153] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #86154 /* ~My apologies. I thought—well, clearly what I thought was wrong.~ [OH86154] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #86155 /* ~I prefer to think I remain the same, while much has changed around me, though perhaps I'm fooling myself.~ [OH86155] */
  IF ~~ THEN GOTO 9
END

IF ~  NumTimesTalkedTo(0)
Global("OHR_PLOT","GLOBAL",0)
!Global("RASAAD_ROMANCE","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #77646 /* ~Excuse me. I am Rasaad yn Bashir. You seem familiar to me. Have we met?~ [OH77646] */
  IF ~~ THEN REPLY #77647 /* ~Of course we have, Rasaad. Don't tell me you've forgotten our adventures along the Sword Coast so quickly.~ */ DO ~SetGlobal("OHR_JOIN_TALK","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY #77648 /* ~My name is <CHARNAME>. We've not met, but I have seen you at work.~ */ DO ~SetGlobal("OHR_JOIN_TALK","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY #77649 /* ~No. And we're not about to.~ */ DO ~SetGlobal("OHR_JOIN_TALK","LOCALS",1)
SetNumTimesTalkedTo(0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #77650 /* ~Of course, <CHARNAME>—forgive me. I should have recognized you, but I've much on my mind these days.~ [OH77650] */
  IF ~~ THEN REPLY #77651 /* ~I can tell. You seem much changed since our time together.~ */ GOTO 9
  IF ~~ THEN REPLY #77652 /* ~Does it have anything to do with those monks I saw you beating up earlier?~ */ GOTO 20
END

IF ~~ THEN BEGIN 8 // from: 50.0 47.1 46.1 44.1 40.1 6.2
  SAY #86782 /* ~Farewell.~ [OH86782] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 5.0 3.0 2.0
  SAY #77653 /* ~I walk a new path—one I'm altogether uncomfortable with. I long for the clarity of purpose I once enjoyed.~ [OH77653] */
  IF ~~ THEN REPLY #77654 /* ~You're a good man, Rasaad yn Bashir. Follow your heart; it won't steer you wrong.~ */ GOTO 11
  IF ~~ THEN REPLY #77655 /* ~What's going on?~ */ GOTO 26
  IF ~~ THEN REPLY #77656 /* ~We live in a world of grays, Rasaad. I wish you luck in navigating it.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #77688 /* ~It would seem so.~ [OH77688] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #77657 /* ~Sometimes one must put aside one's heart to achieve a greater good.~ [OH77657] */
  IF ~~ THEN REPLY #77658 /* ~You have changed, haven't you, Rasaad? Tell me what has happened to you since last we traveled together.~ */ GOTO 26
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY #77659 /* ~A noble principle, but one that makes finding happiness more of a trial than it ought to be.~ */ GOTO 12
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY #77659 /* ~A noble principle, but one that makes finding happiness more of a trial than it ought to be.~ */ EXTERN ~DORNJ~ 0
  IF ~~ THEN REPLY #77660 /* ~What a positively dreadful idea. Tell me more.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #77664 /* ~There can be no happiness for me, not since my brother Gamaz's death.~ [OH77664] */
  IF ~~ THEN REPLY #77665 /* ~Don't say that, Rasaad. You must never relinquish hope for a brighter tomorrow.~ */ GOTO 14
  IF ~~ THEN REPLY #77666 /* ~So great a loss would make some appreciate what they still have.~ */ GOTO 16
  IF ~~ THEN REPLY #77667 /* ~That makes you far too depressing for me to be around. Enjoy your misery.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #102517 /* ~I will try.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #77668 /* ~I try to hold on to it, <CHARNAME>, but these past weeks have not made it easy.~ [OH77668] */
  IF ~~ THEN REPLY #77669 /* ~Tell me what's happened. Perhaps I can help you.~ */ GOTO 26
  IF ~~ THEN REPLY #77670 /* ~I saw you fighting your fellow Sun Soul monks. What the hell's going on there?~ */ GOTO 26
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY #77671 /* ~It's never easy, Rasaad. But it's what gets us through the night.~ */ GOTO 18
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY #77671 /* ~It's never easy, Rasaad. But it's what gets us through the night.~ */ EXTERN ~MINSCJ~ 244
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #77672 /* ~I wish I was in a better position to appreciate such levity, <CHARNAME>. But my current circumstances are grim indeed.~ [OH77672] */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #77673 /* ~I wish I could see things that way, <CHARNAME>, I truly do. But given my current course, all I've left to me is revenge for my brother.~ [OH77673] */
  IF ~~ THEN REPLY #77674 /* ~It's not so grim as that, surely? You have friends...~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #77675 /* ~All my friends have turned upon me. Not that I can blame them.~ [OH77675] */
  IF ~~ THEN REPLY #77676 /* ~Not all your friends, Rasaad. Tell me, what's happened to you these past weeks?~ */ GOTO 26
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #77678 /* ~The night used to cradle and comfort me. I and my brothers would bathe in the cool light of Selûne. But I fear those days are forever lost to me.~ [OH77678] */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 19 // from: 6.1
  SAY #77679 /* ~Forgive me, <CHARNAME>, I do not understand...~ [OH77679] */
  IF ~~ THEN REPLY #77680 /* ~A few moments ago, I saw you lay a pair of Sun Soul monks low.~ */ GOTO 23
  IF ~~ THEN REPLY #77681 /* ~You ran off before I had the chance to greet you. Perfectly understandable: The monks you'd knocked out came around pretty quickly, and you wouldn't want to be there when they did.~ */ GOTO 21
  IF ~~ THEN REPLY #77682 /* ~I expect little more from a Sun Soul monk. Though you aren't really a Sun Soul monk anymore now, are you?~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.2 7.1 2.1
  SAY #77683 /* ~How do you know of that?~ [OH77683] */
  IF ~~ THEN REPLY #77684 /* ~I saw you kick your brothers' arses. You fled the scene before I had a chance to greet you.~ */ GOTO 23
  IF ~~ THEN REPLY #77685 /* ~Word gets around.~ */ GOTO 22
  IF ~~ THEN REPLY #77686 /* ~That's of no import. What matters is why you were fighting other Selûne worshippers.~ */ GOTO 25
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #77687 /* ~You saw me fighting my fellow Sun Soul monks?~ [OH77687] */
  IF ~~ THEN REPLY #79272 /* ~I did.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #77688 /* ~It would seem so.~ [OH77688] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 21.0 20.0 19.0
  SAY #77689 /* ~I did not want to fight my brothers, but it was necessary.~ [OH77689] */
  IF ~~ THEN REPLY #77690 /* ~But why, Rasaad?~ */ GOTO 25
  IF ~~ THEN REPLY #77691 /* ~It was necessary to beat the Nine Hells out of your fellow monks?~ */ GOTO 25
  IF ~~ THEN REPLY #77692 /* ~And also fun!~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2
  SAY #77693 /* ~Not at all—except in Tannath's case. I regret battling my brothers, but I regret battling that self-involved dullard slightly less.~ [OH77693] */
  IF ~~ THEN REPLY #77694 /* ~Why were you battling in the first place?~ */ GOTO 33
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN REPLY #77695 /* ~Mee-ow!~ */ GOTO 33
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN REPLY #77695 /* ~Mee-ow!~ */ EXTERN ~NEERAJ~ 0
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.0 20.2
  SAY #77698 /* ~I had little choice. I can no longer trust my brothers in the Sun Soul order.~ [OH77698] */
  IF ~~ THEN REPLY #77699 /* ~No? Why not?~ */ GOTO 33
  IF ~~ THEN REPLY #77700 /* ~That's a fairly damning statement.~ */ GOTO 34
END

IF ~~ THEN BEGIN 26 // from: 18.0 17.0 15.0 14.1 14.0 11.0 9.1
  SAY #77701 /* ~A new cult has formed, based on the Dark Moon heresy: that my moon goddess Selûne and Shar, goddess of the night, are but facets of a single deity.~ [OH77701] */
  IF ~~ THEN GOTO 27
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 200
END

IF ~~ THEN BEGIN 27 // from: 33.0 26.0
  SAY #77703 /* ~I seek to join this new cult.~ [OH77703] */
  IF ~~ THEN REPLY #77704 /* ~You've turned your back on Selûne?~ */ GOTO 28
  IF ~~ THEN REPLY #77705 /* ~No, you don't. Anyone else, I can see considering it. But your loyalty is clearly to your Moonmaiden.~ */ GOTO 29
  IF ~~ THEN REPLY #77706 /* ~What, your other cult—sorry, your sect—isn't doing it for you anymore?~ */ GOTO 32
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #77707 /* ~I would never break my vows to the Moonmaiden. ~ [OH77707] */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #77708 /* ~You are right, <CHARNAME>. I remain true to Selûne. Joining the Dark Moon heretics is just a ruse.~ [OH77708] */
  IF ~~ THEN REPLY #77709 /* ~A true follower of the Sun Soul philosophy would never stoop to deception to achieve his aims.~ */ GOTO 30
  IF ~~ THEN REPLY #77710 /* ~Selûne worshippers really aren't made for ruses, Rasaad. Better to leave them to those who're good at them.~ */ GOTO 31
  IF ~~ THEN REPLY #77711 /* ~What possible reason could you have for such extreme action?~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 32.0 29.0
  SAY #77712 /* ~That thought haunts my every waking moment. But I've no choice.~ [OH77712] */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 32.1 29.1
  SAY #77713 /* ~This deception is not something I'm comfortable with, I'll admit.~ [OH77713] */
  IF ~~ THEN REPLY #77714 /* ~Well... I may be able to help you out with that, if you explain why you've gone to such drastic measures.~ */ GOTO 35
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #77715 /* ~In my heart, I remain true to Selûne. My attempt to join the Dark Moon heretics is a deception.~ [OH77715] */
  IF ~~ THEN REPLY #77716 /* ~A true follower of the Sun Soul philosophy would never stoop to deception to achieve his aims.~ */ GOTO 30
  IF ~~ THEN REPLY #77717 /* ~Selûne worshippers really aren't made for ruses, Rasaad. I'd leave them to those who're good at them, if I were you.~ */ GOTO 31
  IF ~~ THEN REPLY #77718 /* ~What possible reason could you have for pretending to forsake your mistress?~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 34.0 25.0 24.1 24.0
  SAY #77719 /* ~A new cult has formed, based on the Dark Moon heresy: that my moon goddess Selûne and Shar, goddess of the night, are but facets of a single deity. Many in my sect find this idea appealing—too many for me to risk revealing my secret to my brothers.~ [OH77719] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 34 // from: 25.1
  SAY #77720 /* ~It hurts me to say it, but it is true. ~ [OH77720] */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 35 // from: 32.2 31.0 30.0 29.2 28.0
  SAY #77721 /* ~The Dark Moon heretics are led by a man calling himself Collus Darathon.~ [OH77721] */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #77722 /* ~I believe Collus Darathon is an alias of Alorgoth, the man who killed my brother Gamaz.~ [OH77722] */
  IF ~~ THEN REPLY #77723 /* ~You can prove this?~ */ GOTO 48
  IF ~~ THEN REPLY #77724 /* ~Well, that's a chicken of a different color. Where is this Darathon?~ */ GOTO 39
  IF ~~ THEN REPLY #77725 /* ~Then you should seek him out and make him pay for his crimes.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.2
  SAY #77726 /* ~Would that it were as easy as that. Darathon's ideas spread like poison through the Sun Soul order, but the location of the heretics' temple is a well-kept secret.~ [OH77726] */
  IF ~~ THEN REPLY #77727 /* ~This path you walk is not made for you, Rasaad. I beg you, return to your brothers before it's too late.~ */ GOTO 40
  IF ~~ THEN REPLY #77728 /* ~Which is why you need to join the heretics.~ */ GOTO 38
  IF ~~ THEN REPLY #77729 /* ~Ideas aren't poison, Rasaad. There may be something worth considering in this "heresy."~ */ GOTO 42
END

IF ~~ THEN BEGIN 38 // from: 39.1 37.1
  SAY #77730 /* ~You understand my position perfectly.~ [OH77730] */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 39 // from: 36.1
  SAY #77731 /* ~If only I knew. Darathon's words spread like the plague through the Order, but he remains elusive. Only those who profess to believe the heresy know where to find its leader.~ [OH77731] */
  IF ~~ THEN REPLY #77732 /* ~This path you walk is not made for you, Rasaad. You should return to your brothers before it's too late.~ */ GOTO 40
  IF ~~ THEN REPLY #77733 /* ~Which explains why you need to join the heretics.~ */ GOTO 38
  IF ~~ THEN REPLY #77734 /* ~Words aren't poison, Rasaad. There may be something worth considering in this "heresy."~ */ GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.0 37.0
  SAY #77735 /* ~It's too late, <CHARNAME>. If I were to return now, none would believe my story. Only by rooting out Darathon and avenging my brother can I prove my loyalty.~ [OH77735] */
  IF ~~ THEN REPLY #77736 /* ~Then I guess I'll help you. Join me—without my help, you'll be dead before you ever lay eyes on this Darathon.~ */ GOTO 41
  IF ~~ THEN REPLY #77737 /* ~That's quite the corner you've painted yourself into, Rasaad. I hope you can get yourself out of it—I certainly won't help you.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 50.1 47.0 46.0 44.0 42.2 40.0
  SAY #77738 /* ~I thank you, <CHARNAME>. Together, we will destroy Alorgoth and his heresy.~ [OH77738] */
  IF ~~ THEN REPLY #77739 /* ~I admire your optimism, Rasaad. I don't completely understand it, but I admire it.~ */ DO ~AddJournalEntry(85012,INFO)
SetGlobal("OHR_PLOT","GLOBAL",1)
SetGlobalTimer("OHR_TIMER_CFIGURE","GLOBAL",ONE_ROUND)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY #77740 /* ~We'll see. We'll see.~ */ DO ~AddJournalEntry(85012,INFO)
SetGlobal("OHR_PLOT","GLOBAL",1)
SetGlobalTimer("OHR_TIMER_CFIGURE","GLOBAL",ONE_ROUND)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 50.2 39.2 37.2
  SAY #77741 /* ~Are you joking, <CHARNAME>?~ [OH77741] */
  IF ~~ THEN REPLY #77742 /* ~You'd rather see me joke about this than think on it, I believe.~ */ GOTO 43
  IF ~~ THEN REPLY #77743 /* ~Of course. Couldn't you tell?~ */ GOTO 44
  IF ~~ THEN REPLY #77744 /* ~Relax, Rasaad. Come with me and I'll help you on your quest. But blind devotion to an order that was so quick to turn its back on you will not serve you well in the long term.~ */ GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #77745 /* ~I would.~ [OH77745] */
  IF ~~ THEN REPLY #77746 /* ~I'd like to comfort you, Rasaad, but if so many are flocking to Darathon's banner, perhaps there's something in what he says worth considering.~ */ GOTO 45
  IF ~~ THEN REPLY #77747 /* ~Then I was joking, if that will help you rest easier.~ */ GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #77748 /* ~I'm... Of course I could, <CHARNAME>. Only a fool would try to tempt me from Selûne.~ [OH77748] */
  IF ~~ THEN REPLY #99900 /* ~We can help each other, Rasaad. Will you join me?~ */ GOTO 41
  IF ~~ THEN REPLY #99901 /* ~Good luck with your quest, Rasaad. I fear you'll need it.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 8
END

IF ~~ THEN BEGIN 45 // from: 43.0
  SAY #77749 /* ~What you suggest is...~ [OH77749] */
  IF ~~ THEN REPLY #77750 /* ~Heresy, yes, you've made that very clear. But that doesn't mean it's wrong.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #99902 /* ~Only a fool would try to tempt me from Selûne.~ */
  IF ~~ THEN REPLY #99903 /* ~We can help each other, Rasaad. Will you join me?~ */ GOTO 41
  IF ~~ THEN REPLY #99904 /* ~Good luck with your quest, Rasaad. I fear you'll need it.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 8
END

IF ~~ THEN BEGIN 47 // from: 43.1
  SAY #77751 /* ~Strangely, it does not.~ [OH77751] */
  IF ~~ THEN REPLY #77752 /* ~I'm afraid you're going to have to learn to live with that, if you're to stick with me.~ */ GOTO 41
  IF ~~ THEN REPLY #99905 /* ~Good luck with your quest, Rasaad. I fear you'll need it.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 8
END

IF ~~ THEN BEGIN 48 // from: 38.0 36.0
  SAY #77753 /* ~While tracking Alorgoth, I chanced upon a Dark Moon heretic. Rather than fight, I listened to what he had to say. And the more he said about Darathon, the more I became convinced he followed Alorgoth.~ [OH77753] */
  IF ~~ THEN REPLY #77754 /* ~Did you suggest as much to him?~ */ GOTO 49
  IF ~~ THEN REPLY #77755 /* ~So you have no evidence.~ */ GOTO 51
  IF ~~ THEN REPLY #77756 /* ~I'm sure you know the case you make is far from compelling.~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #77757 /* ~He didn't believe it. As a monk of the Dark Moon, he had met Alorgoth. Collus was a stranger to him. Still, I cannot convince myself the two are not at least connected, if not one and the same.~ [OH77757] */
  IF ~~ THEN REPLY #77758 /* ~I fear you're letting your desire to avenge your brother blind you to reality, Rasaad. Is it really worth risking everything you believe in, everyone you've known and loved, on a hunch?~ */ GOTO 52
  IF ~~ THEN REPLY #77759 /* ~Wait—this guy knew both Alorgoth and Collus, says they're different people, and you still think they're the same?~ */ GOTO 51
  IF ~~ THEN REPLY #77760 /* ~You cling to the flimsiest of hopes, Rasaad. What if you're wrong?~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 52.0 51.0 49.2 48.2
  SAY #77761 /* ~Even if Darathon isn't Alorgoth, the heresy clearly threatens all who serve Selûne. It must be destroyed.~ [OH77761] */
  IF ~~ THEN REPLY #77762 /* ~What you say is true, but I fear you're going about it the wrong way. I only hope you don't come to regret it. Good luck, Rasaad. I'd offer to help, but nothing I can do will save you from this folly.~ */ DO ~AddJournalEntry(85011,INFO)
~ GOTO 8
  IF ~~ THEN REPLY #77763 /* ~Sounds good to me. It's been more than a month since I destroyed my last false cult. Join me: We'll take this one down together.~ */ GOTO 41
  IF ~~ THEN REPLY #77764 /* ~Really? Consider this: If so many of Shar and Selûne's followers are abandoning their sects for the heresy, perhaps the heresy has something worthy to offer.~ */ GOTO 42
END

IF ~~ THEN BEGIN 51 // from: 49.1 48.1
  SAY #77765 /* ~I know how it must sound, <CHARNAME>. Yet in my heart I know it to be true.~ [OH77765] */
  IF ~~ THEN REPLY #77766 /* ~I know you aren't comfortable with deception, Rasaad. I just hope you aren't deceiving yourself.~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #77767 /* ~I know only that I've come too far to stop now.~ [OH77767] */
  IF ~~ THEN GOTO 50
END

IF ~  NumTimesTalkedToGT(0)
Global("OHR_PLOT","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #86777 /* ~Hello again, <CHARNAME>. How does this <DAYNIGHTALL> find you?~ [OH86777] */
  IF ~~ THEN REPLY #86778 /* ~Join me and I'll tell you all about it.~ */ DO ~SetGlobal("OHR_PLOT","GLOBAL",1)
SetGlobalTimer("OHR_TIMER_CFIGURE","GLOBAL",ONE_ROUND)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY #86779 /* ~Well, and looking to stay that way. Perhaps we'll meet again some other time.~ */ GOTO 54
  IF ~~ THEN REPLY #86780 /* ~That's no concern of yours.~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #86781 /* ~I look forward to it.~ [OH86781] */
  IF ~~ THEN DO ~AddJournalEntry(85013,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY #86782 /* ~Farewell.~ [OH86782] */
  IF ~~ THEN DO ~AddJournalEntry(85013,INFO)
~ EXIT
END
