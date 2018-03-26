module ToyRobot
  class Robot
    def initialize(position:, table:)
      @current_position = position
      @table = table
    end

    def report
      @current_position.to_h
    end

    def place
      Place.new(position: @current_position, table: table).call
    end

    def move
      @current_position = Move.new(position: @current_position, table: table).call
    end

    def turn_left
      @current_position = TurnLeft.new(position: @current_position).call
    end

    def turn_right
      @current_position = TurnRight.new(position: @current_position).call
    end

    private

    attr_reader :table
  end
end
