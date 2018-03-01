module ToyRobot
  class Move
    def initialize(position:)
      @position = position
    end

    def call
      send("to_#{position.direction.downcase}")
    end

    private

    attr_reader :position

    def to_north
      position.y += 1
      position
    end

    def to_east
      position.x += 1
      position
    end

    def to_south
      position.y -= 1
      position
    end

    def to_west
      position.x -= 1
      position
    end
  end
end
