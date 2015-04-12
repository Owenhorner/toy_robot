module Robot
  module Placement
    attr_accessor :x, :y, :direction
    def place(coords_and_direction)
      self.x, self.y, self.direction = coords_and_direction.split(',')
      self.x = self.x.to_i
      self.y = self.y.to_i
      self.direction.upcase!
      valid_placement?
    end

    def valid_placement?
      self.x <= @table.x && self.y <= @table.y
    end

    def report
      %{#{self.x},#{self.y},#{self.direction}}
    end
  end
end
