module ToyRobot
  class Robot
    def initialize(position:, table:)
      @current_position = position
      @table = table
    end

    def report
      current_position_result = @current_position.to_h

      return current_position_result[:error] if current_position_result.has_key?(:error)

      "Robot is currently at (#{current_position_result[:x]},#{current_position_result[:y]}) and it's facing #{current_position_result[:direction]}"
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
