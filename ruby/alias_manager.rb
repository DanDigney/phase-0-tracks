# PSEUDOCODE
=begin 
take string, split/ convert to array, isolate vowels
advance vowels, isolate consonants, advance
join, swap, capitalize 
=end

consonants = "bcdfghjklmnpqrstvwxyz"
vowels = "aeiou"
ca = consonants.split('')
va = vowels.split('')
new_name = []

string = "Felicia Torres"
array = string.downcase.split('')
array.each do |x|
  if va.index(x)  
    nx = va[ (va.index(x).to_i) +1]
    if nx == nil
      nx = va[0]
    end
  elsif ca.index(x)
    nx = ca[ (ca.index(x).to_i) +1]
    if nx == nil
      nx = ca[0]
    end
  else 
    nx = x
  end
  new_name << nx
end
puts "Your original name is #{string}, 
your new name is #{new_name.join}"