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

	def eat_milk_and_cookies(string)
		puts "That was a good #{string}!"
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

