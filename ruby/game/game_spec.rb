require_relative "game"

describe Guessing_Game do
	let(:guessing_game) { Guessing_Game.new }
	
	it "adds a string to an array" do
		expect(guessing_game.user1_entry).to be_a(String)
	end

end