require 'spec_helper'

describe "goals/index.html.erb" do
  before(:each) do
    assign(:goals, [
      stub_model(Goal,
        :end_value => 1,
        :start_value => 1
      ),
      stub_model(Goal,
        :end_value => 1,
        :start_value => 1
      )
    ])
  end

  it "renders a list of goals" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
