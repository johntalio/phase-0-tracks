require 'sqlite3'
require 'faker'

ngu = SQLite3::Database.new("final_fantasy.db")
ngu.results_as_hash = true

create_new_table = <<-SQL
	CREATE TABLE IF NOT EXISTS final_fantasy (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT,
	weapon VARCHAR(255),
	job VARCHAR(255),
	hero BOOLEAN
	)
SQL

ngu.execute(create_new_table)

def create_character(ngu, name, age, weapon, job, hero)
	ngu.execute("INSERT INTO final_fantasy (name, age, weapon, job, hero) VALUES (?, ?, ?, ?, ?)", [name, age, weapon, job, hero])
end

5.times do
	puts "Welcome to the Final Fantasy character creator! Please enter your character's name."
	enter_name = gets.chomp
	puts "Enter your character's age."
	enter_age = gets.chomp.to_i
	puts "Enter your character's weapon."
	enter_weapon = gets.chomp
	puts "Enter your character's job."
	enter_job = gets.chomp
	create_character(ngu, enter_name, enter_age, enter_weapon, enter_job, "false")
end

# Below is some code that I used throughout this challenge to test my work and to add to my database.
#ngu.execute("INSERT INTO final_fantasy (name, age, weapon, job, hero) VALUES ('Cloud', 21, 'sword', 'mercenary', 'true')")
#ngu.execute("INSERT INTO final_fantasy (name, age, weapon, job, hero) VALUES ('Marche', 12, 'sword', 'soldier', 'true')")
#ngu.execute("INSERT INTO final_fantasy (name, age, weapon, job, hero) VALUES ('Montblanc', 0, 'rod', 'black mage', 'false')")
#ngu.execute("DELETE FROM final_fantasy WHERE name='Franz'")
characters = ngu.execute("SELECT * FROM final_fantasy")
#puts characters.class
#p characters
characters.each do |character|
	puts "#{character ['name']} is a #{character ['job']} who carries a #{character ['weapon']}."
end