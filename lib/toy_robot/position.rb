module ToyRobot
  class Position
    COMPASS = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze

    attr_accessor :x, :y, :direction, :error

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
      }.merge(error_hash)
    end

    private

    def error_hash
      return {} if error.nil?

      { error: error }
    end
  end
end
