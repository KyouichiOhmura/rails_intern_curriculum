require 'spec_helper'

describe "test_boards/show" do
  before(:each) do
    @test_board = assign(:test_board, stub_model(TestBoard,
      :id => 1,
      :user_id => 2,
      :title => "Title",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
