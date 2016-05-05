# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module Utilities
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include Utilities
end

class FancyCalculator
  include Utilities
  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total, first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:

calc = WhizBangCalculator.new
puts calc.add(4, 3)
puts calc.subtract(4, 3)
puts calc.multiply(4, 3)
puts calc.divide(6, 3)
puts calc.square_root(4)
puts calc.hypotenuse(3, 4)
puts calc.exponent(2, 2)
