# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Initialize and start our game
window.game ?= {}

 # This defines our grid's size and the size of each of its tiles
window.game =
  map_grid:
    width: 24
    height: 16
    tile:
      width: 16
      height: 16

# The total width of the game screen. Since our grid takes up the entire screen
#  this is just the width of a tile times the width of the grid
window.game.width = ->
    @map_grid.width * @map_grid.tile.width

# The total height of the game screen. Since our grid takes up the entire screen
#  this is just the height of a tile times the height of the grid
window.game.height = ->
    @map_grid.height * @map_grid.tile.height

# Initialize and start our game
window.game.start = ->
    # Start crafty and set a background color so that we can see it's working
    Crafty.init game.width(), game.height()
    Crafty.background "rgb(249, 223, 125)"

    # Place a tree at every edge square on our grid of 16x16 tiles
    for x in [0..game.map_grid.width] by 1
      for y in [0..game.map_grid.height] by 1
        at_edge = x is 0 or x is game.map_grid.width - 1 or y is 0 or y is game.map_grid.height - 1
        if at_edge
          # Place a tree entity at the current tile
          Crafty.e("2D, Canvas, Color").attr(
            x: x * game.map_grid.tile.width
            y: y * game.map_grid.tile.height
            w: game.map_grid.tile.width
            h: game.map_grid.tile.height
          ).color "rgb(20, 125, 40)"
        else if Math.random() < 0.06
          # Place a bush entity at the current tile
          Crafty.e("2D, Canvas, Color").attr(
            x: x * game.map_grid.tile.width
            y: y * game.map_grid.tile.height
            w: game.map_grid.tile.width
            h: game.map_grid.tile.height
          ).color "rgb(20, 185, 40)"
        y++
      x++
