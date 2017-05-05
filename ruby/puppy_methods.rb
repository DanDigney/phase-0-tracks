class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(number)
		puts "Woof!" * number
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_year(human_years)
		dog_age = 7 * human_years
		puts dog_age
	end

	def poop
		puts "Ewwwwwww!"
	end 

end

puppy = Puppy.new
puppy.fetch("bone")
puppy.speak(7)
puppy.roll_over
puppy.dog_year(21)
puppy.poop


class Baby
	def cry(number)
		puts "Waaaaaaaaaa!" * number
	end

	def poop(number)
		puts "Poop" * number
	end

	def eat
		puts "$$$$$$$$$"
	end
end

baby_arr = []
counter = 0
while counter < 50
  baby_arr << Baby.new
  counter += 1
end
 p baby_arr

 baby_arr.each do |s|
 	s.cry(5)
 	s.poop(5)
 	s.eat
 end
