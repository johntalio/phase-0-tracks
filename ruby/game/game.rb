# game class

class CupGame
  attr_accessor :cups
  attr_accessor :guesses
  attr_reader :guess_count
  attr_reader :is_over
	
  def initialize
    @cups = cups
    @guesses = []
    @guess_count = 0
    @is_over = false
  end
  
  def number_of_guesses
  	cups.length*2
  end
  
  def convert_word
  	split_cups = cups.split('')
  	split_cups.each do |letter|
  		hidden_cups = letter.gsub!(letter, "_")
  	end
  end
  
  def guess_check
  	split_cups = cups.split('')
  	if @guesses.include?(split_cups)
	  	puts "aya"
  	#else
  	#	puts "Sorry, you have guessed that letter before. Please #try again."
  	#	@guess_count += 1
  	end
  end
  
  def check_cup(index)
  	@guess_count += 1
  	if @cups[index] == "ball"
  		@is_over = true
  	else
  		false
  	end
  end
end

# user interface

puts "Welcome to the Cup Game!"
game = CupGame.new

puts "Enter a word"
	word = gets.chomp
	game.cups = word

puts "Determining number of guesses..."
	puts "You have #{game.number_of_guesses} guesses."
	
puts "This is your hidden word, player 2: #{game.convert_word}"

puts "Please enter your guess"
	letter = gets.chomp
	game.guesses << letter
	
puts "The current state of the word: #{game.guess_check}"

while @guess_count <= game.number_of_guesses
	game.guess_check
	guess = gets.chomp
#  if !game.check_cup(guess - 1)
#  	puts "Nope! Try again."
#	end
end

#puts "You won in #{game.guess_count} guesses!"
