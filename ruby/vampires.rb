puts "How many employees will be processed?"
		number_employees = gets.to_i
		puts "Ok, let's get started."

employees_processed = 0

while employees_processed < number_employees
	employees_processed += 1

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
		garlic = gets.chomp.downcase
		
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
		insurance = gets.chomp.downcase
		
		if insurance == "yes"
			insurance = true
			puts "No problemo!"
		elsif insurance == "no"		
			insurance = false
			puts "Suit yourself."
		else
			puts "I don't understand..."
		end
	
	puts "Do you have any allergies? Name one at a time please. (Type 'done' when you're finished.)"
		allergies = ""
	while allergies != "done"
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			allergies = false
			puts "That's odd..."
			break
		end
	end
	puts "You're all done!"

	if allergies == false
		puts "Probably a vampire."
	elsif
		name == false
		puts "Definitely a vampire."
	elsif
		year || (garlic && insurance)
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
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."