module Brick
  # This class will contain the common characteristics of any Game Object
  class GameObject
    attr_reader :x, :y

    # position - is a vector to describe the position of the Game Object on the window
    # pos_y - is the Y position of the Game Object on the window
    # image - is a hash that contains the info for the Game Object image
    #   :source - is the file for the image
    #   :sprite_sheet(true, false) whether the image is a sprite sheet or not
    #   :tileable(true, false) whether the images will be tileable or not
    def initialize(position, image = {}, _options = {})
      @position = position
      @image = Image.new image
    end

    def update
      # This method should be implemented in the classes that inherit from it
    end

    def draw
      # This method should be implemented in the classes that inherit from it
    end

    def image
      # TODO: Implement giving an Image to the Game Object
    end
  end
end
