// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAGEFA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAGEFA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA360~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
See("Abela")
!Dead("Abela")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Now know thee well I cannot let thee leave. We are meant to be together, whether ye know it or no.~ #2701 */
  IF ~~ THEN EXTERN ~ABELA~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~What?! What bandit dares enter the home of Ragefast?! Identify your purpose here, that I might know what to put on thy tombstone!~ #2702 */
  IF ~~ THEN REPLY @3 /* ~Strong words, mage! Have ye the will to back them up?!~ #2703 */ GOTO 2
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @4 /* ~Dare you speak of me as bandit, when you commit such crimes as you do?!~ #2704 */ GOTO 5
  IF ~  Global("HelpRamazith","GLOBAL",1)
!Dead("Ramazith")
~ THEN REPLY @5 /* ~I should like as little trouble as possible! If you simply hand over the nymph I shall return to Ramazith.~ #2705 */ GOTO 3
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @4 /* ~Dare you speak of me as bandit, when you commit such crimes as you do?!~ #2729 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 5.0 1.0
  SAY @6 /* ~I know not what has brought thee here, but six shall carry thee out!~ #2706 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 11.0 6.1 5.2 1.2
  SAY @7 /* ~Ramazith sent thee?! That treacherous eel will not have Abela! What he suggests is against all tenets of decency! His foul plan dies here with thee!~ #2707 */
  IF ~~ THEN DO ~Enemy()
~ UNSOLVED_JOURNAL @8 /* ~The Captive Nymph
Ragefast thinks that Ramazith has evil plans in store for the nymph Abela.~ #26806 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @9 /* ~What gall thou must possess, to accuse me of crimes within my own household! Especially when it's you who has entered without consent! You shalt die as a thief should for violating my home!~ #2708 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @10 /* ~What nonsense is this?! Explain yourself before I dispense with you!~ #2709 */
  IF ~~ THEN REPLY @11 /* ~I explain nothing! You will release the nymph to me or die!~ #2710 */ GOTO 2
  IF ~~ THEN REPLY @12 /* ~You hold this beauteous creature captive and still claim the moral high ground? It's a contradiction!~ #2711 */ GOTO 6
  IF ~  Global("HelpRamazith","GLOBAL",1)
!Dead("Ramazith")
~ THEN REPLY @13 /* ~I and Ramazith have now both witnessed the cruel confinement you place upon this creature.~ #2712 */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @14 /* ~No! This wondrous being is my love and life! I would be hers as well, but it takes time! She will grow to care for me, as I care for her!~ #2713 */
  IF ~~ THEN REPLY @15 /* ~One does not cage those he cares for! You may break her spirit and she will serve you, but this is not love! Listen to her!~ #2714 */ GOTO 8
  IF ~  Global("HelpRamazith","GLOBAL",1)
!Dead("Ramazith")
~ THEN REPLY @16 /* ~This is an impossible goal! Best for her that you release her to me, that I might free her under the sight of Ramazith.~ #2715 */ GOTO 3
  IF ~~ THEN REPLY @17 /* ~Your twisted feelings cloud your sight! Release her, before you both come to harm!~ #2716 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @18 /* ~My feelings are genuine, and none shall harm the angelic Abela! I will let no one come between us!~ #2717 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY @19 /* ~She will learn to be happy here! We shall grow old together.~ #2718 */
  IF ~~ THEN EXTERN ~ABELA~ 1
END

IF ~~ THEN BEGIN 9 // from:
  SAY @20 /* ~Abela, thy beauty is as brilliant now as the day I found you. Say not such things.~ #2719 */
  IF ~~ THEN EXTERN ~ABELA~ 2
END

IF ~~ THEN BEGIN 10 // from:
  SAY @21 /* ~But we were meant for each other! Thy very words had said so!~ #2720 */
  IF ~~ THEN EXTERN ~ABELA~ 3
END

IF ~~ THEN BEGIN 11 // from:
  SAY @22 /* ~But this is MY home.~ #2721 */
  IF ~  Global("HelpRamazith","GLOBAL",1)
!Dead("Ramazith")
~ THEN REPLY @23 /* ~She will die in your "care." Ramazith is right to want her release.~ #2722 */ GOTO 3
  IF ~~ THEN REPLY @24 /* ~Whine if you wish, but tonight she is free! Stand in the way and you perish with your foolish dreams.~ #2723 */ GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy,7,WIS)
~ THEN REPLY @25 /* ~This Abela will die with you. Free her if you truly feel as you do.~ #2724 */ GOTO 13
  IF ~  CheckStatGT(LastTalkedToBy,6,WIS)
~ THEN REPLY @25 /* ~This Abela will die with you. Free her if you truly feel as you do.~ #2730 */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @26 /* ~My innermost thoughts are displayed before you, and I must suffer your mockery? Trifle with me no longer!~ #2725 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @27 /* ~I would sooner we both died here, than lose her beauty in my life! You will pay for this pain, stranger! 'Twas not your place to meddle with me!~ #2726 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY @28 /* ~I... It is so. Forgive me, Abela, I have been a fool. I release you from my enchantments, and you are free to leave. Please do not think too harshly of me. I am but a foolish old man.~ #2727 */
  IF ~~ THEN EXTERN ~ABELA~ 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY @29 /* ~I know not why you have turned on me, but your life is forfeit for it!~ #2728 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 16 // from:
  SAY @30 /* ~I've led a rather cloistered life, so I know little of the outside world. I wish I could tell you more friend, but my knowledge is limited to my studies.~ #6108 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  True()
~ THEN BEGIN 17 // from:
  SAY @31 /* ~Have you not bothered me enough? Leave me be, and get out of my home.~ #6109 */
  IF ~~ THEN EXIT
END
