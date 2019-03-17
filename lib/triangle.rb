class Triangle
  attr_accessor :type, :x, :y, :z

def initialize(x, y, z)
@x = x
@y = y
@z = z
end

def kind
if @x <= 0 || @y <= 0 || @z <= 0 || (@x + @y) <= @z || (@x + @z) <= @y || (@z + @y) <= @x
raise TriangleError
elsif @x == @y && @x == @z
:equilateral
elsif @x == @z || @y == @z || @x == @y
:isosceles
else
  :scalene
end
end

 class TriangleError < StandardError
end

end
