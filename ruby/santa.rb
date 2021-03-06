class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

class Santa_Sim
	def initialize
		puts "Initializing Santa Simulator..."
		@gender_array = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@ethnicities_array = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@any_age = (0..140).select {|num| num}
	end

	def create
		100.times {
			puts "LOOK, IT'S A NEW SANTA!"
			puts "Gender = #{@gender_array.sample}"
			puts "Ethnicity = #{@ethnicities_array.sample}"
			puts "Age = #{@any_age.sample}"
		}
	end
end

santa_sim = Santa_Sim.new

santa_sim.create