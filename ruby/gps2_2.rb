# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: create a hash that incudes all of the items on the grocery list.
  	# split each string if a space appears between two strings.
  	# create an empty hash, which will be occupied by the items in the array, as well as the quanities of each item.
  	# add each split string to the hash.
  	# create a loop for each item ensuring that each item is placed into the hash, and that there are appropriate key, value pairs.
  # set default quantity - at least 1 for each item.
  # print the list to the console [can you use one of your other methods here?]
# output: print the hash as it executes each loop.
def create_list(string)
	add = string.split(' ')
	grocery_list = {}
	
	add.each do |item|
		grocery_list[item] = 2
	end
	p grocery_list
end
  puts create_list("apple banana orange kiwi")
  grocery_list = create_list("apple banana orange kiwi")

# Method to add an item to a list
# input: grocery list, item name and optional quantity.
# steps: use an existing hash, and set a string within that hash equal to an integer, thereby creating a key, value pair.
# output: the grocery list with each added item and quantity.
def add_item(hash, string, int)
	hash[string] = int
	puts hash
end
puts add_item(grocery_list, "lemonade", 2)
puts add_item(grocery_list, "tomatoes", 3)
puts add_item(grocery_list, "onion", 1)
puts add_item(grocery_list, "ice cream", 4)

# Method to remove an item from the list
# input: grocery list and item
# steps: use an existing hash and an existing key, value pair within the hash.
	# use .delete to remove the key, value pair from the hash.
	# print the hash without the unwanted item.
# output: hash without the unwanted item.
def delete_item(hash, string)
	hash.delete(string)
	puts hash
end
puts delete_item(grocery_list, "lemonade")

# Method to update the quantity of an item
# input: grocery list, item name, updated value.
# steps: use an existing hash and an existing key, value pair within the hash.
	# set the key within the hash equal to a new value.
# output: hash with the updated item(s)
def update_item(hash, string, int)
	hash[string] = int  
	puts hash
end
puts update_item(grocery_list, "ice cream", 1)

# Method to print a list and make it look pretty
# input: entire hash as a list.
# steps:
# output: hash with key, value pairs laid out.
def print_list(hash)
	hash.each {|key, value| puts "I have #{value} #{key}"}
end
puts print_list(grocery_list)


# REFLECTION
# I learned that it can be difficult to pseudocode prior to actually coding (at least for me), but pseudocoding properly does make working through syntax much easier.
# Arrays are simpler to manipulate, but hashes allow you to manipulate more data. Arrays weren't very useful for this challenge because it involved more data than an array can handle.
# A method returns a value by default. A method will retun the last declared expression.
# In this challenge I passed hashes, integers, and strings as arguments. I assume there are more possibilities as well.
# You can pass information between methods by storing the results of a previous method in a variable, and then calling that variable. You could also call a method within another method.
# Learning to navigate between arrays and hashes in methods is a little easier, but I still need to get the hang of pseudocoding and using proper syntax.