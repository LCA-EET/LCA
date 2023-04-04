// creator  : weidu (version 24900)
// argument : BRASAAD.DLG
// game     : .
// source   : ./override/BRASAAD.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BRASAAD~

IF ~~ THEN BEGIN 0 // from:
  SAY #98675 /* ~Good <DAYNIGHTALL>, Aerie. What can I do for you?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 450
END

IF ~~ THEN BEGIN 1 // from:
  SAY #98677 /* ~Very good.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #98678 /* ~...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #98679 /* ~Are you sure there's nothing I can do for you?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 451
END

IF ~~ THEN BEGIN 4 // from:
  SAY #98681 /* ~We are not alone, Aerie. We have <CHARNAME>.~ */
  IF ~~ THEN REPLY #98682 /* ~And each other.~ */ GOTO 8
  IF ~~ THEN REPLY #98683 /* ~Yeah! What am I, chopped horse meat?~ */ EXTERN ~BAERIE~ 452
  IF ~~ THEN REPLY #98684 /* ~Leave me out of this.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #98686 /* ~Is our avariel friend all right, <CHARNAME>?~ */
  IF ~~ THEN REPLY #98687 /* ~No. And you didn't help matters.~ */ GOTO 6
  IF ~~ THEN REPLY #98688 /* ~As good as she gets, I'm afraid.~ */ EXIT
  IF ~~ THEN REPLY #98689 /* ~Has she ever been?~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #98690 /* ~I was merely trying to point out that Aerie is not so alone as she thinks.~ */
  IF ~~ THEN REPLY #98691 /* ~I think she's perfectly aware of how lonely she is.~ */ GOTO 9
  IF ~~ THEN REPLY #98692 /* ~You have no idea what just happened, do you?~ */ GOTO 7
  IF ~~ THEN REPLY #98693 /* ~Doing so will not make her feel less lonely.~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 10.2 9.0 8.2 8.1 8.0 6.1
  SAY #98694 /* ~What do you mean?~ */
  IF ~~ THEN REPLY #98697 /* ~*sigh* It doesn't matter anymore.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #98698 /* ~Obviously.~ */
  IF ~~ THEN REPLY #98699 /* ~You're blowing a wonderful opportunity right now and you don't even know it, do you?~ */ GOTO 7
  IF ~~ THEN REPLY #98700 /* ~You have no clue what's happening here, do you? Stunning...~ */ GOTO 7
  IF ~~ THEN REPLY #98701 /* ~That's not the only thing that's obvious.~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.2 6.0
  SAY #98702 /* ~To be alone is not the same thing as being lonely.~ */
  IF ~~ THEN REPLY #98703 /* ~That is true. Incredibly, fantastically, spectacularly, RELEVANTLY to this conversation true.~ */ GOTO 7
  IF ~~ THEN REPLY #98704 /* ~The latter's usually easier to deal with—if the person you turn to understands the situation.~ */ GOTO 10
  IF ~~ THEN REPLY #98705 /* ~I shall leave you to discuss this with Aerie in private.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #98706 /* ~Very true.~ */
  IF ~~ THEN REPLY #98707 /* ~Yes, it is. VERY true.~ */ EXIT
  IF ~~ THEN REPLY #98708 /* ~This situation I describe, does it maybe seem familiar to you?~ */ GOTO 11
  IF ~~ THEN REPLY #98709 /* ~Gods help you, Rasaad. I fear nobody else can.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #98711 /* ~Should it?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 453
END

IF ~  IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Anomen")
!AreaType(DUNGEON)
Global("OHR_anomen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #98713 /* ~...And that was how I learned that my brother had been turned by the Doom Bringer, Alorgoth.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_anomen","GLOBAL",1)
~ EXTERN ~BANOMEN~ 587
END

IF ~~ THEN BEGIN 13 // from:
  SAY #98715 /* ~I am just a man, Anomen.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 588
END

IF ~~ THEN BEGIN 14 // from:
  SAY #98717 /* ~Of yours, perhaps. My own adventures would make poor entertainment, I fear.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 589
END

IF ~~ THEN BEGIN 15 // from:
  SAY #98719 /* ~I would not see the story of my failure made public.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 590
END

IF ~~ THEN BEGIN 16 // from:
  SAY #98725 /* ~I must admit, some of the things you say make me... uncomfortable.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 592
END

IF ~~ THEN BEGIN 17 // from:
  SAY #98727 /* ~Excuse me. I must go—meditate. Somewhere else.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Edwin")
!AreaType(DUNGEON)
Global("OHR_edwin","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #98730 /* ~Tell me, friend Edwin—why do you always keep your hood up?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_edwin","GLOBAL",1)
~ EXTERN ~BEDWIN~ 106
END

IF ~~ THEN BEGIN 19 // from:
  SAY #98732 /* ~I was merely curious.~ */
  IF ~~ THEN GOTO 20
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BEDWIN~ 107
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 0
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #98735 /* ~Is it just a fashion choice, or are there other reasons you keep it?~ */
  IF ~~ THEN GOTO 21
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~BHEXXAT~ 1
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #98737 /* ~Most Thayans do shave their heads, don't they?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 108
END

IF ~~ THEN BEGIN 22 // from:
  SAY #98739 /* ~I am sorry if I've upset you...~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 109
END

IF ~~ THEN BEGIN 23 // from:
  SAY #98742 /* ~No. I shave it each day.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 111
END

IF ~~ THEN BEGIN 24 // from:
  SAY #98744 /* ~Surely you know how to shave.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 112
END

IF ~~ THEN BEGIN 25 // from:
  SAY #98747 /* ~Having the correct tools helps. Come, I'll show you what I use.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #98758 /* ~You call me owl, Haer'Dalis? It does not fit. I rather think I am crow, or a vulture.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 166
END

IF ~~ THEN BEGIN 27 // from:
  SAY #98760 /* ~I see myself all too well.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 167
END

IF ~~ THEN BEGIN 28 // from:
  SAY #98762 /* ~If there is, I see it not.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 168
END

IF ~~ THEN BEGIN 29 // from:
  SAY #98765 /* ~It was not an easy life, but it was a good one. We—I was fortunate enough to be taken in by the order. Left to the streets of Calimport, I would surely be dead by now.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #98767 /* ~<CHARNAME> has told me of Gorion. You were fortunate to have such a man to raise you.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 2
END

IF ~~ THEN BEGIN 31 // from:
  SAY #98769 /* ~Calimport is a city of wonders, but it was not all enjoyable, I assure you of that.~ */
  IF ~~ THEN REPLY #98770 /* ~Imoen's always had trouble grasping the idea that the grass on the other side of the fence is invariably a brighter shade of green.~ */ EXTERN ~BIMOEN2~ 3
  IF ~~ THEN REPLY #98771 /* ~And Candlekeep was not nearly as boring as Imoen would have you believe.~ */ EXTERN ~BIMOEN2~ 4
  IF ~~ THEN REPLY #98772 /* ~No place is. Not in this world.~ */ EXIT
END

IF ~  IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Jaheira")
!AreaType(DUNGEON)
Global("OHR_jaheira","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #98776 /* ~Are you all right, Jaheira?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_jaheira","GLOBAL",1)
~ EXTERN ~BJAHEIR~ 461
END

IF ~~ THEN BEGIN 33 // from:
  SAY #98778 /* ~You generally seem—at peace. But for a moment there, your expression darkened.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 462
END

IF ~~ THEN BEGIN 34 // from:
  SAY #98780 /* ~<CHARNAME> has told me that's the worst thing I can do. I expect <PRO_HESHE>'s joking. I think. I hope.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #98781 /* ~What were you thinking of?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 463
END

IF ~~ THEN BEGIN 36 // from:
  SAY #98783 /* ~Ah. I am sorry. I shall leave you to your reflections.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 464
END

IF ~~ THEN BEGIN 37 // from:
  SAY #98785 /* ~I'm sorry to say I didn't know Khalid well.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 465
END

IF ~~ THEN BEGIN 38 // from:
  SAY #98787 /* ~Tell me about him.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 466
END

IF ~~ THEN BEGIN 39 // from:
  SAY #98795 /* ~Forgive me, Jaheira. I did not mean to cause you discomfort.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 468
END

IF ~~ THEN BEGIN 40 // from:
  SAY #98800 /* ~I know it is difficult, but try not to focus on what you have lost, Jaheira. Instead, treasure the time you had together. It was a gift from the gods.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 471
END

IF ~  IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Jan")
!AreaType(DUNGEON)
Global("OHR_jan","GLOBAL",0)
~ THEN BEGIN 41 // from:
  SAY #98804 /* ~Tell me, Jan, is it true that you have a device that—~ */
  IF ~~ THEN DO ~SetGlobal("OHR_jan","GLOBAL",1)
~ EXTERN ~BJAN~ 116
END

IF ~~ THEN BEGIN 42 // from:
  SAY #98806 /* ~I didn't finish my question.~ */
  IF ~~ THEN EXTERN ~BJAN~ 117
END

IF ~~ THEN BEGIN 43 // from:
  SAY #98808 /* ~Why would I want to know about that?~ */
  IF ~~ THEN EXTERN ~BJAN~ 118
END

IF ~~ THEN BEGIN 44 // from:
  SAY #98810 /* ~I've no interest in removing my tattoos. They are part of my identity.~ */
  IF ~~ THEN EXTERN ~BJAN~ 119
END

IF ~~ THEN BEGIN 45 // from:
  SAY #98812 /* ~What?~ */
  IF ~~ THEN EXTERN ~BJAN~ 120
END

IF ~~ THEN BEGIN 46 // from:
  SAY #98814 /* ~I don't want to be rid of them.~ */
  IF ~~ THEN EXTERN ~BJAN~ 121
END

IF ~~ THEN BEGIN 47 // from:
  SAY #98816 /* ~It matters little, because—~ */
  IF ~~ THEN EXTERN ~BJAN~ 122
END

IF ~~ THEN BEGIN 48 // from:
  SAY #98818 /* ~I wanted to ask you about—~ */
  IF ~~ THEN EXTERN ~BJAN~ 123
END

IF ~~ THEN BEGIN 49 // from:
  SAY #98820 /* ~That—can't have been healthy.~ */
  IF ~~ THEN EXTERN ~BJAN~ 124
END

IF ~~ THEN BEGIN 50 // from:
  SAY #98824 /* ~That's very interesting—~ */
  IF ~~ THEN EXTERN ~BJAN~ 127
END

IF ~~ THEN BEGIN 51 // from:
  SAY #98826 /* ~I—I'll be going now.~ */
  IF ~~ THEN EXTERN ~BJAN~ 128
END

IF ~~ THEN BEGIN 52 // from:
  SAY #98837 /* ~There's no need for violence—~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 138
END

IF ~~ THEN BEGIN 53 // from: 58.0 57.0
  SAY #98839 /* ~I don't know what I've done to offend you, but whatever it was, I apologize.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 139
END

IF ~~ THEN BEGIN 54 // from:
  SAY #98841 /* ~I do, yes.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 140
END

IF ~~ THEN BEGIN 55 // from:
  SAY #98843 /* ~I never claimed I was, nor would I.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 141
END

IF ~~ THEN BEGIN 56 // from:
  SAY #98845 /* ~I— What just happened?~ */
  IF ~~ THEN REPLY #98846 /* ~Korgan just happened. Don't let it bother you.~ */ EXIT
  IF ~~ THEN REPLY #98847 /* ~Eh. The dwarf's touchy. Just—avoid him as best you can for a while. I'm sure he'll find another target for his ire in due course.~ */ EXIT
  IF ~~ THEN REPLY #98848 /* ~I don't know, which works out well as I also don't care.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #98849 /* ~I do not know what he's talking about, <CHARNAME>. Truly.~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 58 // from:
  SAY #98851 /* ~My side? Forgive me, Korgan.~ */
  IF ~~ THEN GOTO 53
END

IF ~  IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Mazzy")
!AreaType(DUNGEON)
Global("OHR_mazzy","GLOBAL",0)
~ THEN BEGIN 59 // from:
  SAY #98852 /* ~...So even though you've the abilities of the paladin, you aren't one?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_mazzy","GLOBAL",1)
~ EXTERN ~BMAZZY~ 127
END

IF ~~ THEN BEGIN 60 // from:
  SAY #98854 /* ~Surely what's in your heart is what matters.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 128
END

IF ~~ THEN BEGIN 61 // from:
  SAY #98856 /* ~Perhaps, some day, there will be fewer restrictions on those who may carry the banner of their chosen god as paladins.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 129
END

IF ~  IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Minsc")
!AreaType(DUNGEON)
Global("OHR_minsc","GLOBAL",0)
~ THEN BEGIN 62 // from:
  SAY #98858 /* ~And what is your story, my friend?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_minsc","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #98859 /* ~...~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #98860 /* ~Minsc?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 99
END

IF ~~ THEN BEGIN 65 // from:
  SAY #98862 /* ~As interesting a conversation as that would doubtless be, I was talking to you. You are Rashemi, are you not?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 100
END

IF ~~ THEN BEGIN 66 // from:
  SAY #98864 /* ~What brings you to this place? No, let me guess: It is Boo.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 101
END

IF ~~ THEN BEGIN 67 // from:
  SAY #98866 /* ~Your dajemma?~ */
  IF ~~ THEN EXTERN ~BMINSC~ 102
END

IF ~~ THEN BEGIN 68 // from:
  SAY #98868 /* ~But you did not fail Boo.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 103
END

IF ~~ THEN BEGIN 69 // from:
  SAY #98870 /* ~The hamster is wise. You are a good man. Boo knows.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 104
END

IF ~~ THEN BEGIN 70 // from:
  SAY #98872 /* ~It would indeed, my friend. It would indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #98874 /* ~The same thing that always troubles me, Valygar.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 150
END

IF ~~ THEN BEGIN 72 // from:
  SAY #98877 /* ~He killed my brother.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 152
END

IF ~~ THEN BEGIN 73 // from:
  SAY #98879 /* ~I'd rather die than see my brother go unavenged.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 153
END

IF ~~ THEN BEGIN 74 // from:
  SAY #98881 /* ~Is that what you do?~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 154
END

IF ~~ THEN BEGIN 75 // from:
  SAY #98884 /* ~Then I guess we will both have to strive to live for ourselves.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Viconia")
!AreaType(DUNGEON)
Global("OHR_viconia","GLOBAL",0)
~ THEN BEGIN 76 // from:
  SAY #98923 /* ~I know you worship Shar, Viconia, and you think we have little to discuss...~ */
  IF ~~ THEN DO ~SetGlobal("OHR_viconia","GLOBAL",1)
~ EXTERN ~BVICONI~ 575
END

IF ~~ THEN BEGIN 77 // from:
  SAY #98925 /* ~...But the Precepts of Incandescence are clear. It is my duty to recognize the light in others, not just the darkness.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 576
END

IF ~~ THEN BEGIN 78 // from:
  SAY #98927 /* ~There is light in you, Viconia. I know there is.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 577
END

IF ~~ THEN BEGIN 79 // from:
  SAY #98929 /* ~I shall leave you for now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #98931 /* ~Say what you have to say, half-orc.~ */
  IF ~~ THEN GOTO 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 4
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 82
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 3
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 2
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN GOTO 81
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 1
END

IF ~~ THEN BEGIN 81 // from: 80.5
  SAY #98934 /* ~What would she want with me?~ */
  IF ~~ THEN GOTO 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 4
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 82
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 3
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 2
END

IF ~~ THEN BEGIN 82 // from: 81.2 80.2
  SAY #98935 /* ~Why would he offer anything to me?~ */
  IF ~~ THEN GOTO 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BDORN~ 4
END

IF ~~ THEN BEGIN 83 // from: 82.0 81.0 80.0
  SAY #98938 /* ~I wish I could say I found that flattering.~ */
  IF ~~ THEN EXTERN ~BDORN~ 5
END

IF ~~ THEN BEGIN 84 // from:
  SAY #98940 /* ~What is that?~ */
  IF ~~ THEN EXTERN ~BDORN~ 6
END

IF ~~ THEN BEGIN 85 // from:
  SAY #98942 /* ~Enough! Selûne may no longer look favorably upon me, but I'll not be tempted by a demon's promises.~ */
  IF ~~ THEN EXTERN ~BDORN~ 7
END

IF ~~ THEN BEGIN 86 // from:
  SAY #98944 /* ~That may be. But I will still have been right to do so.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHR_hexxat","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #98945 /* ~May I speak with you, Hexxat?~ */
  IF ~~ THEN DO ~SetGlobal("OHR_hexxat","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 2
END

IF ~~ THEN BEGIN 88 // from:
  SAY #98947 /* ~I'm sorry?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 3
END

IF ~~ THEN BEGIN 89 // from:
  SAY #98949 /* ~Please forgive me, Hexxat. I did not want—~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 4
END

IF ~~ THEN BEGIN 90 // from:
  SAY #98951 /* ~What is it like? Being a vampire, I mean.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 5
END

IF ~~ THEN BEGIN 91 // from:
  SAY #98953 /* ~No! I mean—~ */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #98954 /* ~You are teasing me. Aren't you?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 6
END

IF ~~ THEN BEGIN 93 // from:
  SAY #98956 /* ~My brother... He is dead.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 7
END

IF ~~ THEN BEGIN 94 // from:
  SAY #98958 /* ~I wonder, sometimes—if it were possible—if I could just see him one more time—~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 8
END

IF ~~ THEN BEGIN 95 // from:
  SAY #100271 /* ~What? No! Never.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 9
END

IF ~~ THEN BEGIN 96 // from:
  SAY #98968 /* ~Thank you, Hexxat.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 12
END

IF ~~ THEN BEGIN 97 // from:
  SAY #98971 /* ~You are surprised by this?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 150
END

IF ~~ THEN BEGIN 98 // from:
  SAY #98973 /* ~Some sects are more—disciplined than others. My own is—was part of the Sun Soul order. The Sun Soul philosophy has as much to do with my abilities as the goddess.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 151
END

IF ~~ THEN BEGIN 99 // from:
  SAY #98975 /* ~Not the order. My sect. I may no longer walk in Selûne's grace, but I still try to live by the Precepts of Incandescence. I will always strive to find physical perfection and spiritual virtue, as well as to shine light into darkness.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 152
END

IF ~~ THEN BEGIN 100 // from:
  SAY #98977 /* ~More efficient ways, perhaps. Better? That is a matter of perspective.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #98979 /* ~It is our duty to spread light wherever we can. There are few who appreciate receiving light more than those whose circumstances have left them in darkness.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 52
END

IF ~~ THEN BEGIN 102 // from:
  SAY #98982 /* ~All lives have meaning. And bringing light to the darkness is always a struggle, no matter the circumstances of one's birth.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 54
END

IF ~~ THEN BEGIN 103 // from:
  SAY #98985 /* ~I'm sure they recognize it.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 56
END

IF ~  See(Player1)
Class(Player1,MONK)
Kit(Player1,SUN_SOUL)
CombatCounter(0)
!Detect([ENEMY])
!AreaType(DUNGEON)
Global("OHR_sunsoulpc_banter","GLOBAL",0)
~ THEN BEGIN 104 // from:
  SAY #100000 /* ~It is gratifying to be fighting alongside you, <CHARNAME>. I am glad at least one in our order has not forsaken me.~ */
  IF ~~ THEN REPLY #100001 /* ~The Selûnites represent only a small fraction of the order. You still hold to the Precepts of Incandescence. You are my brother, and I will always stand by you.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",1)
SetGlobalTimer("OHR_sunsoulpc_timer","GLOBAL",20000)
~ GOTO 105
  IF ~~ THEN REPLY #100002 /* ~Your sect will come to understand why you have done what you've done someday, Rasaad.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",1)
SetGlobalTimer("OHR_sunsoulpc_timer","GLOBAL",20000)
~ GOTO 106
  IF ~~ THEN REPLY #100003 /* ~Forget the Selûnites. Their idiocy will cost them dearly.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",1)
SetGlobalTimer("OHR_sunsoulpc_timer","GLOBAL",20000)
~ GOTO 107
  IF ~~ THEN REPLY #100004 /* ~I have not forsaken you yet, Rasaad. But don't think I support you in your actions. I've yet to decide how I feel about all this.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",1)
SetGlobalTimer("OHR_sunsoulpc_timer","GLOBAL",20000)
~ GOTO 108
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #100005 /* ~I appreciate that more than I can say. ~ */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY #100006 /* ~This time, I am not so sure. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from: 104.2
  SAY #100007 /* ~I fear it may. ~ */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 108 // from: 104.3
  SAY #100008 /* ~I appreciate your honesty.~ */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0 107.0 105.0
  SAY #100009 /* ~I will prove to you the righteousness of my course. You will see.~ */
  IF ~~ THEN EXIT
END

IF ~  See(Player1)
Class(Player1,MONK)
Kit(Player1,SUN_SOUL)
CombatCounter(0)
!Detect([ENEMY])
!AreaType(DUNGEON)
Global("OHR_sunsoulpc_banter","GLOBAL",1)
GlobalTimerExpired("OHR_sunsoulpc_timer","GLOBAL")
~ THEN BEGIN 110 // from:
  SAY #100010 /* ~The last few weeks and months have been difficult for me. I have even wondered if Selûne's light is entirely lost to me. ~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #100011 /* ~Standing by your side has shown me otherwise. Thank you. ~ */
  IF ~~ THEN REPLY #100012 /* ~Any time, my friend.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #100013 /* ~Glad I could help.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #100014 /* ~Thank YOU.~ */ DO ~SetGlobal("OHR_sunsoulpc_banter","GLOBAL",2)
~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.2
  SAY #100015 /* ~You need never thank me, <CHARNAME>. You have done more for me than I can ever repay. Yet I will try.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Cernd")
!AreaType(DUNGEON)
Global("OHR_cernd","GLOBAL",0)
~ THEN BEGIN 113 // from:
  SAY #101911 /* ~I admire your devotion, Cernd.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_cernd","GLOBAL",1)
~ EXTERN ~BCERND~ 100
END

IF ~~ THEN BEGIN 114 // from:
  SAY #101913 /* ~To nature. Has your faith in the Mother ever been tested?~ */
  IF ~~ THEN EXTERN ~BCERND~ 101
END

IF ~~ THEN BEGIN 115 // from:
  SAY #101915 /* ~What happens when the storm tears the tree from its holdings? What then?~ */
  IF ~~ THEN EXTERN ~BCERND~ 102
END

IF ~  IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Yoshimo")
!AreaType(DUNGEON)
Global("OHR_yoshimo","GLOBAL",0)
~ THEN BEGIN 116 // from:
  SAY #101978 /* ~You are a long way from home, thief.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_yoshimo","GLOBAL",1)
~ EXTERN ~BYOSHIM~ 84
END

IF ~~ THEN BEGIN 117 // from:
  SAY #101980 /* ~I see. And the nature of the incident...?~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 85
END

IF ~~ THEN BEGIN 118 // from:
  SAY #101982 /* ~You are no friend of mine, Yoshimo. I do not approve of what you do or the way in which you do it. I am watching you closely.~ */
  IF ~~ THEN EXTERN ~BYOSHIM~ 86
END

IF ~~ THEN BEGIN 119 // from:
  SAY #102098 /* ~Enough.~ */
  IF ~~ THEN EXTERN ~BDORN~ 102
END

IF ~~ THEN BEGIN 120 // from:
  SAY #102100 /* ~You know I am right. Every waking moment, every sleeping hour, constant and unceasing, the truth gnaws at the edges of your soul—~ */
  IF ~~ THEN EXTERN ~BDORN~ 103
END

IF ~~ THEN BEGIN 121 // from:
  SAY #101884 /* ~I seem to have developed something of a headache.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 164
END

IF ~~ THEN BEGIN 122 // from:
  SAY #101886 /* ~Neera, has anyone taught you the virtues of silent contemplation?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 165
END

IF ~~ THEN BEGIN 123 // from:
  SAY #101888 /* ~The vastness of the cosmos? The dappled play of light and dark at dusk? What joy to be had and given in reining in our more talkative impulses?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 166
END

IF ~~ THEN BEGIN 124 // from:
  SAY #101890 /* ~Oh yes. I know.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #102101 /* ~I said enough!~ */
  IF ~~ THEN EXIT
END
