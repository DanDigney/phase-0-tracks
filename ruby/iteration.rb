#Daniel Digney, Michael Glaser.
# RELEASE 0
def practice_method
	z = "This is a practice method"
	puts z 
	y = z.reverse
	yield(y)
end

practice_method { |y| puts y }

#Release 1
cars_maufacturers = [
  "General Motors",
  "Ford",
  "Dodge",
  "Renault",
  "Aston Martin"
]

motorcycles = {
  "Japan" => "Yamaha",
  "the UK" => "Triumph",
  "the US" => "Buell"
}

cars_maufacturers.each do |car_makers|
  puts "What do you think about cars made by #{car_makers}."
end

motorcycles.each do |build_local, company|
  puts "The company #{company} is manufactured in #{build_local}."
end

#crappy_motorcycles = motorcycles.map {|build_local, company| build_local <<
#  " but crappy" }

cars_maufacturers.map! {|car_makers| car_makers << " but crappy"}

p cars_maufacturers

#RELEASE 2

#1)
#Array
example_array = [1, 25, 36, 14, 32, 3, 7, 2]
example_array.delete_if{|integers| integers < 10}
p example_array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
example_array.delete_at(1)
p example_array

#Hash
example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
example_hash.delete_if{|key| key > "b"}
p example_hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
example_hash.delete_if{|key, value| value <= 2}
p example_hash

#2)
#Array
example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.select{ |num| num.even? }]
p new_array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.select{ |num| num > 10 }]
p new_array

#Hash
example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
new_hash = example_hash.select{|key, value| value > 2}
p new_hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
new_hash = example_hash.select{|key| key < "b"}
p new_hash

#3)
#Array
example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.take_while{ |num| num < 30 }]
p new_array

#4)
example_array = [1, 25, 36, 14, 36, 32, 3, 7, 2]
example_array.delete(36)
p example_array

example_array = [1, 25, 36, 14, 36, 32, 3, 7, 2]
example_array.delete_at(3)
p example_array