require 'spec_helper'

describe "test_boards/edit" do
  before(:each) do
    @test_board = assign(:test_board, stub_model(TestBoard,
      :id => 1,
      :user_id => 1,
      :title => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders the edit test_board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_boards_path(@test_board), :method => "post" do
      #assert_select "input#test_board_id", :name => "test_board[id]"
      assert_select "input#test_board_user_id", :name => "test_board[user_id]"
      assert_select "input#test_board_title", :name => "test_board[title]"
      assert_select "textarea#test_board_comment", :name => "test_board[comment]"
    end
  end
end
