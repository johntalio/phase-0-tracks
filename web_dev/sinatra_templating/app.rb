# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# show campuses on the home page
get '/home2.erb' do
	@campuses = db.execute("SELECT * FROM campuses")
	erb :home2
end

get '/campuses/new' do
	erb :new_campus
end

# create new campuses via a form
post '/campuses' do
	db.execute("INSERT INTO campuses (state, city) VALUES (?, ?)", [params['state'], params['city']])
	redirect '/home2.erb'
end

# add static resources