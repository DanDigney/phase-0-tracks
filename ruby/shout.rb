module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily(words)
		"I am happy to say #{words} & " + words
	end
end

p Shout.yell_angrily("ANGER")
p Shout.yelling_happily("some things")