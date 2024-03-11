// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDELTAN.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDELTAN.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC108~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~That's enough, Captain Corwin.~ [BD64655] #64655 */
  IF ~~ THEN EXTERN ~XAC110~ 9
END

IF ~~ THEN BEGIN 1 // from: 4.2 4.1 4.0
  SAY @2 /* ~I examined the body of one of the assassins. A sun cresting the horizon was branded upon his forearm.~ [BD64712] #64712 */
  IF ~~ THEN EXTERN ~XAC110~ 10
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~It won't be enough. The crusade's ranks have swelled. After the iron crisis, the Fists are already stretched perilously thin. Even so, we're sending every sword we can muster north.~ [BD64719] #64719 */
  IF ~~ THEN EXTERN ~XAC110~ 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Let's.~ #60720 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @5 /* ~What do you know of the so-called Shining Lady, Caelar Argent, <CHARNAME>?~ [BD34238] #34238 */
  IF ~~ THEN REPLY @6 /* ~Not as much as the commander of the Flaming Fist, I'd wager.~ #34239 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~With what I know and two coppers, I could buy an ale at The Low Lantern.~ #34240 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~Why do you ask?~ #64711 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 7.1 7.0
  SAY @9 /* ~Caelar Argent did not seek to kill us this night. You were her target. Find her, and find out why—knowing will benefit us all.~ [BD64723] #64723 */
  IF ~~ THEN EXTERN ~XAC107~ 39
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~I've something that may change your mind.~ [BD64725] #64725 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11 /* ~I took this parchment from one of the assassins' bodies. 'Tis a passable likeness of you, I think you'll agree.~ [BD64726] #64726 */
  IF ~  PartyHasItem("BDMISC56")
~ THEN REPLY @12 /* ~I found one just like it. So I was the assassins' target...~ #64727 */ GOTO 5
  IF ~  !PartyHasItem("BDMISC56")
~ THEN REPLY @13 /* ~So I was the assassins' target?~ #64728 */ GOTO 5
  IF ~~ THEN REPLY @14 /* ~A souvenir, how lovely—something to remember the night by, as if the bodies and blood weren't enough.~ #64729 */ EXTERN ~XAC110~ 12
  IF ~~ THEN REPLY @15 /* ~The crusade has targeted me? So be it. When does the Dragonspear expedition leave?~ #64730 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 9.3 7.3
  SAY @16 /* ~Whenever you are ready to join it.~ #64732 */
  IF ~~ THEN EXTERN ~XAC107~ 40
END

IF ~~ THEN BEGIN 9 // from:
  SAY @17 /* ~There is one other thing you should know, <CHARNAME>. I took this parchment from one of the assassins’ bodies. It's a passable likeness of you, I'm sure you'll agree.~ [BD64734] #64734 */
  IF ~  PartyHasItem("BDMISC56")
~ THEN REPLY @12 /* ~I found one just like it. So I was the assassins' target...~ #64735 */ EXTERN ~XAC107~ 39
  IF ~  !PartyHasItem("BDMISC56")
~ THEN REPLY @13 /* ~So I was the assassins' target?~ #64736 */ EXTERN ~XAC107~ 39
  IF ~~ THEN REPLY @18 /* ~Caelar sent killers after me in the Ducal Palace? But I'm so very lovable...~ #64737 */ EXTERN ~XAC107~ 39
  IF ~~ THEN REPLY @19 /* ~The blade that felled Imoen was meant for me. The Shining Lady will pay for this. When does the expedition leave?~ #64738 */ GOTO 8
END

IF ~  GlobalLT("BD_plot","global",55)
AreaCheck("bd0102")
~ THEN BEGIN 10 // from:
  SAY @20 /* ~Greetings, <CHARNAME>. How are you holding up?~ [BD56000] #56000 */
  IF ~~ THEN REPLY @21 /* ~Well enough, sir. And you? ~ #56001 */ GOTO 18
  IF ~~ THEN REPLY @22 /* ~I'm still not accustomed to people trying to kill me for no apparent reason, but I could be worse.~ #56002 */ GOTO 11
  IF ~~ THEN REPLY @23 /* ~I'll survive. ~ #56003 */ GOTO 11
  IF ~~ THEN REPLY @24 /* ~My feelings are of no consequence. I suggest you concern yourself with matters that are.~ #56004 */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.2 10.1
  SAY @25 /* ~A refreshing perspective. My friends on the Council are inclined to view the tankard as half-empty.~ [BD56005] #56005 */
  IF ~~ THEN REPLY @26 /* ~You are all seasoned adventurers. It must be difficult, knowing of Caelar's threat yet unable to deal with it personally.~ #56006 */ GOTO 19
  IF ~~ THEN REPLY @27 /* ~Baldur's Gate overflows with newcomers, assassins roam the Ducal Palace... Their pessimism is understandable.~ #56007 */ GOTO 12
  IF ~~ THEN REPLY @28 /* ~Weakness invites defeat. Caelar acts without hesitation or doubt. We must do no less.~ #56008 */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 18.0 11.1
  SAY @29 /* ~A Calishite monk once told me every night is dawn's herald. The trick is to hold on to the memory of light until the darkness breaks.~ [BD56009] #56009 */
  IF ~~ THEN REPLY @30 /* ~They call Caelar the Shining Lady. She fancies herself the light that will break the darkness.~ #56010 */ GOTO 13
  IF ~~ THEN REPLY @31 /* ~I'm holding on, if only by my fingertips.~ #56011 */ GOTO 15
  IF ~  Class(Player1,THIEF_ALL)
~ THEN REPLY @32 /* ~The night is a veil draped across the ugly face of the world—nothing to fear.~ #56012 */ GOTO 20
  IF ~~ THEN REPLY @33 /* ~Darkness is a handy tool, for those who know how to use it.~ #56013 */ GOTO 21
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @34 /* ~I have been called many things in my time, <CHARNAME>, but my mother was no dog. Names are just words, and words can be twisted. However Caelar or her followers try to justify their actions, they are disrupting commerce throughout the Sword Coast, and our people suffer for it.~ #56014 */
  IF ~~ THEN REPLY @35 /* ~Few could withstand the forces aligned against her.~ #56015 */ GOTO 22
  IF ~~ THEN REPLY @36 /* ~Is it the people who concern you, duke? Or the commerce? ~ #56016 */ GOTO 23
  IF ~~ THEN REPLY @37 /* ~Not for long. Caelar tried to kill me. She will answer for it.~ #56017 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.2
  SAY @38 /* ~Your words are welcome, <CHARNAME>, and they give us hope in these difficult times.~ [BD56018] #56018 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 23.0 22.0 21.0 20.0 17.0 12.1 11.2
  SAY @39 /* ~As pleasant as it is to speak with you, I am required elsewhere right now.~ [BD56019] #56019 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0 14.0
  SAY @40 /* ~Oh—if you do venture into the city, be sure to take Captain Corwin with you. A talented officer, that one. She'll take care of you.~ [BD56020] #56020 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3
  SAY @41 /* ~I see...~ [BD56021] #56021 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 19.0 10.0
  SAY @42 /* ~After Sarevok's defeat, I had hoped for peace, but it was not to be. I grow too old for this sort of thing. Once, it would have excited me. Now I am simply weary.~ [BD56022] #56022 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY @43 /* ~You'd think that, wouldn't you? But no. No, that isn't the problem, or MY problem, at least.~ [BD56023] #56023 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY @44 /* ~A bleak view, but one that seems to have served you well enough thus far.~ [BD56024] #56024 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 21 // from: 12.3
  SAY @45 /* ~A tool you can neither control nor hold in your hand is not something I'd rely upon. But I'll not argue the point.~ [BD56025] #56025 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 13.0
  SAY @46 /* ~Let us hope Caelar isn't one of them.~ [BD56026] #56026 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 23 // from: 13.1
  SAY @47 /* ~What use is the heart without blood, or lungs without air? One needs the other. To ignore either does both a disservice.~ [BD56027] #56027 */
  IF ~~ THEN GOTO 15
END
