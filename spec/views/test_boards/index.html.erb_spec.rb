require 'spec_helper'

describe "test_boards/index" do
  before(:each) do
    assign(:test_boards, [
      stub_model(TestBoard,
        :id => 1,
        :user_id => 2,
        :title => "Title",
        :comment => "MyText"
      ),
      stub_model(TestBoard,
        :id => 1,
        :user_id => 2,
        :title => "Title",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of test_boards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
