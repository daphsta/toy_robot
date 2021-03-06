module ToyRobot
  class Move
    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def call
      new_position = send("to_#{position.direction.downcase}")

      return new_position if table.position_within_limit?(new_position)

      position
    end

    private

    attr_reader :position, :table

    def to_north
      Position.new(
        x: position.x,
        y: position.y + 1,
        direction: position.direction
      )
    end

    def to_east
      Position.new(
        x: position.x + 1,
        y: position.y,
        direction: position.direction
      )
    end

    def to_south
      Position.new(
        x: position.x,
        y: position.y - 1,
        direction: position.direction
      )
    end

    def to_west
      Position.new(
        x: position.x - 1,
        y: position.y,
        direction: position.direction
      )
    end
  end
end
