class Triangle
  # write code here\

  attr_accessor :side1, :side2, :side3, :allsides

  def initialize(side1, side2, side3)
    @allsides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 && @side1 + @side2 > @side3 || @side1 == @side3 && @side1 + @side3 > @side2 || @side2 == @side3 && @side2 + @side3 > side1
      return :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 + @side2 > @side3
      return :scalene
    else
      raise TriangleError if
        @side1 <=0 || @side2 <= 0 || @side3 <= 0
      end
        end
      end
    end
  end

  class TriangleError < StandardError
    def maessage
      "not a triangle"
    end

  end

end
