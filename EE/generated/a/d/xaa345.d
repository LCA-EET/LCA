// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ITHTYL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ITHTYL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA345~

IF ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,19,GOLD)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You may call me Ithtyl, good friend. I am glad to know one so lively and entertaining as you. Why don't you head downstairs and enjoy yourself? Take these 20 gold, so that you may afford whatever takes your fancy to buy.~ #8420 */
  IF ~~ THEN DO ~GivePartyGold(20)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I trust your stay will be a restful one. We serve as a refuge away from the hectic life on the road.~ #8401 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @3 /* ~By the planes, this is just what I need! Roll up the kegs! It's time to unwind!~ #8411 */ GOTO 10
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @3 /* ~By the planes, this is just what I need! Roll up the kegs! It's time to unwind!~ #8412 */ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @4 /* ~And what of you? You look to be quite the lusty wench; how about you serve as my refuge away from the ugly faces of my fellows?~ #8413 */ GOTO 12
  IF ~  Gender(LastTalkedToBy,MALE)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @4 /* ~And what of you? You look to be quite the lusty wench; how about you serve as my refuge away from the ugly faces of my fellows?~ #8414 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @5 /* ~It sounds dreadfully boring. Perhaps I shall seek more lively fare elsewhere.~ #8415 */ GOTO 5
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @6 /* ~It dost sound dreadfully boring. Perhaps I shall seek more lively fare elsewhere.~ #8416 */ GOTO 6
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @7 /* ~At last I have a place for quiet reflection at adventure's end. I shall look forward to a long, relaxing stay.~ #8417 */ GOTO 7
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @7 /* ~At last I have a place for quiet reflection at adventure's end. I shall look forward to a long, relaxing stay.~ #8418 */ GOTO 8
END

IF ~  ReactionLT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 2 // from:
  SAY @8 /* ~I should make my stay brief, if I were you.~ #9205 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @9 /* ~I must ask you not to disturb me, as I have many financial matters that now occupy my attention.~ #8419 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @10 /* ~Flattering, though I think the Low Lantern might have staff more accommodating of your... needs. We cater more to the mature adventurer. It is up to you to decide whether you fit that description.~ #8405 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @11 /* ~Boring to some perhaps, though I think our regulars find the comfort we provide as close to having a home as they can get. You are welcome to return when you tire of the sleepless nights the other inns provide.~ #8406 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @12 /* ~There are plenty of establishments that offer what you seek, though I think you will find them no more relaxing than your journey to get there. Likely they will be no safer, either. When you tire of sleeping with one eye open, I think you will be back.~ #8407 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY @13 /* ~And your patronage will be most welcome. Business has unfortunately dwindled along with the traffic on the roads. We welcome new customers, especially when old ones cannot make the trek and leave the rooms vacant.~ #8408 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.7
  SAY @14 /* ~Eh, we DO have regulars that have prolonged stays, so you may not be able to stay for an extended period. You are welcome in the short term though.~ #8409 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @15 /* ~Please do not disturb me now, I am not in the mood. One of our regulars has left town without paying her tab. It's not often we lose a customer in such a manner.~ #8410 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0
  SAY @16 /* ~It's true we are well stocked if you wish a drink or two, but I would advise you not to overindulge. I should hate for our short acquaintance to end with me turning you out to the street.~ #8402 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY @17 /* ~I rather think that you are looking for fare a touch more lively than we offer. I might suggest the Blushing Mermaid as one alternative. They are somewhat lax in the area of house rules. Good day.~ #8403 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY @18 /* ~I mean this in the best possible sense with no offense intended, but if you lay a finger on my person I shall have to hand it back on a platter. Likely garnished with some mint and a sprig of parsley. Do enjoy your stay.~ #8404 */
  IF ~~ THEN EXIT
END
