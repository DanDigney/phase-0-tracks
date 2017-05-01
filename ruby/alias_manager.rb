# PSEUDOCODE
=begin 
take string, split/ convert to array, isolate vowels
advance vowels, isolate consonants, advance
join, swap, capitalize 
=end
consonant_string = "bcdfghjklmnpqrstvwxyz"
vowel_string = "aeiou"
consonants = consonant_string.split('')
vowels = vowel_string.split('')
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