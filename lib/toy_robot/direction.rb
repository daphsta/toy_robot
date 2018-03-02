module ToyRobot
  class Direction
    COMPASS = ['NORTH', 'EAST', 'SOUTH', 'WEST']

    attr_reader :position

    def initialize(position:)
      @position = position
    end

    def turn_right
      return set_position_direction('') if invalid_direction?
      return set_position_direction(COMPASS[0]) if current_direction_index == end_of_compass_index

      set_position_direction(COMPASS[current_direction_index + 1])
    end

    def turn_left
      return set_position_direction('') if invalid_direction?
      return set_position_direction(COMPASS[end_of_compass_index]) if current_direction_index == 0

      set_position_direction(COMPASS[current_direction_index - 1])
    end

    private

    def current_direction_index
      COMPASS.index(position.direction)
    end

    def end_of_compass_index
      COMPASS.length - 1
    end

    def set_position_direction(new_direction)
      position.direction = new_direction
    end

    def invalid_direction?
      !COMPASS.include?(position.direction)
    end
  end
end
