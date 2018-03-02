module ToyRobot
  class CommandParser
    class Error < StandardError; end

    def initialize(robot = Robot.new(position: Position.new, table: Table.new))
      @robot = robot
    end

    def call(input)
      command, _, arg = input.partition(' ')

      case command
      when /PLACE/ then place(arg)
      when /MOVE/ then move
      when /LEFT/ then left
      when /RIGHT/ then right
      when /REPORT/ then report
      else
        raise Error, 'Unknown robot command'
      end
    end

    private

    attr_reader :robot

    def place(arg)
      coord = arg.split(',')

      robot.position.x = coord[0]
      robot.position.y = coord[1]
      robot.position.direction = coord[2]
    end

    def move
      robot.move
    end

    def left
      robot.turn_left
    end

    def right
      robot.turn_right
    end

    def report
      robot.report
    end
  end
end
