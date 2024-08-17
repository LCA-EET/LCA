// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DUN.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DUN.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA237~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello, there. Dun, ex-merchant at your service. How may I be of assistance?~ #18843 */
  IF ~~ THEN REPLY @2 /* ~How exactly does one become an ex-merchant?~ #18844 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Could you tell me where the good stores are in this city?~ #18845 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Well, you start by becoming a merchant. Then you become a gambler. Then you bet your business on a game of dice. Then you lose. Voilà, an ex-merchant. Next question?~ #18846 */
  IF ~~ THEN REPLY @5 /* ~Could you tell me where the good stores are in town?~ #18847 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~I'm terribly sorry to hear that.~ #18848 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @7 /* ~There are no good shops in this city. Nope. None. Don't even think about it. Especially the ones run by the Seven Suns or the Merchants' League.~ #18849 */
  IF ~~ THEN REPLY @8 /* ~No good shops? Why, that's ridiculous!~ #18850 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~What's wrong with the Seven Suns and the Merchants' League?~ #18851 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10 /* ~Ridiculous? I don't believe the world of commerce could be otherwise. Bye now.~ #18852 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11 /* ~I used to gamble with those fellows but something's not right. I'm in debt to them up to my ears but nothin's happening. No big guys with clubs knocking on my door in the middle of the night, no poison in my ale, nothing. It's like they've forgotten the whole thing. I saw my old buddy Al in the street the other day, looked him right in the eye, and he didn't even cuff me about the ears. Just started looking real nervous like he had forgotten his best friend's name at a party or something. Strange, I tell you.~ #18853 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @12 /* ~The Seven Suns
I met Dun the ex-merchant in the city streets today. He has some interesting suspicions about the Seven Suns and the Merchants' League, two mercantile groups here in Baldur's Gate. He is apparently quite in their debt financially, but, for some unknown reason, they have stopped pressuring him for repayment. Indeed, they seem almost frightened whenever he approaches them and tries to catch their eye. I cannot yet fathom the relevance of this to my investigation. Still, this whole affair has been motivated by greed, business, and money from the start. If merchant groups in the largest city in the region are acting suspicious, I had best take note...~ #27008 */ EXIT
  IF ~  GlobalGT("CheckedSevenSuns","GLOBAL",1)
~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13 /* ~Nah, don't be. It's given me a whole new lease on life, I swear! I'm as light and as free and as, well... broke as the wind! See? Look at me fly!~ #18854 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
