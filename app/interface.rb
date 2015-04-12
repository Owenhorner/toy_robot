require File.expand_path('../toy_robot', __FILE__)

class Interface
  COMMAND_MATCHER = /^(move|left|right|report|exit|place)(| [0-5],[0-5],[north|south|east|west]{4,5})$/i
  def initialize
    @toy_robot = ToyRobot.new
  end

  def begin
    puts instruction

    while read_command(gets.chomp)
    end
  end

  def instruction
    %{PLACE X,Y,F to begin,
RIGHT to turn your robot RIGHT,
LEFT to turn your robot LEFT,
MOVE to move your robot in the direction is facing,
REPORT to get the co-ordinates of your robot,
EXIT to turn off your robot.}
  end

  def read_command(command)
    if is_valid?(command)
      command, place_arguments = symbolize(command)
      case command
      when :place
        @toy_robot.place(place_arguments)
      when :move
        @toy_robot.move
      when :left, :right
        @toy_robot.turn(command)
      when :report
        puts @toy_robot.report
      when :exit
        return false
      end
    else
      puts 'Invalid Command'
    end
    true
  end

  private

  def symbolize(command)
    command, place_arguments = command.match(COMMAND_MATCHER).captures
    place_arguments.strip!
    [command.downcase.to_sym, place_arguments]
  end

  def is_valid?(command)
    command.scan(COMMAND_MATCHER).any?
  end
end
