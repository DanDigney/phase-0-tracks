class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender
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
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
	end
end

santa = Santa.new("male", "asian")
santa.eat_milk_n_cookies("cookie")

p santa.reindeer_ranking
santa.get_mad_at("Vixen")
p santa.reindeer_ranking

p santa.age
santa.celebrate_birthday
p santa.age

p santa.ethnicity

p santa.gender 
santa.gender = "dolphin"
p santa.gender

santas = []
example_genders = ["agender", "female", "bigender", "male", 
	"female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", 
	"Japanese-African", "prefer not to say", 
	"Mystical Creature (unicorn)", "N/A"]

example_genders.length.upto(107) do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

puts santas


counter = 0
santas.each do |x|
	puts "Santa#{counter} is a/an #{x.gender} #{x.ethnicity}, age #{x.age+counter*4/3}."
	counter += 1
end


