module Robot
  module Movement
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
  end
end
