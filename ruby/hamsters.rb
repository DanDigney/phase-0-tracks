puts "What is your hamster's name?"
hamster=gets.chomp
puts "The name is #{hamster}"

puts "Volume level 1 to 10?"
volume=gets.chomp.to_i
puts "the volume is #{volume}"

puts "What fur color?"
fur_color=gets.chomp
puts "the color is #{fur_color}"

puts "Is the hamster a good candidate for adoption (y/n)?"
adopt=gets.chomp

if adopt=="y"
	adopt=true
elsif adopt=="n"
	adopt=false
else
	puts "Is the hamster a good candidate for adoption (y/n)?"
	adopt=gets.chomp
end

puts adopt

puts "Estimated age?"
age=gets.chomp.to_i

if age==""
	age=nil
else
	puts age
end

