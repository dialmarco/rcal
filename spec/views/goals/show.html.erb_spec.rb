require 'spec_helper'

describe "goals/show.html.erb" do
  before(:each) do
    @goal = assign(:goal, stub_model(Goal,
      :end_value => 1,
      :start_value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
