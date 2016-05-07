# This class represents a calculator.
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

# This class represents a calculator which inherits from the SimpleCalculator.
class FancyCalculator < SimpleCalculator
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
