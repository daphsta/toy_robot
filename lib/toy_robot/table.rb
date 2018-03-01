module ToyRobot
  class Table
    attr_reader :height, :width

    def initialize(height: 5, width: 5)
      @height = height
      @width = width
    end
  end
end
