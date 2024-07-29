// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHAELL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHAELL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA306~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 10 17 even though they appear after this state */
~  Global("HelpShaella","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Shaella sees through the mists of the Lady that you are strong and worthy adventurers.~ #14238 */
  IF ~~ THEN REPLY @2 /* ~Who is Shaella?~ #14258 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Shaella sees clearly, indeed.~ #14256 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~No, we're just passing through, ma'am.~ #14257 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~It is Shaella, Most High Middling Priestess of the Mistshadow, who is here before you, speaking through the mists of Leira.~ #14239 */
  IF ~~ THEN REPLY @6 /* ~Leira? Who's that?~ #14259 */ GOTO 5
  IF ~~ THEN REPLY @7 /* ~I don't see any mist.~ #14260 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @8 /* ~What insolence from one so young. Shaella sees not clearly but dimly, ever peering through the mists of Leira.~ #14240 */
  IF ~~ THEN REPLY @6 /* ~Leira? Who's that?~ #14261 */ GOTO 5
  IF ~~ THEN REPLY @7 /* ~I don't see any mist.~ #14262 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9 /* ~We are ever passing through the mists of Leira, our hulls brushing against the reefs of knowledge but we never run aground, the winds of truth tear us not asunder. Travel well, then, safe in the calm of ignorance.~ #14241 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.1
  SAY @10 /* ~Stare deep into the Mistshadow, and mark your devotion to Leira, Mistress of Mists and Lady of the Unknowing. Stare into it and know that knowledge is unknowable.~ #14242 */
  IF ~~ THEN REPLY @11 /* ~If knowledge is unknowable, then how can I know that in the first place?~ #14263 */ GOTO 6
  IF ~~ THEN REPLY @6 /* ~Leira? Who's that?~ #14264 */ GOTO 5
  IF ~~ THEN REPLY @12 /* ~I'm sorry, I don't have the time for this right now. Perhaps another day.~ #14265 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1 2.0 1.0
  SAY @13 /* ~Leira, Lady of Mists, Mother of All Illusion, the Guardian of Deception, the Mistshadow. Some say she died in the Time of Troubles, killed by Cyric, betrayed by Mask. Some say she loved Mask and loves him still. Some say gods can die. Some say gods can be born. Some say gods can live. Some say gods are an illusion we create for our own contentment. Some say gods are an illusion we create to disguise our fear of living, our fear of dying, our fear of being. If gods are a disguise, if gods are an illusion, then perhaps Leira is the only beacon of truth in our entire pantheon of lies. But if gods are real and true and all-knowing, then Leira cannot be a god and must be dead if indeed she ever lived at all.~ #14243 */
  IF ~~ THEN REPLY @14 /* ~But how can you worship what you cannot know?~ #14266 */ GOTO 6
  IF ~~ THEN REPLY @15 /* ~Oh my, look at the time!~ #14267 */ GOTO 7
  IF ~~ THEN REPLY @16 /* ~I don't want to know other people's opinions. What do you say about Leira?~ #14268 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0
  SAY @17 /* ~More or less precisely my point.~ #14244 */
  IF ~~ THEN REPLY @18 /* ~But I don't understand.~ #14269 */ GOTO 9
  IF ~~ THEN REPLY @19 /* ~I see.~ #14270 */ GOTO 10
  IF ~~ THEN REPLY @20 /* ~This is all really too much theology for one day. Perhaps I'll talk to you another time.~ #14271 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 9.2 8.0 6.2 5.1 4.2
  SAY @21 /* ~The mists of Leira are ever-present. Should you need a haven from knowledge, an escape from what is real, perhaps Shaella will be here for you.~ #14245 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @22 /* ~Shaella says what Shaella has said, does she not?~ #14246 */
  IF ~~ THEN REPLY @23 /* ~My head hurts. I think it would be best if I just went and found a place to lay down for a while.~ #14272 */ GOTO 7
  IF ~~ THEN REPLY @24 /* ~I'm afraid I really don't understand.~ #14273 */ GOTO 9
  IF ~~ THEN REPLY @25 /* ~Aha! That clarifies everything!~ #14274 */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 6.0
  SAY @26 /* ~Ah, then you are truly one of us, you are truly with Shaella in the Mists of Leira. May Shaella grace you with a quest from the Lady?~ #14247 */
  IF ~~ THEN REPLY @27 /* ~Certainly.~ #14275 */ GOTO 10
  IF ~~ THEN REPLY @28 /* ~I'm not sure.~ #14276 */ DO ~SetGlobal("HelpShaella","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @29 /* ~Thank you, Shaella. You follow a most interesting faith but I'm afraid I seek a solid image, not a blur.~ #14277 */ GOTO 7
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 10 // from: 15.2 14.2 9.0 8.2 6.1
  SAY @30 /* ~Insolence! Begone, all who seek to dispel the mists of Leira!~ #14248 */
  IF ~~ THEN DO ~EraseJournalEntry(@31)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @32 /* ~Ah, indeed. You walk well with Shaella in the mists of Leira. Forgotten deep in the library of Candlekeep lies the Great Book of the Unknowing. Bound with the chameleon's hide, it too walks in the mists of Leira, changing always, as does Shaella. Ask no one there of it for all who have touched it are blessed with the ignorance it grants. But you can always find it somewhere in the inner rooms, wreathed in the mists of Leira. Go to it, make your pilgrimage, and you too may be blessed with unknowing.~ #14249 */
  IF ~~ THEN REPLY @33 /* ~Thank you, Shaella, for this gift of the Unknowing. Perhaps, as you suggest, I shall seek it out and, in finding it, shall lose it for all time. Walk well in the mists of Leira.~ #14278 */ GOTO 12
  IF ~~ THEN REPLY @34 /* ~Have you ever seen the Great Book of the Unknowing?~ #14279 */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 15.0 11.0
  SAY @35 /* ~Walk well in the mists of Leira.~ #14250 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_quest","LOCALS",0)
~ THEN DO ~SetGlobal("bd_quest","LOCALS",1)
AddJournalEntry(27431,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @36 /* ~Perhaps I have. Perhaps a thousand times.~ #14251 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_quest","LOCALS",0)
~ THEN DO ~SetGlobal("bd_quest","LOCALS",1)
AddJournalEntry(27431,QUEST)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("HelpShaella","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY @37 /* ~Elnaedra sees through the mists of the Lady that you are strong and worthy adventurers.~ #14252 */
  IF ~~ THEN REPLY @38 /* ~Elnaedra? What happened to Shaella?~ #14280 */ GOTO 15
  IF ~  GlobalGT("chapter","GLOBAL",6)
~ THEN REPLY @39 /* ~I have searched every inch of Candlekeep and cannot find the Great Book of the Unknowing which is said to be housed there.~ #14281 */ GOTO 16
  IF ~  GlobalGT("chapter","GLOBAL",6)
~ THEN REPLY @40 /* ~Elnaedra, I have found the Great Book of the Unknowing and have tasted of its wonders!~ #14282 */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @41 /* ~Elnaedra knows not of whom you speak and you are but strangers to her.~ #14253 */
  IF ~~ THEN REPLY @42 /* ~Strangers? But Shaella, we spoke at length. Don't you remember?~ #14283 */ GOTO 12
  IF ~  GlobalGT("chapter","GLOBAL",6)
~ THEN REPLY @39 /* ~I have searched every inch of Candlekeep and cannot find the Great Book of the Unknowing which is said to be housed there.~ #14284 */ GOTO 16
  IF ~  GlobalGT("chapter","GLOBAL",6)
~ THEN REPLY @43 /* ~Elnaedra, I have seen the Great Book of the Unknowing and have tasted of its wonders!~ #14285 */ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 15.1 14.1
  SAY @44 /* ~Then the Lady has been kind to you for you have found it. Walk well in the mists of Leira.~ #14254 */
  IF ~~ THEN DO ~EraseJournalEntry(@31)
SetGlobal("HelpShaella","GLOBAL",2)
EscapeArea()
~ SOLVED_JOURNAL @45 /* ~The Great Book of the Unknowing
Shaella says I found the "Great Book of the Unknowing" somewhere within Candlekeep, but I don't remember.~ #27432 */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 17 // from:
  SAY @46 /* ~May the mists of Leira enshroud you at your burial.~ #14255 */
  IF ~~ THEN EXIT
END
