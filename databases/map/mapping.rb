# Fun times
require 'sqlite3'

db = SQLite3::Database.new("map.db")

make_table = <<-SQL
	CREATE TABLE IF NOT EXISTS default_map(
		id INTEGER PRIMARY KEY,
		state_name VARCHAR(255)
		)
SQL

