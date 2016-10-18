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
end
puppy = Puppy.new
puppy.fetch("ball")

puppy.speak(3)

puppy.roll_over

puppy.dog_years(3)

puppy.eat("newspaper")

