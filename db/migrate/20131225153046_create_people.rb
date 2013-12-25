class CreatePeople < ActiveRecord::Migration

  # What should happen when we run rake db:migrate
  def up
  	create_table :people do |t|
  		t.string "name"
  		t.string "email"
  		t.timestamps
  	end
  end

  # What should happen when we run rake db:rollback
  #  This should undo whatever 'up' does
  def down
  	drop_table :people
  end
  
end
