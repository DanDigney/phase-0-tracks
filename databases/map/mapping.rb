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

def show_default(db)
	db.execute("SELECT state_name FROM default_map")
end

def show_visited(db)
	db.execute("SELECT state_name FROM visited_map")
end

def show_wanted(db)
	db.execute("SELECT state_name FROM wanted_map")
end

def show_return(db)
	db.execute("SELECT state_name FROM return_map")
end


puts "This program does not handle user error."
puts "This program assumes correct spelling."
# Will result in an error if there is no previous data
puts "Is this a new map, or would you like to reset your data?"
fresh_start = gets.chomp.downcase
if fresh_start == 'yes'
	# Drop the old tables 
	# Mild problem here: if this a genuine first run, an error occurs
	# It can't delete data that isn't there, so I've add their calls
	db.execute(make_default_table)
	db.execute(make_visited_table)
	db.execute(make_return_table)
	db.execute(make_wanted_table)
	db.execute("DROP TABLE default_map")
	db.execute("DROP TABLE visited_map")
	db.execute("DROP TABLE wanted_map")
	db.execute("DROP TABLE return_map")
	db.execute(make_default_table)
	populate_default_map(states_array, db)
	puts "What state do you live in?"
	home_state = gets.chomp.downcase.capitalize!
	db.execute(make_visited_table)
	# Update visited table to include home state
	update_visited(home_state, db)
	# Call down other tables
	db.execute(make_return_table)
	db.execute(make_wanted_table)
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
			until question == 5
				puts "View: (Enter number)"
				puts "1: States you've visited."
				puts "2: States you want to visit."
				puts "3: States you want to revisit."
				puts "4: States you've never visited."
				puts "5: Exit. (Only way to leave)"
				question = gets.chomp.to_i
				if question == 1
					puts show_visited(db)
				elsif question == 2
					puts show_wanted(db)
				elsif question == 3
					puts show_return(db)
				elsif question == 4
					puts show_default(db)
				elsif question == 5
					break		
				else
					puts "Invalid"
				end
			end
		elsif question == 'update'
			until question == 'Done'
				puts "Update: (Enter number)"
				puts "1: Visited."
				puts "2: Want to Visit."
				puts "3: Want to Revisit."
				puts "4: Exit. (Only way to leave)"
				question = gets.chomp
				if question.to_i == 1
					puts "Update your visited states."
					question = gets.chomp.downcase.capitalize!
					update_visited(question, db)
				elsif question.to_i == 2
					puts "Update the states you want to visit."
					question = gets.chomp.downcase.capitalize!
					update_wanted(question, db)
				elsif question.to_i == 3
					puts "Update the states you want to revisit."
					question = gets.chomp.downcase.capitalize!
					update_return(question, db)
				elsif question.to_i == 4
					break
				else
					puts "Invalid"
				end
			end
		else
			puts "Type done if you'd like to exit."
		end
	end
	puts "**#**SUMMARY**#**"
	puts "You've visited:"
	puts show_visited(db)
	puts "You would like to visit:"
	puts show_wanted(db)
	puts "You would like to revisit:"
	puts show_return(db)
end

puts "Goodbye."