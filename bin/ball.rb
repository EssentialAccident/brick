module Brick
  # This class handles the logic of the ball
  class Ball < GameObject
    def initialize(position)
      super position,
            { source: 'ball.png', tileable: false, sprite_sheet: false }
      @radius = 32
      @factor = @radius.to_f / 128.0
    end

    def draw
      @image.draw_center @position, 10, @factor
    end
  end
end
