require File.expand_path('../robot/movement', __FILE__)
require File.expand_path('../robot/placement', __FILE__)
require File.expand_path('../table', __FILE__)

#Toy Robot class responsible for complete robot behaiviour
class ToyRobot
  include Robot::Placement
  include Robot::Movement

  #return [Object] new instance of table 
  def initialize
    @table = Table.new
  end
end
