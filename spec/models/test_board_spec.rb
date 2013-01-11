require 'spec_helper'

describe TestBoard do
	fixtures :test_boards

	before "fixtures test" do
		@boards=TestBoard.find(:all)
	end

	it "fixture's data size test" do
		@boards.size.should == 3
	end

end


#
#describe User do
#	fixtures :users
#
#	before "fixtures test" do
#		@users= User.find(:all)
#	end
#	
#	it "fixture's data size test" do
#		@users.size.should ==3
#	end
#
#	it "test1 data test" do
#		users(:test1).name.should == "test1"
#		users(:test1).user_id.should == 1
#	end
#	
#	it "test2 data test" do
#		users(:test2).name.should == "test2"
#		users(:test2).user_id.should == 2
#	end
#	
#	it "test3 data test" do
#		users(:test3).name.should == "test3"
#		users(:test3).user_id.should == 3
#	end
	#pending "add some examples to (or delete) #{__FILE__}"
#end
#class TestBoard < ActiveRecord::Base
#  attr_accessible :comment, :d_time, :id, :title, :user_id
#
#  validates :comment, :presence => true
#  validates :title, :presence=>true
#  validates :user_id, :presence=>true
#end
