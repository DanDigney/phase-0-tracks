# Fun times
require 'sqlite3'

db = SQLite3::Database.new("map.db")
states_array = ["Alabama", "Alaska", "Arizona", "Arkansas", 
 "California", "Colorado", "Connecticut", "Delaware", "Florida", 
 "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", 
 "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", 
 "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
 "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
 "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
 "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
 "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", 
 "Washington", "West Virginia", "Wisconsin", "Wyoming"]

make_default_table = <<-SQL
	CREATE TABLE IF NOT EXISTS default_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
SQL

make_visited_table = <<-SQL
	CREATE TABLE IF NOT EXISTS visited_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
SQL

make_wanted_table = <<-SQL
	CREATE TABLE IF NOT EXISTS wanted_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		);
SQL

make_return_table = <<-SQL
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

def update_visited(states_name, db)
	db.execute("INSERT INTO visited_map (state_name) VALUES (?)", [states_name])
	db.execute("DELETE FROM default_map WHERE state_name = (?)", [states_name])
end

def update_wanted(states_name, db)
	db.execute("INSERT INTO wanted_map (state_name) VALUES (?)", [states_name])
end

def update_return(states_name, db)
	db.execute("INSERT INTO return_map (state_name) VALUES (?)", [states_name])
end

# Programing flaw, but it's assumed the user is aware of limits
puts "This program requires correctly spelled state names."
# Will result in an error if there is no previous data
puts "Is this a new map, or would you like to reset your data?"
fresh_start = gets.chomp.downcase
if fresh_start == 'yes'
	# Drop the old tables
	# Mild problem here: if this a genuine first run
	# An error occurs because it can't delete data that
	# Isn't there, so I've add their calls
	db.execute(make_default_table)
	db.execute(make_visited_table)
	db.execute(make_return_table)
	db.execute(make_wanted_table)
	db.execute("DROP TABLE default_map")
	db.execute("DROP TABLE visited_map")
	db.execute("DROP TABLE wanted_map")
	db.execute("DROP TABLE return_map")
	# Create & populate the default table
	db.execute(make_default_table)
	populate_default_map(states_array, db)
	# Create visited table
	puts "What state do you live in?"
	home_state = gets.chomp.downcase.capitalize!
	db.execute(make_visited_table)
	# Update visited table to include home state
	update_visited(home_state, db)
	# Call down other tables
	db.execute(make_return_table)
	db.execute(make_wanted_table)
end

show_visited_map = db.execute("SELECT state_name FROM visited_map")
show_wanted_map = db.execute("SELECT state_name FROM wanted_map")
show_return_map = db.execute("SELECT state_name FROM return_map")
show_default_map = db.execute("SELECT state_name FROM default_map")

# Show the visited table
puts "You've visited:"
show_visited_map.each do |x|
	p x 
end
# Ask if they wanna do anything
puts "Would you like to update or view your map? (Yes or No)"
question = gets.chomp.downcase
if question == 'yes'
	# Create loop
	until question == 'done'
		puts "View, update, or done?"
		question = gets.chomp.downcase
		# Create loop options
		if question == 'view'
			puts "View: (Enter number)"
			puts "1: States you've visited."
			puts "2: States you want to visit."
			puts "3: States you want to revisit."
			puts "4: States you've never visited."
			view_answer = gets.chomp.to_i
			if view_answer == 1
			show_visited_map.each do |x|
				p x 
			end
			elsif view_answer == 2
			show_wanted_map.each do |x|
				p x 
			end
			elsif view_answer == 3
			show_return_map.each do |x|
				p x 
			end
			elsif view_answer == 4
			show_default_map.each do |x|
				p x 
			end			
			else
				puts "Invalid"
			end
		elsif question == 'update'
			puts "Update: (Enter number)"
			puts "1: Visited."
			puts "2: Want to Visit."
			puts "3: Want to Revisit."
			update_answer = gets.chomp.to_i
			if update_answer == 1
				until update_answer == 'Done'
					puts "One state at a time: update your visited states."
					puts "Type 'done' to quit."
					update_answer = gets.chomp.downcase.capitalize!
					update_visited(update_answer, db)
				end
			elsif update_answer == 2
				until update_answer == 'Done'
					puts "One state at a time: update the states you want to visit."
					puts "Type 'done' to quit."
					update_answer = gets.chomp.downcase.capitalize!
					update_wanted(update_answer, db)
				end
			elsif update_answer == 3
				until update_answer == 'Done'
					puts "One state at a time: update the states you want to revisit."
					puts "Type 'done' to quit."
					update_answer = gets.chomp.downcase.capitalize!
					update_return(update_answer, db)
				end
			else update_answer == 4
				puts "Invalid"
			end
		else
			puts "Type done if you'd like to exit."
		end
	end
end

puts "Goodbye."
# puts <<-TEXT
# You've been to #{db.execute(SELECT state_name FROM visited_map)},
# would like to revisit #{db.execute(SELECT state_name FROM return_map)},
# & have never been to #{db.execute(SELECT state_name FROM default_map)}.
# TEXT 