require 'spec_helper'

describe "TestBoards" do
  describe "GET /test_boards" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get test_boards_path
      response.status.should be(200)
    end
  end
end
