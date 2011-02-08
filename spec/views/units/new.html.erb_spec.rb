require 'spec_helper'

describe "units/new.html.erb" do
  before(:each) do
    assign(:unit, stub_model(Unit,
      :units => "MyString"
    ).as_new_record)
  end

  it "renders new unit form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => units_path, :method => "post" do
      assert_select "input#unit_units", :name => "unit[units]"
    end
  end
end
