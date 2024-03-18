// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ELMIN5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ELMIN5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA135~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Good day to thee, young one. What a marvelous happenstance that we should again cross paths, especially in such a grand city as this. Ahh, I see by thine eyes that thou've no time for my wry banter. 'Tis true, our meeting was no accident, though I do honestly take pleasure in seeing thee again.~ #9865 */
  IF ~~ THEN REPLY @2 /* ~A pleasure I do not share. Leave me be, old man!~ #9871 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~It is good to see you again. What brings you here?~ #9878 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~I am not some old letch that follows thee around for the good of mine eyes, upstart. If I am to be accused of anything, perhaps it is that I have been a touch too mothering. I think this can be excused, however, when compared to the zeal with which thy true parentage pursues thee. I trust thou dost suspect that thou art not "normal."~ #9872 */
  IF ~~ THEN REPLY @5 /* ~Save your insults for someone who cares!~ #9875 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~What do you know of this? Why have you come here?~ #9882 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 5.1 1.0
  SAY @7 /* ~Thou art determined to be confrontational, aren't thee? So be it. I will leave thee to whatever fate that thou dost carve for thyself. I will extend the courtesy of a warning though; thy manner may come natural to thee, but obeying thine impulses is not always the best course. Being true to thyself is only wise if that is truly the self thou dost wish to become. I lecture too long and thine interest fades. Off with thee, to whatever fate will have thee.~ #9876 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @8 /* ~Another Encounter with Elminster
Again Elminster has made an appearance, and again he has presented a riddle I have not the time to puzzle over. Something about my nature and how I must be cautious. Bah, only my enemies need worry about my actions.~ #10066 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @9 /* ~Oh, all citizens of the Sword Coast eventually pass through Baldur's Gate, and I knew thou wouldst as well. Forgive my continued meddling but I believe it is warranted, especially considering the pressures thou art no doubt confronting. My pestering of thee certainly pales in comparison to the influence thou hast felt from others, including thine own self. Gorion raised thee as best he could, but 'tis hard indeed to overcome what is bred in the bone. Much more so in this case, I would imagine.~ #9879 */
  IF ~~ THEN REPLY @10 /* ~So what is it you wish of me?~ #9880 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~What do you know of Gorion?~ #9881 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.1
  SAY @12 /* ~He was long my friend and we talked often, though less after he settled down with thee. He was quite the traveler in his day, though he never regretted his new role as foster father. He felt a stable childhood would better prepare thee for, well, the problems that would eventually come. He cared deeply for thee. I hope this was not lost on you.~ #9883 */
  IF ~~ THEN REPLY @13 /* ~Bah! Gorion was weak. I have no desire to follow in any parental footsteps.~ #9892 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~He was a good man, though I would prefer to walk my own path.~ #9898 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY @15 /* ~I was about to ask this same question of thee. Thou hast come quite far, and though my answers are often less than obvious, I do hope they help a little. Gorion often chided me for my obliqueness, though he was fond of a little verbal hide and seek as well.~ #9893 */
  IF ~~ THEN REPLY @16 /* ~What can you tell me of Gorion? It seems I knew very little of him.~ #9894 */ GOTO 4
  IF ~~ THEN REPLY @17 /* ~I tire of these games. Leave me to my own means!~ #9895 */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY @18 /* ~Such bitter sentiment betrays thee. Thou art closer to thine true lineage than thou wouldst care to believe. Thou hast bad blood in thee, child, a taint that will consume thee if care is not taken. What point is there in defeating one's enemies if thou dost join them in spirit? There are good people who are willing to guide thee, and options available other than capitulation.~ #9897 */
  IF ~~ THEN REPLY @19 /* ~Fie upon ye! I will conquer all, whether from within or afar!~ #9902 */ GOTO 8
  IF ~~ THEN REPLY @20 /* ~Good intentioned friends are welcome, though I will fight my own battles.~ #9910 */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @21 /* ~I was not suggesting that thou should do otherwise. Whatever the motives, independence is always a wise course to follow. My worry is that thy lineage is harder to escape than most. Thou hast bad blood in thee, though Gorion did what he could to teach thee well and true. Thou hast hungry blood within thee as well, and it will not let thee go without a fight. For better or worse, what's bred in the bone will be dealt with in time. I trust thou hast the will to face what is within thee?~ #9899 */
  IF ~~ THEN REPLY @22 /* ~I will conquer all, whether from within or afar!~ #9900 */ GOTO 8
  IF ~~ THEN REPLY @23 /* ~I know little of what is to come, but I will do what is best.~ #9901 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 6.0
  SAY @24 /* ~An attitude that will suffice, I suppose. Striving to be free or refusing to be dominated: six of one or a half dozen of another. This difference is unimportant for now, though sometime in the future such brash traits may prove to be a weakness. We shall see. For now, I offer basic advice and a few names. Scar of the Flaming Fist is a good man, and well worth trusting. His superior, Duke Eltan, is also a good sort. Both are to be believed when they speak. I take my leave, and wish thee well.~ #9911 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @25 /* ~Another Encounter with Elminster
Again Elminster has made an appearance, though he was a little more forthcoming with information this time. He apparently knew Gorion well and thought him a good man to care for me. He also spoke of bad blood, and a taint that will consume me if care is not taken. What this means, I am not sure. I will heed his warning, though I have little time to dwell on it. He did give me some names, though, of people he feels are trustworthy: Scar of the Flaming Fist, and Duke Eltan. I suppose I can believe them if Elminster himself does so recommend.~ #27040 */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 6.1
  SAY @26 /* ~I am sure the future will be kind to thee. For now I will give thee my best wishes, and a few names that will serve thee well. Scar of the Flaming Fist is a good man, and well worth trusting. His superior, Duke Eltan, is also a good sort. Both are to be believed when they speak. I take my leave, and wish thee well.~ #9912 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @25 /* ~Another Encounter with Elminster
Again Elminster has made an appearance, though he was a little more forthcoming with information this time. He apparently knew Gorion well and thought him a good man to care for me. He also spoke of bad blood, and a taint that will consume me if care is not taken. What this means, I am not sure. I will heed his warning, though I have little time to dwell on it. He did give me some names, though, of people he feels are trustworthy: Scar of the Flaming Fist, and Duke Eltan. I suppose I can believe them if Elminster himself does so recommend.~ #27040 */ EXIT
END
