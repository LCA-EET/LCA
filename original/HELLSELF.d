// creator  : weidu (version 24900)
// argument : HELLSELF.DLG
// game     : .
// source   : ./override/HELLSELF.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~HELLSELF~

IF ~  NumTimesTalkedTo(0)
Global("Player1Fear","GLOBAL",0)
Global("Player1Selfish","GLOBAL",0)
Global("Player1Greed","GLOBAL",0)
Global("Player1Pride","GLOBAL",0)
Global("Player1Wrath","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #55011 /* ~Ahhh... so you have come to us at last, child of Bhaal. You have come to claim your heritage, perhaps? And in pieces, no less. Tsk tsk tsk... how terrible it must be to die in such a state.~ [HELSEL06] */
  IF ~~ THEN REPLY #55012 /* ~Claim my heritage? What are you talking about?~ */ GOTO 1
  IF ~~ THEN REPLY #55021 /* ~I am not dead! Irenicus is dead, and somehow I have followed him here.~ */ GOTO 6
  IF ~~ THEN REPLY #55024 /* ~What are you talking about, "in pieces"? What kind of riddle is this?~ */ GOTO 7
  IF ~~ THEN REPLY #55027 /* ~Continue to speak to me in such a manner, fiend, and you shall perish where you stand.~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #55013 /* ~Your heritage, child. This is Bhaal's realm. You have not faded to join the former Lord of Murder's essence, have you? No... so your blood holds sway here.~ */
  IF ~~ THEN REPLY #55014 /* ~Holds sway? What are you speaking of?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 8.0 7.0 6.0 1.0
  SAY #55015 /* ~You hold power in this place, or rather, the piece of you that is Bhaal's holds power. And that part of you now rests in both you and the other, the wizard, yes?~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #55016 /* ~He stole much of your soul, but not all. So you are tethered to each other, neither truly dead and neither truly alive. Ah, most interesting indeed.~ */
  IF ~~ THEN REPLY #55017 /* ~So how do I end this, fiend? Will you tell me that?~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #55018 /* ~But you already know! You must seek your soul by gathering the Tears of Bhaal... only then shall the way be open to you.~ */
  IF ~~ THEN REPLY #55019 /* ~The Tears of Bhaal?~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #55020 /* ~Death causes many tears to fall, child, and Bhaal collected many while he lived. The Tears will open the eyes... and show you the path to your soul.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #5017 /* ~Finding Irenicus in Hell

The demon I encountered has explained much. This plane was once the realm controlled by Bhaal, and my heritage means that I hold a certain amount of power over it. So does Irenicus, however, since he remains in possession of most of my soul. I don't quite understand, but the great doorway in this place "represents" the path to my own soul... the other piece that the mage holds. So long as Irenicus holds that piece, we are tethered... it is what drew me down here, and is the reason why neither of us is fully dead or alive.

By finding the Tears of Bhaal, I will be able to open the doorway and face Irenicus. And then, I suppose, I must take all of my soul back. What will happen then, I can only wonder.~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #55022 /* ~And hence, your essence has not faded to rejoin the former Lord of Murder. This is Bhaal's realm... and your blood holds sway in this piece of Hell.~ */
  IF ~~ THEN REPLY #55023 /* ~Holds sway? What are you speaking of?~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #55025 /* ~I speak of your soul, child of murder. You are a piece of the whole, so your essence has not faded to rejoin Bhaal. Therefore, your blood holds sway here.~ */
  IF ~~ THEN REPLY #55026 /* ~Holds sway? What are you speaking of?~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY #55028 /* ~I bow before you, of course. You are a child of murder whose essence has not rejoined dead Bhaal. In your father's realm... your blood holds sway.~ */
  IF ~~ THEN REPLY #55029 /* ~Holds sway? What are you speaking of?~ */ GOTO 2
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Player1Fear","GLOBAL",0)
Global("Player1Selfish","GLOBAL",0)
GlobalGT("Player1Greed","GLOBAL",0)
GlobalGT("Player1Pride","GLOBAL",0)
GlobalGT("Player1Wrath","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #55030 /* ~Ahhh. So the child of Bhaal comes to me, finally, for the last of the Tears of Bhaal. You have come very near to locating your quarry. Oh yes, indeed you have.~ [HELSEL07] */
  IF ~~ THEN REPLY #55031 /* ~What are you talking about?! All I have done is been subjected to a series of strange tests!~ */ GOTO 10
  IF ~~ THEN REPLY #55042 /* ~I suppose you're going to tell me Irenicus has been waiting behind that strange doorway this entire time?~ */ GOTO 17
  IF ~~ THEN REPLY #55045 /* ~You are making no sense. Explain or die, fiend.~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #55032 /* ~Tests? Of a sort. Remember that the mage holds power as well and seeks to prevent you finding him. The tests are of your own making, from your own power.~ */
  IF ~~ THEN REPLY #55033 /* ~What do you mean?~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 18.0 17.0 10.0
  SAY #55034 /* ~How do you find your soul, child of Bhaal? Do you find it on a stroll? No, you must know yourself, the depths of your passion and the heights of your depravity.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #55035 /* ~You come to know what you are capable of... and that shall open the way to your soul. It is yourself, your essence, that you seek... whether you know it or not.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #55036 /* ~And because this is what you seek, your power fights against the mage's and brings you closer to your goal. Soon, you shall open the eyes with the Tears of Bhaal.~ */
  IF ~~ THEN REPLY #55037 /* ~And what then? The door will be open and Irenicus will be there?~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #55038 /* ~The way to your soul shall be revealed, but you only perceive it as a door. A pity that mortal minds can encompass more power than their faculties can comprehend.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #55039 /* ~I hope you have been careful, child of Bhaal. The Nine Hells are a place of retribution... the Tears sting as easily as they soothe.~ */
  IF ~~ THEN REPLY #55040 /* ~Why are you speaking so cryptically? What does that mean?~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #55041 /* ~I obscure the truth because it is my nature to do so, O <PRO_LADYLORD> of Murder. But I bow to your mastery here and answer your questions nevertheless.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #6945 /* ~Finding Irenicus in Hell

The demon that holds the last of the Tears of Bhaal has made things clearer to me. In this place, this piece of Hell over which I hold power, things are not what they seem. My inner thoughts battle against Irenicus here. I search for him, and he seeks to obscure himself. But Irenicus has my soul... and the way to discover my soul is to know more of it. Hence the "tests" that I am putting myself through. With each, I grow closer to Irenicus's location, and soon the way to my soul will be clear.

The idea that my subconscious is what gives this place form and summons these demons is disturbing. More so, perhaps, because it seems to happen so naturally. The demon also warned me that the Tears of Bhaal sting... Hell is a place of retribution. What it means by that, I do not know.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #55043 /* ~Of course not. He moves fast, yet you close on him quickly. The tests you place on yourself are clever, O young <PRO_LADYLORD> of Murder. Your power is strong.~ */
  IF ~~ THEN REPLY #55044 /* ~What do you mean?~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #55046 /* ~Your prey moves quickly, but the tests you have devised for yourself lead you closer to him. Your power is strong despite the resistance of the mage.~ */
  IF ~~ THEN REPLY #55047 /* ~What do you mean?~ */ GOTO 11
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from: 16.0 5.0
  SAY #55105 /* ~Know you, child, that there is a Tear of Bhaal in this place before us... yet there are two paths that lead to it. Two doors, two paths, yet both lead to your goal, yes?~ [HELSEL02] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55106 /* ~You have made many choices on the journey that was your life. Many paths have you taken, and always they have had an effect on those around you... even when that was not your intention.~ [HELSEL08] */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #55111 /* ~Such is the fate of those born with Destiny... the consequences of the actions they take ripple about them throughout all that is reality.~ [HELSEL09] */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #55112 /* ~Perhaps the fate of others concerns you little. Perhaps it consumes your soul. That too is a choice—an action taken, a ripple set into the pond of reality.~ [HELSEL10] */
  IF ~~ THEN REPLY #55113 /* ~What does all this have to do with the Tear, then?~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #55114 /* ~The path that you take to the Tear will affect another this day. Another who is innocent of the action you take—and yet affected by it just the same.~ [HELSEL11] */
  IF ~~ THEN GOTO 26
  IF ~  NumInPartyGT(1)
InPartyAllowDead(Player2)
InParty(Player2)
~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #55115 /* ~One of those who travels with you, who orbits your destiny and yet is innocent of your taint... will do nicely.~ [HELSEL12] */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55116 /* ~Remember, child of Bhaal, a choice must be made... and you must live with the consequences of that choice. *cackle* Go to my left and sacrifice for the innocent. Go to my right and save yourself.~ [HELSEL13] */
  IF ~~ THEN DO ~ActionOverride(Player2Fill,MakeUnselectable(5))
CreateVisualEffectObject("SPFLESHS",Player2Fill)
CreateVisualEffectObject("SPFLESHS",Myself)
ActionOverride(Player2Fill,JumpToPoint([502.1313]))
CreateCreature("CH7SPY",[569.1354],S)
JumpToPoint([419.1311])
Wait(1)
ForceSpell(Player2Fill,HELL_HOLD)
~ UNSOLVED_JOURNAL #16671 /* ~Finding Irenicus in Hell

I encountered a demon who told me that the two paths I see before me will both lead to the Tear of Bhaal... but that the path I take will affect another. It then stole away one of my companions. I suppose the path I take will have a bearing directly on my companion, and I will have to make a choice as to which way I go. But why? He says that the path to his left will require me to make a sacrifice for my companion. If I go to his right, I need not sacrifice anything.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #55117 /* ~An innocent... completely unknown to you and conjured from the realm of the Prime Material Plane, a human of... good and decent nature... hehe... will do very nicely! *cackle* Go to my left and sacrifice for the innocent. Go to my right and save yourself.~ [HELSEL14] */
  IF ~~ THEN DO ~CreateVisualEffect("SPFLESHS",[995.605])
Wait(1)
CreateCreature("HELLVICT",[995.605],N)
~ JOURNAL #16557 /* ~Finding Irenicus in Hell

I encountered a demon who told me that the two paths I see before me will both lead to the Tear of Bhaal... but that the path I take will affect another. It then summoned an innocent victim... someone completely unknown to me plucked unknowing from another place. I suppose the path I take will have a bearing directly on the man, and I will have to make a choice as to which way I go. But why? He says that the path to his left will require me to sacrifice for the innocent. If I go to his right, I will need not sacrifice anything.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55119 /* ~Calm yourself, human. Your tenure here shall be short. Plead to the child of Bhaal for mercy, if you wish. Your fate this day rests in <PRO_HISHER> hands, not mine.~ */
  IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS","hellvict")
CreateVisualEffectObject("SPFLESHS",Myself)
ActionOverride("hellvict",JumpToPoint([502.1313]))
CreateCreature("CH7SPY",[569.1354],S)
JumpToPoint([419.1311])
~ UNSOLVED_JOURNAL #16557 /* ~Finding Irenicus in Hell

I encountered a demon who told me that the two paths I see before me will both lead to the Tear of Bhaal... but that the path I take will affect another. It then summoned an innocent victim... someone completely unknown to me plucked unknowing from another place. I suppose the path I take will have a bearing directly on the man, and I will have to make a choice as to which way I go. But why? He says that the path to his left will require me to sacrifice for the innocent. If I go to his right, I will need not sacrifice anything.~ */ EXIT
END

IF ~  Global("OpenedDoor6","AR2904",1)
!Dead("hellvict")
~ THEN BEGIN 28 // from:
  SAY #55120 /* ~The consequence of your choice is thus: Your companion is destroyed, as a result of your actions if not your intent. Such is the path of Destiny, forged by those with the will to know they are preeminent.~ [HELSEL15] */
  IF ~~ THEN DO ~SetGlobal("Player1Selfish","GLOBAL",2)
~ UNSOLVED_JOURNAL #6427 /* ~Finding Irenicus in Hell

I have made my way through the path I chose, and the Tear of Bhaal is mine. My companion, however, was destroyed agonizingly in the process. This seemed to have some meaning to the demon, although I know not what.~ */ GOTO 32
END

IF ~  Global("OpenedDoor6","AR2904",1)
Dead("hellvict")
~ THEN BEGIN 29 // from:
  SAY #55121 /* ~The consequence of your choice is thus: The innocent is murdered, as a result of your actions if not your intent. Such is the path of Destiny, forged by those with the will to know they are preeminent.~ [HELSEL16] */
  IF ~~ THEN DO ~SetGlobal("Player1Selfish","GLOBAL",2)
~ UNSOLVED_JOURNAL #6436 /* ~Finding Irenicus in Hell

I have made my way through the path I chose, and the Tear of Bhaal is mine. The innocent man, however, was destroyed agonizingly in the process. This seemed to have some meaning to the demon, although I know not what.~ */ GOTO 32
END

IF ~  Global("OpenedDoor5","AR2904",1)
NumInPartyGT(1)
~ THEN BEGIN 30 // from:
  SAY #55122 /* ~A selfless act, from one who willingly shoulders the burden of Destiny and its effect upon others. Your companion is returned to you, child of Bhaal.~ [HELSEL17] */
  IF ~~ THEN DO ~ForceSpell(Player2Fill,HELL_DISPELL)
SetGlobal("Player1Selfish","GLOBAL",1)
~ UNSOLVED_JOURNAL #6437 /* ~Finding Irenicus in Hell

I have made my way through the path I chose, and the Tear of Bhaal is mine. I have been harmed dearly by my choice, but my companion is largely unharmed, gladly. This seemed to hold some significance for the demon, although I know not what.~ */ GOTO 32
END

IF ~  Global("OpenedDoor5","AR2904",1)
NumInParty(1)
~ THEN BEGIN 31 // from:
  SAY #55124 /* ~A selfless act, from one who willingly shoulders the burden of Destiny and its effects upon others. The innocent lives... and shall be returned whence he came.~ [HELSEL18] */
  IF ~~ THEN DO ~SetGlobal("Player1Selfish","GLOBAL",1)
CreateVisualEffectObject("SPFIREPI","hellvict")
ActionOverride("hellvict",DestroySelf())
~ UNSOLVED_JOURNAL #6438 /* ~Finding Irenicus in Hell

I have made my way through the path I chose, and the Tear of Bhaal is mine. I have been harmed dearly by my choice, but the innocent man is largely unharmed, gladly. This seemed to hold some significance for the demon, although I know not what.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.0 29.0 28.0
  SAY #55125 /* ~The Tear of Bhaal is yours, child.~ [HELSEL19] */
  IF ~~ THEN DO ~TriggerActivation("Tran2900",TRUE)
TriggerActivation("Test",FALSE)
IncrementGlobal("BhaalTest","GLOBAL",1)
GiveItem("MISCB6",Player1)
ActionOverride("ch7spy",DestroySelf())
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(1)
CreateVisualEffectObject("SPFIREPI",Myself)
DestroySelf()
~ EXIT
END
