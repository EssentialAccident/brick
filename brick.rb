module Brick
  # Gems
  require 'gosu'
  require 'vector2d'

  # Local dependencies
  require_relative 'bin/game_window'
  require_relative 'bin/game_object'
  require_relative 'bin/images'

  require_relative 'bin/ball'

  brick_game = GameWindow.new
  brick_game.show
end
