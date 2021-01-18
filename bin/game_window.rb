module Brick
  # This class manages the window and the loop of the game
  class GameWindow < Gosu::Window
    def initialize(width = 600, height = 900)
      # Initializing the window
      super width, height, false
      self.caption = 'Brick Game'

      # Creating the ball
      @ball = Ball.new Vector2D.new(self.width / 2, self.height / 2)
    end

    def update
      @ball.update
    end

    def draw
      @ball.draw
    end

    def button_down(id)
      case id
      # Closes the game when the player hits the Escape key
      when Gosu::Kb_Escape
        close
      end
    end

    # The paddle can be controlled with the mouse
    def need_cursor?
      true
    end
  end
end
