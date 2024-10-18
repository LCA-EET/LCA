# Love Conquers All (LCA) Mod for Baldur's Gate 2 Enhanced Edition (EE), and Enhanced Edition Trilogy (EET)

<a name="a_mod_overview"></a>
### Overview
<img align="right" src="XACORWIN.PNG">
<p>
This mod allows Corwin to be added to the party in Shadows of Amn, and Caelar to be added in Throne of Bhaal. Players can either continue the romance they started with Corwin in Siege of Dragonspear, or they can start a new romance with her after her arrival in Athkatla. The mod adds more than 200 new dialogs spread across the four games of the Bhaalspawn saga. Moreover, there are dozens of new items, quests, and cutscenes to enjoy.
</p>
<p>
If you have any questions, or would like to provide feedback, you can reach me on <a href="https://discord.gg/hwGf39gW9g">Discord</a>. Alternatively, you can send me an e-mail at <a href="mailto:LCAMod@danielvalle.net">LCAMod@danielvalle.net</a>, or you can post your questions or concerns to the <a href="https://www.gibberlings3.net/forums/topic/36832-announcing-love-conquers-all-lca-%E2%80%93-corwin-romance-mod-for-eet" target="_blank">Gibberlings3 forum post</a>. I hope that you have as much enjoyment in playing this mod as I did in creating it. 
</p>

### New Quests
- A Gift for Rohma
- A Pet for Rohma
- Disappearances at the Elfsong
- Engagement Ring
- Locating the Farseer
- Recovering the Baldurian Artifacts
- Rescue Caelar Argent
- Rest In Peace
- Slaver Conspiracy
- The Soultaker Dagger
- Tianna's Problem
- Trouble in the Tower

### Contents
- [Mod Overview](#a_mod_overview) 
- [Compatibility Table](#a_compatibility_table)
- [Installation Instructions](#a_installation_instructions)
- [EE Playthrough Parameters](#a_ee_params)
- [LCA Explicit Mod](#a_lca_explicit)
- [Banter Timers](#a_banter)
- [Using the Configuration Assistant](#a_config)
- [LCA Debugger](#a_debugger)
- [Bug Reports](#a_bugs)
- [Useful Links](#a_useful_links) 
- [Baldur's Gate 1 Changes](#a_bg1)
- [Siege of Dragonspear Changes](#a_sod)
- [Shadows of Amn Changes](#a_bg2)
- [Throne of Bhaal Changes](#a_tob)

### Compatibility Table
<a name="a_compatibility_table"></a>
LCA is compatible with standard EE as well as the Enhanced Edition Trilogy (EET) mod. The table below lists different mods and whether they are compatible with LCA.
<table>
	<tr>
		<td><b>Mod Name</b></td>
		<td><b>Compatible?</b></td>
		<td><b>Install LCA</b></td>
	</tr>
	<tr>
		<td><a href="https://github.com/LCA-EET/AutoIdentify">AutoIdentify</a></td>
		<td>Yes</td>
		<td>Before</td>
	</tr>
	<tr>
		<td><a href="https://github.com/LCA-EET/AutoLoot">AutoLoot</a></td>
		<td>Yes</td>
		<td>Before</td>
	</tr>
	<tr>
		<td>Blackhearts</td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Corwin EET</td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Cost of One Girl's Soul</td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Cowled Menace</td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Enhanced Edition Trilogy (EET) Core</td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Enhanced Edition Trilogy (EET) End</td>
		<td>Yes</td>
		<td>Before</td>
	</tr>
	<tr>
		<td><a href="https://github.com/LCA-EET/LCA_Explicit">LCA_Explicit</a></td>
		<td>Yes</td>
		<td>Before</td>
	</tr>
	<tr>
		<td><a href="https://github.com/LCA-EET/Lichdom">Lichdom</a></td>
		<td>Yes</td>
		<td>After</td>
	</tr>
	<tr>
		<td>Shine on Caelar</td>
		<td>No</td>
		<td>N/A</td>
	</tr>
	<tr>
		<td>Skip Chateau Irenicus</td>
		<td>Yes</td>
		<td>Doesn't Matter</td>
	</tr>
	<tr>
		<td>Sword Coast Stratagems (SCS)</td>
		<td>Yes</td>
		<td>Doesn't Matter</td>
	</tr>
</table>

### Installation Instructions
<a name="a_installation_instructions"></a>
Unzip the LoveConquersAll_EE.zip archive, and place the LCA folder in your Game Directory (the directory where BG1, SoD, or BG2 is installed. If you plan to install the LCA_Explicit mod, that mod must be installed after this mod (LCA) is installed. Run the provided setup-LCA.exe to install the mod. 
> [!NOTE]
> For EET playthroughs, LCA must be installed in the BG2 directory and after EET core, but before EET_End. 

### EE Playthrough Parameters
<a name="a_ee_params"></a>
For non-EET playthroughs, you can adjust certain parameters to reflect actions that CHARNAME took in a prior game of the series. The parameters file is %MOD_FOLDER%/bg2/lca_bg2_params.txt. Open it and make any desired changes prior to installing the LCA mod.

### LCA Explicit Mod
<a name="a_lca_explicit"></a>
The LCA_Explicit mod adds several explicit, sexual encounters intended for mature audiences only. Current release is available here: <a href="https://github.com/LCA-EET/LCA_Explicit/releases">Releases: LCA_Explicit</a>.

### Banter Timers
<a name="a_banter"></a>
Corwin’s (and Caelar’s) scripts each have a banter timer. When the banter timer expires, the script will randomly select a character in your party to initiate a banter. Once a banter is initiated, the banter timer is reset. If there are no more banters available for that character, the script will randomly select another character and repeat the process. The process will continue until all available banters have been exhausted.
> [!NOTE]
> The interval for the banter timer is configurable with the use of the LCA Assistant. By default, it is set to two days.

### Using the Configuration Assistant
<a name="a_config"></a>
A configuration assistant has been provided to help you adjust certain characteristics of the mod. The assistant can be accessed by selecting the “LCA Assistant” special ability from CHARNAME’s special ability menu. The ability is granted to you automatically shortly after the start of your playthrough. 

### LCA Debugger
<a name="a_debugger"></a>
A debugging utility is provided to assist testers with debugging the mod. You can access the debugger through the LCA Assistant, or by, typing the following command into the debugging console:
CLUAConsole:CreateCreature("XALCDBG")
Talk to the creature that is spawned to access the debugging options. 
> [!WARNING]
> Use of the debugger is recommended for testing purposes only. Improper alterations to the game state may prevent you from completing your playthrough.

### Bug Reports
<a name="a_bugs"></a>
If you encounter any bugs or unexplained behavior while playing the mod, please report it to LCAMod@danielvalle.net. You can also reach me through Discord, as well as the Beamdog and G3 forums (see links below). Including your save game with the bug report is helpful, though optional. I’d also appreciate any feedback or constructive criticism.

### Cross Modding / Forking
Cross modding and forking are allowed, pursuant to the MIT license.

### Useful Links
<a name="a_useful_links"></a>

- Beamdog Forum Post: https://forums.beamdog.com/discussion/87688/announcing-love-conquers-all-lca-corwin-romance-mod-for-eet
- Discord Server: https://discord.gg/hwGf39gW9g
- Gibberlings 3 Forum post: https://www.gibberlings3.net/forums/topic/36832-announcing-love-conquers-all-lca-%E2%80%93-corwin-romance-mod-for-eet
- Love Conquers All (LCA) Github: https://github.com/LCA-EET/LCA
- LCA_Explicit Github: https://github.com/LCA-EET/LCA_Explicit

### Baldur's Gate 1 Changes
<a name="a_bg1"></a>

<details>
	<summary>Spoiler Warning! (Click to View)</summary>
	
#### Dialog Changes
Various dialogues were changed to explain what Captain Corwin and other high-ranking Flaming Fist personnel were doing during the events of BG1.

#### Corwin's Home
Speak to the crying girl in Southeast Baldur’s Gate. If you choose the appropriate dialog option, she will mark Corwin’s home on the map for you. Inside the home is an ammo belt and a Flaming Fist training manual. Be sure to check the fireplace as well.
		
</details>

### Siege of Dragonspear Changes
<a name="a_sod"></a>

<details>
	<summary>Spoiler Warning! (Click to View)</summary>

#### Tent Cutscene
In the Coast Way Crossing or the Siege Camp, talk to Thaird while Corwin is in your party. Choose to rest for the night. A special cutscene involving Corwin and CHARNAME will take place.

#### Archery Lesson
<div style="padding-left: 2em; text-indent: -2em;">
If you chose to help with the refugee situation (see below) while in Baldur’s Gate, Corwin will offer to give CHARNAME an archery lesson, if CHARNAME’s proficiency with the shortbow or longbow is greater than zero. She will offer CHARNAME this lesson if CHARNAME has a bow equipped, if CHARNAME is in the Coast Way Crossing, Troll Forest, or the Allied Siege camp, and she has spent the requisite amount of time in the party (at least eighteen hours). Be sure that Corwin and CHARNAME are both standing within sight of Quartermaster Belegarm, otherwise the lesson won’t trigger. The lesson, when completed, will give CHARNAME a permanent +1 boost to missile damage and missile THAC0.

You must do at least three of the following to qualify for the lesson:
- Killed Lon in the old Iron Throne Headquarters.
- Helped Garachen outside the Ducal Palace by providing him the food from Alyth.
- Dealt with the thieves outside of Three Old Kegs.
- Helped Teera pay her debt.
- Worked with Corwin to foil the plot by the nobles in Three Old Kegs to overthrow the Dukes.
- Helped Officer Vida by requesting reinforcements on her behalf.
</div>
#### Trial Cutscene
Depending on CHARNAME’s choices, Corwin will vouch for them during the trial in front of the Flaming Fist headquarters.

#### Escape from Avernus
If CHARNAME is male, and the LCA_Explicit mod is installed, a special cutscene will play after the escape from Avernus. Corwin must be in the party, and CHARNAME must be in a romance with her, in order for the cutscene to trigger.

#### Miscellaneous
A number of miscellaneous changes were made to dialogs, particularly the dialogs that occur after CHARNAME is arrested.

#### Corwin's Amulet
If CHARNAME was in a romance with Corwin at the end of SoD, and they were exiled from the city, Imoen will give CHARNAME a letter from Corwin that includes her amulet. The amulet grants some saving throw bonuses, but it can only be worn by CHARNAME.

</details>

### Shadows of Amn (BG2) Changes
<a name="a_bg2"></a>

<details>
	<summary>Spoiler Warning! (Click to View)</summary>

#### Adding Corwin to Your Party
To add Corwin to your party, you must first obtain the Soultaker Dagger from the Djinn in the Plane of Air in Irenicus’ stronghold. Once you have the dagger, speak to Brega in the Athkatla magistrate. He will offer to send the dagger, along with a letter , to Baldur’s Gate if you help him solve the case of the murders in the Bridge District. 

Once the letter is sent, a two-day timer will start. When the timer expires, you will see a cutscene that plays when you choose to sleep. The conclusion of the cutscene will trigger a four-hour timer, that, when expired, will show a second cutscene depicting the restoration of Skie Silvershield. The conclusion of the second cutscene starts the two-day timer that, when expired, will cause Corwin to appear in the Athkatla magistrate building (the same building where you meet Brega). CHARNAME will receive a dialogue prompt when this second timer has expired, so you will know when Corwin has arrived.

To experience the most content possible, it is recommended that you add Corwin as soon as you are able. Hold off on performing quests or even exploring Athkatla (beyond what’s necessary to solve the bridge murders) until Corwin is in your party.

Upon joining your party, if you still possess Corwin’s Amulet, she will take the amulet back and it will be converted to an amulet that can only be worn by Corwin. The saving throw bonuses will be removed, but while wearing the amulet Corwin will be protected from permanent death. The item description does not indicate as such, but it is one of the effects of the item.

#### Slaver Stockade
If Corwin is in your party when you rescue the children from the Slaver Stockade, it will set one of the conditions necessary for the Slaver Conspiracy quest during the Return to Baldur’s Gate.

</details>

### Throne of Bhaal Changes
<a name="a_tob"></a>

<details>
	<summary>Spoiler Warning! (Click to View)</summary>

</details>