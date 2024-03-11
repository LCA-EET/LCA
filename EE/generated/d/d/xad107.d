// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPOOL08.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDPOOL08.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD107~

IF ~  RandomNum(15,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm innocent I tell you. Innocent! Just ask me fence!~ #62763 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~It wasn't me, it was the one-legged man!~ #62764 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Yeah, I did it. You'd've done the same.~ #62765 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Is it day or night? So long since I've seen the sun...~ #62766 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,5)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~The food here is awful, but it's better than I usually get. I get thrown in here often as I can.~ #62767 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,6)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~You can't keep me locked up forever!~ #62768 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,7)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~Step closer. Closer still. Just a little closer...~ #62769 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,8)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~I did the crime, now I'll serve the time. But he shouldn'ta mouthed off like that.~ #62770 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,9)
~ THEN BEGIN 8 // from:
  SAY @9 /* ~Get me out of this hells-hole!~ #62771 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,10)
~ THEN BEGIN 9 // from:
  SAY @10 /* ~What do you want? I'm a bit tied up at the moment.~ #62772 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,11)
~ THEN BEGIN 10 // from:
  SAY @11 /* ~Don't stare at me.~ #62773 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,12)
~ THEN BEGIN 11 // from:
  SAY @12 /* ~When I get out of here, I'm going to give up this life of crime and become a bard. ~ #62774 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,13)
~ THEN BEGIN 12 // from:
  SAY @13 /* ~I offered the judge a bribe and he gave me MORE time in the clink. What's the world coming to, I ask you?~ #62775 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,14)
~ THEN BEGIN 13 // from:
  SAY @14 /* ~Leave me alone.~ #62776 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(15,15)
~ THEN BEGIN 14 // from:
  SAY @15 /* ~I've heard the rumors, kin of Sarevok. Get outta here, I got nothing to say to you.~ #62777 */
  IF ~~ THEN EXIT
END
