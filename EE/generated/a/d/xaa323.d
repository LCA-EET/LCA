// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DOPMER.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DOPMER.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA323~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So you have come to visit the Seven Suns, have you...? Yes, I've got your face now but not your name...~ #16585 */
  IF ~~ THEN REPLY @2 /* ~I am Foolio Displasius, destroyer of the Seven Suns! Raaagh!~ #16586 */ DO ~SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We are the party of <CHARNAME>, though I don't know why it may interest you.~ #16587 */ DO ~SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~My name is my business. I'm not here to exchange pleasantries.~ #16588 */ DO ~SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Have your jest, then. It will take more Foolios than you to destroy the Seven Suns.~ #16589 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Yes, indeed, how... interesting. And what of these people about you? Do they know you well?~ #16591 */
  IF ~~ THEN REPLY @7 /* ~We are all fellow adventurers, our hearts brought into close contact by the narrowness of the road.~ #16592 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~To tell you true, we are but strangers traveling together this brief while out of mere convenience.~ #16593 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~I am not here to bare my soul before a merchant.~ #16594 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 5.0 2.2 0.2
  SAY @10 /* ~If you wish silence, then we ask the same of you. Bother us not.~ #16595 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.1 2.0
  SAY @11 /* ~A pity, that.~ #16596 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12 /* ~Ah, I have dreamed of loners such as yourself and each time woken with a groaning belly.~ #16597 */
  IF ~~ THEN REPLY @13 /* ~I have no wish to hear you whine about your sicknesses and ailments. This discussion grows tiresome.~ #16598 */ GOTO 3
  IF ~~ THEN REPLY @14 /* ~I had no idea you found me that attractive. Alas, there are ones in this world who love me dearly and would miss me sorely should I leave with you.~ #16599 */ GOTO 4
  IF ~~ THEN REPLY @15 /* ~Pray tell me what about my lowly person could make a merchant and his many purses dream?~ #16600 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @16 /* ~Come, my brothers. It seems that a feast has been set before us. Let us eat before it cools.~ #16601 */
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)
SetGlobal("Laola","GLOBAL",1)
~ EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 7 // from:
  SAY @17 /* ~Still you pester us! Do you have no shame?! Explain yourself!~ #16602 */
  IF ~~ THEN REPLY @18 /* ~If you be merchants as you say you are, would you not then be eager to sell your wares?~ #16605 */ GOTO 8
  IF ~~ THEN REPLY @19 /* ~To be called shameless by a merchant! Tell me, how does that differ from the sarcasm of a bard who compliments her drunken patron on the quality of his voice?~ #16603 */ GOTO 9
  IF ~~ THEN REPLY @20 /* ~I did not object to the sound of your voice, merely the words you sought to form with it. Come, now, and provide me with information more to my liking.~ #16606 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @21 /* ~We sell to those who have the money to buy, not adventuring paupers such as yourself. Move on, and we'll forgive your impertinence.~ #16607 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 7.1
  SAY @22 /* ~Your wit shall be your coffin and every jest a nail. Come, my brothers. If they have not found us out by now, it will not take them long. We should not suffer fools so gladly when this much is at stake.~ #16608 */
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)
SetGlobal("Laola","GLOBAL",1)
~ EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 10 // from:
  SAY @23 /* ~Do you seek the truth so earnestly that you would lose everything?~ #16609 */
  IF ~~ THEN REPLY @24 /* ~I will risk everything but I shall not lose it. You are no merchants and I am no fool. Now show your true faces that I may know them!~ #16610 */ GOTO 11
  IF ~~ THEN REPLY @25 /* ~What are you talking about? I just wanted to know how to get out of this place.~ #16611 */ GOTO 12
  IF ~~ THEN REPLY @26 /* ~The truth is of little consequence to me. Like you, I prefer my fictions.~ #16612 */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @27 /* ~Nay, you are wrong on both counts. You are fools even to be here, for we are indeed merchants, though not of wares you would be familiar with: We are merchants of faces and names, merchants of identities, merchants of skin even when the flesh it contains is so much rubbish. We are doppelgangers and, for a skin pittance, we sell fools their deaths.~ #16613 */
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)
SetGlobal("Laola","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @28 /* ~I fear, my brothers, that I have spoken too soon. But come, we are hungry. Let us feast on these witnesses to the folly of my tongue.~ #16614 */
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)
SetGlobal("Laola","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @29 /* ~My friend, you are speaking to a race of beings to whom fiction is no mere diversion but rather the wellspring of our very life. You see this flesh? It is not mine. You see this face? I did not even know of its existence but two months past. We are doppelgangers, friend, and we live by fools like you. Now do not resist... it won't take long.~ #16615 */
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)
SetGlobal("Laola","GLOBAL",1)
~ EXIT
END
