require 'spec_helper'

RSpec.describe ToyRobot do
  before do
    @toy_robot = ToyRobot.new
  end

  describe 'robot moves around' do
    it 'ends up at correct position #1' do
      @toy_robot.place("0,0,north")
      @toy_robot.move

      expect(@toy_robot.report).to eq("0,1,NORTH")
    end

    it 'ends up at correct position #2' do
      @toy_robot.place("0,0,north")
      @toy_robot.turn(:left)

      expect(@toy_robot.report).to eq("0,0,WEST")
    end

    it 'ends up at correct position #3' do
      @toy_robot.place("1,2,EAST")
      @toy_robot.move
      @toy_robot.move
      @toy_robot.turn(:left)
      @toy_robot.move

      expect(@toy_robot.report).to eq("3,3,NORTH")
    end
  end
end
