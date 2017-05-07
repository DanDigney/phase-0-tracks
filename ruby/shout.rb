# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		"I am happy to say #{words} & " + words
# 	end
# end

# p Shout.yell_angrily("ANGER")
# p Shout.yelling_happily("some things")

module Shout
	def rally_kids(words)
		"Alright, everybody, " + words + "!"
	end
	def yelling_angrily(words)
		words + "!!!!!!"
	end
end

class Coach
	include Shout
end

class Parent
	include Shout
end

coach = Coach.new
p coach.rally_kids("tacos are tasty")
p coach.yelling_angrily("some stuff")

parent = Parent.new
p parent.rally_kids("tacos aren't tasty")
p parent.yelling_angrily("some silly stuff")