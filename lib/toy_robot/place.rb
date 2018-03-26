module ToyRobot
  class Place
    attr_reader :position

    def initialize(position:, table:)
      @position = position
      @table = table
    end

    def call
    end
  end
end
