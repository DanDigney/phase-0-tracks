puts "How many employees?"
goal = gets.chomp.to_i
counter = 0
while counter < goal
	puts "What is your name?"
	name = gets.chomp.downcase

	puts "What is your age?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	date = gets.chomp.to_i

	puts "Would you like some garlic bread? (y/n)"
	bread = gets.chomp
	if bread == "y"
		bread = true
	else
		bread = false
	end

	puts "Enroll in the health insurance plan? (y/n)"
	health = gets.chomp
	if health == "y"
		health = true
	else 
		health = false
	end

	puts "Enter your allergies, enter 'done' when complete."
	allergy = gets.chomp
	until allergy == "done" || allergy == "sunshine"
		puts "Enter your allergies, enter 'done' when complete."
		allergy = gets.chomp
	end
	
	unless name == "drake cula" || name == "tu fang" || allergy == "sunshine"
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
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."