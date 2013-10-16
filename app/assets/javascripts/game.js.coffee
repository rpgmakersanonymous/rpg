# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Initialize and start our game
window.game ?= {}

window.game.start = -> 
  # Start crafty and set a background color so that we can see it's working
  Crafty.init 480, 320
  Crafty.background "green"
