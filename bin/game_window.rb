module Brick
  # This class manages the window and the loop of the game
  class GameWindow < Gosu::Window
    def initialize(width = 600, height = 900)
      super width, height, false
      self.caption = 'Brick Game'
    end

    def update; end

    def draw; end

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
