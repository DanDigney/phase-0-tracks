class Santa
	def initialize(sex, race)
		puts "Initializing Santa instance..."
		@gender = sex
		@ethnicity = race
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer",
			"Prancer","Vixen", "Comet", "Cupid", "Donner",
			"Blitzen"]
	end	
	def speak
		puts "Ho, ho ho! Haaaapy holidays!"
	end
	def eat_milk_n_cookies(treat)
		puts "That was a delicious #{treat}!"
	end
	def celebrate_birthday
		@age = @age + 1
	end
	def get_mad_at(reindeer_name)
		@reindeer_ranking.last = reindeer_name
	end
	def gndr
		p @gender
	end
	def gender=(new_gender)
		@gender = new_gender
	end
	def age
		p @age
	end
	def ethnicity
		p @ethnicity
	end
end

santa = Santa.new("male", "asian")
santa.speak
santa.eat_milk_n_cookies("cookie")
santa.age
santa.celebrate_birthday
santa.age
santa.ethnicity
santa.gndr 
santa.gender = "dolphin"
santa.gndr

# santas = []
# example_genders = ["agender", "female", "bigender", "male", 
# 	"female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", 
# 	"Japanese-African", "prefer not to say", 
# 	"Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santas.each do |x|
# 	x.speak
# end

