class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(string)
		puts "That was a good #{string}!"
	end

end

santa = Santa.new

puts santa.speak

puts santa.eat_milk_and_cookies("chocolate chip")