## Love Conquers All (LCA) Release Notes

# Report any bugs to LCAMod@danielvalle.net, the Discord channel, or the Gibberlings 3 Forum Post 
* Link to Discord: https://discord.com/channels/1092566213420400692/1092566213420400695
* Link to G3 forum post: https://www.gibberlings3.net/forums/topic/36832-announcing-love-conquers-all-lca-%E2%80%93-corwin-romance-mod-for-eet

# v1.1 2024-01-07
* Various dialog and lore consistency improvements based on feedback received.
* Players can now disable and remove the LCA Assistant ability using the debugger.

# v1.0.16 2024-01-01
* Added two new upgraded versions of Corwin's Bow:
* Corwin's Bow +3 (Gesen): Bring Corwin's Bow +2 and Gesen's bowstring to Cromwell in Athkatla, and pay the 7,500 gold.
* Corwin's Bow +4 (Gesen): Rescue the master bowyer of Suldaneselaar while possessing Corwin's Bow +3. Corwin's Bow +4 will be made available to you after Irenicus is defeated. 
* Miscellaneous scripting improvements.

# v1.0.15a 2023-12-31
* Minor grammatical improvements (its <--> it's, etc.).
* Journaling improvements.

# v1.0.15 2023-12-29
* Added Aster's Edge +5, which can be crafted by Cespenar using Aster's Edge +3 and the Eye of Tyr.
* Improvements to Caelar visual effects / representation.

# v1.0.14a 2023-12-28
* Corrected a failure to properly set a variable after Corwin kills Beno. The failure to set the variable could potentially lead to the wrong dialog being initiated during the course of ToB. The fix is applied automatically; there is no need to backtrack.

# v1.0.14 2023-12-27
* Added integration with the Lichdom_EET mod.

# v1.0.13 2023-12-20
* Increased the experience awarded to Caelar upon her joining the party from a maximum of three million to a maximum of five million.
* Minor improvements to various dialogs and journaling.
* Fixed a bug that caused the Black Abishai to attack other demons (as opposed to the player's party) during the battle to rescue Caelar.

# v1.0.12c 2023-12-17
* Golden Eggs can now be placed in Jewellery Bags.
* Fixed a bug that prevented the "XA_ClearedKanaglym" variable from being set correctly. This variable is important, because it it one of the triggers used to start the Kanaglym dream sequence in ToB. Players can manually set this variable after the fact by opening the LCA Assistant, and choosing the following options:
- 9. Open debugger.
- 1. Proceed.
- 43. Adjust Variables.
- 138. Set XA_ClearedKanaglym to 1.
- 58. Dismiss Debugger.
* For players starting their game from BG2, an initial configuration option concerning Kanaglym has been added.
 
# v1.0.12b 2023-12-16
* Minor improvements to the integration with the fourth intimate encounter in the LCA_Explicit mod.
* Updated Volo's dialog to include mention of <CHARNAME>'s accomplishments during the Dragonspear campaign.  

# v1.0.12a 2023-12-10
* Fixed a bug that could cause Lantanara to spawn repeatedly after giving the player her prophecy.
* Fixed a bug that could cause Jan to rejoin the party in Saradush, even if he was not in the party at the conclusion of the Return to Baldur's Gate portion of the mod.
* Fixed a script blocking issue that could cause party members to fail to join after the conclusion of the Return to Baldur's Gate portion of the mod.
* Added an option to dismiss the debugger after it has been summoned.

# v1.0.12 2023-12-06
* Improvements to journaling related to Haspur the Diviner, during the Return to Baldur's Gate.

# v1.0.11 2023-12-03
* Added new journal entries for the Returning the Stolen Artifacts quest.
* Minor improvements to the Slaver Conspiracy quest.
* Adjusted the Dragonspear medallion so that it can be worn by all classes.
* Small fixes to dialog issues in the Slaver Conspiracy quest.

# v1.0.10 2023-12-02
* Added an initial configuration menu for players that are starting their game in BG2. The menu will automatically appear a few moments after beginning the game in Irenicus' stronghold. The menu can be re-accessed, if necessary, through the LCA Assistant. The menu won't appear if the player began their game in BG1 or SoD.

# v1.0.9b 2023-11-30
* Modified Corwin's script to block banter initiation during the conclusion of the Return to Baldur's Gate quest. Banters are re-enabled once the quest is completed.
* Fixed a bug in the Dragonspear painting that caused Caelar's second form to refrain from attacking the player, even though she was hostile.
* Fixed the spelling of 'Doppelganger', and other minor improvements.

# v1.0.9a 2023-11-29
* Fixed a typo in one of the Return to Baldur's Gate dialogs.
* Fixed an issue where two of the crusaders in the Dragonspear painting were not hostile toward the player's party.

# v1.0.9 2023-11-27
* Changed Gift of the Demon from a +5 Longsword to a +5 Bastard Sword.
* Improved handling of the Incubus' gifts after the encounter at Elfsong.
* Small improvements to Halbazzer's ring enchantment dialog.
* Changed the description of the Golden Hen to more accurately capture how it works.
* Completing the Trouble at the Elfsong quest now gives an appropriate amount of experience.
* The map note for Corwin's Home is now active during the Return to Baldur's Gate mini-quest.

# v1.0.8 2023-11-25
* Added a new mini-quest, A Pet for Rohma.
* Updated the conclusion of the Irenicus battle to point to the modified cutscene script.
* Fixed a bug that could cause the dialog with Nederlok on Wyrm's Crossing to end early.
* Miscellaneous improvements / refactoring.

# v1.0.7 2023-11-22
* Added some new Underdark interjects.

# v1.0.6a 2023-11-22
* Refactored integration with the LCA Explicit mod - no new content.

# v1.0.6, 2023-11-21
* The ammo belt in Corwin's Home in BG1 is now distinct from the one you receive in SoD / BG2.
* Fixed an intermittent issue that caused Corwin to remain hidden after the conclusion of the SoD tent cutscene.

# v1.0.5, 2023-11-14
* Fixed a compatibility issue with Cost of One Girl's Soul.
* Added a new quest, "Returning the Stolen Artifacts". CHARNAME can start it by speaking to Deidre in the Adventurers Mart when Corwin is present.
* Improvements to the Neb encounter in Athkatla when Corwin is present.
* Added some new interjections.

# v1.0.4, 2023-11-08
* Added some new dialog between Corwin and MaeVar.
* Improved the inventory transfer scripting between Corwin (SoD) and Corwin (LCA).
* Fixed a bug that could cause Corwin's amulet to be created twice upon her joining the party.

# v1.0.3b, 2023-11-03
* Fixed a bug that caused Corwin and Caelar to fail to receive the experience boost upon joining the party.

# v1.0.3a, 2023-11-02
* Fixed a bug that could cause Corwin's SoD and LCA portraits to be swapped in the epilogue screens.

# v1.0.3, 2023-11-01
* Added narration to eight of the eleven LCA text screens.
* Miscellaneous improvements to LCA content within the SoD campaign.
* Fixed an item stacking issue for several items, most notably Corwin's amulet.
* Corwin will retain her SoD portrait by default. The portrait can be changed through the use of the LCA Assistant.

# v1.0.2b, 2023-10-17
* Fixed an intermittent issue concerning the progression of the Spellhold capture cutscene.
* Added a new condition that can help trigger the archery lesson cutscene in SoD.

# v1.0.2, 2023-10-14
* Added an archery lesson cutscene to SoD. Refer to the User's Guide for the specific conditions that will trigger the cutscene. When complete, the lesson will give the player a permanent +1 bonus to Missile Damage and THAC0 with Missile Weapons.

# v1.0.1, 2023-10-07
* Corrected portrait icons associated with the various engagement rings.
* Miscellaneous minor changes to BG1 areas to better support the storyline developed in LCA. 

# v1.0, 2023-09-30
* Initial release - thank you to everyone who contributed their time to help test the mod. Enjoy!

# RC2, 2023-09-28
* Re-incorporated some music that was inadvertently removed during the LC to XA prefix conversion.
* Updated the soundwork in the Corwin marriage proposal cutscene.
* Miscellaneous improvements.
* You can now buy the doll for Rohma from Lucky Aello's shop, in addition to the two General Stores located in the city.

# RC1, 2023-09-25
* Fixed bugs relating to the fight between Corwin and Hexxat.
* Overhauled banter scripting.
* Final fixes and improvements in preparation for the 1.0 release later this month.
* Updated the User Guide.

# v0.3.6-beta 2023-09-17
* Banter scripting improvements.
* Fixed a bug where Rohma appeared asleep during the Master Wraith encounter in ToB.
* New sound work.

# v0.3.5-beta 2023-09-16
* Scripting improvements and bug fixes concerning the transition to Saradush from the end of the Return to Baldur's Gate quest.

# v0.3.4-beta 2023-09-13
* New soundwork.
* Miscellaneous improvements.

# v0.3.3-beta 2023-09-11
* Added a new banter between Corwin and Keldorn.
* Updated Corwin's portrait.
* Updated the User Guide.

# v0.3.2-beta 2023-09-11
* Scripting improvements to support future modding.
* Added the ability to change Corwin's portrait using the LCA Assistant.

# v0.3.1-beta 2023-09-09
* Cleaned up some inconsistencies in the Duke Debriefing cutscene, when the Skie mod is active.

# v0.3.0-beta 2023-09-08
* Updated Corwin's character portrait. This change applies only to XACORWIN, not CORWIN7.
* Updated the user's guide.
* Made some changes to Corwin's Amulet. It can now be dropped. The user guide includes an explanation of what it does.
* Extensive changes to support compatibility with CorwinEET and Cost of One Girl's Soul. LCA should be installed after those mods. Refer to the user's guide.
* Added Glint as a non-playable character in the Return to Baldur's Gate.

# v0.2.11-beta 2023-09-08
* Improved post-dialog (XACORWIP) logic.
* Further improvements were made to the gorge tree-climbing dialogue. Corwin's is now treated separate from the rest of the party, to ensure compatibility with other mods that look to include similar dialogues for their NPCs.

# v0.2.10-beta 2023-09-06
* Modified scripting so that the player is prevented from entering the Twisted Rune area (Cowled Menace) in Baldur's Gate East while the Return to Baldur's Gate mini-quest is active. Upon completion of the mini-quest (or before its initiation), the Twisted Rune area triggers will be active, if the Cowled Menace mod is installed.
* Added scripting to the sewer entrances in Baldur's Gate to help prompt the player to investigate. The scripting is only active if Neb is not dead, and the player is in the Return to Baldur's Gate mini-quest.
* Modified the gorge tree-climbing dialogues to improve compatibility with other NPC mods.

# v0.2.9-beta 2023-09-05
* You will not be able to discuss the slaver plot with Marshal Nederlok, if you did not rescue the child from the slaver stockade in Athkatla while Corwin was in the party.
* Fixed the transition to Saradush at the conclusion of the Return to Baldur's Gate quest.
* The user guide was updated to include additional information concerning the triggering of certain events.
* Fixed a bug that caused a duplicate of the bartender and waiter to appear in one of the inns in Baldur's Gate, during the Return to Baldur's Gate quest.
* Fixed a bug that prevented the player from entering the Seven Suns during the Return to Baldur's Gate quest.
* Fixed a bug that caused a duplicate of Lantanara to appear during the Return to Baldur's Gate, if the player did not see Lantanara during the events of BG1.
* Fixed a bug that prevented Corwin from complaining that the player allowed Sarevok into the party.
* Dialog updates.

# v0.2.8-beta 2023-09-05
* Fixed bugs concerning the timers in the Return to Baldur's Gate quest.
* Fixed the transition from the Duke debriefing to the kidnapping scene.
* There's an outstanding issue with the transition from Baldur's Gate to Saradush that will be corrected in the next release.

# v0.2.7-beta 2023-09-04
* Fixed a bug in the Spellhold encounter. A video showing how the encounter is designed to progress is available here: https://www.youtube.com/watch?v=eMl_1RYQ37w&t=200s
* If the player did not kill Neb in Athkatla, he will appear in the Return to Baldur's Gate quest in the Central Sewers area, where Ratchild used to be.
