# This is a module that creates different methods for a calculator. The
# SimpleCalculator class and FancyCalculator class inherit from the Utilities
# module.

module Utilities # :nodoc:
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

class SimpleCalculator # :nodoc:
  include Utilities
end

class FancyCalculator # :nodoc:
  include Utilities
  def square_root(number)
    Math.sqrt(number)
  end
end

calc = FancyCalculator.new
puts calc.add(4, 3)
puts calc.subtract(4, 3)
puts calc.multiply(4, 3)
puts calc.divide(6, 3)
puts calc.square_root(4)
