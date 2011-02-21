require 'spec_helper'

describe "goals/new.html.erb" do
  before(:each) do
    assign(:goal, stub_model(Goal,
      :end_value => 1,
      :start_value => 1
    ).as_new_record)
  end

  it "renders new goal form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => goals_path, :method => "post" do
      assert_select "input#goal_end_value", :name => "goal[end_value]"
      assert_select "input#goal_start_value", :name => "goal[start_value]"
    end
  end
end
