module ToyRobot
  class Table
    attr_reader :height, :width

    def initialize(height: 5, width: 5)
      @height = height
      @width = width
    end

    def position_within_limit?(position)
      (0...height).cover?(position.y) && (0...width).cover?(position.x)
    end
  end
end
