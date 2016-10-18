class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof "*int
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	p int*7
  end

  def eat(item)
  	puts "Yummy, #{item}!"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end
end
puppy = Puppy.new

puppy.fetch("ball")

puppy.speak(3)

puppy.roll_over

puppy.dog_years(3)

puppy.eat("newspaper")

class Kitty
	def initialize
		puts "Initializing new kitty instance..."
	end

	def purr(int)
		puts "Purr"*int
	end

end

kitty = Kitty.new

kitty.purr(10)
