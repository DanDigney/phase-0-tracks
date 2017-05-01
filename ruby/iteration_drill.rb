# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each {|x| print "#{x} * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. DO NOT USE ANY SPECIAL BUILT-IN METHODS.
zombie_apocalypse_supplies.each do |x|

end

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. DO NOT USE ANY SPECIAL BUILT-IN METHODS.
# For instance: are boots in your list of supplies?
zombie_apocalypse_supplies.each do |x|
	if x == "CB radio"		
		puts "Found it!"
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. DO NOT USE ANY SPECIAL BUILT-IN METHODS.
zombie_apocalypse_supplies.each do |x|
	until zombie_apocalypse_supplies.length <= 5
		zombie_apocalypse_supplies.delete(x)
	end
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# FIND THE BUILT-IN METHOD that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

new_combined_supplies = zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each {|x, y| print "#{x}--#{y} * "}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. DO NOT USE ANY SPECIAL BUILT-IN METHODS.


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# DO NOT USE ANY SPECIAL BUILT-IN METHODS.
extinct_animals.each do |x, y|
	
end


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# DO NOT USE ANY SPECIAL BUILT-IN METHODS.


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# FIND THE BUILT-IN METHOD that helps you accomplish this in the Ruby documentation
# for Hashes.

