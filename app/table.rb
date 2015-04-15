class Table
  #gets and set Table properties
  attr_accessor :x, :y
  #param dimensions [Array] table size default to 5x5
  def initialize(dimensions = [5, 5])
    self.x = dimensions[0]
    self.y = dimensions[1]
  end

  #@return [Array] of table dimensions
  def dimensions
    [self.x, self.y]
  end
end
