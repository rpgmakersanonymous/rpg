
Combat (move to game mechanics)
======
The focus of this game is to provide a deep strategy, rich, combat experience.
Every character is a magic user to some degree.
Combinations of a characters moves are allowed.
Combinations between characters are the most devastating.

### Action Queue, Turn Based Combat
* Each character in combat has an action queue
* Actions queues are private unless a Predict skill is taken
* Action queues populate automatically with defaults
* Users insert better strategy
* There is also an initiative order
* Turns can be Fully TurnBased or Semi-Real Time (3-10 seconds per action)

### Attacks/Defenses:
* make sure to work with your squad to make efficient maneuvers against opponents
* separate a focus-pool between 'attack', 'defense', 'counter'

* allocate willpower and energy pts to special attacks
	* supplement them with focus-pool additions

### Willpower:
* You only have so much willpower to aid you in combat, use it wisely

### Natural Energy
* The world around you is like a small battery you can tap
* If you capture key energy flows on the battle field you will gain a distinct advantage
* If your opponent does you will be at a distinct disadvantage.
* Your movement, and that of your squad, is a combat meta game crucial to winning

General Overhead Map
====================
View similar to pokemon gameboy or classic zelda games


Animation:
==========
* Comic books, manga, anime are all popular
	* they are all minimally animated
* Construct a collaborative turn based video game based on a table top rpg.
* Simplistic graphics presented in comic book 'stills'
	* 'stills' can be semi moving scenes
		* planned character locations, effects:
			* example: fireball graphic
* For all 'engine' information:
	* emphasis is on exposing all the statistics to the characters controller
* Detailed magic system
* Detailed combo system
* Complex, GO-like movement meta game
	* people draw energy from the surrounding environment
	* energy channels can be claimed/blocked/rerouted
	* provides an 'energy' edge in battle

Magic:
======

You have a willpower pool that naturally regenerates between battles and overnight.
* part of the Priests belief in prayer before bed
You have a willpower reserve of hard to regenerate points
* these can be used to provide imense bursts to your current willpower pool
* regenerate with weeks of rest, or great acts in support of your commitment

Spell Categories:
=================
Physical:
	Strenth
	Dexterity
	Resist
  Forsee	

Force Attack
Energy Trap
Predict
Empower
Cloak (fire,lightning
Primary Goal
============

* Fast, iterative releases.

* Get things to work.

* Build a rich game over time.

Required Components
===================

### CraftyJS
[CRAFTY.md]

### Mapping:
* 2d visualization of grid
* character heads
* trees, walls, doors, paths
* show energy flows
* show naration/story line in subtitles
* allow a movement path to be selected
* allow a movement point to be set as an action point

### Person model
* attributes:
	* strenth
	* dexterity
	* intelligence
	* willpower
* gear:
	* unlimited bag
* equipped items:
	* weapon
	* armour

### Control Panel:
* below the map
* allows action/item handling

### music:
* ask for a low key theme # low/frequent
* ask for a combat theme # medium/occasionally
* ask for a key scene theme # high/rarely

### Engine:
* Person class
* what attributes does a person have minimally
* what is a 'turn'
	* how and where can you move
	* when and what actions can you take

### Turn Based == Restful
* dont worry about real time
* dont worry about default actions

### Scripting format for interactions
* with a supporting AI for combat

### Plot
* survive, band together
* resist The Church
* seek Hermits for training
  * not all are friendly
* follow your conviction

### Combat
* a persons movement is like 'snake' in the energy game
* a person sets a direction of focus for attack/defense
	* range + degree of coverage are inversly proportional
	* long+limited range to protect against 1 archer
	* touch range for 360 degree martial arts coverage of self
	* can be: protect <other>
* a person has a general combat pool
	* allocates between:
		* target opponent offensively
		* target opponent defensively
		* protect self-or-ally offensively
		* protect self-or-ally defensively
* give details combat analysis

### Radial mechanics
* consider a push:
	* a short push could push all enemys around the caster back a few feet
	  * distance=1;strength=3;scope=8;
	* a long push to knock over an archer
		* distance=8;strength=3;scope=1;
	* a mage could sheild a sword strike with their hands
		* distance=0;strength=11;scope=1;
* distance:
	* number of squares away, 0 is self
* strength:
	* damage modifier
* scope:
	* how many blocks, around the casters square, are affected

### Magic
* willpower pool
* natural energy + flows
* limited spells, attack, defense

##### spells
* shield # magical sheild set like view, low radius more degrees, or more wall but one direction
	* protect 1 person completely or many people partially
* empower: magical damage added to weapon
* flicker: more evasive, harder to hit
* fleet: movement greatly increased
* push/pull: linear projections of willpower as force
* claim: enforce your will on the world/disrupt someone elses energy absorbtion
	* land claimed by 'snake' is claimed with a strength related to duration, and distance from owner
	* there has to be a straight line between owner and space owned without enemy interuption
	* 'claimed' land gets a higher strength from your investment
	* if you cross claimed land, you can break it, or traverse and lose connection


### Commitments
* choose a 'commitment' (mission) at the start
* when you accomplish it
	* select a permanent commitment
	* select a new mission commitment