module Brick
  # Gems
  require 'gosu'

  # Local dependencies
  require_relative 'bin/game_window'

  brick_game = GameWindow.new
  brick_game.show
end
