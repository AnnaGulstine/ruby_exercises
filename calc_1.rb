# This is a SimpleCalculator class which creates methods for a calculator. The
# FancyCalculator class inherits from SimpleCalculator.

class SimpleCalculator # :nodoc:
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

class FancyCalculator < SimpleCalculator # :nodoc:
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
