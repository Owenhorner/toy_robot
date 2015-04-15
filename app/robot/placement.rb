module Robot
  #Adds placement behaviour to robot
  module Placement
    attr_accessor :x, :y, :direction
    #@param coords_and_direction [String] of place arguments
    #@return [Boolean] validity of robot placement
    def place(coords_and_direction)
      self.x, self.y, self.direction = coords_and_direction.split(',')
      self.x = self.x.to_i
      self.y = self.y.to_i
      self.direction.upcase!
      valid_placement?
    end

    #Checks if the placement of a toy robot is valid
    #@return [Boolean]
    def valid_placement?
      self.x <= @table.x && self.y <= @table.y
    end

    #@return [String] of toy robot direction and co-ordinates
    def report
      %{#{self.x},#{self.y},#{self.direction}}
    end

    #Checks if toy robot has been placed on the table
    #@return [Boolean]
    def is_placed?
      !self.x.nil? && !self.y.nil? && !self.direction.nil? 
    end
  end
end
