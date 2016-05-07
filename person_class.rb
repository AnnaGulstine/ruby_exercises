# This class represents a Person with a method to calculate full name.
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    puts @first_name + @last_name
  end
end

# Driver code - don't touch anything below this line.
puts 'TESTING the Person class...'
puts

person = Person.new('Anna', 'Gulstine')

result = person.first_name

puts 'first_name returned:'
puts result
puts

if result == 'Anna'
  puts 'PASS!'
else
  puts 'F'
end
puts

result = person.last_name

puts 'last_name returned:'
puts result
puts

if result == 'Gulstine'
  puts 'PASS!'
else
  puts 'F'
end
puts

result = person.full_name

puts 'full_name returned:'
puts result
puts

if result == 'Anna Gulstine'
  puts 'PASS!'
else
  puts 'F'
end
