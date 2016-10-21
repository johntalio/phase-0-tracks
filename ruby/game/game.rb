class Invisa_Word
	attr_reader :guess_count
	attr_accessor :game_end
	attr_accessor :secret_word
	attr_accessor :guess_count
	attr_reader :word_form
	def initialize
		@secret_word = ""
		@word_form = ""
		@guess_list = []
		@guess_count = 0
		@game_end = false
		@winner = false
		@loser = true
	end
	def create(word)
		@secret_word = word
		@guess_count = word.length
		word.length.times do |x|
			@word_form += "_"
		end
		@word_form
	end
	
	def replace(letter)
		if @guess_list != nil
			if @guess_list.include? letter
				puts "Sorry, you've guessed this letter before. Try again."
				return nil
			end
		end
		@guess_list.push(letter)
		correct_answer = @secret_word.split(//)
		form = @word_form.split(//)
		if @secret_word.include? letter
			for each in 0..correct_answer.length
				if correct_answer[each] == letter
					form[each] = letter
				end
			end
			@word_form = form.join
			if @word_form.eql?(@secret_word)
				@winner = true
				@game_end = true
			end
			@word_form
		else
			@guess_count -= 1
			puts "Incorrect. You have #{@guess_count} guesses left."
			if @guess_count == 0
				@loser = true
				@game_end = true
			end
			return @word_form
		end
	end

	def end_game
		if @winner
			puts "Congratulations! You won! The word was #{@secret_word}!"
			return true
		elsif @loser
			puts "I guess this was simply too tough for you! :P The word was #{@secret_word}"
			return false
		end
	end
end

#Driver Code
puts "Welcome to Invisa Word!"
invisa_word = Invisa_Word.new


puts "Please enter your word, Player 1: "
input = gets.chomp.downcase
invisa_word.create(input)

while !invisa_word.game_end
	puts "Player 2, you must guess: #{invisa_word.word_form}. What letter would you like to guess? (Repetitive entries will not be counted.)"
	guess = gets.chomp.slice(0)
	invisa_word.replace(guess)
end
invisa_word.end_game