user_information = {}
puts "What is your name?"
user_information[:name] = gets.chomp

puts "What is your age?"
user_information[:age] = gets.chomp.to_i

puts "Where are you located?"
user_information[:location] = gets.chomp

puts "What theme would you like?"
user_information[:theme] = gets.chomp

puts "Are you available on weekends? ('y' or 'n')"
user_information[:weekends] = gets.chomp.downcase
if user_information[:weekends] == "y"
	user_information[:weekends] = true
else
	user_information[:weekends] = false
end

puts "You have chosen:"
puts user_information.values

puts "What choice would you like to change? ('none' to exit)"
changes = gets.chomp.to_sym
if changes == :none
	print "You have selected: No Changes."
else
	puts "Enter the new value for #{changes}."
	new_value = gets.chomp
	user_information[changes] = new_value
end

puts "These are your final values:"
puts user_information.values

=begin
collect information (x times)
convert
print when done
ask for reform (no loop)
print & exit 
=end