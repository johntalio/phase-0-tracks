puts "What is your name?"
	name = gets.chomp

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
	else
		garlic = false
		puts "Suit yourself."
	end

puts "Would you like to enroll in the company's health insurance (yes/no)?"
	insurance = gets.chomp
	
	if insurance == "yes"
		insurance = true
		puts "No problemo!"
	else
		insurance = false
		puts "Suit yourself."
	end

if
	year && garlic || insurance
	puts "Probably not a vampire."
else
	puts "Probably a vampire."
	
end