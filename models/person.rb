# Person is a class that inherets ActiveRecord::Base
#   This gives the Person class methods defined in ActiveRecord::Base
#   Active Record will assume there is a 'people' table for all the PQSL commands it writes
class Person < ActiveRecord::Base
end