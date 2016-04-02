# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome?(string)
  original_word = string.split('')
  original_string = string.split('')
  length = original_string.length
  reversed_string = []
  length.times do
    reversed_string << original_string.last
    original_string.pop
  end
  reversed_string.join

  if reversed_string == original_word
    return true
  else
    return false
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end