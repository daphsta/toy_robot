module ToyRobot
  class TurnRight
    attr_reader :position

    def initialize(position:)
      @position = position
    end

    def call
      return Position.new(
        x: position.x,
        y: position.y,
        direction: '') if invalid_direction?

      Position.new(
        x: position.x,
        y: position.y,
        direction: Position::COMPASS[new_index]
      )
    end

    private

    def new_index
      (Position::COMPASS.index(position.direction) + 1) % 4
    end

    def invalid_direction?
      !Position::COMPASS.include?(position.direction)
    end
  end
end
