// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPOOL07.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPOOL07.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD104~

IF ~  RandomNum(15,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Don't give any items to the prisoners. No physical contact.~ #62748 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Half of these scum are refugees from up north. No money and no manners. They deserve to be locked up.~ #62749 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Stay on the straight and narrow if you don't want to wind up here.~ #62750 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Good day, <PRO_SIRMAAM>.~ #62751 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,5)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Finish your business and be off. This isn't a zoo.~ #62752 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,6)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~Half the Fist is spread between here and the Cloudpeak Mountains trying to restore order after the iron crisis. We're woefully understaffed.~ #62753 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,7)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~That Tiax fellow is mad. Completely off his rocker. I can't stand him, but some in here have started treating him as a mascot.~ #62754 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,8)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~A pleasure to meet you, my <PRO_LADYLORD>.~ #62755 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,9)
~ THEN BEGIN 8 // from:
  SAY @9 /* ~I've heard a lot about you. It wasn't all good. I've got my eyes on you.~ #62756 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,10)
~ THEN BEGIN 9 // from:
  SAY @10 /* ~The cell locks are unpickable. Designed and constructed by Halbazzer himself. ~ #62757 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,11)
~ THEN BEGIN 10 // from:
  SAY @11 /* ~Let me know if there's anything I can help you with, <PRO_SIRMAAM>.~ #62758 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,12)
~ THEN BEGIN 11 // from:
  SAY @12 /* ~We'll run out of room in the cells if the refugees keep pouring into the city. They're desperate, and desperate people do desperate things.~ #62759 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,13)
~ THEN BEGIN 12 // from:
  SAY @13 /* ~We've made more arrests this month than any other month, but what do we get for it? Nothing, that's what.~ #62760 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,14)
~ THEN BEGIN 13 // from:
  SAY @14 /* ~I feel bad for a few of these prisoners. Very few. Most of them are where they ought to be.~ #62761 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,15)
~ THEN BEGIN 14 // from:
  SAY @15 /* ~I recognize you! You killed Sarevok. Nice work, that.~ #62762 */
  IF ~~ THEN EXIT
END
