# Defines a method that takes a block as an argument
def a_block_method
  param1 = "Testing"
  param2 = "Something Else"
  puts "We're about to work with blocks"
  yield(param1, param2)
  puts "We're done working with blocks"
end

# Uses block with method and prints parameters
a_block_method { |param1,param2| puts "#{param1} is #{param2}!"}

# Define an array
spices = ["cinnamon", "salt", "black pepper", "sumac"]

# Print array before map! method is used
puts "Before:"
p spices

# Iterate through array using .each
spices.each do |spice|
  puts spice
end

# Iterate through array using map! and modify values
spices.map! do |spice|
  spice.upcase
end

# Print array after map! method is used
puts "After:"
p spices

# Define a hash
hbo_characters = {
  "Tony Soprano" => "Mob Boss",
  "Jon Snow" => "Night's Watchman",
  "Larry David" => "TV Producer"
}
new_hbo_characters = {}

# Print hash before map! method is used
puts "Before:"
p hbo_characters
p new_hbo_characters

# Iterate through hash using .each
hbo_characters.each do |character,profession|
  puts "#{character} is a #{profession}"
end

# Modify hash via new hash 
hbo_characters.each do |character,profession|
  puts "#{character} is a #{profession}"
  new_hbo_characters[character.downcase] = profession.downcase
end

# Print hash after map! method is used
puts "After:"
p hbo_characters
p new_hbo_characters


# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr.delete_if { |a| a < 5 }

hsh = { "a" => 3, "b" => 4, "c" => 5, "d" => 6, "e" => 7, "f" => 8 }
puts hsh.delete_if {|key, value| value < 5 }

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr.keep_if { |a| a < 5 }

hsh = { "a" => 3, "b" => 4, "c" => 5, "d" => 6, "e" => 7, "f" => 8 }
puts hsh.keep_if {|key, value| value < 5 }

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr.reject { |a| a < 5 }

hsh = { "a" => 3, "b" => 4, "c" => 5, "d" => 6, "e" => 7, "f" => 8 }
puts hsh.select {|key, value| value < 5 }

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr.drop_while { |a| a < 5 }

hsh = { "a" => 3, "b" => 4, "c" => 5, "d" => 6, "e" => 7, "f" => 8 }
puts hsh.drop_while {|key, value| value < 5 }

# Following along with the two videos below
letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "Original data:"
p letters
p new_letters

letters.each do |letter|
	new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}."
end

###########################

letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

modified_letters = letters.map do |letter|
	puts letter
	letter.next
end

puts "After .map call:"
p letters
p modified_letters








