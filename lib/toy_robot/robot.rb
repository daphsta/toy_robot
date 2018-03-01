module ToyRobot
  class Robot
    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def report
      position.to_s
    end

    def move
      Move.new(position: position).call if ValidateMove.new(position: position, table: table).call
    end

    def turn_left
      Direction.new(position: position).turn_left
    end

    def turn_right
      Direction.new(position: position).turn_right
    end

    private

    attr_reader :position, :table
  end
end
