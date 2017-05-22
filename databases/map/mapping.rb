# Fun times
require 'sqlite3'

db = SQLite3::Database.new("map.db")
counter = 0
states_array = ["Alabama", "Alaska", "Arizona", "Arkansas", "California",
 "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", 
 "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", 
 "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", 
 "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
 "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
 "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
 "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
 "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", 
 "Washington", "West Virginia", "Wisconsin", "Wyoming"]

make_table = <<-SQL
	CREATE TABLE IF NOT EXISTS default_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
	CREATE TABLE IF NOT EXISTS visited_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
	CREATE TABLE IF NOT EXISTS wanted_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
	CREATE TABLE IF NOT EXISTS return_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
SQL

def populate_default_map(states_array, database)
	states_array.length.times do |x|
		database.execute("INSERT INTO default_map (state_name) VALUES ('#{states_array[x]}')");
		x += 1
	end
end

def update_visited(state_name)
	db.execute("INSERT INTO visited_map (state_name) VALUES (?)", [state_name])
end

def update_wanted(state_name)
	db.execute("INSERT INTO wanted_map (state_name) VALUES (?)", [state_name])
end

def update_return(state_name)
	db.execute("INSERT INTO return_map (state_name) VALUES (?)", [state_name])
end

db.execute(make_table)
populate_default_map(states_array, db)
mappp = db.execute("SELECT * FROM default_map")
mappp.each do |x|
	puts "#{x}"
end

# puts "Where do you live?"
# x = gets.chomp
# update_visited(x)

# puts "One at a time, what states have you visited?"
# y = gets.chomp
# update_visited(y)

# puts "What states would you like to see again?"
# z = gets.chomp
# update_return(z)

# puts <<-TEXT
# You've been to #{db.execute(SELECT state_name FROM visited_map)},
# would like to revisit #{db.execute(SELECT state_name FROM return_map)},
# & have never been to #{db.execute(SELECT state_name FROM default_map)}.
# TEXT 