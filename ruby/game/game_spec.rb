require_relative "game"

describe Invisa_Word do
	let(:invisa_word) { Invisa_Word.new }
	
	it "creates hidden word" do
		expect(invisa_word.create("hello")).to eq "_____"
	end

	it "replaces the hidden word with corresponding letter when guessed correctly" do
		invisa_word.create("hello")
		expect(invisa_word.replace("h")).to eq "h____"
	end

	it "incorrect guess message and increases guess count" do
		invisa_word.create("hello")
		expect(invisa_word.replace("q")).to eq "_____"
	end

	it "ends the game if there is a winner" do
		invisa_word.create("hello")
		invisa_word.replace("h")
		invisa_word.replace("e")
		invisa_word.replace("l")
		invisa_word.replace("o")
		expect(invisa_word.end_game).to eq true
	end

	it "ends the game if there is a loser" do
		invisa_word.create("hello")
		invisa_word.replace("a")
		invisa_word.replace("b")
		invisa_word.replace("c")
		invisa_word.replace("d")
		invisa_word.replace("f")
		expect(invisa_word.end_game).to eq false
	end
end