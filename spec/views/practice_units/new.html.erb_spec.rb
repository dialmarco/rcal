require 'spec_helper'

describe "practice_units/new.html.erb" do
  before(:each) do
    assign(:practice_unit, stub_model(PracticeUnit,
      :unit_name => "MyString",
      :unit => nil
    ).as_new_record)
  end

  it "renders new practice_unit form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => practice_units_path, :method => "post" do
      assert_select "input#practice_unit_unit_name", :name => "practice_unit[unit_name]"
      assert_select "input#practice_unit_unit", :name => "practice_unit[unit]"
    end
  end
end
