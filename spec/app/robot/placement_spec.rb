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

    it 'is placed' do
      @toy_robot.place( "1,2,north" )
      expect(@toy_robot.is_placed?).to be_truthy
    end

    it 'is not placed' do
      expect(@toy_robot.is_placed?).to be_falsey
    end
  end

  describe 'report' do
    it 'gets current position' do
      @toy_robot.place("4,3,north")
      expect(@toy_robot.report).to eq("4,3,NORTH")
    end
  end
end
