class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def about
		puts "Gender = #{@gender}"
		puts "Ethnicity = #{@ethnicity}"
		puts "Reindeer Ranking = #{@reindeer_ranking}"
		puts "Age = #{@age}"
	end

end

santa = Santa.new("Female", "African American")

santa.about

santa.speak

santa.eat_milk_and_cookies("chocolate chip")

sleighs = ["Red Hot", "Candy Cane", "Rudolph's Light", "One Night", "The Spirit of Christmas"]
garage = []
puts "Preparing Santa's Sleighs..."
sleighs.each do |sleigh|
	puts "#{sleigh} is Jingle Belled and ready to go!"
	garage << sleigh
	puts "There are now #{garage.length} sleigh(s) in the garage."
	puts "--------------"
end
