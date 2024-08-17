// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FORTHE.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FORTHE.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA329~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hail and well met, stranger. I take it you are an adventuring sort? I could tell the moment I saw you. You do not have the manicured hands of the fops we usually get through here. May I have a moment or two of your time?~ #19741 */
  IF ~~ THEN REPLY @2 /* ~What do you want of me?~ #19742 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~I'll listen... for the right price.~ #19743 */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Go away son, you bother me.~ #19744 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @5 /* ~If you wish, though you are foolish to rebuke me before you know my offer. I could have made your group the heroes of an ode, but now you shall be the ogrish louts of a dirty limerick or two. Something about being a dirty little nipper of a cabin <GIRLBOY>, I think.~ #19745 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6 /* ~Well, I'll tell you. I am a bard, and a soon-to-be-great bard, I might add. All I really need is some good material for a song or two, and I'll be playing the big rooms. Seeing as how the masses always like tales of derring-do, I need to purchase a few details off of you. I could always make something up, but such things never ring true. Are you interested?~ #19746 */
  IF ~~ THEN REPLY @7 /* ~The lot of a bard is to travel and learn. Why don't you go out and find your own stories?~ #19749 */ GOTO 6
  IF ~~ THEN REPLY @8 /* ~For the right price I might consider it.~ #19750 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~No self-respecting bard would do such a thing, and I won't help you.~ #19751 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 6.0 5.0 4.0 2.2
  SAY @10 /* ~My, aren't you the moral champion of the day? I fail to see why I should be chastised because I don't wish to risk my neck chasing down vermin or bandits. Leave me be then.~ #19747 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @11 /* ~Oh, that's fine, as I have more than enough money to spend. Basically I require a few stories from you, which I will alter slightly for dramatic effect and present as my own. I could just make something up, but such efforts never ring true. They must be believable if the masses are going to fall for them. So what do you say? Shall I pay you... oh... how about 200 gold a story?~ #19752 */
  IF ~~ THEN REPLY @9 /* ~No self-respecting bard would do such a thing, and I won't help you.~ #19753 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~The lot of a bard is to travel and learn. Why don't you go out and find your own stories?~ #19754 */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12 /* ~A reasonable request. What if I paid you 200 gold for each idea?~ #19755 */
  IF ~~ THEN REPLY @9 /* ~No self-respecting bard would do such a thing, and I won't help you.~ #19756 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~The lot of a bard is to travel and learn. Why don't you go out and find your own stories?~ #19757 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 4.1 2.0
  SAY @13 /* ~Why? Because it's DANGEROUS out there. I became a bard for the easy work and prestige among certain female members of my social set, not because I wanted to chase vermin down dungeon holes. Do you wish to help or not?~ #19758 */
  IF ~~ THEN REPLY @9 /* ~No self-respecting bard would do such a thing, and I won't help you.~ #19759 */ GOTO 3
  IF ~~ THEN REPLY @14 /* ~Surely. What type of tales do you require?~ #19760 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15 /* ~I don't know. Something dashing and dangerous that will make the ladies go "my hero"!~ #19761 */
  IF ~~ THEN REPLY @16 /* ~I've a grand piece about the Iron Throne. It would seem that they are in the midst of a plot to weaken the entire region to increase their power base, and possibly to allow for invasion from Amn. They don't seem to be totally in control of the crisis at this point though, and this has allowed me to come close to destroying them once and for all.~ #19762 */ GOTO 8
  IF ~~ THEN REPLY @17 /* ~I've faced all manner of beastie and bandit in my travels, and come near death more times than I can count. Would you like to hear of the feral viciousness of gibberlings, or perhaps of the cunning of the common kobold? I could tell of the strength of the gnoll, or the size of the ogre?~ #19764 */ GOTO 9
  IF ~~ THEN REPLY @18 /* ~I could relate how I have seen good people struck down unjustly, or the strength of character of the common farmer. Perhaps an ode to the conviction of the adventuring cleric, or how good people fight for what is right in the face of incredible odds. What say you?~ #19766 */ GOTO 10
  IF ~~ THEN REPLY @19 /* ~How about a tale of gold, and the frenzied lust it inspires in people? The treachery of a friend that stabs you in the back for the coins you just pulled out of the depths of a dungeon, or the foolishness of a man who dropped all his arrows to make room for more treasure and faces his enemies defenseless for it?~ #19768 */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @20 /* ~That sounds like such a load of poppycock. The Iron Throne is a merchant consortium, and not likely to promote such a bloodbath as war with Amn would bring. Killing all the customers is generally bad for business and makes no sense. If you're not going to be serious with me, I'll take my leave.~ #19763 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @21 /* ~Well, that all just sounds rather brutish. I'm not sure what my muse is supposed to do with such tales. Perhaps, as they say, I just really had to be there. Take your money, and I shall slink away to write some songs about the high price of ale and how my silken sheets chafe. This bard business is going to be rather difficult if I am restricted to writing of things I know or understand.~ #19765 */
  IF ~~ THEN DO ~GiveGoldForce(200)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @22 /* ~Hmm... tales of conviction and strength of spirit. I have no clue where to start telling a tale about that. If I were an introspective sort, I might conclude that I can't write about things I don't understand. As it is, I'm sure it's someone else's fault. I don't think you'll be much use to me after all.~ #19767 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @23 /* ~Good, good. I can understand the motivations of these people and tales. I'm sure I could write a fine ballad about these things, as I know their subjects well and true. Unfortunately, songs about such things are not likely to increase my tips or inspire my listeners to applause. If I were more philosophical I might realize this as a flaw within myself, but as it is I am sure it is someone else's fault. Take your money and leave me, I don't think I can use you after all.~ #19769 */
  IF ~~ THEN DO ~GiveGoldForce(200)
EscapeArea()
~ EXIT
END
