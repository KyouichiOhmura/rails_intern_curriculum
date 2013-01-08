require 'spec_helper'

describe User do
	fixtures :users

	before "fixtures test" do
		@users= User.find(:all)
	end
	
	it "fixture's data size test" do
		@users.size.should ==3
	end

	it "test1 data test" do
		users(:test1).name.should == "test1"
		users(:test1).user_id.should == 1
	end

	#pending "add some examples to (or delete) #{__FILE__}"
end
