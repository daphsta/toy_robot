module ToyRobot
  class CommandParser
    class Error < StandardError; end

    def call(input)
      command, _, arg = input.strip.partition(' ')

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

      position = Position.new(x: coord[0].to_i, y: coord[1].to_i, direction: coord[2])
      @robot = Robot.new(position: position, table: Table.new)

      @robot.place
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
      puts robot.report
    end
  end
end
