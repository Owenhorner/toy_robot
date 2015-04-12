require 'spec_helper'

RSpec.describe Robot::Placement do
  before do
    @toy_robot = ToyRobot.new
  end

  describe 'robot placement' do
    it 'valid co-ordinates' do
      expect(@toy_robot.place( "1,2,north" )).to be_truthy
    end

    it 'invalid co-ordinates' do
      expect(@toy_robot.place( "6,6,north" )).to be_falsey
    end
  end
end
