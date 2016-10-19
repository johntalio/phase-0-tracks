def name_reverse(string)
	# Store a name, split into two distinct strings, in a variable.
	name = string.split(' ')
	# Reverse the order of the two strings.
	# Store the new name (or the reverse of the old name) in a variable and join them together.
	new_name = name.reverse.join(' ')
end

puts name_reverse("Felicia Torres")

# Introduce a method name.
def change_name(string)
	# Create an array of vowels and consonants (both upcase and downcase) to access later.
	vowel = ["a", "e", "i", "o", "u"]
	vowel_caps = ["A", "E", "I", "O", "U"]
	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	consonant_caps = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X" ,"Y", "Z"]
	# Split your string argument and store it in a new variable. (Split each individual character.)
	string_array = string.split('')
	# Use the map method on the string_array variable to return it as an array, and now we must inspect each character.
	string_array_new = string_array.map do |char|
		# If, in the string_array (which is now string_array_new, and which will be derived from the user entered string), there exists an upcase vowel or consonant or a downcase vowel or consonant, the method will rotate that character to the next appropriate character (consonant if consonant, vowel if vowel).
		if vowel_caps.include?(char)
			vowel_caps.rotate(1)[vowel_caps.index(char)]	
		elsif consonant_caps.include?(char)
			consonant_caps.rotate(1)[consonant_caps.index(char)]
		elsif consonant.include?(char)
			consonant.rotate(1)[consonant.index(char)]
		elsif vowel.include?(char)
			vowel.rotate(1)[vowel.index(char)]		
		else
			char
		end	
	end
	# Reform the string, but now all changed!
	string = string_array_new.join('')
end

puts name_reverse(change_name("Felicia Torres"))
puts name_reverse(change_name("Amanda Ueda"))
puts name_reverse(change_name("John Talio"))

# Create an empty array.
fake_name = []

puts "Welcome to the fake name database."
# Using a simple loop do method to allow the user to continually enter a string until a certain condition is met.
loop do
	puts "Enter a name. Type 'quit' to exit."
	full_name = gets.chomp
	# End the loop if a certain condition is met.
	break if full_name == "quit"
	# Uses the method above to change the name according to what the user entered.
	puts name_reverse(change_name("#{full_name}"))
	# Puts the result of this program into the above array.
	fake_name << name_reverse(change_name("#{full_name}"))
end
puts "These are the current entries in the fake name database."
p fake_name
# Program is complete: the now full array will be visible to the user.
