class Table
  attr_accessor :x, :y
  def initialize(dimensions = [5, 5])
    self.x = dimensions[0]
    self.y = dimensions[1]
  end
  def dimensions
    [self.x, self.y]
  end
end
