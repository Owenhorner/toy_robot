require 'spec_helper'

RSpec.describe Robot::Movement do
  before do
    @toy_robot = ToyRobot.new
    @toy_robot.place('1,1,north')
  end

  describe 'turns robot' do
    it 'faces correct direction after turning left' do
      expect(@toy_robot.turn(:left)).to eq('WEST')
    end

    it 'faces correct direction after turning right' do
      expect(@toy_robot.turn(:right)).to eq('EAST')
    end
    
    it 'faces correct direction after turning right' do
      @toy_robot.place('1,1,west')
      expect(@toy_robot.turn(:right)).to eq('NORTH')
    end
  end

  describe 'moves robot forward' do
    it 'valid movement'
    it 'stays on table'
  end
end
