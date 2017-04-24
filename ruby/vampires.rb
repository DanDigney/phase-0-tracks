=begin

if name == "Drake Cula" || name == "Tu Fang"
	p "Definitely a vampire."
elsif (!correct_age && !bread) || (!correct_age && !health)
	p "Probably a vampire."
elsif (correct_age && bread && health)
	p "Almost certainly a vampire."
elsif (correct_age && bread) || (correct_age && health)
	p "Probably not a vampire."
else
	p "Results inconclusive."
end

=end

puts "How many employees?"
goal = gets.chomp.to_i
counter = 0
while counter < goal
	puts "What is your name?"
	name = gets.chomp.downcase
	p name
	puts "What is your age?"
	age = gets.chomp.to_i
	p age
	puts "What year were you born?"
	date = gets.chomp.to_i
	p date
	puts "Would you like some garlic bread? (y/n)"
	bread = gets.chomp
	if bread == "y"
		bread = true
	else
		bread = false
	end
	p bread
	puts "Enroll in the health insurance plan? (y/n)"
	health = gets.chomp
	if health == "y"
		health = true
	else 
		health = false
	end
	p health
	unless name == "drake cula" || name == "tu fang"
		if ((2017 == age + date) && bread) || (2017 == age + date && health)
			p "Probably not a vampire."
		elsif ((2017 != age + date) && !bread) || ((2017 != age + date) && !health)
			p "Probably a vampire."
		elsif ((2017 != age + date) && !bread && !health)
			p "Almost certainly a vampire"
		else
			p "Results inconclusive."
		end
	else
		p "Definitely a vampire."
	end
	counter += 1
end
