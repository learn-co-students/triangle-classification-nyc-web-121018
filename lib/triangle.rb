class Triangle
  attr_reader :side1, :side2, :side3
  @@all = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    if @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      raise TriangleError
    elsif @side1 == 0 || @side2 ==0 || @side3 == 0
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      :equilateral
    elsif @side2 == @side3 || @side1 == @side3 || @side1 == @side2
      :isosceles
    elsif @side2 != @side3 || @side1 != @side3 || @side1 != @side2
      :scalene

    end
  end

  class TriangleError < StandardError
    "Your triange must have 3 sides! And any two sides added must be larger than the thrid!"
  end

end # end Triangle class
