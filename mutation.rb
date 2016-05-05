# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
	base_word_array = base_word.split("")
	mutation_array = mutation.split("")
	base_word_array.each do |letter|
		if !mutation_array.include? letter
			return false
			exit
		else
			return true
		end
	end
end
	mutation?("dogs", "dogs")

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end