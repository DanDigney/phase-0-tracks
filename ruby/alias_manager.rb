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
new_name = []

puts "Enter a name, else type 'quit'."
input = gets.chomp.downcase

until input == 'quit'
	string = input.split(' ').rotate.join(' ')
	array = string.split('')
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
	  new_name << changed_letter
	end
	puts "Your original name is #{input}, your new name is #{new_name.join}"
	puts "Enter a name, else type 'quit'."
	input = gets.chomp.downcase
end