class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    triangle_is_valid
    if (side1 == side2 && side1 == side3)
      :equilateral
    elsif (side1 != side2 && side1 != side3 && side2 != side3)
      :scalene
    else
      :isosceles
    end
     
  end
  
  def triangle_is_valid
    raise TriangleError unless
    (self.side1>0 && self.side2>0 && self.side3>0) &&
    (side1+side2 > side3) &&
    (side2+side3 > side1) &&
    (side1+side3 > side2)
  end

  class TriangleError < StandardError
  end
end