# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address

get '/contact' do
  "999 Mount Everest Way"
end

# write a GET route with a query parameter and a conditional

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# write a GET route with a route parameter that adds two numbers

get '/add_numbers/:number1/:number2' do
  number1 = params[:number1]
  number2 = params[:number2]
  sum = number1.to_i + number2.to_i
  "#{number1} plus #{number2} is #{sum}."
end


