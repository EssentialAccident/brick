module Brick
  # This class wraps the Image class from Gosu to work with the project
  class Image < Gosu::Image
    PATH = 'assets/images/'.freeze

    def initialize(image, _options = {})
      # If the image is nt a sprite sheet
      super PATH + image[:source], image[:tileable] if image[:sprite_sheet] == false
    end

    def draw(position, z, factor = 1)
      super position.x, position.y, z, factor, factor
    end

    def draw_center(position, z, factor = 1)
      width = self.width * factor
      height = self.height * factor
      x = position.x - (width / 2)
      y = position.y - (height / 2)
      center = Vector2D.new(x, y)
      draw center, z, factor
    end
  end
end
