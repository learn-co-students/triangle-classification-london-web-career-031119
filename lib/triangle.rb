require 'pry'

class Triangle
  # write code here

  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    # raise error if triangle is invalid
    if !(l1 > 0 && l2 > 0 && l3 > 0 && (l1 + l2 > l3) && (l1 + l3 > l2) && (l2 + l3 > l1))
      raise TriangleError
    else
      if (l1 == l2 && l1 == l3 && l2 == l3)
        :equilateral
      elsif (l1 == l2 || l1 == l3 || l2 == l3)
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
   # triangle error code
  end

end

# binding.pry

puts "something"
