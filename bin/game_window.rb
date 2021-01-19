module Brick
  SPEED = 5.0
  FACTOR = 0.25
  # This class manages the window and the loop of the game
  class GameWindow < Gosu::Window
    def initialize(width = 1024, height = 900)
      # Initializing the window
      super width, height, false
      self.caption = 'Brick Game'

      # Creating the ball
      @ball = Ball.new Vector2D.new(self.width / 2, self.height * 0.8)
    end

    def update
      @ball.update self
      # For now at the moment of Game Over the window jst will close
      close if @ball.game_over? self
    end

    def draw
      @ball.draw
    end

    def button_down(id)
      case id
      # Closes the game when the player hits the Escape key
      when Gosu::KB_ESCAPE
        close
      end
    end

    # The paddle can be controlled with the mouse
    def need_cursor?
      true
    end
  end
end
