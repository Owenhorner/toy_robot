require File.expand_path('../robot/movement', __FILE__)
require File.expand_path('../robot/placement', __FILE__)
require File.expand_path('../robot/report', __FILE__)
require File.expand_path('../table', __FILE__)

class ToyRobot
  include Robot::Placement
  include Robot::Movement
  include Robot::Report
  def initialize
    @table = Table.new
  end

  def place(coords_and_direction)
    x, y, direction = coords_and_direction.split(',')
  end

  def move
  end

  def turn(direction)
  end

  def report
  end
end
