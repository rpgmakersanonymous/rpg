Crafty(JS)
==========

* [Homepage](http://craftyjs.com/)
* [RPG Tutorial](http://buildnewgames.com/introduction-to-crafty/)

This guide clarifies the differences between the tutorial organization and the organization of files within Rails.

### Tutorial (non-rails) Setup

* **lib/** 3rd party js files
	* **crafty.js** The Crafty Engine 
		* ```wget http://craftyjs.com/release/0.5.3/crafty.js```
* **index.html** The main console where Crafty is rendering
	* open this file in your browser to view game
* **src/** Directory for custom game related code (your engine)
	* **game.js** Your Game Logic
* **assets/** Directory for media files and other binary data
	* Get [Tutorial Zip](http://buildnewgames.com/assets/article//introduction-to-crafty/crafty_bng_tut_assets.zip) and unzip it here


Rails Organization
==================

### Game Startup
```rails server```

### Generated Controller + View
```rails generate controller Game index```

* index.html => app/views/game/index.html.erb
* src/game.js => app/assets/javascripts/game.js

### Javascript
[rule of thumb for javascript](http://stackoverflow.com/questions/6287440/rails-3-good-rule-of-thumb-for-where-to-put-javascript)

* **vendor/assets/javascripts/*.js** 3rd party javascripts 
	* **crafty.js** game engine goes here
* **lib/assets/javascripts/*.js** 1st party reusable functions
* **app/assets/javascripts/*.js** application specific code
	* **application.js** 
		* //= require crafty # loads crafty game engine
	* **game.js**
		* the main javascript driver
		* corresponds to Game controller
	* **game/*.js**
		* for javascript game logic organization
		* prevent cluttering the app/assets/javascripts directory

#### Javascript vs Coffeescript
* tutorial written in javascript
* coffeescript preferred 

### Other Game Assets
* pictures and sounds
* assets/* => app/assets/game/*
	* [Tutorial Zip](http://buildnewgames.com/assets/article//introduction-to-crafty/crafty_bng_tut_assets.zip)
