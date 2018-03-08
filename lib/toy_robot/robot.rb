module ToyRobot
  class Robot
    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def report
      position.to_h
    end

    def move
      move_to_position if valid_move?
    end

    def turn_left
      Direction.new(position: position).turn_left
    end

    def turn_right
      Direction.new(position: position).turn_right
    end

    private

    attr_reader :position, :table

    def move_to_position
      Move.new(position: position).call
    end

    def valid_move?
      ValidateMove.new(position: position, table: table).call
    end
  end
end
