// creator  : weidu (version 24900)
// argument : HEXXATJ.DLG
// game     : .
// source   : ./override/HEXXATJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~HEXXATJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #97636 /* ~It really isn't.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #74914 /* ~I know some necromancers who would disagree.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 347
END

IF WEIGHT #3 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 2 // from:
  SAY #75739 /* ~Remember, it's not the height you need to be afraid of. It's the fall that'll kill you.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #96644 /* ~You surprise me, <CHARNAME>. I thought you had taste.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
END

IF ~~ THEN BEGIN 4 // from:
  SAY #84009 /* ~The Prophet Unproved.~ [OH84009] */
  IF ~~ THEN EXTERN ~OHHMIRRI~ 22
END

IF ~~ THEN BEGIN 5 // from:
  SAY #100218 /* ~You're making a mistake. When you realize that, you can find me at the Copper Coronet.~ [OH100218] */
  IF ~~ THEN DO ~AddJournalEntry(95219,INFO)
SetGlobal("OHH_hexxatleaves","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #95226 /* ~Are you certain you want to do this, <CHARNAME>? There is much we can offer each other.~ [OH95226] */
  IF ~~ THEN REPLY #95244 /* ~I do not want to do it, but Keldorn has forced my hand. You must go.~ */ GOTO 7
  IF ~~ THEN REPLY #95245 /* ~Can you offer some examples? No, wait. I think I'm happier simply to imagine them.~ */ EXTERN ~KELDORJ~ 283
  IF ~~ THEN REPLY #95246 /* ~When you put it that way, I'd be a fool to let you go.~ */ EXTERN ~KELDORJ~ 283
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #96227 /* ~I do not. It's a nice idea, but I've seen little evidence to support it yet. Still, I advise keeping an open mind, in this and all things.~ */
  IF ~~ THEN DO ~AddJournalEntry(95247,INFO)
SetGlobal("OHH_hexxatleaves","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #95229 /* ~You are too gracious, <CHARNAME>.~ [OH95229] */
  IF ~~ THEN EXTERN ~KELDORJ~ 283
END

IF ~~ THEN BEGIN 9 // from:
  SAY #95231 /* ~Apparently, I shall need some new perfume.~ [OH95231] */
  IF ~~ THEN EXTERN ~KELDORJ~ 284
END

IF WEIGHT #5 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #96915 /* ~You hardly seem the cosmopolitan type, <CHARNAME>, and you're obviously not a local. What brought you to Athkatla?~ */
  IF ~~ THEN REPLY #97091 /* ~It wasn't by choice, I can tell you that much.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 13
  IF ~~ THEN REPLY #97092 /* ~What do you mean, I don't seem the "cosmopolitan" type?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 12
  IF ~~ THEN REPLY #97093 /* ~Even if it mattered, it's no business of yours. And it doesn't matter.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #96916 /* ~Then let me ask you something of greater import.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #96917 /* ~You do not have the look of a city woman, that is all.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 11.0 10.0
  SAY #96918 /* ~What of this quest of yours? I would know what I'm getting into before I find myself throat-deep in another's problems.~ */
  IF ~~ THEN REPLY #97094 /* ~I'd rather not talk about it.~ */ GOTO 16
  IF ~~ THEN REPLY #97095 /* ~My childhood friend and I were kidnapped by a mage who experimented on and tortured us. I escaped, but he still has Imoen. I must find her.~ */ GOTO 18
  IF ~~ THEN REPLY #97096 /* ~I will find the mage Irenicus, make him suffer as few have suffered before, then kill him. Any other questions?~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.2
  SAY #96919 /* ~So it's revenge you're after?~ */
  IF ~~ THEN REPLY #97097 /* ~I'd settle for rescuing Imoen.~ */ GOTO 18
  IF ~~ THEN REPLY #97098 /* ~Revenge and a sandwich. Why don't you go fetch me one?~ */ GOTO 15
  IF ~~ THEN REPLY #97099 /* ~It'll do for a start.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #96920 /* ~I'll pretend I didn't hear that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #96921 /* ~Understandable, though you leave me in a difficult position. ~ */
  IF ~~ THEN REPLY #97100 /* ~Here's the story, then: I must find my childhood friend, Imoen, and rescue her from the mage Irenicus. Satisfied now?~ */ GOTO 18
  IF ~~ THEN REPLY #97101 /* ~That's not my problem.~ */ EXIT
  IF ~~ THEN REPLY #97102 /* ~You've been in worse.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #96922 /* ~I suppose I have at that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 14.0 13.1
  SAY #96923 /* ~Had I any close friends, I'm sure I'd feel the same.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #96924 /* ~We'll get your friend back, <CHARNAME>. I promise you that.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",4)
~ THEN BEGIN 20 // from:
  SAY #96925 /* ~No—godsdamn it, no, not now—ahh! AHH!!~ */
  IF ~~ THEN REPLY #97103 /* ~Hexxat?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #96926 /* ~I'm fine. Let's just... let's just continue.~ */
  IF ~~ THEN REPLY #97104 /* ~That's a lot of smoke for someone who's fine.~ */ GOTO 22
  IF ~~ THEN REPLY #97105 /* ~What happened? Are you all right?~ */ GOTO 22
  IF ~~ THEN REPLY #97106 /* ~Very well.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1 21.0
  SAY #96927 /* ~I'm just a little singed.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #96928 /* ~Leave me be.~ */
  IF ~~ THEN REPLY #97107 /* ~No, I don't think so. What happened?~ */ GOTO 24
  IF ~~ THEN REPLY #97108 /* ~If that's really what you want, fine.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #96929 /* ~The cloak's magic faltered. For a moment, I was exposed to the sun.~ */
  IF ~~ THEN REPLY #97109 /* ~Ouch.~ */ GOTO 25
  IF ~~ THEN REPLY #97110 /* ~It stopped working? Do you know why?~ */ GOTO 26
  IF ~~ THEN REPLY #97111 /* ~Go wash yourself. You stink of burned and rotting meat.~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #96930 /* ~Yes. "Ouch." Thank you for that. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #96931 /* ~No. It's... worrisome.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #96932 /* ~Your concern is touching, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",6)
~ THEN BEGIN 28 // from:
  SAY #86636 /* ~You sure you want to do this, <CHARNAME>?~ [OH86636] */
  IF ~~ THEN REPLY #86650 /* ~Do what, Hexxat?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 29
  IF ~~ THEN REPLY #86651 /* ~I've never been more sure of anything in my life. What are we talking about?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 29
  IF ~~ THEN REPLY #86652 /* ~What?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.2 28.1 28.0
  SAY #86637 /* ~I've seen the way you look at me. I know that look well.~ [OH86637] */
  IF ~~ THEN REPLY #86653 /* ~I don't know what you're talking about.~ */ GOTO 30
  IF ~~ THEN REPLY #86654 /* ~I've seen you look back. I've no idea what that means.~ */ GOTO 31
  IF ~~ THEN REPLY #86655 /* ~I hope you don't have a problem with it. I don't intend to stop looking.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #86638 /* ~I guess I was mistaken. A pity.~ [OH86638] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 29.1
  SAY #86639 /* ~These are dangerous times, <CHARNAME>. Personal entanglements can be a liability for people like us.~ [OH86639] */
  IF ~~ THEN REPLY #86656 /* ~Not if they're with the right person.~ */ GOTO 32
  IF ~~ THEN REPLY #86657 /* ~A little entangling never harmed anyone.~ */ GOTO 34
  IF ~~ THEN REPLY #86658 /* ~What I have in mind doesn't require a personal connection.~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #86640 /* ~True—if you can find the right person.~ [OH86640] */
  IF ~~ THEN REPLY #86659 /* ~I think I may have.~ */ GOTO 33
  IF ~~ THEN REPLY #86660 /* ~What are you looking for, Hexxat? In a partner, I mean?~ */ GOTO 38
  IF ~~ THEN REPLY #86661 /* ~If it happens, it happens. I'll not push things.~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #86641 /* ~Watch your step, <CHARNAME>. You tread on dangerous ground.~ [OH86641] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #86642 /* ~You're wrong about that, <CHARNAME>. Trust me on that, if nothing else.~ [OH86642] */
  IF ~~ THEN REPLY #86662 /* ~I trust you, Hexxat. More than I should, most like.~ */ GOTO 40
  IF ~~ THEN REPLY #86663 /* ~I'll have to be careful, then.~ */ GOTO 35
  IF ~~ THEN REPLY #86664 /* ~I think you would know. Best not to risk an entanglement, then.~ */ GOTO 41
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #86643 /* ~We both will.~ [OH86643] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.2
  SAY #86644 /* ~I've heard that before. Once in a while, it even turned out to be true.~ [OH86644] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.2
  SAY #86645 /* ~A shame. Some things were made for pushing.~ [OH86645] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 32.1
  SAY #86646 /* ~I'm not looking at all. But sometimes we find things regardless, wouldn't you agree?~ [OH86646] */
  IF ~~ THEN REPLY #86665 /* ~I would.~ */ EXIT
  IF ~~ THEN REPLY #86666 /* ~If you're saying what I think you're saying—and I think you are—then yes. Absolutely.~ */ EXIT
  IF ~~ THEN REPLY #86667 /* ~If you should change your mind and do start looking, I think you'd best look elsewhere.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.2
  SAY #86647 /* ~I understand.~ [OH86647] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.0
  SAY #86648 /* ~Most like. But I'll try not to disappoint you.~ [OH86648] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #86649 /* ~That will make you happier in the end, believe me.~ [OH86649] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",8)
~ THEN BEGIN 42 // from:
  SAY #96933 /* ~I was right, <CHARNAME>. There is a darkness within you.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #96934 /* ~Tell me—what are you?~ */
  IF ~~ THEN REPLY #97112 /* ~I am a daughter of Bhaal, formerly the god of murder.~ */ GOTO 44
  IF ~~ THEN REPLY #97113 /* ~You've figured me out. I'm the divine emissary to His Lordship the duke of Cheem. ~ */ GOTO 46
  IF ~~ THEN REPLY #97114 /* ~I'm <CHARNAME>. No more and no less.~ */ GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 47.0 46.0 43.0
  SAY #96935 /* ~Former, you say? This Bhaal is dead? Or was he overthrown?~ */
  IF ~~ THEN REPLY #97115 /* ~He foresaw his death during the Time of Troubles and seeded the land with his progeny. ~ */ GOTO 49
  IF ~~ THEN REPLY #97116 /* ~He died, yes. It was the best thing that could have happened to him.~ */ GOTO 49
  IF ~~ THEN REPLY #97117 /* ~I'm here and he's not. That's all you need to know.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.2
  SAY #96936 /* ~And yet I'd know more.~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #96937 /* ~I think not. You're easy on the eyes, but hardly divine. ~ */
  IF ~~ THEN REPLY #97118 /* ~You're wrong about that. I'm a child of Bhaal, former god of murder.~ */ GOTO 44
  IF ~~ THEN REPLY #97119 /* ~I'll take that as a compliment, though I'm not sure it was meant as one.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.2
  SAY #96938 /* ~Perhaps, but there is greater power within <CHARNAME> than it first seems.~ */
  IF ~~ THEN REPLY #97120 /* ~I'm a child of the dead god of murder, Bhaal. A Bhaalspawn. ~ */ GOTO 44
  IF ~~ THEN REPLY #97121 /* ~Keep bothering me and you'll feel that power firsthand.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #96939 /* ~You make it sound tempting... Some other time, perhaps.~ */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 44.0
  SAY #96940 /* ~Many things changed during my seclusion.~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 45.0
  SAY #96941 /* ~So you have divine blood. Is that what Irenicus was after? ~ */
  IF ~~ THEN REPLY #97122 /* ~You're far too smart for your own good.~ */ GOTO 53
  IF ~~ THEN REPLY #97123 /* ~No, he was after my lustrous good looks.~ */ GOTO 52
  IF ~~ THEN REPLY #97124 /* ~What's it to you?~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from:
  SAY #96942 /* ~Yes, I know. So you also have power.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #96943 /* ~You are... lustrous... but I don't think that is why Irenicus was interested in you. ~ */
  IF ~~ THEN REPLY #97125 /* ~You know what mages are interested in, do you?~ */ GOTO 55
  IF ~~ THEN REPLY #97126 /* ~Fine, yes. I don't know exactly what he was after, but he did mention my power from time to time.~ */ GOTO 56
  IF ~~ THEN REPLY #97127 /* ~Think what you will. It matters little to me.~ */ GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 50.2 50.0
  SAY #96944 /* ~I would know who—and what—I'm dealing with. That is fair, is it not?~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 56.0 55.0 53.0 52.2 51.0
  SAY #96945 /* ~We're not so different, you and I.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #96946 /* ~I've met a few in my time.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 56 // from: 52.1
  SAY #96947 /* ~Curious. I wonder what he hoped to achieve...?~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 57 // from: 54.0
  SAY #96948 /* ~We both had power thrust upon us, with no choice in the matter. What will you do with yours? Do you even want it?~ */
  IF ~~ THEN REPLY #97128 /* ~If I could be rid of it, I would. I want nothing more than to be a normal <PRO_RACE>.~ */ GOTO 58
  IF ~~ THEN REPLY #97129 /* ~I've got it, whether I want it or not. All that matters is what I do with it.~ */ GOTO 59
  IF ~~ THEN REPLY #97130 /* ~Don't try to equate us, Hexxat. We are nothing alike.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ GOTO 60
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #96949 /* ~Godly blood or no, you're far above the normal woman, <CHARNAME>. Trust me on this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #96950 /* ~Agreed. We must make do with the gifts we're given. There's nothing to be gained from dwelling on what might have been.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #96951 /* ~If you say so, <CHARNAME>. I'll not argue the point—not right now, anyway.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",10)
~ THEN BEGIN 61 // from:
  SAY #86797 /* ~You're looking at me again, <CHARNAME>.~ [OH86797] */
  IF ~~ THEN REPLY #80087 /* ~Am I?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 62
  IF ~~ THEN REPLY #86831 /* ~You'd be looking at you too, if you had a reflection.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 63
  IF ~~ THEN REPLY #86832 /* ~No. I'm really not.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
IncrementGlobal("HexxatLovetalks","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #86798 /* ~You are.~ [OH86798] */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 61.1
  SAY #86799 /* ~Looks like that mean nothing but trouble.~ [OH86799] */
  IF ~~ THEN REPLY #86833 /* ~Love is trouble?~ */ GOTO 75
  IF ~~ THEN REPLY #86834 /* ~Getting into trouble can be fun.~ */ GOTO 64
  IF ~~ THEN REPLY #86835 /* ~Best to ignore them, then. But don't expect them to stop.~ */ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY #86800 /* ~It's getting out of it that's the problem.~ [OH86800] */
  IF ~~ THEN REPLY #86836 /* ~You see it as a problem?~ */ GOTO 74
  IF ~~ THEN REPLY #86837 /* ~Who says I'd want to get out?~ */ GOTO 82
  IF ~~ THEN REPLY #86838 /* ~A worry for another day.~ */ GOTO 82
END

IF ~~ THEN BEGIN 65 // from: 63.2
  SAY #86801 /* ~Did I say I wanted them to stop?~ [OH86801] */
  IF ~~ THEN REPLY #86839 /* ~It was implied.~ */ GOTO 66
  IF ~~ THEN REPLY #86840 /* ~Are you saying you don't?~ */ GOTO 83
  IF ~~ THEN REPLY #86841 /* ~I thought you did.~ */ GOTO 74
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #86802 /* ~It was inferred. You shouldn't presume to know my mind, <CHARNAME>.~ [OH86802] */
  IF ~~ THEN REPLY #86842 /* ~Then make things easier, and tell me.~ */ GOTO 67
  IF ~~ THEN REPLY #86843 /* ~Well, you've put me in my place. And I liked it. Scold me some more!~ */ GOTO 82
  IF ~~ THEN REPLY #86844 /* ~It's not your mind I presume to know.~ */ GOTO 85
END

IF ~~ THEN BEGIN 67 // from: 74.0 66.0
  SAY #86803 /* ~Some things shouldn't be easy.~ [OH86803] */
  IF ~~ THEN REPLY #86845 /* ~There's no reason this can't be.~ */ GOTO 87
  IF ~~ THEN REPLY #86846 /* ~Some things shouldn't be hard.~ */ GOTO 68
  IF ~~ THEN REPLY #86847 /* ~This thing should not be hard.~ */ GOTO 86
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #86804 /* ~I'm afraid this isn't one of them.~ [OH86804] */
  IF ~~ THEN REPLY #86848 /* ~I don't like games.~ */ GOTO 84
  IF ~~ THEN REPLY #86849 /* ~I'm not afraid of a challenge.~ */ GOTO 79
  IF ~~ THEN REPLY #86850 /* ~A pity. We could have had something, you and I.~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.2
  SAY #86805 /* ~We do—a professional relationship. That will have to serve.~ [OH86805] */
  IF ~~ THEN REPLY #86851 /* ~It will do... for a start, at least.~ */ GOTO 71
  IF ~~ THEN REPLY #86852 /* ~That... may not be enough for me.~ */ GOTO 70
  IF ~~ THEN REPLY #86853 /* ~As you wish.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #86806 /* ~And if it isn't? What will you do?~ [OH86806] */
  IF ~~ THEN REPLY #86854 /* ~That depends on you.~ */ GOTO 71
  IF ~~ THEN REPLY #86855 /* ~Whatever you'll let me. Maybe juuuust a shade more, if I can sneak it by.~ */ GOTO 85
  IF ~~ THEN REPLY #86856 /* ~Wait and see.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 87.0 81.0 70.0 69.0
  SAY #86807 /* ~You must never depend on me, <CHARNAME>. I'll only disappoint you.~ [OH86807] */
  IF ~~ THEN REPLY #86857 /* ~I find that hard to believe.~ */ GOTO 73
  IF ~~ THEN REPLY #86858 /* ~Great! I'm unreliable too—we can disappoint each other.~ */ GOTO 82
  IF ~~ THEN REPLY #97359 /* ~I'll risk it.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #86808 /* ~Yes. They usually do...~ [OH86808] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0
  SAY #86809 /* ~They usually do...~ [OH86809] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 65.2 64.0
  SAY #86810 /* ~Don't presume to know my mind, <CHARNAME>.~ [OH86810] */
  IF ~~ THEN REPLY #86859 /* ~Then make things easier, and tell me.~ */ GOTO 67
  IF ~~ THEN REPLY #86860 /* ~Well, you've put me in my place. And I liked it. Scold me some more!~ */ GOTO 82
  IF ~~ THEN REPLY #86861 /* ~It's not your mind I presume to know.~ */ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 63.0
  SAY #86811 /* ~Love is the greatest trouble of all.~ [OH86811] */
  IF ~~ THEN REPLY #86862 /* ~That's rather a bleak philosophy, don't you think?~ */ GOTO 76
  IF ~~ THEN REPLY #86863 /* ~What awful thing happened to you to make you believe that?~ */ GOTO 81
  IF ~~ THEN REPLY #86864 /* ~It's not entirely without merit.~ */ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #86812 /* ~Perhaps, but it's also a realistic one.~ [OH86812] */
  IF ~~ THEN REPLY #86865 /* ~I see I've got my work cut out for me here.~ */ GOTO 85
  IF ~~ THEN REPLY #86866 /* ~Pfft. Reality is for the unimaginative.~ */ GOTO 77
  IF ~~ THEN REPLY #86867 /* ~I can see there's no changing your mind on this. Let's put this idle talk behind us and focus on the business at hand.~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY #86813 /* ~A real arrow will pierce the hardest imaginary armor.~ [OH86813] */
  IF ~~ THEN REPLY #86868 /* ~Real feelings will touch even the coldest heart.~ */ GOTO 78
  IF ~~ THEN REPLY #86869 /* ~Sure, but the armor looks REALLY GOOD.~ */ GOTO 82
  IF ~~ THEN REPLY #86870 /* ~Then let's be real here.~ */ GOTO 85
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #86814 /* ~I hope you're right, <CHARNAME>. I truly do.~ [OH86814] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 68.1
  SAY #86815 /* ~Fear keeps people alive.~ */
  IF ~~ THEN REPLY #86871 /* ~Challenges make life worth living. You'll see.~ */ GOTO 87
  IF ~~ THEN REPLY #86872 /* ~Living in fear's no life at all.~ */ GOTO 80
  IF ~~ THEN REPLY #86873 /* ~I've lasted this long without it.~ */ GOTO 92
END

IF ~~ THEN BEGIN 80 // from: 79.1
  SAY #86816 /* ~Spoken like someone who hasn't lost theirs.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from: 75.1
  SAY #86817 /* ~Take a guess.~ [OH86817] */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 82 // from: 77.1 74.1 71.1 66.1 64.2 64.1
  SAY #86818 /* ~Glib words for a serious matter.~ [OH86818] */
  IF ~~ THEN REPLY #86875 /* ~Your favorite kind, I think.~ */ GOTO 90
  IF ~~ THEN REPLY #86876 /* ~Hey. There's no reason this can't be fun, as well as awkward, uncomfortable, distressing, and ultimately disappointing.~ */ GOTO 88
  IF ~~ THEN REPLY #86877 /* ~Don't ever think I'm not taking this seriously.~ */ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 65.1
  SAY #86819 /* ~What do you think?~ [OH86819] */
  IF ~~ THEN REPLY #86878 /* ~I think you've been hurt before and don't want to be hurt again.~ */ GOTO 92
  IF ~~ THEN REPLY #86879 /* ~I think you're playing with me.~ */ GOTO 84
  IF ~~ THEN REPLY #86880 /* ~I don't want to think. I want to know.~ */ GOTO 93
END

IF ~~ THEN BEGIN 84 // from: 89.0 83.1 68.0
  SAY #86820 /* ~Enjoy the game while you're able, darling.~ [OH86820] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 93.0 86.0 77.2 76.0 75.2 74.2 70.1 66.2
  SAY #86821 /* ~I know you enjoy a challenge, <CHARNAME>. I'm much the same. But some challenges aren't worth the effort.~ [OH86821] */
  IF ~~ THEN REPLY #86881 /* ~The joy's in making the effort, Hexxat. You'll see.~ */ GOTO 92
  IF ~~ THEN REPLY #86882 /* ~I think yours will be.~ */ GOTO 87
  IF ~~ THEN REPLY #86883 /* ~There's only one way to find out.~ */ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 67.2
  SAY #86822 /* ~Maybe I'm protecting you.~ [OH86822] */
  IF ~~ THEN REPLY #86884 /* ~I don't want your protection, Hexxat.~ */ GOTO 85
  IF ~~ THEN REPLY #86885 /* ~I think you're protecting yourself. Or think you are, at any rate.~ */ GOTO 92
  IF ~~ THEN REPLY #86886 /* ~I need no protection. Not from you.~ */ GOTO 94
END

IF ~~ THEN BEGIN 87 // from: 92.0 85.1 79.0 67.0
  SAY #86823 /* ~You don't know who I am. Not really.~ [OH86823] */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 88 // from: 82.1
  SAY #86824 /* ~Such a pretty picture you paint. I can't wait to see where this goes next.~ [OH86824] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from: 82.2
  SAY #86825 /* ~Relax, <CHARNAME>. Don't be so grim.~ [OH86825] */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 90 // from: 82.0
  SAY #86826 /* ~There may be hope for you yet.~ [OH86826] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #86827 /* ~Agreed.~ [OH86827] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from: 86.1 85.2 85.0 83.0 79.2
  SAY #86828 /* ~Be careful, <CHARNAME>.~ [OH86828] */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 93 // from: 83.2
  SAY #86829 /* ~You won't always get what you want. Especially in matters like this. Especially when they involve me.~ [OH86829] */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 94 // from: 86.2
  SAY #86830 /* ~If you truly believe that, you are a fool.~ [OH86830] */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",12)
~ THEN BEGIN 95 // from:
  SAY #96952 /* ~The woods are a refreshing change of pace, no? The colors are brighter here, the air crisper and less... dense than in the city.~ */
  IF ~~ THEN REPLY #97131 /* ~I thought you preferred cities?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 96
  IF ~~ THEN REPLY #97132 /* ~I guess I'd feel the same if I'd spent centuries locked in a tomb.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 97
  IF ~~ THEN REPLY #97133 /* ~We're not here on vacation.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #96953 /* ~I wouldn't want to live here, but...~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 97 // from: 95.1
  SAY #96954 /* ~Most like.~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 98 // from: 95.2
  SAY #96955 /* ~No. Vacations are pleasant.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 96.0
  SAY #96956 /* ~Every now and then, it's nice to see a little green. Reminds me it's still there.~ */
  IF ~~ THEN REPLY #97134 /* ~You never thanked me for helping you out of that tomb, by the way.~ */ GOTO 100
  IF ~~ THEN REPLY #97135 /* ~You need reminding?~ */ GOTO 101
  IF ~~ THEN REPLY #97136 /* ~I know what you mean. ~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #96957 /* ~Didn't I?~ */
  IF ~~ THEN REPLY #97137 /* ~No.~ */ GOTO 102
  IF ~~ THEN REPLY #97138 /* ~I don't appreciate ingratitude.~ */ GOTO 102
  IF ~~ THEN REPLY #97139 /* ~You're welcome, all the same.~ */ GOTO 102
END

IF ~~ THEN BEGIN 101 // from: 99.2 99.1
  SAY #96958 /* ~I spent a long time contemplating stones. This is a welcome sight, believe me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from: 100.2 100.1 100.0
  SAY #96959 /* ~I would have escaped with or without you. It was just a matter of time.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #96960 /* ~But you did me a service, I'll not deny it. And I thank you for it.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",14)
CheckStatGT(Player1,12,DEX)
~ THEN BEGIN 104 // from:
  SAY #96961 /* ~You're very agile, <CHARNAME>. A handy talent to have in battle. You hold your own better than many I've seen.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 108
END

IF WEIGHT #12 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",14)
CheckStatGT(Player1,12,STR)
~ THEN BEGIN 105 // from:
  SAY #96962 /* ~Your strength is impressive, <CHARNAME>. It serves you well in battle.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 108
END

IF WEIGHT #13 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",14)
CheckStatGT(Player1,12,CON)
~ THEN BEGIN 106 // from:
  SAY #96963 /* ~You hold your own in battle better than many I've seen, <CHARNAME>. There aren't many who could match your fortitude.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 108
END

IF WEIGHT #14 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",14)
~ THEN BEGIN 107 // from:
  SAY #96964 /* ~Your ingenuity in battle continues to impress, <CHARNAME>.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0 106.0 105.0 104.0
  SAY #96965 /* ~I've worked with few more competent.~ */
  IF ~~ THEN REPLY #97140 /* ~I appreciate that, Hexxat. That means a lot, coming from one as able as you.~ */ GOTO 109
  IF ~~ THEN REPLY #97141 /* ~Few have.~ */ GOTO 110
  IF ~~ THEN REPLY #97142 /* ~Likewise.~ */ GOTO 111
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #96966 /* ~I do what I can.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 110 // from: 108.1
  SAY #96967 /* ~You certainly don't lack for self-confidence. Nor should you.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0 109.0 108.2
  SAY #96968 /* ~Every adventurer has her assets. Yours are... very impressive.~ */
  IF ~~ THEN REPLY #97143 /* ~As are yours.~ */ GOTO 112
  IF ~~ THEN REPLY #97144 /* ~I doubt they're any match for yours. Perhaps we could... compare our assets sometime.~ */ GOTO 113
  IF ~~ THEN REPLY #97145 /* ~Yes, well. Uh. Excuse me. I have to go... elsewhere.~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #96969 /* ~That's good of you to say. I'm glad I haven't lost my touch.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from: 111.1
  SAY #96970 /* ~Definitely an idea worth considering. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",16)
~ THEN BEGIN 114 // from:
  SAY #96971 /* ~I've a question for you, <CHARNAME>.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
SetGlobal("HexxatRomanceActive","GLOBAL",2)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #96972 /* ~Why do you keep me around?~ */
  IF ~~ THEN REPLY #97146 /* ~I like having beautiful women around.~ */ GOTO 116
  IF ~~ THEN REPLY #97147 /* ~There's something about you that intrigues me.~ */ GOTO 120
  IF ~~ THEN REPLY #97148 /* ~You know why.~ */ GOTO 123
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #96973 /* ~Women?~ */
  IF ~~ THEN REPLY #97149 /* ~What do you want me to say, Hexxat?~ */ GOTO 125
  IF ~~ THEN REPLY #97150 /* ~None can compare to your beauty.~ */ GOTO 118
  IF ~~ THEN REPLY #97151 /* ~Don't pretend you're any different.~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.2
  SAY #96974 /* ~You've got me there.~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 123.0 117.0 116.1
  SAY #96975 /* ~So I'm beautiful, am I?~ */
  IF ~~ THEN REPLY #97152 /* ~You know you are.~ */ GOTO 126
  IF ~~ THEN REPLY #97153 /* ~You are, but slightly less so with that smirk on your face.~ */ GOTO 126
  IF ~~ THEN REPLY #97154 /* ~Fishing for compliments, Hexxat? I thought better of you.~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.2
  SAY #96976 /* ~I'm sorry to have disappointed you.~ */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 120 // from: 115.1
  SAY #96977 /* ~And what is that?~ */
  IF ~~ THEN REPLY #97155 /* ~The way you appreciate silence.~ */ GOTO 121
  IF ~~ THEN REPLY #97156 /* ~You have an exotic allure that's nigh irresistible.~ */ GOTO 129
  IF ~~ THEN REPLY #97157 /* ~You're smart, capable, witty, and striking. Do I need more reason than that?~ */ GOTO 130
  IF ~~ THEN REPLY #97158 /* ~You're a vampire, and a beautiful one at that. How could I resist you? Why would anyone want to?~ */ GOTO 132
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #96978 /* ~I see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #96979 /* ~Perhaps we'll talk later.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123 // from: 115.2
  SAY #96980 /* ~Even so, I'd like you to tell me.~ */
  IF ~~ THEN REPLY #97159 /* ~I like the company of beautiful women. A taste we share, I suspect.~ */ GOTO 118
  IF ~~ THEN REPLY #97160 /* ~What do you want me to tell you, Hexxat?~ */ GOTO 125
  IF ~~ THEN REPLY #97161 /* ~You have a number of talents that are of use to me.~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 125.2 123.2
  SAY #96981 /* ~So I'm useful to you? That's it?~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 125 // from: 123.1 116.0
  SAY #96982 /* ~The truth. But I'll settle for a flattering lie.~ */
  IF ~~ THEN REPLY #97162 /* ~The truth then: You are a beautiful woman. I like beautiful women.~ */ GOTO 126
  IF ~~ THEN REPLY #97163 /* ~The truth is I need you. I need your skills, your expertise. But I also want you, for... other skills and expertise.~ */ GOTO 131
  IF ~~ THEN REPLY #97164 /* ~The truth is I can use a woman of your skills.~ */ GOTO 124
END

IF ~~ THEN BEGIN 126 // from: 125.0 118.1 118.0
  SAY #96983 /* ~What is it about me you find beautiful?~ */
  IF ~~ THEN REPLY #97165 /* ~Everything, really. I don't know where to start.~ */ GOTO 127
  IF ~~ THEN REPLY #97166 /* ~You have an exotic allure that's nigh irresistible.~ */ GOTO 129
  IF ~~ THEN REPLY #97167 /* ~You're smart, capable, witty, and striking. What more could anyone want?~ */ GOTO 131
  IF ~~ THEN REPLY #97168 /* ~You're a vampire, and a beautiful one at that. How could I resist you? Why would anyone want to?~ */ GOTO 132
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #96984 /* ~When we get some time to ourselves, I'll show you where.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #96985 /* ~If you thought now was the right time to make a joke, you were mistaken.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1 120.1
  SAY #96986 /* ~Exotic, am I?~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0 120.2
  SAY #96987 /* ~I suppose I can live with that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2 125.1
  SAY #96988 /* ~Good answer.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 126.3 120.3
  SAY #96989 /* ~My undead nature excites you?~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 124.0
  SAY #96990 /* ~Wrong answer, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",18)
~ THEN BEGIN 134 // from:
  SAY #96991 /* ~Ubtao's mercy. Is it just me, or are the days getting longer?~ */
  IF ~~ THEN REPLY #97169 /* ~It's just you. ~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 135
  IF ~~ THEN REPLY #97170 /* ~What's the problem?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 138
  IF ~~ THEN REPLY #97171 /* ~You better pull your hood up.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #96992 /* ~Are you sure?~ */
  IF ~~ THEN REPLY #97172 /* ~Pretty sure. Are you all right?~ */ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 134.2
  SAY #96993 /* ~Yes, thank you for pointing out the obvious. ~ */
  IF ~~ THEN REPLY #97173 /* ~I was just trying to help.~ */ GOTO 137
  IF ~~ THEN REPLY #97174 /* ~No problem. You should also try to avoid stepping in mud puddles and cow dung.~ */ GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.0
  SAY #96994 /* ~Forgive me, <CHARNAME>. I shouldn't have snapped at you.~ */
  IF ~  OR(2)
CheckStatGT(Player1,12,INT)
CheckStatGT(Player1,12,WIS)
~ THEN REPLY #97175 /* ~It can't be easy for you, watching the sun rise.~ */ GOTO 141
  IF ~~ THEN REPLY #97176 /* ~What's the matter?~ */ GOTO 138
  IF ~~ THEN REPLY #97177 /* ~No. You shouldn't have.~ */ EXIT
END

IF ~~ THEN BEGIN 138 // from: 137.1 135.0 134.1
  SAY #96995 /* ~I'm fine.~ */
  IF ~~ THEN REPLY #97178 /* ~You don't seem fine.~ */ GOTO 139
  IF ~~ THEN REPLY #97179 /* ~If you insist.~ */ EXIT
  IF ~  OR(2)
CheckStatGT(Player1,12,INT)
CheckStatGT(Player1,12,WIS)
~ THEN REPLY #97180 /* ~Ah, I get it now. It's watching the sun rise that's bothering you.~ */ GOTO 141
END

IF ~~ THEN BEGIN 139 // from: 140.2 138.0
  SAY #96996 /* ~I said I was fine. Let it be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #96997 /* ~Then you'll be waiting a long time. I waited decades for the right person to come along; I can wait you out.~ */
  IF ~~ THEN REPLY #97181 /* ~You waited decades until I came along. Out with it.~ */ GOTO 142
  IF ~  OR(2)
CheckStatGT(Player1,12,INT)
CheckStatGT(Player1,12,WIS)
~ THEN REPLY #97182 /* ~Is this something to do with the sunrise?~ */ GOTO 141
  IF ~~ THEN REPLY #97183 /* ~You're impossible. Fine, then.~ */ GOTO 139
END

IF ~~ THEN BEGIN 141 // from: 140.1 138.2 137.0
  SAY #96998 /* ~You're very observant. That may get you into trouble someday.~ */
  IF ~  OR(2)
CheckStatGT(Player1,14,INT)
CheckStatGT(Player1,14,WIS)
~ THEN REPLY #97184 /* ~You do not wish to be what you are.~ */ GOTO 144
  IF ~~ THEN REPLY #97185 /* ~Talk to me, Hexxat. I might be able to help.~ */ GOTO 142
  IF ~~ THEN REPLY #97186 /* ~I'll risk it.~ */ GOTO 145
END

IF ~~ THEN BEGIN 142 // from: 144.0 141.1 140.0
  SAY #96999 /* ~You can't help me. No one can.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #97000 /* ~With one possible exception...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from: 141.0
  SAY #97001 /* ~No sane person would.~ */
  IF ~~ THEN REPLY #97187 /* ~I'm sorry. It must be... difficult for you. ~ */ GOTO 142
  IF ~~ THEN REPLY #97188 /* ~You've been granted power few ever achieve. You should embrace it.~ */ GOTO 146
  IF ~~ THEN REPLY #97189 /* ~There might be some downsides, but this is what you are. Accept it.~ */ GOTO 146
END

IF ~~ THEN BEGIN 145 // from: 141.2
  SAY #97002 /* ~Risk it with someone else. I'm not in the mood.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from: 144.2 144.1
  SAY #97003 /* ~Don't tell me what to do, <CHARNAME>. Especially not in this matter.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",20)
~ THEN BEGIN 147 // from:
  SAY #97004 /* ~I thought once I escaped Dragomir's clutches I would never be bored again... how wrong I was. Entertain me, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #97190 /* ~And how would you like me to entertain you, exactly?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 149
  IF ~~ THEN REPLY #97191 /* ~As you wish. I shall now perform the highly sensual Dance of the Seven Ducks. ~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 148
  IF ~~ THEN REPLY #97192 /* ~Entertain yourself. You should be used to that by now.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 147.1
  SAY #97005 /* ~I've seen that dance. It's not as sensual as its reputation makes it sound.~ */
  IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0 147.0
  SAY #97006 /* ~Tell me a story. Something with a little romance. You have had some romance in your life, haven't you?~ */
  IF ~~ THEN REPLY #97193 /* ~Not really, no. Sorry.~ */ GOTO 150
  IF ~~ THEN REPLY #97194 /* ~I'm waiting for the right person.~ */ GOTO 150
  IF ~~ THEN REPLY #97195 /* ~There was this young monk in Candlekeep.~ */ GOTO 151
  IF ~~ THEN REPLY #97196 /* ~There was a young priestess once...~ */ GOTO 152
  IF ~~ THEN REPLY #97197 /* ~How about you tell a story? I'm sure you have many.~ */ GOTO 153
END

IF ~~ THEN BEGIN 150 // from: 149.1 149.0
  SAY #97007 /* ~And here I thought you might have something interesting to say. ~ */
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 151 // from: 153.0 149.2
  SAY #97008 /* ~A monk? Tell me more.~ */
  IF ~~ THEN REPLY #97198 /* ~We shared a few stolen kisses, longing glances, that sort of thing. Nothing exciting.~ */ GOTO 155
  IF ~~ THEN REPLY #97199 /* ~He took me under an apple tree one spring, behind the library. It was glorious.~ */ GOTO 156
  IF ~~ THEN REPLY #97200 /* ~The interesting part wasn't so much the monk as the maid who was courting him.~ */ GOTO 157
END

IF ~~ THEN BEGIN 152 // from: 153.1 149.3
  SAY #97009 /* ~A priestess? And what happened? Did she... pray?~ */
  IF ~~ THEN REPLY #97201 /* ~That's ALL she did. It was so boring. She wouldn't even kiss me.~ */ GOTO 155
  IF ~~ THEN REPLY #97202 /* ~We snuck into the haybarn one night, under cover of darkness. There was a fair amount of prayer going on that night, as I recall.~ */ GOTO 156
  IF ~~ THEN REPLY #97203 /* ~We never got to act on our feelings. She was only there for a week. Fun while it lasted, though.~ */ GOTO 155
END

IF ~~ THEN BEGIN 153 // from: 149.4
  SAY #97010 /* ~I know all my stories. I'd hear one of yours now.~ */
  IF ~~ THEN REPLY #97195 /* ~There was this young monk in Candlekeep.~ */ GOTO 151
  IF ~~ THEN REPLY #97196 /* ~There was a young priestess once...~ */ GOTO 152
  IF ~~ THEN REPLY #97204 /* ~Then you'll be disappointed.~ */ GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.2
  SAY #97011 /* ~I guess I will, at that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.2 152.0 151.0
  SAY #97012 /* ~What a shame. Couldn't you have made up something a little more interesting?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 156 // from: 157.2 157.1 157.0 152.1 151.1
  SAY #97013 /* ~I can use my imagination to fill in the blanks.~ */
  IF ~~ THEN REPLY #97205 /* ~You're going to have to. I can't believe I told you as much as I did.~ */ GOTO 158
  IF ~~ THEN REPLY #97206 /* ~One day, I'd be happy to fill in the blanks myself. ~ */ GOTO 159
  IF ~~ THEN REPLY #97207 /* ~Oh, gods. Don't do that. ~ */ GOTO 160
END

IF ~~ THEN BEGIN 157 // from: 151.2
  SAY #97014 /* ~Ahh, romance AND intrigue. Do go on.~ */
  IF ~~ THEN REPLY #97208 /* ~Well, there were a few fights, some kissing, that sort of thing. The monk ended up being fairly boring, but the maid... well.~ */ GOTO 156
  IF ~~ THEN REPLY #97209 /* ~It was an enormous drama until Gorion pulled us aside and put a stop to it. Ah, well. It was fun while it lasted.~ */ GOTO 156
  IF ~~ THEN REPLY #97210 /* ~No, I think that's enough of that.~ */ GOTO 156
END

IF ~~ THEN BEGIN 158 // from: 156.0 150.0
  SAY #97015 /* ~Some day you will open yourself to me, <CHARNAME>.~ */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.0 156.1
  SAY #97016 /* ~Some day soon, I hope...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 160 // from: 156.2
  SAY #97017 /* ~Then you'll have to fill them in for me...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",22)
~ THEN BEGIN 161 // from:
  SAY #97018 /* ~Are you afraid of me, <CHARNAME>?~ */
  IF ~~ THEN REPLY #97211 /* ~Do I look like I'm trembling, Hexxat?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 162
  IF ~~ THEN REPLY #97212 /* ~Sometimes. Sometimes you frighten me.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 163
  IF ~~ THEN REPLY #97213 /* ~You're a vampire. I'd be a fool if you didn't make me a little nervous.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 164
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #97019 /* ~Some seem to take issue with my nature.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 163 // from: 161.1
  SAY #97020 /* ~You have nothing to fear from me.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0 162.0 161.2
  SAY #97021 /* ~Does it bother you? My being undead?~ */
  IF ~~ THEN REPLY #97214 /* ~Of course. That should come as no surprise.~ */ GOTO 165
  IF ~~ THEN REPLY #97215 /* ~Actually, quite the opposite. Your power makes you attractive.~ */ GOTO 166
  IF ~~ THEN REPLY #97216 /* ~I judge people for their actions, not their nature.~ */ GOTO 167
  IF ~~ THEN REPLY #97217 /* ~Should it?~ */ GOTO 168
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #97022 /* ~None at all. But it is... disappointing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #97023 /* ~Is that what attracts you? How disappointing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 167 // from: 164.2
  SAY #97024 /* ~You would be hypocritical not to—particularly in your case. I'm glad to see you've considered this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 168 // from: 164.3
  SAY #97025 /* ~I would hope not. But I hope for many things I'll never have.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("HexxatLovetalks","GLOBAL",24)
~ THEN BEGIN 169 // from:
  SAY #86887 /* ~You have something you'd like to ask me, <CHARNAME>?~ [OH86887] */
  IF ~~ THEN REPLY #87009 /* ~Perhaps. Why do you ask?~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 170
  IF ~~ THEN REPLY #87010 /* ~Many things. But I doubt I'd get a straight answer.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 187
  IF ~~ THEN REPLY #87011 /* ~I don't think so.~ */ DO ~IncrementGlobal("HexxatLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.2 169.0
  SAY #86888 /* ~You looked like you had something on your mind.~ [OH86888] */
  IF ~~ THEN REPLY #87012 /* ~I've many things on my mind. Too many.~ */ GOTO 192
  IF ~~ THEN REPLY #87013 /* ~Maybe you're the one with something on their mind.~ */ GOTO 171
  IF ~~ THEN REPLY #87014 /* ~Nothing that concerns you, vampire.~ */ GOTO 193
END

IF ~~ THEN BEGIN 171 // from: 170.1
  SAY #86889 /* ~Maybe I am.~ [OH86889] */
  IF ~~ THEN REPLY #87015 /* ~Well, are you?~ */ GOTO 173
  IF ~~ THEN REPLY #87016 /* ~Out with it then. Let's hear what you have on your mind.~ */ GOTO 173
  IF ~~ THEN REPLY #87017 /* ~I don't care for these games you play.~ */ GOTO 172
END

IF ~~ THEN BEGIN 172 // from: 210.0 171.2
  SAY #86890 /* ~Put a little effort in, <CHARNAME>. You might like what you get out of it.~ [OH86890] */
  IF ~~ THEN REPLY #87018 /* ~What would that be?~ */ GOTO 173
  IF ~~ THEN REPLY #87019 /* ~Show me. Let me see what I might get out of it.~ */ GOTO 183
  IF ~~ THEN REPLY #87020 /* ~I don't do "might."~ */ GOTO 186
END

IF ~~ THEN BEGIN 173 // from: 192.0 172.0 171.1 171.0
  SAY #86955 /* ~A lady never tells.~ [OH86955] */
  IF ~~ THEN REPLY #87021 /* ~You keep one secret too many. This one may cost you.~ */ GOTO 186
  IF ~~ THEN REPLY #87022 /* ~You're no lady, Hexxat.~ */ GOTO 174
  IF ~~ THEN REPLY #87023 /* ~You and I must know different ladies.~ */ GOTO 194
END

IF ~~ THEN BEGIN 174 // from: 173.1
  SAY #86956 /* ~What am I, then?~ [OH86956] */
  IF ~~ THEN REPLY #87024 /* ~A player of games.~ */ GOTO 176
  IF ~~ THEN REPLY #87025 /* ~Whatever you want to be, I expect. But what is it you would be, I wonder?~ */ GOTO 199
  IF ~~ THEN REPLY #87026 /* ~A means to an end.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.2
  SAY #86957 /* ~And nothing more?~ [OH86957] */
  IF ~~ THEN REPLY #87027 /* ~What more would you be?~ */ GOTO 199
  IF ~~ THEN REPLY #87028 /* ~If you want to be more, I'm certainly open to the possibility.~ */ GOTO 183
  IF ~~ THEN REPLY #87029 /* ~You're playing games with me now.~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.2 174.0
  SAY #86958 /* ~I cannot deny that.~ [OH86958] */
  IF ~~ THEN REPLY #87030 /* ~Good. I wouldn't believe you if you did.~ */ GOTO 187
  IF ~~ THEN REPLY #87031 /* ~Some games are dangerous.~ */ GOTO 177
  IF ~~ THEN REPLY #87032 /* ~Games are for children. Act your age.~ */ GOTO 198
END

IF ~~ THEN BEGIN 177 // from: 176.1
  SAY #86959 /* ~My favorite kind.~ [OH86959] */
  IF ~~ THEN REPLY #87033 /* ~I prefer cards, but I think I'm ready to give this a shot.~ */ GOTO 178
  IF ~~ THEN REPLY #87034 /* ~I can't say I'm surprised.~ */ GOTO 179
  IF ~~ THEN REPLY #87035 /* ~Mine too. Shall we play?~ */ GOTO 180
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #86960 /* ~Give it a shot?~ [OH86960] */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 179 // from: 177.1
  SAY #86961 /* ~You've pierced my aura of mystery.~ [OH86961] */
  IF ~~ THEN REPLY #87036 /* ~You look better without it.~ */ GOTO 195
  IF ~~ THEN REPLY #87037 /* ~You don't need it. Not with me.~ */ GOTO 201
  IF ~~ THEN REPLY #87038 /* ~You are no mystery to me, Hexxat. No mystery I'd waste my time solving, at any rate.~ */ GOTO 198
END

IF ~~ THEN BEGIN 180 // from: 178.0 177.2
  SAY #86962 /* ~We started playing a minute ago. Try and keep up.~ [OH86962] */
  IF ~~ THEN REPLY #87039 /* ~I think we should slow down here.~ */ GOTO 181
  IF ~~ THEN REPLY #87040 /* ~You move quickly.~ */ GOTO 181
  IF ~~ THEN REPLY #87041 /* ~You can play with yourself. I want no part of this.~ */ GOTO 198
END

IF ~~ THEN BEGIN 181 // from: 180.1 180.0
  SAY #86963 /* ~You think this is quick? You should see me when I'm really engaged.~ [OH86963] */
  IF ~~ THEN REPLY #87042 /* ~I'd like that.~ */ GOTO 183
  IF ~~ THEN REPLY #87043 /* ~You aren't engaged yet?~ */ GOTO 182
  IF ~~ THEN REPLY #87044 /* ~Perhaps someday I will. But not today.~ */ GOTO 212
END

IF ~~ THEN BEGIN 182 // from: 181.1
  SAY #86964 /* ~Oh, darling. You've seen nothing yet. I don't know if you can handle it.~ [OH86964] */
  IF ~~ THEN REPLY #87045 /* ~You may be right.~ */ GOTO 193
  IF ~~ THEN REPLY #87046 /* ~Let's find out.~ */ GOTO 202
  IF ~~ THEN REPLY #87047 /* ~You think too much of yourself. Or too little of me.~ */ GOTO 184
END

IF ~~ THEN BEGIN 183 // from: 211.0 181.0 175.1 172.1
  SAY #86965 /* ~You couldn't handle it.~ [OH86965] */
  IF ~~ THEN REPLY #87045 /* ~You may be right.~ */ GOTO 193
  IF ~~ THEN REPLY #87046 /* ~Let's find out.~ */ GOTO 202
  IF ~~ THEN REPLY #87047 /* ~You think too much of yourself. Or too little of me.~ */ GOTO 184
END

IF ~~ THEN BEGIN 184 // from: 183.2 182.2
  SAY #86966 /* ~Prove me wrong.~ [OH86966] */
  IF ~~ THEN REPLY #87048 /* ~Come here then. Let me show you.~ */ GOTO 208
  IF ~~ THEN REPLY #87050 /* ~How?~ */ GOTO 204
  IF ~~ THEN REPLY #87051 /* ~I'm not some puppet, Hexxat. You can't just pull my strings and expect me to go along with you.~ */ GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 220.2 184.2
  SAY #86967 /* ~Some people like having their strings pulled.~ [OH86967] */
  IF ~~ THEN REPLY #87052 /* ~Much depends on who's doing the pulling.~ */ GOTO 212
  IF ~~ THEN REPLY #87053 /* ~Am I one of them, I wonder?~ */ GOTO 209
  IF ~~ THEN REPLY #87054 /* ~I'm not one of them. When you're ready to take this seriously, you know where to find me.~ */ GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.2 173.0 172.2
  SAY #86968 /* ~I'll keep that in mind.~ [OH86968] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 187 // from: 199.1 194.2 176.0 169.1
  SAY #86969 /* ~You doubt my honesty? I'm hurt.~ [OH86969] */
  IF ~~ THEN REPLY #87055 /* ~I'm sure you'll recover. Vampires heal quickly.~ */ GOTO 198
  IF ~~ THEN REPLY #87056 /* ~Remember the circumstances of our meeting, Hexxat. You cannot blame me for being cautious.~ */ GOTO 210
  IF ~~ THEN REPLY #87057 /* ~You've been hurt worse, I'm sure.~ */ GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.2
  SAY #86970 /* ~That is true. But never by someone I trusted.~ [OH86970] */
  IF ~~ THEN REPLY #87058 /* ~Forgive me. I didn't mean to upset you.~ */ GOTO 217
  IF ~~ THEN REPLY #87059 /* ~You trust me?~ */ GOTO 190
  IF ~~ THEN REPLY #87060 /* ~Your words are too flattering to be believed.~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 217.0 188.2
  SAY #86971 /* ~Whether you believe it or not, I do trust you.~ [OH86971] */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0 188.1
  SAY #86972 /* ~As much as I trust anyone.~ [OH86972] */
  IF ~~ THEN REPLY #87061 /* ~That means a lot.~ */ GOTO 215
  IF ~~ THEN REPLY #87062 /* ~Not a high wall to clear, but I appreciate it.~ */ GOTO 191
  IF ~~ THEN REPLY #87063 /* ~That is a mistake.~ */ GOTO 218
END

IF ~~ THEN BEGIN 191 // from: 190.1
  SAY #86973 /* ~What else do you appreciate?~ [OH86973] */
  IF ~~ THEN REPLY #87064 /* ~How many days do you have? This could take a while.~ */ GOTO 195
  IF ~~ THEN REPLY #87065 /* ~A comfortable silence. Let's have one now.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 192 // from: 170.0
  SAY #86974 /* ~I could distract you, if you'd like.~ [OH86974] */
  IF ~~ THEN REPLY #87066 /* ~How would you do that?~ */ GOTO 173
  IF ~~ THEN REPLY #87067 /* ~I'm pretty focused right now. What would you do to change that?~ */ GOTO 199
  IF ~~ THEN REPLY #87068 /* ~I don't.~ */ GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.2 183.0 182.0 170.2
  SAY #86975 /* ~That's a pity. I did have something on my mind.~ [OH86975] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 194 // from: 173.2
  SAY #86976 /* ~You know other ladies? I'm jealous.~ [OH86976] */
  IF ~~ THEN REPLY #87069 /* ~You've nothing to be jealous of. They cannot hold a candle to you.~ */ GOTO 195
  IF ~~ THEN REPLY #87070 /* ~They mean nothing to me.~ */ GOTO 219
  IF ~~ THEN REPLY #87071 /* ~I find that hard to believe.~ */ GOTO 187
END

IF ~~ THEN BEGIN 195 // from: 220.1 219.1 194.0 191.0 179.0
  SAY #86977 /* ~You flatter me.~ [OH86977] */
  IF ~~ THEN REPLY #87072 /* ~I only speak the truth.~ */ GOTO 213
  IF ~~ THEN REPLY #87073 /* ~You're used to it, surely.~ */ GOTO 196
  IF ~~ THEN REPLY #87074 /* ~You like it.~ */ GOTO 222
END

IF ~~ THEN BEGIN 196 // from: 195.1
  SAY #86978 /* ~Some things never get old.~ [OH86978] */
  IF ~~ THEN REPLY #87075 /* ~Things that matter never lose their shine.~ */ GOTO 223
  IF ~~ THEN REPLY #87076 /* ~You among them.~ */ GOTO 198
  IF ~~ THEN REPLY #87077 /* ~A shame this conversation isn't one of them.~ */ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 223.2 196.2
  SAY #86979 /* ~You know, if you could kill men as easily as you can kill a moment, no army could stand against you.~ [OH86979] */
  IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 227.0 219.2 215.2 214.0 212.2 209.2 209.1 207.0 199.2 197.0 196.1 187.0 180.2 179.2 176.2
  SAY #86980 /* ~You'll never know what you just lost, <CHARNAME>.~ [OH86980] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 199 // from: 192.1 175.0 174.1
  SAY #86981 /* ~For you? Anything. Anything you want.~ [OH86981] */
  IF ~~ THEN REPLY #87078 /* ~Show me.~ */ GOTO 200
  IF ~~ THEN REPLY #87079 /* ~There are men who'd die to hear you speak that lie to them.~ */ GOTO 187
  IF ~~ THEN REPLY #87080 /* ~Then begone. I have no use for you.~ */ GOTO 198
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #86982 /* ~Gladly.~ [OH86982] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 201 // from: 179.1
  SAY #86983 /* ~I... believe you. Hm. That's new.~ [OH86983] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 202 // from: 183.1 182.1
  SAY #86984 /* ~Let's.~ [OH86984] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 203 // from: 226.0
  SAY #86985 /* ~If you change your mind, you know where to find me... but that won't always be the case.~ [OH86985] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 221.0 212.1 184.1
  SAY #86986 /* ~Use your imagination.~ [OH86986] */
  IF ~~ THEN REPLY #87081 /* ~I'll use more than my imagination.~ */ GOTO 206
  IF ~~ THEN REPLY #87082 /* ~All right. Come here a moment. I want to show you something I just imagined.~ */ GOTO 205
  IF ~~ THEN REPLY #87083 /* ~I don't want to imagine things. I want to hold them. To touch, to feel them, to know that they are real and they are mine.~ */ GOTO 207
END

IF ~~ THEN BEGIN 205 // from: 204.1
  SAY #86987 /* ~Some dreams do come true.~ [OH86987] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 206 // from: 204.0
  SAY #86988 /* ~Heh. I'll hold you to that.~ [OH86988] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 207 // from: 204.2
  SAY #86989 /* ~I belong to no one but myself.~ [OH86989] */
  IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 208 // from: 184.0
  SAY #86990 /* ~Let's see what you've got, <CHARNAME>.~ [OH86990] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 209 // from: 212.0 185.1
  SAY #86991 /* ~Let's find out.~ [OH86991] */
  IF ~~ THEN REPLY #87084 /* ~Let's.~ */ DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #87085 /* ~Let's not. At least not now.~ */ GOTO 198
  IF ~~ THEN REPLY #87086 /* ~In your dreams, vampire.~ */ GOTO 198
END

IF ~~ THEN BEGIN 210 // from: 187.1
  SAY #86992 /* ~You have me there.~ [OH86992] */
  IF ~~ THEN REPLY #87087 /* ~Not the way I would like to.~ */ GOTO 172
  IF ~~ THEN REPLY #87088 /* ~That's just one of the places I'd like to have you.~ */ GOTO 211
  IF ~~ THEN REPLY #87089 /* ~I've seen what happens to those won over by your charms. I'll not be one of them.~ */ GOTO 226
END

IF ~~ THEN BEGIN 211 // from: 210.1
  SAY #86993 /* ~Oh, darling, no. No.~ [OH86993] */
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 212 // from: 185.0 181.2
  SAY #86994 /* ~I could pull your strings, if you'd like.~ [OH86994] */
  IF ~~ THEN REPLY #87090 /* ~I'm not sure that's a good idea.~ */ GOTO 209
  IF ~~ THEN REPLY #87091 /* ~And what would that entail?~ */ GOTO 204
  IF ~~ THEN REPLY #87092 /* ~No one pulls my strings, vampire.~ */ GOTO 198
END

IF ~~ THEN BEGIN 213 // from: 222.0 215.1 195.0
  SAY #86995 /* ~Come with me, <CHARNAME>. Let's find someplace private.~ [OH86995] */
  IF ~~ THEN REPLY #87084 /* ~Let's.~ */ DO ~RestPartyEx(0,0,FALSE)
~ EXIT
  IF ~~ THEN REPLY #87093 /* ~Some other time.~ */ GOTO 214
  IF ~~ THEN REPLY #87094 /* ~When I say so, Hexxat. And only when I say so.~ */ GOTO 227
END

IF ~~ THEN BEGIN 214 // from: 213.1
  SAY #86996 /* ~Some other—?~ [OH86996] */
  IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 215 // from: 225.0 224.0 190.0
  SAY #86997 /* ~Trust isn't something that comes easily to me.~ [OH86997] */
  IF ~~ THEN REPLY #87095 /* ~I appreciate that. I'm happy you feel I'm worthy of trust.~ */ GOTO 216
  IF ~~ THEN REPLY #87096 /* ~Nor to me. That just makes it more valuable when it's finally found.~ */ GOTO 213
  IF ~~ THEN REPLY #87097 /* ~Keep it, then. I've no use for it.~ */ GOTO 198
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #97360 /* ~Do not disappoint me.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 217 // from: 188.0
  SAY #86998 /* ~I'll get over it. But I wasn't lying.~ [OH86998] */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 218 // from: 190.2
  SAY #86999 /* ~It's not the worst I've made.~ [OH86999] */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 219 // from: 194.1
  SAY #87000 /* ~And I am different?~ [OH87000] */
  IF ~~ THEN REPLY #87098 /* ~You know you are.~ */ GOTO 220
  IF ~~ THEN REPLY #87099 /* ~Vastly. You are unique—truly an amazing creature.~ */ GOTO 195
  IF ~~ THEN REPLY #87100 /* ~Not at all.~ */ GOTO 198
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #87001 /* ~Tell me how.~ [OH87001] */
  IF ~~ THEN REPLY #87101 /* ~I don't know how.~ */ GOTO 221
  IF ~~ THEN REPLY #87102 /* ~How many days do you have? This could take a while.~ */ GOTO 195
  IF ~~ THEN REPLY #87103 /* ~Perhaps I will, someday. I don't dance for your enjoyment, Hexxat. I'm no puppet.~ */ GOTO 185
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #87002 /* ~Find a way, <CHARNAME>.~ [OH87002] */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 222 // from: 195.2
  SAY #87003 /* ~From you, I do.~ [OH87003] */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 223 // from: 196.0
  SAY #87004 /* ~And what matters to you, <CHARNAME>?~ [OH87004] */
  IF ~~ THEN REPLY #87104 /* ~I think you know.~ */ GOTO 224
  IF ~~ THEN REPLY #87105 /* ~Many things. Fortune. Glory. You.~ */ GOTO 225
  IF ~~ THEN REPLY #87106 /* ~Right now? Ending this interminable conversation.~ */ GOTO 197
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #87005 /* ~I think I do. I don't know what to say, <CHARNAME>...~ [OH87005] */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 225 // from: 223.1
  SAY #87006 /* ~I don't know what to say, <CHARNAME>...~ [OH87006] */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 226 // from: 210.2
  SAY #87007 /* ~If you say so.~ [OH87007] */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 227 // from: 213.2
  SAY #87008 /* ~Oh, darling. You've just made a terrible mistake.~ [OH87008] */
  IF ~~ THEN GOTO 198
END

IF WEIGHT #20 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_HexxatMotherTalk","GLOBAL",2)
~ THEN BEGIN 228 // from:
  SAY #97026 /* ~You never knew your mother, did you, <CHARNAME>? ~ */
  IF ~~ THEN REPLY #97219 /* ~No. I didn't.~ */ DO ~IncrementGlobal("OHH_HexxatMotherTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 230
  IF ~~ THEN REPLY #97220 /* ~That's a rather personal question.~ */ DO ~IncrementGlobal("OHH_HexxatMotherTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 229
  IF ~~ THEN REPLY #97221 /* ~I dreamed about her once, but that's about it.~ */ DO ~IncrementGlobal("OHH_HexxatMotherTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.1
  SAY #97027 /* ~We are friends now, are we not?~ */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0 228.2 228.0
  SAY #97028 /* ~Would you have wanted to know her, if you could? ~ */
  IF ~~ THEN REPLY #97222 /* ~It's not something I've thought about. I had Imoen and Gorion.~ */ GOTO 231
  IF ~~ THEN REPLY #97223 /* ~It would be nice to have known her, sure, but... that's life.~ */ GOTO 232
  IF ~~ THEN REPLY #97224 /* ~She slept with Bhaal. I think I know her well enough.~ */ GOTO 233
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #97029 /* ~And I had my aunts, but I do sometimes wonder.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 232 // from: 230.1
  SAY #97030 /* ~It is. ~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 233 // from: 230.2
  SAY #97031 /* ~You are too quick to judge. You don't know the circumstances that led her to that. She may not have had a choice.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0 232.0 231.0
  SAY #97032 /* ~Do you think if you had known her, things would be different? That your life might have taken a very different turn?~ */
  IF ~~ THEN REPLY #97225 /* ~I see no point in worrying about what might have been. I am who I am. ~ */ GOTO 235
  IF ~~ THEN REPLY #97226 /* ~Maybe, maybe not. I don't know and I can't find out, so...~ */ GOTO 235
  IF ~~ THEN REPLY #97227 /* ~Of course I'd be different, but I wouldn't be... me.~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.2 234.1 234.0
  SAY #97033 /* ~It occurred to me after we left Shou Lung... Being raised by someone other than your parents leaves a mark on a person. ~ */
  IF ~~ THEN REPLY #97228 /* ~It makes us stronger.~ */ GOTO 236
  IF ~~ THEN REPLY #97229 /* ~I've never worried about not having parents, and I'll not start now.~ */ GOTO 237
  IF ~~ THEN REPLY #97230 /* ~At least you knew your mother, Hexxat. ~ */ GOTO 238
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #97034 /* ~An interesting perspective—one I'm not sure I share.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from: 235.1
  SAY #97035 /* ~You're right, of course. The past is the past.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 238 // from: 235.2
  SAY #97036 /* ~Few people knew my mother, <CHARNAME>. Least of all me. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #21 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_BodhiDeadTalk","GLOBAL",2)
~ THEN BEGIN 239 // from:
  SAY #97037 /* ~So. Bodhi is dead.~ */
  IF ~~ THEN REPLY #97231 /* ~Very.~ */ DO ~IncrementGlobal("OHH_BodhiDeadTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 240
  IF ~~ THEN REPLY #97232 /* ~Couldn't have happened to a nicer person. Wait, yes it could. It'd almost have to.~ */ DO ~IncrementGlobal("OHH_BodhiDeadTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 241
  IF ~~ THEN REPLY #97233 /* ~Thank the gods. ~ */ DO ~IncrementGlobal("OHH_BodhiDeadTalk","GLOBAL",1)
RealSetGlobalTimer("HexxatLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 242
END

IF ~~ THEN BEGIN 240 // from: 242.0 241.0 239.0
  SAY #97038 /* ~How did it feel, ending her existence? Did you enjoy the thrill of power as she lay below you, defenseless?~ */
  IF ~~ THEN REPLY #97234 /* ~After what she did to Imoen, to me? It felt good. That's how it felt.~ */ GOTO 244
  IF ~~ THEN REPLY #97235 /* ~She was another enemy to be destroyed. Nothing more.~ */ GOTO 243
  IF ~~ THEN REPLY #97236 /* ~Feeling a little nervous, are you, vampire?~ */ GOTO 244
END

IF ~~ THEN BEGIN 241 // from: 239.1
  SAY #97039 /* ~I'm curious about something.~ */
  IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 242 // from: 239.2
  SAY #97040 /* ~The gods had very little to do with it. Your hand wielded the stake.~ */
  IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 243 // from: 240.1
  SAY #97041 /* ~Is that so?~ */
  IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 243.0 240.2 240.0
  SAY #97042 /* ~Not all vampires are inherently evil. Nor do we all thirst for your blood.~ */
  IF ~~ THEN REPLY #97237 /* ~Bodhi got what she deserved. ~ */ GOTO 245
  IF ~~ THEN REPLY #97238 /* ~You don't thirst for my blood? I'm hurt.~ */ GOTO 246
  IF ~~ THEN REPLY #97239 /* ~You are literally the only vampire I've met who hasn't tried to kill me. Yet. ~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 244.0
  SAY #97043 /* ~I don't dispute it. She needed to be put down, absolutely. It did get me thinking, though.~ */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 246 // from: 244.1
  SAY #97044 /* ~You'll get over it, I'm sure.~ */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247 // from: 246.0 245.0 244.2
  SAY #97045 /* ~It would be so easy for you to end me. A quick shove, and what amounts to my life is over.~ */
  IF ~~ THEN REPLY #97240 /* ~Why would you say this to me?~ */ GOTO 248
  IF ~~ THEN REPLY #97241 /* ~If you stop and think about it, that can be said for most anyone.~ */ GOTO 249
  IF ~~ THEN REPLY #97242 /* ~You could end me just as easily.~ */ GOTO 249
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #97046 /* ~I think you know.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 249 // from: 247.2 247.1
  SAY #97047 /* ~An excellent point. One you'd do well to remember.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 250 // from:
  SAY #100140 /* ~My intentions?~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 332
END

IF ~~ THEN BEGIN 251 // from:
  SAY #100142 /* ~I may touch more than that, if she desires it.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 333
END

IF ~~ THEN BEGIN 252 // from:
  SAY #100144 /* ~It would seem the lady has made her choice.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 335
END

IF ~~ THEN BEGIN 253 // from:
  SAY #100146 /* ~You disappoint me, <CHARNAME>. But I am used to disappointment. If you would be with him, far be it from me to stand in your way.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 336
END

IF ~~ THEN BEGIN 254 // from:
  SAY #100148 /* ~Fare thee well, Anomen. It's been a pleasure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 255 // from:
  SAY #100149 /* ~Whatever it is, I hope it makes you happy.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 336
END

IF ~~ THEN BEGIN 256 // from:
  SAY #100157 /* ~You're hardly my type, Dorn.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 821
END

IF ~~ THEN BEGIN 257 // from:
  SAY #100159 /* ~You think she is something to be possessed?~ */
  IF ~~ THEN EXTERN ~DORNJ~ 822
END

IF ~~ THEN BEGIN 258 // from:
  SAY #100161 /* ~Your loss.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 259 // from:
  SAY #100164 /* ~It may happen. Someday. But that day will be a long time coming, half-orc. I doubt you'll live to see it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 260 // from:
  SAY #100167 /* ~I'm surprised, <CHARNAME>. I never took you for the suicidal type.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY #98218 /* ~I've heard worse poetry in my time.~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 262 // from:
  SAY #98244 /* ~I'll take your words for what they're worth.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #98248 /* ~They really don't. I certainly don't.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 29
END

IF ~~ THEN BEGIN 264 // from:
  SAY #98250 /* ~It's your passion I'm denying.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 30
END

IF ~~ THEN BEGIN 265 // from:
  SAY #98252 /* ~Your blood, pouring down my throat...~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 31
END

IF ~~ THEN BEGIN 266 // from:
  SAY #98254 /* ~You are right, Salvanas. This was meant to be. I would drink you dry and feel your heat inside of me.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 32
END

IF ~~ THEN BEGIN 267 // from:
  SAY #98256 /* ~Of course. Let me show you the metaphorical fangs I'd use to pierce your throat.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 33
END

IF ~~ THEN BEGIN 268 // from:
  SAY #98258 /* ~I can kill much more than that. Would you like to see?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 34
END

IF ~~ THEN BEGIN 269 // from: 611.9 610.9 609.9 608.9
  SAY #98234 /* ~You're a liar or a fool, Bodhi. You knew <CHARNAME> would come for you. If you didn't do everything in your power to keep <PRO_HIMHER> from reaching you, you deserve what you're about to get.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
END

IF ~~ THEN BEGIN 270 // from:
  SAY #98220 /* ~You always take me to such interesting places.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~IMOEN2J~ 10
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~AERIEJ~ 131
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~EDWINJ~ 95
  IF ~  Global("OHR_rinthell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rinthell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 313
  IF ~  Global("OHD_dinthell","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dinthell","GLOBAL",1)
~ EXTERN ~DORNJ~ 17
END

IF ~~ THEN BEGIN 271 // from:
  SAY #98221 /* ~It's over, Irenicus. Accept your fate with grace—or don't. It matters little enough, in the end.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 314
  IF ~  Global("OHD_dintirenicushell","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell","GLOBAL",1)
~ EXTERN ~DORNJ~ 18
END

IF ~~ THEN BEGIN 272 // from:
  SAY #98221 /* ~It's over, Irenicus. Accept your fate with grace—or don't. It matters little enough, in the end.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell2","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell2","GLOBAL",1)
~ EXTERN ~RASAADJ~ 315
  IF ~  Global("OHD_dintirenicushell2","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell2","GLOBAL",1)
~ EXTERN ~DORNJ~ 19
END

IF ~~ THEN BEGIN 273 // from:
  SAY #98221 /* ~It's over, Irenicus. Accept your fate with grace—or don't. It matters little enough, in the end.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell3","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell3","GLOBAL",1)
~ EXTERN ~RASAADJ~ 316
  IF ~  Global("OHD_dintirenicushell3","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell3","GLOBAL",1)
~ EXTERN ~DORNJ~ 20
END

IF ~~ THEN BEGIN 274 // from:
  SAY #98221 /* ~It's over, Irenicus. Accept your fate with grace—or don't. It matters little enough, in the end.~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,MALE)
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
Gender(Player1,FEMALE)
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell4","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell4","GLOBAL",1)
~ EXTERN ~RASAADJ~ 317
  IF ~  Global("OHD_dintirenicushell4","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dintirenicushell4","GLOBAL",1)
~ EXTERN ~DORNJ~ 21
END

IF ~~ THEN BEGIN 275 // from:
  SAY #98227 /* ~I know your loss too well, <CHARNAME>. And for what it's worth, the only life I plan to see lost this day is Irenicus's.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
END

IF ~~ THEN BEGIN 276 // from:
  SAY #98228 /* ~It is good to see your humor is unaffected by your loss, <CHARNAME>. Fear not. I'd hardly sully this body with your miserable excuse of a soul.~ */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #98229 /* ~Shall we stand around trading more barbs, or go do this thing?~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
END

IF ~~ THEN BEGIN 278 // from:
  SAY #98222 /* ~Shut your mouth, <CHARNAME>.~ */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.0
  SAY #98223 /* ~I'll not hear platitudes and rationalizations, not now, not after we've been through so much together.~ */
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #98224 /* ~You need to be whole once again. I'd be a hypocrite to try and stand in your way, and worse than that if I didn't try to help you.~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #98225 /* ~I will see you made whole, whatever the cost. Let us do this, now.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 58
  IF ~  InParty("Dorn")
IsValidForPartyDialogue("Dorn")
InMyArea("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 59
END

IF ~~ THEN BEGIN 282 // from:
  SAY #98233 /* ~The mage is dead. That's not nothing, but it's only tangentially related to what we truly sought here. <CHARNAME>? How do you feel?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 283 // from:
  SAY #98260 /* ~<CHARNAME>? Are you all right? Do you need some time to rest?~ */
  IF ~~ THEN REPLY #98264 /* ~Don't worry about me. I'm fine.~ */ GOTO 286
  IF ~~ THEN REPLY #98265 /* ~Something's wrong. I don't feel—right. It's like—I'm losing control.~ */ GOTO 285
  IF ~~ THEN REPLY #98266 /* ~I'll rest when I'm dead. Or possibly when all my enemies are dead. Whichever comes first.~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.2
  SAY #98261 /* ~You think you'll get to rest when you're dead, <CHARNAME>? I don't know who put that idea in your head, but I'd not put too much stock in it if I were you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 285 // from: 283.1
  SAY #98262 /* ~I know the feeling well enough—the thirst can become overwhelming sometimes. These are things we must endure, as best we can.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 286 // from: 283.0
  SAY #98263 /* ~Your tone is far from reassuring, <CHARNAME>. But I'll do as you ask.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #98267 /* ~That was an... impressive display. If you should see fit to repeat the performance, <CHARNAME>, a little more warning would be appreciated.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 288 // from:
  SAY #98268 /* ~<CHARNAME>, what is it?~ */
  IF ~~ THEN REPLY #98270 /* ~Stay away from me, Hexxat. Something's wrong.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",92)
~ GOTO 289
  IF ~~ THEN REPLY #98271 /* ~I'm losing control again. Get back, quickly, before I do something we'll regret!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",92)
~ GOTO 289
  IF ~~ THEN REPLY #98272 /* ~Nothing good. Get away from me.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",92)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 288.2 288.1 288.0
  SAY #98269 /* ~I don't understand. What are you trying to say? <CHARNAME>? <CHARNAME>...?~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #98273 /* ~Tell me, <CHARNAME>. What part of "a little more warning would be appreciated" did you fail to understand?~ */
  IF ~~ THEN REPLY #98276 /* ~I cannot control myself any longer, Hexxat. I should go—it's not safe for you to be around me.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 291
  IF ~~ THEN REPLY #98277 /* ~I tried to say something, but I couldn't speak. I'm sorry. You should leave now, before I endanger you again.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 291
  IF ~~ THEN REPLY #98278 /* ~If you walk with the Bhaalspawn, you'd best get used to the Slayer.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 292
END

IF ~~ THEN BEGIN 291 // from: 290.1 290.0
  SAY #98274 /* ~You choose a fine time to start worrying about endangering me, <CHARNAME>. I'll not leave you—not yet. Our business is not yet done.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 292 // from: 290.2
  SAY #98275 /* ~That is not something I want to get used to. Let's just move on.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 293 // from:
  SAY #98316 /* ~That is no business of yours.~ [OH98316] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 32
END

IF ~~ THEN BEGIN 294 // from:
  SAY #98318 /* ~A pity I am not mortal then—for you.~ [OH98318] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 33
END

IF ~~ THEN BEGIN 295 // from:
  SAY #102339 /* ~And is it, Shadow Thief?~ */
  IF ~~ THEN EXTERN ~ARAN~ 113
END

IF ~~ THEN BEGIN 296 // from:
  SAY #102354 /* ~<CHARNAME> speaks truly. I have no affiliations with those you speak of. My interests are my own. I am no threat to you.~ */
  IF ~~ THEN EXTERN ~ARAN~ 118
END

IF ~~ THEN BEGIN 297 // from:
  SAY #102359 /* ~That's it, then? I had expected something more somehow. Very well. If you need my services, <CHARNAME>, you can find me at the Coronet. Perhaps I'll even deign to help you.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXTERN ~ARAN~ 119
END

IF ~~ THEN BEGIN 298 // from:
  SAY #102365 /* ~If only it were so simple for everyone.~ */
  IF ~~ THEN DO ~SetGlobal("tannerplot2","GLOBAL",5)
~ EXTERN ~TRSKIN01~ 19
END

IF ~~ THEN BEGIN 299 // from:
  SAY #102366 /* ~This man's mind is not his own. He is being controlled.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 26
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN GOTO 301
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 25
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN GOTO 300
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 24
END

IF ~~ THEN BEGIN 300 // from: 299.8
  SAY #102368 /* ~Yes. I would. Your point?~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 26
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN GOTO 301
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 25
END

IF ~~ THEN BEGIN 301 // from: 300.6 299.6
  SAY #102370 /* ~To you, perhaps, but I would hear you say it.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 133
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 292
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 172
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 172
  IF ~  IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 26
END

IF ~~ THEN BEGIN 302 // from:
  SAY #102372 /* ~<CHARNAME>! She is not what she seems. Show us your true form, woman.~ */
  IF ~~ THEN EXTERN ~TRRAK01~ 3
END

IF ~~ THEN BEGIN 303 // from:
  SAY #102373 /* ~I know your pain. Believe me. ~ */
  IF ~~ THEN EXTERN ~HLSKULL~ 5
END

IF ~~ THEN BEGIN 304 // from:
  SAY #102376 /* ~I owe <CHARNAME> my life. I will not betray <PRO_HIMHER>, nor your quest.~ */
  IF ~~ THEN EXTERN ~C6WARSA1~ 9
END

IF ~~ THEN BEGIN 305 // from:
  SAY #102379 /* ~Are we finished, then?~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 90
  IF ~  InParty("viconia")
!Dead("viconia")
~ THEN EXTERN ~C6ELHAN2~ 91
END

IF WEIGHT #22 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_cloakmissing","OH7000",2)
~ THEN BEGIN 306 // from: 332.1 332.0 329.1 326.0 321.1 321.0
  SAY #81796 /* ~Ah! It feels like I'm wearing a wet rug and is nowhere near as fetching.~ [OH81796] */
  IF ~~ THEN REPLY #81797 /* ~What's the matter?~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ GOTO 307
  IF ~~ THEN REPLY #81798 /* ~You're right about that.~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ GOTO 314
  IF ~~ THEN REPLY #81800 /* ~I'm sorry to hear that.~ */ DO ~TakePartyItem("ohhcloak")
SetGlobal("OHH_cloakmissing","OH7000",3)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84958 /* ~Hexxat has donned Dragomir's cloak. While it makes her uncomfortable from both a physical and aesthetic standpoint, it will allow her to travel during daylight.~ */ EXIT
END

IF ~~ THEN BEGIN 307 // from: 314.0 306.0
  SAY #81801 /* ~Nothing... It's nothing. For a moment, I felt—different. The protection spells were rougher than I expected.~ [OH81801] */
  IF ~~ THEN REPLY #81802 /* ~So you're all right?~ */ GOTO 308
  IF ~~ THEN REPLY #81803 /* ~Protection spells that hurt the wearer. Dragomir had a... unique perspective, didn't he?~ */ GOTO 308
  IF ~~ THEN REPLY #81804 /* ~Good.~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 315.0 314.1 307.1 307.0
  SAY #81805 /* ~Fine. I'm fine. There's business I must attend to. Meet me at the Coronet in two hours.~ [OH81805] */
  IF ~~ THEN REPLY #81806 /* ~Is that a good idea? Perhaps you should stick with me for the time being.~ */ GOTO 309
  IF ~~ THEN REPLY #81807 /* ~That's it? You get the cloak and you leave?~ */ GOTO 310
  IF ~~ THEN REPLY #81808 /* ~You're not going anywhere, vampire.~ */ GOTO 311
END

IF ~~ THEN BEGIN 309 // from: 317.0 316.0 308.0
  SAY #81809 /* ~You're right. If L's waited this long, another few hours won't hurt him.~ [OH81809] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from: 317.1 316.1 308.1
  SAY #81810 /* ~That's it.~ [OH81810] */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
LeaveParty()
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 311 // from: 317.2 316.2 308.2
  SAY #81811 /* ~And how do you think you'll stop me, <PRO_RACE>?~ [OH81811] */
  IF ~~ THEN REPLY #81812 /* ~By appealing to your survival instinct. You're new to this undead life of yours. Until you're more familiar with your abilities, you should keep yourself surrounded by those you can trust.~ */ GOTO 313
  IF ~~ THEN REPLY #81813 /* ~I'll ask. REALLY. NICELY. Please don't go yet. You've just woken up after years of slumber. You shouldn't be alone right now.~ */ GOTO 312
  IF ~~ THEN REPLY #81814 /* ~Any way I can. I've made an investment in you. You'll stay with me until it's paid off.~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 313.0 311.2 311.1
  SAY #81815 /* ~All right. L's waited this long to hear from me; another few hours won't kill him.~ [OH81815] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 313 // from: 311.0
  SAY #81816 /* ~You think I can trust you, then?~ [OH81816] */
  IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 314 // from: 306.1
  SAY #81817 /* ~I am?~ [OH81817] */
  IF ~~ THEN REPLY #81818 /* ~I was joking. What's the problem?~ */ GOTO 307
  IF ~~ THEN REPLY #81819 /* ~Don't worry. You manage to pull it off. Are you all right?~ */ GOTO 308
  IF ~~ THEN REPLY #81820 /* ~You've more important things to worry about than your looks.~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.2
  SAY #85110 /* ~I can worry about more than one thing at a time.~ [OH85110] */
  IF ~~ THEN REPLY #85111 /* ~I'm sure. Are you all right?~ */ GOTO 308
  IF ~~ THEN REPLY #85112 /* ~Let me rephrase that: You will never have to worry about your looks.~ */ GOTO 316
  IF ~~ THEN REPLY #85113 /* ~Then worry about two things of consequence.~ */ GOTO 317
END

IF ~~ THEN BEGIN 316 // from: 315.1
  SAY #85114 /* ~A flattering tongue will get you everywhere, <CHARNAME>. Now. There's business I must attend to. Meet me at the Coronet in two hours. ~ [OH85114] */
  IF ~~ THEN REPLY #85115 /* ~Is that a good idea? Perhaps you should stick with me for the time being.~ */ GOTO 309
  IF ~~ THEN REPLY #85116 /* ~That's it? You get the cloak and you leave?~ */ GOTO 310
  IF ~~ THEN REPLY #81808 /* ~You're not going anywhere, vampire.~ */ GOTO 311
END

IF ~~ THEN BEGIN 317 // from: 315.2
  SAY #85118 /* ~You're right, <CHARNAME>. I've business to attend to. Meet me back at the Copper Coronet in two hours.~ [OH85118] */
  IF ~~ THEN REPLY #85115 /* ~Is that a good idea? Perhaps you should stick with me for the time being.~ */ GOTO 309
  IF ~~ THEN REPLY #85116 /* ~That's it? You get the cloak and you leave?~ */ GOTO 310
  IF ~~ THEN REPLY #81808 /* ~You're not going anywhere, vampire.~ */ GOTO 311
END

IF WEIGHT #23 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_FALSE_DAWN","OH7000",1)
~ THEN BEGIN 318 // from:
  SAY #81821 /* ~Ah! My eyes! ~ [OH81821] */
  IF ~~ THEN REPLY #81822 /* ~Are you all right?~ */ GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #81823 /* ~I'll survive—more than I could say if I wasn't wearing Dragomir's Cloak. At least I know the rag works now.~ [OH81823] */
  IF ~~ THEN DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ JOURNAL #84959 /* ~A false dawn trap at the entry to Dragomir's crypt caused Hexxat some severe discomfort. Fortunately, she was wearing Dragomir's Cloak. If she wasn't, I suspect she'd be ashes right now.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_FALSE_DAWN","OH7000",2)
~ THEN BEGIN 320 // from:
  SAY #81825 /* ~False dawn trap. If I'd been a fraction slower, it would have killed me.~ [OH81825] */
  IF ~~ THEN REPLY #81826 /* ~Such is the price a vampire pays.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 321
  IF ~~ THEN REPLY #81827 /* ~For an old broad, you're pretty quick.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 324
  IF ~~ THEN REPLY #81828 /* ~A shame you weren't a little slower. It would have saved me a little effort.~ */ DO ~SetGlobal("OHH_FALSE_DAWN","OH7000",3)
~ GOTO 322
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #81829 /* ~I wouldn't have to pay it if you'd given me Dragomir's Cloak.~ [OH81829] */
  IF ~~ THEN REPLY #81830 /* ~I shouldn't be so selfish. Here, take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~~ THEN REPLY #81831 /* ~You're not going to let that one go, are you? Fine, here it is, take it. You're WELCOME.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~~ THEN REPLY #81832 /* ~Get used to paying the price, woman. You're not getting the cloak.~ */ GOTO 323
END

IF ~~ THEN BEGIN 322 // from: 320.2
  SAY #81833 /* ~Killing me will take more than a little effort, <CHARNAME>!~ [OH81833] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 321.2
  SAY #81834 /* ~That's where you're wrong, <PRO_RACE>!~ [OH81834] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 320.1
  SAY #81835 /* ~Old?~ [OH81835] */
  IF ~~ THEN REPLY #81836 /* ~I meant only that you've been trapped down here for a good many years. All things considered, you look fabulous.~ */ GOTO 326
  IF ~~ THEN REPLY #81837 /* ~No, not old. Well-worn. Experienced. Durable.~ */ GOTO 325
  IF ~~ THEN REPLY #81838 /* ~What else could I call it?~ */ GOTO 328
END

IF ~~ THEN BEGIN 325 // from: 326.2 324.1
  SAY #81839 /* ~Shut up.~ [OH81839] */
  IF ~~ THEN REPLY #81840 /* ~Gladly.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 326 // from: 324.0
  SAY #81841 /* ~I wouldn't need to worry about the false dawn if I had Dragomir's cloak.~ [OH81841] */
  IF ~~ THEN REPLY #81842 /* ~Here, then. Take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~  CheckStatLT(Player1,15,STR)
~ THEN REPLY #81843 /* ~I wouldn't have needed to worry about an insane vampire trying to kill me if you hadn't brought me here. Life is a series of challenges.~ */ GOTO 329
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #81843 /* ~I wouldn't have needed to worry about an insane vampire trying to kill me if you hadn't brought me here. Life is a series of challenges.~ */ GOTO 325
  IF ~~ THEN REPLY #81844 /* ~It's unfortunate that you don't have it, then.~ */ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.3
  SAY #81845 /* ~Not as unfortunate as it's about to become for you.~ [OH81845] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 324.2
  SAY #81846 /* ~I'd not mention it at all, and I suggest you do the same.~ [OH81846] */
  IF ~~ THEN REPLY #81847 /* ~As you wish.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
  IF ~~ THEN REPLY #81848 /* ~Mention what? I mention nothing. NOTHING.~ */ DO ~SetGlobal("OHH_contactedL","GLOBAL",1)
RealSetGlobalTimer("OHH_hexxatcoronettimer","GLOBAL",FOUR_HOURS)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
  IF ~~ THEN REPLY #81849 /* ~Feeling your age, Hexxat?~ */ GOTO 332
END

IF ~~ THEN BEGIN 329 // from: 326.1
  SAY #81850 /* ~Hand it over, <PRO_RACE>. This is your last chance.~ [OH81850] */
  IF ~~ THEN REPLY #81851 /* ~I dislike ultimatums.~ */ GOTO 330
  IF ~~ THEN REPLY #81852 /* ~Ah, the hell with you. Take it.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~~ THEN REPLY #81853 /* ~You know what this is? This is me squandering my last chance. What are you going to do about it?~ */ GOTO 331
END

IF ~~ THEN BEGIN 330 // from: 329.0
  SAY #81854 /* ~Perhaps death will be more to your liking!~ [OH81854] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 329.2
  SAY #81855 /* ~I'll show you!~ [OH81855] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 328.2
  SAY #81856 /* ~I'll feel your blood pouring down my throat if you don't give me Dragomir's Cloak.~ [OH81856] */
  IF ~~ THEN REPLY #81857 /* ~It's yours. The smell was beginning to get to me anyway.~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~~ THEN REPLY #81858 /* ~Here, take it. You could've just said please, you know. ~ */ JOURNAL #84960 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which I've now given to her.~ */ GOTO 306
  IF ~~ THEN REPLY #81859 /* ~Try it, witch.~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.2
  SAY #81860 /* ~Die!~ [OH81860] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
EraseJournalEntry(84955)
~ SOLVED_JOURNAL #84961 /* ~A false dawn trap at the entrance to Dragomir's Tomb left Hexxat in dire straits. She would have been less affected if she had Dragomir's Cloak, which she demanded I give her. I gave her something else instead—now she has nothing to fear from the sun, or indeed anything at all.~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_dragorespite","GLOBAL",2)
~ THEN BEGIN 334 // from:
  SAY #81931 /* ~I've a favor I must ask you, <CHARNAME>.~ [OH81931] */
  IF ~~ THEN REPLY #81932 /* ~Of course, Hexxat.~ */ GOTO 336
  IF ~~ THEN REPLY #81933 /* ~I've been expecting this. Look, Hexxat, you're lovely, in a faintly terrifying way, and I like you very much—as a friend. What I'm saying is, I'm sorry, but I'm not really interested.~ */ GOTO 335
  IF ~~ THEN REPLY #81934 /* ~I think you grow too comfortable asking things of me, Hexxat.~ */ GOTO 337
END

IF ~~ THEN BEGIN 335 // from: 334.1
  SAY #81935 /* ~Are you quite finished? Good.~ [OH81935] */
  IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 336 // from: 337.0 335.0 334.0
  SAY #81936 /* ~I need you to hold on to this for me.~ [OH81936] */
  IF ~~ THEN REPLY #81937 /* ~What is it?~ */ GOTO 338
  IF ~~ THEN REPLY #81938 /* ~A sack? Why?~ */ GOTO 338
  IF ~~ THEN REPLY #81939 /* ~Hold onto it yourself.~ */ GOTO 338
END

IF ~~ THEN BEGIN 337 // from: 334.2
  SAY #81940 /* ~This is not something I ask lightly, I assure you.~ [OH81940] */
  IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 338 // from: 336.2 336.1 336.0
  SAY #81941 /* ~This was Dragomir's secret weapon—a way to easily transport his coffin wherever he traveled. It gave him an incalculable advantage in the campaigns he waged. He had his trusted lieutenants hold the bag. In the event that he was struck down, the means of his regeneration would be close at hand.~ [OH81941] */
  IF ~~ THEN REPLY #81942 /* ~And you trust me with it? I'm honored.~ */ GOTO 339
  IF ~~ THEN REPLY #81943 /* ~Ah, I don't know if I'm the right <PRO_MANWOMAN> to be hanging onto that for you...~ */ GOTO 341
  IF ~~ THEN REPLY #81944 /* ~An ingenious device.~ */ GOTO 340
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #81945 /* ~You should be. My life is literally in your hands now.~ [OH81945] */
  IF ~~ THEN DO ~GiveItemCreate("OHHBAG",Player1,1,1,0)
SetGlobal("OHH_dragorespite","GLOBAL",3)
~ JOURNAL #84965 /* ~For all his many failings, Dragomir was an ingenious tactician. He devised a special bag of holding containing a coffin so that his lieutenants could revive him should he fall in battle. Hexxat has entrusted me with the bag to ensure her survival in our adventures together.~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 341.0 338.2
  SAY #81946 /* ~I'm putting my life in your hands here, <CHARNAME>. Don't let me down.~ [OH81946] */
  IF ~~ THEN DO ~GiveItemCreate("OHHBAG",Player1,1,1,0)
SetGlobal("OHH_dragorespite","GLOBAL",3)
~ JOURNAL #84965 /* ~For all his many failings, Dragomir was an ingenious tactician. He devised a special bag of holding containing a coffin so that his lieutenants could revive him should he fall in battle. Hexxat has entrusted me with the bag to ensure her survival in our adventures together.~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 338.1
  SAY #81947 /* ~It's not an ideal arrangement, I'll admit. But my options are limited at the moment.~ [OH81947] */
  IF ~~ THEN GOTO 340
END

IF WEIGHT #26 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_happening","GLOBAL",2)
~ THEN BEGIN 342 // from:
  SAY #95993 /* ~I must speak with you, <CHARNAME>. It involves business.~ [OH95993] */
  IF ~~ THEN REPLY #95999 /* ~What sort of business?~ */ DO ~SetGlobal("OHH_happening","GLOBAL",3)
~ GOTO 343
  IF ~~ THEN REPLY #96000 /* ~Can it wait, Hexxat? I'm busy at the moment.~ */ DO ~SetGlobal("OHH_happening","GLOBAL",3)
~ GOTO 346
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #95994 /* ~My business. While you were busy I made... contact with my old employer. He has instructed me to await orders.~ [OH95994] */
  IF ~~ THEN REPLY #96001 /* ~So what happens now?~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 343.0
  SAY #95995 /* ~I am free to do as I please. Eventually, however, I will be approached by an agent of L. They will have work for me. You can decide then if you're interested.~ [OH95995] */
  IF ~~ THEN REPLY #96003 /* ~Very well.~ */ GOTO 345
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #95996 /* ~What would please me right now is to get moving. Shall we?~ [OH95996] */
  IF ~~ THEN DO ~EraseJournalEntry(84958)
EraseJournalEntry(84955)
~ UNSOLVED_JOURNAL #84964 /* ~Hexxat's request

Hexxat is happy to remain with me, at least until she receives a new assignment from her employer, whom she refers to only as L.~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 342.1
  SAY #95997 /* ~Very well. I shall speak with you tomorrow.~ [OH95997] */
  IF ~~ THEN DO ~SetGlobal("OHH_happening","GLOBAL",1)
SetGlobalTimer("OHH_happening","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~~ THEN BEGIN 347 // from:
  SAY #82035 /* ~Cabrina. The years have been kind to you.~ [OH82035] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 1
END

IF ~~ THEN BEGIN 348 // from:
  SAY #82042 /* ~Wait, <CHARNAME>. Cabrina's a friend.~ [OH82042] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 2
END

IF ~~ THEN BEGIN 349 // from:
  SAY #82046 /* ~She brings word from my employer, L. At least, I assume she does.~ [OH82046] */
  IF ~~ THEN REPLY #82047 /* ~And you assume that because...?~ */ GOTO 350
  IF ~~ THEN REPLY #82048 /* ~And what is the word from L? Probably too much to hope it'd be "sorry."~ */ EXTERN ~OHHCABRI~ 11
  IF ~~ THEN REPLY #82049 /* ~This L sent you to Dragomir's Tomb. He nearly destroyed you. Why would you care about anything he says?~ */ GOTO 353
  IF ~~ THEN REPLY #82050 /* ~I care nothing for what L has to say, and neither should you.~ */ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.3 349.0
  SAY #82051 /* ~I was given an assignment. I've yet to finish it.~ [OH82051] */
  IF ~  !Global("OHH_contactedL","GLOBAL",1)
~ THEN REPLY #82052 /* ~Leave it unfinished. Nobody would hold that against you.~ */ EXTERN ~OHHCABRI~ 5
  IF ~  Global("OHH_contactedL","GLOBAL",1)
~ THEN REPLY #82052 /* ~Leave it unfinished. Nobody would hold that against you.~ */ EXTERN ~OHHCABRI~ 9
  IF ~~ THEN REPLY #82053 /* ~I don't understand you, Hexxat.~ */ EXTERN ~OHHCABRI~ 15
  IF ~~ THEN REPLY #82054 /* ~Then you'll finish it without my help.~ */ DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("OHHCABRI",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 351 // from:
  SAY #82056 /* ~I trusted word would get to him eventually—and now, here you are.~ [OH82056] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 6
END

IF ~~ THEN BEGIN 352 // from:
  SAY #83912 /* ~What are you doing?~ [OH83912] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 7
END

IF ~~ THEN BEGIN 353 // from: 349.2
  SAY #82059 /* ~I took a job. I'll finish it.~ [OH82059] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 10
END

IF ~~ THEN BEGIN 354 // from:
  SAY #82062 /* ~I wasn't thrilled with it myself.~ [OH82062] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 12
END

IF ~~ THEN BEGIN 355 // from:
  SAY #82064 /* ~I'll just have to prove him wrong.~ [OH82064] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 13
END

IF ~~ THEN BEGIN 356 // from:
  SAY #82070 /* ~What does L want?~ [OH82070] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 16
END

IF ~~ THEN BEGIN 357 // from:
  SAY #82077 /* ~The crypts of Durkon are in Shou Lung.~ [OH82077] */
  IF ~~ THEN REPLY #82080 /* ~Sounds like you've quite a journey ahead of you.~ */ EXTERN ~OHHCABRI~ 18
  IF ~~ THEN REPLY #82081 /* ~I've always wanted to visit Shou Lung.~ */ EXTERN ~OHHCABRI~ 18
  IF ~~ THEN REPLY #82082 /* ~She mocks you, Hexxat. Make her pay for her impertinence.~ */ EXTERN ~OHHCABRI~ 25
END

IF ~~ THEN BEGIN 358 // from:
  SAY #82084 /* ~It will be done.~ [OH82084] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 19
END

IF WEIGHT #27 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("ohh_cabrina_discuss_line","GLOBAL",1)
~ THEN BEGIN 359 // from:
  SAY #83921 /* ~You know she's not going to discuss anything with L, right?~ [OH83921] */
  IF ~~ THEN DO ~SetGlobal("ohh_cabrina_discuss_line","GLOBAL",2)
EraseJournalEntry(84964)
AddJournalEntry(84967,QUEST)
~ JOURNAL #84966 /* ~It seems I will be taking a trip to Shou Lung in the near future—though not to a part of it any sane person would wish to see.~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from:
  SAY #82087 /* ~You'd enjoy it too much.~ [OH82087] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 26
END

IF ~~ THEN BEGIN 361 // from:
  SAY #82089 /* ~I'd rather you join me on this expedition, <CHARNAME>, but you need to know I'll be going with or without you.~ [OH82089] */
  IF ~~ THEN REPLY #82090 /* ~Very well. Where is the scepter?~ */ EXTERN ~OHHCABRI~ 17
  IF ~~ THEN REPLY #82091 /* ~L very nearly got you killed—technically, he did get you killed! How can you now race to do his bidding?~ */ EXTERN ~OHHCABRI~ 15
  IF ~~ THEN REPLY #82092 /* ~Perhaps I'll see you when you return. If you return.~ */ DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("OHHCABRI",EscapeArea())
EscapeArea()
~ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_cabrina","GLOBAL",3)
AreaCheck("AR0800")
~ THEN BEGIN 362 // from:
  SAY #83932 /* ~Dragomir's Casque will allow us to tombwalk to Shou Lung.~ [OH83932] */
  IF ~~ THEN REPLY #83933 /* ~I see you're not anxious to use the Casque.~ */ GOTO 364
  IF ~~ THEN REPLY #83934 /* ~By which you mean, it will walk us into a tomb. Not exactly a part of Shou Lung I'm anxious to experience.~ */ GOTO 363
  IF ~~ THEN REPLY #83935 /* ~And trap us there until we get the Claw of the Black Leopard.~ */ GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.2 362.1
  SAY #83936 /* ~We've a job to do.~ [OH83936] */
  IF ~~ THEN REPLY #83937 /* ~Let's get it done, then.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut09",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83938 /* ~Very well. Let's go check out the dead folk's home.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut09",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83939 /* ~You've a job to do. I'll help you do it... when I'm ready.~ */ GOTO 365
END

IF ~~ THEN BEGIN 364 // from: 362.0
  SAY #83940 /* ~It didn't work out well for me last time.~ [OH83940] */
  IF ~~ THEN REPLY #83941 /* ~All right. Let's go.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut09",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83942 /* ~We'll do this, Hexxat. But not right now.~ */ GOTO 365
  IF ~~ THEN REPLY #83943 /* ~I'm in no rush to explore another tomb.~ */ GOTO 365
END

IF ~~ THEN BEGIN 365 // from: 364.2 364.1 363.2
  SAY #102863 /* ~Speak to me while in the graveyard when you are ready.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_shoureminder","GLOBAL",1)
SetGlobalTimer("OHH_shouremindertimer","GLOBAL",THREE_DAYS)
~ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shoureminder","GLOBAL",2)
Global("OHH_cabrina","GLOBAL",3)
~ THEN BEGIN 366 // from:
  SAY #83922 /* ~<CHARNAME>, when do you expect to return to the Graveyard District? We have business in Shou Lung.~ [OH83922] */
  IF ~~ THEN REPLY #83923 /* ~And I've neglected it too long. Let's take care of it now.~ */ GOTO 370
  IF ~~ THEN REPLY #83924 /* ~And we'll get to it, I assure you. Have patience.~ */ GOTO 368
  IF ~~ THEN REPLY #83925 /* ~You might. I do not.~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.2
  SAY #83926 /* ~I thought we agreed to work together.~ [OH83926] */
  IF ~~ THEN REPLY #83927 /* ~You are right, of course. Let's get this over with.~ */ GOTO 370
  IF ~~ THEN REPLY #83928 /* ~Patience, Hexxat. We'll get to Durkon eventually.~ */ GOTO 368
  IF ~~ THEN REPLY #83929 /* ~If you've a problem with the way I do things, you're free to leave.~ */ GOTO 369
END

IF ~~ THEN BEGIN 368 // from: 367.1 366.1
  SAY #83930 /* ~I've infinite patience. It's L's patience I'm worried about.~ [OH83930] */
  IF ~~ THEN GOTO 370
END

IF ~~ THEN BEGIN 369 // from: 367.2
  SAY #83931 /* ~I'll stay—for now. But I will be going to Shou Lung. And soon.~ [OH83931] */
  IF ~~ THEN GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0 368.0 367.0 366.0
  SAY #102864 /* ~Head to the graveyard and speak to me when you are ready.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_shoureminder","GLOBAL",1)
SetGlobalTimer("OHH_shouremindertimer","GLOBAL",THREE_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 371 // from:
  SAY #82390 /* ~We're not going anywhere until we've got what we came for.~ [OH82390] */
  IF ~~ THEN EXTERN ~OHHGM01~ 2
END

IF ~~ THEN BEGIN 372 // from:
  SAY #82422 /* ~I'm not with them.~ [OH82422] */
  IF ~~ THEN EXTERN ~OHHKENO~ 5
END

IF ~~ THEN BEGIN 373 // from:
  SAY #82515 /* ~We have a deal.~ [OH82515] */
  IF ~~ THEN REPLY #82517 /* ~What I meant to say was, we have a deal.~ */ EXTERN ~OHHKENO~ 11
  IF ~~ THEN REPLY #82520 /* ~Way to undercut my bargaining position.~ */ EXTERN ~OHHKENO~ 11
  IF ~~ THEN REPLY #82522 /* ~You don't speak for me, Hexxat.~ */ GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 373.2
  SAY #82524 /* ~Don't think of it as me speaking for you, <CHARNAME>. Think of it as your passage back to Amn speaking for you.~ [OH82524] */
  IF ~~ THEN EXTERN ~OHHKENO~ 11
END

IF WEIGHT #30 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_postscholarfight","OH7100",1)
~ THEN BEGIN 375 // from:
  SAY #83261 /* ~Nothing like mind flayers to make you appreciate the company of an insane vampire.~ [OH83261] */
  IF ~~ THEN DO ~SetGlobal("OHH_postscholarfight","OH7100",2)
~ GOTO 381
  IF ~  OR(2)
Dead("OHHGM01")
StateCheck("ohhgm01",CD_STATE_NOTVALID)
OR(2)
Dead("OHHGM02")
StateCheck("ohhgm02",CD_STATE_NOTVALID)
!Dead("OHHGM03")
!StateCheck("ohhgm03",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("OHH_postscholarfight","OH7100",2)
~ EXTERN ~OHHGM01~ 9
  IF ~  OR(2)
Dead("OHHGM01")
StateCheck("ohhgm01",CD_STATE_NOTVALID)
!Dead("OHHGM02")
!StateCheck("ohhgm02",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("OHH_postscholarfight","OH7100",2)
~ EXTERN ~OHHGM01~ 9
  IF ~  !Dead("OHHGM01")
!StateCheck("ohhgm01",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("OHH_postscholarfight","OH7100",2)
~ EXTERN ~OHHGM01~ 9
  IF ~  !Dead("ohhkeno")
!StateCheck("ohhkeno",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("OHH_postscholarfight","OH7100",2)
~ EXTERN ~OHHKENO~ 12
END

IF ~~ THEN BEGIN 376 // from:
  SAY #83311 /* ~There'll be time to celebrate later, <CHARNAME>. Keno, where is the scepter?~ [OH83311] */
  IF ~~ THEN EXTERN ~OHHKENO~ 14
  IF ~  OR(3)
!Dead("OHHGM01")
!Dead("OHHGM02")
!Dead("OHHGM03")
~ THEN EXTERN ~OHHGM01~ 8
END

IF ~~ THEN BEGIN 377 // from:
  SAY #83325 /* ~As am I. Now, I believe you agreed to let us go get the Claw of the Black Leopard?~ [OH83325] */
  IF ~~ THEN EXTERN ~OHHKENO~ 14
  IF ~  OR(3)
!Dead("OHHGM01")
!Dead("OHHGM02")
!Dead("OHHGM03")
~ THEN EXTERN ~OHHGM01~ 8
END

IF ~~ THEN BEGIN 378 // from:
  SAY #83339 /* ~There'll be time to celebrate later, <CHARNAME>. Guardians, where is the scepter?~ [OH83339] */
  IF ~~ THEN EXTERN ~OHHGM01~ 10
END

IF ~~ THEN BEGIN 379 // from:
  SAY #83340 /* ~As am I. Now, I believe your leader agreed to let us go get the Claw of the Black Leopard?~ [OH83340] */
  IF ~~ THEN EXTERN ~OHHGM01~ 10
END

IF ~~ THEN BEGIN 380 // from:
  SAY #83341 /* ~Unfortunately, I cannot.~ [OH83341] */
  IF ~~ THEN EXTERN ~OHHGM01~ 11
END

IF ~~ THEN BEGIN 381 // from: 375.0
  SAY #83347 /* ~Is that everyone—and everything—dealt with?~ [OH83347] */
  IF ~~ THEN REPLY #83348 /* ~It would appear so.~ */ GOTO 383
  IF ~  !IsValidForPartyDialogue("imoen2")
~ THEN REPLY #83349 /* ~Not a creature was stirring.~ */ GOTO 382
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN REPLY #83349 /* ~Not a creature was stirring.~ */ EXTERN ~IMOEN2J~ 61
  IF ~~ THEN REPLY #83350 /* ~If you ignore the mind flayers' guts, our path is clear.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 384.0 381.1
  SAY #83355 /* ~Let's hope mind flayers are the worst thing we face in this place.~ [OH83355] */
  IF ~~ THEN DO ~AddJournalEntry(85122,QUEST)
AddJournalEntry(85117,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.3 381.0
  SAY #83356 /* ~Good. Let's find the Leopard's Claw and get out of here.~ [OH83356] */
  IF ~~ THEN DO ~AddJournalEntry(85122,QUEST)
AddJournalEntry(85117,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 384 // from:
  SAY #83353 /* ~Not everything needs to be a challenge.~ [OH83353] */
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN GOTO 382
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 818
END

IF WEIGHT #31 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_mother","OH7100",1)
~ THEN BEGIN 385 // from:
  SAY #83357 /* ~That design...~ [OH83357] */
  IF ~~ THEN REPLY #83358 /* ~Are you all right, Hexxat?~ */ DO ~SetGlobal("OHH_mother","OH7100",2)
~ GOTO 386
  IF ~~ THEN REPLY #83365 /* ~You understand the language?~ */ DO ~SetGlobal("OHH_mother","OH7100",2)
~ GOTO 390
  IF ~~ THEN REPLY #83366 /* ~Do they tell us where to find the Claw of the Black Leopard?~ */ DO ~SetGlobal("OHH_mother","OH7100",2)
~ GOTO 391
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #83367 /* ~I'm—fine. I just... the designs remind me of my mother.~ [OH83367] */
  IF ~~ THEN REPLY #83368 /* ~Tell me about her.~ */ GOTO 389
  IF ~~ THEN REPLY #83369 /* ~You had a mother?~ */ GOTO 387
  IF ~~ THEN REPLY #83370 /* ~Is this really the time for reflection, Hexxat?~ */ GOTO 396
END

IF ~~ THEN BEGIN 387 // from: 386.1
  SAY #83371 /* ~Very droll, <CHARNAME>.~ [OH83371] */
  IF ~~ THEN REPLY #83377 /* ~My apologies, Hexxat. I'm just not used to seeing you look so... exposed.~ */ GOTO 388
  IF ~~ THEN REPLY #83379 /* ~What is it about the design that reminds you of your mother?~ */ GOTO 391
  IF ~~ THEN REPLY #83382 /* ~It's obvious you have something on your mind, but is this really the time and place you want to explore it?~ */ GOTO 396
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #83383 /* ~It's a sensation I could happily do without.~ [OH83383] */
  IF ~~ THEN REPLY #83384 /* ~You were talking about your mother?~ */ GOTO 389
  IF ~~ THEN REPLY #83387 /* ~Let's talk no more about it, then.~ */ GOTO 396
END

IF ~~ THEN BEGIN 389 // from: 393.0 392.1 388.0 386.0
  SAY #83392 /* ~I never knew her—not well. She was a Mazewalker of Ubtao—what they would call a cleric in Amn.~ [OH83392] */
  IF ~  !IsValidForPartyDialogue("imoen2")
~ THEN REPLY #83393 /* ~I never knew mine, either. Imoen and I were raised by a man named Gorion.~ */ GOTO 401
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN REPLY #83393 /* ~I never knew mine, either. Imoen and I were raised by a man named Gorion.~ */ EXTERN ~IMOEN2J~ 62
  IF ~~ THEN REPLY #83394 /* ~Get out. Your mother was a holy woman? What happened to you?~ */ GOTO 397
  IF ~~ THEN REPLY #83395 /* ~You didn't know her? Why not?~ */ GOTO 403
END

IF ~~ THEN BEGIN 390 // from: 385.1
  SAY #83414 /* ~Enough to follow the story it tells.~ [OH83414] */
  IF ~~ THEN REPLY #83415 /* ~What does it say?~ */ GOTO 391
  IF ~~ THEN REPLY #83424 /* ~You're getting distracted by a story? I don't think so. What's really going on here, Hexxat?~ */ GOTO 392
  IF ~~ THEN REPLY #83425 /* ~That's a tale I look forward to hearing—once we're back in Amn.~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 390.0 387.1 385.2
  SAY #83426 /* ~It tells the tale of a woman named Huang Chih-Wei—a healer of some repute in Nan Kung Chi's time. A strong woman, it appears. She would not kneel before the Black Leopard.~ [OH83426] */
  IF ~~ THEN REPLY #83427 /* ~What happened?~ */ GOTO 394
  IF ~~ THEN REPLY #83428 /* ~I think I know how this will end.~ */ GOTO 392
  IF ~~ THEN REPLY #83429 /* ~This is no time for telling stories. Save it till we're back among the living.~ */ GOTO 396
END

IF ~~ THEN BEGIN 392 // from: 395.0 394.1 394.0 391.1 390.1
  SAY #83430 /* ~Did I ever tell you about my mother, <CHARNAME>?~ [OH83430] */
  IF ~~ THEN REPLY #83436 /* ~No. You seemed satisfied to leave the past in the past.~ */ GOTO 393
  IF ~~ THEN REPLY #83437 /* ~I can't say I've had that pleasure.~ */ GOTO 389
  IF ~~ THEN REPLY #83438 /* ~No. For which I'm eternally grateful. Now come, we've a crypt to loot.~ */ GOTO 396
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #83443 /* ~And so I am. But sometimes, the past is not satisfied to be left behind.~ [OH83443] */
  IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 394 // from: 391.0
  SAY #83446 /* ~The same thing that happens to all who threaten those in power.~ [OH83446] */
  IF ~~ THEN REPLY #83447 /* ~Predictable, but regrettable.~ */ GOTO 392
  IF ~~ THEN REPLY #83448 /* ~Ouch.~ */ GOTO 392
  IF ~~ THEN REPLY #83452 /* ~Not all. Change has to begin somewhere.~ */ GOTO 395
END

IF ~~ THEN BEGIN 395 // from: 394.2
  SAY #83453 /* ~Indeed.~ [OH83453] */
  IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 396 // from: 392.2 391.2 388.1 387.2 386.2
  SAY #83454 /* ~I... You're right. The past is past.~ [OH83454] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 397 // from: 389.2
  SAY #83455 /* ~Sometimes I ask myself the same question.~ [OH83455] */
  IF ~~ THEN GOTO 401
END

IF ~~ THEN BEGIN 398 // from: 401.2
  SAY #83456 /* ~I miss much of my old life. Or I would if I let myself think of it. The past is past.~ [OH83456] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 399 // from: 402.1
  SAY #83458 /* ~No, not mine, though sometimes I wonder how close I came...~ [OH83458] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 400 // from: 403.1
  SAY #83461 /* ~There is—there WAS nothing they would not do for me.~ [OH83461] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 401 // from: 397.0 389.0
  SAY #83463 /* ~What I am—what I became—cannot be laid at her feet. Or my aunts', either, though they were the ones who raised me. Good women, all.~ [OH83463] */
  IF ~~ THEN REPLY #83464 /* ~But not your mother.~ */ GOTO 402
  IF ~~ THEN REPLY #83465 /* ~You're not so bad yourself, Hexxat.~ */ GOTO 407
  IF ~~ THEN REPLY #83466 /* ~You miss them?~ */ GOTO 398
END

IF ~~ THEN BEGIN 402 // from: 401.0
  SAY #83467 /* ~No. She had a higher calling, to serve Ubtao. It... did not go over well with the clan elders. There was blood spilled.~ [OH83467] */
  IF ~~ THEN REPLY #83468 /* ~She left to protect you. That cannot have been easy for her.~ */ GOTO 404
  IF ~~ THEN REPLY #83469 /* ~Not yours, I hope?~ */ GOTO 399
  IF ~~ THEN REPLY #83470 /* ~How much blood?~ */ GOTO 409
END

IF ~~ THEN BEGIN 403 // from: 389.3
  SAY #83472 /* ~I was raised by her sisters. She had a higher calling—one that put her at odds with the clan's leaders.~ [OH83472] */
  IF ~~ THEN REPLY #83474 /* ~She left you to protect you. That cannot have been easy for her.~ */ GOTO 404
  IF ~~ THEN REPLY #83475 /* ~Your aunts protected you.~ */ GOTO 400
  IF ~~ THEN REPLY #83476 /* ~I can't imagine that ended well.~ */ GOTO 409
END

IF ~~ THEN BEGIN 404 // from: 403.0 402.0
  SAY #83477 /* ~Easy or not, she did what she felt she had to do.~ [OH83477] */
  IF ~~ THEN REPLY #83478 /* ~An admirable quality.~ */ GOTO 407
  IF ~~ THEN REPLY #83479 /* ~Perhaps you felt otherwise?~ */ GOTO 410
  IF ~~ THEN REPLY #83480 /* ~Like mother, like daughter.~ */ GOTO 405
END

IF ~~ THEN BEGIN 405 // from: 404.2
  SAY #83481 /* ~Is that supposed to be a compliment, <CHARNAME>?~ [OH83481] */
  IF ~~ THEN REPLY #83482 /* ~That's certainly how it was intended.~ */ GOTO 406
  IF ~~ THEN REPLY #83483 /* ~Take it as you will.~ */ GOTO 408
  IF ~~ THEN REPLY #83484 /* ~You think otherwise?~ */ GOTO 406
END

IF ~~ THEN BEGIN 406 // from: 405.2 405.0
  SAY #83485 /* ~I'm not like my mother. The sacrifices I make are for my own benefit.~ [OH83485] */
  IF ~~ THEN REPLY #83486 /* ~You judge yourself too harshly.~ */ GOTO 407
  IF ~~ THEN REPLY #83487 /* ~That doesn't make them easy.~ */ GOTO 411
  IF ~~ THEN REPLY #83488 /* ~Perhaps. The pious have been known to take a certain satisfaction in their own martyrdom.~ */ GOTO 408
END

IF ~~ THEN BEGIN 407 // from: 406.0 404.0 401.1
  SAY #83489 /* ~You think so? Try telling that to the men who accompanied me into Dragomir's Tomb.~ [OH83489] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 408 // from: 411.0 409.0 407.0 406.2 405.1 400.0 399.0 398.0
  SAY #83490 /* ~Enough of this. We've work to do.~ [OH83490] */
  IF ~~ THEN DO ~AddJournalEntry(85166,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 409 // from: 410.0 403.2 402.2
  SAY #83494 /* ~I do not know how it ended. Perhaps someday, when I've completed my assignments for L, I'll return to Mezro and see what became of my family.~ [OH83494] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 410 // from: 404.1
  SAY #83495 /* ~I was young, then. I couldn't appreciate the sacrifice she made, or the reasons she might have had for making it. I didn't yet understand the way of the world.~ [OH83495] */
  IF ~~ THEN GOTO 409
END

IF ~~ THEN BEGIN 411 // from: 406.1
  SAY #83496 /* ~No. But sometimes, they have perhaps not been as hard as they should have been.~ [OH83496] */
  IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 412 // from:
  SAY #102526 /* ~I hope you won't let it stop you, <CHARNAME>. It certainly won't stay my hand.~ [OH83390] */
  IF ~~ THEN DO ~SetGlobal("OH_mummyattack","OH7100",2)
~ EXIT
END

IF ~~ THEN BEGIN 413 // from:
  SAY #83444 /* ~He must have the key himself.~ [OH83444] */
  IF ~~ THEN EXTERN ~OHHKICHI~ 13
END

IF ~~ THEN BEGIN 414 // from:
  SAY #83518 /* ~There's no reason to play this game, <CHARNAME>. He doesn't need to offer us the key, not when we can simply take it.~ [OH83518] */
  IF ~~ THEN EXTERN ~OHHKICHI~ 24
END

IF WEIGHT #32 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_kichicomment","LOCALS",1)
~ THEN BEGIN 415 // from:
  SAY #83522 /* ~<CHARNAME>, a word. We don't necessarily need to do as this Ki Chin Sang says. All we need is the key. Think on that for a while.~ [OH83522] */
  IF ~~ THEN DO ~SetGlobal("OHH_kichicomment","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 416 // from:
  SAY #83568 /* ~Yes, I'm sure all we need to do is ask for it nicely and he'll hand it right over...~ [OH83568] */
  IF ~~ THEN EXTERN ~OHHKUNG~ 1
END

IF ~~ THEN BEGIN 417 // from:
  SAY #83575 /* ~Actually, he said he wouldn't stop us from exploring the rest of the crypt. Not mentioning the mummies was an accidental oversight, I'm sure.~ [OH83575] */
  IF ~~ THEN EXTERN ~OHHKUNG~ 3
END

IF WEIGHT #33 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_kungdead","OH7100",1)
~ THEN BEGIN 418 // from:
  SAY #83572 /* ~That went well.~ [OH83572] */
  IF ~~ THEN REPLY #83576 /* ~We disturb dead men in their place of rest. It doesn't sit well with me.~ */ DO ~SetGlobal("OHH_kungdead","OH7100",2)
~ GOTO 472
  IF ~~ THEN REPLY #83579 /* ~"Well"? What ring of Hell were you born in that that qualifies as going well?~ */ DO ~SetGlobal("OHH_kungdead","OH7100",2)
~ GOTO 419
  IF ~~ THEN REPLY #83580 /* ~It could have gone worse.~ */ DO ~SetGlobal("OHH_kungdead","OH7100",2)
~ GOTO 419
END

IF ~~ THEN BEGIN 419 // from: 418.2 418.1
  SAY #83581 /* ~We have the Claw. I'm alive and free. I'm inclined to think of this as a win. Let's get out of here.~ [OH83581] */
  IF ~~ THEN REPLY #83583 /* ~Soon. Let's make sure we've availed ourselves of everything this tomb has to offer first.~ */ DO ~SetGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TWO_TURNS)
~ EXIT
  IF ~~ THEN REPLY #83585 /* ~Free to do whatever L wills.~ */ GOTO 420
  IF ~~ THEN REPLY #83586 /* ~I'll think of it as a win when we're away from here and counting our gold.~ */ GOTO 473
END

IF ~~ THEN BEGIN 420 // from: 466.1 419.1
  SAY #83589 /* ~You have a problem, <CHARNAME>?~ [OH83589] */
  IF ~~ THEN REPLY #83591 /* ~Now that you mention it, yes, I do. This L's sent you into two lairs of the undead. He cares nothing whether you live or die.~ */ GOTO 432
  IF ~~ THEN REPLY #83593 /* ~I've more problems than I can count, Hexxat. But I muddle on.~ */ GOTO 421
  IF ~~ THEN REPLY #83594 /* ~I dislike facing dire peril for the benefit of anonymous figures giving orders from the shadows.~ */ GOTO 422
END

IF ~~ THEN BEGIN 421 // from: 420.1
  SAY #83595 /* ~Muddle on in silence a moment. I need to concentrate to open the portal back to Amn.~ [OH83595] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 422 // from: 420.2
  SAY #83597 /* ~I didn't make you come here. Nobody put a knife to your throat.~ [OH83597] */
  IF ~~ THEN REPLY #83600 /* ~I wouldn't let a friend face danger alone.~ */ GOTO 423
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83602 /* ~It seems I abandoned common sense when I threw my lot in with yours.~ */ GOTO 458
  IF ~~ THEN REPLY #83603 /* ~You still owe me for rescuing you from Dragomir's Tomb. I need to keep an eye on my investment.~ */ GOTO 454
END

IF ~~ THEN BEGIN 423 // from: 422.0
  SAY #83604 /* ~Friends, <CHARNAME>? Is that what we are?~ [OH83604] */
  IF ~~ THEN REPLY #83605 /* ~I'd hate to think I fought vampires and mummies on account of an enemy.~ */ GOTO 429
  IF ~~ THEN REPLY #83606 /* ~Whatever you want us to be, that's what we shall be.~ */ GOTO 424
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83607 /* ~What would you rather be? An asset? An enemy?~ */ GOTO 429
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83607 /* ~What would you rather be? An asset? An enemy?~ */ GOTO 425
END

IF ~~ THEN BEGIN 424 // from: 423.1
  SAY #83608 /* ~For now, I'll settle for us being away from here. Be silent a moment; I need to concentrate to open the portal.~ [OH83608] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 425 // from: 454.4 423.3
  SAY #83609 /* ~Surely you can come up with better than that.~ [OH83609] */
  IF ~~ THEN REPLY #83610 /* ~I didn't want to be overly familiar.~ */ GOTO 427
  IF ~~ THEN REPLY #83611 /* ~Would you want me to?~ */ GOTO 428
  IF ~~ THEN REPLY #83612 /* ~It's best our relationship remain professional.~ */ GOTO 426
END

IF ~~ THEN BEGIN 426 // from: 425.2
  SAY #83613 /* ~I couldn't agree more. Now be quiet. I need to concentrate to return us to Amn.~ [OH83613] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #83614 /* ~A shame your spirit of adventure chooses this moment to abandon you. Ah well. Be quiet a moment while I transport us back to Amn.~ [OH83614] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 428 // from: 425.1
  SAY #83615 /* ~Only one way to find out. Now still your tongue a moment—I need to concentrate to open the portal back to Amn.~ [OH83615] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 429 // from: 423.2 423.0
  SAY #83616 /* ~Friends, is it, then? Now be silent. Tombwalking requires some concentration.~ [OH83616] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 430 // from: 478.0 477.0 476.0 475.2 471.0 470.0 469.1 466.0 451.0 448.0 444.0 433.1 431.0
  SAY #83617 /* ~Be silent now. I need to concentrate to open the portal back to Amn.~ [OH83617] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 431 // from: 433.2
  SAY #83618 /* ~I owe you no explanation, <CHARNAME>.~ [OH83618] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 432 // from: 420.0
  SAY #83619 /* ~He is an employer, not my mother.~ [OH83619] */
  IF ~~ THEN REPLY #83620 /* ~He's responsible for your current state. Has he apologized?~ */ GOTO 466
  IF ~~ THEN REPLY #83621 /* ~You've got a mother? I sort of assumed you spontaneously generated out of dust and free-floating self-satisfaction.~ */ GOTO 440
  IF ~~ THEN REPLY #83622 /* ~And what he offers you justifies the risks you're forced to take doing his bidding?~ */ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.2
  SAY #83625 /* ~Yes. Especially now.~ [OH83625] */
  IF ~~ THEN REPLY #83628 /* ~Why especially now?~ */ GOTO 434
  IF ~~ THEN REPLY #83631 /* ~If you say so. I still think he asks far too much.~ */ GOTO 430
  IF ~~ THEN REPLY #83634 /* ~Explain this to me, Hexxat.~ */ GOTO 431
END

IF ~~ THEN BEGIN 434 // from: 433.0
  SAY #83635 /* ~I don't want to talk about this. Be silent while I open the portal back to Amn.~ [OH83635] */
  IF ~~ THEN REPLY #83636 /* ~Very well.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83637 /* ~We don't always get what we want. What does L have that's valuable enough to justify repeatedly risking your life in his service?~ */ GOTO 439
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83637 /* ~We don't always get what we want. What does L have that's valuable enough to justify repeatedly risking your life in his service?~ */ GOTO 435
  IF ~~ THEN REPLY #83639 /* ~As you wish. But we'll talk of this again, believe me.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 435 // from: 468.1 434.2
  SAY #83642 /* ~Life? Are you blind, <CHARNAME>? You call this shadow existence I have a life?~ [OH83642] */
  IF ~~ THEN REPLY #83646 /* ~I understand now. You believe L will restore your humanity.~ */ GOTO 436
  IF ~~ THEN REPLY #83647 /* ~Yes. What else would I call it?~ */ GOTO 437
  IF ~~ THEN REPLY #83648 /* ~No, Hexxat. I call it a gift.~ */ GOTO 438
END

IF ~~ THEN BEGIN 436 // from: 435.0
  SAY #83649 /* ~Yes. He's the best hope I've got to walk freely in the sun again. Now if we're quite done, still your wagging tongue while I return us to Amn.~ [OH83649] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 437 // from: 435.1
  SAY #83651 /* ~You understand nothing, <CHARNAME>. Now be quiet a moment that I might return us to Amn.~ [OH83651] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 438 // from: 435.2
  SAY #83652 /* ~A gift? You're not blind, you're mad! You've no idea of the torments I endure, the horror that is my existence now.~ [OH83652] */
  IF ~~ THEN GOTO 439
END

IF ~~ THEN BEGIN 439 // from: 452.0 438.0 434.1
  SAY #83653 /* ~Be silent now. I don't wish to hear your voice, and need to concentrate to tombwalk us back to Amn. ~ [OH83653] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 440 // from: 432.1
  SAY #83654 /* ~It was a figure of speech.~ [OH83654] */
  IF ~~ THEN REPLY #83655 /* ~One that has me intrigued. This mother of yours—tell me about her.~ */ GOTO 442
  IF ~~ THEN REPLY #83656 /* ~So you don't have a mother?~ */ GOTO 441
  IF ~~ THEN REPLY #83658 /* ~If you insist. Forget I said anything. Let us return to Amn.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 441 // from: 440.1
  SAY #83659 /* ~Don't be stupid. Of course I had a mother.~ [OH83659] */
  IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 442 // from: 441.0 440.0
  SAY #83660 /* ~I didn't get a chance to know her well. I was raised by my aunts.~ [OH83660] */
  IF ~~ THEN REPLY #83661 /* ~I'm sorry to hear that.~ */ GOTO 449
  IF ~~ THEN REPLY #83662 /* ~She died?~ */ GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.1
  SAY #83664 /* ~No. To pursue her calling as Mazewalker of Ubtao, she was forced to give me up.~ [OH83664] */
  IF ~~ THEN REPLY #83665 /* ~Oh, Hexxat. I'm so sorry.~ */ GOTO 449
  IF ~~ THEN REPLY #83680 /* ~She may have been a worthy servant of Ubtao, but her skills as a mother leave something to be desired.~ */ GOTO 444
  IF ~~ THEN REPLY #83681 /* ~"Forced"? ~ */ GOTO 444
END

IF ~~ THEN BEGIN 444 // from: 443.2 443.1
  SAY #83682 /* ~You are too quick to judge, <CHARNAME>. My mother did what she thought was best for me. Her views were... not highly regarded by the more conservative members of our clan. Sending me to stay with my aunts was the only way to ensure I wasn't put in danger.~ [OH83682] */
  IF ~~ THEN REPLY #83683 /* ~A noble act by a noble woman.~ */ GOTO 430
  IF ~~ THEN REPLY #83684 /* ~She could have forsaken Ubtao and focused on taking care of you.~ */ GOTO 446
  IF ~~ THEN REPLY #83685 /* ~Twist and turn it whatever way you want, Hexxat. You can't turn her selfish act into a noble one.~ */ GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.2
  SAY #83686 /* ~You know nothing of my mother, and less still of me. Now, unless you'd rather spend the rest of your life in this wretched pit, be silent. I need to concentrate to open the portal back to Amn.~ [OH83686] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 446 // from: 444.1
  SAY #83687 /* ~And cutting off a hand would have saved her from arthritis. She made the only choice she could. My aunts raised me as their own. What my mother could not give, they were happy to provide.~ [OH83687] */
  IF ~~ THEN REPLY #83689 /* ~You were fortunate.~ */ GOTO 450
  IF ~~ THEN REPLY #83691 /* ~They sound like amazing women.~ */ GOTO 448
  IF ~~ THEN REPLY #83693 /* ~Nothing can replace a mother's love.~ */ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 449.2 446.2
  SAY #83695 /* ~I got by. Now be silent. I need to concentrate to return us to Amn.~ [OH83695] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 448 // from: 449.1 446.1
  SAY #83697 /* ~You have no idea.~ [OH83697] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 449 // from: 443.0 442.0
  SAY #83698 /* ~Don't be. My aunts raised me as though I was their own. What my mother was unwilling to give, they were happy to provide.~ [OH83698] */
  IF ~~ THEN REPLY #83699 /* ~You were fortunate.~ */ GOTO 450
  IF ~~ THEN REPLY #83700 /* ~They must have been amazing women.~ */ GOTO 448
  IF ~~ THEN REPLY #83701 /* ~A poor substitute for a mother's love.~ */ GOTO 447
END

IF ~~ THEN BEGIN 450 // from: 449.0 446.0
  SAY #83702 /* ~My luck ran out in Dragomir's Tomb.~ [OH83702] */
  IF ~~ THEN REPLY #83703 /* ~A lot of people's did.~ */ GOTO 451
  IF ~~ THEN REPLY #83704 /* ~You met me in Dragomir's Tomb.~ */ GOTO 453
  IF ~~ THEN REPLY #83705 /* ~How? It was there that you received the gift of undeath.~ */ GOTO 452
END

IF ~~ THEN BEGIN 451 // from: 450.0
  SAY #83706 /* ~Sacrifices have to be made sometimes.~ [OH83706] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 452 // from: 450.2
  SAY #83707 /* ~A gift? You call this shadow existence a gift? You're mad, <CHARNAME>! You have no idea of the torments I endure, the horror that is my existence now.~ [OH83707] */
  IF ~~ THEN GOTO 439
END

IF ~~ THEN BEGIN 453 // from: 450.1
  SAY #83708 /* ~Precisely. Now shut up a moment. I need to concentrate to get us out of here.~ [OH83708] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 454 // from: 422.2
  SAY #83709 /* ~An investment? Is that what I am to you?~ [OH83709] */
  IF ~~ THEN REPLY #83710 /* ~Why? Would you be something more?~ */ GOTO 455
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83711 /* ~Whatever you would be to me, that's what you shall be.~ */ GOTO 455
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83711 /* ~Whatever you would be to me, that's what you shall be.~ */ GOTO 456
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83712 /* ~What would you rather be? An asset? An enemy?~ */ GOTO 457
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83712 /* ~What would you rather be? An asset? An enemy?~ */ GOTO 425
END

IF ~~ THEN BEGIN 455 // from: 454.1 454.0
  SAY #83713 /* ~For now, I'll settle for being your way back to Amn. Be silent a moment—using Dragomir's Casque requires concentration.~ [OH83713] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 454.2
  SAY #83716 /* ~Now there's something worth exploring... once we've returned to Amn. Be silent now—using Dragomir's Casque requires concentration.~ [OH83716] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 457 // from: 454.3
  SAY #83718 /* ~You couldn't afford to make me your tool, and you wouldn't want me as an enemy. Now be silent—opening the portal back to Amn requires concentration.~ [OH83718] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 458 // from: 422.1
  SAY #83721 /* ~Leave common sense to common people. We're better than that.~ [OH83721] */
  IF ~~ THEN REPLY #83723 /* ~Your beauty is matched only by your ego.~ */ GOTO 459
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83724 /* ~True. I yearn to be a common <PRO_MANWOMAN>, but am ever above them. We bear a terrible burden, you and I.~ */ GOTO 464
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83724 /* ~True. I yearn to be a common <PRO_MANWOMAN>, but am ever above them. We bear a terrible burden, you and I.~ */ GOTO 463
  IF ~~ THEN REPLY #83725 /* ~You're very perceptive.~ */ GOTO 462
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #83726 /* ~My skills exceed both.~ [OH83726] */
  IF ~~ THEN REPLY #83727 /* ~Which skills are these, then?~ */ GOTO 460
  IF ~~ THEN REPLY #83728 /* ~Your skill at getting me into life or death battles with the undead is truly unparalleled.~ */ GOTO 461
  IF ~~ THEN REPLY #83729 /* ~That's why I permit you to stay with me.~ */ GOTO 465
END

IF ~~ THEN BEGIN 460 // from: 459.0
  SAY #83730 /* ~Some you've already seen. You aren't ready to experience the others... yet. Now be silent—I need to concentrate to get us back to Amn.~ [OH83730] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 461 // from: 459.1
  SAY #83731 /* ~You've proven pretty skilled at surviving such battles. We make a good team. Now, I can picture few occasions in which I'd say this and mean it, but still your tongue a moment. Getting back to Amn will require some concentration.~ [OH83731] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 462 // from: 458.3
  SAY #83732 /* ~I pride myself on it. Now be silent while I use Dragomir's Casque to return us to Amn.~ [OH83732] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 463 // from: 458.2
  SAY #83733 /* ~It's fortunate we've each found someone who understands our plight. Now let your tongue be still for the moment—I need to concentrate to reopen the portal to Amn.~ [OH83733] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 464 // from: 458.1
  SAY #83734 /* ~Yet somehow we survive and even thrive. We really are impressive, aren't we? Now be silent a moment—I need to concentrate to use Dragomir's Casque.~ [OH83734] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 459.2
  SAY #83735 /* ~Your beneficence is without bounds, <CHARNAME>. I prithee be silent a moment, that I might concentrate and return us to Amn.~ [OH83735] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 466 // from: 432.0
  SAY #83736 /* ~L doesn't apologize. He gives orders and expects them to be carried out.~ [OH83736] */
  IF ~~ THEN REPLY #83737 /* ~I suppose if you're satisfied with that, I'm in no position to judge.~ */ GOTO 430
  IF ~~ THEN REPLY #83738 /* ~And you're okay with that?~ */ GOTO 420
  IF ~~ THEN REPLY #83739 /* ~With no regard for the safety of those he's giving the orders to. He is an unworthy master.~ */ GOTO 468
END

IF ~~ THEN BEGIN 467 // from:
  SAY #83740 /* ~I'm more effective without someone peering over my shoulder. So stop peering over my shoulder and let me get us out of here.~ [OH83740] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 466.2
  SAY #83741 /* ~No man is my master. He is an employer, nothing more.~ [OH83741] */
  IF ~~ THEN REPLY #83742 /* ~Judging from the way Cabrina spoke to you, I'm not sure that's a distinction L has bothered to make.~ */ GOTO 469
  IF ~~ THEN REPLY #83743 /* ~And a generous employer he must be, too, for you to so happily risk your life on his behalf.~ */ GOTO 435
  IF ~~ THEN REPLY #83744 /* ~I wonder if he would say the same.~ */ GOTO 470
END

IF ~~ THEN BEGIN 469 // from: 468.0
  SAY #83745 /* ~Master, employer, he can believe whatever he wants provided he abides by the terms of our deal.~ [OH83745] */
  IF ~~ THEN REPLY #83746 /* ~What are the terms of your deal?~ */ GOTO 471
  IF ~~ THEN REPLY #83747 /* ~Getting paid is a powerful motivator, I can't deny that.~ */ GOTO 430
  IF ~~ THEN REPLY #83748 /* ~If you're satisfied to be a slave, I'll not stand in your way.~ */ GOTO 470
END

IF ~~ THEN BEGIN 470 // from: 469.2 468.2
  SAY #83749 /* ~L and I have a mutually satisfactory agreement. I'll not let your insinuations poison a good working relationship.~ [OH83749] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 471 // from: 469.0
  SAY #83750 /* ~No business of yours, that's what they are.~ [OH83750] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 472 // from: 418.0
  SAY #83751 /* ~You'd rather kill the living in their place of rest?~ [OH83751] */
  IF ~~ THEN REPLY #83752 /* ~This is a serious matter, Hexxat.~ */ GOTO 475
  IF ~~ THEN REPLY #83753 /* ~Now that you mention it, yes. The living don't have an established precedent for not staying dead when you kill them.~ */ GOTO 473
  IF ~~ THEN REPLY #83754 /* ~I'd rather kill you, bloodsucker.~ */ GOTO 474
END

IF ~~ THEN BEGIN 473 // from: 472.1 419.2
  SAY #83755 /* ~Good point. Now be silent—I need to concentrate if I'm to tombwalk us back to Amn.~ [OH83755] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 474 // from: 472.2
  SAY #83756 /* ~You're welcome to try, <PRO_RACE>.~ [OH83756] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("ohhexxx",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 475 // from: 472.0
  SAY #83757 /* ~Survival is the most serious matter, <CHARNAME>. I'll destroy a thousand mummies, ransack ten thousand tombs if it'll get me another day.~ [OH83757] */
  IF ~~ THEN REPLY #83758 /* ~I believe you. And that frightens me.~ */ GOTO 476
  IF ~~ THEN REPLY #83759 /* ~Is there any wiggle room there? Would you settle for eight hundred mummies, maybe six thousand tombs for another day?~ */ GOTO 477
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83760 /* ~As would I.~ */ GOTO 430
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83760 /* ~As would I.~ */ GOTO 478
END

IF ~~ THEN BEGIN 476 // from: 475.0
  SAY #83761 /* ~You fear me? I thought you were made of sterner stuff than that.~ [OH83761] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 477 // from: 475.1
  SAY #83762 /* ~You know, <CHARNAME>, for a jester, you make a great adventurer. You should stick to what you're good at.~ [OH83762] */
  IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 478 // from: 475.3
  SAY #83763 /* ~I'm glad we understand each other.~ [OH83763] */
  IF ~~ THEN GOTO 430
END

IF WEIGHT #34 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_leaving","LOCALS",1)
~ THEN BEGIN 479 // from:
  SAY #83764 /* ~Are you ready to go now, <CHARNAME>?~ [OH83764] */
  IF ~~ THEN REPLY #76154 /* ~Yes.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83770 /* ~Just give me a few more minutes.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83771 /* ~I'll let you know when I'm ready.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_leaving","LOCALS",2)
~ THEN BEGIN 480 // from:
  SAY #83772 /* ~We have what we came for. Let us go now.~ [OH83772] */
  IF ~~ THEN REPLY #83773 /* ~Not just yet.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83774 /* ~You have what you came for. I'm still looking.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83775 /* ~All right.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_leaving","LOCALS",3)
~ THEN BEGIN 481 // from:
  SAY #83776 /* ~I don't know about you, but I've better things to do with my time than root around crypts.~ [OH83776] */
  IF ~~ THEN REPLY #83777 /* ~Yeah, right. Where did we meet again?~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83778 /* ~I do not.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83779 /* ~All right, I've seen enough. Let's go.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_leaving","LOCALS",4)
~ THEN BEGIN 482 // from:
  SAY #83780 /* ~Ready? No? Well, take your time. It's not like we have better things to do with our lives.~ [OH83780] */
  IF ~~ THEN REPLY #83781 /* ~All right, all right. Let's go.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83782 /* ~I'm glad we agree.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83783 /* ~There's something more here. I'm sure of it.~ */ DO ~IncrementGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_leaving","LOCALS",5)
~ THEN BEGIN 483 // from:
  SAY #83784 /* ~I've had enough of this place, <CHARNAME>. Let us go. NOW.~ [OH83784] */
  IF ~~ THEN REPLY #83785 /* ~Don't tell me you have a problem digging around tombs...~ */ DO ~SetGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #83786 /* ~Very well. If you insist.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83787 /* ~We'll go when I'm ready.~ */ DO ~SetGlobal("OHH_leaving","LOCALS",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF ~~ THEN BEGIN 484 // from:
  SAY #83624 /* ~Cabrina.~ [OH83624] */
  IF ~~ THEN REPLY #83626 /* ~Good evening, milady.~ */ GOTO 485
  IF ~~ THEN REPLY #83627 /* ~Oh good. L's mouthpiece has found us again.~ */ EXTERN ~OHHCABRI~ 28
  IF ~~ THEN REPLY #83629 /* ~What does L want this time?~ */ EXTERN ~OHHCABRI~ 29
END

IF ~~ THEN BEGIN 485 // from: 484.0
  SAY #83641 /* ~I assume you're here with a message from L?~ [OH83641] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 29
END

IF ~~ THEN BEGIN 486 // from:
  SAY #83669 /* ~Enough. L obviously has a job for me. Let's hear it.~ [OH83669] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 35
END

IF ~~ THEN BEGIN 487 // from:
  SAY #83675 /* ~They've got you there, Cabrina. Now, you didn't come here to chat—or at least not just to chat. What does L want from me?~ [OH83675] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 36
END

IF ~~ THEN BEGIN 488 // from:
  SAY #83677 /* ~No one keeps me, Cabrina. Now, L obviously sent you to give me a new assignment. Let's hear it.~ [OH83677] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 35
END

IF ~~ THEN BEGIN 489 // from:
  SAY #83678 /* ~I think they mean it, Cabrina. Best get to the point.~ [OH83678] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 35
END

IF ~~ THEN BEGIN 490 // from:
  SAY #83688 /* ~I'm happy he's happy. What does he want now?~ [OH83688] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 36
END

IF ~~ THEN BEGIN 491 // from:
  SAY #83719 /* ~She's also capable of speaking for herself. What is the Shroud of the Unproved? What does it look like?~ [OH83719] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 49
END

IF ~~ THEN BEGIN 492 // from:
  SAY #83720 /* ~Let it go, <CHARNAME>. She's harmless.~ [OH83720] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 38
END

IF ~~ THEN BEGIN 493 // from:
  SAY #83765 /* ~L wants the Shroud of the Unproved from beneath the Zakharan deserts. Is that all?~ [OH83765] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 39
END

IF ~~ THEN BEGIN 494 // from:
  SAY #83788 /* ~Some other time, Cabrina. After I've retrieved the Shroud.~ [OH83788] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 40
END

IF ~~ THEN BEGIN 495 // from:
  SAY #83798 /* ~Enough. <CHARNAME>, cool down. I'm perfectly capable of defending whatever honor I've got left. Cabrina, go tell L he'll soon have the Shroud.~ [OH83798] */
  IF ~~ THEN DO ~AddJournalEntry(85175,QUEST)
ActionOverride("ohhcabri",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 496 // from:
  SAY #83832 /* ~That just scratches the surface of what you don't understand about me, Cabrina. Tell us about the Shroud of the Unproved.~ [OH83832] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 53
END

IF ~~ THEN BEGIN 497 // from:
  SAY #83837 /* ~Wise women.~ [OH83837] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 54
END

IF ~~ THEN BEGIN 498 // from:
  SAY #83839 /* ~You cling to that hope, Cabrina. Continue with the story.~ [OH83839] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 59
END

IF ~~ THEN BEGIN 499 // from:
  SAY #83849 /* ~Four wise women prophesied the birth of a prophet.~ [OH83849] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 58
END

IF ~~ THEN BEGIN 500 // from:
  SAY #83856 /* ~Don't judge her so harshly. We know only the barest outline of her situation. Go on, Cabrina.~ [OH83856] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 62
END

IF ~~ THEN BEGIN 501 // from:
  SAY #83857 /* ~But did she?~ [OH83857] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 61
END

IF ~~ THEN BEGIN 502 // from:
  SAY #83864 /* ~You should not make light of such a tragedy, <CHARNAME>.~ [OH83864] */
  IF ~~ THEN REPLY #83865 /* ~When did you start to feel sympathy for your targets, Hexxat? I somehow missed that.~ */ EXTERN ~OHHCABRI~ 67
  IF ~~ THEN REPLY #83866 /* ~Sometimes you just have to laugh.~ */ GOTO 503
  IF ~~ THEN REPLY #83867 /* ~Badiat paid the price for weakness and imprudence. There are greater tragedies than that.~ */ GOTO 504
END

IF ~~ THEN BEGIN 503 // from: 502.1
  SAY #83868 /* ~Sometimes, yes. But not this time.~ [OH83868] */
  IF ~~ THEN GOTO 504
END

IF ~~ THEN BEGIN 504 // from: 503.0 502.2
  SAY #83869 /* ~She was a mother, trying to protect her unborn child.~ [OH83869] */
  IF ~~ THEN REPLY #83870 /* ~As any mother would.~ */ GOTO 505
  IF ~~ THEN REPLY #83871 /* ~Badiat is dead and gone, and we have work to do.~ */ GOTO 506
  IF ~~ THEN REPLY #83872 /* ~And she did a poor job of it.~ */ EXTERN ~OHHCABRI~ 64
END

IF ~~ THEN BEGIN 505 // from: 504.0
  SAY #83874 /* ~No. Not any mother.~ [OH83874] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 65
END

IF ~~ THEN BEGIN 506 // from: 504.1
  SAY #83876 /* ~...You are right, of course.~ [OH83876] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 507 // from: 519.0 518.0 517.1 516.0 515.0 514.0 513.0 512.2 511.0 506.0
  SAY #83877 /* ~Thank you for your message, Cabrina. You may tell L it's been received and I shall deliver the Shroud soon.~ [OH83877] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 66
END

IF ~~ THEN BEGIN 508 // from:
  SAY #83881 /* ~You don't know what you're talking about, Cabrina. Be silent for once in your misbegotten life.~ [OH83881] */
  IF ~~ THEN REPLY #83882 /* ~So there's nothing in Badiat's tale that gives you pause?~ */ GOTO 519
  IF ~~ THEN REPLY #83883 /* ~Hexxat... Do you want to have children?~ */ GOTO 510
  IF ~~ THEN REPLY #83884 /* ~L's message has been received, Cabrina. You may go.~ */ EXTERN ~OHHCABRI~ 68
END

IF ~~ THEN BEGIN 509 // from:
  SAY #83889 /* ~They are right, Cabrina. It's time for you to leave.~ [OH83889] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 69
END

IF ~~ THEN BEGIN 510 // from: 508.1
  SAY #83891 /* ~Children are for the living. Have you forgotten what I am, <CHARNAME>?~ [OH83891] */
  IF ~~ THEN REPLY #83892 /* ~I know full well what you are. But what do you desire?~ */ GOTO 511
  IF ~~ THEN REPLY #83893 /* ~You were a woman before you were a vampire.~ */ GOTO 512
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #83894 /* ~I could never forget that. Each time I set eyes upon you, I am reminded of what a magnificent creature walks beside me.~ */ GOTO 516
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #83894 /* ~I could never forget that. Each time I set eyes upon you, I am reminded of what a magnificent creature walks beside me.~ */ GOTO 515
END

IF ~~ THEN BEGIN 511 // from: 510.0
  SAY #83895 /* ~What I desire is irrelevant. All that matters is the task at hand.~ [OH83895] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 512 // from: 510.1
  SAY #83896 /* ~What I was is of no consequence.~ [OH83896] */
  IF ~~ THEN REPLY #83897 /* ~That's not true.~ */ GOTO 513
  IF ~~ THEN REPLY #83898 /* ~You try and bury your humanity because you think it weakens you.~ */ GOTO 514
  IF ~~ THEN REPLY #83899 /* ~You're right. You have surpassed humanity and achieved an exalted state. Leave the past in the past—look only to the glorious future in front of you.~ */ GOTO 507
END

IF ~~ THEN BEGIN 513 // from: 512.0
  SAY #83900 /* ~It is.~ [OH83900] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 514 // from: 512.1
  SAY #83901 /* ~I bury my humanity because that's what you do with dead things.~ [OH83901] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 515 // from: 510.3
  SAY #83902 /* ~Would that I could see myself through your eyes.~ [OH83902] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 516 // from: 510.2
  SAY #83903 /* ~No doubt your slippery tongue serves you well with other women, <CHARNAME>. But superficial charm and hollow compliments will get you nowhere with me.~ [OH83903] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 517 // from:
  SAY #83904 /* ~If L requires the Shroud, then he shall have it.~ [OH83904] */
  IF ~~ THEN REPLY #83905 /* ~You have no reservations about this mission?~ */ GOTO 518
  IF ~~ THEN REPLY #83906 /* ~So say we all. Primarily because those who don't say it will end up in a long and no doubt pointless argument.~ */ GOTO 507
  IF ~~ THEN REPLY #83907 /* ~All L requires is a series of sharp blows to the head. Perhaps someday I'll be in a position to give him them.~ */ EXTERN ~OHHCABRI~ 70
END

IF ~~ THEN BEGIN 518 // from: 517.0
  SAY #83908 /* ~No more than any other.~ [OH83908] */
  IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 519 // from: 508.0
  SAY #83909 /* ~A pause... No. Nothing.~ [OH83909] */
  IF ~~ THEN GOTO 507
END

IF WEIGHT #39 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_cabrina","GLOBAL",7)
AreaCheck("AR0800")
~ THEN BEGIN 520 // from:
  SAY #83791 /* ~Ready to go, <CHARNAME>?~ [OH83791] */
  IF ~~ THEN REPLY #83792 /* ~Let's do it.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut10",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83793 /* ~I was born ready. Which was unfortunate, because I had to wait several years before we got here.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut10",FALSE)
~ EXIT
  IF ~~ THEN REPLY #83794 /* ~No. I have other things to attend to before we make this journey.~ */ GOTO 521
END

IF ~~ THEN BEGIN 521 // from: 520.2
  SAY #83795 /* ~Very well. L's business can wait a little while. A VERY little while. Speak to me in the graveyard when you are ready.~ [OH83795] */
  IF ~~ THEN DO ~SetGlobal("OHH_alqadimreminder","GLOBAL",1)
SetGlobalTimer("OHH_alqadimremindertimer","GLOBAL",THREE_DAYS)
~ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_alqadimreminder","GLOBAL",2)
Global("OHH_cabrina","GLOBAL",7)
~ THEN BEGIN 522 // from:
  SAY #83796 /* ~When will we return to the Graveyard District, <CHARNAME>? L is going to start wondering what I'm up to, and the last thing I want to do is attract attention.~ [OH83796] */
  IF ~~ THEN REPLY #83799 /* ~We'll go now, if you'd like.~ */ DO ~SetGlobal("OHH_alqadimreminder","GLOBAL",1)
SetGlobalTimer("OHH_alqadimremindertimer","GLOBAL",THREE_DAYS)
~ EXIT
  IF ~~ THEN REPLY #83802 /* ~If that's the case, you should rid yourself of that tattered rag of a cloak—it stinks of the crypt. Also, you'll want to start wearing a mask. You're a striking woman, Hexxat. There's no getting away from it.~ */ DO ~SetGlobal("OHH_alqadimreminder","GLOBAL",1)
SetGlobalTimer("OHH_alqadimremindertimer","GLOBAL",THREE_DAYS)
~ GOTO 523
  IF ~~ THEN REPLY #83805 /* ~I'll go when I'm ready. Stop pestering me.~ */ DO ~SetGlobal("OHH_alqadimreminder","GLOBAL",1)
SetGlobalTimer("OHH_alqadimremindertimer","GLOBAL",THREE_DAYS)
~ GOTO 524
END

IF ~~ THEN BEGIN 523 // from: 522.1
  SAY #83808 /* ~That's not the sort of attention I was referring to. Head to the graveyard and speak to me when you are ready.~ [OH83808] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 524 // from: 522.2
  SAY #83810 /* ~I'll stop when we do what we've agreed to do. Head to the graveyard and speak to me when you are ready.~ [OH83810] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 525 // from:
  SAY #83955 /* ~Damn it, <CHARNAME>. You've all the subtlety of a drunken troll.~ [OH83955] */
  IF ~~ THEN REPLY #83956 /* ~Yes, but I smell better.~ */ GOTO 526
  IF ~~ THEN REPLY #83957 /* ~Subtlety is overrated.~ */ EXTERN ~OHHAYESH~ 6
  IF ~~ THEN REPLY #83958 /* ~Subtlety is for those in a position of weakness.~ */ EXTERN ~OHHAYESH~ 6
END

IF ~~ THEN BEGIN 526 // from: 525.0
  SAY #83959 /* ~All right, you've got me there.~ [OH83959] */
  IF ~~ THEN EXTERN ~OHHAYESH~ 6
END

IF ~~ THEN BEGIN 527 // from:
  SAY #83965 /* ~What?!~ [OH83965] */
  IF ~~ THEN REPLY #83966 /* ~I love adventure.~ */ GOTO 528
  IF ~~ THEN REPLY #83967 /* ~I love treasure.~ */ GOTO 528
  IF ~~ THEN REPLY #83968 /* ~I love crypts. Why else would I keep visiting them with you?~ */ GOTO 528
  IF ~~ THEN REPLY #83969 /* ~I love the look on your face when something catches you by surprise, Hexxat.~ */ GOTO 528
END

IF ~~ THEN BEGIN 528 // from: 527.3 527.2 527.1 527.0
  SAY #83970 /* ~Very funny.~ [OH83970] */
  IF ~~ THEN REPLY #83971 /* ~I thought so. Now let's get the Unproved's Shroud and get out of here.~ */ EXTERN ~OHHAYESH~ 6
  IF ~~ THEN REPLY #83972 /* ~And yet you give me not even a hint of a smile.~ */ GOTO 530
  IF ~~ THEN REPLY #83973 /* ~I'm glad you think so. Now let's get down to business.~ */ GOTO 529
END

IF ~~ THEN BEGIN 529 // from: 530.0 528.2
  SAY #83974 /* ~We seek the Shroud of the Unproved. Where is it? ~ [OH83974] */
  IF ~~ THEN EXTERN ~OHHAYESH~ 6
END

IF ~~ THEN BEGIN 530 // from: 528.1
  SAY #83975 /* ~Some people find my smile... unsettling. Now let's get down to business.~ [OH83975] */
  IF ~~ THEN GOTO 529
END

IF WEIGHT #41 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shairs","OH7200",1)
~ THEN BEGIN 531 // from:
  SAY #84081 /* ~There's no shroud here. Let's move on.~ [OH84081] */
  IF ~~ THEN REPLY #84082 /* ~Agreed.~ */ DO ~SetGlobal("OHH_shairs","OH7200",2)
~ EXTERN ~OHHHAFIZ~ 0
  IF ~~ THEN REPLY #84083 /* ~Yes, let's move on. And by move on, I mean move back. All the way back to Amn, ideally.~ */ DO ~SetGlobal("OHH_shairs","OH7200",2)
~ GOTO 532
  IF ~~ THEN REPLY #84084 /* ~The sooner we're out of here, the better.~ */ DO ~SetGlobal("OHH_shairs","OH7200",2)
~ EXTERN ~OHHHAFIZ~ 0
END

IF ~~ THEN BEGIN 532 // from: 531.1
  SAY #84085 /* ~Amn will be there when we get the Shroud.~ [OH84085] */
  IF ~~ THEN EXTERN ~OHHHAFIZ~ 0
END

IF ~~ THEN BEGIN 533 // from:
  SAY #84090 /* ~Sha'ir. They're Zakharan magicians.~ [OH84090] */
  IF ~~ THEN EXTERN ~OHHIQBAL~ 0
END

IF ~~ THEN BEGIN 534 // from:
  SAY #84206 /* ~They came to help me acquire the Shroud of the Unproved.~ [OH84206] */
  IF ~~ THEN EXTERN ~OHHIQBAL~ 11
END

IF ~~ THEN BEGIN 535 // from:
  SAY #84198 /* ~"Master"?~ [OH84198] */
  IF ~~ THEN REPLY #84199 /* ~Shut up and play along...~ */ EXTERN ~OHHQAIS~ 13
END

IF ~~ THEN BEGIN 536 // from:
  SAY #84203 /* ~"Master Qais"?~ [OH84203] */
  IF ~~ THEN REPLY #84207 /* ~Just play along a moment...~ */ EXTERN ~OHHQAIS~ 16
END

IF WEIGHT #42 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_provetheunproved","OH7200",1)
~ THEN BEGIN 537 // from:
  SAY #84250 /* ~<CHARNAME>, wait! There's something not right about this place...~ [OH84250] */
  IF ~~ THEN REPLY #84252 /* ~What is it?~ */ DO ~SetGlobal("OHH_provetheunproved","OH7200",2)
~ GOTO 540
  IF ~~ THEN REPLY #84254 /* ~You're right. It's a tomb and we're in it and that isn't right. So let's finish this up as quickly as possible.~ */ DO ~SetGlobal("OHH_provetheunproved","OH7200",2)
~ EXIT
  IF ~~ THEN REPLY #84308 /* ~Then let's spend as little time here as possible.~ */ DO ~SetGlobal("OHH_provetheunproved","OH7200",2)
~ EXIT
END

IF ~~ THEN BEGIN 538 // from:
  SAY #84310 /* ~Some of the floor stones aren't safe to walk on.~ [OH84310] */
  IF ~~ THEN REPLY #84312 /* ~Is it a trap, or a structural flaw?~ */ GOTO 539
  IF ~~ THEN REPLY #84314 /* ~Can you tell me which ones?~ */ GOTO 540
END

IF ~~ THEN BEGIN 539 // from: 538.0
  SAY #84316 /* ~A trap, definitely. Considering how long this place has been down here, it's in pretty good shape.~ [OH84316] */
  IF ~~ THEN GOTO 540
END

IF ~~ THEN BEGIN 540 // from: 539.0 538.1 537.0
  SAY #84318 /* ~The delicate balance, the nearly hidden wires... I see it more clearly now. Avoid the cracked stones and the webbed openings. The clear openings and the pristine stones should be safe.~ [OH84318] */
  IF ~~ THEN REPLY #84321 /* ~Empty space and nice stones safe: got it.~ */ EXIT
  IF ~~ THEN REPLY #84323 /* ~"Should"?~ */ GOTO 541
  IF ~~ THEN REPLY #84325 /* ~You're saying the empty spaces where there are no stones are safe? Seriously?~ */ GOTO 542
END

IF ~~ THEN BEGIN 541 // from: 540.1
  SAY #84335 /* ~Can you do better?~ [OH84335] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 542 // from: 540.2
  SAY #84338 /* ~It is the Tomb of the Unproved. It makes a certain amount of sense.~ [OH84338] */
  IF ~~ THEN REPLY #84339 /* ~If you say so.~ */ EXIT
  IF ~~ THEN REPLY #84341 /* ~Nonsense is a certain kind of sense.~ */ EXIT
  IF ~~ THEN REPLY #84343 /* ~No, it doesn't. That makes no sense at all.~ */ GOTO 543
END

IF ~~ THEN BEGIN 543 // from: 542.2
  SAY #84369 /* ~If you consider the meaning behind such a trap and the contents within the to—~ [OH84369] */
  IF ~~ THEN REPLY #84372 /* ~No. No, no, no. This is clearly ridiculous. What kind of terrible person designs a place like this? Or any of the other places I've been to? Spike traps? Pits of boiling acid? A statue that LAUNCHES SPIDERS AT PEOPLE?! What kind of mind comes up with these contraptions, and then convinces others to aid in their construction? And often hewn out of stone, no less! Dozens, no, HUNDREDS of people must have been involved in the construction of these impossibly convoluted death traps!~ */ GOTO 544
END

IF ~~ THEN BEGIN 544 // from: 543.0
  SAY #84376 /* ~Do you have a point to make, <CHARNAME>?~ [OH84376] */
  IF ~~ THEN REPLY #84483 /* ~I just thought it was interesting to note.~ */ EXIT
END

IF ~~ THEN BEGIN 545 // from:
  SAY #84267 /* ~We can't leave, <CHARNAME>. Not without the Shroud.~ [OH84267] */
  IF ~~ THEN EXTERN ~OHHRAFFI~ 2
END

IF ~~ THEN BEGIN 546 // from:
  SAY #84277 /* ~He was very specific about what he wanted. Nothing but the Shroud will do.~ [OH84277] */
  IF ~~ THEN REPLY #84279 /* ~Will you give us the Shroud?~ */ EXTERN ~OHHRAFFI~ 6
  IF ~~ THEN REPLY #84281 /* ~There's really no talking to the guy.~ */ GOTO 547
  IF ~~ THEN REPLY #84282 /* ~Give it to us and we'll have no quarrel.~ */ EXTERN ~OHHRAFFI~ 6
END

IF ~~ THEN BEGIN 547 // from: 546.1
  SAY #84283 /* ~Will you give us the Shroud?~ [OH84283] */
  IF ~~ THEN EXTERN ~OHHRAFFI~ 6
END

IF WEIGHT #43 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",1)
~ THEN BEGIN 548 // from:
  SAY #84457 /* ~Let's get out of here.~ [OH84457] */
  IF ~~ THEN REPLY #84458 /* ~Yes, let's.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84460 /* ~Soon. This tomb may yet have something to offer us in the way of a reward.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84461 /* ~I'm not ready to go yet.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",2)
~ THEN BEGIN 549 // from:
  SAY #84463 /* ~I would leave this place, <CHARNAME>.~ [OH84463] */
  IF ~~ THEN REPLY #84465 /* ~So would I. It's creepy.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84468 /* ~Really? I'm starting to like it.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84469 /* ~I'm not done here yet.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",3)
~ THEN BEGIN 550 // from:
  SAY #84477 /* ~Are you ready to go yet?~ [OH84477] */
  IF ~~ THEN REPLY #84479 /* ~What? I thought I was waiting for you.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84480 /* ~Patience, Hexxat. Patience.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84482 /* ~Did I SAY I'm ready to go?~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",4)
~ THEN BEGIN 551 // from:
  SAY #84489 /* ~Haven't you seen enough of this place, <CHARNAME>?~ [OH84489] */
  IF ~~ THEN REPLY #84490 /* ~More than enough. Let's go.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84493 /* ~Not quite enough. Not yet.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84494 /* ~I'll let you know when I have, Hexxat.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",5)
~ THEN BEGIN 552 // from:
  SAY #84499 /* ~I don't think there's much more to be done here.~ [OH84499] */
  IF ~~ THEN REPLY #84501 /* ~You're right. Let's head back to Amn.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84503 /* ~I'm not sure you're right.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84790 /* ~I'll decide when there's nothing more to do.~ */ DO ~IncrementGlobal("OHH_shroud","OH7200",1)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_shroud","OH7200",6)
~ THEN BEGIN 553 // from:
  SAY #84505 /* ~We have what we came for, <CHARNAME>. We should go.~ [OH84505] */
  IF ~~ THEN REPLY #84506 /* ~All right.~ */ DO ~SetGlobal("OHH_shroud","OH7200",10)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ohhcut11",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84507 /* ~I don't want to go quite yet. I can't help but feel like I'm missing something here.~ */ DO ~SetGlobal("OHH_shroud","OH7200",2)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
  IF ~~ THEN REPLY #84509 /* ~You have what you came for, Hexxat. We'll leave when I'm satisfied this place has nothing more to offer.~ */ DO ~SetGlobal("OHH_shroud","OH7200",2)
SetGlobalTimer("OHH_leavingtimer","LOCALS",TEN_ROUNDS)
~ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_unprovedreturn","GLOBAL",1)
~ THEN BEGIN 554 // from:
  SAY #84273 /* ~I've got to take the Shroud to Cabrina.~ [OH84273] */
  IF ~~ THEN REPLY #84276 /* ~I'll come with you.~ */ DO ~SetGlobal("OHH_unprovedreturn","GLOBAL",2)
~ GOTO 555
  IF ~~ THEN REPLY #84278 /* ~Where?~ */ DO ~SetGlobal("OHH_unprovedreturn","GLOBAL",2)
~ GOTO 564
  IF ~~ THEN REPLY #84280 /* ~I'll meet you back at the Copper Coronet.~ */ DO ~TakePartyItem("ohhshrou")
DestroyItem("ohhshrou")
DestroyItem("ohhcasq")
SetGlobal("OHH_unprovedreturn","GLOBAL",2)
AddJournalEntry(85194,INFO)
SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 555 // from: 564.0 554.0
  SAY #84304 /* ~That isn't necessary.~ [OH84304] */
  IF ~~ THEN REPLY #84313 /* ~Not necessary, but I'd like to do it all the same.~ */ GOTO 556
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #84317 /* ~After all we've been through, you'd deny me the pleasure of your company?~ */ GOTO 558
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #84317 /* ~After all we've been through, you'd deny me the pleasure of your company?~ */ GOTO 559
  IF ~~ THEN REPLY #84320 /* ~Very well. If you'd rather I not come, I'll not force the issue.~ */ GOTO 557
END

IF ~~ THEN BEGIN 556 // from: 555.0
  SAY #84324 /* ~Very well. If you must.~ [OH84324] */
  IF ~~ THEN DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 557 // from: 565.2 564.2 555.3
  SAY #84327 /* ~I'll meet you back at the Coronet.~ [OH84327] */
  IF ~~ THEN DO ~TakePartyItem("ohhshrou")
DestroyItem("ohhshrou")
DestroyItem("ohhcasq")
AddJournalEntry(85194,INFO)
SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 558 // from: 567.0 566.0 565.0 555.1
  SAY #84336 /* ~Very well, join me if you must.~ [OH84336] */
  IF ~~ THEN DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 559 // from: 555.2
  SAY #84340 /* ~Far be it from me to deny you anything, <CHARNAME>—particularly pleasure.~ [OH84340] */
  IF ~~ THEN REPLY #84344 /* ~Let's go.~ */ DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
  IF ~~ THEN REPLY #84346 /* ~That's my girl.~ */ GOTO 560
  IF ~~ THEN REPLY #84348 /* ~Pleasure can wait till you've finished this business with Cabrina.~ */ DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 560 // from: 559.1
  SAY #84351 /* ~I'm no girl. And I'm certainly not yours.~ [OH84351] */
  IF ~~ THEN REPLY #84353 /* ~I meant no offense.~ */ GOTO 562
  IF ~~ THEN REPLY #84354 /* ~You're right, of course. But don't be surprised if I try to change the last part.~ */ GOTO 563
  IF ~~ THEN REPLY #84357 /* ~Take the compliment, Hexxat.~ */ GOTO 561
END

IF ~~ THEN BEGIN 561 // from: 560.2
  SAY #84359 /* ~I'll take one when I hear one. Let's go.~ [OH84359] */
  IF ~~ THEN DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 562 // from: 560.0
  SAY #84361 /* ~Forget it. I'm just anxious to be done with L. Let's go finish this.~ [OH84361] */
  IF ~~ THEN DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 563 // from: 560.1
  SAY #84363 /* ~Best of luck with that. Now let's go finish this.~ [OH84363] */
  IF ~~ THEN DO ~AddJournalEntry(85193,INFO)
StartCutSceneMode()
StartCutSceneEx("ohhcut08",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 564 // from: 554.1
  SAY #84368 /* ~The Copper Coronet.~ [OH84368] */
  IF ~~ THEN REPLY #84371 /* ~I'll come with you.~ */ GOTO 555
  IF ~  False()
~ THEN REPLY #84374 /* ~Usually, you meet in a more public setting. Why the change?~ */ GOTO 565
  IF ~~ THEN REPLY #84377 /* ~I'll leave you to it.~ */ GOTO 557
END

IF ~~ THEN BEGIN 565 // from: 564.1
  SAY #84379 /* ~I don't know, and I'm not inclined to care.~ [OH84379] */
  IF ~~ THEN REPLY #84383 /* ~I don't like it. I better go with you.~ */ GOTO 558
  IF ~~ THEN REPLY #84384 /* ~Send word to Cabrina to meet you at the Coronet. You'll be safer there.~ */ GOTO 566
  IF ~~ THEN REPLY #84385 /* ~Take care of yourself.~ */ GOTO 557
END

IF ~~ THEN BEGIN 566 // from: 565.1
  SAY #84386 /* ~That's not how this game is played.~ [OH84386] */
  IF ~~ THEN REPLY #84387 /* ~I better come with you then. Just in case you need backup.~ */ GOTO 558
  IF ~~ THEN REPLY #84388 /* ~I don't like games where the rules change without notice.~ */ GOTO 567
END

IF ~~ THEN BEGIN 567 // from: 566.1
  SAY #84389 /* ~Nobody's asking you to play it. I'll meet you back at the Coronet.~ [OH84389] */
  IF ~~ THEN REPLY #84390 /* ~Wait! I'll come with you. You may need backup.~ */ GOTO 558
  IF ~~ THEN REPLY #84391 /* ~I'll see you there.~ */ DO ~TakePartyItem("ohhshrou")
DestroyItem("ohhshrou")
DestroyItem("ohhcasq")
AddJournalEntry(85194,INFO)
SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)
~ EXIT
END

IF ~~ THEN BEGIN 568 // from:
  SAY #84464 /* ~I do. I believe this concludes my business with L?~ [OH84464] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 72
END

IF ~~ THEN BEGIN 569 // from:
  SAY #84473 /* ~I'll see you around, Cabrina.~ [OH84473] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 74
END

IF ~~ THEN BEGIN 570 // from:
  SAY #84476 /* ~I'll keep it in mind. See you around, Cabrina.~ [OH84476] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 76
END

IF ~~ THEN BEGIN 571 // from:
  SAY #84481 /* ~I was an employee, <CHARNAME>. Not a slave.~ [OH84481] */
  IF ~~ THEN EXTERN ~OHHCABRI~ 77
END

IF WEIGHT #50 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_cabrina","GLOBAL",10)
~ THEN BEGIN 572 // from:
  SAY #84487 /* ~And that would seem to be that.~ [OH84487] */
  IF ~~ THEN REPLY #84492 /* ~You're finally free.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",11)
~ GOTO 575
  IF ~~ THEN REPLY #84496 /* ~You don't seem as pleased about that as I might have hoped.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",11)
~ GOTO 573
  IF ~~ THEN REPLY #84498 /* ~Good riddance to bad rubbish.~ */ DO ~SetGlobal("OHH_cabrina","GLOBAL",11)
~ GOTO 573
END

IF ~~ THEN BEGIN 573 // from: 575.0 572.2 572.1
  SAY #84502 /* ~While L is to blame for my current state, he at least gave me a goal, a reason to keep moving forward in the world.~ [OH84502] */
  IF ~~ THEN REPLY #84508 /* ~You'll find other reasons. Better ones. I hardly think they could be worse.~ */ GOTO 574
  IF ~~ THEN REPLY #84510 /* ~Stay with me, Hexxat. I've goals enough for both of us.~ */ GOTO 576
  IF ~~ THEN REPLY #84511 /* ~No one knows what the future holds. As long as tomorrow awaits, that's reason enough to finish the day.~ */ GOTO 574
END

IF ~~ THEN BEGIN 574 // from: 573.2 573.0
  SAY #84512 /* ~I hope you're right, <CHARNAME>. But I fear you may be wrong.~ [OH84512] */
  IF ~~ THEN DO ~AddJournalEntry(84976,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 575 // from: 572.0
  SAY #84513 /* ~Free, yes... I've dreaded this moment, <CHARNAME>.~ [OH84513] */
  IF ~~ THEN GOTO 573
END

IF ~~ THEN BEGIN 576 // from: 573.1
  SAY #84514 /* ~Oh, yes? What goals are those, then?~ [OH84514] */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #84515 /* ~I think you can probably guess at least one of them.~ */ GOTO 578
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #84515 /* ~I think you can probably guess at least one of them.~ */ GOTO 577
  IF ~~ THEN REPLY #84516 /* ~Riches, fame, wealth, glory, gold, prestige, treasure, honor, prosperity... I'm sure I'm missing something. Did I mention riches and fame? ~ */ GOTO 579
  IF ~~ THEN REPLY #84517 /* ~I've an inheritance to claim. It won't be easy.~ */ GOTO 580
END

IF ~~ THEN BEGIN 577 // from: 576.1
  SAY #84518 /* ~I think you're right. I look forward to seeing you achieve it.~ [OH84518] */
  IF ~~ THEN DO ~AddJournalEntry(84976,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 578 // from: 576.0
  SAY #84519 /* ~Some things are beyond even your reach, <CHARNAME>.~ [OH84519] */
  IF ~~ THEN DO ~AddJournalEntry(84976,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 579 // from: 576.2
  SAY #84520 /* ~Sounds good, but what will we do the day AFTER tomorrow?~ [OH84520] */
  IF ~~ THEN DO ~AddJournalEntry(84976,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 580 // from: 576.3
  SAY #84521 /* ~It could be harder. You could have to do it without me...~ [OH84521] */
  IF ~~ THEN DO ~AddJournalEntry(84976,INFO)
~ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 612 614 615 even though they appear after this state */
~  Global("OHH_keldornfight","GLOBAL",2)
~ THEN BEGIN 581 // from:
  SAY #99459 /* ~What were you thinking, <CHARNAME>? What was the point of this?~ */
  IF ~~ THEN REPLY #99460 /* ~Friction among my allies is a problem. It needed to be resolved.~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
~ GOTO 582
  IF ~~ THEN REPLY #99461 /* ~My own entertainment, of course. And an entertaining distraction it was.~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
~ GOTO 583
  IF ~~ THEN REPLY #99462 /* ~Keldorn's incessant whining was beginning to bore me. He had to die.~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
~ GOTO 583
END

IF ~~ THEN BEGIN 582 // from: 581.0
  SAY #99463 /* ~There must have been a better way than this, this pointless bloodshed.~ */
  IF ~~ THEN REPLY #99464 /* ~A better way? Perhaps. But none so expedient, I think.~ */ GOTO 583
  IF ~~ THEN REPLY #99465 /* ~Probably. But what's done is done.~ */ GOTO 583
  IF ~~ THEN REPLY #99466 /* ~Pointless? Hardly.~ */ GOTO 583
END

IF ~~ THEN BEGIN 583 // from: 582.2 582.1 582.0 581.2 581.1
  SAY #99467 /* ~I thought I had cold blood, <CHARNAME>. You've pure ice running through your veins.~ */
  IF ~~ THEN REPLY #99468 /* ~These are dark times, Hexxat. I must be cold and hard to survive them.~ */ GOTO 584
  IF ~~ THEN REPLY #99469 /* ~I blame Bhaal. And society. But mostly Bhaal.~ */ EXIT
  IF ~~ THEN REPLY #99470 /* ~You'd do well to remember that, vampire.~ */ EXIT
END

IF ~~ THEN BEGIN 584 // from: 583.0
  SAY #99471 /* ~For your sake, <CHARNAME>, I hope the prize is worth the cost.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 585 // from:
  SAY #95252 /* ~I no longer breathe, but my hearing is fine.~ [OH95252] */
  IF ~~ THEN EXTERN ~ANOMENJ~ 338
END

IF ~~ THEN BEGIN 586 // from:
  SAY #95254 /* ~I believe you mean it is OUR decision.~ [OH95254] */
  IF ~~ THEN EXTERN ~ANOMENJ~ 339
END

IF ~~ THEN BEGIN 587 // from:
  SAY #95256 /* ~We are both reasonable people, Anomen. Surely we can work together?~ [OH95256] */
  IF ~~ THEN REPLY #95265 /* ~Well, Anomen? Are you willing to be reasonable?~ */ EXTERN ~ANOMENJ~ 340
  IF ~~ THEN REPLY #95266 /* ~She is making an effort, Anomen. Can't you do the same?~ */ EXTERN ~ANOMENJ~ 342
  IF ~~ THEN REPLY #95267 /* ~I advise you to learn, knight—Hexxat is going nowhere.~ */ EXTERN ~ANOMENJ~ 341
END

IF ~~ THEN BEGIN 588 // from:
  SAY #95259 /* ~You would seriously toss me aside at this zealot's command?~ [OH95259] */
  IF ~~ THEN REPLY #95268 /* ~He is a friend, and I trust his judgment.~ */ GOTO 589
  IF ~~ THEN REPLY #95269 /* ~I'm not tossing you—more gently placing you to the side where you will likely be happier without me.~ */ GOTO 589
  IF ~~ THEN REPLY #95270 /* ~He does not command me. I have made my decision. Go.~ */ GOTO 589
END

IF ~~ THEN BEGIN 589 // from: 588.2 588.1 588.0
  SAY #95260 /* ~You'll regret this, <CHARNAME>. And soon. If you're lucky, you'll still be able to find me at the Copper Coronet when you realize the mistake you've made this <DAYNIGHTALL>.~ [OH95260] */
  IF ~~ THEN DO ~AddJournalEntry(95272,INFO)
SetGlobal("OHH_hexxatleaves","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 590 // from:
  SAY #95278 /* ~You don't want to let me go, <CHARNAME>... There is so much I could do for you... That we could do for each other.~ [OH95278] */
  IF ~~ THEN REPLY #95292 /* ~I hope you're right, Hexxat. I'd hate to lose a friend for nothing.~ */ EXTERN ~ANOMENJ~ 346
  IF ~~ THEN REPLY #95293 /* ~You make it sound tempting, but I'm afraid Anomen's mind is made up, which means my mind is also made up.~ */ GOTO 591
  IF ~~ THEN REPLY #95294 /* ~You are trying to manipulate me, vampire. You should know better. Go now, before I lose patience with you.~ */ GOTO 591
END

IF ~~ THEN BEGIN 591 // from: 590.2 590.1
  SAY #95279 /* ~It's your mistake to make. When you realize the gravity of your error, you may be able to find me at the Copper Coronet—if you are lucky.~ [OH95279] */
  IF ~~ THEN DO ~AddJournalEntry(95299,INFO)
SetGlobal("OHH_hexxatleaves","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 592 // from:
  SAY #102408 /* ~Hello, Bodhi. ~ */
  IF ~~ THEN EXTERN ~BODHI~ 135
END

IF ~~ THEN BEGIN 593 // from:
  SAY #102410 /* ~We'll see if you say the same when this is over.~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
END

IF ~~ THEN BEGIN 594 // from:
  SAY #102305 /* ~I believe Bodhi bargains in good faith. For the moment, at least.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
END

IF ~~ THEN BEGIN 595 // from:
  SAY #102305 /* ~I believe Bodhi bargains in good faith. For the moment, at least.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
END

IF ~~ THEN BEGIN 596 // from:
  SAY #102305 /* ~I believe Bodhi bargains in good faith. For the moment, at least.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
END

IF ~~ THEN BEGIN 597 // from:
  SAY #102305 /* ~I believe Bodhi bargains in good faith. For the moment, at least.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
END

IF ~~ THEN BEGIN 598 // from:
  SAY #102309 /* ~I've endured worse, to be sure.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~MAZZYJ~ 150
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 782
END

IF ~~ THEN BEGIN 599 // from:
  SAY #102309 /* ~I've endured worse, to be sure.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~MAZZYJ~ 150
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 783
END

IF ~~ THEN BEGIN 600 // from:
  SAY #102307 /* ~Let us hope so.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~MAZZYJ~ 150
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 784
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN GOTO 601
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~BODHI~ 137
END

IF ~~ THEN BEGIN 601 // from: 600.4
  SAY #102309 /* ~I've endured worse, to be sure.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~KELDORJ~ 155
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~EraseJournalEntry(47783)
EraseJournalEntry(47805)
EraseJournalEntry(47806)
EraseJournalEntry(47831)
EraseJournalEntry(47837)
EraseJournalEntry(47838)
~ EXTERN ~MAZZYJ~ 150
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 784
END

IF ~~ THEN BEGIN 602 // from:
  SAY #102311 /* ~That was easy. Perhaps too easy.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 130
END

IF ~~ THEN BEGIN 603 // from:
  SAY #102311 /* ~That was easy. Perhaps too easy.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 141
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 131
END

IF ~~ THEN BEGIN 604 // from:
  SAY #102327 /* ~I find that difficult to believe.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
END

IF ~~ THEN BEGIN 605 // from:
  SAY #102327 /* ~I find that difficult to believe.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
END

IF ~~ THEN BEGIN 606 // from:
  SAY #102327 /* ~I find that difficult to believe.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
END

IF ~~ THEN BEGIN 607 // from:
  SAY #102327 /* ~I find that difficult to believe.~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
END

IF ~~ THEN BEGIN 608 // from:
  SAY #102331 /* ~Only one of us will leave this place, Bodhi. Enjoy your last moments while you can.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ GOTO 269
END

IF ~~ THEN BEGIN 609 // from:
  SAY #102331 /* ~Only one of us will leave this place, Bodhi. Enjoy your last moments while you can.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ GOTO 269
END

IF ~~ THEN BEGIN 610 // from:
  SAY #102331 /* ~Only one of us will leave this place, Bodhi. Enjoy your last moments while you can.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ GOTO 269
END

IF ~~ THEN BEGIN 611 // from:
  SAY #102331 /* ~Only one of us will leave this place, Bodhi. Enjoy your last moments while you can.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ EXTERN ~DORNJ~ 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ GOTO 269
END

IF WEIGHT #0 ~  Global("OH_UnderdarkComments","GLOBAL",1)
~ THEN BEGIN 612 // from:
  SAY #102299 /* ~The Underdark. This is... promising...~ */
  IF ~~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ GOTO 613
  IF ~  IsValidForPartyDialogue("neera")
~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXTERN ~NEERAJ~ 138
END

IF ~~ THEN BEGIN 613 // from: 612.1
  SAY #102301 /* ~My thoughts exactly.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("OH_tanner","AR0502",1)
~ THEN BEGIN 614 // from:
  SAY #102316 /* ~*sniff* Whoever lives here is dangerous. Be on your guard.~ */
  IF ~~ THEN DO ~SetGlobal("OH_tanner","AR0502",2)
~ EXIT
END

IF WEIGHT #2 ~  Global("OH_Adalon","AR2102",1)
~ THEN BEGIN 615 // from:
  SAY #102334 /* ~You would battle a silver dragon? Are you mad?~ */
  IF ~~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
~ EXIT
  IF ~  InParty("rasaad")
~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
ActionOverride("rasaad",ChangeAIScript("",DEFAULT))
ActionOverride("rasaad",Enemy())
ActionOverride("rasaad",LeaveParty())
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 845
END

IF ~~ THEN BEGIN 616 // from:
  SAY #99887 /* ~None taken.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 617 // from:
  SAY #83027 /* ~You've got to let the past go. It'll drag you into the Abyss if you let it.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_CHASM","OH4220",2)
~ EXIT
END

IF WEIGHT #52 ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 618 // from:
  SAY #83154 /* ~This isn't somewhere we want to be, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 182
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 275
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 222
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 160
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 601
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 535
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 848
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 275
END

IF WEIGHT #53 ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",18)
~ THEN BEGIN 619 // from:
  SAY #83242 /* ~I've been trapped in a cold, dark place before, <CHARNAME>. It's not an experience I care to repeat. We must leave, now.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",19)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 933
END

IF ~~ THEN BEGIN 620 // from:
  SAY #84731 /* ~Seriously, <CHARNAME>? Have you no shame?~ */
  IF ~~ THEN EXTERN ~OHRTALLU~ 15
END

IF ~~ THEN BEGIN 621 // from:
  SAY #82095 /* ~You truly are amazing, <CHARNAME>. Wherever you go, you find new friends.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 266
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 477
END

IF ~~ THEN BEGIN 622 // from:
  SAY #82719 /* ~For the love of all the gods, can we just kill them now?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 623 // from:
  SAY #82994 /* ~I don't believe that worked.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1006
END

IF ~~ THEN BEGIN 624 // from:
  SAY #82376 /* ~How <PRO_HESHE> speaks the truth. You have no idea.~ */
  IF ~~ THEN EXTERN ~OHRMEEMS~ 52
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 539
END

IF ~~ THEN BEGIN 625 // from:
  SAY #82434 /* ~I've always found the desperate make the best clients.~ */
  IF ~~ THEN EXTERN ~OHRMEEMS~ 63
END

IF ~~ THEN BEGIN 626 // from:
  SAY #82595 /* ~Ignore <PRO_HIMHER>; <PRO_HESHE> thinks <PRO_HESHE>'s being funny.~ */
  IF ~~ THEN EXTERN ~OHRCUDDY~ 18
END

IF ~~ THEN BEGIN 627 // from:
  SAY #82601 /* ~I find Sharran blood tastes basically the same as anyone else's.~ */
  IF ~~ THEN EXTERN ~OHRCUDDY~ 19
END

IF WEIGHT #54 ~  Global("OHD_constelterject","OH5500",1)
~ THEN BEGIN 628 // from:
  SAY #89869 /* ~This isn't getting us any closer to the Scroll, <CHARNAME>. And I don't know how much longer I can take this.~ [OHBLANK] */
  IF ~~ THEN DO ~SetGlobal("OHD_constelterject","OH5500",2)
~ EXIT
END

IF WEIGHT #55 ~  Global("OHD_dorninitial","OH5500",2)
~ THEN BEGIN 629 // from:
  SAY #89666 /* ~This is no place for my kind, <CHARNAME>. Let's get this done quickly before my flesh burns off my bones.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_dorninitial","OH5500",3)
ApplyDamagePercent(Myself,10,FIRE)
~ EXIT
  IF ~  OR(3)
PartyHasItem("ohdsw2hb")
PartyHasItem("ohdsw2hc")
PartyHasItem("ohdsw2hd")
~ THEN DO ~ApplyDamagePercent(Myself,10,FIRE)
~ EXTERN ~OHDSWORD~ 1
END

IF WEIGHT #56 ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 630 // from:
  SAY #92225 /* ~It's good to be back. Especially as something other than a pile of ash.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 224
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 274
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 603
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 223
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 152
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 276
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 174
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1040
END

IF ~~ THEN BEGIN 631 // from:
  SAY #92111 /* ~That's the way the game is played.~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 480
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 280
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 185
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 225
END

IF WEIGHT #57 ~  Global("OHD_finished_comments","OH5500",1)
~ THEN BEGIN 632 // from:
  SAY #92098 /* ~Let's get out of here. I'm burning from the inside.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_finished_comments","OH5500",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 1008
END

IF ~~ THEN BEGIN 633 // from:
  SAY #91377 /* ~Finally. Let's get your name off the Scroll of Retribution and get out of here before I burst into flames.~ */
  IF ~~ THEN EXTERN ~OHDRDEF~ 1
END

IF ~~ THEN BEGIN 634 // from:
  SAY #90114 /* ~We're not here for food, <CHARNAME>. I don't know how much longer I can be here at all.~ */
  IF ~~ THEN EXTERN ~OHDRIKKO~ 0
END

IF ~~ THEN BEGIN 635 // from:
  SAY #85489 /* ~Don't make this harder than it has to be, Phreya.~ [OH85489] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 30
END

IF ~~ THEN BEGIN 636 // from:
  SAY #85490 /* ~You knew the risks when you took the job, Phreya.~ [OH85490] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 31
END

IF ~~ THEN BEGIN 637 // from:
  SAY #98236 /* ~A happy ending to satisfy your readers. I hope the truth matches the tale.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 638 // from:
  SAY #98238 /* ~I can think of worse fates. Though I think you overstate the danger I shall face—at least, I hope you do.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 639 // from:
  SAY #98320 /* ~So this is what it comes down to. All the dangers you faced, all the sacrifices you made, all for this.~ [OH98320] */
  IF ~~ THEN GOTO 640
END

IF ~~ THEN BEGIN 640 // from: 639.0
  SAY #98321 /* ~I can think of worse gods than you, <CHARNAME>. But I ask you—are you truly comfortable with the idea of becoming <PRO_LADYLORD> of Murder?~ [OH98321] */
  IF ~~ THEN GOTO 642
  IF ~  OR(4)
ReputationLT(Player1,8)
Alignment(Player1,CHAOTIC_EVIL)
Alignment(Player1,NEUTRAL_EVIL)
Alignment(Player1,LAWFUL_EVIL)
~ THEN GOTO 641
END

IF ~~ THEN BEGIN 641 // from: 640.1
  SAY #98322 /* ~Your disposition makes you well suited to be the god of murder, if that is what you truly desire.~ [OH98322] */
  IF ~~ THEN GOTO 642
END

IF ~~ THEN BEGIN 642 // from: 641.0 640.0
  SAY #98323 /* ~I am no longer mortal. I did not seek to become what I am. I had no choice in the matter. You do.~ [OH98323] */
  IF ~~ THEN GOTO 643
END

IF ~~ THEN BEGIN 643 // from: 642.0
  SAY #98324 /* ~Before you make it, ask yourself, "Is this truly what I want to be?" The blood of Bhaal runs through your veins, but your destiny is your own. There will be no turning back from the choice you make now, so choose wisely.~ [OH98324] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 365
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 438
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 248
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 563
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 364
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 436
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 246
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 561
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 152
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 167
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 205
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 209
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 250
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 291
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
  IF ~  IsValidForPartyDialogue("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 905
  IF ~  IsValidForPartyDialogue("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 906
END

IF ~~ THEN BEGIN 644 // from:
  SAY #98325 /* ~So this is what it comes down to. All the dangers you faced, all the sacrifices you made, all for this.~ [OH98325] */
  IF ~~ THEN GOTO 645
END

IF ~~ THEN BEGIN 645 // from: 644.0
  SAY #98326 /* ~I've enjoyed our time together, <CHARNAME>. More than that—I cherished it. In your arms, I felt I could endure all that I had lost.~ [OH98326] */
  IF ~~ THEN GOTO 646
END

IF ~~ THEN BEGIN 646 // from: 645.0
  SAY #98327 /* ~I am selfish, I admit it. But I'm not so selfish that I would take from you that which I fought so hard to attain—a choice. Cast aside mortality and seize your destiny, if that is your wish. If it is, I hope the new Lady of Murder will not forget what we once had, and look favorably upon me.~ [OH98327] */
  IF ~~ THEN GOTO 647
END

IF ~~ THEN BEGIN 647 // from: 646.0
  SAY #98328 /* ~But know also that if you choose to continue to walk the Prime, you will have me at your side until the very end. Loyalty and love—these were nothing but abstractions to me... until I met you.~ [OH98328] */
  IF ~~ THEN GOTO 648
END

IF ~~ THEN BEGIN 648 // from: 647.0
  SAY #98329 /* ~Now, choose.~ [OH98329] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 365
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 438
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 248
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 563
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 364
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 436
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 246
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 561
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 152
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 167
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 205
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 209
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 250
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 291
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
  IF ~  IsValidForPartyDialogue("Dorn")
!Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 905
  IF ~  IsValidForPartyDialogue("Dorn")
Global("DornRomanceActive","GLOBAL",2)
Global("OHD_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHD_FinSol","GLOBAL",1)
~ EXTERN ~DORNJ~ 906
END

IF ~~ THEN BEGIN 649 // from:
  SAY #100190 /* ~You have made your decision, <CHARNAME>. I hope you don't come to regret it. Undeath nearly destroyed me; godhood, I suspect, is a heavier burden still.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 147
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 374
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 448
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 259
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 155
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 880
  IF ~  IsValidForPartyDialogue("Dorn")
Global("OHD_PCGod","GLOBAL",0)
Global("DornRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHD_PCGod","GLOBAL",1)
~ EXTERN ~DORNJ~ 907
END

IF ~~ THEN BEGIN 650 // from:
  SAY #100191 /* ~You've made a difficult decision, <CHARNAME>, but it is the right one. Undeath is a burden that nearly destroyed me—who knows what changes godhood would entail? Who in their right mind would WANT to know?~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 148
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 449
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 260
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 573
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 156
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 5
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 7
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCNotGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCNotGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 881
  IF ~  IsValidForPartyDialogue("Dorn")
Global("OHD_PCNotGod","GLOBAL",0)
Global("DornRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHD_PCNotGod","GLOBAL",1)
~ EXTERN ~DORNJ~ 908
END

IF ~~ THEN BEGIN 651 // from:
  SAY #99006 /* ~I have known pain, wraith. There is little you can do to hurt me.~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF WEIGHT #58 ~  Global("OHH_wraith","GLOBAL",1)
~ THEN BEGIN 652 // from:
  SAY #99007 /* ~Aunt Daxxii. It's been a while.~ */
  IF ~~ THEN EXTERN ~OHHAUNT~ 0
END

IF ~~ THEN BEGIN 653 // from:
  SAY #99008 /* ~Why are you here? You died many, many years ago. ~ */
  IF ~~ THEN EXTERN ~OHHAUNT~ 1
END

IF ~~ THEN BEGIN 654 // from:
  SAY #99009 /* ~Mother was a Mazewalker. She left to serve Ubtao. You know this.~ */
  IF ~~ THEN EXTERN ~OHHAUNT~ 4
END

IF ~~ THEN BEGIN 655 // from:
  SAY #99010 /* ~I don't believe you.~ */
  IF ~~ THEN EXTERN ~OHHAUNT~ 7
END

IF ~~ THEN BEGIN 656 // from:
  SAY #99011 /* ~You all did. It was centuries ago.~ */
  IF ~~ THEN EXTERN ~OHHAUNT~ 8
END

IF WEIGHT #59 ~  Global("HexxatToBLovetalks","GLOBAL",2)
~ THEN BEGIN 657 // from:
  SAY #97048 /* ~This is ridiculous. What can this Melissan possibly hope to achieve?~ */
  IF ~~ THEN REPLY #97243 /* ~I have no idea.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 658
  IF ~~ THEN REPLY #97244 /* ~She's trying to save the Bhaalspawn. A noble goal, I'd say.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 658
  IF ~~ THEN REPLY #97245 /* ~I don't know. Nor do I care to.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 658
END

IF ~~ THEN BEGIN 658 // from: 657.2 657.1 657.0
  SAY #97049 /* ~Were the situation different, most of these people would happily bathe in her blood. No offense intended, <CHARNAME>.~ */
  IF ~~ THEN REPLY #97246 /* ~None taken.~ */ GOTO 660
  IF ~~ THEN REPLY #97247 /* ~I've seen you bathe in the blood of others, Hexxat. Who are you to judge the Bhaalspawn?~ */ GOTO 659
  IF ~~ THEN REPLY #97248 /* ~I'd bathe in her blood myself, if the opportunity were presented.~ */ GOTO 661
END

IF ~~ THEN BEGIN 659 // from: 658.1
  SAY #97050 /* ~One who knows what it's like to be held against my will.~ */
  IF ~~ THEN GOTO 662
END

IF ~~ THEN BEGIN 660 // from: 658.0
  SAY #97051 /* ~You're an exception to the rule. ~ */
  IF ~~ THEN GOTO 662
END

IF ~~ THEN BEGIN 661 // from: 658.2
  SAY #97052 /* ~My point exactly.~ */
  IF ~~ THEN GOTO 662
END

IF ~~ THEN BEGIN 662 // from: 661.0 660.0 659.0
  SAY #97053 /* ~Enclosing so many volatile creatures in such a small space can lead to nothing good.~ */
  IF ~~ THEN REPLY #97249 /* ~She's just trying to help.~ */ GOTO 665
  IF ~~ THEN REPLY #97250 /* ~Perhaps they'll realize the danger they're in and band together.~ */ GOTO 664
  IF ~~ THEN REPLY #97251 /* ~A few more weeks and things here are going to get... entertaining.~ */ GOTO 663
END

IF ~~ THEN BEGIN 663 // from: 662.2
  SAY #97054 /* ~That's one word for it.~ */
  IF ~~ THEN GOTO 665
END

IF ~~ THEN BEGIN 664 // from: 662.1
  SAY #97055 /* ~You can't possibly be that naïve.~ */
  IF ~~ THEN GOTO 665
END

IF ~~ THEN BEGIN 665 // from: 664.0 663.0 662.0
  SAY #97056 /* ~Melissan is a fool if she thinks this will change anything.~ */
  IF ~~ THEN REPLY #97252 /* ~Must you always be so cynical?~ */ GOTO 666
  IF ~~ THEN REPLY #97253 /* ~Perhaps, perhaps not. Only time will tell.~ */ GOTO 667
  IF ~~ THEN REPLY #97254 /* ~Agreed. This isn't going to end well.~ */ GOTO 668
END

IF ~~ THEN BEGIN 666 // from: 665.0
  SAY #97057 /* ~It's the safest way to be—a lesson I learned the hard way.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 667 // from: 665.1
  SAY #97058 /* ~And I don't think there is much time left.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 668 // from: 665.2
  SAY #97059 /* ~No. It won't.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #60 ~  Global("HexxatToBLovetalks","GLOBAL",4)
~ THEN BEGIN 669 // from:
  SAY #97060 /* ~Still collecting the broken, bedraggled, and insane to your cause, I see.~ */
  IF ~~ THEN DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 670
END

IF ~~ THEN BEGIN 670 // from: 669.0
  SAY #97061 /* ~It used to mystify me, but seeing your little plane—you're really rather broken yourself, aren't you, darling Bhaalspawn?~ */
  IF ~~ THEN REPLY #97255 /* ~Isn't everyone?~ */ GOTO 671
  IF ~~ THEN REPLY #97256 /* ~You just noticed that now?~ */ GOTO 672
  IF ~~ THEN REPLY #97257 /* ~Excuse me?~ */ GOTO 673
END

IF ~~ THEN BEGIN 671 // from: 670.0
  SAY #97062 /* ~No.~ */
  IF ~~ THEN GOTO 674
END

IF ~~ THEN BEGIN 672 // from: 670.1
  SAY #97063 /* ~I wouldn't say I'm just noticing it now, but it's definitely been confirmed. Just look around you.~ */
  IF ~~ THEN GOTO 674
END

IF ~~ THEN BEGIN 673 // from: 670.2
  SAY #97064 /* ~Don't play coy. ~ */
  IF ~~ THEN GOTO 674
END

IF ~~ THEN BEGIN 674 // from: 673.0 672.0 671.0
  SAY #97065 /* ~This motley collection—that place—are reflections of you. The true you, hidden from the world.~ */
  IF ~~ THEN GOTO 675
END

IF ~~ THEN BEGIN 675 // from: 674.0
  SAY #97066 /* ~And you choose to let me see it. I'm touched.~ */
  IF ~~ THEN REPLY #97258 /* ~Touched in the head. Tell me you don't actually believe the nonsense you're spouting.~ */ GOTO 676
  IF ~~ THEN REPLY #98350 /* ~I'd be happy to show you more later today...~ */ GOTO 679
  IF ~~ THEN REPLY #97259 /* ~Is everything a joke to you?~ */ GOTO 677
  IF ~~ THEN REPLY #97260 /* ~This place is nothing like me. Nothing. ~ */ GOTO 678
END

IF ~~ THEN BEGIN 676 // from: 675.0
  SAY #97067 /* ~Nonsense, is it? If it makes you feel better, I'll take your word for it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 677 // from: 675.2
  SAY #97068 /* ~You think I'm joking? I'm sorry to hear it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 678 // from: 675.3
  SAY #97069 /* ~If you insist.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 679 // from: 675.1
  SAY #98351 /* ~Mmm... I'll take that as a promise.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #61 ~  Global("HexxatToBLovetalks","GLOBAL",6)
~ THEN BEGIN 680 // from:
  SAY #97070 /* ~You know, <CHARNAME>, I don't think I've ever met anyone quite so intent on getting themselves killed.~ */
  IF ~~ THEN REPLY #97261 /* ~Is that what you think I'm doing?~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 681
  IF ~~ THEN REPLY #97262 /* ~That's less my intent than an unfortunate byproduct of what I do intend.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 681
  IF ~~ THEN REPLY #97263 /* ~You're a woman of the world, Hexxat. I'm sure you've met women far more suicidal than I. Probably even drove a few to it.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 681
END

IF ~~ THEN BEGIN 681 // from: 680.2 680.1 680.0
  SAY #97071 /* ~Normal adventurers save a few villages, slay a few dragons, explore foreign lands... They're brave, of course, terribly brave. But there comes a time when they must stop. The lucky ones choose to do so—they retire and live on, fat and happy.~ */
  IF ~~ THEN GOTO 682
END

IF ~~ THEN BEGIN 682 // from: 681.0
  SAY #97072 /* ~You aren't one of the lucky ones. You're facing the children of a dead god. Our adventures before were dangerous, but nothing to compare to this.~ */
  IF ~~ THEN REPLY #97264 /* ~No more dangerous than I am. I am a child of Bhaal, after all.~ */ GOTO 683
  IF ~~ THEN REPLY #97265 /* ~Bhaalspawn fall just as hard as everyone else. Trust me, I know what I'm talking about.~ */ GOTO 684
  IF ~~ THEN REPLY #97266 /* ~You think I want to do this?~ */ GOTO 685
END

IF ~~ THEN BEGIN 683 // from: 682.0
  SAY #97073 /* ~One Bhaalspawn standing against many.~ */
  IF ~~ THEN GOTO 685
END

IF ~~ THEN BEGIN 684 // from: 682.1
  SAY #97074 /* ~Technically, they disintegrate, but I see your point.~ */
  IF ~~ THEN GOTO 685
END

IF ~~ THEN BEGIN 685 // from: 684.0 683.0 682.2
  SAY #97075 /* ~You could stop. You don't have to throw your life away.~ */
  IF ~~ THEN REPLY #97267 /* ~I can't stop now. Even if I could, I wouldn't.~ */ GOTO 686
  IF ~~ THEN REPLY #97268 /* ~Even if I do run, they'll find me eventually. There's only one way to end this. ~ */ GOTO 686
  IF ~~ THEN REPLY #97269 /* ~I'm caught in a prophecy, Hexxat. I don't have a choice. I'd think you of all people could understand what that's like.~ */ GOTO 687
END

IF ~~ THEN BEGIN 686 // from: 687.0 685.1 685.0
  SAY #97076 /* ~Just be careful. Life is precious. I don't want to see you waste it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 687 // from: 685.2
  SAY #97077 /* ~I know the feeling better than most.~ */
  IF ~~ THEN GOTO 686
END

IF WEIGHT #62 ~  Global("HexxatToBLovetalks","GLOBAL",8)
~ THEN BEGIN 688 // from:
  SAY #87298 /* ~There's something I need to tell you, <CHARNAME>.~ [OH87298] */
  IF ~~ THEN REPLY #87341 /* ~I'm all yours, Hexxat. What's up?~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
~ GOTO 691
  IF ~~ THEN REPLY #87342 /* ~That sounds dire.~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
~ GOTO 690
  IF ~~ THEN REPLY #87343 /* ~Can it wait?~ */ DO ~IncrementGlobal("HexxatToBLovetalks","GLOBAL",1)
~ GOTO 689
END

IF ~~ THEN BEGIN 689 // from: 688.2
  SAY #87299 /* ~If it could wait, I wouldn't bring it up in the first place.~ [OH87299] */
  IF ~~ THEN GOTO 691
END

IF ~~ THEN BEGIN 690 // from: 688.1
  SAY #87300 /* ~It could be.~ [OH87300] */
  IF ~~ THEN GOTO 691
END

IF ~~ THEN BEGIN 691 // from: 690.0 689.0 688.0
  SAY #87301 /* ~I find myself... feeling things. Things I'd rather not feel.~ [OH87301] */
  IF ~~ THEN REPLY #87344 /* ~Better to feel something than nothing at all.~ */ GOTO 692
  IF ~~ THEN REPLY #87345 /* ~You want a healing potion?~ */ GOTO 692
  IF ~~ THEN REPLY #87346 /* ~You want to discuss feelings? I thought you were better than that. Begone.~ */ GOTO 706
END

IF ~~ THEN BEGIN 692 // from: 691.1 691.0
  SAY #87302 /* ~These sorts of feelings can be dangerous. I spent a lifetime avoiding exactly the sort of entanglement I now find myself considering.~ [OH87302] */
  IF ~~ THEN REPLY #87347 /* ~Change can be a good thing.~ */ GOTO 699
  IF ~~ THEN REPLY #87348 /* ~And who would you be entangled with?~ */ GOTO 693
  IF ~~ THEN REPLY #87349 /* ~We'll not be getting entangled, I can assure you of that.~ */ GOTO 706
END

IF ~~ THEN BEGIN 693 // from: 692.1
  SAY #87303 /* ~Forget I said anything.~ [OH87303] */
  IF ~~ THEN REPLY #87350 /* ~No, no. Please. Go on.~ */ GOTO 699
  IF ~~ THEN REPLY #87351 /* ~Wait, wait. I was just joking.~ */ GOTO 694
  IF ~~ THEN REPLY #87352 /* ~As you wish.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 694 // from: 693.1
  SAY #87304 /* ~You mock my feelings. I would do the same were I in your place.~ [OH87304] */
  IF ~~ THEN REPLY #87353 /* ~I would never mock you, Hexxat.~ */ GOTO 696
  IF ~~ THEN REPLY #87354 /* ~We share a sense of humor.~ */ GOTO 719
  IF ~~ THEN REPLY #87355 /* ~Mock your feelings? Impossible. You have no feelings.~ */ GOTO 695
END

IF ~~ THEN BEGIN 695 // from: 694.2
  SAY #87305 /* ~You truly believe that?~ [OH87305] */
  IF ~~ THEN GOTO 706
END

IF ~~ THEN BEGIN 696 // from: 694.0
  SAY #87306 /* ~I deserve no better, letting myself fall in—letting this happen.~ [OH87306] */
  IF ~~ THEN REPLY #87356 /* ~You say that like it's a bad thing.~ */ GOTO 697
  IF ~~ THEN REPLY #87357 /* ~Letting what happen?~ */ GOTO 700
  IF ~~ THEN REPLY #87358 /* ~Whatever you've fallen in, I'm sure you'll climb out again, in time. I've long admired your climbing skills.~ */ GOTO 706
END

IF ~~ THEN BEGIN 697 // from: 696.0
  SAY #87307 /* ~I was careless. When I get careless, people die. I would not see that happen to you.~ [OH87307] */
  IF ~~ THEN REPLY #87359 /* ~That makes two of us.~ */ GOTO 698
  IF ~~ THEN REPLY #87360 /* ~You can't control everything in your world, Hexxat. I know that won't stop you from trying, but it's still the truth.~ */ GOTO 699
  IF ~~ THEN REPLY #87361 /* ~Dying isn't in my plans.~ */ GOTO 698
END

IF ~~ THEN BEGIN 698 // from: 697.2 697.0
  SAY #87308 /* ~Good. Then we'll say no more about it.~ [OH87308] */
  IF ~~ THEN REPLY #87362 /* ~I'm afraid the cat's out of the sack now. We have to discuss this.~ */ GOTO 699
  IF ~~ THEN REPLY #87363 /* ~All right, though I'm not entirely sure what we're saying no more about.~ */ GOTO 721
  IF ~~ THEN REPLY #87364 /* ~Agreed.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 699 // from: 720.0 719.0 698.0 697.1 693.0 692.0
  SAY #87309 /* ~I think you know where I stand. How do you feel about it?~ [OH87309] */
  IF ~~ THEN REPLY #87365 /* ~Are my feelings not obvious?~ */ GOTO 717
  IF ~~ THEN REPLY #87366 /* ~You think I know where you stand? Think again.~ */ GOTO 700
  IF ~~ THEN REPLY #87367 /* ~I have no feelings one way or the other.~ */ GOTO 703
END

IF ~~ THEN BEGIN 700 // from: 720.1 699.1 696.1
  SAY #87310 /* ~You would make me say it?~ [OH87310] */
  IF ~~ THEN REPLY #87368 /* ~I'm afraid so.~ */ GOTO 722
  IF ~~ THEN REPLY #87369 /* ~You need say nothing more. I understand.~ */ GOTO 701
  IF ~~ THEN REPLY #87370 /* ~Some things are better left unsaid. I believe this is one of them.~ */ GOTO 706
END

IF ~~ THEN BEGIN 701 // from: 700.1
  SAY #87311 /* ~What are you going to do about it?~ [OH87311] */
  IF ~~ THEN REPLY #87371 /* ~I think the question is what are WE going to do about it.~ */ GOTO 711
  IF ~~ THEN REPLY #87372 /* ~Whatever you'll let me.~ */ GOTO 702
  IF ~~ THEN REPLY #87373 /* ~Nothing. Nor should you.~ */ GOTO 706
END

IF ~~ THEN BEGIN 702 // from: 701.1
  SAY #87312 /* ~And when that's done? What then?~ [OH87312] */
  IF ~~ THEN REPLY #87374 /* ~I don't know, Hexxat. What then?~ */ GOTO 709
  IF ~~ THEN REPLY #87375 /* ~We'll burn that bridge when we cross it.~ */ GOTO 703
  IF ~~ THEN REPLY #87376 /* ~Then we'll do it again.~ */ GOTO 705
END

IF ~~ THEN BEGIN 703 // from: 702.1 699.2
  SAY #87313 /* ~That is not the answer I was looking for, <CHARNAME>. But it is the one I needed. This discussion is over—in fact, it never happened.~ [OH87313] */
  IF ~~ THEN REPLY #87377 /* ~What?~ */ GOTO 704
  IF ~~ THEN REPLY #87378 /* ~Come on, Hexxat. There's no reason to be like that.~ */ GOTO 704
  IF ~~ THEN REPLY #87379 /* ~Is this going to affect our friendship?~ */ GOTO 707
END

IF ~~ THEN BEGIN 704 // from: 716.1 716.0 706.0 703.1 703.0
  SAY #87314 /* ~It NEVER happened. I trust we understand each other.~ [OH87314] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 705 // from: 702.2
  SAY #87315 /* ~You can only avoid this for so long, <CHARNAME>.~ [OH87315] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #87380 /* ~All right then, here it is: I love you. I have loved you for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 715
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #87380 /* ~All right then, here it is: I love you. I have loved you for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 714
  IF ~~ THEN REPLY #87381 /* ~I'm sure you're right. But you can believe I'm going to find out exactly how long that is.~ */ GOTO 706
  IF ~~ THEN REPLY #87382 /* ~That remains to be seen.~ */ GOTO 706
END

IF ~~ THEN BEGIN 706 // from: 725.2 723.2 722.2 720.2 719.1 713.0 710.0 705.3 705.2 701.2 700.2 696.2 695.0 692.2 691.2
  SAY #87316 /* ~That is not what I wanted to hear. It is, however, what I needed to hear, and I'm thankful for that. This discussion is over. In fact, it never happened.~ [OH87316] */
  IF ~~ THEN REPLY #87377 /* ~What?~ */ GOTO 704
  IF ~~ THEN REPLY #87383 /* ~Don't be that way, Hexxat. We can still be friends.~ */ GOTO 707
  IF ~~ THEN REPLY #87384 /* ~There's no need for this to affect our working relationship.~ */ GOTO 708
END

IF ~~ THEN BEGIN 707 // from: 716.2 706.1 703.2
  SAY #87317 /* ~We aren't friends, <CHARNAME>. We are professional colleagues. Nothing more. I trust we understand each other. ~ [OH87317] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 708 // from: 729.0 726.0 706.2
  SAY #87318 /* ~We're both professionals. I trust we'll both do what we need to do to see the job done.~ [OH87318] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 709 // from: 702.0
  SAY #87319 /* ~Then you will have a decision to make.~ [OH87319] */
  IF ~~ THEN REPLY #87385 /* ~Then WE will have a decision to make.~ */ GOTO 711
  IF ~~ THEN REPLY #87386 /* ~I've made my decision, Hexxat. I made it quite some time ago.~ */ GOTO 712
  IF ~~ THEN REPLY #87387 /* ~When the time comes, I will make it.~ */ GOTO 710
END

IF ~~ THEN BEGIN 710 // from: 709.2
  SAY #87320 /* ~The time has come and gone, <CHARNAME>.~ [OH87320] */
  IF ~~ THEN GOTO 706
END

IF ~~ THEN BEGIN 711 // from: 709.0 701.0
  SAY #87321 /* ~My decision is made. We would not be talking about this otherwise.~ [OH87321] */
  IF ~~ THEN REPLY #87388 /* ~I made my decision a long time ago.~ */ GOTO 712
  IF ~~ THEN REPLY #87389 /* ~So you love me. That's what you're saying.~ */ GOTO 724
  IF ~~ THEN REPLY #87392 /* ~I make the decisions here, Hexxat. Not you.~ */ GOTO 726
END

IF ~~ THEN BEGIN 712 // from: 711.0 709.1
  SAY #87322 /* ~And?~ [OH87322] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #87394 /* ~If you truly need to ask: I am deeply in love with you. Have been for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 715
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #87394 /* ~If you truly need to ask: I am deeply in love with you. Have been for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 714
  IF ~~ THEN REPLY #87395 /* ~Isn't it obvious?~ */ GOTO 717
  IF ~~ THEN REPLY #87398 /* ~There is nothing between us. I'm sorry.~ */ GOTO 713
END

IF ~~ THEN BEGIN 713 // from: 712.3
  SAY #87323 /* ~No, don't be sorry.~ [OH87323] */
  IF ~~ THEN GOTO 706
END

IF ~~ THEN BEGIN 714 // from: 717.1 712.1 705.1
  SAY #87324 /* ~You're mad.~ [OH87324] */
  IF ~~ THEN REPLY #87405 /* ~I'm in love. It amounts to much the same thing.~ */ GOTO 727
  IF ~~ THEN REPLY #87406 /* ~Am I? So be it.~ */ GOTO 727
  IF ~~ THEN REPLY #87407 /* ~Wrong answer, Hexxat.~ */ GOTO 728
END

IF ~~ THEN BEGIN 715 // from: 717.0 712.0 705.0
  SAY #87325 /* ~You are joking.~ [OH87325] */
  IF ~~ THEN REPLY #87408 /* ~No. It would be easier if I was.~ */ GOTO 728
  IF ~~ THEN REPLY #87409 /* ~Yes! But I had you going, didn't I? Admit it, you almost believed me.~ */ GOTO 716
  IF ~~ THEN REPLY #87410 /* ~I open my heart to you and this is what I get?~ */ GOTO 728
END

IF ~~ THEN BEGIN 716 // from: 715.1
  SAY #87326 /* ~I almost did. This discussion is over. In fact, it never happened.~ [OH87326] */
  IF ~~ THEN REPLY #87377 /* ~What?~ */ GOTO 704
  IF ~~ THEN REPLY #87411 /* ~It was only a joke. Don't be like that.~ */ GOTO 704
  IF ~~ THEN REPLY #87412 /* ~This shouldn't affect our friendship.~ */ GOTO 707
END

IF ~~ THEN BEGIN 717 // from: 712.2 699.0
  SAY #87327 /* ~Feelings are never obvious. Not for people like us.~ [OH87327] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #87413 /* ~If you truly need to know: I am deeply in love with you. Have been for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 715
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #87413 /* ~If you truly need to know: I am deeply in love with you. Have been for a long time now. It is my heart's deepest desire that I spend all the rest of my days by your side.~ */ GOTO 714
  IF ~~ THEN REPLY #87414 /* ~You started this, Hexxat. You must be the one to finish it.~ */ GOTO 722
  IF ~~ THEN REPLY #87415 /* ~Some things are better left unsaid. It's safer that way.~ */ GOTO 718
END

IF ~~ THEN BEGIN 718 // from: 717.3
  SAY #87328 /* ~Agreed.~ [OH87328] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 719 // from: 694.1
  SAY #87329 /* ~Is that all we share?~ [OH87329] */
  IF ~~ THEN REPLY #87416 /* ~No. Of course not.~ */ GOTO 699
  IF ~~ THEN REPLY #87417 /* ~Isn't that enough?~ */ GOTO 706
  IF ~~ THEN REPLY #87418 /* ~You know what we share.~ */ GOTO 720
END

IF ~~ THEN BEGIN 720 // from: 719.2
  SAY #87330 /* ~That may not be enough anymore.~ [OH87330] */
  IF ~~ THEN REPLY #87419 /* ~What exactly are you trying to say, Hexxat?~ */ GOTO 699
  IF ~~ THEN REPLY #87420 /* ~I know it's not your nature to be direct, Hexxat. But in this instance, if no other, please—try to overcome your natural tendencies.~ */ GOTO 700
  IF ~~ THEN REPLY #87421 /* ~It will have to be.~ */ GOTO 706
END

IF ~~ THEN BEGIN 721 // from: 698.1
  SAY #87331 /* ~Good. I'm glad we got that sorted out.~ [OH87331] */
  IF ~~ THEN DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 722 // from: 717.2 700.0
  SAY #87332 /* ~Here it is, then. During our time together, I've come to have certain feelings for you. Feelings which I am unaccustomed to.~ [OH87332] */
  IF ~~ THEN REPLY #87422 /* ~You love me.~ */ GOTO 723
  IF ~~ THEN REPLY #87423 /* ~Say no more, Hexxat. I love you too.~ */ GOTO 724
  IF ~~ THEN REPLY #87424 /* ~I'm sorry, Hexxat. I just don't feel that way about you.~ */ GOTO 706
END

IF ~~ THEN BEGIN 723 // from: 724.0 722.0
  SAY #87333 /* ~I think I might. As I said, this is not something I am used to.~ [OH87333] */
  IF ~~ THEN REPLY #87425 /* ~You'd better start.~ */ GOTO 725
  IF ~~ THEN REPLY #87426 /* ~I understand it gets easier, in time.~ */ GOTO 728
  IF ~~ THEN REPLY #87427 /* ~Nor should you. I don't know what sort of fantasy world you've been living in, but ours is a professional relationship. And that is all it will ever be.~ */ GOTO 706
END

IF ~~ THEN BEGIN 724 // from: 722.1 711.1
  SAY #87334 /* ~Love you? No, I—I mean... Damn it.~ [OH87334] */
  IF ~~ THEN GOTO 723
END

IF ~~ THEN BEGIN 725 // from: 723.0
  SAY #87335 /* ~You feel the same?~ [OH87335] */
  IF ~~ THEN REPLY #87428 /* ~Isn't it obvious?~ */ GOTO 728
  IF ~~ THEN REPLY #87429 /* ~I do. I have for a long time now.~ */ GOTO 728
  IF ~~ THEN REPLY #87430 /* ~No, of course not. You're a vampire. I could never love a creature like you.~ */ GOTO 706
END

IF ~~ THEN BEGIN 726 // from: 711.2
  SAY #87336 /* ~I do as I will, <CHARNAME>. With your leave or without it, I care not.~ [OH87336] */
  IF ~~ THEN GOTO 708
END

IF ~~ THEN BEGIN 727 // from: 714.1 714.0
  SAY #87337 /* ~It's a madness we share, then. The first of many things we'll share, I suspect.~ [OH87337] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 728 // from: 725.1 725.0 723.1 715.2 715.0 714.2
  SAY #87338 /* ~I... We... We can't be in love. It doesn't work like that for us.~ [OH87338] */
  IF ~~ THEN REPLY #87431 /* ~I say we can. If we choose to make it work.~ */ GOTO 730
  IF ~~ THEN REPLY #87432 /* ~Says who?~ */ GOTO 730
  IF ~~ THEN REPLY #87433 /* ~As you wish. We'll say no more about it.~ */ GOTO 729
END

IF ~~ THEN BEGIN 729 // from: 728.2
  SAY #87339 /* ~I respect you, <CHARNAME>. Respect you deeply.~ [OH87339] */
  IF ~~ THEN GOTO 708
END

IF ~~ THEN BEGIN 730 // from: 728.1 728.0
  SAY #87340 /* ~All right, <CHARNAME>. If you would take the risk, I will do no less. Let us see what the future holds.~ [OH87340] */
  IF ~~ THEN EXIT
END

IF WEIGHT #63 ~  Global("OHH_saradushtalk","GLOBAL",1)
~ THEN BEGIN 731 // from:
  SAY #97078 /* ~You know Melissan's plan was doomed from the beginning, don't you? All it did was make it easier for Yaga-Shura to destroy the Bhaalspawn.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_saradushtalk","GLOBAL",2)
RealSetGlobalTimer("HexxatToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 732
END

IF ~~ THEN BEGIN 732 // from: 731.0
  SAY #97079 /* ~It's a tragedy, there's no denying that. But it may work to our advantage.~ */
  IF ~~ THEN REPLY #97270 /* ~Are you insane? How could this possibly work in our favor?~ */ GOTO 733
  IF ~~ THEN REPLY #97271 /* ~Hundreds of people are dead, perhaps thousands, and all you can see is how it might benefit us?~ */ GOTO 736
  IF ~~ THEN REPLY #97272 /* ~How do you mean?~ */ GOTO 733
END

IF ~~ THEN BEGIN 733 // from: 736.0 732.2 732.0
  SAY #97080 /* ~With the fall of Saradush and Yaga-Shura's death, only a few Bhaalspawn remain.~ */
  IF ~~ THEN GOTO 734
END

IF ~~ THEN BEGIN 734 // from: 733.0
  SAY #97081 /* ~If we move quickly, it should be relatively easy to eliminate the last of Bhaal's children.~ */
  IF ~~ THEN GOTO 735
END

IF ~~ THEN BEGIN 735 // from: 734.0
  SAY #97082 /* ~Saradush's destruction has put godhood within your grasp.~ */
  IF ~~ THEN REPLY #97273 /* ~What is wrong with you? They may have been Bhaalspawn, but they were still people.~ */ GOTO 737
  IF ~~ THEN REPLY #97274 /* ~You're right. This will be over sooner without rogue agents nipping at my heels.~ */ GOTO 738
  IF ~~ THEN REPLY #97275 /* ~They would have fallen before me eventually, but this does make things more convenient.~ */ GOTO 737
END

IF ~~ THEN BEGIN 736 // from: 732.1
  SAY #97083 /* ~That's not ALL I see. But I do see it.~ */
  IF ~~ THEN GOTO 733
END

IF ~~ THEN BEGIN 737 // from: 735.2 735.0
  SAY #97084 /* ~They had to die—them or you. The prophecy makes that abundantly clear.~ */
  IF ~~ THEN REPLY #97276 /* ~There must have been another way. I would have figured something out.~ */ GOTO 739
  IF ~~ THEN REPLY #97277 /* ~You may be right. That doesn't mean I have to like it.~ */ GOTO 740
  IF ~~ THEN REPLY #97278 /* ~The prophecy will be fulfilled. I will take the power that is my birthright.~ */ GOTO 741
END

IF ~~ THEN BEGIN 738 // from: 735.1
  SAY #97085 /* ~This is beginning to seem almost feasible.~ */
  IF ~~ THEN REPLY #97279 /* ~You had doubts?~ */ GOTO 742
  IF ~~ THEN REPLY #97280 /* ~When this is done, I WILL be the last Bhaalspawn standing.~ */ GOTO 741
  IF ~~ THEN REPLY #97281 /* ~Feasible? Try inevitable.~ */ GOTO 743
END

IF ~~ THEN BEGIN 739 // from: 737.0
  SAY #97086 /* ~It's too late now. There's only one way we're going to get through this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 740 // from: 737.1
  SAY #97087 /* ~No. Just so long as you can live with it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 741 // from: 738.1 737.2
  SAY #97088 /* ~I believe you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 742 // from: 738.0
  SAY #97089 /* ~If I did once, none remain now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 743 // from: 738.2
  SAY #97090 /* ~We'll see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 744 // from:
  SAY #85200 /* ~I didn't think you were here for the pleasure of my company.~ [OH85200] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 3
END

IF ~~ THEN BEGIN 745 // from:
  SAY #85210 /* ~Sheathe your claws, Cabrina. What does L have to say for himself?~ [OH85210] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 10
END

IF ~~ THEN BEGIN 746 // from:
  SAY #85212 /* ~But I do. What does L have to say for himself?~ [OH85212] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 10
END

IF ~~ THEN BEGIN 747 // from:
  SAY #85214 /* ~You said you brought word from L.~ [OH85214] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 4
END

IF ~~ THEN BEGIN 748 // from:
  SAY #85215 /* ~I must hear what Cabrina has to say, <CHARNAME>.~ [OH85215] */
  IF ~~ THEN REPLY #85216 /* ~You don't, Hexxat. Whatever debt you owed L was paid when you died in Dragomir's Tomb. And if it didn't, it was surely paid in full in Shou Lung and the Tomb of The Unproved.~ */ GOTO 751
  IF ~~ THEN REPLY #85217 /* ~Fine. If you must.~ */ EXTERN ~OHHCAB25~ 13
  IF ~~ THEN REPLY #85218 /* ~I don't.~ */ GOTO 749
END

IF ~~ THEN BEGIN 749 // from: 751.0 748.2
  SAY #85219 /* ~Don't make me choose between you and L.~ [OH85219] */
  IF ~~ THEN REPLY #85220 /* ~Someday, you'll have to make that choice, Hexxat.~ */ GOTO 752
  IF ~~ THEN REPLY #85221 /* ~I won't, but only because I fear I know the choice you'd make. Cabrina, what would L have us do now?~ */ EXTERN ~OHHCAB25~ 13
  IF ~~ THEN REPLY #85222 /* ~I'll choose for you. Farewell.~ */ GOTO 750
END

IF ~~ THEN BEGIN 750 // from: 749.2
  SAY #85223 /* ~Perhaps we'll meet again, <CHARNAME>.~ [OH85223] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 751 // from: 748.0
  SAY #85224 /* ~There's more going on here than you know.~ [OH85224] */
  IF ~~ THEN GOTO 749
END

IF ~~ THEN BEGIN 752 // from: 749.0
  SAY #85225 /* ~I'll burn that bridge another time. Cabrina—did L agree to my terms?~ [OH85225] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 12
END

IF ~~ THEN BEGIN 753 // from:
  SAY #85231 /* ~If you're smart, you'll care about mine. What does L want now?~ [OH85231] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 10
END

IF ~~ THEN BEGIN 754 // from:
  SAY #85238 /* ~Did L agree to my terms?~ [OH85238] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 12
END

IF ~~ THEN BEGIN 755 // from:
  SAY #85240 /* ~What does he want stolen now?~ [OH85240] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 13
END

IF ~~ THEN BEGIN 756 // from:
  SAY #85246 /* ~The Casque of Dragomir, the Shroud of the Unproved, the Claw of the Black Leopard, combined.~ [OH85246] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 15
END

IF ~~ THEN BEGIN 757 // from:
  SAY #85252 /* ~Where does the item need to go?~ [OH85252] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 17
END

IF ~~ THEN BEGIN 758 // from:
  SAY #85258 /* ~Liches.~ [OH85258] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 20
END

IF ~~ THEN BEGIN 759 // from:
  SAY #85264 /* ~And in exchange, he'll give me what I want?~ [OH85264] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 22
END

IF ~~ THEN BEGIN 760 // from:
  SAY #85269 /* ~Some messages are best delivered directly. Give me the Casque.~ [OH85269] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 24
END

IF ~~ THEN BEGIN 761 // from:
  SAY #85275 /* ~I'll handle L my own way, <CHARNAME>. Cabrina, tell me about this new job.~ [OH85275] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 26
END

IF ~~ THEN BEGIN 762 // from:
  SAY #85278 /* ~Has L agreed to the price?~ [OH85278] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 28
END

IF ~~ THEN BEGIN 763 // from:
  SAY #85280 /* ~And in exchange, he wants... what?~ [OH85280] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 13
END

IF ~~ THEN BEGIN 764 // from:
  SAY #85282 /* ~So where are we to take this item?~ [OH85282] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 19
END

IF ~~ THEN BEGIN 765 // from:
  SAY #85284 /* ~Give me the item. I've work to do.~ [OH85284] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 24
END

IF WEIGHT #64 ~  Dead("OHHCABRINA")
~ THEN BEGIN 766 // from:
  SAY #85287 /* ~You have no idea what you cost me, <CHARNAME>. It's cost you a valuable friend and ally.~ [OH85287] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
  IF ~  Global("HexxatRomanceActive","GLOBAL",2)
~ THEN GOTO 767
END

IF ~~ THEN BEGIN 767 // from: 766.1
  SAY #85288 /* ~It's cost you more than you could imagine.~ [OH85288] */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #65 ~  Global("OHH_cabrina25","GLOBAL",1)
InParty(Myself)
HasItem("OHHPRISN",Myself)
~ THEN BEGIN 768 // from:
  SAY #85300 /* ~You should know that this new version of Dragomir's Casque is much improved over the previous one, <CHARNAME>.~ [OH85300] */
  IF ~~ THEN REPLY #85301 /* ~How so?~ */ GOTO 773
  IF ~~ THEN REPLY #85302 /* ~Can you wear it without being paralyzed for decades?~ */ GOTO 769
  IF ~~ THEN REPLY #85303 /* ~You are anxious to use it?~ */ GOTO 774
END

IF ~~ THEN BEGIN 769 // from: 768.1
  SAY #85313 /* ~No. I can, however, tombwalk to L's rebellious lich's tomb at any time. We no longer need visit a graveyard.~ [OH85313] */
  IF ~~ THEN REPLY #85304 /* ~It's not a huge improvement, is it?~ */ GOTO 772
  IF ~~ THEN REPLY #85305 /* ~Can we use it to escape the tomb?~ */ GOTO 770
  IF ~~ THEN REPLY #85306 /* ~Understood.~ */ GOTO 775
END

IF ~~ THEN BEGIN 770 // from: 773.1 769.1
  SAY #85314 /* ~Not until the lich has been subdued.~ [OH85314] */
  IF ~~ THEN REPLY #85307 /* ~This improvement would seem to serve your employer's purposes more than ours.~ */ GOTO 775
  IF ~~ THEN REPLY #85308 /* ~I see. You understand why I'm less than thrilled by these so-called improvements, right?~ */ GOTO 772
  IF ~~ THEN REPLY #85309 /* ~You call that an improvement?~ */ GOTO 771
END

IF ~~ THEN BEGIN 771 // from: 770.2
  SAY #85315 /* ~I'll take what I can get.~ [OH85315] */
  IF ~~ THEN GOTO 772
END

IF ~~ THEN BEGIN 772 // from: 773.0 771.0 770.1 769.0
  SAY #85316 /* ~It'll save us some time, and time is precious, <CHARNAME>. Believe me.~ [OH85316] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabrina25","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 773 // from: 774.0 768.0
  SAY #85317 /* ~I can open a necrotic portal to L's rebellious lich's tomb at any time. We no longer need visit a graveyard.~ [OH85317] */
  IF ~~ THEN REPLY #85310 /* ~That is handy.~ */ GOTO 772
  IF ~~ THEN REPLY #85311 /* ~Can we use it within the tomb? If things get ugly, use it to retreat back to the surface?~ */ GOTO 770
  IF ~~ THEN REPLY #85312 /* ~Let's not waste any time, then.~ */ GOTO 779
END

IF ~~ THEN BEGIN 774 // from: 768.2
  SAY #85318 /* ~I would complete this final assignment for L sooner than later.~ [OH85318] */
  IF ~~ THEN GOTO 773
END

IF ~~ THEN BEGIN 775 // from: 770.0 769.2
  SAY #85319 /* ~Let me know when you are ready to face the lich. I would see this assignment for L finished sooner than later.~ [OH85319] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabrina25","GLOBAL",2)
~ EXIT
END

IF WEIGHT #66 ~  Global("OHH_cabrinadead","GLOBAL",1)
~ THEN BEGIN 776 // from:
  SAY #85287 /* ~You have no idea what you cost me, <CHARNAME>. It's cost you a valuable friend and ally.~ [OH85287] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabrinadead","GLOBAL",2)
SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
EscapeArea()
~ EXIT
  IF ~  Global("HexxatRomanceActive","GLOBAL",2)
~ THEN GOTO 777
END

IF ~~ THEN BEGIN 777 // from: 776.1
  SAY #85288 /* ~It's cost you more than you could imagine.~ [OH85288] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabrinadead","GLOBAL",2)
SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #67 ~  Global("OHH_cabrina25","GLOBAL",2)
InParty(Myself)
HasItem("OHHPRISN",Myself)
!AreaCheck("AR4500")
~ THEN BEGIN 778 // from:
  SAY #85320 /* ~Are you ready for me to use the Casque of Entrapment, <CHARNAME>?~ [OH85320] */
  IF ~~ THEN REPLY #85321 /* ~Yes, we should move to confront this lich.~ */ GOTO 779
  IF ~~ THEN REPLY #85322 /* ~No, I need more time to prepare.~ */ EXIT
END

IF ~~ THEN BEGIN 779 // from: 778.0 773.2
  SAY #85323 /* ~One more journey into darkness and death.~ [OH85323] */
  IF ~~ THEN REPLY #85324 /* ~The last one.~ */ GOTO 780
  IF ~~ THEN REPLY #85325 /* ~You make it sound so appealing.~ */ GOTO 781
  IF ~~ THEN REPLY #85326 /* ~I'm not ready to take it. Not yet.~ */ GOTO 786
END

IF ~~ THEN BEGIN 780 // from: 779.0
  SAY #85361 /* ~I believe so.~ [OH85361] */
  IF ~~ THEN REPLY #85327 /* ~I hope you're right.~ */ GOTO 781
  IF ~~ THEN REPLY #85328 /* ~Then let's do this thing.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85329 /* ~I'm not convinced.~ */ GOTO 786
END

IF ~~ THEN BEGIN 781 // from: 780.0 779.1
  SAY #85362 /* ~What's life without risk?~ [OH85362] */
  IF ~~ THEN REPLY #85330 /* ~Lengthy and content.~ */ GOTO 782
  IF ~~ THEN REPLY #85331 /* ~Boring.~ */ GOTO 789
  IF ~~ THEN REPLY #85332 /* ~A long and drawn-out death. We're better than that. Let's go see this lich.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 782 // from: 781.0
  SAY #85363 /* ~Tell it to someone else, <CHARNAME>. I know you better than that.~ [OH85363] */
  IF ~  Gender(Player1,FEMALE)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85333 /* ~You could know me better still.~ */ GOTO 783
  IF ~  OR(2)
!Gender(Player1,FEMALE)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85333 /* ~You could know me better still.~ */ GOTO 784
  IF ~~ THEN REPLY #85334 /* ~You don't know me as well as you think.~ */ GOTO 790
  IF ~~ THEN REPLY #85335 /* ~You know nothing about me, Hexxat.~ */ DO ~SetGlobal("OHH_romance_active","LOCALS",-1)
~ GOTO 790
END

IF ~~ THEN BEGIN 783 // from: 782.0
  SAY #85364 /* ~When this is over. I promise.~ [OH85364] */
  IF ~~ THEN REPLY #85336 /* ~I'm more enthusiastic about this venture by the second. Shall we?~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~  Gender(Player1,FEMALE)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85337 /* ~Is that true, or are you just telling me what I want to hear?~ */ GOTO 791
  IF ~  OR(2)
!Gender(Player1,FEMALE)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85337 /* ~Is that true, or are you just telling me what I want to hear?~ */ GOTO 785
  IF ~~ THEN REPLY #85338 /* ~I'll hold you to that, Hexxat. Let's go.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 784 // from: 782.1
  SAY #85365 /* ~I'd like that.~ [OH85365] */
  IF ~~ THEN REPLY #85339 /* ~Let's do this, then.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85340 /* ~Is that true, or are you just telling me what I want to hear?~ */ GOTO 785
  IF ~~ THEN REPLY #85341 /* ~I hope you're telling it true, Hexxat. I really do. All right, I'm ready. Let's go finish a lich.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 785 // from: 792.0 791.2 790.4 790.2 784.1 783.2
  SAY #85366 /* ~I'd be happy to talk to you about this—after we're done with the lich. Are you ready to go?~ [OH85366] */
  IF ~~ THEN REPLY #85342 /* ~I am.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85343 /* ~No. I'm afraid this is where our paths diverge. Farewell, Hexxat.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #85344 /* ~I cannot say I'm enthusiastic about it, but yes. I'm with you.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 786 // from: 789.2 788.0 780.2 779.2
  SAY #85367 /* ~If not now, when?~ [OH85367] */
  IF ~~ THEN REPLY #85345 /* ~Soon.~ */ GOTO 787
  IF ~~ THEN REPLY #85346 /* ~I don't know. ~ */ GOTO 787
  IF ~~ THEN REPLY #85347 /* ~When I'm ready.~ */ GOTO 787
END

IF ~~ THEN BEGIN 787 // from: 794.1 786.2 786.1 786.0
  SAY #85368 /* ~We started this together, <CHARNAME>. I'd prefer we end it the same way. When you're ready, that's when we shall go.~ [OH85368] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 788 // from:
  SAY #85369 /* ~You won't help me finish this?~ [OH85369] */
  IF ~~ THEN GOTO 786
END

IF ~~ THEN BEGIN 789 // from: 781.1
  SAY #85370 /* ~Exactly. Will you join me, then?~ [OH85370] */
  IF ~~ THEN REPLY #85348 /* ~Absolutely.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85349 /* ~All right.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85350 /* ~I cannot.~ */ GOTO 786
END

IF ~~ THEN BEGIN 790 // from: 782.3 782.2
  SAY #85371 /* ~I'd like to change that—when this is over.~ [OH85371] */
  IF ~~ THEN REPLY #85336 /* ~I'm more enthusiastic about this venture by the second. Shall we?~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~  Gender(Player1,FEMALE)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85337 /* ~Is that true, or are you just telling me what I want to hear?~ */ GOTO 791
  IF ~  OR(2)
!Gender(Player1,FEMALE)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85337 /* ~Is that true, or are you just telling me what I want to hear?~ */ GOTO 785
  IF ~  Gender(Player1,FEMALE)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85351 /* ~I'd like to believe you.~ */ GOTO 791
  IF ~  OR(2)
!Gender(Player1,FEMALE)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85351 /* ~I'd like to believe you.~ */ GOTO 785
END

IF ~~ THEN BEGIN 791 // from: 790.3 790.1 783.1
  SAY #85372 /* ~You doubt me, <CHARNAME>? I'm hurt.~ [OH85372] */
  IF ~~ THEN REPLY #85352 /* ~That's regrettable—or it would be, if I believed you. This is no joke, Hexxat. I need to know.~ */ GOTO 792
  IF ~~ THEN REPLY #85353 /* ~I so want to say better you than me—but I wouldn't mean it.~ */ GOTO 793
  IF ~~ THEN REPLY #85354 /* ~You've been hurt worse.~ */ GOTO 785
END

IF ~~ THEN BEGIN 792 // from: 791.0
  SAY #85373 /* ~Know this, then: When I'm finally done with L, I belong to you.~ [OH85373] */
  IF ~~ THEN REPLY #85354 /* ~You've been hurt worse.~ */ GOTO 785
END

IF ~~ THEN BEGIN 793 // from: 791.1
  SAY #85374 /* ~I feel the same. I know it may not always seem that way, but I do.~ [OH85374] */
  IF ~~ THEN REPLY #85355 /* ~That will do—for now. Let's finish this.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85356 /* ~I hope you're telling the truth, Hexxat.~ */ GOTO 794
  IF ~~ THEN REPLY #85357 /* ~I trust you, Hexxat, though I'm not entirely certain why. Let's finish L's business, so we can properly get on with our own.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 794 // from: 793.1
  SAY #85425 /* ~There's only one way to find out. Are you ready?~ [OH85425] */
  IF ~~ THEN REPLY #85358 /* ~Yes.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
  IF ~~ THEN REPLY #85359 /* ~No.~ */ GOTO 787
  IF ~~ THEN REPLY #85360 /* ~As ready as I'm ever like to be.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHHCUT25",FALSE)
~ EXIT
END

IF WEIGHT #68 ~  Global("OHH_arrival","OH7300",1)
~ THEN BEGIN 795 // from:
  SAY #85381 /* ~Let's get this done quickly.~ [OH85381] */
  IF ~~ THEN DO ~SetGlobal("OHH_arrival","OH7300",2)
~ EXIT
END

IF ~~ THEN BEGIN 796 // from:
  SAY #85442 /* ~No.~ [OH85442] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 1
END

IF ~~ THEN BEGIN 797 // from:
  SAY #85440 /* ~I'd rather not.~ [OH85440] */
  IF ~~ THEN DO ~SetGlobal("OHH_phreya_z","OH7300",1)
ActionOverride("OHHPHREY",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 798 // from:
  SAY #85446 /* ~Stay your hand, <CHARNAME>.~ [OH85446] */
  IF ~~ THEN REPLY #85407 /* ~What?~ */ GOTO 799
END

IF ~~ THEN BEGIN 799 // from: 798.0
  SAY #85447 /* ~We've no quarrel with you, Phreya. I'm here to do a job, same as you were. Let us pass.~ [OH85447] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 19
END

IF WEIGHT #69 ~  Global("OHH_phreya","OH7300",2)
Global("OHH_phreya_q","OH7300",1)
~ THEN BEGIN 800 // from:
  SAY #85449 /* ~Let's move on.~ [OH85449] */
  IF ~~ THEN REPLY #85408 /* ~As you wish.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ EXIT
  IF ~~ THEN REPLY #85409 /* ~You realize Phreya will dog our every move now, right? You do realize that?~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ GOTO 801
  IF ~~ THEN REPLY #85410 /* ~That was a mistake.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ GOTO 801
END

IF ~~ THEN BEGIN 801 // from: 800.2 800.1
  SAY #85450 /* ~I gave her a chance. I owe her that much.~ [OH85450] */
  IF ~~ THEN REPLY #85411 /* ~She's manipulating you, Hexxat. You see that, don't you?~ */ GOTO 802
  IF ~~ THEN REPLY #85412 /* ~You owe me more. Letting her go hurts our own chances for success.~ */ GOTO 804
  IF ~~ THEN REPLY #85413 /* ~You owe her nothing. When we encounter her next—and we will meet her again—I hope you're ready to do what must be done.~ */ GOTO 803
END

IF ~~ THEN BEGIN 802 // from: 801.0
  SAY #85451 /* ~I see what she's trying to do. When—if—she stands in our way, she'll learn that I'm not so easily led.~ [OH85451] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 803 // from: 801.2
  SAY #85452 /* ~I always am.~ [OH85452] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 804 // from: 801.1
  SAY #85453 /* ~I'll take that risk.~ [OH85453] */
  IF ~~ THEN REPLY #85414 /* ~Perhaps next time you could consult me before making a decision that puts my life in danger.~ */ GOTO 806
  IF ~~ THEN REPLY #85415 /* ~So will I, apparently.~ */ GOTO 806
  IF ~~ THEN REPLY #85416 /* ~It's not your place to take it for both of us.~ */ GOTO 805
END

IF ~~ THEN BEGIN 805 // from: 804.2
  SAY #85454 /* ~Don't tell me my place, <CHARNAME>. You won't like where that ends.~ [OH85454] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 806 // from: 804.1 804.0
  SAY #85455 /* ~Save the scolding till we've done what we came here to do, <CHARNAME>. I can't properly appreciate it while the lich still lives.~ [OH85455] */
  IF ~~ THEN EXIT
END

IF WEIGHT #70 ~  Global("OHH_phreya","OH7300",2)
Global("OHH_phreya_w","OH7300",1)
~ THEN BEGIN 807 // from:
  SAY #85456 /* ~She may be right.~ [OH85456] */
  IF ~~ THEN REPLY #85417 /* ~She's not. You'll see.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ EXIT
  IF ~~ THEN REPLY #85418 /* ~I know.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ EXIT
  IF ~~ THEN REPLY #85419 /* ~We'll find out soon enough.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ EXIT
END

IF ~~ THEN BEGIN 808 // from: 810.1
  SAY #85457 /* ~I feel for Phreya, <CHARNAME>, I truly do. But I'll not risk the success of this mission on her account—or anyone else's.~ [OH85457] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 809 // from: 810.0
  SAY #85458 /* ~I knew the risks, and so did she. We've no one to blame but ourselves.~ [OH85458] */
  IF ~~ THEN EXIT
END

IF WEIGHT #71 ~  Global("OHH_phreya","OH7300",2)
Global("OHH_phreya_z","OH7300",1)
~ THEN BEGIN 810 // from:
  SAY #85459 /* ~She'll dog us every step we take through this place. We've got to eliminate her.~ [OH85459] */
  IF ~~ THEN REPLY #85420 /* ~I agree, but—you must have some sympathy for her. L treated you both poorly.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ GOTO 809
  IF ~~ THEN REPLY #85421 /* ~Perhaps we can turn her to our cause. You didn't turn your back on L when he left you to rot in Dragomir's Tomb.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ GOTO 808
  IF ~~ THEN REPLY #85422 /* ~Agreed. She needs to be put out of everyone's misery. Particularly mine.~ */ DO ~SetGlobal("OHH_phreya","OH7300",3)
~ EXIT
END

IF WEIGHT #72 ~  Global("OHH_phreyatookcloak","OH7300",1)
Global("OHH_phreya","OH7300",6)
~ THEN BEGIN 811 // from:
  SAY #85502 /* ~She's got my cloak. She took my cloak.~ [OH85502] */
  IF ~~ THEN REPLY #85511 /* ~We'll get you another when we're out of this place.~ */ GOTO 812
  IF ~~ THEN REPLY #85512 /* ~Better that than your life.~ */ GOTO 813
  IF ~~ THEN REPLY #85513 /* ~She can't leave this place any more than we can. We'll get it back.~ */ GOTO 812
END

IF ~~ THEN BEGIN 812 // from: 813.0 811.2 811.0
  SAY #85503 /* ~I need it to survive the daylight.~ [OH85503] */
  IF ~~ THEN REPLY #85514 /* ~We'll get it back.~ */ GOTO 816
  IF ~~ THEN REPLY #85515 /* ~Oh, right. It's THAT cloak.~ */ GOTO 816
  IF ~~ THEN REPLY #85516 /* ~Plenty of vampires get by without daylight.~ */ GOTO 814
END

IF ~~ THEN BEGIN 813 // from: 811.1
  SAY #85504 /* ~That cloak IS my life, <CHARNAME>.~ [OH85504] */
  IF ~~ THEN GOTO 812
END

IF ~~ THEN BEGIN 814 // from: 812.2
  SAY #85505 /* ~I won't be one of them. I can't be.~ [OH85505] */
  IF ~~ THEN REPLY #85517 /* ~Calm yourself, Hexxat. We'll get it back.~ */ GOTO 815
  IF ~~ THEN REPLY #85518 /* ~You won't be. I promise.~ */ GOTO 816
  IF ~~ THEN REPLY #85519 /* ~Then stop sniveling and let's get after her.~ */ GOTO 816
END

IF ~~ THEN BEGIN 815 // from: 814.0
  SAY #85506 /* ~Don't patronize me. You have no idea what that cloak means to me.~ [OH85506] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #85520 /* ~Phreya's trying to break you down. Don't let her. You've survived worse than this.~ */ GOTO 819
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #85520 /* ~Phreya's trying to break you down. Don't let her. You've survived worse than this.~ */ GOTO 818
  IF ~~ THEN REPLY #85521 /* ~You called it a filthy rag. And it stinks.~ */ GOTO 817
  IF ~~ THEN REPLY #85522 /* ~I'm beginning to get one.~ */ GOTO 816
END

IF ~~ THEN BEGIN 816 // from: 819.0 818.0 817.0 815.3 814.2 814.1 812.1 812.0
  SAY #85507 /* ~We need to move quickly. Gods know what she'll do if we don't catch up to her.~ [OH85507] */
  IF ~~ THEN DO ~SetGlobal("OHH_phreyatookcloak","OH7300",2)
~ EXIT
END

IF ~~ THEN BEGIN 817 // from: 815.2
  SAY #85508 /* ~That's as may be.~ [OH85508] */
  IF ~~ THEN GOTO 816
END

IF ~~ THEN BEGIN 818 // from: 815.1
  SAY #85509 /* ~You're right.~ [OH85509] */
  IF ~~ THEN GOTO 816
END

IF ~~ THEN BEGIN 819 // from: 815.0
  SAY #85510 /* ~You don't know what I've survived, <CHARNAME>. You haven't a clue. Now come on.~ [OH85510] */
  IF ~~ THEN GOTO 816
END

IF ~~ THEN BEGIN 820 // from:
  SAY #85525 /* ~There was a chance for you to walk away from this alive, Phreya. You just lost that chance.~ [OH85525] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 821 // from:
  SAY #85538 /* ~I trust him to honor his word to me.~ [OH85538] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 822 // from:
  SAY #85539 /* ~She's telling the truth, <CHARNAME>. I was a predator before I ever became a vampire. I used people and cast them aside. But not you. Never you.~ [OH85539] */
  IF ~~ THEN REPLY #85548 /* ~I believe you.~ */ EXTERN ~OHHPHREY~ 51
  IF ~~ THEN REPLY #85549 /* ~I want to believe you.~ */ GOTO 823
  IF ~~ THEN REPLY #85550 /* ~I can't believe you, Hexxat. I want to, but I cannot.~ */ GOTO 823
  IF ~~ THEN REPLY #85551 /* ~You know what I want to hear, but I never know whether you speak the truth.~ */ GOTO 823
END

IF ~~ THEN BEGIN 823 // from: 822.3 822.2 822.1
  SAY #85540 /* ~If you've ever believed a word I said, believe this, <CHARNAME>.~ [OH85540] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 51
END

IF WEIGHT #73 ~  Global("OHH_break","OH7300",0)
Global("OHH_phreya","OH7300",12)
~ THEN BEGIN 824 // from:
  SAY #85541 /* ~She's taking me apart, <CHARNAME>. Picking away at me, piece by piece. I don't know how much more of this I can endure...~ [OH85541] */
  IF ~~ THEN DO ~SetGlobal("OHH_break","OH7300",2)
~ EXIT
END

IF WEIGHT #74 ~  Global("OHH_doorpuzzle","OH7300",1)
~ THEN BEGIN 825 // from:
  SAY #85626 /* ~These doors are connected... Opening one closes another.~ [OH85626] */
  IF ~~ THEN DO ~SetGlobal("OHH_doorpuzzle","OH7300",2)
~ EXIT
END

IF WEIGHT #75 ~  Global("OHH_necroticcomment","OH7300",1)
~ THEN BEGIN 826 // from:
  SAY #85599 /* ~The barrier has no effect on me.~ [OH85599] */
  IF ~~ THEN DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86488,INFO)
~ GOTO 827
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86488,INFO)
~ EXTERN ~DORNJ~ 1063
END

IF ~~ THEN BEGIN 827 // from: 826.0
  SAY #85601 /* ~I'll have to go forward on my own.~ [OH85601] */
  IF ~~ THEN REPLY #85608 /* ~I don't like the idea of you venturing alone through a lich's lair.~ */ GOTO 828
  IF ~~ THEN REPLY #85609 /* ~Be careful, said the person invading a lich's crypt.~ */ GOTO 829
  IF ~~ THEN REPLY #85610 /* ~Find a way to remove this obstruction. You can't take a lich on your own.~ */ GOTO 833
END

IF ~~ THEN BEGIN 828 // from: 827.0
  SAY #85602 /* ~I'm not thrilled about it myself, but we've little choice while this barrier blocks your way.~ [OH85602] */
  IF ~~ THEN GOTO 829
END

IF ~~ THEN BEGIN 829 // from: 828.0 827.1
  SAY #85603 /* ~Watch your back.~ [OH85603] */
  IF ~~ THEN REPLY #85611 /* ~You do the same.~ */ GOTO 831
  IF ~~ THEN REPLY #85612 /* ~I'd rather watch yours.~ */ GOTO 830
  IF ~~ THEN REPLY #85613 /* ~Always.~ */ GOTO 832
END

IF ~~ THEN BEGIN 830 // from: 829.1
  SAY #85604 /* ~Yes, I noticed.~ [OH85604] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 831 // from: 829.0
  SAY #85605 /* ~Count on it.~ [OH85605] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 832 // from: 829.2
  SAY #85606 /* ~I'll be back soon.~ [OH85606] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 833 // from: 827.2
  SAY #85607 /* ~I'll do what I have to do, <CHARNAME>. I always have.~ [OH85607] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 834 // from:
  SAY #85644 /* ~I hope you're entertaining yourself, <CHARNAME>. I doubt anyone else appreciates your humor, least of all the lich.~ [OH85644] */
  IF ~~ THEN EXTERN ~OHHDECOY~ 1
END

IF ~~ THEN BEGIN 835 // from:
  SAY #85645 /* ~You've a thing or two to learn about discretion, <CHARNAME>.~ [OH85645] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 53
END

IF ~~ THEN BEGIN 836 // from:
  SAY #85646 /* ~Can, but won't.~ [OH85646] */
  IF ~~ THEN EXTERN ~OHHPHREY~ 54
END

IF ~~ THEN BEGIN 837 // from:
  SAY #85647 /* ~You flatter yourself, Phreya.~ [OH85647] */
  IF ~~ THEN EXTERN ~OHHDECOY~ 3
END

IF ~~ THEN BEGIN 838 // from:
  SAY #85648 /* ~First, I've a message for you, lich!~ [OH85648] */
  IF ~~ THEN DO ~ActionOverride("OHHPHREY",Enemy())
ActionOverride("OHHDECOY",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 839 // from:
  SAY #85649 /* ~Take it down!~ [OH85649] */
  IF ~~ THEN DO ~ActionOverride("OHHPHREY",Enemy())
ActionOverride("OHHDECOY",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 840 // from:
  SAY #85650 /* ~That was too easy. Too easy by far.~ [OH85650] */
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 552
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN GOTO 843
END

IF ~~ THEN BEGIN 841 // from:
  SAY #85651 /* ~Perhaps I'm making this more difficult than it needs to be. We should check the rest of the crypt, just to be on the safe side.~ */
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 553
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN EXIT
END

IF WEIGHT #76 ~  Global("OHH_lichlab","OH7300",1)
~ THEN BEGIN 842 // from:
  SAY #85669 /* ~This looks promising.~ [OH85669] */
  IF ~~ THEN DO ~SetGlobal("OHH_lichlab","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN DO ~SetGlobal("OHH_lichlab","OH7300",2)
~ EXTERN ~NEERAJ~ 550
  IF ~  IsValidForPartyDialogue("jan")
~ THEN DO ~SetGlobal("OHH_lichlab","OH7300",2)
~ EXTERN ~JANJ~ 225
END

IF WEIGHT #77 ~  Global("OHH_decoydead","OH7300",1)
~ THEN BEGIN 843 // from: 840.1
  SAY #85677 /* ~The Casque of Entrapment didn't work as it should... Something's not right here.~ [OH85677] */
  IF ~~ THEN REPLY #85690 /* ~Will it get us out of here?~ */ DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ GOTO 847
  IF ~~ THEN REPLY #85691 /* ~Take a look around. NOTHING is right here.~ */ DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ GOTO 844
  IF ~~ THEN REPLY #85692 /* ~The lich is destroyed. Seems about right to me.~ */ DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ GOTO 851
END

IF ~~ THEN BEGIN 844 // from: 843.1
  SAY #85678 /* ~There's something going on, beyond the obvious.~ [OH85678] */
  IF ~~ THEN REPLY #85693 /* ~There usually is...~ */ GOTO 845
  IF ~~ THEN REPLY #85694 /* ~Let's discuss it back at the pocket plane.~ */ GOTO 847
  IF ~~ THEN REPLY #85695 /* ~Curiosity kills more than cats.~ */ GOTO 845
END

IF ~~ THEN BEGIN 845 // from: 844.2 844.0
  SAY #85679 /* ~We can't leave. Not yet.~ [OH85679] */
  IF ~~ THEN REPLY #85696 /* ~We can't leave, or you won't leave?~ */ GOTO 846
  IF ~~ THEN REPLY #85697 /* ~Well, of course not. We've barely begun to loot the place.~ */ GOTO 854
  IF ~~ THEN REPLY #85698 /* ~Why not?~ */ GOTO 847
END

IF ~~ THEN BEGIN 846 // from: 845.0
  SAY #85680 /* ~Both.~ [OH85680] */
  IF ~~ THEN GOTO 847
END

IF ~~ THEN BEGIN 847 // from: 854.0 851.1 846.0 845.2 844.1 843.0
  SAY #85681 /* ~The Casque won't let me tombwalk.~ [OH85681] */
  IF ~~ THEN REPLY #85699 /* ~But the lich is dead.~ */ GOTO 849
  IF ~~ THEN REPLY #85700 /* ~It's broken?~ */ GOTO 848
  IF ~~ THEN REPLY #85701 /* ~L has betrayed us.~ */ GOTO 848
END

IF ~~ THEN BEGIN 848 // from: 847.2 847.1
  SAY #85682 /* ~Either that, or the mission hasn't yet been completed.~ [OH85682] */
  IF ~~ THEN REPLY #85702 /* ~The lich is dead.~ */ GOTO 849
  IF ~  !IsValidForPartyDialogue("neera")
~ THEN REPLY #85703 /* ~How is that possible?~ */ GOTO 850
  IF ~  IsValidForPartyDialogue("neera")
~ THEN REPLY #85703 /* ~How is that possible?~ */ EXTERN ~NEERAJ~ 555
  IF ~~ THEN REPLY #85704 /* ~I've an undead puddle forming beneath my feet that says otherwise.~ */ GOTO 849
END

IF ~~ THEN BEGIN 849 // from: 852.0 848.3 848.0 847.0
  SAY #85683 /* ~A lich is dead.~ [OH85683] */
  IF ~~ THEN GOTO 850
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 555
END

IF ~~ THEN BEGIN 850 // from: 849.0 848.1
  SAY #85684 /* ~This isn't Korkorran. We still have work to do.~ [OH85684] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 556
END

IF ~~ THEN BEGIN 851 // from: 843.2
  SAY #85685 /* ~It should not have died as it did...~ [OH85685] */
  IF ~~ THEN REPLY #85705 /* ~What are you suggesting?~ */ GOTO 852
  IF ~~ THEN REPLY #85706 /* ~But it did die. Let's focus on the positive here.~ */ GOTO 847
  IF ~~ THEN REPLY #85707 /* ~Will L truly be bothered by the fashion of the lich's destruction?~ */ GOTO 853
END

IF ~~ THEN BEGIN 852 // from: 851.0
  SAY #85686 /* ~The Casque won't let me tombwalk. The mission hasn't been completed yet.~ [OH85686] */
  IF ~~ THEN REPLY #85708 /* ~How is that possible? The lich is dead.~ */ GOTO 849
  IF ~~ THEN REPLY #85709 /* ~A decoy lich? What kind of twisted mind would do something like that?~ */ GOTO 855
  IF ~~ THEN REPLY #85710 /* ~More undead to kill? I can think of worse ways to spend the <DAYNIGHTALL>.~ */ EXIT
END

IF ~~ THEN BEGIN 853 // from: 851.2
  SAY #85687 /* ~I doubt it—if we'd killed the correct lich.~ [OH85687] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 556
END

IF ~~ THEN BEGIN 854 // from: 845.1
  SAY #85688 /* ~This isn't about plunder.~ [OH85688] */
  IF ~~ THEN GOTO 847
END

IF ~~ THEN BEGIN 855 // from: 852.1
  SAY #85689 /* ~Korkorran's, apparently.~ [OH85689] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 856 // from:
  SAY #85721 /* ~One way or the other.~ [OH85721] */
  IF ~~ THEN EXTERN ~OHHKORK~ 2
END

IF ~~ THEN BEGIN 857 // from:
  SAY #85722 /* ~You know me?~ [OH85722] */
  IF ~~ THEN EXTERN ~OHHKORK~ 3
END

IF ~~ THEN BEGIN 858 // from:
  SAY #85723 /* ~Let it talk.~ [OH85723] */
  IF ~~ THEN REPLY #85792 /* ~What? Why?~ */ GOTO 859
  IF ~~ THEN REPLY #85793 /* ~I've heard enough.~ */ GOTO 859
  IF ~~ THEN REPLY #85794 /* ~I'd rather hear it scream.~ */ EXTERN ~OHHKORK~ 11
END

IF ~~ THEN BEGIN 859 // from: 858.1 858.0
  SAY #85724 /* ~It knows we can hurt it, perhaps destroy it. It's not stupid. It's going to make us an offer.~ [OH85724] */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 605
END

IF ~~ THEN BEGIN 860 // from:
  SAY #85720 /* ~Have you a point to make, lich? Because I'm not seeing it.~ [OH85720] */
  IF ~~ THEN REPLY #85798 /* ~It's trying to get in your head. Don't listen to it.~ */ EXTERN ~OHHKORK~ 9
  IF ~~ THEN REPLY #85799 /* ~No, seriously now. Let's stop talking with this thing and kill it.~ */ EXTERN ~OHHKORK~ 9
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY #85800 /* ~Would you like me to make you some tea so you can continue your chat? Or can we do what we came to do now?~ */ EXTERN ~OHHKORK~ 9
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #85800 /* ~Would you like me to make you some tea so you can continue your chat? Or can we do what we came to do now?~ */ EXTERN ~DORNJ~ 1069
END

IF ~~ THEN BEGIN 861 // from:
  SAY #85726 /* ~I did not seek to become what I am. Your destruction is the last stone on my path to regaining what I lost.~ [OH85726] */
  IF ~~ THEN REPLY #85804 /* ~Your deal with L—it's for him to restore your humanity.~ */ GOTO 863
END

IF ~~ THEN BEGIN 862 // from:
  SAY #85727 /* ~I speak of the sun. Of eating for pleasure rather than need. Of seeing my friends as something other than food.~ [OH85727] */
  IF ~~ THEN EXTERN ~OHHKORK~ 14
END

IF ~~ THEN BEGIN 863 // from: 861.0
  SAY #85728 /* ~He has that power.~ [OH85728] */
  IF ~~ THEN REPLY #85807 /* ~People with that kind of power are rarely trustworthy.~ */ GOTO 866
  IF ~~ THEN REPLY #85808 /* ~What kind of creature have we been working for?~ */ EXTERN ~OHHKORK~ 18
  IF ~~ THEN REPLY #85809 /* ~But why would you sacrifice all that you've gained?~ */ GOTO 864
END

IF ~~ THEN BEGIN 864 // from: 863.2
  SAY #85729 /* ~You do not—you cannot understand.~ [OH85729] */
  IF ~~ THEN EXTERN ~OHHKORK~ 14
END

IF ~~ THEN BEGIN 865 // from:
  SAY #85730 /* ~And in exchange?~ [OH85730] */
  IF ~~ THEN EXTERN ~OHHKORK~ 15
END

IF ~~ THEN BEGIN 866 // from: 863.0
  SAY #85731 /* ~We have a business relationship. He hasn't wronged me yet.~ [OH85731] */
  IF ~~ THEN REPLY #85813 /* ~Give it time.~ */ GOTO 869
  IF ~~ THEN REPLY #85814 /* ~There was that one time he let you lie in a vampire's crypt for two hundred years. But other than that, you're right, he's perfectly trustworthy.~ */ EXTERN ~OHHKORK~ 14
  IF ~~ THEN REPLY #85815 /* ~Because you still have value to him. That could change if you were human.~ */ GOTO 867
END

IF ~~ THEN BEGIN 867 // from: 866.2
  SAY #85732 /* ~He valued my skills before I turned. The last thing I need fear is losing his favor.~ [OH85732] */
  IF ~~ THEN EXTERN ~OHHKORK~ 14
END

IF ~~ THEN BEGIN 868 // from:
  SAY #85733 /* ~Truly?~ [OH85733] */
  IF ~~ THEN REPLY #85816 /* ~Well, yeah, but then I never wanted to come here in the first place.~ */ GOTO 871
END

IF ~~ THEN BEGIN 869 // from: 866.0
  SAY #85734 /* ~So I should take Korkorran's offer, then?~ [OH85734] */
  IF ~~ THEN REPLY #85817 /* ~I didn't say that.~ */ GOTO 871
END

IF ~~ THEN BEGIN 870 // from:
  SAY #85735 /* ~You think so?~ [OH85735] */
  IF ~~ THEN REPLY #85818 /* ~This may be your only chance to have your humanity restored. You have to take it.~ */ GOTO 874
  IF ~~ THEN REPLY #85819 /* ~If he's lying, we're well situated to make him pay for it. Will we ever be able to say the same of L?~ */ GOTO 874
  IF ~~ THEN REPLY #85820 /* ~I would never surrender the gifts you've been given. But the choice is yours.~ */ GOTO 876
END

IF ~~ THEN BEGIN 871 // from: 869.0 868.0
  SAY #85736 /* ~This may be the last chance I have to walk in the sun again.~ [OH85736] */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #85821 /* ~I would not deny you that.~ */ GOTO 874
  IF ~  Gender(Player1,FEMALE)
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #85822 /* ~I cannot deny you that—or anything, for that matter.~ */ GOTO 874
  IF ~~ THEN REPLY #85823 /* ~How long will you walk there if L finds out you betrayed him?~ */ GOTO 872
  IF ~~ THEN REPLY #85824 /* ~The sun is overrated. You'd be a fool to give up everything being a vampire offers.~ */ GOTO 873
END

IF ~~ THEN BEGIN 872 // from: 873.1 871.2
  SAY #85737 /* ~A very good point.~ [OH85737] */
  IF ~~ THEN DO ~ActionOverride("ohhkork",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 873 // from: 871.3
  SAY #85738 /* ~It offers nothing to compare to the sun on my face.~ [OH85738] */
  IF ~~ THEN REPLY #85825 /* ~I've said my piece. The choice is yours.~ */ GOTO 874
  IF ~~ THEN REPLY #85826 /* ~The choice is yours. But remember, you made a deal with L.~ */ GOTO 872
  IF ~~ THEN REPLY #85827 /* ~I'll not let this creature steal your power away from you.~ */ EXTERN ~OHHKORK~ 16
END

IF ~~ THEN BEGIN 874 // from: 876.0 873.0 871.1 871.0 870.1 870.0
  SAY #85739 /* ~All right, Korkorran. You've got a deal. Make me human again, and we'll leave you in peace.~ [OH85739] */
  IF ~~ THEN EXTERN ~OHHKORK~ 17
END

IF ~~ THEN BEGIN 875 // from:
  SAY #85740 /* ~They don't need to know.~ [OH85740] */
  IF ~~ THEN DO ~ActionOverride("ohhkork",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 876 // from: 870.2
  SAY #85741 /* ~What you call gifts come with a price beyond measure.~ [OH85741] */
  IF ~~ THEN GOTO 874
END

IF ~~ THEN BEGIN 877 // from:
  SAY #85769 /* ~I think he will be, Viconia.~ [OH85769] */
  IF ~~ THEN GOTO 878
END

IF ~~ THEN BEGIN 878 // from: 877.0
  SAY #85742 /* ~I think my employer will be very pleased indeed.~ [OH85742] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 879 // from:
  SAY #85859 /* ~I have always done well for you, L. Now you must do the same for me.~ [OH85859] */
  IF ~~ THEN DO ~SetGlobal("OHH_korkfalls","OH7300",2)
~ EXTERN ~OHHKORK~ 47
END

IF ~~ THEN BEGIN 880 // from:
  SAY #85860 /* ~I'll be waiting.~ [OH85860] */
  IF ~~ THEN DO ~EraseJournalEntry(86500)
AddJournalEntry(103140,QUEST_DONE)
~ EXIT
  IF ~  Global("ohh_kork_offered_mortality","global",1)
~ THEN DO ~AddJournalEntry(86504,INFO)
EraseJournalEntry(86500)
AddJournalEntry(86506,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 881 // from:
  SAY #86160 /* ~I did as L bid. Is he ready to fulfill his end of the bargain?~ [OH86160] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 34
END

IF ~~ THEN BEGIN 882 // from:
  SAY #86161 /* ~You underestimate them, Cabrina. They've saved my skin more than once.~ [OH86161] */
  IF ~~ THEN EXTERN ~OHHCAB25~ 36
END

IF ~~ THEN BEGIN 883 // from:
  SAY #86166 /* ~Good morning, Larloch.~ [OH86166] */
  IF ~~ THEN EXTERN ~OHHKORK~ 50
END

IF ~~ THEN BEGIN 884 // from:
  SAY #86172 /* ~That's not Korkorran.~ [OH86172] */
  IF ~~ THEN EXTERN ~OHHKORK~ 49
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 226
END

IF ~~ THEN BEGIN 885 // from: 887.3
  SAY #86177 /* ~You go, <CHARNAME>. I'll rejoin you presently.~ [OH86177] */
  IF ~~ THEN REPLY #86178 /* ~You're lying. This is the last time I'll see you, isn't it?~ */ GOTO 886
  IF ~~ THEN REPLY #86179 /* ~No, no. We started this together, I will see it end.~ */ EXTERN ~OHHKORK~ 51
END

IF ~~ THEN BEGIN 886 // from: 885.0
  SAY #86783 /* ~Farewell, <CHARNAME>.~ [OH86783] */
  IF ~~ THEN REPLY #86784 /* ~Goodbye, Hexxat.~ */ DO ~SetGlobal("OHH_cabkorkleave","GLOBAL",1)
LeaveParty()
EscapeAreaDestroy(4)
~ EXIT
END

IF ~~ THEN BEGIN 887 // from:
  SAY #86180 /* ~It doesn't matter.~ [OH86180] */
  IF ~~ THEN REPLY #86181 /* ~We took care of your lich problem for you.~ */ EXTERN ~OHHKORK~ 51
  IF ~~ THEN REPLY #86182 /* ~I'm not sure what's going on here, but can we please get it over with?~ */ EXTERN ~OHHKORK~ 53
  IF ~~ THEN REPLY #86183 /* ~After this morning, she's done with you.~ */ EXTERN ~OHHKORK~ 52
  IF ~~ THEN REPLY #86184 /* ~None of this matters. I'm finished with this. Hexxat, are you with me?~ */ GOTO 885
END

IF ~~ THEN BEGIN 888 // from:
  SAY #86192 /* ~Can you truly do this, Larloch?~ [OH86192] */
  IF ~~ THEN EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 889 // from:
  SAY #86193 /* ~I'll leave when the scales have been balanced. You go, <CHARNAME>. I'll catch up to you.~ [OH86193] */
  IF ~~ THEN REPLY #86297 /* ~Do it quickly, all right?~ */ DO ~SetGlobal("OHH_cabkorkleave","GLOBAL",1)
LeaveParty()
EscapeAreaDestroy(4)
~ EXIT
  IF ~~ THEN REPLY #86298 /* ~I'm not leaving you alone to face this lich.~ */ EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 890 // from:
  SAY #86194 /* ~Would you truly see me continue living this half-life, <CHARNAME>?~ [OH86194] */
  IF ~~ THEN REPLY #86303 /* ~I would see you happy, nothing more.~ */ GOTO 892
  IF ~  OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86304 /* ~Whatever life you have, I'd see you live it beside me.~ */ EXTERN ~OHHKORK~ 56
  IF ~~ THEN REPLY #86305 /* ~Half-life? You're a vampire. I wish I could live as you do, wield the power you wield, see the things you see.~ */ GOTO 891
END

IF ~~ THEN BEGIN 891 // from: 890.2
  SAY #86195 /* ~You ignore the things I've lost. I can only stand here now shrouded in a rotted cloak that reeks of death. I cannot look upon the sun.~ [OH86195] */
  IF ~~ THEN REPLY #86306 /* ~I understand. If you can reclaim that which you've lost, you must take the opportunity.~ */ EXTERN ~OHHKORK~ 56
  IF ~~ THEN REPLY #86307 /* ~Why would you want to? It's a bright light in the sky. Bo-ring.~ */ GOTO 893
  IF ~~ THEN REPLY #86308 /* ~A small price to pay for what you have gained.~ */ GOTO 895
END

IF ~~ THEN BEGIN 892 // from: 890.0
  SAY #86196 /* ~Then support me in this. I'll never find happiness in this corpse's shell.~ [OH86196] */
  IF ~~ THEN EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 893 // from: 891.1
  SAY #86197 /* ~Support me in this, <CHARNAME>. I can never be happy trapped in this corpse's flesh.~ [OH86197] */
  IF ~~ THEN EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 894 // from:
  SAY #86198 /* ~"After a fashion"?~ [OH86198] */
  IF ~~ THEN EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 895 // from: 891.2
  SAY #86199 /* ~The cost is not for you to judge, <CHARNAME>. Let's get this over with, Larloch.~ [OH86199] */
  IF ~~ THEN EXTERN ~OHHKORK~ 56
END

IF ~~ THEN BEGIN 896 // from:
  SAY #86200 /* ~You go, <CHARNAME>. I must see this through.~ [OH86200] */
  IF ~~ THEN REPLY #86309 /* ~If that is your wish, I'll honor it, but you can't expect me to stand here and watch you die. Goodbye, Hexxat.~ */ DO ~SetGlobal("OHH_cabkorkleave","GLOBAL",1)
LeaveParty()
EscapeAreaDestroy(4)
~ EXIT
  IF ~~ THEN REPLY #86310 /* ~I'll not let you see it through alone.~ */ GOTO 899
END

IF ~~ THEN BEGIN 897 // from: 901.1
  SAY #86201 /* ~It's tempting. But no. You carry enough already—I'll not burden you with my darkness.~ [OH86201] */
  IF ~~ THEN EXTERN ~OHHKORK~ 58
END

IF ~~ THEN BEGIN 898 // from: 916.0 915.2 915.1 915.0 913.0 910.0 908.0 901.3 900.0
  SAY #86202 /* ~I cannot give you what you desire, <CHARNAME>. If I made it seem otherwise—well, I'm good at making it seem otherwise. But I'm done using you.~ [OH86202] */
  IF ~~ THEN EXTERN ~OHHKORK~ 59
END

IF ~~ THEN BEGIN 899 // from: 896.1
  SAY #86203 /* ~I do not want to carry on like this.~ [OH86203] */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #86315 /* ~I do not want to lose you. ~ */ GOTO 913
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #86315 /* ~I do not want to lose you. ~ */ GOTO 914
  IF ~  !Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86316 /* ~Has our time together truly been so awful?~ */ GOTO 900
  IF ~  Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86316 /* ~Has our time together truly been so awful?~ */ GOTO 901
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #86317 /* ~Carry on like what? A supremely powerful being in a world of prey? Surely there are worse positions to be in. Surely dead, truly and finally dead, is one of them.~ */ GOTO 914
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #86317 /* ~Carry on like what? A supremely powerful being in a world of prey? Surely there are worse positions to be in. Surely dead, truly and finally dead, is one of them.~ */ GOTO 920
END

IF ~~ THEN BEGIN 900 // from: 899.2
  SAY #86204 /* ~Our time together has been naught but chaos, bloodshed, and death.~ [OH86204] */
  IF ~~ THEN REPLY #86318 /* ~It was more than that—to me, at least.~ */ GOTO 898
  IF ~~ THEN REPLY #86319 /* ~Exactly. Things can only get better from here.~ */ GOTO 902
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY #86320 /* ~Yes. It's been glorious!~ */ GOTO 903
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #86320 /* ~Yes. It's been glorious!~ */ EXTERN ~DORNJ~ 1070
END

IF ~~ THEN BEGIN 901 // from: 899.3
  SAY #86205 /* ~You've made the unbearable tolerable, <CHARNAME>.~ [OH86205] */
  IF ~~ THEN REPLY #86321 /* ~But you can bear no more. I understand. I wish I didn't, but I do.~ */ GOTO 927
  IF ~  False()
~ THEN REPLY #86322 /* ~I'll keep doing it too, if you'll let me.~ */ GOTO 897
  IF ~~ THEN REPLY #86322 /* ~I'll keep doing it too, if you'll let me.~ */ GOTO 921
  IF ~~ THEN REPLY #86323 /* ~And abandonment is my reward.~ */ GOTO 898
END

IF ~~ THEN BEGIN 902 // from: 900.1
  SAY #86206 /* ~Perhaps you are right, <CHARNAME>.~ [OH86206] */
  IF ~~ THEN GOTO 921
END

IF ~~ THEN BEGIN 903 // from: 900.2
  SAY #86207 /* ~Glorious? No. I did what I had to to survive. But everything I knew before Dragomir's Tomb is gone. Everything I built has crumbled to dust. What have I left to live for?~ [OH86207] */
  IF ~~ THEN REPLY #86324 /* ~If you have to ask the question, you already know the answer.~ */ EXTERN ~OHHKORK~ 59
  IF ~~ THEN REPLY #86325 /* ~You really need to ask that question?~ */ GOTO 904
  IF ~~ THEN REPLY #86326 /* ~Live for me. Give me the vampire's gift, and together we shall reign over the night.~ */ GOTO 916
END

IF ~~ THEN BEGIN 904 // from: 925.1 903.1
  SAY #86208 /* ~In truth, I do not. In my heart, I know the answer.~ [OH86208] */
  IF ~~ THEN EXTERN ~OHHKORK~ 58
END

IF ~~ THEN BEGIN 905 // from: 913.1
  SAY #86209 /* ~Heh. I'll see you the next time you close your eyes, <CHARNAME>.~ [OH86209] */
  IF ~~ THEN EXTERN ~OHHKORK~ 59
END

IF ~~ THEN BEGIN 906 // from: 913.2
  SAY #86210 /* ~Too far, <CHARNAME>.~ [OH86210] */
  IF ~~ THEN REPLY #86327 /* ~Forgive me, Hexxat. In my fear, I spoke without thinking.~ */ GOTO 907
  IF ~  !IsValidForPartyDialogue("neera")
~ THEN REPLY #86328 /* ~And what will you do about it? Kill me? Go ahead, what do I care?~ */ GOTO 908
  IF ~  IsValidForPartyDialogue("neera")
~ THEN REPLY #86328 /* ~And what will you do about it? Kill me? Go ahead, what do I care?~ */ EXTERN ~NEERAJ~ 558
END

IF ~~ THEN BEGIN 907 // from: 917.0 906.0
  SAY #86211 /* ~Forget it, <CHARNAME>. And forget me while you're about it.~ [OH86211] */
  IF ~~ THEN EXTERN ~OHHKORK~ 58
END

IF ~~ THEN BEGIN 908 // from: 916.1 906.1
  SAY #86212 /* ~Damn it, <CHARNAME>! I don't want it to end like this...~ [OH86212] */
  IF ~~ THEN REPLY #86329 /* ~It doesn't need to end at all. That's a choice you made, Hexxat. You alone, with no consideration for how it would affect those of us who care for you.~ */ GOTO 898
  IF ~~ THEN REPLY #86330 /* ~I don't want it to end at all—but that decision apparently isn't mine to make, so have at you!~ */ GOTO 909
END

IF ~~ THEN BEGIN 909 // from: 908.1
  SAY #86237 /* ~We'll die together, then.~ [OH86237] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabkorkleave","GLOBAL",1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 910 // from: 914.2 914.0
  SAY #86238 /* ~I'm sorry.~ [OH86238] */
  IF ~~ THEN GOTO 898
END

IF ~~ THEN BEGIN 911 // from:
  SAY #86239 /* ~I thought I had, but now I'm not so certain.~ [OH86239] */
  IF ~~ THEN GOTO 924
END

IF ~~ THEN BEGIN 912 // from:
  SAY #86240 /* ~You'll not allow it? I don't answer to you, <CHARNAME>.~ [OH86240] */
  IF ~~ THEN EXTERN ~OHHKORK~ 59
END

IF ~~ THEN BEGIN 913 // from: 899.0
  SAY #86241 /* ~You can't lose what you never had.~ [OH86241] */
  IF ~~ THEN REPLY #86331 /* ~We could have been something, Hexxat.~ */ GOTO 898
  IF ~~ THEN REPLY #86332 /* ~I can dream, Hexxat. And I have. Repeatedly.~ */ GOTO 905
  IF ~~ THEN REPLY #86333 /* ~You owe me, Hexxat.~ */ GOTO 906
END

IF ~~ THEN BEGIN 914 // from: 899.4 899.1
  SAY #86242 /* ~I see no way to avoid it.~ [OH86242] */
  IF ~  CheckStatLT(Player1,14,CHR)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86334 /* ~You embrace death when you should embrace me. If that is truly your wish, I'll not stand in your way.~ */ GOTO 910
  IF ~  OR(2)
CheckStatGT(Player1,13,CHR)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86334 /* ~You embrace death when you should embrace me. If that is truly your wish, I'll not stand in your way.~ */ EXTERN ~OHHKORK~ 60
  IF ~  CheckStatLT(Player1,14,CHR)
!Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86335 /* ~Look harder, damn it!~ */ GOTO 910
  IF ~  OR(2)
CheckStatGT(Player1,13,CHR)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN REPLY #86335 /* ~Look harder, damn it!~ */ GOTO 921
  IF ~~ THEN REPLY #86336 /* ~I do. Take me as Dragomir did you—make me a vampire. We can share the night together, for all eternity.~ */ GOTO 916
END

IF ~~ THEN BEGIN 915 // from: 924.2 921.2
  SAY #86243 /* ~You would give up the sun to be with me always.~ [OH86243] */
  IF ~~ THEN REPLY #86337 /* ~Gladly.~ */ GOTO 898
  IF ~~ THEN REPLY #86338 /* ~There isn't much I wouldn't give up to be with you.~ */ GOTO 898
  IF ~~ THEN REPLY #86339 /* ~No great loss.~ */ GOTO 898
END

IF ~~ THEN BEGIN 916 // from: 925.2 920.2 914.4 903.2
  SAY #86244 /* ~If you knew what you ask, you would never ask it of me. I'd see you dead before I cursed you to an eternity of darkness.~ [OH86244] */
  IF ~~ THEN REPLY #86340 /* ~I'd die before I gave you up.~ */ GOTO 898
  IF ~~ THEN REPLY #86341 /* ~So be it. Kill me, then.~ */ GOTO 908
  IF ~~ THEN REPLY #86342 /* ~Give me the gift, Hexxat. I'll not ask again.~ */ EXTERN ~OHHCAB25~ 39
END

IF ~~ THEN BEGIN 917 // from:
  SAY #86245 /* ~I'll honor your life, or gift you death. But I'll never make a vampire of you.~ [OH86245] */
  IF ~~ THEN REPLY #86343 /* ~Forgive me, Hexxat. I lost myself for a moment. ~ */ GOTO 907
  IF ~~ THEN REPLY #86344 /* ~Then be made human and die. What do I care?~ */ GOTO 927
  IF ~~ THEN REPLY #86345 /* ~Then you're no longer of any use to me.~ */ GOTO 918
END

IF ~~ THEN BEGIN 918 // from: 917.2
  SAY #86246 /* ~Was that all I ever was to you, <CHARNAME>? A means to an end? So be it, then. I'll give you an end, though not the one you wanted.~ [OH86246] */
  IF ~~ THEN DO ~SetGlobal("OHH_cabkorkleave","GLOBAL",1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 919 // from: 924.0 921.0
  SAY #86247 /* ~You promise me, <CHARNAME>?~ [OH86247] */
  IF ~~ THEN REPLY #86346 /* ~I promise.~ */ GOTO 923
END

IF ~~ THEN BEGIN 920 // from: 899.5
  SAY #86248 /* ~What you say isn't without merit, <CHARNAME>. This state of undeath offers many advantages—but the cost is higher than you realize.~ [OH86248] */
  IF ~~ THEN REPLY #86347 /* ~You're a survivor, Hexxat. No cost is too high if it means you see another day—or night, as the case may be.~ */ GOTO 925
  IF ~~ THEN REPLY #86348 /* ~All Larloch offers you is death—that option will always be there, and once chosen, there's no coming back.~ */ GOTO 921
  IF ~~ THEN REPLY #86349 /* ~Then help me understand. Make me a vampire. We can stalk the night together.~ */ GOTO 916
END

IF ~~ THEN BEGIN 921 // from: 920.1 914.3 902.0 901.2
  SAY #86249 /* ~You've nearly convinced me. We'll go forward together as we have—me as I am, you as you are—on one condition. If, one day, I should ask you to end my existence, you must do so with neither hesitation nor regret.~ [OH86249] */
  IF ~~ THEN REPLY #86350 /* ~I can do that.~ */ GOTO 919
  IF ~~ THEN REPLY #86351 /* ~I can't do that. I won't.~ */ GOTO 922
  IF ~~ THEN REPLY #86352 /* ~I will, but I've a condition of my own. To ensure that I'm there to end your life at the time of your choosing, I must become as you are. You must give me the vampire's gift.~ */ GOTO 915
END

IF ~~ THEN BEGIN 922 // from: 924.1 921.1
  SAY #86250 /* ~You must, <CHARNAME>. Promise me.~ [OH86250] */
  IF ~~ THEN REPLY #86353 /* ~Very well. I promise to see you dead, if and when you wish it so.~ */ GOTO 923
  IF ~~ THEN REPLY #86354 /* ~I thought there was nothing I would deny you, Hexxat. You've proven me wrong by asking this.~ */ GOTO 926
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #86355 /* ~I'll make no such promise. You have always been a survivor. You will not stop now. You don't know how.~ */ GOTO 929
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #86355 /* ~I'll make no such promise. You have always been a survivor. You will not stop now. You don't know how.~ */ GOTO 928
END

IF ~~ THEN BEGIN 923 // from: 928.0 922.0 919.0
  SAY #86251 /* ~I believe our business is concluded, Larloch.~ [OH86251] */
  IF ~~ THEN EXTERN ~OHHKORK~ 61
END

IF ~~ THEN BEGIN 924 // from: 911.0
  SAY #86252 /* ~You've nearly convinced me, <CHARNAME>. We'll go forward together—on one condition. If, one day, I should ask you to end my existence, you must do so with neither hesitation nor regret.~ [OH86252] */
  IF ~~ THEN REPLY #86356 /* ~I can do that.~ */ GOTO 919
  IF ~~ THEN REPLY #86357 /* ~I can't do that.~ */ GOTO 922
  IF ~~ THEN REPLY #86358 /* ~I will, but I've a condition of my own. To ensure that I'm there to end your life at the time of your choosing, I must become as you are. You must give me the vampire's gift.~ */ GOTO 915
END

IF ~~ THEN BEGIN 925 // from: 920.0
  SAY #86253 /* ~I have spent more than two centuries surviving, and what has that gained me? Everything I knew before Dragomir's Tomb is gone. Everything I built has crumbled to dust. What have I left to live for?~ [OH86253] */
  IF ~~ THEN REPLY #86359 /* ~If you have to ask the question, you already know the answer.~ */ EXTERN ~OHHKORK~ 59
  IF ~~ THEN REPLY #86360 /* ~You really need to ask that question?~ */ GOTO 904
  IF ~~ THEN REPLY #86361 /* ~Live for me. Give me the vampire's gift, and together we shall reign over the night.~ */ GOTO 916
END

IF ~~ THEN BEGIN 926 // from: 922.1
  SAY #86254 /* ~Then let me end this now.~ [OH86254] */
  IF ~~ THEN GOTO 927
END

IF ~~ THEN BEGIN 927 // from: 929.0 926.0 917.1 901.0
  SAY #86255 /* ~Give me what I've lost, Larloch. I'd see this end.~ [OH86255] */
  IF ~~ THEN EXTERN ~OHHKORK~ 62
END

IF ~~ THEN BEGIN 928 // from: 922.3
  SAY #86265 /* ~You know me too well, <CHARNAME>.~ [OH86265] */
  IF ~~ THEN GOTO 923
END

IF ~~ THEN BEGIN 929 // from: 922.2
  SAY #86266 /* ~I learn new things quickly. And I've given this much thought.~ [OH86266] */
  IF ~~ THEN GOTO 927
END

IF ~~ THEN BEGIN 930 // from:
  SAY #102320 /* ~A restored heart and all is mended. What I would do...~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 179
END

IF ~~ THEN BEGIN 931 // from:
  SAY #102320 /* ~A restored heart and all is mended. What I would do...~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 179
END

IF ~~ THEN BEGIN 932 // from:
  SAY #102320 /* ~A restored heart and all is mended. What I would do...~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 179
END

IF ~~ THEN BEGIN 933 // from:
  SAY #102320 /* ~A restored heart and all is mended. What I would do...~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 179
END
