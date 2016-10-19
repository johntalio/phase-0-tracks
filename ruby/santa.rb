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

	def celebrate_birthday
		@age = 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.each do |name|
			if name == reindeer
				@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(0))
			end
		end
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

santa = Santa.new("Female", "African American")

santa.about

santa.speak

santa.eat_milk_and_cookies("chocolate chip")

puts "Happy birthday, Santa! You're now #{santa.celebrate_birthday} year old!"

p santa.get_mad_at("Dasher")

puts santa.gender = "Santa is now agender."

puts "Santa is #{santa.age} year old."

puts "Santa is #{santa.ethnicity}."

sleighs = ["Red Hot", "Candy Cane", "Rudolph's Light", "One Night", "The Spirit of Christmas"]
garage = []
puts "Preparing Santa's Sleighs..."
sleighs.each do |sleigh|
	puts "#{sleigh} is Jingle Belled and ready to go!"
	garage << sleigh
	puts "There are now #{garage.length} sleigh(s) in the garage."
	puts "--------------"
end
