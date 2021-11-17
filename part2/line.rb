# frozen_string_literal: true

# Class of lines
class Line
  attr_reader :x1, :x2, :y1, :y2

  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def pass_through(x3, y3)
    (x3 - x1) / (x2 - x1) == (y3 - y1) / (y2 - y1)
  end
end

# Class of lines with thickness
class ThickLine < Line
  attr_reader :thickness

  def initialize(x1, y1, x2, y2, thickness)
    super(x1, y1, x2, y2)
    @thickness = thickness
  end

  def pass_through(x3, y3)
    a = (y2 - y1) / (x2 - x1)
    b = y1 - (a * x1)
    y_sec = a * x3 + b
    (y_sec - y3).abs <= thickness
  end
end
