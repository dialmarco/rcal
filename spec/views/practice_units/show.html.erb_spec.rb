require 'spec_helper'

describe "practice_units/show.html.erb" do
  before(:each) do
    @practice_unit = assign(:practice_unit, stub_model(PracticeUnit,
      :unit_name => "Unit Name",
      :unit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Unit Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
