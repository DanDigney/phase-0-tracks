# PSEUDOCODE
=begin 
take string, split/ convert to array, isolate vowels
advance vowels, isolate consonants, advance
join, swap, capitalize 
=end
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
vowels = ["a", "e", "i", "o", "u"]
name = {}
holder = []

puts "Enter a name, else type 'quit'."
input = gets.chomp.downcase
name["#{input}"]

until input == "quit"
	array = input.split('')
	array.each do |x|
	  if vowels.index(x)  
	    changed_letter = vowels[ (vowels.index(x).to_i) +1]
	    if changed_letter == nil
	      changed_letter = vowels[0]
	    end
	  elsif consonants.index(x)
	    changed_letter = consonants[ (consonants.index(x).to_i) +1]
	    if changed_letter == nil
	      changed_letter = consonants[0]
	    end
	  else 
	    changed_letter = x
	  end
	  holder << changed_letter
	  name["#{input}"] = holder.join('').split(' ').map! { |i| i.capitalize! }.rotate.join(' ')
	end
	holder.clear
	puts "Enter a name, else type 'quit'."
	input = gets.chomp.downcase
	name["#{input}"]
end

name.each do |x, y|
  puts "#{y} was originally #{x}."
end