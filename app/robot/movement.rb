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
