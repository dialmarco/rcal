require 'spec_helper'

describe "practice_units/edit.html.erb" do
  before(:each) do
    @practice_unit = assign(:practice_unit, stub_model(PracticeUnit,
      :new_record? => false,
      :unit_name => "MyString",
      :unit => nil
    ))
  end

  it "renders the edit practice_unit form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => practice_unit_path(@practice_unit), :method => "post" do
      assert_select "input#practice_unit_unit_name", :name => "practice_unit[unit_name]"
      assert_select "input#practice_unit_unit", :name => "practice_unit[unit]"
    end
  end
end
