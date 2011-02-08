require 'spec_helper'

describe "practice_units/index.html.erb" do
  before(:each) do
    assign(:practice_units, [
      stub_model(PracticeUnit,
        :unit_name => "Unit Name",
        :unit => nil
      ),
      stub_model(PracticeUnit,
        :unit_name => "Unit Name",
        :unit => nil
      )
    ])
  end

  it "renders a list of practice_units" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unit Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
