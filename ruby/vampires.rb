puts "How many employees will be processed?"
	number_employees = gets.to_i
	puts "Ok, let's get started."


puts "What is your name?"
	name = gets.chomp

	if name == "Drake Cula" or name == "Tu Fang"
		name = false
		puts "Hmm..."
	else
		name = true
		puts "Thanks!"
	end

puts "How old are you?"
	age = gets.to_i

puts "What year were you born?"
	year = gets.to_i

	if year == 2016 - age
		year = true
		puts "Thanks!"
	else	
		year = false
		puts "That doesn't seem right..."
	end

puts "Our company cafeteria serves garlic bread. Should we order some for you (yes/no)?"
	garlic = gets.chomp
	
	if garlic == "yes"
		garlic = true
		puts "Ok! It's delicious!"
	elsif garlic == "no"
		garlic = false
		puts "Suit yourself."
	else
		puts "I don't understand..."
	end

puts "Would you like to enroll in the company's health insurance (yes/no)?"
	insurance = gets.chomp
	
	if insurance == "yes"
		insurance = true
		puts "No problemo!"
	elsif insurance == "no"		
		insurance = false
		puts "Suit yourself."
	else
		puts "I don't understand..."
	end

employees_processed = 0
while employees_processed <= number_employees
	employees_processed += 1
	if name == false
	puts "Definitely a vampire."
	elsif year || (garlic && insurance)
		puts "Probably not a vampire."
	elsif	
		year || (garlic || insurance)
		puts "Probably a vampire."
	elsif
		year == false && garlic == false && insurance == false
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end
end
