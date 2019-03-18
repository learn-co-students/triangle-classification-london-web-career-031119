require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def no_size
    l1 <= 0 || l2 <= 0 || l3 <= 0 ? true : false
  end

  def triangle_inequality
    l1+l2 <= l3 || l2+l3 <= l1 || l1+l3 <= l2 ? true : false
  end

  def kind
    if no_size == true || triangle_inequality == true
        raise TriangleError
    elsif l1 == l2 && l2 == l3 && l1 == l3
      :equilateral
    elsif l1 != l2 && l2 != l3 && l1 != l3
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
  end

end

# t1 = Triangle.new(0,0,0)
# t2 = Triangle.new(3,4,-5)
# t3 = Triangle.new(1, 1, 3)
# t4 = Triangle.new(2, 4, 2)
# t5 = Triangle.new(7, 3, 2)
#
# binding.pry
# puts "blah"
