require 'spec_helper'

describe "test_boards/new" do
  before(:each) do
    assign(:test_board, stub_model(TestBoard,
      :id => 1,
      :user_id => 1,
      :title => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new test_board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_boards_path, :method => "post" do
      #assert_select "input#test_board_id", :name => "test_board[id]"
      assert_select "input#test_board_user_id", :name => "test_board[user_id]"
      assert_select "input#test_board_title", :name => "test_board[title]"
      assert_select "textarea#test_board_comment", :name => "test_board[comment]"
    end
  end
end
