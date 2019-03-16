class Triangle
  attr_accessor :kind

  def initialize(side1, side2, side3)
    sides = [side1, side2, side3]
    longest = sides.max

    error_states = [
      sides.any? { |side| side <= 0 },
      sides.sort[2] >= sides.sort[0] + sides.sort[1]
    ]

    if error_states.any?
      raise TriangleError
    end

    case sides.uniq.length
    when 1
      @kind = :equilateral
    when 2
      @kind = :isosceles
    when 3
      @kind = :scalene
    end

  end

  class TriangleError < StandardError
    puts "oops, invalid sizes!"
  end

end
