# Require all the gems in the Gemfile
require 'bundler/setup'
Bundler.require()


# Define the Person class
require_relative 'models/person'


# Allow ActiveRecord to establish a connection with our db
require_relative 'config'



# When there is a get request to '/', render sign_up_form.erb and serve the resulting html
get '/' do 
	erb :sign_up_form
end


# When there is a post request to '/people', create a new Person object so to place the entry in the database
post '/people' do

  new_person = Person.new
  new_person.name = params[:person_name]
  new_person.email = params[:person_email]
  new_person.save

  redirect '/'

end


# When there is a get request to '/people', render sign_up_form.erb and serve the resulting html
# This is to show ALL the people on one page
get '/people' do 
	@people = Person.all
	erb :email_list
end


