// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SCHLUM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SCHLUM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA308~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Halllt, my chilldren— We have guesssts among uss... Ahhh, yess, I can ssense you now, and your lllleader— A chillld of books, you werrre... Aye, bookss are good... And a chillld of fffate... Heeee, I havve heard of you, <CHARNAME>, I havve heard yourrr name whisspered downn these stony halllls, wherrre the drip of waterrr mingllles with the gurgllling of the dead... They have wanted you dead, you know!~ #19917 */
  IF ~~ THEN REPLY @2 /* ~Who are you and who are these shambling creatures that you surround yourself with?~ #19919 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Who has wanted me dead? Have you?~ #19918 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Who amm I, whoo indeed...? It has been so llllong since I had hideous fform and—and shape lllike you... Hah, in yourrr mind, I see things I recognize therrre, a place you calllled home once...~ #19920 */
  IF ~~ THEN REPLY @5 /* ~Stop entering into my mind! I know not how you do it and I like it less!~ #19921 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Candlekeep. Until this springtide it was the only place I had ever known.~ #19922 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~You are so naive, chillld! I have been entering yourrr mind since the dayy you werrre born! There is anotherr here lllike you! He has walllked down this way many times and many morrre he shallll! He would be grateful to see you ensllaved under my power, he would rewarrrrd me handsomellly... Come, sewerkin, our guestss are guessts no more!~ #19923 */
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8 /* ~Candlllekeep... I was therrre, wassn't I... Yes, when I wass in my younger forrrm, when I wasss a mage so proud offf my talllent, of my craffft... But I transcended that llong ago and llleft it behind... Rrrrgh, you havve awakenned an ollld hunger in me, a hunger for substance, chilllld! Come closer, that I may gorge myselllf on you.~ #19924 */
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @9 /* ~Who, Schlumpsha? No, not I, not yet, but yourrr death iss so tempting, now, so near... I can alllmost taste it on you, chilld.~ #19925 */
  IF ~~ THEN REPLY @10 /* ~Speak not of my death lest I bring you yours instead! Now tell me my hunter's name that I may know him.~ #19926 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~What death do you taste on me, Sewer King?~ #19927 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12 /* ~You have met him before, you havve, maybe twice, even, and you shallll meet him four times befffore the ennd... Heee, you shalllll meet him four times beforrre the end, yes!~ #19928 */
  IF ~~ THEN REPLY @13 /* ~Must I take his name from you by force?!~ #19929 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~Thank you, Schlumpsha, you have told me enough.~ #19930 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 8.0 5.0
  SAY @15 /* ~It woulllld be a plleasure, chillld... Come, my sewerkin, it iss time to feed...~ #19931 */
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.1 5.1
  SAY @16 /* ~Heee, I havve tollld you enough but I have not tolld you alllll... The sewersss may cllaim you, <CHARNAME>, but I shalll not.~ #19932 */
  IF ~~ THEN DO ~ActionOverride("SEWERF1",EscapeArea())
ActionOverride("SEWERF2",EscapeArea())
ActionOverride("SEWERF3",EscapeArea())
ActionOverride("SEWERF4",EscapeArea())
ActionOverride("SEWERF5",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @17 /* ~A death foretollld, a death pllanned forrr by the gods themselllves, heeee! But I'lll not telll you more, not Schlumpsha, not the faithfulll sewerkin, nooo...~ #19933 */
  IF ~~ THEN REPLY @18 /* ~Must I take the nature of my fate from you by force, Sewer King?~ #19934 */ GOTO 6
  IF ~~ THEN REPLY @19 /* ~Thank you, Schlumpsha. Your prophecies are harsh but their truth is not immutable. I shall face them as I can.~ #19935 */ GOTO 7
END

IF ~  False()
~ THEN BEGIN 9 // from:
  SAY @20 /* ~Go chillld, and face yourrr destiny...~ #19936 */
  IF ~~ THEN EXIT
END
