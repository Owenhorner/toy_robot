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

  describe 'moves robot' do
    context 'valid movements' do
      it 'north 1 space' do
        @toy_robot.move
        expect(@toy_robot.y).to eq(2)
      end

      it 'east 1 space' do
        @toy_robot.direction = 'EAST'
        @toy_robot.move

        expect(@toy_robot.x).to eq(2)
      end
    end

    context 'invalid movements' do
      it 'stays on table' do
        @toy_robot.place('0,0,south')
        @toy_robot.move

        expect(@toy_robot.report).to eq('0,0,SOUTH')
      end
    end
  end
end
