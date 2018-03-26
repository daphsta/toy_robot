module ToyRobot
  class Position
    COMPASS = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze

    attr_accessor :x, :y, :direction

    def initialize(x:, y:, direction:)
      @x = x
      @y = y
      @direction = direction
    end

    def to_h
      {
        x: x,
        y: y,
        direction: direction
      }
    end
  end
end
