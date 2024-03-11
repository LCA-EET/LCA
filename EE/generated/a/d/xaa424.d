// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BORIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BORIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA424~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hail and well met, young 'un. Have you come to old Borinole for a tale or two of life in the realms, or are you just strolling about meeting the folks of Baldur's Gate?~ #11571 */
  IF ~~ THEN REPLY @2 /* ~I've no interest in you or your stories.~ #11579 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Have you any interesting tales?~ #11581 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Indeed, there are many interesting folk about.~ #11582 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 5.1 3.0 2.0 0.0
  SAY @5 /* ~I see. Well, take your leave then, and don't come back this way any time soon.~ #11583 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Oh, I have tales. Whether they are interesting or not is a matter of debate, I suppose. I could share one with you, though it likely has no bearing on anything of importance. Nothing at all to be gained from the telling, save a moment of time well spent.~ #11584 */
  IF ~~ THEN REPLY @7 /* ~If it is of no importance, then I am not interested.~ #11588 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~By all means, go right ahead.~ #11591 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @9 /* ~I should say so, though not as many as in the past. People are avoiding the roads because of the recent troubles, as I am sure you are aware. We keep up a strong front though, and I know we'll get through just fine. The people of "the Gate" have always been good at adapting. Why, in my day we could weather month-long storms with nothing but a log or two, the skins of a few unfortunate bears, and the warm company of those we held dear. Of course, in those days trees were bigger, you understand? A good stout log could fire the hearth for a tenday, though you'd have to empty out the stables for a place to keep them dry. Likewise the pelt of an adult grizzly could carpet your whole house. And company? Company was HUGE! I remember old skinny Morgan. Nigh unto a giant he was. Soft at heart though...~ #11592 */
  IF ~~ THEN REPLY @10 /* ~Please, will you stop with the incessant chatter?! I can take no more!~ #11593 */ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Ah, we'll never see the like of those days again. I'd love to stay and chat, but I should be off.~ #11594 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.2 3.1
  SAY @12 /* ~If you say so, young 'un. Good on you and those you travel with.~ #11595 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @13 /* ~I shall then. It was the dawning of a new year, and Chester Blackboot and I were off to rally our friends and storm the gates of the old Firewine ruins. Vella Stablehand was at the head; she was the eldest, you understand. We pretty much agreed that she would take point and absorb most of the initial damage were we attacked. Of course Vella had her father's axe too, and that made her an imposing sight at the forefront. She was tall as a pine and could deliver a backhand like you were so much silt on the breeze. I remember a time when she and Chester—this was Chester Allendale, no relation to the Blackboots (and a good thing too. Them Blackboots had not patience for Vella and her shenanigans)—well, Chester and Vella were spelunking in the Ulcaster (at least, that's what the kids called it in those days) and her father comes up and by golly, Vella up and belts Chester so hard he didn't hit the ground for a week. Vella's father sees this and laughs so hard he plumb forgets he's mad. He's like that though, and the day he passes up a good joke will be the day he passes on entirely. I remember a time...~ #11596 */
  IF ~~ THEN REPLY @14 /* ~I don't mean to be critical but does this story have an end? Or a beginning, for that matter?~ #11597 */ GOTO 6
  IF ~~ THEN REPLY @15 /* ~Shut up, shut up, shut up! I can't take another second of your rambling.~ #11598 */ GOTO 1
  IF ~~ THEN REPLY @16 /* ~A rousing tale. I learned a lot. I'll be leaving now. Goodbye.~ #11599 */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17 /* ~Stories continue long after the exciting bits end, young 'un. You'll miss a lot of life if you don't pay attention to anything outside of swinging the axe and smacking the head. Ah, well. People had more patience in my time. Why, Buck Longbrow could stare at corn from seed to harvest, though he always was a bit shaky after the fall. Eh... leave me be.~ #11600 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7 // from:
  SAY @18 /* ~Those were the days, weren't they?~ #11601 */
  IF ~~ THEN EXIT
END
