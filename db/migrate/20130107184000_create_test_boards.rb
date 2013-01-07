#class TestBoard < ActiveRecord::Base
#attr_accessible :comment, :d_time, :id, :title, :user_id
#  
# validates :comment, :presence => true
#validates :title, :presence=>true
#validates :user_id, :presence=>true
# end
#id      : integer
#user_id : integer
#title   : string
#comment : text
#d_date  : data
#d_time  : time

class CreateTestBoards < ActiveRecord::Migration
	def change
	create_table :test_boards do |t|
	t.text :comment
	t.integer :id
	t.time :d_time
	t.string :title
	t.integer :user_id
	t.timestamps
	end			    
	end				   
end
