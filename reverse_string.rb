# Complete the method called reverse_a_string that accepts a string as a parameter and 
# returns the reverse. The one caveat: Don't use the reverse method that already
# comes with Ruby!

def reverse_a_string(string)
  reversed_string = []
  string = string.split("")
  string_length = string.length

  string_length.times do |letter|
    last_element = string.last
    reversed_string << last_element
    string.delete(last_element)
  end

  return reversed_string.join

end

# Driver code - don't touch anything below this line.
puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end