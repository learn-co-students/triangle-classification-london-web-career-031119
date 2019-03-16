require'pry'

class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      triangle_error
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    elsif @a + @b > @c || @b + @c > @a || @a + @c > @b
       :scalene
    else
      triangle_error
    end
  end
  def triangle_error
    begin
      raise TriangleError
    end
  end
  class TriangleError < StandardError
  end
end
