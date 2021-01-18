module Brick
  # This class will contain the common characteristics of any Game Object
  class GameObject
    attr_reader :x, :y

    def initialize(pos_x, pos_y, _options = {})
      @x = pos_x
      @y = pos_y
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
