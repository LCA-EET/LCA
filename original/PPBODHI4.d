// creator  : weidu (version 24900)
// argument : PPBODHI4.DLG
// game     : .
// source   : ./override/PPBODHI4.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~PPBODHI4~

IF ~~ THEN BEGIN 0 // from:
  SAY #44867 /* ~As you would have it, my brother.~ [BODHIX42] */
  IF ~~ THEN EXTERN ~PPIRENI2~ 26
END

IF ~  Global("AsylumPlot","GLOBAL",40)
~ THEN BEGIN 1 // from:
  SAY #44872 /* ~And so your life does come to an end. A pity. You have proven resilient beyond all expectation. It is appealing to me.~ [BODHIX34] */
  IF ~~ THEN REPLY #44873 /* ~Spare me your words and do as you have been ordered. Like a good girl.~ */ GOTO 3
  IF ~~ THEN REPLY #44874 /* ~Appealing enough that you should allow me to live? ~ */ GOTO 5
  IF ~~ THEN REPLY #44875 /* ~You waste my time. I am not here for your amusement. ~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #44876 /* ~Oh, but you are. My amusement is all that is keeping you alive. Irenicus wishes you dead, and he is very rarely denied his wishes.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #44877 /* ~Irenicus does indeed wish you dead, but I am not his lapdog and you are now subject to *my* will.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44878 /* ~Your taunts will foster no resentment towards my brother, but I also need not obey him just yet.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #44879 /* ~Not quite so much as that, though I am quite willing to postpone your death for the sake of my own goals. ~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 2.0
  SAY #44880 /* ~Your abilities have piqued my interest, and since you are to die, I would have you do it in an entertaining fashion.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44881 /* ~Irenicus can be so dour when he wishes. He is set upon revenge for his banishment and can think of nothing else. A failing of his mind remaining flesh, I suspect.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44882 /* ~Undeath has given me focus, and an interest in the abilities of powerful creatures. An interest in you. I will make your death glorious, as well as entertaining.~ */
  IF ~~ THEN REPLY #44883 /* ~I will not perform for you! ~ */ GOTO 9
  IF ~~ THEN REPLY #44884 /* ~What do you have in mind?~ */ GOTO 10
  IF ~~ THEN REPLY #44885 /* ~Do your worst, Bodhi. I do not fear you.~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44886 /* ~Oh, but you will. You have no choice. You will run my gauntlet, and you will do so on the slim chance that you will make a difference.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #44887 /* ~A game that you have no choice but to play. You will run my gauntlet, and you will do so because of the slim chance that you can make a difference.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #44888 /* ~You should. You must run my gauntlet to prolong your life. You must do so knowing you have but the slimmest chance to make a difference.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 10.0 9.0
  SAY #44889 /* ~Do you see this passage before you? It is the darkest part of the asylum and its history: a test of clarity for its prisoners, by a director that delighted in dissecting the mind.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 13 // from: 23.0
  SAY #44890 /* ~It has been some time since I have given chase to a worthy foe. Enter the maze of this place and seek an exit. I give you time to run, after which I will come to feed. ~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44891 /* ~But you are not running solely for my benefit. I give you reason as well, to make the hunt more desperate. You may yet foil Irenicus, though the chance is small.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44892 /* ~His plans will take time, just about as long as my hunt. Run my gauntlet and your life ends... or is freed. The hunt begins.~ */
  IF ~~ THEN DO ~EraseJournalEntry(96655)
AddJournalEntry(96655,QUEST_DONE)
AddJournalEntry(96656,QUEST)
SetGlobal("AsylumPlot","GLOBAL",41)
ApplySpell(Myself,BODHI_BAT_ASYLUM)
~ UNSOLVED_JOURNAL #23404 /* ~Escaping the asylum

Now that I am of no further use, Bodhi has decided to kill me in her own good time, deciding on something of a hunt. I have been abandoned to the labyrinth beneath the asylum, which is apparently designed to test the minds of those who navigate it. As bait, Bodhi has told me that there is still a small chance that I might foil Irenicus. His plans will take time, and I might be able to take advantage of the small breathing room she has given me. A game of cat and mouse.~ */ EXIT
END

IF ~  False()
Global("SpokeBodhiHunt","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #44893 /* ~The time is at hand! You gave merry chase, but have failed to escape! I come reinforced, for you are not worthy of single battle!~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44894 /* ~I am sorry, really I am. You had no other option than to meet my deadline. I offered a chance, but I am not foolish. This is your end.~ */
  IF ~~ THEN DO ~SetGlobal("SpokeBodhiHunt","GLOBAL",1)
SetGlobalTimer("BodhiHunts","GLOBAL",ONE_DAY)
Enemy()
~ EXIT
END

IF ~  Global("SpokeBodhiHunt","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #49188 /* ~Your last victory was hollow. You've only delayed the inevitable.~ */
  IF ~~ THEN DO ~SetGlobalTimer("BodhiHunts","GLOBAL",ONE_DAY)
Enemy()
~ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",41)
~ THEN BEGIN 19 // from:
  SAY #49286 /* ~Here, mousey mousey. The hunt draws to a close here and now. ~ [BODHIX35] */
  IF ~~ THEN REPLY #49450 /* ~You said I would have a chance to escape! You have not given me time!~ */ GOTO 20
  IF ~~ THEN REPLY #49451 /* ~I expected you to come. You'd be a fool to let me reach Irenicus.~ */ GOTO 20
  IF ~~ THEN REPLY #49452 /* ~Come now, there must be something I can do to appease you.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.2 19.1 19.0
  SAY #49287 /* ~I know I'm early, but I just couldn't bear to see you leave. You were amusing, but the game is over. One last time, let our paths cross in blood!~ [BODHIX36] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",42)
ActionOverride("vammat01",Enemy())
ActionOverride("vamold01",Enemy())
SetGlobalTimer("SlayerTimer","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",42)
~ THEN BEGIN 21 // from:
  SAY #49288 /* ~What is this?! A creature of pure death and darkest shadow! Child of Bhaal, what have you become?!~ [BODHIX37] */
  IF ~~ THEN DO ~ActionOverride("vam1514a",ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("vam1514b",ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE))
SetGlobal("AsylumPlot","GLOBAL",43)
ActionOverride("vam1514a",EscapeArea())
ActionOverride("vam1514b",EscapeArea())
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49289 /* ~Away! Irenicus must know of this! We will observe from a distance!~ [BODHIX38] */
  IF ~~ THEN DO ~SetGlobalTimer("SlayerTimer","GLOBAL",THREE_ROUNDS)
ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #51521 /* ~Now he is under my... influence, and this place is mine to control. It is a masterpiece of madness, one that you will come to know intimately.~ */
  IF ~~ THEN GOTO 13
END
