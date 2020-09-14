class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 && @side_2 <= 0 && @side_3 <= 0 || @side_1 < 0 || @side_2 < 0 || @side_3 < 0
      begin
        raise TriangleError
      end
    elsif @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    # elsif @side1 == @side2 || @side1 == @side_3 || @side2 == @side_3
    #   return :isosceles
    elsif @side1 != @side2 && @side1 != @side_3 && @side2 != @side_3
      return :scalene
    end
  end

  class TriangleError < StandardError

  end
end
