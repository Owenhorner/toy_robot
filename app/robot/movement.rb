module Robot
  #Responsible for robot movement behaviour
  module Movement
    #Checks direction and changes robot to correct direction
    #@param turn_direction [Symbol] direction the robot is turning
    def turn(turn_direction)
      directions = ['NORTH','EAST','SOUTH','WEST']
      case turn_direction
      when :left
        self.direction = directions[directions.index(self.direction) - 1]
      when :right
        if directions[directions.index(self.direction) + 1].nil?
          self.direction = directions.first
        else
          self.direction = directions[directions.index(self.direction) + 1]
        end
      end
    end

    #Moves the robot to the correct square on the table
    def move
      case self.direction
      when 'NORTH'
        self.y += 1 unless self.y == @table.y
      when 'EAST'
        self.x += 1 unless self.x == @table.x
      when 'SOUTH'
        self.y -= 1 unless self.y == 0
      when 'WEST'
        self.x -= 1 unless self.x == 0
      end
    end
  end
end
