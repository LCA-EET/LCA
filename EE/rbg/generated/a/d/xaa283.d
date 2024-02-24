// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ALYTH.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ALYTH.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA283~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 5 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Good eve to you. I am Alyth, the owner and proprietor. I trust the Elfsong will fit your needs, whatever they should be. I should be wary of the clientele if I were you. Everyone is quite on edge of late.~ #8335 */
  IF ~~ THEN REPLY @2 /* ~Apart from looking a little haggard, everyone seems quite ordinary. What have I to fear here?~ #8342 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Why should melancholy be so pervasive here? Is there not an ill feeling throughout the Coast?~ #8343 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I have nothing to fear from this rabble. They will find themselves on MY edge for any threat posed.~ #8344 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~The Elfsong is somewhat of a refuge for the less appreciated members of society. You will find that the city patrols give us a wide berth, though we are not unprotected. Thievery is kept in check by the willingness of our patrons to answer with a blade, though I suppose this is successful just as often as it is not. We tend to go through a large number of customers, though we keep the smart ones.~ #8336 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~We have lost more than the average citizen; we have lost the Lady. Often we are blessed by a strange phantom voice. It is an elvish maiden lamenting a lost love drowned at sea. Her voice is quite beautiful, and the reason I purchased this establishment in the first place. She has not uttered a note for nigh unto several tenday. Surely it is an omen of sorts, though I canna say of what. I would have thought the economic troubles of the land too paltry to affect the concerns of the dead, but matters are often more complicated than they seem. I suppose they are often simpler as well, though that truth does not support my argument quite as well. Forget I mentioned it. Enjoy your stay.~ #8337 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Your confidence is impressive, though it will prove a poor shield against the blows sure to come if you insist on continuing with that attitude. My tavern is as much a place for self-reflection as it is for shady deals and the hiring of killers. You will find that most of the regulars are not to be taken lightly. Watch your back against the stares of strangers.~ #8338 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~I do not wish to seem inhospitable, but I choose not to share your company. Leave me to my business.~ #8340 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Hello again. I trust you are finding my tavern to your liking? I do endeavor to sculpt it to the needs of all who frequent it.~ #8341 */
  IF ~~ THEN DO ~StartStore("xaa130",LastTalkedToBy(Myself))
~ EXIT
END

IF WEIGHT #2 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~I wish I could help you friend, but I have many problems of my own, not the least of which is the loss of our phantom singer.~ #8345 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~I find you distasteful. Leave me!~ #9191 */
  IF ~~ THEN EXIT
END
