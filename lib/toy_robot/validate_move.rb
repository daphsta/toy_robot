module ToyRobot
  class ValidateMove
    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def call
      (0..table.height).cover?(potential_position.y) && (0..table.width).cover?(potential_position.x)
    end

    private

    attr_reader :position, :table

    def potential_position
      new_position = Position.new(x: position.x, y: position.y, direction: position.direction)
      Move.new(position: new_position).call
    end
  end
end
