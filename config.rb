
# Tell ActiveRecord all the info it needs to establish a connection with the PSQL server
ActiveRecord::Base.establish_connection(
	:database => 'email_list_db',
	:adapter => 'postgresql'
)