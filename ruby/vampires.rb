puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp

puts "What year were you born?"
date = gets.chomp

puts "Would you like some garlic bread?"
bread_pref = gets.chomp

puts "Would you like to enroll in the health insurance plan?"
healthcare = gets.chomp


=begin

if name == "tot", "hot"
	p "100%"
elsif (!correct_age && !bread_pref) || (!correct_age && !healthcare)
	p "probs"
elsif (correct_age && bread_pref && healthcare)
	p "yup"
else (correct_age && bread_pref) || (correct_age && healthcare)
	p "nope"

=end