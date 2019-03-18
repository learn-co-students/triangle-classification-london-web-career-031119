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
      begin
        raise TriangleError
      end
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else @a + @b > @c || @b + @c > @a || @a + @c > @b
       :scalene
    end
  end
  class TriangleError < StandardError
  end
end
