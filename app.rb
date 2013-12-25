require 'bundler/setup'
Bundler.require()

require_relative 'models/person'



require_relative 'config'



get '/' do 
	erb :sign_up_form
end

post '/people' do

  new_person = Person.new
  new_person.name = params[:person_name]
  new_person.email = params[:person_email]
  new_person.save

  redirect '/'

end

get '/people' do 
	@people = Person.all
	erb :email_list
end