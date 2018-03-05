module ToyRobot
  class CLI
    def initialize(command_parser, commands)
      @command_parser = command_parser
      @commands = commands
    end

    def call
      File.read(commands).split("\n").each do |cmd|
        command_parser.call(cmd)
      end
    end

    private

    attr_reader :command_parser, :commands
  end
end
