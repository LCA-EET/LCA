BEGIN ~XACAELAB~


CHAIN IF ~
	Global("XA_CaelarSarevokBanter", "GLOBAL", 1)
~ THEN SAREV25J XA_CaelarSarevokBanter1Chain
	@0 /*~It's interesting isn't it?~*/
	DO ~
		SetGlobal("XA_CaelarSarevokBanter", "GLOBAL", 2)
	~
	== XACAELAB
	@1 /*~Pardon?~*/
	== SAREV25J
	@2 /*~<CHARNAME>, the others... everyone for that matter is so enamoured you, our 'Shining Lady'.~*/
	= @3 /*~What is it about you that causes them to overlook that you're responsible for the deaths of countless innocents? More blood is on your hands than even the worst of the Bhaalspawn, including myself.~*/
	== XACAELAB
	@4 /*~I cannot change the past. All I can do is hope that my actions, from this point forward, serve the greater good.~*/
	== SAREV25J
	@5 /*~The greater good, or your own good? If you think that helping <CHARNAME> will spare you from the gallows, you're mistaken.~*/
	== XACAELAB
	@6 /*~Enough. If I were you, I'd be more concerned with my own salvation.~  */
	== SAREV25J
	@7 /*~Hmph.~*/
EXIT

CHAIN IF ~
	Global("XA_CaelarKeldornBanter", "GLOBAL", 1)
~ THEN KELDORJ XA_CaelarKeldornBanter1Chain
	@8 /* ~Lady Argent, I never dreamed that I would one day fight alongside an aasimar. It's been quite an honor.~ */
	DO ~
		SetGlobal("XA_CaelarKeldornBanter", "GLOBAL", 2)
	~
	== XACAELAB
	@9 /* ~The honor is mine. <CHARNAME> chose <PRO_HISHER> companions well, Sir Keldorn.~*/
	== KELDORJ
	@11 /*~Perhaps when this quest is over, you would accompany me back to the Order of the Radiant Heart? Our knights and priests would benefit from the wisdom you'd impart to them.~*/
	== XACAELAB
	@12 /* ~Wisdom? I appreciate that you hold me in such regard, but in order to share something one must first posess it. My foolishness led to the deaths of hundreds if not thousands, and very nearly resulted in the legions of Avernus pouring in to the Material Plane.~*/
	== KELDORJ
	@13 /* ~I understand your apprehension. My order would still be well served in learning that even the most righteous can falter from time to time. What matters not is our mistakes, but rather what we do to right the wrongs that have been committed.~*/
	== XACAELAB
	@14 /* ~Thank you... I will take some time to consider your offer. Come. We are called to duty.~ */
EXIT

CHAIN IF ~
	Global("XA_CaelarCorwinBanter", "GLOBAL", 1)
~ THEN XACAELAB XA_CaelarCorwinBanter1Chain
	@15 /*~I can feel you staring at me. Is something on your mind, Major?~*/
	DO ~
		SetGlobal("XA_CaelarCorwinBanter", "GLOBAL", 2)
	~
	== XACORWIB
	@16 /* ~The Fist lost a lot of good people fighting against your crusade. Mothers, fathers, sons and daughters, many of whom I considered friends.~*/
	== XACAELAB
	@17 /* ~I understand, and I'm sorry. There's nothing I can do, however.~*/
	== XACORWIB
	@18 /*~I thought I'd hate you, but... I don't. The fact that you're here, helping <CHARNAME> and I with our mission is the reason why.~*/
	= @19 /* ~If we succeed, we'll vouch for your actions after your release from Avernus. The Dukes might be open to sparing your life, especially when they learn of what you've already suffered. You'd still have to worry about the Waterdhavian and Daggerford authorities, however.~*/
	== XACAELAB
	@20 /* ~I appreciate that Major, and I want to assure you that when the time comes, I'll accept whatever justice awaits me. Let's move out.~ */
EXIT

CHAIN IF ~
	Global("XA_CaelarRasaadBanter", "GLOBAL", 1)
~ THEN RASAADJ XA_CaelarRasaadBanter1Chain
	@21 /*~Caelar? Your hand is trembling — is something wrong?~*/
	DO ~
		SetGlobal("XA_CaelarRasaadBanter", "GLOBAL", 2)
	~
	== XACAELAB
	@22 /*~It's nothing, Rasaad. I was just remembering...~*/ 
	== RASAADJ
	@23 /*~Avernus?~*/
	== XACAELAB
	@24 /*~Yes. I... I can still feel the heat of that place... the screams... the smell of sulfur, and his... his touch on my skin.~*/
	= @25 /*~(She shudders.)~*/
	== RASAADJ
	@26 /*~Few have journeyed to one of the Nine Hells and returned. Fewer have been subjected to the kind of abuse that you endured. People that have suffered through traumatic experiences like you have often benefit from discussing their experience. When you are ready, I'll be there for you.~ */
	== XACAELAB
	@27 /*~Thank you, Rasaad. I just need more time.~*/
	== RASAADJ
	@28 /*~Of course. Come — the others are waiting.~ */
EXIT

CHAIN IF ~
	Global("XA_CaelarJaheiraBanter", "GLOBAL", 1)
~ THEN XACAELAB XA_CaelarJaheiraBanter1Chain
	@29 /*~Jaheria... a moment of your time?~*/
	== JAHEIRAJ
	@30 /*~Of course, Lady Argent. What is it?~*/
	== XACAELAB
	@31 /*~I learned from the others that you recently lost your husband, Khalid. Is he the very same Khalid that led the defense of Bridgefort?~*/
	== JAHEIRAJ
	@32 /*~Yes... I miss him dearly.~*/
	== XACAELAB
	@33 /*~He was a great warrior, with a good heart. My lieutenants spoke highly of him... I recall hearing how he would treat our captured crusaders with kindness and mercy... I'm sorry that your last weeks together had to be spent on the battlefield.~*/
	== JAHEIRAJ
	@34 /*~Khalid and I were always on the road. Often, we'd talk about settling down, but... we were Harpers, you see, and we were sent wherever we were needed. We knew the risks, but nothing could've prepared me for his loss. It does please me to know that he was so highly regarded, not just by his friends and allies, but also his crusader adversaries.~*/
	== XACAELAB
	@35 /*~Indeed... take solace in that you will one day be reunited.~*/
	== JAHEIRAJ
	@36 /* ~I do. Thank you, Caelar.~ */
EXIT

CHAIN IF ~
	Global("XA_CaelarMazzyBanter", "GLOBAL", 1)
~ THEN MAZZYJ XA_CaelarMazzyBanter1Chain
	@55 /*~Lady Argent, do you have a moment?~*/
	DO ~
		SetGlobal("XA_CaelarMazzyBanter", "GLOBAL", 2)
	~
	== XACAELAB
	@37 /*~Yes, Mazzy. What can I do for you?~ */
	== MAZZYJ
	@38 /* ~A question, if I may. I did not bear witness to your crusade, though I hear that you were able to unite a mix of different races to your cause. Every army that I've seen was homogenous. How did you get men, elves and dwarves to fight under the same banner?~*/
	== XACAELAB
	@39 /* ~Not just men, elves and dwarves. Gnomes, drow, half-orcs, hobgoblins... even trolls.~*/
	== MAZZYJ
	@40 /* ~How did you do it?~*/
	== XACAELAB
	@41 /* ~By focusing not on what divides us, but rather, what unites us. The people that joined the crusade were united by their loss. They had all lost someone or something that was dear to them. The crusade filled them with hope that what was lost could be recovered.~*/
	== MAZZYJ
	@42 /* ~I see... but, in the case of the crusade, it was a false hope.~*/
	== XACAELAB
	@43 /*~I... I... I believed in what we were doing. The soldiers believed in me. I led them astray... all of them. All those people...~ */
	== MAZZYJ
	@44 /* ~I didn't mean to stir up bad memories — I just found it remarkable that you were able to bring so many people together.~*/
	== XACAELAB
	@45 /* ~Yes... I hope that the people can be united once again, this time by a leader and a cause that that is worthy of them. Let's go.~ */
EXIT

CHAIN IF ~
	Global("XA_CaelarDornBanter", "GLOBAL", 1)
~ THEN DORNJ XA_CaelarDornBanter1Chain
	@56 /*~Caelar...~*/
	DO ~
		SetGlobal("XA_CaelarDornBanter", "GLOBAL", 2)
	~
	== XACAELAB
	@46 /*~Out with it, blackguard.~*/
	== DORNJ
	@47 /*~My master has a proposal—~*/
	== XACAELAB
	@48 /*~I've no interest in becoming a slave to a demon.~*/
	== DORNJ
	@49 /*~You haven't even heard the offer.~*/
	== XACAELAB
	@50 /*~I don't need to. I want nothing from you, or your master, other than to keep your distance.~*/
	== DORNJ
	@51 /*~Your powers as an aasimar, augmented by the gifts of the dark... you'd be unstoppable! Immortal, even! You'd be a fool to turn it down!~*/
	== XACAELAB
	@52 /*~Then I am a fool.~*/
	== DORNJ
	@53 /*~Your death will come one day, aasimar. Where is it do you think that you will go? Back to Avernus no doubt, to pay for the many crimes committed on your behalf. Is that the fate you really want?~*/
	== XACAELAB
	@54 /*~Begone! Try and tempt me again, slave, and you and I will have more than words!~*/
EXIT
