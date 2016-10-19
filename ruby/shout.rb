module Shout
	def yell_hopelessly(words)
		puts words + "!?!?!?!?!?" + ">:O"
	end

	def yell_confused(words)
		puts words + "??????????" + "|:O"
	end
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#  	words + "!*!*!*!*" + ":^D"
#  end
end

#puts Shout.yell_angrily("DAGNABBIT")
#puts Shout.yell_happily("HOORAY")

class Existential_Meltdown
	include Shout
end

class Amnesia
	include Shout
end

existential = Existential_Meltdown.new
existential.yell_hopelessly("WHAT AM I")

amnesia = Amnesia.new
amnesia.yell_confused("WHO AM I")

