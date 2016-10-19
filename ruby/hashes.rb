# Allow the user to enter their information with gets.chomp
puts "Please enter the following information:"
puts "What is your client's first name?"
	# I will use variables such as "name" and "age" to capture the user's information.
	name = gets.chomp

puts "What is your client's age?"
	# I must use get.to_i to ensure that the user enters an integer as an answer.
	age = gets.to_i

puts "How many children does your client have?"
	number_of_kids = gets.to_i

puts "What decor theme has your client chosen?"
	theme = gets.chomp

puts "Does your client have any pets?"
	pets = gets.chomp

# Here is the hash along with key, value pairs. 
design_app = {
	client_name: name,
	client_age: age,
	client_kids: number_of_kids, 
	decor_theme: theme,
	client_pets: pets
}

# I use the above hash so that I can reference it here. This will display the hash values as the user has entered them.
puts "Is this information correct?"
	puts design_app[:client_name]
	puts design_app[:client_age]
	puts design_app[:client_kids]
	puts design_app[:decor_theme]
	puts design_app[:client_pets]
correct = gets.chomp
	# I set up an if expression here to enable the user to revise a single hash value.
	if correct == "no"
		puts "Which category needs to be fixed?"
		# I use gets.chomp.to_sym to transform the user's entry into a symbol, which will then reference to the above hash values display.
		category = gets.chomp.to_sym
		puts "Please type your revised entry."
		# I interpolate the above category entry, so that it will reference the hash key the user wishes to change.
		design_app[:"#{category}"] = gets.chomp
		puts "Thank you!"	
		# I use .inspect to display the entire hash, including the newly updated key. This may not be pretty, but it works.
		puts design_app.inspect
		puts "#{category} has been successfully changed!"
	# Finally, I add elsif and else	statements to account for any contigencies.
	elsif correct == "yes"
		puts "Ok, we're all done."
	else
		puts "Sorry, I didn't understand you. Please try again."
	end


