Crafty(JS)
==========

Homepage: http://craftyjs.com/
RPG Tutorial: http://buildnewgames.com/introduction-to-crafty/


Files
=====

index.html: The main console view where Crafty is rendering

assets/: Directory for media files and other binary data
lib/: 3rd party js files
src/: a directory for custom code

### Obtain CraftyJS
wget http://craftyjs.com/release/0.5.3/crafty.js 
into src/

### Obtain other assets
http://buildnewgames.com/assets/article//introduction-to-crafty/crafty_bng_tut_assets.zip
unzip to assets/


## index.html
<!DOCTYPE html>
<html>
	<head>
  	<script src="lib/crafty.js"></script>
	  <script src="src/game.js"></script>
	  <script>
	    window.addEventListener('load', Game.start);
	  </script>
	</head>
	<body>
	</body>
</html>

## src/game.js
		Game = {
	  	// Initialize and start our game
	  	start: function() {
						     // Start crafty and set a background color so that we can see it's working
						     Crafty.init(480, 320);
								 Crafty.background('green');
								}
			}
	
* do this in javascript first, then coffeescript

Rails Organization
==================
http://stackoverflow.com/questions/6287440/rails-3-good-rule-of-thumb-for-where-to-put-javascript

* app/assets/javascripts/*.js: application specific code (game.js)
	* application.js: 
		* main mainifest of js files
	* use subfolder organization:	app/assets/javascripts/game/*.js
		* ensure they are loaded
* lib/assets/javascripts/*.js: 1st party reusable functions
* vendor/assets/javascripts/*.js: 3rd party javascripts (crafty.js)

## Steps
* get javascript file to vendor/assets/javascripts/
	* does it need to be required?
* get zip file, unzip to app/assets/game/
	* does it need to be required?

* follow tutorial
	* index.html.erb
	* rails generate controller Game index

