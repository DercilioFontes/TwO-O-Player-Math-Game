require './game'

# 2 players take turns to answer simple math addition problems
# The game doesn’t end until one of the players loses all their lives. At this point, the game announces who won and what the other player’s score is.

game = Game.new

game.play