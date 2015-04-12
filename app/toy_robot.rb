require File.expand_path('../robot/movement', __FILE__)
require File.expand_path('../robot/placement', __FILE__)
require File.expand_path('../table', __FILE__)

class ToyRobot
  include Robot::Placement
  include Robot::Movement
  
  def initialize
    @table = Table.new
  end

  def move
  end

  def turn(direction)
  end
end
