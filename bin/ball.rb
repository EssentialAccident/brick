module Brick
  # This class handles the logic of the ball
  class Ball < GameObject
    def initialize(position)
      super position,
            { source: 'ball.png', tileable: false, sprite_sheet: false }
      @radius = 16.0
      @factor = (@radius * 2) / 128.0
      @velocity = Vector2D.new rand(-1.0...1.0), rand(-0.9...-0.2)
    end

    def update(window)
      future_position = @position.add_vector(@velocity.multiply_scalar(Brick::SPEED))
      # Checking wall collisions
      wall_collision future_position, window

      @position = @position.add_vector(@velocity.multiply_scalar(Brick::SPEED))
    end

    def draw
      @image.draw_center @position, 10, @factor
    end

    def wall_collision(position, window)
      # Checking a collision with left wall
      @velocity = Vector2D.new((@velocity.x * -1), @velocity.y) if (position.x - @radius).negative?
      # Checking collision with right wall
      @velocity = Vector2D.new((@velocity.x * -1), @velocity.y) if (position.x + @radius) > window.width
      # Checking a collision wiht top wall
      @velocity = Vector2D.new(@velocity.x, (@velocity.y * -1)) if (position.y - @radius).negative?
    end
  end
end
