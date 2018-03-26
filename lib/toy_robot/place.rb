module ToyRobot
  class Place
    attr_reader :position

    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def call
      return position if table.position_within_limit?(position)

      position.error = 'Place is invalid'
    end
  end
end
