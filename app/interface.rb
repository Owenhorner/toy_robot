require File.expand_path('../toy_robot', __FILE__)

#Interface class for toy robot simulator
class Interface
  #regular expression matcher for detecting correct toy robot commands
  COMMAND_MATCHER = /^(move|left|right|report|exit|place)(| [0-5],[0-5],[north|south|east|west]{4,5})$/i
  def initialize
    @toy_robot = ToyRobot.new
  end

  #prints user instructions then waits for user input
  def begin
    puts instruction

    while read_command(gets.chomp)
    end
  end

  #@return the user instructions on how to use toy robot
  def instruction
    %{PLACE X,Y,F to begin,
RIGHT to turn your robot RIGHT,
LEFT to turn your robot LEFT,
MOVE to move your robot in the direction is facing,
REPORT to get the co-ordinates of your robot,
EXIT to turn off your robot.}
  end

  #@param command [String] user input
  #@return [Boolean] an indicator to continue user input
  def read_command(command)
    if is_valid?(command)
      command, place_arguments = symbolize(command)
      case command
      when :place
        @toy_robot.place(place_arguments)
      when :move
        @toy_robot.move if @toy_robot.is_placed?
      when :left, :right
        @toy_robot.turn(command) if @toy_robot.is_placed?
      when :report
        puts @toy_robot.report if @toy_robot.is_placed?
      when :exit
        return false
      end
    else
      puts 'Invalid Command'
    end
    true
  end

  private

  #Symbolize User input
  #@param command [String] user input
  #@return [Array] symbolized command and string of placing arguments
  def symbolize(command)
    command, place_arguments = command.match(COMMAND_MATCHER).captures
    place_arguments.strip!
    [command.downcase.to_sym, place_arguments]
  end

  #Checks validity of command
  #@param command [String] user input
  #@return [Boolean] checks regex is command is valid
  def is_valid?(command)
    command.scan(COMMAND_MATCHER).any?
  end
end
