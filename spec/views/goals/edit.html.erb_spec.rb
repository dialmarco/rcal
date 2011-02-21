require 'spec_helper'

describe "goals/edit.html.erb" do
  before(:each) do
    @goal = assign(:goal, stub_model(Goal,
      :new_record? => false,
      :end_value => 1,
      :start_value => 1
    ))
  end

  it "renders the edit goal form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => goal_path(@goal), :method => "post" do
      assert_select "input#goal_end_value", :name => "goal[end_value]"
      assert_select "input#goal_start_value", :name => "goal[start_value]"
    end
  end
end
